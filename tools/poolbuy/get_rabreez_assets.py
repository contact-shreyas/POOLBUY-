import urllib.request
import re
import os

req = urllib.request.Request('https://rabreez.com/', headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
try:
    with urllib.request.urlopen(req, timeout=15) as resp:
        content = resp.read().decode('utf-8', errors='ignore')
        matches = set(re.findall(r'https://[^\s"\'<>]+\.(?:png|jpg|jpeg|webp)', content))
        print(f"Total media found: {len(matches)}")
        for m in sorted(matches):
            print("MEDIA:", m)
except Exception as e:
    print("Error:", e)
