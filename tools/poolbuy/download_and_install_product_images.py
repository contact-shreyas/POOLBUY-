import os
import sys
import io
import urllib.request
from PIL import Image
import subprocess

from image_sources import PRODUCT_IMAGE_SOURCES

OUTPUT_DIR = os.path.join(os.path.dirname(__file__), '../../upload/image/catalog/poolbuy')
CACHE_DIR = os.path.join(os.path.dirname(__file__), '../../upload/image/cache')

os.makedirs(OUTPUT_DIR, exist_ok=True)

print(f"Target directory: {os.path.abspath(OUTPUT_DIR)}")
print(f"Products to process: {len(PRODUCT_IMAGE_SOURCES)}")

success_count = 0
fail_count = 0

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
}

for pid, info in PRODUCT_IMAGE_SOURCES.items():
    dest_path = os.path.join(OUTPUT_DIR, f"prod_{pid}.jpg")
    url = info['url']
    name = info['name']
    
    print(f"\nProcessing [{pid}] {name}...")
    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=12) as response:
            data = response.read()
            
        img = Image.open(io.BytesIO(data))
        if img.mode != 'RGB':
            img = img.convert('RGB')
            
        # Center-crop to 1:1 square
        w, h = img.size
        min_dim = min(w, h)
        left = (w - min_dim) // 2
        top = (h - min_dim) // 2
        right = left + min_dim
        bottom = top + min_dim
        img_cropped = img.crop((left, top, right, bottom))
        
        # Resize to standard 800x800
        img_final = img_cropped.resize((800, 800), Image.Resampling.LANCZOS)
        
        # Save as optimized JPEG
        img_final.save(dest_path, 'JPEG', quality=90, optimize=True)
        file_size = os.path.getsize(dest_path)
        print(f"  SUCCESS -> Saved to prod_{pid}.jpg ({file_size} bytes)")
        success_count += 1
    except Exception as e:
        print(f"  ERROR for [{pid}] {name}: {e}")
        fail_count += 1

print(f"\n==========================================")
print(f"Download Summary: {success_count} succeeded, {fail_count} failed")
print(f"==========================================")

# Now purge cache directory
print("\nClearing OpenCart image cache...")
cleared_cache = 0
for root, dirs, files in os.walk(CACHE_DIR, topdown=False):
    for f in files:
        if f != 'index.html':
            try:
                os.remove(os.path.join(root, f))
                cleared_cache += 1
            except Exception:
                pass
    for d in dirs:
        try:
            os.rmdir(os.path.join(root, d))
        except Exception:
            pass

print(f"Purged {cleared_cache} cached images.")
