# Verifies the OpenCart 4 customer registration (sign-up) flow end-to-end.
#
# Usage: powershell -File tools\poolbuy\verify_register.ps1

$ErrorActionPreference = 'Stop'
. "$PSScriptRoot\admin.ps1"

$base = 'http://localhost'
$failures = @()

function Assert([bool] $Condition, [string] $Message) {
    if ($Condition) { Write-Host "  PASS  $Message" -ForegroundColor Green }
    else { Write-Host "  FAIL  $Message" -ForegroundColor Red; $script:failures += $Message }
}

Write-Host "=== [1] CUSTOMER SIGN-UP PAGE & TOKEN GENERATION ==="
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$regPage = Invoke-WebRequest -Uri "$base/index.php?route=account/register" -WebSession $session -UseBasicParsing

Assert ($regPage.StatusCode -eq 200) 'register page returns HTTP 200'
Assert ($regPage.Content -match 'Register Account') 'heading title present'
Assert ($regPage.Content -match 'register_token=([0-9a-zA-Z]+)') 'form action contains register_token'
$token = if ($regPage.Content -match 'register_token=([0-9a-zA-Z]+)') { $Matches[1] } else { '' }
Write-Host "    register_token = $token"

Write-Host "`n=== [2] FORM VALIDATION & DUPLICATE EMAIL REJECTION ==="
# Missing required fields
$rEmpty = Invoke-WebRequest -Uri "$base/index.php?route=account/register.register&register_token=$token" `
    -Method POST -Body @{} -WebSession $session -UseBasicParsing
Assert ($rEmpty.Content -match 'error') 'submitting empty form returns validation errors'
Assert ($rEmpty.Content -match 'firstname') 'firstname is required'
Assert ($rEmpty.Content -match 'lastname') 'lastname is required'
Assert ($rEmpty.Content -match 'email') 'email is required'
Assert ($rEmpty.Content -match 'agree') 'agree checkbox is required'

# Duplicate email rejection using existing buyer
$rDup = Invoke-WebRequest -Uri "$base/index.php?route=account/register.register&register_token=$token" `
    -Method POST -Body @{
        firstname = 'Duplicate'
        lastname  = 'User'
        email     = 'buyer@poolbuy.test'
        password  = 'PoolBuy123!'
        agree     = '1'
    } -WebSession $session -UseBasicParsing
Assert ($rDup.Content -match 'E-Mail Address is already registered' -or $rDup.Content -match 'error') 'duplicate email is rejected'

Write-Host "`n=== [3] SUCCESSFUL NEW CUSTOMER SIGN-UP ==="
# Fetch a fresh registration page to get a fresh token
$sessionNew = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$regPageNew = Invoke-WebRequest -Uri "$base/index.php?route=account/register" -WebSession $sessionNew -UseBasicParsing
$tokenNew = if ($regPageNew.Content -match 'register_token=([0-9a-zA-Z]+)') { $Matches[1] } else { '' }

$ts = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()
$testEmail = "qa_buyer_$ts@poolbuy.test"

$postData = @{
    firstname = 'Verify'
    lastname  = 'Buyer'
    email     = $testEmail
    password  = 'PoolBuy123!'
    agree     = '1'
}

$rSuccess = Invoke-WebRequest -Uri "$base/index.php?route=account/register.register&register_token=$tokenNew" `
    -Method POST -Body $postData -WebSession $sessionNew -UseBasicParsing

Assert ($rSuccess.Content -match 'redirect') 'successful registration returns a redirect instruction'
Assert ($rSuccess.Content -match 'account(\/|\\/)success') 'redirect targets account/success'
Write-Host "    Response: $($rSuccess.Content)"

# Verify record inserted into MySQL
$newCustId = Get-OcSqlInt "SELECT customer_id FROM oc_customer WHERE email='$testEmail';"
Assert ($newCustId -gt 0) "customer was written to MySQL database oc_customer (customer_id=$newCustId)"

$custStatus = Get-OcSqlInt "SELECT status FROM oc_customer WHERE customer_id=$newCustId;"
Assert ($custStatus -eq 1) 'customer status is 1 (active)'

$pwdHash = Get-OcSqlScalar "SELECT password FROM oc_customer WHERE customer_id=$newCustId;"
Assert ($pwdHash.StartsWith('$2y$')) 'password is cryptographically hashed with bcrypt ($2y$)'

Write-Host "`n=== [4] POST-REGISTRATION AUTHENTICATED SESSION ==="
# Follow the redirect into account/success and account/account
$successPage = Invoke-WebRequest -Uri "$base/index.php?route=account/success" -WebSession $sessionNew -UseBasicParsing
Assert ($successPage.StatusCode -eq 200) 'account/success page loads 200 OK'
Assert ($successPage.Content -match 'Your Account Has Been Created') 'success message confirmed'

# Extract customer_token from session URL or test access to buyer dashboard
$cToken = if ($rSuccess.Content -match 'customer_token=([0-9a-zA-Z]+)') { $Matches[1] } else { '' }
Write-Host "    customer_token = $cToken"

$buyerDash = Invoke-WebRequest -Uri "$base/index.php?route=extension/poolbuy/account&customer_token=$cToken" `
    -WebSession $sessionNew -UseBasicParsing
Assert ($buyerDash.StatusCode -eq 200) 'new customer can immediately access buyer dashboard (extension/poolbuy/account)'
Assert ($buyerDash.Content -match 'My Pools' -or $buyerDash.Content -match 'Pools joined') 'buyer dashboard renders with active session'

Write-Host "`n=== [5] NEW CUSTOMER LOGIN VERIFICATION ==="
# Verify logging in with the newly created credentials from a completely fresh session
$sessionLogin = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$loginPage = Invoke-WebRequest -Uri "$base/index.php?route=account/login" -WebSession $sessionLogin -UseBasicParsing
$loginToken = if ($loginPage.Content -match 'login_token=([0-9a-zA-Z]+)') { $Matches[1] } else { '' }

$rLogin = Invoke-WebRequest -Uri "$base/index.php?route=account/login.login&login_token=$loginToken" `
    -Method POST -Body @{ email = $testEmail; password = 'PoolBuy123!' } -WebSession $sessionLogin -UseBasicParsing

Assert ($rLogin.Content -match 'redirect') 'logging in with new credentials returns redirect'
Assert ($rLogin.Content -match 'customer_token') 'new login session successfully established with customer_token'

# Clean up transient test customer
Invoke-OcSql "DELETE FROM oc_customer WHERE customer_id=$newCustId;"
Invoke-OcSql "DELETE FROM oc_customer_login WHERE email='$testEmail';"
Assert ((Get-OcSqlInt "SELECT COUNT(*) FROM oc_customer WHERE customer_id=$newCustId;") -eq 0) 'transient test customer cleaned up from MySQL'

if ($failures.Count -gt 0) {
    Write-Host "`nFAILED: $($failures.Count) check(s) failed" -ForegroundColor Red
    exit 1
} else {
    Write-Host "`nALL REGISTRATION & SIGN-UP CHECKS PASSED" -ForegroundColor Green
    exit 0
}
