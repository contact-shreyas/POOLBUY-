"""
Expand catalog with IndiaMART wholesale sectors:
- 4 New Categories (Electrical & Power, Agricultural Machinery, Safety & Security, Kitchen & Hospitality)
- 12 New Subcategories
- 16 New B2B Products with specifications, volume pricing, and discount ladders
- Category & Product Filter associations
- Live Buying Pools & Tiers
- Store Name setting updated to 'PoolBuy Wholesale'
- High-resolution, product-specific image downloads & installs
"""

import os
import sys
import io
import urllib.request
from PIL import Image
import subprocess

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
IMAGE_DIR = os.path.join(BASE_DIR, '../../upload/image/catalog/poolbuy')
CACHE_DIR = os.path.join(BASE_DIR, '../../upload/image/cache')
SQL_FILE = os.path.join(BASE_DIR, 'seed_indiamart_wholesale.sql')

os.makedirs(IMAGE_DIR, exist_ok=True)

# 1. Image URLs curated specifically for each product (High-resolution, photorealistic, B2B wholesale)
NEW_PRODUCT_IMAGES = {
    # Replacement for duplicates or placeholders
    "cat_jewellery": "https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=800&auto=format&fit=crop&q=85",
    "cat_electrical": "https://images.unsplash.com/photo-1509391365360-2e959784a276?w=800&auto=format&fit=crop&q=85",
    "cat_agriculture": "https://images.unsplash.com/photo-1592982537447-7440770cbfc9?w=800&auto=format&fit=crop&q=85",
    "cat_safety": "https://images.unsplash.com/photo-1582139329536-e7284fece509?w=800&auto=format&fit=crop&q=85",
    "cat_hospitality": "https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=800&auto=format&fit=crop&q=85",
    
    # Product image replacements for duplicates
    "prod_66": "https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=800&auto=format&fit=crop&q=85",  # TCCA 90 tablets
    "prod_67": "https://images.unsplash.com/photo-1584483766114-2cea6facdf57?w=800&auto=format&fit=crop&q=85",  # Sodium Hypochlorite liquid
    "prod_96": "https://images.unsplash.com/photo-1611591475152-473523dd665f?w=800&auto=format&fit=crop&q=85",  # Diamond Cut Rope Chain
    "prod_99": "https://images.unsplash.com/photo-1611591475087-c25603b879a8?w=800&auto=format&fit=crop&q=85",  # Matte Black Onyx Bracelet
    "prod_100": "https://images.unsplash.com/photo-1599643477877-530eb83abc8e?w=800&auto=format&fit=crop&q=85", # Lapis Lazuli Bracelet
    
    # 16 New B2B Products (103 to 118)
    "prod_103": "https://images.unsplash.com/photo-1509391365360-2e959784a276?w=800&auto=format&fit=crop&q=85", # Solar Panels Pallet
    "prod_104": "https://images.unsplash.com/photo-1581092160607-ee22621dd758?w=800&auto=format&fit=crop&q=85", # Diesel Generator Set
    "prod_105": "https://images.unsplash.com/photo-1581092335397-9583fe92d232?w=800&auto=format&fit=crop&q=85", # 250kVA Distribution Transformer
    "prod_106": "https://images.unsplash.com/photo-1581092162384-8987c1d64718?w=800&auto=format&fit=crop&q=85", # 630A Air Circuit Breaker
    "prod_107": "https://images.unsplash.com/photo-1592982537447-7440770cbfc9?w=800&auto=format&fit=crop&q=85", # Tractor Rotavator 6ft
    "prod_108": "https://images.unsplash.com/photo-1590496793929-36417d3117de?w=800&auto=format&fit=crop&q=85", # Drip Irrigation Lateral Pipe
    "prod_109": "https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&auto=format&fit=crop&q=85", # Solar Ag Submersible Pump
    "prod_110": "https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?w=800&auto=format&fit=crop&q=85", # Heavy Disc Harrow Trailed
    "prod_111": "https://images.unsplash.com/photo-1582139329536-e7284fece509?w=800&auto=format&fit=crop&q=85", # FM-200 Fire Suppression System
    "prod_112": "https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=800&auto=format&fit=crop&q=85", # Full Body Safety Harness EN361
    "prod_113": "https://images.unsplash.com/photo-1584634731339-252c581abfc5?w=800&auto=format&fit=crop&q=85", # Multi-Gas Detector 4-Way
    "prod_114": "https://images.unsplash.com/photo-1557597774-9d273605dfa9?w=800&auto=format&fit=crop&q=85", # 32-Channel 4K CCTV NVR System
    "prod_115": "https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=800&auto=format&fit=crop&q=85", # SS 304 4-Burner Commercial Range
    "prod_116": "https://images.unsplash.com/photo-1584992236310-6edddc08acff?w=800&auto=format&fit=crop&q=85", # Commercial Hood Pass-Through Dishwasher
    "prod_117": "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=800&auto=format&fit=crop&q=85", # 3-Tier Heated Buffet Warmer
    "prod_118": "https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=800&auto=format&fit=crop&q=85", # 600 GSM Luxury Hotel Bath Towels
}

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
}

print("=== 1. DOWNLOADING & OPTIMIZING AUTHENTIC B2B PRODUCT IMAGES ===")
for img_name, url in NEW_PRODUCT_IMAGES.items():
    dest_path = os.path.join(IMAGE_DIR, f"{img_name}.jpg")
    print(f"Downloading {img_name}...")
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
        right = left + min_dim
        bottom = top + min_dim
        img_cropped = img.crop((left, top, right, bottom))
        img_final = img_cropped.resize((800, 800), Image.Resampling.LANCZOS)
        img_final.save(dest_path, 'JPEG', quality=90, optimize=True)
        print(f"  -> Saved {dest_path} ({os.path.getsize(dest_path)} bytes)")
    except Exception as e:
        print(f"  -> ERROR downloading {img_name}: {e}")

