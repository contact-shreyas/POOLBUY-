-- ==============================================================================
-- PoolBuy B2B Wholesale Marketplace: Complete Non-Perishable Catalog Migration
-- 
-- 1. Updates Category 106 to "Industrial Hardware & Fasteners"
-- 2. Purges legacy computer/electronic attribute groups & obsolete electronic products
-- 3. Establishes 5 structured B2B attribute groups & standard attributes
-- 4. Establishes reusable product option groups (Size, Color, Material, Dimensions)
-- 5. Inserts/updates all non-perishable B2B wholesale products
-- 6. Populates rich technical specifications (attributes) & storage stability for all products
-- 7. Populates selectable options (variants) for all products
-- 8. Synchronizes active buying pools, volume tier ladders, and attributes JSON
-- ==============================================================================

USE `opencart`;

-- ------------------------------------------------------------------------------
-- 1. Category 106: Rename to Industrial Hardware & Fasteners
-- ------------------------------------------------------------------------------
UPDATE `oc_category_description` SET
    `name` = 'Industrial Hardware & Fasteners',
    `meta_title` = 'Industrial Hardware & Fasteners - PoolBuy B2B Wholesale',
    `meta_description` = 'Wholesale procurement pools for high-tensile fasteners, scaffolding clamps, and steel wire ropes.',
    `meta_keyword` = 'hardware, fasteners, hex bolts, scaffolding clamps, wire rope'
WHERE `category_id` = 106 AND `language_id` = 1;

-- ------------------------------------------------------------------------------
-- 2. Clean Up Legacy Electronic Attributes & Options
-- ------------------------------------------------------------------------------
DELETE FROM `oc_attribute_group` WHERE `attribute_group_id` IN (3, 4, 5, 6);
DELETE FROM `oc_attribute_group_description` WHERE `attribute_group_id` IN (3, 4, 5, 6);
DELETE FROM `oc_attribute` WHERE `attribute_group_id` IN (3, 4, 5, 6) OR `attribute_id` < 100;
DELETE FROM `oc_attribute_description` WHERE `attribute_id` < 100;
DELETE FROM `oc_product_attribute` WHERE `attribute_id` < 100;

