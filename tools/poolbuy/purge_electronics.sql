-- =========================================================================
-- Purge OpenCart Demo Consumer Electronics & Establish B2B Wholesale Catalog
-- =========================================================================

START TRANSACTION;

-- 1. Remove unlinked consumer electronic products (MacBook, iPod Classic, Sony VAIO, etc.)
DELETE FROM oc_product WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_description WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_to_category WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_to_store WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_to_layout WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_image WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_attribute WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_option WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_option_value WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_discount WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_filter WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_code WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_reward WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_product_related WHERE product_id IN (43, 44, 45, 46, 47, 48, 49) OR related_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_review WHERE product_id IN (43, 44, 45, 46, 47, 48, 49);
DELETE FROM oc_seo_url WHERE `key` = 'product_id' AND `value` IN ('43', '44', '45', '46', '47', '48', '49');

-- 2. Clear old demo consumer electronics categories and subcategories
DELETE FROM oc_category;
DELETE FROM oc_category_description;
DELETE FROM oc_category_path;
DELETE FROM oc_category_to_store;
DELETE FROM oc_category_to_layout;
DELETE FROM oc_seo_url WHERE `key` = 'category_id';

-- 3. Create Authentic B2B Wholesale Categories
INSERT INTO oc_category (category_id, image, parent_id, sort_order, status) VALUES
(101, 'catalog/poolbuy/cat_machinery.jpg', 0, 10, 1),
(102, 'catalog/poolbuy/cat_chemicals.jpg', 0, 20, 1),
(103, 'catalog/poolbuy/cat_construction.jpg', 0, 30, 1),
(104, 'catalog/poolbuy/cat_packaging.jpg', 0, 40, 1),
(105, 'catalog/poolbuy/cat_apparel.jpg', 0, 50, 1),
(106, 'catalog/poolbuy/cat_hardware.jpg', 0, 60, 1),
(107, 'catalog/poolbuy/cat_medical.jpg', 0, 70, 1);

INSERT INTO oc_category_description (category_id, language_id, name, description, meta_title, meta_description, meta_keyword) VALUES
(101, 1, 'Machinery & Pumps', 'Commercial and industrial grade pumps, filtration units, and heavy processing machinery.', 'Industrial Machinery & Pumps - PoolBuy B2B', 'Wholesale procurement pools for industrial pumps and machinery.', 'machinery, pumps, industrial, filtration'),
(102, 1, 'Chemicals & Treatment', 'Water treatment chemicals, sanitization tablets, and industrial compounds.', 'Chemicals & Water Treatment - PoolBuy B2B', 'Wholesale procurement pools for industrial chemicals and water treatment.', 'chemicals, water treatment, chlorine, industrial'),
(103, 1, 'Building & Materials', 'Architectural mosaic tiles, ceramics, and structural building supplies.', 'Building & Architectural Materials - PoolBuy B2B', 'Wholesale procurement pools for architectural tiles and building supplies.', 'building materials, tiles, mosaic, architectural'),
(104, 1, 'Packaging & Logistics', 'Heavy duty corrugated master cartons, bulk shipping packaging, and warehouse supplies.', 'Packaging & Bulk Logistics - PoolBuy B2B', 'Wholesale procurement pools for shipping cartons and industrial packaging.', 'packaging, corrugated cartons, shipping boxes, logistics'),
(105, 1, 'Textiles & Apparel', 'Commercial apparel, heavyweight combed cotton blanks, and bulk garment supply.', 'Commercial Textiles & Apparel - PoolBuy B2B', 'Wholesale procurement pools for cotton apparel blanks and commercial textiles.', 'textiles, apparel blanks, t-shirts, combed cotton'),
(106, 1, 'Electrical & Hardware', 'High-power GaN fast chargers, rugged interconnect cables, and IP68 lighting modules.', 'Electrical & Smart Hardware - PoolBuy B2B', 'Wholesale procurement pools for commercial chargers, cables, and lighting.', 'electrical, hardware, GaN, cables, smart lighting'),
(107, 1, 'Medical & Laboratory', 'Medical grade borosilicate glass vials, laboratory glassware, and sterile equipment.', 'Medical & Laboratory Supplies - PoolBuy B2B', 'Wholesale procurement pools for medical vials and laboratory supplies.', 'medical, laboratory, glass vials, borosilicate');

INSERT INTO oc_category_path (category_id, path_id, level) VALUES
(101, 101, 0),
(102, 102, 0),
(103, 103, 0),
(104, 104, 0),
(105, 105, 0),
(106, 106, 0),
(107, 107, 0);

INSERT INTO oc_category_to_store (category_id, store_id) VALUES
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0);

INSERT INTO oc_category_to_layout (category_id, store_id, layout_id) VALUES
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0);