# Purge OpenCart image cache
print("\n=== 2. PURGING OPENCART IMAGE THUMBNAIL CACHE ===")
if os.path.exists(CACHE_DIR):
    for root, dirs, files in os.walk(CACHE_DIR, topdown=False):
        for f in files:
            if f != 'index.html':
                try:
                    os.remove(os.path.join(root, f))
                except Exception:
                    pass
        for d in dirs:
            try:
                os.rmdir(os.path.join(root, d))
            except Exception:
                pass
    print("  Image cache cleared successfully.")

# 2. Build SQL Script
print("\n=== 3. GENERATING SEED SQL SCRIPT FOR INDIAMART EXPANSION ===")
sql_lines = [
    "-- PoolBuy IndiaMART Wholesale Expansion Seed Script",
    "SET FOREIGN_KEY_CHECKS = 0;",
    "",
    "-- Update Store Name to 'PoolBuy'",
    "UPDATE oc_setting SET `value` = 'PoolBuy' WHERE `key` = 'config_name';",
    "UPDATE oc_setting SET `value` = 'PoolBuy | India\\'s Leading B2B Sourcing & Group Buying Platform' WHERE `key` = 'config_meta_title';",
    "",
    "-- 1. NEW PARENT CATEGORIES",
    "INSERT INTO oc_category (`category_id`, `image`, `parent_id`, `sort_order`, `status`) VALUES",
    "(109, 'catalog/poolbuy/cat_electrical.jpg', 0, 9, 1),",
    "(110, 'catalog/poolbuy/cat_agriculture.jpg', 0, 10, 1),",
    "(111, 'catalog/poolbuy/cat_safety.jpg', 0, 11, 1),",
    "(112, 'catalog/poolbuy/cat_hospitality.jpg', 0, 12, 1)",
    "ON DUPLICATE KEY UPDATE `image` = VALUES(`image`), `status` = 1;",
    "",
    "INSERT INTO oc_category_description (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES",
    "(109, 1, 'Electrical & Power Equipment', 'Heavy industrial solar arrays, high-capacity diesel generators, distribution transformers, and switchgear for commercial facilities.', 'Electrical & Power Equipment - Wholesale B2B PoolBuy', 'Direct factory sourcing for solar systems, generators, and industrial switchgear at wholesale MOQ prices.', 'solar panels, generators, transformers, switchgear, b2b electrical'),",
    "(110, 1, 'Agricultural & Farm Machinery', 'Commercial tractor implements, heavy rotavators, pressure-compensating drip irrigation, and high-discharge solar borewell pumps.', 'Agricultural & Farm Machinery - Wholesale B2B PoolBuy', 'Heavy agricultural machinery, tractor implements, and commercial drip irrigation at manufacturer prices.', 'tractor rotavator, drip irrigation, disc harrow, solar agricultural pump'),",
    "(111, 1, 'Industrial Safety & Security Systems', 'Clean agent FM-200 fire suppression, certified EN 361 fall protection harnesses, multi-gas detectors, and 4K commercial CCTV.', 'Industrial Safety & Security Systems - Wholesale B2B PoolBuy', 'Wholesale certified PPE, industrial safety harnesses, fire protection systems, and commercial CCTV.', 'fire suppression, safety harness, gas detector, commercial cctv, b2b safety'),",
    "(112, 1, 'Commercial Kitchen & Hospitality Supplies', 'Commercial grade SS 304 4-burner gas ranges, pass-through dishwashers, heated buffet display warmers, and 600 GSM hotel towels.', 'Commercial Kitchen & Hospitality Supplies - Wholesale B2B PoolBuy', 'Commercial kitchen equipment, hotel grade linens, and food service warmers directly from verified manufacturers.', 'commercial cooking range, commercial dishwasher, food display warmer, hotel towels')",
    "ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);",
    "",
    "-- 2. NEW SUBCATEGORIES",
    "INSERT INTO oc_category (`category_id`, `image`, `parent_id`, `sort_order`, `status`) VALUES",
    "(1091, 'catalog/poolbuy/cat_electrical.jpg', 109, 1, 1),",
    "(1092, 'catalog/poolbuy/cat_electrical.jpg', 109, 2, 1),",
    "(1093, 'catalog/poolbuy/cat_electrical.jpg', 109, 3, 1),",
    "(1101, 'catalog/poolbuy/cat_agriculture.jpg', 110, 1, 1),",
    "(1102, 'catalog/poolbuy/cat_agriculture.jpg', 110, 2, 1),",
    "(1103, 'catalog/poolbuy/cat_agriculture.jpg', 110, 3, 1),",
    "(1111, 'catalog/poolbuy/cat_safety.jpg', 111, 1, 1),",
    "(1112, 'catalog/poolbuy/cat_safety.jpg', 111, 2, 1),",
    "(1113, 'catalog/poolbuy/cat_safety.jpg', 111, 3, 1),",
    "(1121, 'catalog/poolbuy/cat_hospitality.jpg', 112, 1, 1),",
    "(1122, 'catalog/poolbuy/cat_hospitality.jpg', 112, 2, 1),",
    "(1123, 'catalog/poolbuy/cat_hospitality.jpg', 112, 3, 1)",
    "ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;",
    "",
    "INSERT INTO oc_category_description (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES",
    "(1091, 1, 'Industrial Solar Panels & On-Grid Inverters', 'Tier-1 bifacial monocrystalline solar modules and commercial grid-tied MPPT inverters.', 'Solar Panels & Inverters', '', ''),",
    "(1092, 1, 'Heavy Industrial Diesel Generators & Alternators', 'Silent acoustic canopy 50kVA-250kVA diesel gen-sets with AMF auto-switch panels.', 'Industrial Diesel Generators', '', ''),",
    "(1093, 1, 'HT/LT Distribution Transformers & Switchgear', 'Oil-immersed step-down transformers, vacuum circuit breakers, and microprocessor ACBs.', 'Transformers & Switchgear', '', ''),",
    "(1101, 1, 'Tractor Rotary Tillers & Heavy Implements', 'Gear-driven 5ft-8ft tractor rotavators, heavy disc harrows, and laser land levelers.', 'Tractor Implements & Rotavators', '', ''),",
    "(1102, 1, 'Commercial Drip & Sprinkler Irrigation Systems', 'Pressure-compensating inline drip laterals, disc filter banks, and venturi injectors.', 'Drip & Sprinkler Irrigation', '', ''),",
    "(1103, 1, 'Solar Submersible Agricultural Water Pumps', 'High-discharge brushless DC/AC solar agricultural borewell and openwell pumps.', 'Solar Agricultural Pumps', '', ''),",
    "(1111, 1, 'Automatic Fire Suppression Systems & Extinguishers', 'FM-200, Novec 1230 clean agent systems, and ISI marked ABC dry chemical cylinders.', 'Fire Suppression Systems', '', ''),",
    "(1112, 1, 'Full Body Fall Protection Safety Harnesses', 'EN 361 certified heavy industrial safety harnesses, shock-absorbing lanyards, and rope grabs.', 'Fall Protection & Harnesses', '', ''),",
    "(1113, 1, 'Commercial CCTV Surveillance & Access Control', 'Multi-channel 4K IP security camera systems, PoE switches, and biometric access gates.', 'Commercial CCTV & Surveillance', '', ''),",
    "(1121, 1, 'Commercial Heavy-Duty SS 304 Cooking Ranges', 'Commercial 4-burner and 6-burner gas cooking ranges with heavy cast iron pan supports.', 'Commercial SS Cooking Ranges', '', ''),",
    "(1122, 1, 'Automatic High-Capacity Commercial Dishwashers', 'Hood-type and under-counter commercial sanitizing dishwashers for restaurants and hotels.', 'Commercial Dishwashers', '', ''),",
    "(1123, 1, 'Wholesale Luxury Hotel Linens & Bath Towels', '100% ring-spun cotton 600 GSM bath sheets, satin stripe bedsheets, and plush duvets.', 'Wholesale Hotel Linens & Towels', '', '')",
    "ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);",
    "",
    "-- Category to Store & Layout",
    "INSERT IGNORE INTO oc_category_to_store (`category_id`, `store_id`) VALUES",
    "(109, 0), (110, 0), (111, 0), (112, 0),",
    "(1091, 0), (1092, 0), (1093, 0),",
    "(1101, 0), (1102, 0), (1103, 0),",
    "(1111, 0), (1112, 0), (1113, 0),",
    "(1121, 0), (1122, 0), (1123, 0);",
    "",
    "INSERT IGNORE INTO oc_category_to_layout (`category_id`, `store_id`, `layout_id`) VALUES",
    "(109, 0, 2), (110, 0, 2), (111, 0, 2), (112, 0, 2),",
    "(1091, 0, 2), (1092, 0, 2), (1093, 0, 2),",
    "(1101, 0, 2), (1102, 0, 2), (1103, 0, 2),",
    "(1111, 0, 2), (1112, 0, 2), (1113, 0, 2),",
    "(1121, 0, 2), (1122, 0, 2), (1123, 0, 2);",
    "",
    "-- Category Filters: link new categories to filter groups 1, 2, 3, 4, 5",
    "INSERT IGNORE INTO oc_category_filter (`category_id`, `filter_id`)",
    "SELECT c.category_id, f.filter_id FROM oc_category c CROSS JOIN oc_filter f WHERE c.category_id IN (109, 110, 111, 112, 1091, 1092, 1093, 1101, 1102, 1103, 1111, 1112, 1113, 1121, 1122, 1123);",
    "",
    "-- 3. 16 NEW B2B PRODUCTS (103 to 118)",
    "INSERT INTO oc_product (`product_id`, `model`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `status`, `date_added`, `date_modified`) VALUES",
    "(103, 'SOL-550W-BIFACIAL', 250, 7, 'catalog/poolbuy/prod_103.jpg', 1, 1, 285000.00, '2026-01-01', 750.00, 1, 2278.00, 1134.00, 35.00, 1, 1, NOW(), NOW()),",
    "(104, 'GEN-125KVA-SILENT', 120, 7, 'catalog/poolbuy/prod_104.jpg', 1, 1, 420000.00, '2026-01-01', 1850.00, 1, 3200.00, 1150.00, 1800.00, 1, 1, NOW(), NOW()),",
    "(105, 'TRF-250KVA-OIL', 80, 7, 'catalog/poolbuy/prod_105.jpg', 1, 1, 345000.00, '2026-01-01', 1420.00, 1, 1550.00, 1100.00, 1600.00, 1, 1, NOW(), NOW()),",
    "(106, 'ACB-630A-MICRO', 300, 7, 'catalog/poolbuy/prod_106.jpg', 1, 1, 68500.00, '2026-01-01', 48.00, 1, 450.00, 380.00, 420.00, 1, 1, NOW(), NOW()),",
    "(107, 'AG-ROTA-6FT-HD', 150, 7, 'catalog/poolbuy/prod_107.jpg', 1, 1, 85000.00, '2026-01-01', 480.00, 1, 1850.00, 950.00, 1100.00, 1, 1, NOW(), NOW()),",
    "(108, 'DRIP-LAT-16MM-500', 1200, 7, 'catalog/poolbuy/prod_108.jpg', 1, 1, 4800.00, '2026-01-01', 18.50, 1, 600.00, 600.00, 250.00, 1, 1, NOW(), NOW()),",
    "(109, 'AG-SOLAR-75HP', 200, 7, 'catalog/poolbuy/prod_109.jpg', 1, 1, 72000.00, '2026-01-01', 58.00, 1, 1250.00, 180.00, 180.00, 1, 1, NOW(), NOW()),",
    "(110, 'AG-DISC-HARROW-16', 90, 7, 'catalog/poolbuy/prod_110.jpg', 1, 1, 98000.00, '2026-01-01', 620.00, 1, 2100.00, 1200.00, 1050.00, 1, 1, NOW(), NOW()),",
    "(111, 'FIRE-FM200-SYS', 80, 7, 'catalog/poolbuy/prod_111.jpg', 1, 1, 145000.00, '2026-01-01', 120.00, 1, 800.00, 600.00, 1600.00, 1, 1, NOW(), NOW()),",
    "(112, 'SAFE-HARNESS-EN361', 450, 7, 'catalog/poolbuy/prod_112.jpg', 1, 1, 18500.00, '2026-01-01', 16.00, 1, 500.00, 400.00, 300.00, 1, 1, NOW(), NOW()),",
    "(113, 'GAS-DET-4WAY-PRO', 350, 7, 'catalog/poolbuy/prod_113.jpg', 1, 1, 24000.00, '2026-01-01', 1.80, 1, 250.00, 180.00, 90.00, 1, 1, NOW(), NOW()),",
    "(114, 'CCTV-32CH-4K-POE', 180, 7, 'catalog/poolbuy/prod_114.jpg', 1, 1, 88000.00, '2026-01-01', 32.00, 1, 650.00, 500.00, 400.00, 1, 1, NOW(), NOW()),",
    "(115, 'KIT-4BURN-RANGE-SS', 140, 7, 'catalog/poolbuy/prod_115.jpg', 1, 1, 58000.00, '2026-01-01', 135.00, 1, 900.00, 900.00, 850.00, 1, 1, NOW(), NOW()),",
    "(116, 'DISH-HOOD-60RACK', 70, 7, 'catalog/poolbuy/prod_116.jpg', 1, 1, 175000.00, '2026-01-01', 165.00, 1, 750.00, 850.00, 1500.00, 1, 1, NOW(), NOW()),",
    "(117, 'WARM-BUFFET-3TIER', 280, 7, 'catalog/poolbuy/prod_117.jpg', 1, 1, 29500.00, '2026-01-01', 42.00, 1, 950.00, 520.00, 680.00, 1, 1, NOW(), NOW()),",
    "(118, 'HOSP-TOWEL-600GSM', 600, 7, 'catalog/poolbuy/prod_118.jpg', 1, 1, 16500.00, '2026-01-01', 34.00, 1, 700.00, 500.00, 500.00, 1, 1, NOW(), NOW())",
    "ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1;",
    "",
    "INSERT INTO oc_product_description (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES",
    "(103, 1, 'Tier-1 550W Monocrystalline Bifacial Solar Panels (Pallet of 31 Panels)', '<h3>Industrial Tier-1 Bifacial Solar Panels (Pallet of 31 Modules)</h3><p>Engineered for commercial rooftop and ground-mount industrial solar installations. Features high-efficiency 144-cell half-cut PERC bifacial technology delivering up to 25% additional rear-side power gain.</p><ul><li>Rated Output: 550W per module (17.05 kW per pallet)</li><li>Module Efficiency: 21.3%</li><li>Bifaciality Factor: 70±5%</li><li>Warranty: 12-Year Product Warranty, 30-Year Linear Power Warranty</li><li>Standard Compliance: IEC 61215, IEC 61730, BIS Approved</li></ul>', 'solar panels, monocrystalline, bifacial, commercial solar, wholesale solar', '550W Bifacial Solar Panels Pallet - Wholesale PoolBuy', 'Buy Tier-1 550W Monocrystalline Bifacial Solar Panels in wholesale pallet quantities at manufacturer direct prices.', 'solar panel wholesale, bifacial solar 550w, industrial solar'),",
    "(104, 1, 'Heavy-Duty 125 kVA Silent Three-Phase Diesel Generator Set', '<h3>125 kVA Commercial Silent Acoustic Canopy Diesel Generator</h3><p>Continuous heavy-duty industrial standby power generation equipped with water-cooled multi-cylinder turbocharged diesel engine, Stamford-type brushless alternator, and microprocessor AMF controller.</p><ul><li>Prime Power Rating: 125 kVA / 100 kW (415V, 50Hz, 3-Phase)</li><li>Acoustic Canopy: Sound attenuated < 75 dBA @ 1 meter</li><li>Fuel Tank Capacity: 280 Liters (12+ hours continuous runtime)</li><li>Controller: SmartGen AMF with auto-start on mains failure</li><li>Emission Standard: CPCB-IV+ Compliant</li></ul>', 'diesel generator, 125 kva generator, industrial generator, silent gen-set', '125 kVA Silent Diesel Generator - Wholesale PoolBuy', 'Commercial 125 kVA silent diesel generator with acoustic canopy at factory wholesale price.', 'diesel generator wholesale, 125kva silent genset, commercial power'),",
    "(105, 1, 'Industrial Step-Down Oil-Cooled Distribution Transformer 250kVA 11kV/415V', '<h3>250 kVA 11kV/415V Copper Wound Distribution Transformer</h3><p>Designed for industrial plants, commercial complexes, and manufacturing facilities. Built with prime electrolytic grade copper windings and high-grade CRGO silicon steel lamination for maximum energy efficiency and minimal no-load losses.</p><ul><li>Rating: 250 kVA, 11 kV Primary, 433V Secondary (Dyn11)</li><li>Cooling: ONAN (Oil Natural Air Natural)</li><li>Winding Material: 100% Electrolytic Oxygen-Free Copper</li><li>Standards: IS 1180 (Part 1) Energy Efficiency Level 2, BIS Certified</li><li>Accessories: Conservator tank, silica gel breather, oil level gauge</li></ul>', 'distribution transformer, 250 kva transformer, industrial electrical, copper wound', '250 kVA Distribution Transformer 11kV - Wholesale PoolBuy', 'High efficiency 250 kVA oil-immersed distribution transformer at direct manufacturer wholesale rates.', 'distribution transformer, 250kva 11kv, copper transformer wholesale'),",
    "(106, 1, 'Industrial 4-Pole 630A Air Circuit Breaker (ACB) Microprocessor Trip Unit', '<h3>630A 4-Pole Drawout Type Air Circuit Breaker (ACB)</h3><p>High-breaking-capacity main incomer protection switchgear with intelligent microprocessor-based LSIG trip unit (Long time, Short time, Instantaneous, Ground fault protection).</p><ul><li>Rated Current (In): 630A (4-Pole Drawout)</li><li>Rated Breaking Capacity (Icu): 50 kA @ 415V AC</li><li>Trip Unit: Advanced LCD display with real-time metering</li><li>Standards: IEC 60947-2, IS/IEC 60947-2</li></ul>', 'air circuit breaker, 630a acb, industrial switchgear, 4 pole acb', '630A 4-Pole Air Circuit Breaker ACB - Wholesale PoolBuy', 'Industrial 630A 4-pole drawout air circuit breaker with microprocessor trip unit at factory direct prices.', 'air circuit breaker, 630a acb, industrial switchgear'),",
    "(107, 1, 'Multi-Speed Heavy Duty Tractor Rotary Tiller Rotavator 6-Feet (Gear Drive)', '<h3>6-Foot Heavy-Duty Tractor Rotavator / Rotary Tiller</h3><p>High-performance primary and secondary tillage implement compatible with 45-60 HP tractors. Features heavy cast steel multi-speed gearbox and boron steel L-type tilling blades for complete soil pulverization in single pass.</p><ul><li>Working Width: 6 Feet (1800 mm) with 48 Boron Steel Blades</li><li>Drive Mechanism: Side Gear Drive in oil bath</li><li>Depth of Tillage: Adjustable up to 7 inches (180 mm)</li><li>Tractor Compatibility: Suitable for 45-60 HP tractors</li><li>Certification: Tested and certified as per Central Farm Machinery Training Institute</li></ul>', 'tractor rotavator, rotary tiller, agricultural implement, farm machinery', '6-Foot Heavy Duty Tractor Rotavator - Wholesale PoolBuy', 'Direct factory wholesale pricing on 6-foot gear-driven tractor rotavators with boron steel blades.', 'rotavator wholesale, tractor rotary tiller, agricultural machinery'),",
    "(108, 1, 'Commercial Pressure Compensating Drip Irrigation Lateral Pipe (16mm x 500m Coil)', '<h3>16mm PC Drip Irrigation Lateral Tubing (500m Master Coil)</h3><p>Manufactured from 100% virgin high-grade LLDPE with UV stabilizers for high resistance to agrochemicals, fertilizers, and extreme solar radiation. Features integrated pressure-compensating drippers delivering uniform discharge.</p><ul><li>Diameter: 16mm Outer Diameter (Class 2, 2.5 bar pressure rated)</li><li>Dripper Discharge: 2.0 Liters/Hour (Pressure Compensating 0.5 to 3.0 bar)</li><li>Emitter Spacing: 40 cm inline spacing</li><li>Coil Length: 500 Meters continuous coil</li><li>Compliance: IS 13488 / ISO 9261 Certified</li></ul>', 'drip irrigation, lateral pipe, 16mm drip coil, agricultural irrigation', '16mm Pressure Compensating Drip Lateral Pipe - Wholesale PoolBuy', 'Wholesale bundles of 16mm pressure-compensating drip irrigation tubing for commercial farming.', 'drip irrigation pipe, 16mm drip coil wholesale, farm irrigation'),",
    "(109, 1, 'Solar Powered High-Discharge Submersible Agricultural Borewell Pump 7.5HP', '<h3>7.5HP Solar Agricultural Submersible Borewell Pump Set</h3><p>Complete stainless steel SS 304 water-filled submersible motor and multistage centrifugal pump designed to run directly on solar PV arrays via MPPT solar pump controller without battery bank.</p><ul><li>Motor Rating: 7.5 HP (5.5 kW) Brushless High-Efficiency Water-Filled Motor</li><li>Head Range: 60 to 120 Meters</li><li>Discharge: Up to 2,50,000 Liters per day on sunny days</li><li>Material: 100% SS 304 Pump Body, Shaft, and Impellers</li><li>Warranty: 5 Years comprehensive manufacturer warranty</li></ul>', 'solar water pump, agricultural borewell pump, 7.5hp solar pump, farm irrigation', '7.5HP Solar Submersible Agricultural Pump - Wholesale PoolBuy', 'High discharge 7.5HP solar agricultural borewell pumps directly from verified manufacturers at wholesale rates.', 'solar pump wholesale, 7.5hp solar agricultural pump, borewell solar pump'),",
    "(110, 1, 'Heavy-Duty Heavy Disc Harrow 16-Disc Hydraulic Trailed Model for Tractors', '<h3>16-Disc Heavy-Duty Hydraulic Trailed Harrow</h3><p>Built for heavy soil conditioning, stubble management, and hard pan breaking. Equipped with high-carbon boron steel scalloped notched front discs and plain rear discs mounted on sealed double ball bearing hubs.</p><ul><li>Disc Configuration: 16 Discs (8 Notched Front + 8 Plain Rear)</li><li>Disc Diameter: 22-Inch (560 mm) Boron Steel</li><li>Transport: Hydraulic lifting system with heavy pneumatic road wheels</li><li>Tractor Requirement: 50-70 HP</li></ul>', 'disc harrow, tractor harrow, agricultural tillage, heavy farm implement', '16-Disc Heavy Duty Hydraulic Disc Harrow - Wholesale PoolBuy', 'Commercial hydraulic trailed 16-disc harrows at wholesale factory pricing.', 'disc harrow wholesale, tractor farm implements, agricultural machinery'),",
    "(111, 1, 'UL-Listed Commercial FM-200 Clean Agent Automatic Fire Suppression System', '<h3>FM-200 (HFC-227ea) Clean Agent Total Flooding Fire Suppression System</h3><p>Designed for critical facility fire protection (data centers, server rooms, telecommunication centers, electrical switchgear rooms). Discharges clean gas agent within 10 seconds without residue, water damage, or electrical conductivity.</p><ul><li>System Capacity: 120-Liter Seamless Cylinder with 90kg FM-200 Agent</li><li>Operating Pressure: 25 bar / 360 psi (Nitrogen Superpressurized)</li><li>Discharge Time: Rapid total discharge under 10 seconds</li><li>Certification: UL Listed, FM Approved, VdS Compliant</li></ul>', 'fire suppression, fm 200 system, clean agent fire, commercial fire safety', 'FM-200 Clean Agent Fire Suppression System - Wholesale PoolBuy', 'UL-listed automatic FM-200 clean agent total flooding fire suppression systems for commercial facilities.', 'fm200 fire suppression, commercial fire protection, server room fire safety'),",
    "(112, 1, 'EN 361 Certified Full Body Fall Arrest Safety Harness with Shock Absorbing Lanyard (Box of 10)', '<h3>Full Body Fall Arrest Safety Harness with Dual Lanyard (Case of 10)</h3><p>Heavy industrial personal fall protection equipment designed for construction scaffolding, tower climbing, and height maintenance. Built with high-tenacity polyester webbing with dorsal D-ring and twin shock-absorbing elasticated lanyards with scaffold hooks.</p><ul><li>Standards Compliance: EN 361:2002, IS 3521 Certified</li><li>Webbing: 44mm High-Tenacity Polyester (Breaking Strength > 25 kN)</li><li>Hardware: Forged alloy steel dorsal D-ring & quick-adjust mating buckles</li><li>Lanyard: 2.0m Twin elasticated lanyard with energy absorber & 55mm opening forged scaffold hooks</li><li>Quantity: Pack of 10 individual harnesses in waterproof B2B master case</li></ul>', 'safety harness, fall protection, en361 harness, scaffolding safety, b2b ppe', 'EN 361 Full Body Safety Harness (Pack of 10) - Wholesale PoolBuy', 'Wholesale lots of certified EN 361 industrial full body fall arrest safety harnesses with lanyards.', 'safety harness wholesale, fall arrest ppe, construction safety equipment'),",
    "(113, 1, 'Multi-Gas Portable Industrial Confined Space Detector 4-Gas (LEL/O2/CO/H2S)', '<h3>4-Gas Personal Portable Atmospheric Monitor (Case of 2 Units)</h3><p>Rugged IP68 intrinsically safe portable multi-gas detector for continuous monitoring of combustible gases (%LEL), Oxygen (O2), Carbon Monoxide (CO), and Hydrogen Sulfide (H2S) in industrial plants, sewer works, and confined spaces.</p><ul><li>Sensors: Catalytic combustion for LEL; Electrochemical for O2, CO, and H2S</li><li>Alarms: 95 dB audible buzzer, high-intensity visual 360-degree LED strobes, internal vibrating alarm</li><li>Battery: Rechargeable Li-Ion (18+ hours continuous operation)</li><li>Certification: ATEX Ex ia IIC T4 Ga, IECEx Intrinsically Safe Certified</li></ul>', 'gas detector, 4 gas monitor, confined space safety, industrial gas detector', '4-Gas Portable Confined Space Detector - Wholesale PoolBuy', 'Wholesale industrial 4-gas atmospheric monitors for confined space safety and plant compliance.', 'gas detector wholesale, 4 gas monitor, industrial safety equipment'),",
    "(114, 1, 'Commercial 32-Channel 4K NVR Industrial IP Security Camera System with PoE', '<h3>Commercial 32-Channel 4K PoE Network Video Surveillance Package</h3><p>Enterprise grade security surveillance package including 32-channel 4K NVR with 16 integrated PoE ports, 16TB surveillance grade hard drive, and 16 pieces of 5MP Smart AI IR outdoor bullet IP cameras with human & vehicle detection.</p><ul><li>NVR: 32-Channel 4K Ultra HD (H.265+ Compression, 256 Mbps Incoming Bandwidth)</li><li>Cameras Included: 16x 5MP Outdoor IP67 Weatherproof Bullet Cameras with 30m Smart IR</li><li>Storage: Includes 2x 8TB Western Digital Purple Surveillance Hard Drives pre-installed</li><li>Features: AI Human & Vehicle Motion Detection, Remote Mobile Viewing, ONVIF Profile S/G/T</li></ul>', 'commercial cctv, 32 channel nvr, poe security camera system, industrial surveillance', '32-Channel 4K Industrial CCTV Camera System - Wholesale PoolBuy', 'Commercial 32-channel 4K PoE network video surveillance system for factories and warehouses at wholesale price.', 'commercial cctv wholesale, 32ch poe nvr, industrial surveillance system'),",
    "(115, 1, 'Heavy Duty SS 304 4-Burner Commercial Gas Range with Integrated Under-Oven', '<h3>Commercial SS 304 4-Burner Cooking Range with Convection Oven</h3><p>Designed for heavy commercial restaurant and hotel kitchens. Fabricated completely from heavy gauge food-grade stainless steel AISI 304 with heavy duty cast iron pan supports and 30,000 BTU high-efficiency cast brass burners.</p><ul><li>Construction: 1.5mm Heavy Gauge SS 304 food-grade stainless steel</li><li>Burners: 4 Heavy Cast Iron High-Efficiency Dual Flame Burners (Total 120,000 BTU/Hr)</li><li>Oven: Built-in heavy duty thermostatically controlled gas oven with safety flame-failure valves</li><li>Gas Type: Compatible with Commercial LPG or Piped Natural Gas (PNG)</li></ul>', 'commercial cooking range, ss 304 gas range, restaurant kitchen equipment, commercial stove', 'Commercial SS 304 4-Burner Gas Cooking Range - Wholesale PoolBuy', 'Heavy duty stainless steel 304 commercial 4-burner cooking ranges for hotels and restaurants at factory wholesale price.', 'commercial cooking range wholesale, restaurant gas range, commercial kitchen equipment'),",
    "(116, 1, 'Commercial Hood-Type High Temperature Sanitizing Pass-Through Dishwasher (60 Racks/Hr)', '<h3>Commercial Hood-Type Pass-Through Sanitizing Dishwasher</h3><p>High-capacity commercial dishwashing machine capable of cleaning and sanitizing up to 60 standard 500x500mm dish racks (1200+ plates) per hour with low water and energy consumption.</p><ul><li>Capacity: 60 Racks / Hour (Cycles of 60, 90, and 120 seconds)</li><li>Sanitization: High temperature 85°C rinse cycle ensuring HACCP compliance</li><li>Construction: Double-skinned AISI 304 stainless steel wash tank and hood</li><li>Included: 1x Plate Rack, 1x Cup/Glass Rack, 1x Cutlery Basket</li><li>Power: 415V, 3-Phase, 9.5 kW Total Connected Load</li></ul>', 'commercial dishwasher, hood type dishwasher, pass through dishwasher, restaurant equipment', 'Commercial Hood-Type Pass-Through Dishwasher - Wholesale PoolBuy', 'High efficiency commercial pass-through dishwashers for hotels, banquets, and restaurants directly from manufacturers.', 'commercial dishwasher wholesale, hood type dishwasher, hotel kitchen equipment'),",
    "(117, 1, 'Commercial 3-Tier Heated Countertop Buffet Food Display Warmer SS 304 (Curved Glass)', '<h3>Commercial 3-Tier Heated Countertop Food Display Showcase</h3><p>Curved front tempered glass heated display showcase for hot snacks, pastries, samosas, and buffet items. Features adjustable precise thermostat control (30°C to 90°C), internal humidity water pan, and bright warm LED food lighting.</p><ul><li>Dimensions: 900mm Width x 480mm Depth x 660mm Height</li><li>Shelves: 3 Chrome-plated adjustable wire display shelves with rear sliding glass doors</li><li>Temperature Control: Capillary thermostat 30°C to 85°C with analogue thermometer</li><li>Power: 230V Single Phase, 1.8 kW heating element</li></ul>', 'food display warmer, heated showcase, buffet food warmer, commercial warmer', '3-Tier Curved Glass Heated Food Display Warmer - Wholesale PoolBuy', 'Countertop commercial heated buffet food display warmers at direct wholesale factory price.', 'food warmer display wholesale, heated showcase, buffet warmer commercial'),",
    "(118, 1, '100% Ring-Spun Egyptian Cotton 600 GSM Luxury Hotel Bath Towels (Wholesale Bale of 50)', '<h3>600 GSM 100% Ring-Spun Cotton Luxury Hotel Bath Towels (Bale of 50)</h3><p>Woven specifically for luxury 5-star hotels, luxury spas, and premium resorts. High-density 600 GSM 2-ply ring-spun cotton yarn provides exceptional absorbency, plush cloud-like softness, and reinforced double-needle stitched side hems designed to withstand 200+ industrial laundry wash cycles.</p><ul><li>Dimensions: 75 x 150 cm (Standard Luxury Bath Sheet Size)</li><li>Fabric: 100% Combed Ring-Spun Long-Staple Cotton, 600 GSM Weight</li><li>Color: Bright Optical Bleach White (VAT Dyed, Chlorine Resistant)</li><li>Finishing: Double-needle lockstitched hems to prevent unraveling</li><li>Packaging: Compressed wholesale export bale of 50 bath towels in protective poly-lined burlap wrapping</li></ul>', 'hotel bath towels, wholesale towels, 600 gsm towels, luxury hotel linen', '600 GSM Luxury Hotel Bath Towels (Bale of 50) - Wholesale PoolBuy', 'Wholesale bales of 50 pieces 600 GSM pure cotton luxury hotel bath towels at manufacturer direct pricing.', 'hotel towels wholesale, 600 gsm bath towel bale, commercial hotel linen')",
    "ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);",
    "",
    "-- Product to Store & Category",
    "INSERT IGNORE INTO oc_product_to_store (`product_id`, `store_id`) VALUES",
    "(103, 0), (104, 0), (105, 0), (106, 0),",
    "(107, 0), (108, 0), (109, 0), (110, 0),",
    "(111, 0), (112, 0), (113, 0), (114, 0),",
    "(115, 0), (116, 0), (117, 0), (118, 0);",
    "",
    "INSERT IGNORE INTO oc_product_to_category (`product_id`, `category_id`) VALUES",
    "(103, 109), (103, 1091),",
    "(104, 109), (104, 1092),",
    "(105, 109), (105, 1093),",
    "(106, 109), (106, 1093),",
    "(107, 110), (107, 1101),",
    "(108, 110), (108, 1102),",
    "(109, 110), (109, 1103),",
    "(110, 110), (110, 1101),",
    "(111, 111), (111, 1111),",
    "(112, 111), (112, 1112),",
    "(113, 111), (113, 1113),",
    "(114, 111), (114, 1113),",
    "(115, 112), (115, 1121),",
    "(116, 112), (116, 1122),",
    "(117, 112), (117, 1121),",
    "(118, 112), (118, 1123);",
    "",
    "-- Volume Discount Tiers",
    "INSERT IGNORE INTO oc_product_discount (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES",
    "(1031, 103, 1, 3, 1, 270000.00, '2026-01-01', '2030-12-31'),",
    "(1032, 103, 1, 10, 1, 255000.00, '2026-01-01', '2030-12-31'),",
    "(1041, 104, 1, 2, 1, 395000.00, '2026-01-01', '2030-12-31'),",
    "(1042, 104, 1, 5, 1, 375000.00, '2026-01-01', '2030-12-31'),",
    "(1071, 107, 1, 5, 1, 79000.00, '2026-01-01', '2030-12-31'),",
    "(1072, 107, 1, 10, 1, 74000.00, '2026-01-01', '2030-12-31'),",
    "(1081, 108, 1, 20, 1, 4400.00, '2026-01-01', '2030-12-31'),",
    "(1082, 108, 1, 50, 1, 4100.00, '2026-01-01', '2030-12-31'),",
    "(1121, 112, 1, 5, 1, 17000.00, '2026-01-01', '2030-12-31'),",
    "(1122, 112, 1, 10, 1, 15500.00, '2026-01-01', '2030-12-31'),",
    "(1181, 118, 1, 5, 1, 15000.00, '2026-01-01', '2030-12-31'),",
    "(1182, 118, 1, 10, 1, 13800.00, '2026-01-01', '2030-12-31');",
    "",
    "-- 4. NEW BUYING POOLS IN POOLBUY",
    "INSERT INTO oc_poolbuy_pool (`pool_id`, `product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`, `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`, `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`, `shipping_terms`, `freight_total`, `climate_safe`, `date_added`, `date_modified`) VALUES",
    "(109, 103, 1, 'Tier-1 550W Monocrystalline Bifacial Solar Panels (Pallet of 31 Panels)', 'PB-POOL-109', 50, 38, 'Pallet', 'INR', 'active', '2026-01-01 00:00:00', '2026-11-20 00:00:00', 1, 1, 1, 10, '3-5 Days', 'Ex-Works / FOB Factory', 0.00, 1, NOW(), NOW()),",
    "(110, 107, 2, 'Multi-Speed Heavy Duty Tractor Rotary Tiller Rotavator 6-Feet (Gear Drive)', 'PB-POOL-110', 40, 29, 'Unit', 'INR', 'active', '2026-01-01 00:00:00', '2026-11-22 00:00:00', 1, 1, 1, 5, '5-7 Days', 'Ex-Works / FOB Factory', 0.00, 1, NOW(), NOW()),",
    "(111, 112, 3, 'EN 361 Certified Full Body Fall Arrest Safety Harness with Shock Absorbing Lanyard', 'PB-POOL-111', 100, 82, 'Case of 10', 'INR', 'active', '2026-01-01 00:00:00', '2026-11-25 00:00:00', 1, 1, 1, 20, '2-4 Days', 'Ex-Works / FOB Factory', 0.00, 1, NOW(), NOW()),",
    "(112, 118, 4, '100% Ring-Spun Egyptian Cotton 600 GSM Luxury Hotel Bath Towels (Bale of 50)', 'PB-POOL-112', 150, 120, 'Bale of 50', 'INR', 'active', '2026-01-01 00:00:00', '2026-11-28 00:00:00', 1, 1, 1, 30, '3-5 Days', 'Ex-Works / FOB Factory', 0.00, 1, NOW(), NOW())",
    "ON DUPLICATE KEY UPDATE `reserved_qty` = VALUES(`reserved_qty`), `status` = 'active';",
    "",
    "INSERT INTO oc_poolbuy_pool_tier (`tier_id`, `pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`) VALUES",
    "(1091, 109, 1, 9, 285000.00, 0),",
    "(1092, 109, 10, 24, 270000.00, 1),",
    "(1093, 109, 25, NULL, 255000.00, 2),",
    "(1101, 110, 1, 9, 85000.00, 0),",
    "(1102, 110, 10, 24, 79000.00, 1),",
    "(1103, 110, 25, NULL, 74000.00, 2),",
    "(1111, 111, 1, 9, 18500.00, 0),",
    "(1112, 111, 10, 24, 17000.00, 1),",
    "(1113, 111, 25, NULL, 15500.00, 2),",
    "(1121, 112, 1, 9, 16500.00, 0),",
    "(1122, 112, 10, 24, 15000.00, 1),",
    "(1123, 112, 25, NULL, 13800.00, 2)",
    "ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);",
    "",
    "SET FOREIGN_KEY_CHECKS = 1;"
]

with open(SQL_FILE, 'w', encoding='utf-8') as f:
    f.write("\n".join(sql_lines) + "\n")

print(f"  Saved SQL seed script to {SQL_FILE}")
print("Done!")
