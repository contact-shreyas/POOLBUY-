# Verifies that Indian Rupee (INR / ₹) is strictly enforced as the sole primary currency
# across the storefront, pools, join flows, and checkout.
#
# Usage: powershell -File tools\poolbuy\verify_currency.ps1

$ErrorActionPreference = 'Stop'
. "$PSScriptRoot\admin.ps1"

$failures = [System.Collections.Generic.List[string]]::new()

function Assert([bool] $Condition, [string] $Message) {
    if ($Condition) {
        Write-Host "  PASS  $Message" -ForegroundColor Green
    } else {
        Write-Host "  FAIL  $Message" -ForegroundColor Red
        $script:failures.Add($Message)
    }
}

$rupee = [char]0x20B9

Write-Host "`n[1] Database currency configuration"
$enabled = Get-OcSqlScalar "SELECT GROUP_CONCAT(code ORDER BY code) FROM oc_currency WHERE status=1;"
Assert ($enabled -eq 'INR') "only INR is enabled in oc_currency (got: $enabled)"

$default = Get-OcSqlScalar "SELECT value FROM oc_setting WHERE code='config' AND $([char]96)key$([char]96)='config_currency';"
Assert ($default -eq 'INR') "store default currency is INR (got: $default)"

$poolbuyCurr = Get-OcSqlScalar "SELECT value FROM oc_setting WHERE code='module_poolbuy' AND $([char]96)key$([char]96)='module_poolbuy_currency_code';"
Assert ($poolbuyCurr -eq 'INR') "module_poolbuy currency is INR (got: $poolbuyCurr)"

$symbolLeft = Get-OcSqlScalar "SELECT HEX(symbol_left) FROM oc_currency WHERE code='INR';"
Assert ($symbolLeft -eq 'E282B9') "INR symbol is correctly encoded UTF-8 rupee symbol"

Write-Host "`n[2] All pools are denominated in INR"
$nonInrPools = Get-OcSqlInt "SELECT COUNT(*) FROM oc_poolbuy_pool WHERE currency_code != 'INR';"
Assert ($nonInrPools -eq 0) "zero pools have non-INR currency (found: $nonInrPools)"

Write-Host "`n[3] Storefront pages render INR rupee symbol exclusively"
$base = 'http://localhost'
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession

# Homepage
$homeHtml = (Invoke-WebRequest -Uri "$base/index.php?route=common/home" -WebSession $session -UseBasicParsing).Content
Assert ($homeHtml -match [regex]::Escape($rupee)) "homepage contains Indian Rupee symbol ($rupee)"
Assert (-not ($homeHtml -match '\$|USD')) "homepage contains no dollar signs"

# Marketplace
$market = (Invoke-WebRequest -Uri "$base/index.php?route=extension/poolbuy/pool" -WebSession $session -UseBasicParsing).Content
Assert ($market -match [regex]::Escape($rupee)) "marketplace contains Indian Rupee symbol ($rupee)"
Assert (-not ($market -match '\$|USD')) "marketplace contains no dollar signs"

# Join Pool flow
$activePoolId = Get-OcSqlInt "SELECT pool_id FROM oc_poolbuy_pool WHERE status='active' LIMIT 1;"
if ($activePoolId -gt 0) {
    $joinStep1 = (Invoke-WebRequest -Uri "$base/index.php?route=extension/poolbuy/join&pool_id=$activePoolId" -WebSession $session -UseBasicParsing).Content
    Assert ($joinStep1 -match [regex]::Escape($rupee)) "join step 1 shows Indian Rupee symbol ($rupee)"
    Assert (-not ($joinStep1 -match '\$|USD')) "join step 1 contains no dollar signs"

    $joinStep2 = (Invoke-WebRequest -Uri "$base/index.php?route=extension/poolbuy/join&pool_id=$activePoolId" `
        -Method POST -Body 'step=1&quantity=10' -ContentType 'application/x-www-form-urlencoded' `
        -WebSession $session -UseBasicParsing).Content
    Assert ($joinStep2 -match [regex]::Escape($rupee)) "join step 2 price breakdown shows Indian Rupee symbol ($rupee)"
    Assert (-not ($joinStep2 -match '\$|USD')) "join step 2 price breakdown contains no dollar signs"
}

Write-Host ""
if ($failures.Count -eq 0) {
    Write-Host "ALL INR CURRENCY CHECKS PASSED (100% RUPEES EVERYWHERE)" -ForegroundColor Green
    exit 0
} else {
    Write-Host "$($failures.Count) CHECK(S) FAILED" -ForegroundColor Red
    exit 1
}