-- 4. Update product descriptions for genuine B2B wholesale titles
UPDATE oc_product_description SET
    name = 'Titan-X Industrial Grade 5HP Submersible Drainage Pump',
    meta_title = 'Titan-X Industrial Grade 5HP Submersible Drainage Pump'
WHERE product_id = 28 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'Industrial Grade Filtration Units - Q4 Procurement',
    meta_title = 'Industrial Grade Filtration Units - Q4 Procurement'
WHERE product_id = 29 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'EliteFlow Filtration Pro-7 Commercial Pump',
    meta_title = 'EliteFlow Filtration Pro-7 Commercial Pump'
WHERE product_id = 31 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'CrystalPure Chlorine Tablets (25kg Pail)',
    meta_title = 'CrystalPure Chlorine Tablets (25kg Pail)'
WHERE product_id = 32 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'LumiPool RGB Smart LED Kits (IP68)',
    meta_title = 'LumiPool RGB Smart LED Kits (IP68)'
WHERE product_id = 33 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'NovaVolt 65W GaN Dual USB-C Fast Charger (BIS Certified)',
    meta_title = 'NovaVolt 65W GaN Dual USB-C Fast Charger (BIS Certified)'
WHERE product_id = 34 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'MasterPack 5-Ply Heavy Duty Corrugated Master Cartons (50-Pack)',
    meta_title = 'MasterPack 5-Ply Heavy Duty Corrugated Master Cartons (50-Pack)'
WHERE product_id = 35 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'Ceramic Mosaic XL Pool & Architectural Tiles',
    meta_title = 'Ceramic Mosaic XL Pool & Architectural Tiles'
WHERE product_id = 36 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'Braided Kevlar-Armored 100W USB-C Interconnect Cable (2m Bulk Reel)',
    meta_title = 'Braided Kevlar-Armored 100W USB-C Interconnect Cable (2m Bulk Reel)'
WHERE product_id = 40 AND language_id = 1;

UPDATE oc_product_description SET
    name = 'Medical Grade Borosilicate Glass Vials (Case of 1000)',
    meta_title = 'Medical Grade Borosilicate Glass Vials (Case of 1000)'
WHERE product_id = 41 AND language_id = 1;

-- 5. Update product models/SKUs
UPDATE oc_product SET model = 'TX-5HP-PUMP', image = 'catalog/poolbuy/prod_pump.jpg' WHERE product_id = 28;
UPDATE oc_product SET model = 'IGF-Q4-UNIT', image = 'catalog/poolbuy/prod_filtration.jpg' WHERE product_id = 29;
UPDATE oc_product SET model = 'EF-PRO7-PUMP', image = 'catalog/poolbuy/prod_pump.jpg' WHERE product_id = 31;
UPDATE oc_product SET model = 'CP-CHLOR-25KG', image = 'catalog/poolbuy/prod_chlorine.jpg' WHERE product_id = 32;
UPDATE oc_product SET model = 'LP-RGB-IP68', image = 'catalog/poolbuy/cat_hardware.jpg' WHERE product_id = 33;
UPDATE oc_product SET model = 'NV-65W-GAN', image = 'catalog/poolbuy/cat_hardware.jpg' WHERE product_id = 34;
UPDATE oc_product SET model = 'MP-5PLY-CARTON', image = 'catalog/poolbuy/prod_cartons.jpg' WHERE product_id = 35;
UPDATE oc_product SET model = 'CM-XL-TILES', image = 'catalog/poolbuy/prod_tiles.jpg' WHERE product_id = 36;
UPDATE oc_product SET model = 'BK-100W-USBC', image = 'catalog/poolbuy/cat_hardware.jpg' WHERE product_id = 40;
UPDATE oc_product SET model = 'MG-VIALS-1000', image = 'catalog/poolbuy/prod_vials.jpg' WHERE product_id = 41;

-- 6. Remap products to genuine B2B wholesale categories
DELETE FROM oc_product_to_category;
INSERT INTO oc_product_to_category (product_id, category_id) VALUES
(28, 101), -- Titan-X Pump -> Machinery & Pumps
(29, 101), -- Filtration Units -> Machinery & Pumps
(31, 101), -- EliteFlow Pump -> Machinery & Pumps
(32, 102), -- Chlorine Tablets -> Chemicals & Treatment
(36, 103), -- Ceramic Tiles -> Building & Materials
(35, 104), -- Corrugated Cartons -> Packaging & Logistics
(41, 107), -- Glass Vials -> Medical & Laboratory
(34, 106), -- GaN Fast Charger -> Electrical & Hardware
(40, 106), -- USB-C Cable -> Electrical & Hardware
(33, 106); -- Smart LED Kits -> Electrical & Hardware

COMMIT;
