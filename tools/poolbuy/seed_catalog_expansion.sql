-- ==============================================================================
-- PoolBuy B2B Catalog Expansion: Subcategories, Faceted Filters & 40+ Products
-- ==============================================================================
USE `opencart`;

-- 1. Subcategories

INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1011, 101, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1011, 1, 'Industrial Water Pumps & Submersibles', 'Heavy-duty slurry, sump, and sewage submersible pumps for commercial water handling.', 'Industrial Water Pumps & Submersibles - B2B Wholesale PoolBuy', 'Heavy-duty slurry, sump, and sewage submersible pumps for commercial water handling.', 'industrial water pumps & submersibles, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1011, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1011, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1011;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1011, 101, 0),
(1011, 1011, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1012, 101, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1012, 1, 'Commercial Filtration & Vessel Systems', 'Multistage FRP vessels, quartz sand filters, and commercial RO filtration housings.', 'Commercial Filtration & Vessel Systems - B2B Wholesale PoolBuy', 'Multistage FRP vessels, quartz sand filters, and commercial RO filtration housings.', 'commercial filtration & vessel systems, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1012, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1012, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1012;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1012, 101, 0),
(1012, 1012, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1013, 101, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1013, 1, 'Pressure Booster & Circulation Motors', 'Inline circulation motors, high-pressure centrifugal boosting pumps for multi-story facilities.', 'Pressure Booster & Circulation Motors - B2B Wholesale PoolBuy', 'Inline circulation motors, high-pressure centrifugal boosting pumps for multi-story facilities.', 'pressure booster & circulation motors, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1013, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1013, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1013;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1013, 101, 0),
(1013, 1013, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1021, 102, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1021, 1, 'Disinfection & Sanitizing Chemicals', 'Calcium hypochlorite tablets, stabilized chlorine granules, and industrial biocides.', 'Disinfection & Sanitizing Chemicals - B2B Wholesale PoolBuy', 'Calcium hypochlorite tablets, stabilized chlorine granules, and industrial biocides.', 'disinfection & sanitizing chemicals, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1021, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1021, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1021;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1021, 102, 0),
(1021, 1021, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1022, 102, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1022, 1, 'Water Clarifiers & Coagulants', 'Polyaluminium chloride (PAC), ferric sulfate, and cationic flocculants for water treatment.', 'Water Clarifiers & Coagulants - B2B Wholesale PoolBuy', 'Polyaluminium chloride (PAC), ferric sulfate, and cationic flocculants for water treatment.', 'water clarifiers & coagulants, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1022, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1022, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1022;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1022, 102, 0),
(1022, 1022, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1023, 102, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1023, 1, 'pH Buffers & Industrial Scale Inhibitors', 'Dense soda ash, dry acid sodium bisulfate, and organophosphonate antiscalants.', 'pH Buffers & Industrial Scale Inhibitors - B2B Wholesale PoolBuy', 'Dense soda ash, dry acid sodium bisulfate, and organophosphonate antiscalants.', 'ph buffers & industrial scale inhibitors, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1023, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1023, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1023;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1023, 102, 0),
(1023, 1023, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1031, 103, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1031, 1, 'Architectural Tiles & Glass Mosaics', 'Frost-proof porcelain mosaics, architectural step treads, and vitreous swimming pool tiles.', 'Architectural Tiles & Glass Mosaics - B2B Wholesale PoolBuy', 'Frost-proof porcelain mosaics, architectural step treads, and vitreous swimming pool tiles.', 'architectural tiles & glass mosaics, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1031, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1031, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1031;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1031, 103, 0),
(1031, 1031, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1032, 103, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1032, 1, 'Industrial Epoxy & Floor Coatings', 'Two-part high-build solvent-free floor epoxies, antimicrobial urethanes, and screeds.', 'Industrial Epoxy & Floor Coatings - B2B Wholesale PoolBuy', 'Two-part high-build solvent-free floor epoxies, antimicrobial urethanes, and screeds.', 'industrial epoxy & floor coatings, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1032, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1032, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1032;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1032, 103, 0),
(1032, 1032, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1033, 103, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1033, 1, 'Structural Sealants & Waterproofing', 'Submersible polyurethane joint sealants, crystalline slurry waterproofing, and elastomeric tapes.', 'Structural Sealants & Waterproofing - B2B Wholesale PoolBuy', 'Submersible polyurethane joint sealants, crystalline slurry waterproofing, and elastomeric tapes.', 'structural sealants & waterproofing, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1033, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1033, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1033;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1033, 103, 0),
(1033, 1033, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1041, 104, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1041, 1, 'Corrugated Shipping Boxes & Cartons', 'Heavy-duty 5-ply and 7-ply kraft export shipping boxes and die-cut RSC master cartons.', 'Corrugated Shipping Boxes & Cartons - B2B Wholesale PoolBuy', 'Heavy-duty 5-ply and 7-ply kraft export shipping boxes and die-cut RSC master cartons.', 'corrugated shipping boxes & cartons, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1041, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1041, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1041;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1041, 104, 0),
(1041, 1041, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1042, 104, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1042, 1, 'Industrial Stretch Film & Strapping', 'High-performance blown machine stretch wrap, manual pallet shrink films, and PET strapping bands.', 'Industrial Stretch Film & Strapping - B2B Wholesale PoolBuy', 'High-performance blown machine stretch wrap, manual pallet shrink films, and PET strapping bands.', 'industrial stretch film & strapping, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1042, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1042, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1042;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1042, 104, 0),
(1042, 1042, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1043, 104, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1043, 1, 'Wooden Pallets & Heavy Crates', 'ISPM-15 heat-treated hardwood Euro pallets, CP-3 chemical pallets, and custom industrial skids.', 'Wooden Pallets & Heavy Crates - B2B Wholesale PoolBuy', 'ISPM-15 heat-treated hardwood Euro pallets, CP-3 chemical pallets, and custom industrial skids.', 'wooden pallets & heavy crates, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1043, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1043, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1043;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1043, 104, 0),
(1043, 1043, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1051, 105, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1051, 1, 'Wholesale Blank T-Shirts & Hoodies', 'Combed ring-spun 240 GSM oversized tees, 400 GSM French terry hoodies for bulk screenprinters.', 'Wholesale Blank T-Shirts & Hoodies - B2B Wholesale PoolBuy', 'Combed ring-spun 240 GSM oversized tees, 400 GSM French terry hoodies for bulk screenprinters.', 'wholesale blank t-shirts & hoodies, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1051, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1051, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1051;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1051, 105, 0),
(1051, 1051, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1052, 105, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1052, 1, 'Industrial Workwear & Utility Pants', 'Ripstop cargo utility trousers, reinforced knee mechanics pants, and heavy cotton drill boiler suits.', 'Industrial Workwear & Utility Pants - B2B Wholesale PoolBuy', 'Ripstop cargo utility trousers, reinforced knee mechanics pants, and heavy cotton drill boiler suits.', 'industrial workwear & utility pants, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1052, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1052, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1052;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1052, 105, 0),
(1052, 1052, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1053, 105, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1053, 1, 'High-Visibility & Safety Apparel', 'Class 2 EN ISO 20471 reflective safety vests, breathable hi-vis surveyor jackets, and rain parkas.', 'High-Visibility & Safety Apparel - B2B Wholesale PoolBuy', 'Class 2 EN ISO 20471 reflective safety vests, breathable hi-vis surveyor jackets, and rain parkas.', 'high-visibility & safety apparel, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1053, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1053, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1053;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1053, 105, 0),
(1053, 1053, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1061, 106, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1061, 1, 'High-Tensile Hex Bolts & Structural Nuts', 'Grade 8.8 and 10.9 hot-dip galvanized hex bolts, nylon lock nuts, and DIN 125 flat washers.', 'High-Tensile Hex Bolts & Structural Nuts - B2B Wholesale PoolBuy', 'Grade 8.8 and 10.9 hot-dip galvanized hex bolts, nylon lock nuts, and DIN 125 flat washers.', 'high-tensile hex bolts & structural nuts, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1061, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1061, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1061;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1061, 106, 0),
(1061, 1061, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1062, 106, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1062, 1, 'Scaffolding Clamps & Swivel Couplers', 'Drop-forged EN 74 certified swivel couplers, double right-angle fittings, and sleeve clamps.', 'Scaffolding Clamps & Swivel Couplers - B2B Wholesale PoolBuy', 'Drop-forged EN 74 certified swivel couplers, double right-angle fittings, and sleeve clamps.', 'scaffolding clamps & swivel couplers, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1062, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1062, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1062;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1062, 106, 0),
(1062, 1062, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1063, 106, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1063, 1, 'Steel Wire Ropes & Rigging Hardware', 'Galvanized 7x19 aircraft wire ropes, wire rope thimbles, turnbuckles, and safety bow shackles.', 'Steel Wire Ropes & Rigging Hardware - B2B Wholesale PoolBuy', 'Galvanized 7x19 aircraft wire ropes, wire rope thimbles, turnbuckles, and safety bow shackles.', 'steel wire ropes & rigging hardware, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1063, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1063, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1063;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1063, 106, 0),
(1063, 1063, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1071, 107, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1071, 1, 'Sterile Nitrile Gloves & PPE', 'Powder-free textured nitrile exam gloves, Class 100 cleanroom gloves, and surgical face shields.', 'Sterile Nitrile Gloves & PPE - B2B Wholesale PoolBuy', 'Powder-free textured nitrile exam gloves, Class 100 cleanroom gloves, and surgical face shields.', 'sterile nitrile gloves & ppe, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1071, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1071, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1071;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1071, 107, 0),
(1071, 1071, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1072, 107, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1072, 1, 'Borosilicate Glass Vials & Test Tubes', 'USP Type I 3.3 borosilicate serum vials, cryogenic sample tubes, and graduated volumetric cylinders.', 'Borosilicate Glass Vials & Test Tubes - B2B Wholesale PoolBuy', 'USP Type I 3.3 borosilicate serum vials, cryogenic sample tubes, and graduated volumetric cylinders.', 'borosilicate glass vials & test tubes, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1072, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1072, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1072;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1072, 107, 0),
(1072, 1072, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1073, 107, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1073, 1, 'Specimen Containers & Lab Consumables', 'Leak-proof 100ml sterile urine cups, polypropylene centrifuge tubes, and petri dish packs.', 'Specimen Containers & Lab Consumables - B2B Wholesale PoolBuy', 'Leak-proof 100ml sterile urine cups, polypropylene centrifuge tubes, and petri dish packs.', 'specimen containers & lab consumables, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1073, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1073, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1073;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1073, 107, 0),
(1073, 1073, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1081, 108, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1081, 1, '925 Sterling Silver Chains & Necklaces', 'Solid Italian 925 sterling silver diamond-cut Cuban link, Figaro, and rope chains in bulk lots.', '925 Sterling Silver Chains & Necklaces - B2B Wholesale PoolBuy', 'Solid Italian 925 sterling silver diamond-cut Cuban link, Figaro, and rope chains in bulk lots.', '925 sterling silver chains & necklaces, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1081, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1081, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1081;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1081, 108, 0),
(1081, 1081, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1082, 108, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1082, 1, '18K Gold Vermeil Moissanite Rings', '2.5-micron 18K yellow gold plated 925 silver solitaire rings with D-color VVS1 moissanite gemstones.', '18K Gold Vermeil Moissanite Rings - B2B Wholesale PoolBuy', '2.5-micron 18K yellow gold plated 925 silver solitaire rings with D-color VVS1 moissanite gemstones.', '18k gold vermeil moissanite rings, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1082, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1082, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1082;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1082, 108, 0),
(1082, 1082, 1);


INSERT INTO `oc_category` (`category_id`, `parent_id`, `sort_order`, `status`)
VALUES (1083, 108, 0, 1)
ON DUPLICATE KEY UPDATE `parent_id` = VALUES(`parent_id`), `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (1083, 1, 'Natural Semi-Precious Beaded Bracelets', 'Grade AAA natural tiger eye, matte black onyx, and lapis lazuli 8mm beaded stretch bracelets.', 'Natural Semi-Precious Beaded Bracelets - B2B Wholesale PoolBuy', 'Grade AAA natural tiger eye, matte black onyx, and lapis lazuli 8mm beaded stretch bracelets.', 'natural semi-precious beaded bracelets, wholesale, bulk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (1083, 0);
INSERT IGNORE INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (1083, 0, 0);

DELETE FROM `oc_category_path` WHERE `category_id` = 1083;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1083, 108, 0),
(1083, 1083, 1);


-- 2. Filter Groups & Filters

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (1, 1)
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES (1, 1, 'Material & Alloy Grade')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (2, 2)
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES (2, 1, 'Product Form & Output')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (3, 3)
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES (3, 1, 'Certification & Standards')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (4, 4)
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES (4, 1, 'Storage & Climate Protocol')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES (5, 5)
ON DUPLICATE KEY UPDATE `sort_order` = VALUES(`sort_order`);

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`)
VALUES (5, 1, 'Wholesale Volume MOQ')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (101, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (101, 1, 'SS 316 / SS 304 Stainless')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (102, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (102, 1, 'Grade 8.8 / 10.9 Alloy Steel')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (103, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (103, 1, '925 Sterling Silver')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (104, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (104, 1, '18K Gold Vermeil')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (105, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (105, 1, '100% Combed Cotton')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (106, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (106, 1, 'Borosilicate 3.3 Glass')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (107, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (107, 1, 'Medical Grade Nitrile')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (108, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (108, 1, 'Virgin Heavy Kraft Paper')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (109, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (109, 1, 'Cast LLDPE Polymer')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (110, 1, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (110, 1, 'Technical Calcium Hypochlorite')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (201, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (201, 1, 'Submersible Heavy-Duty')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (202, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (202, 1, 'High-Flow Multistage')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (203, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (203, 1, '240-280 GSM Medium-Heavy')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (204, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (204, 1, '400+ GSM Heavyweight')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (205, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (205, 1, 'Structural Metric M12-M24')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (206, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (206, 1, 'Bulk 25kg / 50kg Drum/Pail')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (207, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (207, 1, 'Master Pack 50 / 100')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (208, 2, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (208, 1, 'Case of 1000 Units')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (301, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (301, 1, 'ISO 9001 Certified')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (302, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (302, 1, 'DIN 933 / DIN 934 Standard')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (303, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (303, 1, 'ASTM Heavy Structural')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (304, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (304, 1, 'BIS / ISI Marked')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (305, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (305, 1, 'EN 455 / EN 388 Certified')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (306, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (306, 1, 'USP Type I Pharmaceutical')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (307, 3, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (307, 1, 'ISPM-15 Heat Treated')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (401, 4, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (401, 1, 'Climate-Safe Certified')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (402, 4, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (402, 1, 'Indefinite Ambient Shelf Life')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (403, 4, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (403, 1, 'Anti-Tarnish Vacuum Packaged')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (404, 4, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (404, 1, 'Moisture-Barrier Hermetic Pail')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (405, 4, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (405, 1, 'Dry Warehouse Stacking')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (501, 5, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (501, 1, 'Low MOQ (10–50 units)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (502, 5, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (502, 1, 'Medium MOQ (50–200 units)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES (503, 5, 0)
ON DUPLICATE KEY UPDATE `filter_group_id` = VALUES(`filter_group_id`);

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `name`)
VALUES (503, 1, 'Factory Bulk MOQ (200+ units)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);


-- 3. Category to Filter Association (Link all filters to relevant categories)
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (101, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (102, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (103, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (104, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (105, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (106, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (107, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (108, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1011, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1012, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1013, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1021, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1022, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1023, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1031, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1032, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1033, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1041, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1042, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1043, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1051, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1052, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1053, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1061, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1062, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1063, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1071, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1072, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1073, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1081, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1082, 503);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 101);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 102);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 103);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 104);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 105);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 106);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 107);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 108);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 109);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 110);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 201);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 202);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 203);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 204);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 205);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 206);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 207);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 208);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 301);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 302);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 303);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 304);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 305);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 306);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 307);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 401);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 402);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 403);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 404);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 405);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 501);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 502);
INSERT IGNORE INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES (1083, 503);

-- 4. Enable OpenCart Filter Module on Category Layout (layout_id = 3)

INSERT IGNORE INTO `oc_extension` (`extension`, `type`, `code`) VALUES ('opencart', 'module', 'filter');
DELETE FROM `oc_setting` WHERE `store_id` = 0 AND `code` = 'module_filter';
INSERT INTO `oc_setting` (`store_id`, `code`, `key`, `value`, `serialized`) VALUES (0, 'module_filter', 'module_filter_status', '1', 0);

DELETE FROM `oc_layout_module` WHERE `layout_id` = 3 AND `code` = 'opencart.filter';
INSERT INTO `oc_layout_module` (`layout_id`, `code`, `position`, `sort_order`)
VALUES (3, 'opencart.filter', 'column_left', 2);


-- 5. Products, Attributes, Category Mappings & Filters

INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (61, 0, 'TX-10HP-SLURRY', 'Main Warehouse', '', '',
        50, 7, 'catalog/poolbuy/prod_pump-160x160.jpg', 0, 1, 18500.0000, 0,
        0, NOW(), 48.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (61, 1, 'Titan-X 10HP Heavy Industrial Cast Iron Slurry Submersible Pump', 'Rugged non-clogging cast iron casing with chrome alloy agitator. Engineered for high-solids quarry and construction pit drainage.', 'Titan-X 10HP Heavy Industrial Cast Iron Slurry Submersible Pump', 'Titan-X 10HP Heavy Industrial Cast Iron Slurry Submersible Pump - Bulk Wholesale PoolBuy', 'Rugged non-clogging cast iron casing with chrome alloy agitator. Engineered for high-solids quarry and construction pit drainage.', 'wholesale, bulk, b2b, TX-10HP-SLURRY')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (61, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (61, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 61;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(61, 101),
(61, 1011);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 201);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (61, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(61, 111, 1, 'Industrial Grade Spec'),
(61, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(61, 131, 1, 'Master Carton / Industrial Pail'),
(61, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 61;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (61, 1, 'Titan-X 10HP Heavy Industrial Cast Iron Slurry Submersible Pump', 'PB-TX-10HP--61', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 61);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 18500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 61;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 16800.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 61;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 15200.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 61;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (62, 0, 'SS-SUMP-2HP', 'Main Warehouse', '', '',
        80, 7, 'catalog/poolbuy/prod_pump-160x160.jpg', 0, 1, 12400.0000, 0,
        0, NOW(), 22.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (62, 1, 'Stainless Steel SS 316 Chemical Effluent Submersible Pump (2HP)', 'Corrosion-proof 316 stainless pump for aggressive industrial chemical effluent, food processing, and saltwater discharge.', 'Stainless Steel SS 316 Chemical Effluent Submersible Pump (2HP)', 'Stainless Steel SS 316 Chemical Effluent Submersible Pump (2HP) - Bulk Wholesale PoolBuy', 'Corrosion-proof 316 stainless pump for aggressive industrial chemical effluent, food processing, and saltwater discharge.', 'wholesale, bulk, b2b, SS-SUMP-2HP')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (62, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (62, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 62;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(62, 101),
(62, 1011);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 201);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (62, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(62, 111, 1, 'Industrial Grade Spec'),
(62, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(62, 131, 1, 'Master Carton / Industrial Pail'),
(62, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 62;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (62, 1, 'Stainless Steel SS 316 Chemical Effluent Submersible Pump (2HP)', 'PB-SS-SUMP--62', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 62);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 12400.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 62;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '29', 11200.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 62;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, NULL, 9950.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 62;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (63, 0, 'FRP-VESSEL-64', 'Main Warehouse', '', '',
        40, 7, 'catalog/poolbuy/prod_filters-160x160.jpg', 0, 1, 14200.0000, 0,
        0, NOW(), 38.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (63, 1, 'Commercial FRP Composite Pressure Vessels 64-Inch with Top/Bottom Flanges', 'Seamless structural fiberglass inner shell rated to 150 PSI. Designed for large commercial RO pretreatment and iron removal plants.', 'Commercial FRP Composite Pressure Vessels 64-Inch with Top/Bottom Flanges', 'Commercial FRP Composite Pressure Vessels 64-Inch with Top/Bottom Flanges - Bulk Wholesale PoolBuy', 'Seamless structural fiberglass inner shell rated to 150 PSI. Designed for large commercial RO pretreatment and iron removal plants.', 'wholesale, bulk, b2b, FRP-VESSEL-64')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (63, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (63, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 63;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(63, 101),
(63, 1012);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 202);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (63, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(63, 111, 1, 'Industrial Grade Spec'),
(63, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(63, 131, 1, 'Master Carton / Industrial Pail'),
(63, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 63;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (63, 2, 'Commercial FRP Composite Pressure Vessels 64-Inch with Top/Bottom Flanges', 'PB-FRP-VESS-63', 40, 18,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 8, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 63);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '7', 14200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 63;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 8, '19', 12900.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 63;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, NULL, 11500.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 63;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (64, 0, 'QS-SAND-50KG', 'Main Warehouse', '', '',
        500, 7, 'catalog/poolbuy/prod_filters-160x160.jpg', 0, 1, 650.0000, 0,
        0, NOW(), 50.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (64, 1, 'High-Purity Graded Quartz Silica Sand Filter Media (Bulk 50kg Bags)', 'Sub-angular 0.45mm-0.85mm washed, kiln-dried quartz filter media meeting AWWA B100 standards for municipal and industrial filters.', 'High-Purity Graded Quartz Silica Sand Filter Media (Bulk 50kg Bags)', 'High-Purity Graded Quartz Silica Sand Filter Media (Bulk 50kg Bags) - Bulk Wholesale PoolBuy', 'Sub-angular 0.45mm-0.85mm washed, kiln-dried quartz filter media meeting AWWA B100 standards for municipal and industrial filters.', 'wholesale, bulk, b2b, QS-SAND-50KG')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (64, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (64, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 64;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(64, 101),
(64, 1012);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 304);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (64, 502);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(64, 111, 1, 'Industrial Grade Spec'),
(64, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(64, 131, 1, 'Master Carton / Industrial Pail'),
(64, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 64;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (64, 2, 'High-Purity Graded Quartz Silica Sand Filter Media (Bulk 50kg Bags)', 'PB-QS-SAND--64', 250, 112,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 50, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 64);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '49', 650.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 64;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, '149', 570.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 64;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 150, NULL, 490.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 64;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (65, 0, 'BOOST-VERT-5HP', 'Main Warehouse', '', '',
        30, 7, 'catalog/poolbuy/prod_pump-160x160.jpg', 0, 1, 26500.0000, 0,
        0, NOW(), 36.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (65, 1, 'Vertical Multistage Inline Pressure Booster Pump 5HP Tri-Phase', 'Quiet high-efficiency tri-phase stainless booster motor. Built for commercial HVAC circulation and boiler feed operations.', 'Vertical Multistage Inline Pressure Booster Pump 5HP Tri-Phase', 'Vertical Multistage Inline Pressure Booster Pump 5HP Tri-Phase - Bulk Wholesale PoolBuy', 'Quiet high-efficiency tri-phase stainless booster motor. Built for commercial HVAC circulation and boiler feed operations.', 'wholesale, bulk, b2b, BOOST-VERT-5HP')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (65, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (65, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 65;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(65, 101),
(65, 1013);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 202);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (65, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(65, 111, 1, 'Industrial Grade Spec'),
(65, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(65, 131, 1, 'Master Carton / Industrial Pail'),
(65, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 65;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (65, 1, 'Vertical Multistage Inline Pressure Booster Pump 5HP Tri-Phase', 'PB-BOOST-VE-65', 25, 11,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 5, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 65);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '4', 26500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 65;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 5, '11', 24000.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 65;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 12, NULL, 21800.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 65;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (66, 0, 'TCCA-90-TABLETS', 'Main Warehouse', '', '',
        120, 7, 'catalog/poolbuy/prod_chlorine-160x160.jpg', 0, 1, 7800.0000, 0,
        0, NOW(), 50.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (66, 1, 'Trichloroisocyanuric Acid 90% (TCCA 90) Slow-Release Tablets (50kg Drum)', 'Dry stabilized 200g tablets delivering 90% available chlorine for algae prevention and continuous bacterial eradication.', 'Trichloroisocyanuric Acid 90% (TCCA 90) Slow-Release Tablets (50kg Drum)', 'Trichloroisocyanuric Acid 90% (TCCA 90) Slow-Release Tablets (50kg Drum) - Bulk Wholesale PoolBuy', 'Dry stabilized 200g tablets delivering 90% available chlorine for algae prevention and continuous bacterial eradication.', 'wholesale, bulk, b2b, TCCA-90-TABLETS')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (66, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (66, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 66;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(66, 102),
(66, 1021);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (66, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(66, 111, 1, 'Industrial Grade Spec'),
(66, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(66, 131, 1, 'Master Carton / Industrial Pail'),
(66, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 66;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (66, 3, 'Trichloroisocyanuric Acid 90% (TCCA 90) Slow-Release Tablets (50kg Drum)', 'PB-TCCA-90--66', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 66);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 7800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 66;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '29', 7100.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 66;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, NULL, 6400.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 66;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (67, 0, 'SOD-HYPO-50L', 'Main Warehouse', '', '',
        200, 7, 'catalog/poolbuy/prod_chlorine-160x160.jpg', 0, 1, 1450.0000, 0,
        0, NOW(), 60.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (67, 1, 'Commercial Sodium Hypochlorite 12.5% Industrial Liquid Sanitizer (50L Carboy)', 'Concentrated NSF-60 certified liquid bleach solution for potable water dosing, industrial CIP systems, and pool sanitization.', 'Commercial Sodium Hypochlorite 12.5% Industrial Liquid Sanitizer (50L Carboy)', 'Commercial Sodium Hypochlorite 12.5% Industrial Liquid Sanitizer (50L Carboy) - Bulk Wholesale PoolBuy', 'Concentrated NSF-60 certified liquid bleach solution for potable water dosing, industrial CIP systems, and pool sanitization.', 'wholesale, bulk, b2b, SOD-HYPO-50L')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (67, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (67, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 67;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(67, 102),
(67, 1021);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 304);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (67, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(67, 111, 1, 'Industrial Grade Spec'),
(67, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(67, 131, 1, 'Master Carton / Industrial Pail'),
(67, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 67;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (67, 3, 'Commercial Sodium Hypochlorite 12.5% Industrial Liquid Sanitizer (50L Carboy)', 'PB-SOD-HYPO-67', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 67);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 1450.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 67;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 1280.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 67;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 1120.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 67;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (68, 0, 'FERRIC-SULF-50KG', 'Main Warehouse', '', '',
        150, 7, 'catalog/poolbuy/prod_chlorine-160x160.jpg', 0, 1, 3200.0000, 0,
        0, NOW(), 50.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (68, 1, 'Liquid Ferric Sulfate Industrial Coagulant & Odor Control (50kg Pail)', 'High-potency inorganic iron coagulant for rapid turbidity settlement, phosphorus precipitation, and H2S odor elimination.', 'Liquid Ferric Sulfate Industrial Coagulant & Odor Control (50kg Pail)', 'Liquid Ferric Sulfate Industrial Coagulant & Odor Control (50kg Pail) - Bulk Wholesale PoolBuy', 'High-potency inorganic iron coagulant for rapid turbidity settlement, phosphorus precipitation, and H2S odor elimination.', 'wholesale, bulk, b2b, FERRIC-SULF-50KG')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (68, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (68, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 68;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(68, 102),
(68, 1022);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (68, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(68, 111, 1, 'Industrial Grade Spec'),
(68, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(68, 131, 1, 'Master Carton / Industrial Pail'),
(68, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 68;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (68, 3, 'Liquid Ferric Sulfate Industrial Coagulant & Odor Control (50kg Pail)', 'PB-FERRIC-S-68', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 68);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 3200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 68;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 2850.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 68;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2490.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 68;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (69, 0, 'SODA-ASH-DENSE-50', 'Main Warehouse', '', '',
        300, 7, 'catalog/poolbuy/prod_chlorine-160x160.jpg', 0, 1, 1850.0000, 0,
        0, NOW(), 50.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (69, 1, 'Pure Sodium Carbonate Dense Soda Ash 99.2% pH Booster (50kg Bag)', 'Fast-dissolving industrial dense powder to raise total alkalinity and normalize acidic industrial boiler and pool process water.', 'Pure Sodium Carbonate Dense Soda Ash 99.2% pH Booster (50kg Bag)', 'Pure Sodium Carbonate Dense Soda Ash 99.2% pH Booster (50kg Bag) - Bulk Wholesale PoolBuy', 'Fast-dissolving industrial dense powder to raise total alkalinity and normalize acidic industrial boiler and pool process water.', 'wholesale, bulk, b2b, SODA-ASH-DENSE-50')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (69, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (69, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 69;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(69, 102),
(69, 1023);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 304);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (69, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(69, 111, 1, 'Industrial Grade Spec'),
(69, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(69, 131, 1, 'Master Carton / Industrial Pail'),
(69, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 69;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (69, 3, 'Pure Sodium Carbonate Dense Soda Ash 99.2% pH Booster (50kg Bag)', 'PB-SODA-ASH-69', 125, 56,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 25, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 69);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '24', 1850.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 69;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, '74', 1620.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 69;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 75, NULL, 1420.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 69;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (70, 0, 'SCALE-INHIB-25L', 'Main Warehouse', '', '',
        100, 7, 'catalog/poolbuy/prod_chlorine-160x160.jpg', 0, 1, 5400.0000, 0,
        0, NOW(), 28.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (70, 1, 'Organophosphonate Reverse Osmosis Antiscalant & Dispersant (25L Pail)', 'Super-threshold scale inhibitor preventing calcium carbonate, barium sulfate, and silica scaling across RO membranes.', 'Organophosphonate Reverse Osmosis Antiscalant & Dispersant (25L Pail)', 'Organophosphonate Reverse Osmosis Antiscalant & Dispersant (25L Pail) - Bulk Wholesale PoolBuy', 'Super-threshold scale inhibitor preventing calcium carbonate, barium sulfate, and silica scaling across RO membranes.', 'wholesale, bulk, b2b, SCALE-INHIB-25L')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (70, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (70, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 70;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(70, 102),
(70, 1023);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (70, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(70, 111, 1, 'Industrial Grade Spec'),
(70, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(70, 131, 1, 'Master Carton / Industrial Pail'),
(70, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 70;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (70, 3, 'Organophosphonate Reverse Osmosis Antiscalant & Dispersant (25L Pail)', 'PB-SCALE-IN-70', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 70);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 5400.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 70;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 4850.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 70;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 4300.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 70;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (71, 0, 'GLS-MOSAIC-DEEP', 'Main Warehouse', '', '',
        250, 7, 'catalog/poolbuy/prod_tiles-160x160.jpg', 0, 1, 2450.0000, 0,
        0, NOW(), 18.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (71, 1, 'Vitreous Cobalt Deep Blue Glass Mosaic Sheets (Box of 20 Sheets / 2 SqM)', 'Non-absorbent mesh-backed 25mm x 25mm glass mosaic tiles with high thermal shock and acid resistance for wet commercial interiors.', 'Vitreous Cobalt Deep Blue Glass Mosaic Sheets (Box of 20 Sheets / 2 SqM)', 'Vitreous Cobalt Deep Blue Glass Mosaic Sheets (Box of 20 Sheets / 2 SqM) - Bulk Wholesale PoolBuy', 'Non-absorbent mesh-backed 25mm x 25mm glass mosaic tiles with high thermal shock and acid resistance for wet commercial interiors.', 'wholesale, bulk, b2b, GLS-MOSAIC-DEEP')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (71, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (71, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 71;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(71, 103),
(71, 1031);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 106);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (71, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(71, 111, 1, 'Industrial Grade Spec'),
(71, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(71, 131, 1, 'Master Carton / Industrial Pail'),
(71, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 71;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (71, 2, 'Vitreous Cobalt Deep Blue Glass Mosaic Sheets (Box of 20 Sheets / 2 SqM)', 'PB-GLS-MOSA-71', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 71);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2450.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 71;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '59', 2180.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 71;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 60, NULL, 1950.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 71;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (72, 0, 'ANTI-SLIP-PORC-300', 'Main Warehouse', '', '',
        400, 7, 'catalog/poolbuy/prod_tiles-160x160.jpg', 0, 1, 1350.0000, 0,
        0, NOW(), 24.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (72, 1, 'Commercial Anti-Slip R11 Porcelain Flooring Tiles 300x300mm (Box of 12)', 'Heavy commercial R11 slip-resistant vitrified tiles engineered for warehouse corridors, shower locker rooms, and wet ramps.', 'Commercial Anti-Slip R11 Porcelain Flooring Tiles 300x300mm (Box of 12)', 'Commercial Anti-Slip R11 Porcelain Flooring Tiles 300x300mm (Box of 12) - Bulk Wholesale PoolBuy', 'Heavy commercial R11 slip-resistant vitrified tiles engineered for warehouse corridors, shower locker rooms, and wet ramps.', 'wholesale, bulk, b2b, ANTI-SLIP-PORC-300')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (72, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (72, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 72;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(72, 103),
(72, 1031);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 106);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (72, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(72, 111, 1, 'Industrial Grade Spec'),
(72, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(72, 131, 1, 'Master Carton / Industrial Pail'),
(72, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 72;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (72, 2, 'Commercial Anti-Slip R11 Porcelain Flooring Tiles 300x300mm (Box of 12)', 'PB-ANTI-SLI-72', 150, 67,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 30, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 72);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '29', 1350.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 72;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, '99', 1180.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 72;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 100, NULL, 1020.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 72;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (73, 0, 'EPOXY-PRIMER-10L', 'Main Warehouse', '', '',
        180, 7, 'catalog/poolbuy/prod_tiles-160x160.jpg', 0, 1, 4200.0000, 0,
        0, NOW(), 12.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (73, 1, 'Solvent-Free Moisture-Tolerant Concrete Epoxy Primer (10L Set)', 'Deep-penetrating 100% solids primer for green concrete surfaces ensuring high tensile adhesion for topcoat screeds.', 'Solvent-Free Moisture-Tolerant Concrete Epoxy Primer (10L Set)', 'Solvent-Free Moisture-Tolerant Concrete Epoxy Primer (10L Set) - Bulk Wholesale PoolBuy', 'Deep-penetrating 100% solids primer for green concrete surfaces ensuring high tensile adhesion for topcoat screeds.', 'wholesale, bulk, b2b, EPOXY-PRIMER-10L')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (73, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (73, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 73;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(73, 103),
(73, 1032);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (73, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(73, 111, 1, 'Industrial Grade Spec'),
(73, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(73, 131, 1, 'Master Carton / Industrial Pail'),
(73, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 73;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (73, 2, 'Solvent-Free Moisture-Tolerant Concrete Epoxy Primer (10L Set)', 'PB-EPOXY-PR-73', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 73);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 4200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 73;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 3750.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 73;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 3300.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 73;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (74, 0, 'PU-JOINT-SEALANT', 'Main Warehouse', '', '',
        160, 7, 'catalog/poolbuy/prod_tiles-160x160.jpg', 0, 1, 5800.0000, 0,
        0, NOW(), 16.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (74, 1, 'Submersible Heavy-Duty Polyurethane Joint Sealant 600ml Sausage (Box of 20)', 'High-movement elastomeric PU sealant for expansion joints subject to continuous submersion, vibration, and thermal cycling.', 'Submersible Heavy-Duty Polyurethane Joint Sealant 600ml Sausage (Box of 20)', 'Submersible Heavy-Duty Polyurethane Joint Sealant 600ml Sausage (Box of 20) - Bulk Wholesale PoolBuy', 'High-movement elastomeric PU sealant for expansion joints subject to continuous submersion, vibration, and thermal cycling.', 'wholesale, bulk, b2b, PU-JOINT-SEALANT')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (74, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (74, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 74;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(74, 103),
(74, 1033);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (74, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(74, 111, 1, 'Industrial Grade Spec'),
(74, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(74, 131, 1, 'Master Carton / Industrial Pail'),
(74, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 74;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (74, 2, 'Submersible Heavy-Duty Polyurethane Joint Sealant 600ml Sausage (Box of 20)', 'PB-PU-JOINT-74', 60, 27,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 12, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 74);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '11', 5800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 74;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 12, '29', 5100.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 74;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, NULL, 4500.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 74;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (75, 0, 'CRYST-WATERPROOF-25', 'Main Warehouse', '', '',
        220, 7, 'catalog/poolbuy/prod_tiles-160x160.jpg', 0, 1, 2250.0000, 0,
        0, NOW(), 25.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (75, 1, 'Crystalline Capillary Slurry Waterproofing Compound (25kg Bag)', 'In-depth active crystalline chemical treatment reacting with concrete moisture to seal micro-cracks permanently.', 'Crystalline Capillary Slurry Waterproofing Compound (25kg Bag)', 'Crystalline Capillary Slurry Waterproofing Compound (25kg Bag) - Bulk Wholesale PoolBuy', 'In-depth active crystalline chemical treatment reacting with concrete moisture to seal micro-cracks permanently.', 'wholesale, bulk, b2b, CRYST-WATERPROOF-25')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (75, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (75, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 75;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(75, 103),
(75, 1033);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (75, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(75, 111, 1, 'Industrial Grade Spec'),
(75, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(75, 131, 1, 'Master Carton / Industrial Pail'),
(75, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 75;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (75, 2, 'Crystalline Capillary Slurry Waterproofing Compound (25kg Bag)', 'PB-CRYST-WA-75', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 75);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2250.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 75;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 1980.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 75;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 1750.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 75;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (76, 0, '7PLY-EXPORT-BOX', 'Main Warehouse', '', '',
        300, 7, 'catalog/poolbuy/prod_cartons-160x160.jpg', 0, 1, 3850.0000, 0,
        0, NOW(), 32.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (76, 1, '7-Ply Triple-Wall Heavy Industrial Export Shipping Cartons (Bundle of 25)', 'Heavyweight 400lb burst strength triple-wall kraft boxes designed for heavy machinery parts and international container shipping.', '7-Ply Triple-Wall Heavy Industrial Export Shipping Cartons (Bundle of 25)', '7-Ply Triple-Wall Heavy Industrial Export Shipping Cartons (Bundle of 25) - Bulk Wholesale PoolBuy', 'Heavyweight 400lb burst strength triple-wall kraft boxes designed for heavy machinery parts and international container shipping.', 'wholesale, bulk, b2b, 7PLY-EXPORT-BOX')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (76, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (76, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 76;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(76, 104),
(76, 1041);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 108);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (76, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(76, 111, 1, 'Industrial Grade Spec'),
(76, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(76, 131, 1, 'Master Carton / Industrial Pail'),
(76, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 76;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (76, 4, '7-Ply Triple-Wall Heavy Industrial Export Shipping Cartons (Bundle of 25)', 'PB-7PLY-EXP-76', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 76);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 3850.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 76;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 3400.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 76;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2980.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 76;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (77, 0, 'DIE-CUT-MAILER-100', 'Main Warehouse', '', '',
        500, 7, 'catalog/poolbuy/prod_cartons-160x160.jpg', 0, 1, 1650.0000, 0,
        0, NOW(), 14.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (77, 1, 'Self-Locking Kraft Die-Cut Subscription Mailer Boxes (Pack of 100)', 'Clean E-flute folding mailers with reinforced front flaps for premium e-commerce logistics and fulfillment distribution.', 'Self-Locking Kraft Die-Cut Subscription Mailer Boxes (Pack of 100)', 'Self-Locking Kraft Die-Cut Subscription Mailer Boxes (Pack of 100) - Bulk Wholesale PoolBuy', 'Clean E-flute folding mailers with reinforced front flaps for premium e-commerce logistics and fulfillment distribution.', 'wholesale, bulk, b2b, DIE-CUT-MAILER-100')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (77, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (77, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 77;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(77, 104),
(77, 1041);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 108);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (77, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(77, 111, 1, 'Industrial Grade Spec'),
(77, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(77, 131, 1, 'Master Carton / Industrial Pail'),
(77, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 77;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (77, 4, 'Self-Locking Kraft Die-Cut Subscription Mailer Boxes (Pack of 100)', 'PB-DIE-CUT--77', 150, 67,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 30, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 77);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '29', 1650.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 77;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, '99', 1420.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 77;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 100, NULL, 1220.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 77;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (78, 0, 'PET-STRAP-ROLL', 'Main Warehouse', '', '',
        200, 7, 'catalog/poolbuy/prod_cartons-160x160.jpg', 0, 1, 2750.0000, 0,
        0, NOW(), 21.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (78, 1, 'Heavy Duty Green Polyester (PET) Embossed Strapping Roll (16mm x 2000m)', 'Steel-strength 450kg break load PET strap engineered to withstand thermal expansion and retain pallet tension in transit.', 'Heavy Duty Green Polyester (PET) Embossed Strapping Roll (16mm x 2000m)', 'Heavy Duty Green Polyester (PET) Embossed Strapping Roll (16mm x 2000m) - Bulk Wholesale PoolBuy', 'Steel-strength 450kg break load PET strap engineered to withstand thermal expansion and retain pallet tension in transit.', 'wholesale, bulk, b2b, PET-STRAP-ROLL')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (78, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (78, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 78;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(78, 104),
(78, 1042);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 109);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (78, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(78, 111, 1, 'Industrial Grade Spec'),
(78, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(78, 131, 1, 'Master Carton / Industrial Pail'),
(78, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 78;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (78, 4, 'Heavy Duty Green Polyester (PET) Embossed Strapping Roll (16mm x 2000m)', 'PB-PET-STRA-78', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 78);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 2750.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 78;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 2400.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 78;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 2100.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 78;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (79, 0, 'MANUAL-STRETCH-50', 'Main Warehouse', '', '',
        350, 7, 'catalog/poolbuy/prod_cartons-160x160.jpg', 0, 1, 2100.0000, 0,
        0, NOW(), 15.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (79, 1, 'Cast Manual Hand Stretch Film Wrap 23 Micron (Carton of 6 Rolls)', 'Silent unwinding puncture-resistant cast cling stretch film roll for fast manual pallet stabilization in high-throughput facilities.', 'Cast Manual Hand Stretch Film Wrap 23 Micron (Carton of 6 Rolls)', 'Cast Manual Hand Stretch Film Wrap 23 Micron (Carton of 6 Rolls) - Bulk Wholesale PoolBuy', 'Silent unwinding puncture-resistant cast cling stretch film roll for fast manual pallet stabilization in high-throughput facilities.', 'wholesale, bulk, b2b, MANUAL-STRETCH-50')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (79, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (79, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 79;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(79, 104),
(79, 1042);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 109);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (79, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(79, 111, 1, 'Industrial Grade Spec'),
(79, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(79, 131, 1, 'Master Carton / Industrial Pail'),
(79, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 79;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (79, 4, 'Cast Manual Hand Stretch Film Wrap 23 Micron (Carton of 6 Rolls)', 'PB-MANUAL-S-79', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 79);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2100.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 79;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '59', 1850.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 79;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 60, NULL, 1600.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 79;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (80, 0, 'CP3-CHEM-PALLET', 'Main Warehouse', '', '',
        80, 7, 'catalog/poolbuy/prod_cartons-160x160.jpg', 0, 1, 11800.0000, 0,
        0, NOW(), 450.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (80, 1, 'CP-3 Heavy-Duty Chemical Grade Heat-Treated Wooden Pallets (Lot of 15)', 'Robust 1140 x 1140mm chemical pallet designed for 4-drum storage and multi-tier stack racking. Certified ISPM-15 IPPC stamped.', 'CP-3 Heavy-Duty Chemical Grade Heat-Treated Wooden Pallets (Lot of 15)', 'CP-3 Heavy-Duty Chemical Grade Heat-Treated Wooden Pallets (Lot of 15) - Bulk Wholesale PoolBuy', 'Robust 1140 x 1140mm chemical pallet designed for 4-drum storage and multi-tier stack racking. Certified ISPM-15 IPPC stamped.', 'wholesale, bulk, b2b, CP3-CHEM-PALLET')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (80, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (80, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 80;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(80, 104),
(80, 1043);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 108);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 307);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (80, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(80, 111, 1, 'Industrial Grade Spec'),
(80, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(80, 131, 1, 'Master Carton / Industrial Pail'),
(80, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 80;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (80, 4, 'CP-3 Heavy-Duty Chemical Grade Heat-Treated Wooden Pallets (Lot of 15)', 'PB-CP3-CHEM-80', 25, 11,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 5, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 80);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '4', 11800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 80;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 5, '14', 10500.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 80;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, NULL, 9400.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 80;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (81, 0, 'TX-280-POLO', 'Main Warehouse', '', '',
        150, 7, 'catalog/poolbuy/prod_tshirt-160x160.jpg', 0, 1, 16500.0000, 0,
        0, NOW(), 18.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (81, 1, 'Heavyweight 280 GSM Pique Cotton Corporate Uniform Polo Shirts (Bulk Lot of 50)', 'Combed organic cotton double-pique knit with reinforced collar bands and mother-of-pearl buttons for corporate uniforms.', 'Heavyweight 280 GSM Pique Cotton Corporate Uniform Polo Shirts (Bulk Lot of 50)', 'Heavyweight 280 GSM Pique Cotton Corporate Uniform Polo Shirts (Bulk Lot of 50) - Bulk Wholesale PoolBuy', 'Combed organic cotton double-pique knit with reinforced collar bands and mother-of-pearl buttons for corporate uniforms.', 'wholesale, bulk, b2b, TX-280-POLO')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (81, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (81, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 81;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(81, 105),
(81, 1051);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (81, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(81, 111, 1, 'Industrial Grade Spec'),
(81, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(81, 131, 1, 'Master Carton / Industrial Pail'),
(81, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 81;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (81, 5, 'Heavyweight 280 GSM Pique Cotton Corporate Uniform Polo Shirts (Bulk Lot of 50)', 'PB-TX-280-P-81', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 81);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 16500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 81;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 14800.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 81;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 13200.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 81;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (82, 0, 'TX-320-CREWNECK', 'Main Warehouse', '', '',
        120, 7, 'catalog/poolbuy/prod_tshirt-160x160.jpg', 0, 1, 14200.0000, 0,
        0, NOW(), 17.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (82, 1, 'Wholesale 320 GSM Heavyweight Terry Fleece Crewneck Sweatshirts (Pack of 30)', 'Pre-shrunk 100% cotton diagonal loopback French terry blanks tailored for screen printing and premium garment branding.', 'Wholesale 320 GSM Heavyweight Terry Fleece Crewneck Sweatshirts (Pack of 30)', 'Wholesale 320 GSM Heavyweight Terry Fleece Crewneck Sweatshirts (Pack of 30) - Bulk Wholesale PoolBuy', 'Pre-shrunk 100% cotton diagonal loopback French terry blanks tailored for screen printing and premium garment branding.', 'wholesale, bulk, b2b, TX-320-CREWNECK')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (82, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (82, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 82;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(82, 105),
(82, 1051);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (82, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(82, 111, 1, 'Industrial Grade Spec'),
(82, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(82, 131, 1, 'Master Carton / Industrial Pail'),
(82, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 82;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (82, 5, 'Wholesale 320 GSM Heavyweight Terry Fleece Crewneck Sweatshirts (Pack of 30)', 'PB-TX-320-C-82', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 82);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 14200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 82;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 12600.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 82;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 11100.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 82;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (83, 0, 'TX-BOILERSUIT-HD', 'Main Warehouse', '', '',
        90, 7, 'catalog/poolbuy/prod_tshirt-160x160.jpg', 0, 1, 18900.0000, 0,
        0, NOW(), 22.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (83, 1, 'Heavy 310 GSM 100% Cotton Drill Industrial Mechanic Boilersuit (Case of 20)', 'Double-stitched stress points with two-way heavy brass zippers and action back for unrestricted workshop and shipyard mobility.', 'Heavy 310 GSM 100% Cotton Drill Industrial Mechanic Boilersuit (Case of 20)', 'Heavy 310 GSM 100% Cotton Drill Industrial Mechanic Boilersuit (Case of 20) - Bulk Wholesale PoolBuy', 'Double-stitched stress points with two-way heavy brass zippers and action back for unrestricted workshop and shipyard mobility.', 'wholesale, bulk, b2b, TX-BOILERSUIT-HD')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (83, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (83, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 83;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(83, 105),
(83, 1052);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (83, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(83, 111, 1, 'Industrial Grade Spec'),
(83, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(83, 131, 1, 'Master Carton / Industrial Pail'),
(83, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 83;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (83, 5, 'Heavy 310 GSM 100% Cotton Drill Industrial Mechanic Boilersuit (Case of 20)', 'PB-TX-BOILE-83', 40, 18,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 8, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 83);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '7', 18900.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 83;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 8, '19', 16900.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 83;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, NULL, 15100.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 83;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (84, 0, 'TX-HIVIS-PARKA', 'Main Warehouse', '', '',
        70, 7, 'catalog/poolbuy/prod_tshirt-160x160.jpg', 0, 1, 21500.0000, 0,
        0, NOW(), 19.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (84, 1, 'Class 3 EN ISO 20471 Waterproof Breathable Hi-Vis Winter Parka (Pack of 15)', 'Fluorescent Oxford weave jacket with welded waterproof seams, storm flap, and 3M Scotchlite 360-degree reflective bands.', 'Class 3 EN ISO 20471 Waterproof Breathable Hi-Vis Winter Parka (Pack of 15)', 'Class 3 EN ISO 20471 Waterproof Breathable Hi-Vis Winter Parka (Pack of 15) - Bulk Wholesale PoolBuy', 'Fluorescent Oxford weave jacket with welded waterproof seams, storm flap, and 3M Scotchlite 360-degree reflective bands.', 'wholesale, bulk, b2b, TX-HIVIS-PARKA')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (84, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (84, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 84;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(84, 105),
(84, 1053);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 204);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (84, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(84, 111, 1, 'Industrial Grade Spec'),
(84, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(84, 131, 1, 'Master Carton / Industrial Pail'),
(84, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 84;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (84, 5, 'Class 3 EN ISO 20471 Waterproof Breathable Hi-Vis Winter Parka (Pack of 15)', 'PB-TX-HIVIS-84', 30, 13,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 6, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 84);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '5', 21500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 84;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 6, '14', 19200.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 84;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, NULL, 17100.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 84;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (85, 0, 'HD-BOLT-109-M16', 'Main Warehouse', '', '',
        250, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 4200.0000, 0,
        0, NOW(), 28.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (85, 1, 'Grade 10.9 Metric Hex Head Bolts Zinc Flake Coated M16x80mm (Box of 200)', 'Quenched and tempered high-tensile 10.9 structural bolts compliant with DIN 931. Salt-spray corrosion tested over 1000 hours.', 'Grade 10.9 Metric Hex Head Bolts Zinc Flake Coated M16x80mm (Box of 200)', 'Grade 10.9 Metric Hex Head Bolts Zinc Flake Coated M16x80mm (Box of 200) - Bulk Wholesale PoolBuy', 'Quenched and tempered high-tensile 10.9 structural bolts compliant with DIN 931. Salt-spray corrosion tested over 1000 hours.', 'wholesale, bulk, b2b, HD-BOLT-109-M16')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (85, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (85, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 85;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(85, 106),
(85, 1061);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 302);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (85, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(85, 111, 1, 'Industrial Grade Spec'),
(85, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(85, 131, 1, 'Master Carton / Industrial Pail'),
(85, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 85;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (85, 1, 'Grade 10.9 Metric Hex Head Bolts Zinc Flake Coated M16x80mm (Box of 200)', 'PB-HD-BOLT--85', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 85);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 4200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 85;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 3700.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 85;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 3250.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 85;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (86, 0, 'HD-NYLOC-NUT-M16', 'Main Warehouse', '', '',
        300, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 2650.0000, 0,
        0, NOW(), 18.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (86, 1, 'High-Tensile Grade 10 Nylon Insert Lock Nuts M16 DIN 985 (Pack of 500)', 'Vibration-resistant self-locking prevailing torque hex nuts designed to maintain clamping force in extreme cyclic conditions.', 'High-Tensile Grade 10 Nylon Insert Lock Nuts M16 DIN 985 (Pack of 500)', 'High-Tensile Grade 10 Nylon Insert Lock Nuts M16 DIN 985 (Pack of 500) - Bulk Wholesale PoolBuy', 'Vibration-resistant self-locking prevailing torque hex nuts designed to maintain clamping force in extreme cyclic conditions.', 'wholesale, bulk, b2b, HD-NYLOC-NUT-M16')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (86, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (86, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 86;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(86, 106),
(86, 1061);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 302);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (86, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(86, 111, 1, 'Industrial Grade Spec'),
(86, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(86, 131, 1, 'Master Carton / Industrial Pail'),
(86, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 86;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (86, 1, 'High-Tensile Grade 10 Nylon Insert Lock Nuts M16 DIN 985 (Pack of 500)', 'PB-HD-NYLOC-86', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 86);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2650.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 86;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 2300.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 86;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 1990.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 86;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (87, 0, 'SCAF-RIGHT-ANGLE', 'Main Warehouse', '', '',
        220, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 3450.0000, 0,
        0, NOW(), 30.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (87, 1, 'Drop-Forged Heavy Scaffold Double Right-Angle Couplers EN 74 (Box of 25)', 'Heavy-duty 48.3mm structural scaffolding right-angle fittings hot-dip galvanized for extreme outdoor construction and staging rigs.', 'Drop-Forged Heavy Scaffold Double Right-Angle Couplers EN 74 (Box of 25)', 'Drop-Forged Heavy Scaffold Double Right-Angle Couplers EN 74 (Box of 25) - Bulk Wholesale PoolBuy', 'Heavy-duty 48.3mm structural scaffolding right-angle fittings hot-dip galvanized for extreme outdoor construction and staging rigs.', 'wholesale, bulk, b2b, SCAF-RIGHT-ANGLE')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (87, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (87, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 87;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(87, 106),
(87, 1062);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (87, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(87, 111, 1, 'Industrial Grade Spec'),
(87, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(87, 131, 1, 'Master Carton / Industrial Pail'),
(87, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 87;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (87, 1, 'Drop-Forged Heavy Scaffold Double Right-Angle Couplers EN 74 (Box of 25)', 'PB-SCAF-RIG-87', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 87);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 3450.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 87;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 3050.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 87;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2700.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 87;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (88, 0, 'RIG-BOW-SHACKLE', 'Main Warehouse', '', '',
        180, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 3900.0000, 0,
        0, NOW(), 24.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (88, 1, 'Drop-Forged G-209 Galvanized Safety Bow Shackles 4.75 Ton WLL (Box of 10)', 'Alloy steel quenched and tempered safety bow shackle with cotter pin screw pin. Proof-tested to 2x Working Load Limit.', 'Drop-Forged G-209 Galvanized Safety Bow Shackles 4.75 Ton WLL (Box of 10)', 'Drop-Forged G-209 Galvanized Safety Bow Shackles 4.75 Ton WLL (Box of 10) - Bulk Wholesale PoolBuy', 'Alloy steel quenched and tempered safety bow shackle with cotter pin screw pin. Proof-tested to 2x Working Load Limit.', 'wholesale, bulk, b2b, RIG-BOW-SHACKLE')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (88, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (88, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 88;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(88, 106),
(88, 1063);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 303);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (88, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(88, 111, 1, 'Industrial Grade Spec'),
(88, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(88, 131, 1, 'Master Carton / Industrial Pail'),
(88, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 88;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (88, 1, 'Drop-Forged G-209 Galvanized Safety Bow Shackles 4.75 Ton WLL (Box of 10)', 'PB-RIG-BOW--88', 60, 27,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 12, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 88);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '11', 3900.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 88;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 12, '29', 3450.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 88;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, NULL, 3050.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 88;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (89, 0, 'SS-TURNBUCKLE-M20', 'Main Warehouse', '', '',
        140, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 4800.0000, 0,
        0, NOW(), 16.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (89, 1, 'Stainless Steel SS 316 Jaw-and-Jaw Rigging Turnbuckles M20 (Box of 6)', 'Marine-grade polished 316 stainless closed-body turnbuckle for architectural wire rigging, marine yachting, and tensile canopies.', 'Stainless Steel SS 316 Jaw-and-Jaw Rigging Turnbuckles M20 (Box of 6)', 'Stainless Steel SS 316 Jaw-and-Jaw Rigging Turnbuckles M20 (Box of 6) - Bulk Wholesale PoolBuy', 'Marine-grade polished 316 stainless closed-body turnbuckle for architectural wire rigging, marine yachting, and tensile canopies.', 'wholesale, bulk, b2b, SS-TURNBUCKLE-M20')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (89, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (89, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 89;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(89, 106),
(89, 1063);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (89, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(89, 111, 1, 'Industrial Grade Spec'),
(89, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(89, 131, 1, 'Master Carton / Industrial Pail'),
(89, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 89;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (89, 1, 'Stainless Steel SS 316 Jaw-and-Jaw Rigging Turnbuckles M20 (Box of 6)', 'PB-SS-TURNB-89', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 89);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 4800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 89;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 4250.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 89;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 3750.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 89;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (90, 0, 'MD-SURG-SHIELD-100', 'Main Warehouse', '', '',
        300, 7, 'catalog/poolbuy/prod_nitrile-160x160.jpg', 0, 1, 2400.0000, 0,
        0, NOW(), 10.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (90, 1, 'Anti-Fog Medical Grade Full Face Protection Shields (Box of 100)', 'Optically clear PET visor with breathable foam brow pad and latex-free elastic strap for healthcare splash protection.', 'Anti-Fog Medical Grade Full Face Protection Shields (Box of 100)', 'Anti-Fog Medical Grade Full Face Protection Shields (Box of 100) - Bulk Wholesale PoolBuy', 'Optically clear PET visor with breathable foam brow pad and latex-free elastic strap for healthcare splash protection.', 'wholesale, bulk, b2b, MD-SURG-SHIELD-100')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (90, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (90, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 90;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(90, 107),
(90, 1071);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (90, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(90, 111, 1, 'Industrial Grade Spec'),
(90, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(90, 131, 1, 'Master Carton / Industrial Pail'),
(90, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 90;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (90, 4, 'Anti-Fog Medical Grade Full Face Protection Shields (Box of 100)', 'PB-MD-SURG--90', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 90);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2400.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 90;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 2080.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 90;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 1800.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 90;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (91, 0, 'MD-ISOL-GOWN-50', 'Main Warehouse', '', '',
        240, 7, 'catalog/poolbuy/prod_nitrile-160x160.jpg', 0, 1, 3250.0000, 0,
        0, NOW(), 12.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (91, 1, 'AAMI Level 3 Fluid-Resistant Sterile Isolation Gowns (Pack of 50)', 'Non-woven SMS multi-ply fabric providing hydrostatic resistance against bloodborne pathogens and hospital fluid transfer.', 'AAMI Level 3 Fluid-Resistant Sterile Isolation Gowns (Pack of 50)', 'AAMI Level 3 Fluid-Resistant Sterile Isolation Gowns (Pack of 50) - Bulk Wholesale PoolBuy', 'Non-woven SMS multi-ply fabric providing hydrostatic resistance against bloodborne pathogens and hospital fluid transfer.', 'wholesale, bulk, b2b, MD-ISOL-GOWN-50')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (91, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (91, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 91;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(91, 107),
(91, 1071);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (91, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(91, 111, 1, 'Industrial Grade Spec'),
(91, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(91, 131, 1, 'Master Carton / Industrial Pail'),
(91, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 91;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (91, 4, 'AAMI Level 3 Fluid-Resistant Sterile Isolation Gowns (Pack of 50)', 'PB-MD-ISOL--91', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 91);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 3250.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 91;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 2850.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 91;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2500.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 91;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (92, 0, 'GLS-TESTTUBE-500', 'Main Warehouse', '', '',
        200, 7, 'catalog/poolbuy/prod_vials-160x160.jpg', 0, 1, 2950.0000, 0,
        0, NOW(), 14.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (92, 1, 'Graduated Borosilicate 3.3 Glass Test Tubes with Rim 16x150mm (Pack of 500)', 'Thermal shock resistant glass test tubes with uniform wall thickness and fire-polished beaded rims for diagnostic laboratories.', 'Graduated Borosilicate 3.3 Glass Test Tubes with Rim 16x150mm (Pack of 500)', 'Graduated Borosilicate 3.3 Glass Test Tubes with Rim 16x150mm (Pack of 500) - Bulk Wholesale PoolBuy', 'Thermal shock resistant glass test tubes with uniform wall thickness and fire-polished beaded rims for diagnostic laboratories.', 'wholesale, bulk, b2b, GLS-TESTTUBE-500')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (92, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (92, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 92;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(92, 107),
(92, 1072);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 106);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 306);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (92, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(92, 111, 1, 'Industrial Grade Spec'),
(92, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(92, 131, 1, 'Master Carton / Industrial Pail'),
(92, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 92;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (92, 4, 'Graduated Borosilicate 3.3 Glass Test Tubes with Rim 16x150mm (Pack of 500)', 'PB-GLS-TEST-92', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 92);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 2950.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 92;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 2600.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 92;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2280.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 92;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (93, 0, 'LAB-CENTRIFUGE-500', 'Main Warehouse', '', '',
        180, 7, 'catalog/poolbuy/prod_vials-160x160.jpg', 0, 1, 3800.0000, 0,
        0, NOW(), 11.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (93, 1, 'Sterile Polypropylene Conical Centrifuge Tubes 50ml Leakproof (Case of 500)', 'High-clarity virgin polypropylene tubes with frosted writing surface and deep-skirt flat caps rated to 12,000 RCF centrifugation.', 'Sterile Polypropylene Conical Centrifuge Tubes 50ml Leakproof (Case of 500)', 'Sterile Polypropylene Conical Centrifuge Tubes 50ml Leakproof (Case of 500) - Bulk Wholesale PoolBuy', 'High-clarity virgin polypropylene tubes with frosted writing surface and deep-skirt flat caps rated to 12,000 RCF centrifugation.', 'wholesale, bulk, b2b, LAB-CENTRIFUGE-500')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (93, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (93, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 93;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(93, 107),
(93, 1073);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 208);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 306);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (93, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(93, 111, 1, 'Industrial Grade Spec'),
(93, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(93, 131, 1, 'Master Carton / Industrial Pail'),
(93, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 93;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (93, 4, 'Sterile Polypropylene Conical Centrifuge Tubes 50ml Leakproof (Case of 500)', 'PB-LAB-CENT-93', 60, 27,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 12, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 93);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '11', 3800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 93;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 12, '29', 3350.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 93;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 30, NULL, 2950.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 93;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (94, 0, 'LAB-PETRI-DISH-500', 'Main Warehouse', '', '',
        260, 7, 'catalog/poolbuy/prod_vials-160x160.jpg', 0, 1, 2200.0000, 0,
        0, NOW(), 8.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (94, 1, 'Sterile Polystyrene Bacteriological Petri Dishes 90x15mm (Case of 500)', 'Gamma irradiated crystal-clear vented polystyrene dishes ensuring uniform culture media depth and optimal gas exchange.', 'Sterile Polystyrene Bacteriological Petri Dishes 90x15mm (Case of 500)', 'Sterile Polystyrene Bacteriological Petri Dishes 90x15mm (Case of 500) - Bulk Wholesale PoolBuy', 'Gamma irradiated crystal-clear vented polystyrene dishes ensuring uniform culture media depth and optimal gas exchange.', 'wholesale, bulk, b2b, LAB-PETRI-DISH-500')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (94, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (94, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 94;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(94, 107),
(94, 1073);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 208);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 306);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (94, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(94, 111, 1, 'Industrial Grade Spec'),
(94, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(94, 131, 1, 'Master Carton / Industrial Pail'),
(94, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 94;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (94, 4, 'Sterile Polystyrene Bacteriological Petri Dishes 90x15mm (Case of 500)', 'PB-LAB-PETR-94', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 94);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 2200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 94;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 1920.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 94;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 1680.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 94;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (95, 0, 'JW-SILV-FIGARO', 'Main Warehouse', '', '',
        100, 7, 'catalog/poolbuy/jewellery_silver_chain.png', 0, 1, 14800.0000, 0,
        0, NOW(), 6.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (95, 1, 'Solid 925 Sterling Silver Italian Figaro Chain Necklaces (Wholesale Lot of 25)', 'Authentic Italian stamped 925 high-polish diamond-cut Figaro 3+1 link chains (20-inch, 4.5mm) with lobster claw clasps.', 'Solid 925 Sterling Silver Italian Figaro Chain Necklaces (Wholesale Lot of 25)', 'Solid 925 Sterling Silver Italian Figaro Chain Necklaces (Wholesale Lot of 25) - Bulk Wholesale PoolBuy', 'Authentic Italian stamped 925 high-polish diamond-cut Figaro 3+1 link chains (20-inch, 4.5mm) with lobster claw clasps.', 'wholesale, bulk, b2b, JW-SILV-FIGARO')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (95, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (95, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 95;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(95, 108),
(95, 1081);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (95, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(95, 111, 1, 'Industrial Grade Spec'),
(95, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(95, 131, 1, 'Master Carton / Industrial Pail'),
(95, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 95;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (95, 5, 'Solid 925 Sterling Silver Italian Figaro Chain Necklaces (Wholesale Lot of 25)', 'PB-JW-SILV--95', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 95);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 14800.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 95;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 13200.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 95;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 11800.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 95;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (96, 0, 'JW-SILV-ROPE-CHAIN', 'Main Warehouse', '', '',
        90, 7, 'catalog/poolbuy/jewellery_silver_chain.png', 0, 1, 16200.0000, 0,
        0, NOW(), 7.5000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (96, 1, 'Diamond-Cut Solid 925 Sterling Silver Rope Chains 3.5mm (Lot of 30)', 'High-tensile woven French rope chain diamond-cut for extreme light refraction. Anti-tarnish coated for long retail shelf life.', 'Diamond-Cut Solid 925 Sterling Silver Rope Chains 3.5mm (Lot of 30)', 'Diamond-Cut Solid 925 Sterling Silver Rope Chains 3.5mm (Lot of 30) - Bulk Wholesale PoolBuy', 'High-tensile woven French rope chain diamond-cut for extreme light refraction. Anti-tarnish coated for long retail shelf life.', 'wholesale, bulk, b2b, JW-SILV-ROPE-CHAIN')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (96, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (96, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 96;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(96, 108),
(96, 1081);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (96, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(96, 111, 1, 'Industrial Grade Spec'),
(96, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(96, 131, 1, 'Master Carton / Industrial Pail'),
(96, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 96;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (96, 5, 'Diamond-Cut Solid 925 Sterling Silver Rope Chains 3.5mm (Lot of 30)', 'PB-JW-SILV--96', 40, 18,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 8, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 96);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '7', 16200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 96;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 8, '19', 14500.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 96;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, NULL, 12900.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 96;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (97, 0, 'JW-GOLD-VERMEIL-EARRING', 'Main Warehouse', '', '',
        120, 7, 'catalog/poolbuy/jewellery_moissanite_ring.png', 0, 1, 12500.0000, 0,
        0, NOW(), 5.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (97, 1, '18K Gold Vermeil 925 Silver Chunky Waterdrop Hoop Earrings (Lot of 40 Pairs)', 'Substantial 2.5-micron 18K yellow gold plated over solid sterling silver. Hypoallergenic lightweight hollow-form casting.', '18K Gold Vermeil 925 Silver Chunky Waterdrop Hoop Earrings (Lot of 40 Pairs)', '18K Gold Vermeil 925 Silver Chunky Waterdrop Hoop Earrings (Lot of 40 Pairs) - Bulk Wholesale PoolBuy', 'Substantial 2.5-micron 18K yellow gold plated over solid sterling silver. Hypoallergenic lightweight hollow-form casting.', 'wholesale, bulk, b2b, JW-GOLD-VERMEIL-EARRING')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (97, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (97, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 97;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(97, 108),
(97, 1082);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 104);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (97, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(97, 111, 1, 'Industrial Grade Spec'),
(97, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(97, 131, 1, 'Master Carton / Industrial Pail'),
(97, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 97;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (97, 5, '18K Gold Vermeil 925 Silver Chunky Waterdrop Hoop Earrings (Lot of 40 Pairs)', 'PB-JW-GOLD--97', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 97);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 12500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 97;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 11100.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 97;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 9800.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 97;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (98, 0, 'JW-MOISS-ETERNITY', 'Main Warehouse', '', '',
        80, 7, 'catalog/poolbuy/jewellery_moissanite_ring.png', 0, 1, 21000.0000, 0,
        0, NOW(), 4.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (98, 1, '18K Gold Vermeil Full Eternity Moissanite Bands 2mm (Wholesale Lot of 30)', 'Exquisite shared-prong channel set with GRA certified D-Color VVS1 lab moissanite gemstones around solid 925 vermeil bands.', '18K Gold Vermeil Full Eternity Moissanite Bands 2mm (Wholesale Lot of 30)', '18K Gold Vermeil Full Eternity Moissanite Bands 2mm (Wholesale Lot of 30) - Bulk Wholesale PoolBuy', 'Exquisite shared-prong channel set with GRA certified D-Color VVS1 lab moissanite gemstones around solid 925 vermeil bands.', 'wholesale, bulk, b2b, JW-MOISS-ETERNITY')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (98, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (98, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 98;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(98, 108),
(98, 1082);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 104);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (98, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(98, 111, 1, 'Industrial Grade Spec'),
(98, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(98, 131, 1, 'Master Carton / Industrial Pail'),
(98, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 98;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (98, 5, '18K Gold Vermeil Full Eternity Moissanite Bands 2mm (Wholesale Lot of 30)', 'PB-JW-MOISS-98', 40, 18,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 8, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 98);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '7', 21000.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 98;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 8, '19', 18800.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 98;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, NULL, 16900.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 98;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (99, 0, 'JW-ONYX-BRACELET', 'Main Warehouse', '', '',
        180, 7, 'catalog/poolbuy/jewellery_beaded_bracelet.png', 0, 1, 8200.0000, 0,
        0, NOW(), 8.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (99, 1, 'Matte Black Onyx & Lava Rock 8mm Beaded Aromatherapy Bracelets (Lot of 100)', 'Hand-selected natural matte black onyx beads strung on Japanese dual-strand elastic cord. Ideal impulse jewelry for retailers.', 'Matte Black Onyx & Lava Rock 8mm Beaded Aromatherapy Bracelets (Lot of 100)', 'Matte Black Onyx & Lava Rock 8mm Beaded Aromatherapy Bracelets (Lot of 100) - Bulk Wholesale PoolBuy', 'Hand-selected natural matte black onyx beads strung on Japanese dual-strand elastic cord. Ideal impulse jewelry for retailers.', 'wholesale, bulk, b2b, JW-ONYX-BRACELET')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (99, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (99, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 99;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(99, 108),
(99, 1083);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (99, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(99, 111, 1, 'Industrial Grade Spec'),
(99, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(99, 131, 1, 'Master Carton / Industrial Pail'),
(99, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 99;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (99, 5, 'Matte Black Onyx & Lava Rock 8mm Beaded Aromatherapy Bracelets (Lot of 100)', 'PB-JW-ONYX--99', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 99);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 8200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 99;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 7300.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 99;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 6500.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 99;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (100, 0, 'JW-LAPIS-BRACELET', 'Main Warehouse', '', '',
        110, 7, 'catalog/poolbuy/jewellery_beaded_bracelet.png', 0, 1, 10500.0000, 0,
        0, NOW(), 6.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (100, 1, 'Natural Deep Blue Lapis Lazuli Grade AAA 8mm Beaded Bracelets (Lot of 60)', 'Rich ultramarine blue natural lapis lazuli stones with golden pyrite flecks, hand-knotted on stretch cords for luxury gift collections.', 'Natural Deep Blue Lapis Lazuli Grade AAA 8mm Beaded Bracelets (Lot of 60)', 'Natural Deep Blue Lapis Lazuli Grade AAA 8mm Beaded Bracelets (Lot of 60) - Bulk Wholesale PoolBuy', 'Rich ultramarine blue natural lapis lazuli stones with golden pyrite flecks, hand-knotted on stretch cords for luxury gift collections.', 'wholesale, bulk, b2b, JW-LAPIS-BRACELET')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (100, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (100, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 100;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(100, 108),
(100, 1083);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (100, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(100, 111, 1, 'Industrial Grade Spec'),
(100, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(100, 131, 1, 'Master Carton / Industrial Pail'),
(100, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 100;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (100, 5, 'Natural Deep Blue Lapis Lazuli Grade AAA 8mm Beaded Bracelets (Lot of 60)', 'PB-JW-LAPIS-100', 50, 22,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 10, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 100);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '9', 10500.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 100;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 10, '24', 9400.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 100;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 25, NULL, 8300.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 100;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (101, 0, 'SCAF-SWIVEL-HEAVY', 'Main Warehouse', '', '',
        200, 7, 'catalog/poolbuy/prod_fasteners-160x160.jpg', 0, 1, 3600.0000, 0,
        0, NOW(), 31.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (101, 1, 'Heavy Duty Drop-Forged Swivel Scaffolding Clamp Couplers EN 74-B (Box of 25)', 'Certified Class B scaffolding swivel clamp permitting 360-degree cross-diagonal brace bracing on heavy access towers.', 'Heavy Duty Drop-Forged Swivel Scaffolding Clamp Couplers EN 74-B (Box of 25)', 'Heavy Duty Drop-Forged Swivel Scaffolding Clamp Couplers EN 74-B (Box of 25) - Bulk Wholesale PoolBuy', 'Certified Class B scaffolding swivel clamp permitting 360-degree cross-diagonal brace bracing on heavy access towers.', 'wholesale, bulk, b2b, SCAF-SWIVEL-HEAVY')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (101, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (101, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 101;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(101, 106),
(101, 1062);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (101, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(101, 111, 1, 'Industrial Grade Spec'),
(101, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(101, 131, 1, 'Master Carton / Industrial Pail'),
(101, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 101;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (101, 1, 'Heavy Duty Drop-Forged Swivel Scaffolding Clamp Couplers EN 74-B (Box of 25)', 'PB-SCAF-SWI-101', 75, 33,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 15, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 101);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '14', 3600.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 101;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 15, '39', 3200.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 101;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 40, NULL, 2850.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 101;


INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `variant`, `override`,
                          `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`,
                          `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`,
                          `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`)
VALUES (102, 0, 'MD-EXAM-NITRILE-XL', 'Main Warehouse', '', '',
        250, 7, 'catalog/poolbuy/prod_nitrile-160x160.jpg', 0, 1, 4200.0000, 0,
        0, NOW(), 9.0000, 1, 0, 0, 0,
        1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`), `quantity` = VALUES(`quantity`), `status` = 1, `date_modified` = NOW();

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (102, 1, 'Industrial Chemical & Chemo-Tested Heavy Nitrile Gloves 6 Mil (Case of 1000)', 'Thick 6.0 mil puncture-resistant examination gloves with textured fingertips for heavy industrial chemical handling and clinical cleanrooms.', 'Industrial Chemical & Chemo-Tested Heavy Nitrile Gloves 6 Mil (Case of 1000)', 'Industrial Chemical & Chemo-Tested Heavy Nitrile Gloves 6 Mil (Case of 1000) - Bulk Wholesale PoolBuy', 'Thick 6.0 mil puncture-resistant examination gloves with textured fingertips for heavy industrial chemical handling and clinical cleanrooms.', 'wholesale, bulk, b2b, MD-EXAM-NITRILE-XL')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT IGNORE INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES (102, 0);
INSERT IGNORE INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES (102, 0, 0);

-- Link to parent category and subcategory
DELETE FROM `oc_product_to_category` WHERE `product_id` = 102;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(102, 107),
(102, 1071);

INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 208);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (102, 501);

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(102, 111, 1, 'Industrial Grade Spec'),
(102, 121, 1, 'ISO 9001 / B2B Wholesale Certified'),
(102, 131, 1, 'Master Carton / Industrial Pail'),
(102, 141, 1, 'Non-Perishable Ambient Stability')
ON DUPLICATE KEY UPDATE `text` = VALUES(`text`);


DELETE FROM `oc_poolbuy_pool` WHERE `product_id` = 102;
INSERT INTO `oc_poolbuy_pool` (`product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`,
                               `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`,
                               `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`,
                               `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (102, 4, 'Industrial Chemical & Chemo-Tested Heavy Nitrile Gloves 6 Mil (Case of 1000)', 'PB-MD-EXAM--102', 100, 45,
        'Units', 'INR', 'active', DATE_SUB(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 1,
        1, 20, 0, '7-10 Business Days', 'FOB Factory Warehouse', 0.0000,
        '{"climate_safe":1,"grade":"A"}', 1, NOW(), NOW());

DELETE FROM `oc_poolbuy_pool_tier` WHERE `pool_id` = (SELECT `pool_id` FROM `oc_poolbuy_pool` WHERE `product_id` = 102);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 1, '19', 4200.0000, 1
FROM `oc_poolbuy_pool` WHERE `product_id` = 102;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 20, '49', 3750.0000, 2
FROM `oc_poolbuy_pool` WHERE `product_id` = 102;


INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `max_qty`, `price`, `sort_order`)
SELECT `pool_id`, 50, NULL, 3350.0000, 3
FROM `oc_poolbuy_pool` WHERE `product_id` = 102;


-- 6. Associate existing products with appropriate filters
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 201);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (28, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 202);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (29, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 201);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (31, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (32, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (33, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 302);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (34, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 108);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (35, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 106);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (36, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 102);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 205);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 303);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (40, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 106);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 208);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 306);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (41, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (42, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 204);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (43, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (44, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 105);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 203);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (45, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 109);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (46, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 108);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 307);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 405);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (47, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 101);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (48, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 110);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 206);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 404);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (49, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 107);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 208);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 305);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 402);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (51, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (52, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 104);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (53, 501);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 103);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 207);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 301);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 401);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 403);
INSERT IGNORE INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES (54, 501);