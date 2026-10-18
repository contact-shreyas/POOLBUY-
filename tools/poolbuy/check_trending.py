import urllib.request
import re

req = urllib.request.Request('http://localhost/', headers={'User-Agent': 'Mozilla/5.0'})
with urllib.request.urlopen(req, timeout=10) as resp:
    html = resp.read().decode('utf-8')

trending_imgs = re.findall(r'<img[^>]+src=[\'"]([^\'"]+prod_[^\'"]+)[\'"]', html)
print(f"Found {len(trending_imgs)} trending product images:")
for u in trending_imgs:
    try:
        r = urllib.request.Request(u, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(r, timeout=5) as res:
            print(f"  {u} -> HTTP {res.status} ({len(res.read())} bytes)")
    except Exception as e:
        print(f"  {u} -> ERROR: {e}")
