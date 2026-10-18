-- ====================================================================
-- PoolBuy Wholesale: Product Images & Manufacturer Brands Remediation
-- 1. Purge all legacy demo consumer electronic images from oc_product_image
-- 2. Insert authentic B2B multi-view gallery photography
-- 3. Modernize oc_manufacturer with legitimate industrial B2B brands
-- 4. Correct manufacturer_id associations across products
-- ====================================================================

-- Step 1: Purge legacy demo images (HTC, Palm, iPod, iPhone, iMac, Nikon)
DELETE FROM oc_product_image WHERE image LIKE '%catalog/demo/%';

-- Step 2: Insert authentic B2B gallery images for active catalog products

-- Product 28: Titan-X Professional Series 5HP Submersible Drainage Pump
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(28, 'catalog/poolbuy/gallery/pump_titanx_side.jpg', 1),
(28, 'catalog/poolbuy/gallery/pump_titanx_impeller.jpg', 2),
(28, 'catalog/poolbuy/gallery/pump_titanx_specs.jpg', 3);

-- Product 29: Commercial Multistage High-Flow Water Filtration Vessels (Lot of 4)
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(29, 'catalog/poolbuy/gallery/vessels_filtration_manifold.jpg', 1),
(29, 'catalog/poolbuy/gallery/vessels_filtration_valves.jpg', 2);

-- Product 31: EliteFlow Filtration Pro-7 Commercial Pump
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(31, 'catalog/poolbuy/gallery/pump_eliteflow_motor.jpg', 1),
(31, 'catalog/poolbuy/gallery/pump_eliteflow_casing.jpg', 2);

-- Product 32: CrystalPure Chlorine Tablets (25kg Pail)
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(32, 'catalog/poolbuy/gallery/chem_chlorine_tablets_detail.jpg', 1),
(32, 'catalog/poolbuy/gallery/chem_chlorine_pail_label.jpg', 2);

-- Product 34: High-Tensile Grade 8.8 Hex Bolts, Nuts & Washers Kit (Bulk 500-Pack)
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(34, 'catalog/poolbuy/gallery/fasteners_hex_bolts_tray.jpg', 1),
(34, 'catalog/poolbuy/gallery/fasteners_washers_nuts_bulk.jpg', 2);

-- Product 36: Ceramic Mosaic XL Pool & Architectural Tiles
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(36, 'catalog/poolbuy/gallery/tiles_mosaic_sheet_detail.jpg', 1),
(36, 'catalog/poolbuy/gallery/tiles_pool_installation_view.jpg', 2);

-- Product 40: Galvanized Aircraft Grade Steel Wire Rope Reel (8mm x 100m Drum)
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(40, 'catalog/poolbuy/gallery/rigging_wire_rope_drum.jpg', 1),
(40, 'catalog/poolbuy/gallery/rigging_wire_rope_thimbles.jpg', 2);

-- Product 41: Medical Grade Borosilicate Glass Vials (Case of 1000)
INSERT INTO oc_product_image (product_id, image, sort_order) VALUES
(41, 'catalog/poolbuy/gallery/lab_vials_serum_crimps.jpg', 1),
(41, 'catalog/poolbuy/gallery/lab_vials_tray_packaging.jpg', 2);

-- Step 3: Modernize oc_manufacturer to legitimate B2B industrial manufacturers
INSERT INTO oc_manufacturer (manufacturer_id, name, image, sort_order) VALUES
(1, 'Adani Solar & Power Technologies', '', 1),
(11, 'Kajaria Architectural Ceramics', '', 11),
(12, 'Unbrako High-Tensile Fasteners', '', 12)
ON DUPLICATE KEY UPDATE name = VALUES(name);

UPDATE oc_manufacturer SET name = 'Titan-X Industrial Machinery', image = '' WHERE manufacturer_id = 5;
UPDATE oc_manufacturer SET name = 'EliteFlow Commercial Systems', image = '' WHERE manufacturer_id = 6;
UPDATE oc_manufacturer SET name = 'Kirloskar Heavy Engineering', image = '' WHERE manufacturer_id = 7;
UPDATE oc_manufacturer SET name = 'Tata Steel Rigging & Fasteners', image = '' WHERE manufacturer_id = 8;
UPDATE oc_manufacturer SET name = 'CrystalPure Industrial Solutions', image = '' WHERE manufacturer_id = 9;
UPDATE oc_manufacturer SET name = 'Borosil Scientific Glassware', image = '' WHERE manufacturer_id = 10;

-- Ensure all manufacturers are associated with store 0
INSERT IGNORE INTO oc_manufacturer_to_store (manufacturer_id, store_id) VALUES
(1, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0);

-- Step 4: Update oc_seo_url for manufacturers
UPDATE oc_seo_url SET keyword = 'titan-x-machinery' WHERE `key` = 'manufacturer_id' AND value = '5';
UPDATE oc_seo_url SET keyword = 'eliteflow-systems' WHERE `key` = 'manufacturer_id' AND value = '6';
UPDATE oc_seo_url SET keyword = 'kirloskar-engineering' WHERE `key` = 'manufacturer_id' AND value = '7';
UPDATE oc_seo_url SET keyword = 'tata-steel-rigging' WHERE `key` = 'manufacturer_id' AND value = '8';
UPDATE oc_seo_url SET keyword = 'crystalpure-solutions' WHERE `key` = 'manufacturer_id' AND value = '9';
UPDATE oc_seo_url SET keyword = 'borosil-scientific' WHERE `key` = 'manufacturer_id' AND value = '10';

INSERT INTO oc_seo_url (store_id, language_id, `key`, value, keyword, sort_order) VALUES
(0, 1, 'manufacturer_id', '1', 'adani-solar', 0),
(0, 1, 'manufacturer_id', '11', 'kajaria-ceramics', 0),
(0, 1, 'manufacturer_id', '12', 'unbrako-fasteners', 0)
ON DUPLICATE KEY UPDATE keyword = VALUES(keyword);

-- Step 5: Assign accurate B2B manufacturer_id across all relevant catalog products
-- Titan-X Industrial Machinery (ID 5)
UPDATE oc_product SET manufacturer_id = 5 WHERE product_id IN (28, 61);

-- EliteFlow Commercial Systems (ID 6)
UPDATE oc_product SET manufacturer_id = 6 WHERE product_id IN (29, 31, 62, 63, 65);

-- CrystalPure Industrial Solutions (ID 9)
UPDATE oc_product SET manufacturer_id = 9 WHERE product_id IN (32, 49, 66, 67, 68);

-- Kajaria Architectural Ceramics (ID 11)
UPDATE oc_product SET manufacturer_id = 11 WHERE product_id IN (36, 71, 72, 73);

-- Unbrako High-Tensile Fasteners (ID 12)
UPDATE oc_product SET manufacturer_id = 12 WHERE product_id IN (34, 77, 78);

-- Tata Steel Rigging & Fasteners (ID 8)
UPDATE oc_product SET manufacturer_id = 8 WHERE product_id IN (40, 79, 80);

-- Borosil Scientific Glassware (ID 10)
UPDATE oc_product SET manufacturer_id = 10 WHERE product_id IN (41, 51, 89, 90, 91);

-- Adani Solar & Power Technologies (ID 1)
UPDATE oc_product SET manufacturer_id = 1 WHERE product_id IN (103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118);
