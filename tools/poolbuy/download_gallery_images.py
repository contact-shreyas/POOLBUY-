import os
import sys
import io
import urllib.request
from PIL import Image

GALLERY_DIR = os.path.join(os.path.dirname(__file__), '../../upload/image/catalog/poolbuy/gallery')

os.makedirs(GALLERY_DIR, exist_ok=True)

GALLERY_IMAGES = {
    # Product 28: Titan-X 5HP Submersible Drainage Pump
    "pump_titanx_side.jpg": "https://images.unsplash.com/photo-1581092160607-ee22621dd758?w=800&auto=format&fit=crop&q=85",
    "pump_titanx_impeller.jpg": "https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&auto=format&fit=crop&q=85",
    "pump_titanx_specs.jpg": "https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800&auto=format&fit=crop&q=85",

    # Product 29: Commercial Multistage Filtration Vessels
    "vessels_filtration_manifold.jpg": "https://images.unsplash.com/photo-1584992236310-6edddc08acff?w=800&auto=format&fit=crop&q=85",
    "vessels_filtration_valves.jpg": "https://images.unsplash.com/photo-1581092335397-9583fe92d232?w=800&auto=format&fit=crop&q=85",

    # Product 31: EliteFlow Filtration Pro-7 Pump
    "pump_eliteflow_motor.jpg": "https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=800&auto=format&fit=crop&q=85",
    "pump_eliteflow_casing.jpg": "https://images.unsplash.com/photo-1581092334651-ddf26d9a09d0?w=800&auto=format&fit=crop&q=85",

    # Product 32: CrystalPure Chlorine Tablets (25kg Pail)
    "chem_chlorine_tablets_detail.jpg": "https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=800&auto=format&fit=crop&q=85",
    "chem_chlorine_pail_label.jpg": "https://images.unsplash.com/photo-1563245372-f21724e3856d?w=800&auto=format&fit=crop&q=85",

    # Product 34: High-Tensile Grade 8.8 Hex Bolts Kit
    "fasteners_hex_bolts_tray.jpg": "https://images.unsplash.com/photo-1504917599217-d4dc5ebe6122?w=800&auto=format&fit=crop&q=85",
    "fasteners_washers_nuts_bulk.jpg": "https://images.unsplash.com/photo-1581092160607-ee22621dd758?w=800&auto=format&fit=crop&q=85",

    # Product 36: Ceramic Mosaic XL Pool & Architectural Tiles
    "tiles_mosaic_sheet_detail.jpg": "https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=800&auto=format&fit=crop&q=85",
    "tiles_pool_installation_view.jpg": "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?w=800&auto=format&fit=crop&q=85",

    # Product 40: Galvanized Aircraft Grade Steel Wire Rope
    "rigging_wire_rope_drum.jpg": "https://images.unsplash.com/photo-1581092334651-ddf26d9a09d0?w=800&auto=format&fit=crop&q=85",
    "rigging_wire_rope_thimbles.jpg": "https://images.unsplash.com/photo-1504917599217-d4dc5ebe6122?w=800&auto=format&fit=crop&q=85",

    # Product 41: Medical Grade Borosilicate Glass Vials
    "lab_vials_serum_crimps.jpg": "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=800&auto=format&fit=crop&q=85",
    "lab_vials_tray_packaging.jpg": "https://images.unsplash.com/photo-1579165466791-78818925567b?w=800&auto=format&fit=crop&q=85"
}

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
}

success_count = 0
fail_count = 0

print(f"Downloading {len(GALLERY_IMAGES)} authentic B2B gallery images into {GALLERY_DIR}...")

for filename, url in GALLERY_IMAGES.items():
    dest_path = os.path.join(GALLERY_DIR, filename)
    print(f"Fetching {filename}...")
    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=15) as resp:
            data = resp.read()
        
        img = Image.open(io.BytesIO(data))
        if img.mode != 'RGB':
            img = img.convert('RGB')
        
        w, h = img.size
        min_dim = min(w, h)
        left = (w - min_dim) // 2
        top = (h - min_dim) // 2
        img_cropped = img.crop((left, top, left + min_dim, top + min_dim))
        img_final = img_cropped.resize((800, 800), Image.Resampling.LANCZOS)
        img_final.save(dest_path, 'JPEG', quality=90, optimize=True)
        print(f"  [OK] Saved {filename} ({os.path.getsize(dest_path)} bytes)")
        success_count += 1
    except Exception as e:
        print(f"  [FAIL] {filename}: {e}")
        fail_count += 1

print(f"\nCompleted: {success_count} succeeded, {fail_count} failed")
