import subprocess
import time
import urllib.request

def run_query(sql):
    cmd = ['docker', 'exec', 'poolbuy-mysql-1', 'mysql', '-u', 'root', '-popencart', 'opencart', '-e', sql]
    res = subprocess.run(cmd, capture_output=True, text=True)
    return res.stdout

print("=== SETTINGS CHECK ===")
print(run_query("SELECT setting_id, `key`, `value` FROM oc_setting WHERE `key` IN ('config_product_count', 'config_compression', 'config_theme', 'config_seo_url', 'developer_theme', 'developer_sass');"))

print("\n=== BENCHMARK URLS ===")
urls = [
    'http://localhost/',
    'http://localhost/index.php?route=product/product&product_id=28',
    'http://localhost/index.php?route=extension/poolbuy/pool',
    'http://localhost/index.php?route=account/login',
    'http://localhost/index.php?route=product/category&language=en-gb&path=1'
]

for url in urls:
    t0 = time.time()
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'PerfTest/1.0'})
        with urllib.request.urlopen(req) as resp:
            content = resp.read()
            elapsed = (time.time() - t0) * 1000
            print(f"{url} -> {elapsed:.1f}ms (size: {len(content)} bytes)")
    except Exception as e:
        print(f"{url} -> Error: {e}")
