import urllib.request
import os
import subprocess
import time

REMAINING_ITEMS = [
    # Flooring & Waterproofing
    ("prod_72.jpg", "https://upload.wikimedia.org/wikipedia/commons/a/a8/Polished_Porcelain_Floor_Tiling.jpg"),
    ("prod_73.jpg", "https://upload.wikimedia.org/wikipedia/commons/0/00/001-_PINTURAS_TITANLUX_-_ESMALTE_BRILLANTE.jpg"),
    
    # Fasteners Refinement
    ("prod_85.jpg", "https://upload.wikimedia.org/wikipedia/commons/9/93/18-03-16-Schrauben-M6x20_RRK3179.jpg"),

    # Packaging & Logistics
    ("prod_46.jpg", "https://upload.wikimedia.org/wikipedia/commons/f/fe/Stretch_Wrap_Freedom_7525.jpg"),
    ("prod_47.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/3e/EPAL-Europalette.jpg"),
    ("prod_78.jpg", "https://upload.wikimedia.org/wikipedia/commons/7/76/KalksandsteinPalettenstapel.jpg"),
    ("prod_79.jpg", "https://upload.wikimedia.org/wikipedia/commons/0/0a/Pallet_wrapper.jpg"),
    ("prod_80.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/3c/Wooden-pallets_stacked_4.jpg"),

    # Workwear & Apparel
    ("prod_43.jpg", "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?w=1200&auto=format&fit=crop&q=85"),
    ("prod_44.jpg", "https://images.unsplash.com/photo-1624378439575-d8705ad7ae80?w=1200&auto=format&fit=crop&q=85"),
    ("prod_45.jpg", "https://upload.wikimedia.org/wikipedia/commons/f/f6/Warnweste_gelb.jpg"),
    ("prod_81.jpg", "https://images.unsplash.com/photo-1586363104862-3a5e2ab60d99?w=1200&auto=format&fit=crop&q=85"),
    ("prod_82.jpg", "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?w=1200&auto=format&fit=crop&q=85"),

    # Laboratory & PPE
    ("prod_51.jpg", "https://upload.wikimedia.org/wikipedia/commons/0/04/Nitrile_Glove_for_Clean_Room.jpg"),
    ("prod_90.jpg", "https://upload.wikimedia.org/wikipedia/commons/b/b2/Cofoe_medical_face_shields_%2820221225154454%29.jpg"),
    ("prod_92.jpg", "https://upload.wikimedia.org/wikipedia/commons/9/9b/Luria_Broth_Liquid_Media_in_Borosilicate_Test_Tubes.jpg"),
    ("prod_93.jpg", "https://upload.wikimedia.org/wikipedia/commons/0/02/Falcon_tube.jpg"),
    ("prod_102.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/3a/Extended_Cuff_Blue_Nitrile_Glove.jpg"),

    # Jewellery & Precious Wholesale
    ("prod_52.jpg", "https://upload.wikimedia.org/wikipedia/commons/c/c6/Curb_chain_in_sterling_silver.jpg"),
    ("prod_53.jpg", "https://upload.wikimedia.org/wikipedia/commons/5/5c/Chelsea-solitaire-engagement-ring-oval-3-rows-pave-18k-white-gold.jpg"),
    ("prod_54.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/37/Bracelet_11-o.lau-F180.LA1029.jpg"),
    ("prod_95.jpg", "https://upload.wikimedia.org/wikipedia/commons/9/98/Faceted_sterling_silver_curb_chain_1.jpg"),
    ("prod_96.jpg", "https://upload.wikimedia.org/wikipedia/commons/d/d9/Rope_chain_in_sterling_silver.jpg"),
    ("prod_97.jpg", "https://upload.wikimedia.org/wikipedia/commons/b/bd/02024_0697_8_mm_diameter_gold_hoop_earring.jpg"),
    ("prod_98.jpg", "https://upload.wikimedia.org/wikipedia/commons/2/26/Half_Eternity_ring_in_white_gold.jpg"),
    ("prod_99.jpg", "https://upload.wikimedia.org/wikipedia/commons/b/b6/Black_Onyx_Bracelet.jpg"),
    ("prod_100.jpg", "https://upload.wikimedia.org/wikipedia/commons/5/58/Lapis_lazuli_bracelet.jpg"),
]

headers = {
    'User-Agent': 'PoolBuyCatalogAuditBot/1.0 (admin@poolbuy.local; https://poolbuy.local) Python-urllib/3.15'
}

print(f"Starting download and cropping of {len(REMAINING_ITEMS)} products...")
os.makedirs("upload", exist_ok=True)

success = 0
failed = []

for prod_filename, url in REMAINING_ITEMS:
    tmp_path = os.path.join("upload", f"temp_{prod_filename}")
    print(f"\nProcessing {prod_filename} from {url[:70]}...")
    
    # Delay if downloading from wikimedia
    if "wikimedia.org" in url:
        time.sleep(2.5)
    else:
        time.sleep(0.5)

    try:
        req = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(req, timeout=30) as resp, open(tmp_path, "wb") as f:
            f.write(resp.read())
        size_kb = os.path.getsize(tmp_path) / 1024
        print(f"  Downloaded temp: {size_kb:.1f} KB")

        # Crop to square 1000x1000 using Docker PHP GD
        dst_container = f"/var/www/html/image/catalog/poolbuy/{prod_filename}"
        src_container = f"/var/www/html/{os.path.basename(tmp_path)}"
        cmd = [
            "docker", "exec", "poolbuy-opencart-1",
            "php", "/var/www/html/crop_square.php",
            src_container, dst_container, "1000"
        ]
        res = subprocess.run(cmd, capture_output=True, text=True)
        if "Successfully wrote" in res.stdout:
            print(f"  Cropped and installed: {res.stdout.strip()}")
            success += 1
        else:
            print(f"  Crop error: {res.stderr or res.stdout}")
            failed.append(prod_filename)
            
    except Exception as e:
        print(f"  Download failed: {e}")
        failed.append(prod_filename)

print(f"\n==========================================")
print(f"FINISHED: {success} succeeded, {len(failed)} failed.")
if failed:
    print(f"Failed items: {failed}")
print(f"==========================================")