-- ------------------------------------------------------------------------------
-- 3. Create Standard B2B Attribute Groups
-- ------------------------------------------------------------------------------
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(10, 1), -- Technical & Performance Specifications
(11, 2), -- Material, Composition & Build
(12, 3), -- Compliance, Standards & Certifications
(13, 4), -- Packaging, Palletization & Logistics
(14, 5)  -- Storage Conditions & Shelf Life
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(10, 1, 'Technical & Performance Specifications'),
(11, 1, 'Material, Composition & Build'),
(12, 1, 'Compliance, Standards & Certifications'),
(13, 1, 'Packaging, Palletization & Logistics'),
(14, 1, 'Storage Conditions & Shelf Life')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- ------------------------------------------------------------------------------
-- 4. Create Standard B2B Attributes
-- ------------------------------------------------------------------------------
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
-- Group 10
(101, 10, 1), -- Flow Capacity / Rating
(102, 10, 2), -- Operating Pressure / Head Max
(103, 10, 3), -- Motor / Power Rating
(104, 10, 4), -- Tensile / Bursting Strength
(105, 10, 5), -- Active Concentration / Chemical Purity
(106, 10, 6), -- Fabric Weight / Density (GSM)
-- Group 11
(111, 11, 1), -- Primary Material / Alloy Grade
(112, 11, 2), -- Surface Finish / Coating
(113, 11, 3), -- Construction / Flute / Mesh
(114, 11, 4), -- Unit Dimensions & Tolerances
-- Group 12
(121, 12, 1), -- Industrial Standards (ISO / DIN / ASTM)
(122, 12, 2), -- Quality & Safety Certifications
(123, 12, 3), -- Hazard & Environmental Classification
-- Group 13
(131, 13, 1), -- Primary Pack Unit
(132, 13, 2), -- Pallet / Master Carton Configuration
(133, 13, 3), -- Gross & Net Weight
-- Group 14
(141, 14, 1), -- Shelf Life Duration
(142, 14, 2), -- Storage Temperature & Humidity
(143, 14, 3)  -- Warehousing & Stacking Instructions
ON DUPLICATE KEY UPDATE `attribute_group_id` = VALUES(`attribute_group_id`), `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(101, 1, 'Flow Capacity / Output Rating'),
(102, 1, 'Operating Pressure / Max Head'),
(103, 1, 'Power / Motor Specification'),
(104, 1, 'Tensile / Bursting Strength'),
(105, 1, 'Active Concentration / Chemical Purity'),
(106, 1, 'Fabric Weight / Density (GSM)'),
(111, 1, 'Primary Material / Alloy Grade'),
(112, 1, 'Surface Finish / Protective Coating'),
(113, 1, 'Construction / Flute / Mesh'),
(114, 1, 'Unit Dimensions & Tolerances'),
(121, 1, 'Industrial Standards (ISO / DIN / ASTM)'),
(122, 1, 'Quality & Safety Certifications'),
(123, 1, 'Hazard & Environmental Classification'),
(131, 1, 'Primary Pack Unit'),
(132, 1, 'Pallet / Master Carton Configuration'),
(133, 1, 'Gross & Net Weight'),
(141, 1, 'Shelf Life Duration'),
(142, 1, 'Storage Temperature & Humidity'),
(143, 1, 'Warehousing & Stacking Instructions')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- ------------------------------------------------------------------------------
-- 5. Create Reusable B2B Option Types & Values
-- ------------------------------------------------------------------------------
INSERT INTO `oc_option` (`option_id`, `type`, `validation`, `sort_order`) VALUES
(11, 'select', NULL, 1), -- Size
(20, 'select', NULL, 2), -- Color / Hue
(21, 'select', NULL, 3), -- Material Grade & Finish
(22, 'select', NULL, 4), -- Pack Size & Dimensions
(23, 'select', NULL, 5), -- Thread Size & Diameter
(24, 'select', NULL, 6)  -- Power & Voltage Configuration
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(11, 1, 'Size'),
(20, 1, 'Color / Hue'),
(21, 1, 'Material Grade & Finish'),
(22, 1, 'Pack Size & Dimensions'),
(23, 1, 'Thread Size & Diameter'),
(24, 1, 'Power & Voltage Configuration')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Size (11)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(101, 11, 1), (102, 11, 2), (103, 11, 3), (104, 11, 4), (105, 11, 5), (106, 11, 6),
(107, 11, 7), (108, 11, 8), (109, 11, 9), (110, 11, 10), (111, 11, 11), (112, 11, 12)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(101, 1, 11, 'Small (S)'),
(102, 1, 11, 'Medium (M)'),
(103, 1, 11, 'Large (L)'),
(104, 1, 11, 'Extra Large (XL)'),
(105, 1, 11, '2X-Large (2XL)'),
(106, 1, 11, '3X-Large (3XL)'),
(107, 1, 11, 'Waist 30'),
(108, 1, 11, 'Waist 32'),
(109, 1, 11, 'Waist 34'),
(110, 1, 11, 'Waist 36'),
(111, 1, 11, 'Waist 38'),
(112, 1, 11, 'Waist 40')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Color / Hue (20)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(201, 20, 1), (202, 20, 2), (203, 20, 3), (204, 20, 4), (205, 20, 5),
(206, 20, 6), (207, 20, 7), (208, 20, 8), (209, 20, 9), (210, 20, 10)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(201, 1, 20, 'Jet Black'),
(202, 1, 20, 'Optic White'),
(203, 1, 20, 'Navy Blue'),
(204, 1, 20, 'Military Olive'),
(205, 1, 20, 'Charcoal Heather'),
(206, 1, 20, 'Deep Cobalt Blue'),
(207, 1, 20, 'Aqua Lagoon Turquoise'),
(208, 1, 20, 'Industrial Light Grey (RAL 7035)'),
(209, 1, 20, 'Fluorescent Neon Yellow'),
(210, 1, 20, 'Safety Orange')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Material Grade & Finish (21)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(301, 21, 1), (302, 21, 2), (303, 21, 3), (304, 21, 4), (305, 21, 5), (306, 21, 6)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(301, 1, 21, 'Grade 8.8 High-Tensile Yellow Zinc Plated'),
(302, 1, 21, '304 Stainless Steel (A2-70)'),
(303, 1, 21, 'Hot-Dip Galvanized (>85µm)'),
(304, 1, 21, 'Matte Slip-Resistant (R11 Rating)'),
(305, 1, 21, 'Gloss Glazed Vitrified'),
(306, 1, 21, 'Non-Slip Quartz Aggregate Embedded')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Pack Size & Dimensions (22)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(401, 22, 1), (402, 22, 2), (403, 22, 3), (404, 22, 4), (405, 22, 5),
(406, 22, 6), (407, 22, 7), (408, 22, 8), (409, 22, 9), (410, 22, 10)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(401, 1, 22, 'Polybagged Bundle of 25 Units'),
(402, 1, 22, 'Master Carton of 50 Units'),
(403, 1, 22, '12" x 10" x 8" (Bundle of 50)'),
(404, 1, 22, '18" x 14" x 12" (Heavy Double-Wall, 50-Pack)'),
(405, 1, 22, '24" x 18" x 18" (Export Heavy 5-Ply, 50-Pack)'),
(406, 1, 22, '25kg UN-Rated Hermetic Pail'),
(407, 1, 22, '50kg Industrial Sealed Drum'),
(408, 1, 22, 'Case of 1000 Units'),
(409, 1, 22, 'Master Box of 48 Units'),
(410, 1, 22, 'Lot of 20 Wooden Pallets (1200x800mm)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Thread Size & Diameter (23)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(501, 23, 1), (502, 23, 2), (503, 23, 3), (504, 23, 4),
(505, 23, 5), (506, 23, 6), (507, 23, 7), (508, 23, 8)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(501, 1, 23, 'M8 x 30mm (Bulk 500-Pack)'),
(502, 1, 23, 'M10 x 40mm (Bulk 400-Pack)'),
(503, 1, 23, 'M12 x 50mm (Bulk 250-Pack)'),
(504, 1, 23, 'M16 x 65mm (Bulk 150-Pack)'),
(505, 1, 23, '6mm Diameter (100m Spool)'),
(506, 1, 23, '8mm Diameter (100m Spool)'),
(507, 1, 23, '10mm Diameter (100m Spool)'),
(508, 1, 23, '48.3mm OD Coupler (Box of 25)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option Values for Power & Voltage Configuration (24)
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(601, 24, 1), (602, 24, 2), (603, 24, 3), (604, 24, 4)
ON DUPLICATE KEY UPDATE `option_id` = VALUES(`option_id`);

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(601, 1, 24, '415V Three-Phase 50Hz'),
(602, 1, 24, '230V Single-Phase 50Hz'),
(603, 1, 24, '3 Inch (75mm) Discharge'),
(604, 1, 24, '4 Inch (100mm) Discharge')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- ------------------------------------------------------------------------------
-- 6. Products Master Setup (Replacing Any Electronics with Pure Industrial Items)
-- ------------------------------------------------------------------------------

-- Update 33 (Former LED kit -> Drop-Forged Scaffolding Couplers)
UPDATE `oc_product` SET `model` = 'HW-SCAF-SWIVEL', `image` = 'catalog/poolbuy/cat_hardware.jpg', `price` = 3200.0000, `quantity` = 500 WHERE `product_id` = 33;
UPDATE `oc_product_description` SET 
    `name` = 'Drop-Forged Heavy-Duty Scaffolding Swivel Coupler Clamps (Box of 25)',
    `meta_title` = 'Drop-Forged Heavy-Duty Scaffolding Swivel Coupler Clamps (Box of 25)',
    `description` = '<p>EN 74-1 Class B certified drop-forged carbon steel swivel couplers for heavy scaffolding and structural tubular frameworks. Hot-dip galvanized for extreme corrosion resistance.</p>'
WHERE `product_id` = 33 AND `language_id` = 1;

-- Update 34 (Former USB Charger -> High-Tensile Grade 8.8 Hex Bolts Kit)
UPDATE `oc_product` SET `model` = 'HW-HEX-88-KIT', `image` = 'catalog/poolbuy/cat_hardware.jpg', `price` = 2850.0000, `quantity` = 1000 WHERE `product_id` = 34;
UPDATE `oc_product_description` SET 
    `name` = 'High-Tensile Grade 8.8 Hex Bolts, Nuts & Washers Kit (Bulk 500-Pack)',
    `meta_title` = 'High-Tensile Grade 8.8 Hex Bolts, Nuts & Washers Kit (Bulk 500-Pack)',
    `description` = '<p>DIN 933 / DIN 934 quenched and tempered grade 8.8 structural fasteners. Yellow zinc plated with high corrosion resistance and 800 N/mm² minimum tensile strength.</p>'
WHERE `product_id` = 34 AND `language_id` = 1;

-- Update 40 (Former USB Cable -> Galvanized Steel Wire Rope Reel)
UPDATE `oc_product` SET `model` = 'HW-WIRE-ROPE', `image` = 'catalog/poolbuy/cat_hardware.jpg', `price` = 4600.0000, `quantity` = 500 WHERE `product_id` = 40;
UPDATE `oc_product_description` SET 
    `name` = 'Galvanized Aircraft Grade Steel Wire Rope Reel (8mm x 100m Drum)',
    `meta_title` = 'Galvanized Aircraft Grade Steel Wire Rope Reel (8mm x 100m Drum)',
    `description` = '<p>EN 12385-4 certified 6x19 IWRC steel core wire rope for winching, cranes, and heavy rigging. Hot-dip galvanized high-tensile steel with 40.5 kN breaking load.</p>'
WHERE `product_id` = 40 AND `language_id` = 1;

-- Insert New B2B Products (43, 44, 45 in Apparel; 46, 47 in Packaging; 48 in Construction; 49 in Chemicals; 51 in Medical)
INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(43, 0, 'TX-400-HOODIE', '', 1500, 7, 'catalog/poolbuy/cat_apparel.jpg', 0, 1, 1150.0000, 0, 0, CURDATE(), 0.8, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(44, 0, 'TX-RIP-CARGO', '', 1200, 7, 'catalog/poolbuy/cat_apparel.jpg', 0, 1, 890.0000, 0, 0, CURDATE(), 0.6, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(45, 0, 'TX-HIVIS-VEST', '', 2500, 7, 'catalog/poolbuy/cat_apparel.jpg', 0, 1, 2450.0000, 0, 0, CURDATE(), 6.5, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(46, 0, 'PK-STRETCH-FILM', '', 800, 7, 'catalog/poolbuy/cat_packaging.jpg', 0, 1, 3400.0000, 0, 0, CURDATE(), 16.0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(47, 0, 'PK-EURO-PALLET', '', 300, 7, 'catalog/poolbuy/cat_packaging.jpg', 0, 1, 14000.0000, 0, 0, CURDATE(), 420.0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(48, 0, 'BM-EPOXY-20L', '', 400, 7, 'catalog/poolbuy/cat_construction.jpg', 0, 1, 6800.0000, 0, 0, CURDATE(), 26.0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(49, 0, 'CH-PAC-30', '', 600, 7, 'catalog/poolbuy/prod_chlorine.jpg', 0, 1, 2150.0000, 0, 0, CURDATE(), 50.0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(51, 0, 'MD-NITRILE-1000', '', 1000, 7, 'catalog/poolbuy/prod_vials.jpg', 0, 1, 3600.0000, 0, 0, CURDATE(), 5.5, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `model` = VALUES(`model`), `price` = VALUES(`price`), `image` = VALUES(`image`), `status` = 1;

-- Product Descriptions for New Products
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(43, 1, 'Heavyweight 400 GSM French Terry Wholesale Pullover Hoodies', '<p>Premium 400 GSM heavy-knit combed cotton French Terry hoodies. Features double-lined hood, 2x2 Lycra ribbing, kangaroo pocket, and twin-needle construction.</p>', 'hoodie, wholesale apparel, french terry, heavyweight', 'Heavyweight 400 GSM French Terry Wholesale Pullover Hoodies', 'Bulk wholesale hoodies for streetwear brands.', 'hoodie, cotton, apparel'),
(44, 1, 'Industrial Ripstop Multi-Pocket Cargo Workwear Utility Trousers', '<p>Heavy-duty 260 GSM polyester-cotton ripstop trousers. Features Cordura reinforced knee pad pockets, hammer loop, cargo pockets, and triple-stitched stress seams.</p>', 'workwear, cargo trousers, ripstop, industrial apparel', 'Industrial Ripstop Multi-Pocket Cargo Workwear Utility Trousers', 'Durable industrial utility cargo workwear.', 'workwear, cargo pants, ripstop'),
(45, 1, 'High-Visibility Class 2 Reflective Safety Vests (Pack of 50)', '<p>ANSI/ISEA 107-2020 Class 2 certified breathable polyester vests with 2-inch high-intensity glass-bead reflective bands and heavy-duty front zipper.</p>', 'safety vest, hi-vis, ppe, reflective vest', 'High-Visibility Class 2 Reflective Safety Vests (Pack of 50)', 'Wholesale safety vests for construction and logistics.', 'safety vest, reflective, ppe'),
(46, 1, 'Industrial Cast Machine Stretch Film Wrap Rolls (4-Roll Case)', '<p>High-performance cast machine stretch film (23 micron, 500mm x 1500m). Features up to 300% elongation capacity, ultra-puncture resistance, and quiet unwind.</p>', 'stretch film, pallet wrap, packaging supplies', 'Industrial Cast Machine Stretch Film Wrap Rolls (4-Roll Case)', 'Bulk pallet stretch film wrap rolls.', 'stretch film, pallet wrap, packaging'),
(47, 1, 'Heat-Treated ISPM-15 Heavy-Duty Hardwood Euro Pallets (Lot of 20)', '<p>Certified ISPM-15 kiln-dried hardwood 1200x800mm Euro pallets with 1500kg dynamic and 4000kg static load capacity for international freight shipping.</p>', 'euro pallets, wooden pallets, warehouse logistics', 'Heat-Treated ISPM-15 Heavy-Duty Hardwood Euro Pallets (Lot of 20)', 'Certified export wooden pallets in wholesale lots.', 'pallets, euro pallets, logistics'),
(48, 1, 'Commercial Two-Part Industrial Epoxy Floor Coating Kit (20L Drum Set)', '<p>100% solids heavy-duty cycloaliphatic amine epoxy floor coating and primer. Outstanding abrasion, chemical, and hydrostatic pressure resistance for warehouses.</p>', 'epoxy floor, industrial coating, flooring kit', 'Commercial Two-Part Industrial Epoxy Floor Coating Kit (20L Drum Set)', 'Industrial grade two-part epoxy floor coating system.', 'epoxy, floor coating, industrial'),
(49, 1, 'Industrial Polyaluminium Chloride (PAC 30%) Water Clarifier (50kg Bag)', '<p>High-purity PAC 30% yellow flocculant powder for rapid coagulation in municipal and industrial effluent water treatment facilities.</p>', 'pac 30, water treatment, flocculant, coagulant', 'Industrial Polyaluminium Chloride (PAC 30%) Water Clarifier (50kg Bag)', 'Wholesale water treatment chemicals in 50kg bags.', 'pac, water treatment, coagulant'),
(51, 1, 'Medical Grade Powder-Free Sterile Nitrile Examination Gloves (Case of 1000)', '<p>ASTM D6319 and EN 455 certified medical grade 4.5 mil textured nitrile gloves. 100% latex-free, chemical resistant, AQL 1.5 pinhole inspection standard.</p>', 'nitrile gloves, medical gloves, ppe, examination gloves', 'Medical Grade Powder-Free Sterile Nitrile Examination Gloves (Case of 1000)', 'Medical grade nitrile exam gloves in wholesale cases of 1000.', 'nitrile gloves, medical gloves, ppe')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

-- Store, Category, and Layout Links for Products
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(43, 0), (44, 0), (45, 0), (46, 0), (47, 0), (48, 0), (49, 0), (51, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(43, 0, 0), (44, 0, 0), (45, 0, 0), (46, 0, 0), (47, 0, 0), (48, 0, 0), (49, 0, 0), (51, 0, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(42, 105), -- T-Shirts -> Textiles & Apparel
(43, 105), -- Hoodies -> Textiles & Apparel
(44, 105), -- Workwear -> Textiles & Apparel
(45, 105), -- Safety Vests -> Textiles & Apparel
(35, 104), -- Master Cartons -> Packaging & Logistics
(46, 104), -- Stretch Film -> Packaging & Logistics
(47, 104), -- Euro Pallets -> Packaging & Logistics
(36, 103), -- Mosaic Tiles -> Building & Materials
(48, 103), -- Industrial Epoxy -> Building & Materials
(33, 106), -- Scaffolding Couplers -> Industrial Hardware
(34, 106), -- Hex Bolts Kit -> Industrial Hardware
(40, 106), -- Steel Wire Rope -> Industrial Hardware
(32, 102), -- Chlorine Tablets -> Chemicals & Treatment
(49, 102), -- PAC Flocculant -> Chemicals & Treatment
(28, 101), -- Titan-X Pump -> Machinery & Pumps
(29, 101), -- Filtration Vessels -> Machinery & Pumps
(31, 101), -- Slurry Pump -> Machinery & Pumps
(41, 107), -- Glass Serum Vials -> Medical & Laboratory
(51, 107)  -- Nitrile Gloves -> Medical & Laboratory
ON DUPLICATE KEY UPDATE `category_id` = VALUES(`category_id`);

-- ------------------------------------------------------------------------------
-- 7. Populate Specifications (oc_product_attribute) for All Products
-- ------------------------------------------------------------------------------
DELETE FROM `oc_product_attribute` WHERE `product_id` IN (28, 29, 31, 32, 33, 34, 35, 36, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 51);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
-- #42 T-Shirts (Textiles & Apparel)
(42, 106, 1, '240 GSM Heavyweight Compact Jersey'),
(42, 111, 1, '100% Super-Combed Ring-Spun Cotton'),
(42, 112, 1, 'Bio-Washed & Silicon Softened (<2% Shrinkage)'),
(42, 113, 1, '20s Single Jersey Weave with Reinforced Neck Tape'),
(42, 121, 1, 'ISO 9001:2015, Sedex SMETA Audited'),
(42, 122, 1, 'OEKO-TEX Standard 100 Certified (Free of Harmful Substances)'),
(42, 131, 1, 'Individually Polybagged, Bundle of 25 Units'),
(42, 132, 1, '50 Units per Heavy-Duty Master Carton (16kg)'),
(42, 141, 1, 'Indefinite Shelf Life (Non-perishable dry textile goods)'),
(42, 142, 1, 'Store in ambient dry conditions (<35°C, <65% relative humidity)'),
(42, 143, 1, 'Store on pallets; keep sealed in polybags away from moisture and pests'),

-- #43 Hoodies (Textiles & Apparel)
(43, 106, 1, '400 GSM Ultra-Heavyweight French Terry'),
(43, 111, 1, '100% Cotton Face, 80/20 Cotton-Polyester Fleece Back'),
(43, 112, 1, 'Pre-Shrunk, Double-Brushed Interior Fleece'),
(43, 113, 1, '2x2 Lycra Reinforced Rib Cuffs & Hem, Twin-Needle Seams'),
(43, 121, 1, 'ISO 9001:2015'),
(43, 122, 1, 'OEKO-TEX Standard 100 Certified'),
(43, 131, 1, 'Individual Clear Polybag, Carton of 20 Units'),
(43, 132, 1, 'Master Carton: 60 x 45 x 40 cm (17kg)'),
(43, 141, 1, 'Indefinite Shelf Life (Dry textile storage)'),
(43, 142, 1, 'Store in cool, dry warehouse away from direct sunlight'),
(43, 143, 1, 'Keep cartons elevated on wooden pallets'),

-- #44 Workwear Cargo Trousers (Textiles & Apparel)
(44, 106, 1, '260 GSM Heavy Industrial Ripstop'),
(44, 111, 1, '65% Polyester / 35% Cotton Ripstop Grid'),
(44, 112, 1, 'Durable Water Repellent (DWR) & Stain-Resistant Coating'),
(44, 113, 1, 'Cordura-Reinforced Knee Pockets, Triple-Stitched Inseam'),
(44, 121, 1, 'EN ISO 13688:2013 Protective Workwear Standards'),
(44, 122, 1, 'CE Certified Category I Industrial Workwear'),
(44, 131, 1, 'Polybagged with Size Tag, 25 Pairs per Master Carton'),
(44, 132, 1, '40 Cartons per Pallet (1000 Pairs total)'),
(44, 141, 1, 'Indefinite Shelf Life in dry storage'),
(44, 142, 1, 'Ambient warehouse conditions (<40°C, dry)'),
(44, 143, 1, 'Stack up to 5 cartons high on standard pallets'),

-- #45 Safety Vests (Textiles & Apparel)
(45, 106, 1, '120 GSM Breathable Knitted Polyester Fabric'),
(45, 111, 1, '100% Virgin High-Visibility Polyester'),
(45, 112, 1, 'Fluorescent Dye with 2-inch High-Intensity Glass-Bead Reflective Bands'),
(45, 113, 1, 'Heavy-Duty #5 Resin Front Zipper, Bound Edges'),
(45, 121, 1, 'ANSI/ISEA 107-2020 Class 2, EN ISO 20471:2013 Class 2'),
(45, 122, 1, 'CE Certified PPE Regulation (EU) 2016/425'),
(45, 131, 1, 'Pack of 50 Vests (Bulk Master Pack)'),
(45, 132, 1, '4 Packs (200 Vests) per Master Shipping Box (26kg)'),
(45, 141, 1, '10+ Years Shelf Life when stored away from direct sunlight/UV'),
(45, 142, 1, 'Dry, temperature-controlled warehouse (-10°C to 45°C)'),
(45, 143, 1, 'Store sealed in original corrugated master box'),

-- #35 Master Cartons (Packaging & Logistics)
(35, 104, 1, 'Bursting Strength: 14 kg/cm² (200 PSI), 44 ECT'),
(35, 111, 1, '100% Recyclable Virgin Kraft Outer Liner, Semi-Chemical Medium'),
(35, 113, 1, '5-Ply Double-Wall Heavy Duty Corrugation (BC-Flute)'),
(35, 114, 1, '18" x 14" x 12" (Interior Dimensions: 457 x 355 x 305 mm)'),
(35, 121, 1, 'ASTM D5118, ISO 9001:2015 Manufacturing Standard'),
(35, 122, 1, 'FSC Certified (FSC-C104523) Recyclable Packaging'),
(35, 131, 1, 'Strapped Flat Bundle of 50 Units'),
(35, 132, 1, '10 Bundles (500 Cartons) per Pallet with Stretch Wrap'),
(35, 141, 1, 'Indefinite Shelf Life (Non-perishable paper packaging)'),
(35, 142, 1, 'Dry covered warehouse (<25°C, <60% RH to prevent humidity softening)'),
(35, 143, 1, 'Keep elevated on pallets, protect from moisture and open flames'),

-- #46 Stretch Film (Packaging & Logistics)
(46, 104, 1, 'Tensile Break Strength >= 35 MPa, 300% Pre-Stretch Elongation'),
(46, 111, 1, '100% Linear Low-Density Polyethylene (LLDPE 5-Layer Cast)'),
(46, 112, 1, 'High-Clarity Gloss Finish with Single-Sided Differential Cling'),
(46, 114, 1, 'Width: 500mm, Length: 1500m, Thickness: 23 Micron (90 Gauge)'),
(46, 121, 1, 'ASTM D882, ASTM D1922 Puncture & Tear Standards'),
(46, 122, 1, 'FDA 21 CFR 177.1520 Compliant for Indirect Food Contact'),
(46, 131, 1, 'Case of 4 Machine Rolls (Gross Weight: 16.2kg per case)'),
(46, 132, 1, '30 Cases (120 Rolls) per Pallet (486kg Net)'),
(46, 141, 1, '5+ Years Shelf Life under proper warehouse storage'),
(46, 142, 1, 'Store between 15°C - 30°C away from radiators, direct sunlight, and ozone'),
(46, 143, 1, 'Store rolls vertically on core plugs to avoid edge indentation'),

-- #47 Euro Pallets (Packaging & Logistics)
(47, 104, 1, 'Dynamic Load: 1500 kg, Static Load: 4000 kg, Racking Load: 1000 kg'),
(47, 111, 1, 'Kiln-Dried European Pine / Birch Hardwood (Moisture Content <22%)'),
(47, 112, 1, 'Kiln-Dried Heat Treated per IPPC ISPM-15, Debarked'),
(47, 114, 1, '1200 x 800 x 144 mm (4-Way Entry Standard)'),
(47, 121, 1, 'UIC 435-2 Standard, IPPC ISPM-15 International Heat-Treatment Stamp'),
(47, 122, 1, 'EPAL Quality Audited License Marking'),
(47, 131, 1, 'Stack of 20 Pallets Interlocked'),
(47, 132, 1, 'Truckload: 660 Pallets (33 Stacks of 20)'),
(47, 141, 1, '10+ Years Shelf Life (Durable treated timber)'),
(47, 142, 1, 'Dry, well-ventilated covered warehouse space'),
(47, 143, 1, 'Stack up to 20 pallets high on flat concrete surfaces'),

-- #36 Architectural Mosaic Tiles (Building & Materials)
(36, 104, 1, 'Modulus of Rupture >= 38 N/mm², Breaking Strength >= 1300 N'),
(36, 111, 1, 'Impervious High-Fired Vitrified Porcelain Ceramic (Class E1)'),
(36, 112, 1, 'Anti-Slip R11 / DIN 51097 Group C Micro-Grip Surface'),
(36, 113, 1, '25x25x4mm chips mounted on 300x300mm flexible fiberglass mesh'),
(36, 121, 1, 'ISO 10545-12 (Frost Resistant), ISO 10545-13 (Pool Chemical Proof)'),
(36, 122, 1, 'CE Certified EN 14411 Annex H Ceramic Tile Standards'),
(36, 131, 1, 'Box of 22 Sheets (2.0 Square Meters per Box, 16.5 kg)'),
(36, 132, 1, '54 Boxes (108 Sq.m) per Shrink-Wrapped Pallet (910 kg)'),
(36, 141, 1, 'Indefinite Shelf Life (Non-perishable inorganic ceramic)'),
(36, 142, 1, 'Ambient warehouse storage (-30°C to 60°C)'),
(36, 143, 1, 'Store boxes flat; stack maximum 4 pallets high'),

-- #48 Industrial Epoxy Kit (Building & Materials)
(48, 104, 1, 'Compressive Strength > 70 MPa (ASTM D695), Shore D Hardness: 82'),
(48, 111, 1, '100% Solids Two-Part Cycloaliphatic Amine Epoxy Resin & Activator'),
(48, 112, 1, 'Gloss Smooth / Quartz Broadcast Slip-Resistant System'),
(48, 114, 1, '20 Litre Drum Kit (Part A Resin 15L + Part B Hardener 5L)'),
(48, 121, 1, 'ASTM C722, ASTM D4060 Taber Abrasion Resistant (45mg loss)'),
(48, 122, 1, 'LEED v4 Low VOC Compliant, ISO 9001:2015'),
(48, 131, 1, '20 Litre Sealed Steel Drum Set with Handle'),
(48, 132, 1, '24 Kits (480L) per Pallet with Safety Straps'),
(48, 141, 1, '3 Years Shelf Life in original unopened factory hermetic drums'),
(48, 142, 1, 'Store between 5°C and 35°C in dry indoor storage out of direct sun'),
(48, 143, 1, 'Store upright; do not freeze; keep away from strong acids and sparks'),

-- #33 Scaffolding Swivel Clamps (Industrial Hardware & Fasteners)
(33, 104, 1, 'Slip Load Capacity: 15 kN (3,370 lbf), Distortion Resistance: 20 kN'),
(33, 111, 1, 'Drop-Forged Carbon Structural Steel EN 10025 S235GT'),
(33, 112, 1, 'Hot-Dip Galvanized (>85µm Zinc Coating, 50-Year Rust Protection)'),
(33, 114, 1, 'Fits Standard 48.3mm (1.90") OD Scaffolding Steel Tubing'),
(33, 121, 1, 'BS 1139.1.2, EN 74-1 Class B Certified Scaffolding Fitting'),
(33, 122, 1, 'CE Certified, Lloyd\'s Register Material Audited'),
(33, 131, 1, 'Heavy Duty Wooden Crate / Box of 25 Units (Gross Weight: 37.5 kg)'),
(33, 132, 1, '32 Boxes (800 Units) per Steel-Banded Pallet (1220 kg)'),
(33, 141, 1, 'Indefinite Shelf Life (Corrosion-proof heavy steel forging)'),
(33, 142, 1, 'Dry or ambient covered warehouse storage'),
(33, 143, 1, 'Stack up to 3 pallets high on level surface'),

-- #34 Hex Bolts & Nuts Kit (Industrial Hardware & Fasteners)
(34, 104, 1, 'Proof Stress: 640 N/mm², Tensile Strength: 800 N/mm² (Grade 8.8)'),
(34, 111, 1, 'High-Tensile Quenched & Tempered Medium Carbon Alloy Steel (AISI 1045)'),
(34, 112, 1, 'Yellow Zinc Dichromate Plated (ASTM B633 Type II Fe/Zn 13)'),
(34, 114, 1, 'Assorted M8 to M16 Fully Threaded Bolts, Heavy Hex Nuts & Washers'),
(34, 121, 1, 'DIN 933 (Bolts), DIN 934 (Nuts), DIN 125 (Washers), ISO 898-1'),
(34, 122, 1, 'ISO 9001:2015, Mill Test Certificate 3.1 Provided'),
(34, 131, 1, 'Heavy Duty Steel-Reinforced Carton of 500 Sets (18 kg)'),
(34, 132, 1, '48 Cartons per Wooden Pallet (880 kg)'),
(34, 141, 1, 'Indefinite Shelf Life (Anti-corrosion vapor-barrier sealed)'),
(34, 142, 1, 'Store in dry warehouse (<35°C, <60% relative humidity)'),
(34, 143, 1, 'Keep sealed in original moisture-barrier bags until assembly'),

-- #40 Steel Wire Rope Reel (Industrial Hardware & Fasteners)
(40, 104, 1, 'Minimum Breaking Load: 40.5 kN (for 8mm IWRC), Tensile Grade: 1960 N/mm²'),
(40, 111, 1, 'High-Carbon Steel (EIPS 1960 Grade) with Independent Wire Rope Core'),
(40, 112, 1, 'Class A Heavy Galvanized Coating with Factory Petroleum Dressing'),
(40, 113, 1, '6x19 Construction (6 Strands x 19 Wires around Steel Core)'),
(40, 121, 1, 'EN 12385-4, ISO 2408 Steel Wire Ropes for General Purposes'),
(40, 122, 1, 'CE Certified Rigging Standard, Factory Proof Tested'),
(40, 131, 1, 'Wooden Reel Spool (8mm x 100m, Net Weight: 26.5 kg)'),
(40, 132, 1, '30 Spools per Pallet (820 kg)'),
(40, 141, 1, 'Indefinite Shelf Life when stored indoors with factory lubrication'),
(40, 142, 1, 'Dry, covered warehouse; avoid acid fumes and wet floors'),
(40, 143, 1, 'Store reels upright on flanges; avoid rolling on rough ground'),

-- #32 Chlorine Tablets (Chemicals & Water Treatment)
(32, 105, 1, 'Trichloroisocyanuric Acid (TCCA 90% Available Chlorine)'),
(32, 112, 1, '200g Giant Slow-Dissolving Solid White Tablets (Moisture < 0.5%)'),
(32, 114, 1, 'Tablet Diameter: 75mm, Thickness: 25mm'),
(32, 121, 1, 'NSF/ANSI Standard 60 Certified for Drinking & Pool Water Sanitization'),
(32, 122, 1, 'EPA Reg. / ISO 9001:2015 / REACH Registered'),
(32, 123, 1, 'UN 2468, Class 5.1 (Oxidizing Agent), Packing Group II'),
(32, 131, 1, '25kg UN-Rated HDPE Hermetic Pail with Security Lock (Gross: 26.5kg)'),
(32, 132, 1, '36 Pails per Heavy-Duty Pallet (954kg Net)'),
(32, 141, 1, '3 Years Shelf Life in original tightly closed container (<1% active loss/yr)'),
(32, 142, 1, 'Store in a cool (<30°C), dry, well-ventilated area away from sunlight'),
(32, 143, 1, 'Do not mix with other chemicals or acids; keep pails securely sealed'),

-- #49 PAC 30% Flocculant (Chemicals & Water Treatment)
(49, 105, 1, 'Al2O3 >= 30.0% min, Basicity: 40.0% - 90.0%, Insolubles < 0.5%'),
(49, 111, 1, 'Polyaluminium Chloride (PAC) Solid Yellow Crystalline Flakes'),
(49, 121, 1, 'GB 15892-2009 Municipal Water Treatment Standard, ISO 14001'),
(49, 122, 1, 'NSF International Certified for Potable Water Clarification'),
(49, 131, 1, '50kg Heavy-Duty Woven Polypropylene Bag with Double PE Inner Liner'),
(49, 132, 1, '20 Bags (1000kg Metric Ton) per Shrink-Wrapped Pallet'),
(49, 141, 1, '2 Years Shelf Life in original sealed bags'),
(49, 142, 1, 'Store in dry, cool, well-ventilated warehouse (<35°C)'),
(49, 143, 1, 'Protect from rain, moisture, and high humidity to prevent caking'),

-- #28 Titan-X Submersible Drainage Pump (Machinery & Pumps)
(28, 101, 1, 'Max Flow: 1,200 L/min (72 m³/h), Rated Flow: 800 L/min (48 m³/h)'),
(28, 102, 1, 'Max Head: 28 meters, Rated Head: 18 meters, Submersion Depth: 20m'),
(28, 103, 1, '3.7 kW (5.0 HP) Continuous Duty Induction Motor (415V 3-Phase / 230V 1-Phase)'),
(28, 111, 1, 'High-Chrome Alloy Impeller (28% Cr), Cast Iron FC-20 Casing'),
(28, 112, 1, 'Double Silicon Carbide Mechanical Seals in Lubricated Oil Chamber'),
(28, 121, 1, 'IEC 60034-1 Motor Standard, ISO 9906 Hydraulic Acceptance Test'),
(28, 122, 1, 'CE Certified, IP68 Ingress Protection Submersible Class, Class F Insulation'),
(28, 131, 1, 'Heavy-Duty Reinforced Plywood Crate with Lifting Handles (62 kg)'),
(28, 132, 1, '8 Crates per Pallet (520 kg)'),
(28, 141, 1, 'Indefinite Shelf Life (Factory crated with anti-rust oil barrier)'),
(28, 142, 1, 'Indoor dry warehouse (-10°C to 50°C, <75% RH)'),
(28, 143, 1, 'Store upright; do not expose crated motors to standing water'),

-- #29 Multistage Filtration Vessels (Machinery & Pumps)
(29, 101, 1, 'Filtration Flow Rate: 35 m³/hour per Vessel (140 m³/h System Capacity)'),
(29, 102, 1, 'Operating Pressure: 4.0 Bar (Test Hydrostatic Pressure: 7.0 Bar)'),
(29, 111, 1, 'Filament-Wound Fiberglass Reinforced Polyester (FRP) Shell'),
(29, 114, 1, 'Vessel Diameter: 900mm (36 Inch), Overall Height: 1850mm'),
(29, 121, 1, 'ASME Boiler & Pressure Vessel Code Section X, NSF 50 Certified'),
(29, 122, 1, 'CE Certified Pressure Equipment Directive (PED 2014/68/EU)'),
(29, 131, 1, 'Set of 4 Pressure Vessels Mounted on Factory Shipping Skid'),
(29, 132, 1, 'Skid Dimensions: 2200 x 2000 x 2050mm (Gross Weight: 340 kg)'),
(29, 141, 1, 'Indefinite Shelf Life (Factory sealed composite tanks)'),
(29, 142, 1, 'Dry covered storage; protect internal distributors from freezing'),
(29, 143, 1, 'Store on level timber skids'),

-- #31 Commercial Slurry Pump (Machinery & Pumps)
(31, 101, 1, 'Capacity: 180 m³/hour, Solids Handling: Up to 35mm Spherical Slurry'),
(31, 102, 1, 'Head Max: 38 meters, Operating Efficiency: 74%'),
(31, 103, 1, '7.5 kW (10.0 HP) Heavy-Duty TEFC 415V Three-Phase 50Hz Motor'),
(31, 111, 1, 'Casing: ASTM A532 Class III Type A (27% High Hard Chrome Alloy 62 HRC)'),
(31, 121, 1, 'ISO 5199 Technical Specification for Centrifugal Pumps Class II'),
(31, 122, 1, 'CE Certified, ISO 9001:2015 Manufacturing Standard'),
(31, 131, 1, 'Export Wooden Crate with Anti-Vibration Base (195 kg)'),
(31, 132, 1, 'Single Crate per Pallet Skid'),
(31, 141, 1, 'Indefinite Shelf Life in dry factory crate'),
(31, 142, 1, 'Indoor dry storage, ambient temperature'),
(31, 143, 1, 'Rotate pump shaft 3 turns every 6 months during long storage'),

-- #41 Borosilicate Glass Vials (Medical & Laboratory Supplies)
(41, 104, 1, 'Hydrolytic Resistance: Class HGB 1 (ISO 719), Thermal Expansion: 3.3 x 10⁻⁶ K⁻¹'),
(41, 111, 1, 'Neutral Borosilicate Glass 3.3 (USP Type I, EP 3.2.1, JP 7.01)'),
(41, 112, 1, 'Depyrogenated Cleanroom Annealed, Autoclavable up to 121°C / 250°F'),
(41, 114, 1, 'Vial Volume: 10ml, Outer Diameter: 24mm, Total Height: 45mm, Neck: 20mm'),
(41, 121, 1, 'ISO 8362-1 (Injection Vials for Injectables), ISO 15378 GMP Audited'),
(41, 122, 1, 'US FDA Drug Master File (DMF #028914) Registered'),
(41, 131, 1, 'Case of 1000 Units (4 Shrink-Wrapped Polypropylene Trays of 250)'),
(41, 132, 1, '48 Cases (48,000 Vials) per Shrink-Wrapped Pallet (610 kg)'),
(41, 141, 1, 'Indefinite Shelf Life (Chemically inert non-porous glass)'),
(41, 142, 1, 'Clean dry warehouse; temperature: -20°C to 50°C'),
(41, 143, 1, 'Keep shrink-wrapped in original carton; protect from heavy impact'),

-- #51 Sterile Nitrile Examination Gloves (Medical & Laboratory Supplies)
(51, 104, 1, 'Tensile Strength >= 18 MPa, Ultimate Elongation >= 500%, AQL 1.5 Pinhole Inspection'),
(51, 111, 1, '100% Synthetic Nitrile Polymer (Acrylonitrile Butadiene, 100% Latex-Free)'),
(51, 112, 1, 'Chlorinated Micro-Textured Fingertips for Enhanced Grip, Powder-Free'),
(51, 114, 1, 'Thickness: 4.5 mil Palm / 5.5 mil Fingertip, Length: 240mm (9.5")'),
(51, 121, 1, 'ASTM D6319 (Medical Gloves), EN 455 Parts 1, 2, 3, 4 (Medical Devices)'),
(51, 122, 1, 'FDA 510(k) Cleared, CE Class I Medical Device, EN ISO 374-1 Chemical Proof'),
(51, 131, 1, 'Dispenser Box of 100 Gloves, Case of 10 Boxes (1000 Gloves total)'),
(51, 132, 1, '72 Cases (72,000 Gloves) per Standard Pallet (460 kg)'),
(51, 141, 1, '5 Years Shelf Life from manufacturing date in original sealed packaging'),
(51, 142, 1, 'Store in cool, dry place (<30°C); avoid direct sunlight, fluorescent UV, and ozone'),
(51, 143, 1, 'Stack up to 5 cases high; do not crush dispenser boxes');

-- ------------------------------------------------------------------------------
-- 8. Populate Selectable Options (Variants) for All Products
-- ------------------------------------------------------------------------------
DELETE FROM `oc_product_option` WHERE `product_id` IN (28, 29, 31, 32, 33, 34, 35, 36, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 51);
DELETE FROM `oc_product_option_value` WHERE `product_id` IN (28, 29, 31, 32, 33, 34, 35, 36, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 51);

-- Product 42 (T-Shirts): Option 11 (Size) & Option 20 (Color)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1421, 42, 11, '', 1),
(1422, 42, 20, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(201, 1421, 42, 11, 101, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(202, 1421, 42, 11, 102, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(203, 1421, 42, 11, 103, 350, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(204, 1421, 42, 11, 104, 250, 1, 20.0000, '+', 0, '+', 0.00000000, '+'),
(205, 1421, 42, 11, 105, 150, 1, 40.0000, '+', 0, '+', 0.00000000, '+'),
(206, 1421, 42, 11, 106, 100, 1, 60.0000, '+', 0, '+', 0.00000000, '+'),
(207, 1422, 42, 20, 201, 400, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(208, 1422, 42, 20, 202, 400, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(209, 1422, 42, 20, 203, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(210, 1422, 42, 20, 204, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(211, 1422, 42, 20, 205, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 43 (Hoodies): Option 11 (Size) & Option 20 (Color)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1431, 43, 11, '', 1),
(1432, 43, 20, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(212, 1431, 43, 11, 101, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(213, 1431, 43, 11, 102, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(214, 1431, 43, 11, 103, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(215, 1431, 43, 11, 104, 200, 1, 50.0000, '+', 0, '+', 0.00000000, '+'),
(216, 1431, 43, 11, 105, 100, 1, 100.0000, '+', 0, '+', 0.00000000, '+'),
(217, 1432, 43, 20, 201, 350, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(218, 1432, 43, 20, 203, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(219, 1432, 43, 20, 204, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(220, 1432, 43, 20, 205, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 44 (Workwear Cargo): Option 11 (Waist Size) & Option 20 (Color)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1441, 44, 11, '', 1),
(1442, 44, 20, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(221, 1441, 44, 11, 107, 100, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(222, 1441, 44, 11, 108, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(223, 1441, 44, 11, 109, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(224, 1441, 44, 11, 110, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(225, 1441, 44, 11, 111, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(226, 1441, 44, 11, 112, 100, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(227, 1442, 44, 20, 201, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(228, 1442, 44, 20, 203, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 45 (Safety Vests): Option 20 (Color)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1451, 45, 20, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(229, 1451, 45, 20, 209, 1000, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(230, 1451, 45, 20, 210, 1000, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 35 (Cartons): Option 22 (Dimensions)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1351, 35, 22, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(231, 1351, 35, 22, 403, 300, 1, -400.0000, '+', 0, '+', 0.00000000, '+'),
(232, 1351, 35, 22, 404, 500, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(233, 1351, 35, 22, 405, 200, 1, 650.0000, '+', 0, '+', 0.00000000, '+');

-- Product 36 (Mosaic Tiles): Option 20 (Color Hue) & Option 21 (Surface Finish)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1361, 36, 20, '', 1),
(1362, 36, 21, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(234, 1361, 36, 20, 206, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(235, 1361, 36, 20, 207, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(236, 1362, 36, 21, 304, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(237, 1362, 36, 21, 305, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 34 (Hex Bolts Kit): Option 23 (Thread Size) & Option 21 (Finish)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1341, 34, 23, '', 1),
(1342, 34, 21, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(238, 1341, 34, 23, 501, 300, 1, -300.0000, '+', 0, '+', 0.00000000, '+'),
(239, 1341, 34, 23, 502, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(240, 1341, 34, 23, 503, 200, 1, 400.0000, '+', 0, '+', 0.00000000, '+'),
(241, 1341, 34, 23, 504, 100, 1, 800.0000, '+', 0, '+', 0.00000000, '+'),
(242, 1342, 34, 21, 301, 500, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(243, 1342, 34, 21, 302, 300, 1, 750.0000, '+', 0, '+', 0.00000000, '+');

-- Product 40 (Steel Wire Rope): Option 23 (Diameter)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1401, 40, 23, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(244, 1401, 40, 23, 505, 100, 1, -800.0000, '+', 0, '+', 0.00000000, '+'),
(245, 1401, 40, 23, 506, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(246, 1401, 40, 23, 507, 100, 1, 1200.0000, '+', 0, '+', 0.00000000, '+');

-- Product 32 (Chlorine): Option 22 (Pail Size)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1321, 32, 22, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(247, 1321, 32, 22, 406, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(248, 1321, 32, 22, 407, 150, 1, 2400.0000, '+', 0, '+', 0.00000000, '+');

-- Product 28 (Titan-X Pump): Option 24 (Voltage & Discharge)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1281, 28, 24, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(249, 1281, 28, 24, 601, 100, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(250, 1281, 28, 24, 602, 50, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- Product 51 (Nitrile Gloves): Option 11 (Size) & Option 20 (Color)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1511, 51, 11, '', 1),
(1512, 51, 20, '', 1);

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(251, 1511, 51, 11, 101, 200, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(252, 1511, 51, 11, 102, 400, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(253, 1511, 51, 11, 103, 300, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(254, 1511, 51, 11, 104, 100, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(255, 1512, 51, 20, 206, 600, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(256, 1512, 51, 20, 202, 400, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- ------------------------------------------------------------------------------
-- 9. Synchronize Pools in oc_poolbuy_pool and oc_poolbuy_pool_tier
-- ------------------------------------------------------------------------------

-- Pool 5: Update to Scaffolding Clamps
UPDATE `oc_poolbuy_pool` SET
    `title` = 'Drop-Forged Heavy-Duty Scaffolding Swivel Coupler Clamps (Box of 25)',
    `unit_label` = 'Boxes',
    `attributes` = '{\"Material\":\"Drop-Forged Carbon Steel\",\"Surface\":\"Hot-Dip Galvanized (>85µm)\",\"Standard\":\"BS 1139.1 / EN 74-1 Class B\",\"Tube OD\":\"48.3mm (1.90 Inch)\",\"Shelf Life\":\"Indefinite (Anti-Corrosion Heavy Forging)\",\"Box Qty\":\"25 Clamps per Box\"}'
WHERE `pool_id` = 5;

-- Pool 6: Update to Hex Bolts Kit
UPDATE `oc_poolbuy_pool` SET
    `title` = 'High-Tensile Grade 8.8 Hex Bolts, Nuts & Washers Kit (Bulk 500-Pack)',
    `unit_label` = 'Kits',
    `attributes` = '{\"Grade\":\"High-Tensile Grade 8.8 Alloy Steel\",\"Plating\":\"Yellow Zinc Dichromate\",\"Standard\":\"DIN 933 / DIN 934 / DIN 125\",\"Tensile\":\"800 N/mm² Minimum\",\"Shelf Life\":\"Indefinite (VCI Moisture-Barrier Packaging)\",\"Pack Qty\":\"500 Complete Sets\"}'
WHERE `pool_id` = 6;

-- Pool 9: Update to Steel Wire Rope
UPDATE `oc_poolbuy_pool` SET
    `title` = 'Galvanized Aircraft Grade Steel Wire Rope Reel (8mm x 100m Drum)',
    `unit_label` = 'Reels',
    `attributes` = '{\"Construction\":\"6x19 IWRC (Steel Core)\",\"Diameter\":\"8mm x 100m Spool\",\"Breaking Load\":\"40.5 kN\",\"Tensile Grade\":\"1960 N/mm² EIPS\",\"Standard\":\"EN 12385-4 / ISO 2408\",\"Shelf Life\":\"Indefinite (Factory Lubricated Wood Reel)\"}'
WHERE `pool_id` = 9;

-- Pool 11: Update T-Shirt Attributes
UPDATE `oc_poolbuy_pool` SET
    `title` = 'Heavyweight 240 GSM Combed Cotton Oversized T-Shirt Blanks',
    `unit_label` = 'Units',
    `attributes` = '{\"Fabric\":\"100% Super-Combed Ring-Spun Cotton\",\"Weight\":\"240 GSM Heavyweight Jersey\",\"Yarn\":\"20s Compact Combed Weave\",\"Pre-Shrunk\":\"Yes (<2% Bio-Washed)\",\"Certification\":\"OEKO-TEX Standard 100\",\"Shelf Life\":\"Indefinite (Dry Ambient Warehouse)\"}'
WHERE `pool_id` = 11;

-- Pool 1: Titan-X Pump Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Motor\":\"3.7 kW (5.0 HP) Continuous Induction\",\"Flow Rate\":\"1,200 L/min (72 m³/h)\",\"Head Max\":\"28 Meters (92 Feet)\",\"Impeller\":\"High-Chrome Alloy 28%\",\"Protection\":\"IP68 Submersible Class\",\"Shelf Life\":\"Indefinite (Factory Sealed Crate)\"}'
WHERE `pool_id` = 1;

-- Pool 2: Filtration Vessels Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Flow\":\"35 m³/h per Vessel (140 m³/h System)\",\"Vessel\":\"Filament-Wound FRP Composite\",\"Pressure\":\"4.0 Bar Operating / 7.0 Bar Test\",\"Standard\":\"ASME Sec X, NSF 50 Certified\",\"Shelf Life\":\"Indefinite (Factory Skid Mounted)\"}'
WHERE `pool_id` = 2;

-- Pool 3: Slurry Pump Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Power\":\"7.5 kW (10.0 HP) TEFC 415V\",\"Capacity\":\"180 m³/hour\",\"Solids\":\"Up to 35mm Spherical Slurry\",\"Alloy\":\"ASTM A532 Class III (27% Cr)\",\"Shelf Life\":\"Indefinite (Export Crated)\"}'
WHERE `pool_id` = 3;

-- Pool 4: Chlorine Tablets Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Active\":\"Trichloroisocyanuric Acid (TCCA 90%)\",\"Format\":\"200g Giant Slow-Dissolve Tablets\",\"Standard\":\"NSF/ANSI Standard 60 Certified\",\"Packaging\":\"25kg UN-Rated Sealed HDPE Pail\",\"Shelf Life\":\"3 Years (<1% Active Loss/Year)\",\"Storage\":\"Cool, Dry, Well-Ventilated (<30°C)\"}'
WHERE `pool_id` = 4;

-- Pool 7: Master Cartons Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Construction\":\"5-Ply Double-Wall (BC-Flute)\",\"Strength\":\"Bursting 14 kg/cm² (200 PSI), 44 ECT\",\"Dimensions\":\"18x14x12 Inch (457x355x305mm)\",\"Material\":\"100% Recyclable Virgin Kraft\",\"Shelf Life\":\"Indefinite (Dry Warehouse Storage)\"}'
WHERE `pool_id` = 7;

-- Pool 8: Mosaic Tiles Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Material\":\"Vitrified Porcelain Glass Mosaic (E1)\",\"Chip Size\":\"25x25x4mm on 300x300mm Mesh Sheet\",\"Slip Rating\":\"R11 Anti-Slip (DIN 51097 Group C)\",\"Water Abs\":\"<0.5% (Impervious Frost/Chemical Proof)\",\"Shelf Life\":\"Indefinite (Non-Perishable Mineral)\"}'
WHERE `pool_id` = 8;

-- Pool 10: Glass Vials Attributes
UPDATE `oc_poolbuy_pool` SET
    `attributes` = '{\"Glass\":\"Neutral Borosilicate 3.3 (USP Type I)\",\"Hydrolytic\":\"Class HGB 1 (ISO 719)\",\"Dimensions\":\"10ml (24mm OD x 45mm H x 20mm Neck)\",\"Autoclavable\":\"Yes (121°C / 250°F Steam Autoclave)\",\"Certification\":\"ISO 15378 GMP, US FDA DMF #028914\",\"Shelf Life\":\"Indefinite (Chemically Inert Glass)\"}'
WHERE `pool_id` = 10;
