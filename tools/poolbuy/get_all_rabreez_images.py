import urllib.request
import re
import os

req = urllib.request.Request('https://rabreez.com/', headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
dest_dir = r'c:\1. transfer\GOGO\poolbuy\upload\image\catalog\rabreez'
os.makedirs(dest_dir, exist_ok=True)

try:
    with urllib.request.urlopen(req, timeout=15) as resp:
        html = resp.read().decode('utf-8')
        imgs = set(re.findall(r'https://(?:www\.)?rabreez\.com/image/[^\s"\'<>]+\.(?:jpg|jpeg|webp|png)', html))
        print(f"Found {len(imgs)} image URLs on rabreez.com")
        for img_url in sorted(imgs):
            fname = os.path.basename(img_url)
            out_file = os.path.join(dest_dir, fname)
            try:
                r = urllib.request.Request(img_url, headers={'User-Agent': 'Mozilla/5.0'})
                with urllib.request.urlopen(r, timeout=10) as ir:
                    data = ir.read()
                with open(out_file, 'wb') as f:
                    f.write(data)
                print(f"Saved: {fname} ({len(data)} bytes)")
            except Exception as e:
                print(f"Failed {fname}: {e}")
except Exception as e:
    print("Fetch error:", e)
