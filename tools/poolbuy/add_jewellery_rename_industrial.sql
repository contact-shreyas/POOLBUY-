-- ==============================================================================
-- PoolBuy B2B Wholesale Marketplace: Add Jewellery & Rename Industrial
-- ==============================================================================

USE `opencart`;

-- ------------------------------------------------------------------------------
-- 1. Rename Categories (Remove "Industrial") & Add Category 108: Jewellery & Accessories
-- ------------------------------------------------------------------------------

-- Category 101: Commercial Equipment & Pumps
UPDATE `oc_category_description` SET
    `name` = 'Commercial Equipment & Pumps',
    `meta_title` = 'Commercial Equipment & Pumps - PoolBuy B2B Wholesale',
    `meta_description` = 'Wholesale procurement pools for commercial water pumps, drainage systems, and filtration units.'
WHERE `category_id` = 101 AND `language_id` = 1;

-- Category 106: Hardware & Fasteners
UPDATE `oc_category_description` SET
    `name` = 'Hardware & Fasteners',
    `meta_title` = 'Hardware & Fasteners - PoolBuy B2B Wholesale',
    `meta_description` = 'Wholesale procurement pools for high-tensile structural fasteners, scaffolding clamps, and steel wire ropes.'
WHERE `category_id` = 106 AND `language_id` = 1;

-- Category 108: Jewellery & Accessories
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`)
VALUES (108, 'catalog/poolbuy/cat_jewellery.jpg', 0, 8, 1)
ON DUPLICATE KEY UPDATE `image` = 'catalog/poolbuy/cat_jewellery.jpg', `status` = 1;

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`)
VALUES (108, 1, 'Jewellery & Accessories', '<p>Wholesale procurement pools for 925 sterling silver chains, gold vermeil moissanite rings, and natural gemstone bracelets.</p>', 'Jewellery & Accessories - PoolBuy B2B Wholesale', 'Bulk procurement pools for fine and fashion jewellery.', 'jewellery, sterling silver, gold vermeil, moissanite, bracelets')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES (108, 108, 0)
ON DUPLICATE KEY UPDATE `level` = 0;

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES (108, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES (108, 0, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

-- ------------------------------------------------------------------------------
-- 2. Rename Existing Products to Remove "Industrial"
-- ------------------------------------------------------------------------------
UPDATE `oc_product_description` SET 
    `name` = 'Titan-X Professional Series 5HP Submersible Drainage Pump',
    `meta_title` = 'Titan-X Professional Series 5HP Submersible Drainage Pump'
WHERE `product_id` = 28 AND `language_id` = 1;

UPDATE `oc_product_description` SET 
    `name` = 'Commercial Multistage High-Flow Water Filtration Vessels (Lot of 4)',
    `meta_title` = 'Commercial Multistage High-Flow Water Filtration Vessels (Lot of 4)'
WHERE `product_id` = 29 AND `language_id` = 1;

UPDATE `oc_product_description` SET 
    `name` = 'Rugged Ripstop Multi-Pocket Cargo Workwear Utility Trousers',
    `meta_title` = 'Rugged Ripstop Multi-Pocket Cargo Workwear Utility Trousers'
WHERE `product_id` = 44 AND `language_id` = 1;

UPDATE `oc_product_description` SET 
    `name` = 'Commercial Cast Machine Stretch Film Wrap Rolls (4-Roll Case)',
    `meta_title` = 'Commercial Cast Machine Stretch Film Wrap Rolls (4-Roll Case)'
WHERE `product_id` = 46 AND `language_id` = 1;

UPDATE `oc_product_description` SET 
    `name` = 'Commercial Heavy-Duty Two-Part Epoxy Floor Coating Kit (20L Drum Set)',
    `meta_title` = 'Commercial Heavy-Duty Two-Part Epoxy Floor Coating Kit (20L Drum Set)'
WHERE `product_id` = 48 AND `language_id` = 1;

UPDATE `oc_product_description` SET 
    `name` = 'High-Purity Polyaluminium Chloride (PAC 30%) Water Clarifier (50kg Bag)',
    `meta_title` = 'High-Purity Polyaluminium Chloride (PAC 30%) Water Clarifier (50kg Bag)'
WHERE `product_id` = 49 AND `language_id` = 1;

-- ------------------------------------------------------------------------------
-- 3. Add Reusable Jewellery Option Values
-- ------------------------------------------------------------------------------
-- Option 25: Chain Length (select)
INSERT INTO `oc_option` (`option_id`, `type`, `validation`, `sort_order`) VALUES
(25, 'select', NULL, 7)
ON DUPLICATE KEY UPDATE `type` = 'select';

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(25, 1, 'Chain Length')
ON DUPLICATE KEY UPDATE `name` = 'Chain Length';

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(701, 25, 1), (702, 25, 2), (703, 25, 3), (704, 25, 4)
ON DUPLICATE KEY UPDATE `option_id` = 25;

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(701, 1, 25, '18 Inch (45 cm)'),
(702, 1, 25, '20 Inch (50 cm)'),
(703, 1, 25, '22 Inch (55 cm)'),
(704, 1, 25, '24 Inch (60 cm)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Additional Option Values for Size (Option 11): US Ring Sizes 5 to 10
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(113, 11, 13), (114, 11, 14), (115, 11, 15), (116, 11, 16), (117, 11, 17), (118, 11, 18)
ON DUPLICATE KEY UPDATE `option_id` = 11;

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(113, 1, 11, 'Ring Size US 5 (15.7mm)'),
(114, 1, 11, 'Ring Size US 6 (16.5mm)'),
(115, 1, 11, 'Ring Size US 7 (17.3mm)'),
(116, 1, 11, 'Ring Size US 8 (18.1mm)'),
(117, 1, 11, 'Ring Size US 9 (18.9mm)'),
(118, 1, 11, 'Ring Size US 10 (19.8mm)')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Additional Option Values for Finish (Option 21): Jewellery Finishes
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(307, 21, 7), (308, 21, 8), (309, 21, 9)
ON DUPLICATE KEY UPDATE `option_id` = 21;

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(307, 1, 21, 'Solid White Rhodium Polished'),
(308, 1, 21, '18K Yellow Gold Vermeil (3-Micron)'),
(309, 1, 21, '14K Rose Gold Vermeil')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- Option 26: Gemstone Variety (select)
INSERT INTO `oc_option` (`option_id`, `type`, `validation`, `sort_order`) VALUES
(26, 'select', NULL, 8)
ON DUPLICATE KEY UPDATE `type` = 'select';

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(26, 1, 'Gemstone Variety')
ON DUPLICATE KEY UPDATE `name` = 'Gemstone Variety';

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `sort_order`) VALUES
(801, 26, 1), (802, 26, 2), (803, 26, 3), (804, 26, 4), (805, 26, 5)
ON DUPLICATE KEY UPDATE `option_id` = 26;

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(801, 1, 26, 'Matte Black Onyx & Volcanic Lava'),
(802, 1, 26, 'Golden Tiger Eye AAA'),
(803, 1, 26, 'Royal Blue Lapis Lazuli'),
(804, 1, 26, 'Brazilian Rose Quartz'),
(805, 1, 26, 'African Purple Amethyst')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`);

-- ------------------------------------------------------------------------------
-- 4. Insert 3 New Wholesale Jewellery Products (52, 53, 54)
-- ------------------------------------------------------------------------------
INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `rating`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(52, 0, 'JW-SILV-CUBAN', '', 500, 7, 'catalog/poolbuy/prod_silver_chain.jpg', 0, 1, 18500.0000, 0, 0, CURDATE(), 0.8, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(53, 0, 'JW-MOISS-RING', '', 400, 7, 'catalog/poolbuy/prod_moiss_ring.jpg', 0, 1, 24000.0000, 0, 0, CURDATE(), 0.5, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW()),
(54, 0, 'JW-GEM-BRACELET', '', 600, 7, 'catalog/poolbuy/prod_gem_bracelet.jpg', 0, 1, 9500.0000, 0, 0, CURDATE(), 2.2, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `model` = VALUES(`model`), `price` = VALUES(`price`), `image` = VALUES(`image`), `status` = 1;

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(52, 1, '925 Solid Sterling Silver Cuban Link Chain Necklaces (Wholesale Lot of 20)', '<p>Solid 925 sterling silver Italian-crafted Cuban link chains. Hallmarked 925 with double-locking box clasp and anti-tarnish micro E-coat protection.</p>', 'jewellery, silver chain, 925 sterling silver, cuban link', '925 Solid Sterling Silver Cuban Link Chain Necklaces (Wholesale Lot of 20)', 'Wholesale lot of 20 hallmarked 925 sterling silver cuban link chains.', 'silver chain, 925 silver, cuban necklace'),
(53, 1, '18K Gold Vermeil Solitaire Moissanite Engagement & Cocktail Rings (Lot of 50)', '<p>1.0 Carat VVS1 D-color brilliant round cut moissanite set in solid 925 sterling silver with 3-micron 18K yellow gold vermeil. Hand-set 4-prong crown setting with individual GRA certificates.</p>', 'moissanite ring, gold vermeil, wholesale jewellery, cocktail ring', '18K Gold Vermeil Solitaire Moissanite Engagement & Cocktail Rings (Lot of 50)', 'Wholesale lot of 50 certified 1.0ct moissanite rings in 18K gold vermeil.', 'moissanite ring, gold vermeil, 925 silver'),
(54, 1, 'Natural Semi-Precious Beaded Gemstone Stretch Bracelets (Assorted Lot of 100)', '<p>100% genuine Grade AAA natural untreated semi-precious stone beads strung on high-tensile dual Japanese elastic cord. Includes Black Onyx, Tiger Eye, Lapis Lazuli, and Amethyst with individual velvet gift pouches.</p>', 'gemstone bracelet, beaded bracelet, healing crystals, natural stone', 'Natural Semi-Precious Beaded Gemstone Stretch Bracelets (Assorted Lot of 100)', 'Wholesale lot of 100 natural gemstone beaded stretch bracelets.', 'gemstone bracelet, natural stone, onyx, tiger eye')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`);

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(52, 0), (53, 0), (54, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(52, 0, 0), (53, 0, 0), (54, 0, 0)
ON DUPLICATE KEY UPDATE `store_id` = 0;

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(52, 108), (53, 108), (54, 108)
ON DUPLICATE KEY UPDATE `category_id` = 108;

-- ------------------------------------------------------------------------------
-- 5. Insert Specifications for Jewellery Products (oc_product_attribute)
-- ------------------------------------------------------------------------------
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
-- #52 Silver Cuban Chains
(52, 111, 1, 'Solid 925 Sterling Silver (92.5% Fine Silver, Hallmarked)'),
(52, 112, 1, 'Mirror Polished with Anti-Tarnish E-Coating'),
(52, 113, 1, 'Cuban Curb Flat Diamond-Cut Links with Box Safety Clasp'),
(52, 114, 1, 'Width: 7mm, Thickness: 2.8mm, Lengths: 18" to 24"'),
(52, 121, 1, 'Bureau of Indian Standards (BIS 925 Hallmarked)'),
(52, 122, 1, 'ISO 9001:2015, Nickel-Free & Lead-Free Hypoallergenic'),
(52, 131, 1, 'Lot of 20 Chains in Anti-Tarnish Sealed Sleeves'),
(52, 132, 1, 'Master Presentation Case of 5 Lots (100 Chains total)'),
(52, 141, 1, 'Indefinite Shelf Life (Non-perishable precious metal)'),
(52, 142, 1, 'Store in dry ambient conditions in anti-tarnish velvet boxes'),
(52, 143, 1, 'Keep sealed in protective polybags away from sulfur fumes and chemicals'),

-- #53 Moissanite Rings
(53, 105, 1, '1.0 Carat Equivalent VVS1 D-Color Brilliant Round Cut Moissanite'),
(53, 111, 1, 'Solid 925 Sterling Silver Base with 3-Micron 18K Gold Vermeil'),
(53, 112, 1, 'Heavy Micron Gold Vermeil / Platinum Rhodium Plated'),
(53, 113, 1, 'Hand-Set 4-Prong Crown Setting with Micro-Pavé Shank'),
(53, 121, 1, 'Global Gemological Research Academy (GRA) Certificate with Laser Inscription'),
(53, 122, 1, 'BIS Hallmarked Solid Silver Core'),
(53, 131, 1, 'Display Tray of 50 Rings Assorted Sizes (US 5 to 10)'),
(53, 132, 1, 'Velvet Presentation Ring Box with Individual GRA Warranty Cards'),
(53, 141, 1, 'Indefinite Shelf Life (Fine precious jewellery)'),
(53, 142, 1, 'Clean dry storage; room temperature (15°C to 35°C)'),
(53, 143, 1, 'Store in compartmentalized velvet display trays'),

-- #54 Gemstone Bracelets
(54, 105, 1, '100% Genuine Natural Grade AAA Untreated Mineral Gemstones'),
(54, 111, 1, 'Natural Black Onyx, Tiger Eye, Lapis Lazuli, Rose Quartz, Amethyst'),
(54, 112, 1, 'High-Gloss Tumble Polished Round Spheres (Smooth Finish)'),
(54, 113, 1, 'Dual-Strand 1.0mm Japanese High-Elasticity Memory Cord (1000g Tensile)'),
(54, 121, 1, 'Certified Natural Gemological Laboratory Tested'),
(54, 122, 1, 'Ethically Sourced & Conflict-Free Minerals'),
(54, 131, 1, 'Lot of 100 Bracelets with Individual Satin Drawstring Pouches'),
(54, 132, 1, 'Bulk Master Carton: 35 x 25 x 20 cm (2.8 kg)'),
(54, 141, 1, 'Indefinite Shelf Life (Durable natural stone & synthetic cord)'),
(54, 142, 1, 'Store away from extreme heat, direct sunlight, and sharp edges'),
(54, 143, 1, 'Store in dry cartons elevated on shelves');

-- ------------------------------------------------------------------------------
-- 6. Insert Product Options for Jewellery (oc_product_option & oc_product_option_value)
-- ------------------------------------------------------------------------------

-- Product 52: Chain Length (Option 25) & Metal Finish (Option 21)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1521, 52, 25, '', 1),
(1522, 52, 21, '', 1)
ON DUPLICATE KEY UPDATE `required` = 1;

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(261, 1521, 52, 25, 701, 100, 1, -1000.0000, '+', 0, '+', 0.00000000, '+'), -- 18" (-1000)
(262, 1521, 52, 25, 702, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),       -- 20"
(263, 1521, 52, 25, 703, 150, 1, 1200.0000, '+', 0, '+', 0.00000000, '+'),     -- 22" (+1200)
(264, 1521, 52, 25, 704, 100, 1, 2400.0000, '+', 0, '+', 0.00000000, '+'),     -- 24" (+2400)
(265, 1522, 52, 21, 307, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),        -- Rhodium Polished
(266, 1522, 52, 21, 308, 150, 1, 1500.0000, '+', 0, '+', 0.00000000, '+'),     -- 18K Gold Vermeil (+1500)
(267, 1522, 52, 21, 309, 100, 1, 1500.0000, '+', 0, '+', 0.00000000, '+')      -- Rose Gold Vermeil (+1500)
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);

-- Product 53: Ring Size (Option 11) & Metal Finish (Option 21)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1531, 53, 11, '', 1),
(1532, 53, 21, '', 1)
ON DUPLICATE KEY UPDATE `required` = 1;

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(268, 1531, 53, 11, 113, 50, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 5
(269, 1531, 53, 11, 114, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 6
(270, 1531, 53, 11, 115, 120, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 7
(271, 1531, 53, 11, 116, 80, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 8
(272, 1531, 53, 11, 117, 40, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 9
(273, 1531, 53, 11, 118, 30, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- US 10
(274, 1532, 53, 21, 308, 250, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- 18K Gold Vermeil
(275, 1532, 53, 21, 307, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+')  -- White Rhodium
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);

-- Product 54: Gemstone Variety (Option 26)
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1541, 54, 26, '', 1)
ON DUPLICATE KEY UPDATE `required` = 1;

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(276, 1541, 54, 26, 801, 150, 1, 0.0000, '+', 0, '+', 0.00000000, '+'), -- Black Onyx
(277, 1541, 54, 26, 802, 150, 1, 500.0000, '+', 0, '+', 0.00000000, '+'),  -- Tiger Eye
(278, 1541, 54, 26, 803, 100, 1, 800.0000, '+', 0, '+', 0.00000000, '+'),  -- Lapis Lazuli
(279, 1541, 54, 26, 804, 100, 1, 500.0000, '+', 0, '+', 0.00000000, '+'),  -- Rose Quartz
(280, 1541, 54, 26, 805, 100, 1, 600.0000, '+', 0, '+', 0.00000000, '+')   -- Amethyst
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);

-- ------------------------------------------------------------------------------
-- 7. Insert Pools for Jewellery & Update Pool Titles
-- ------------------------------------------------------------------------------
UPDATE `oc_poolbuy_pool` SET `title` = 'Titan-X Professional Series 5HP Submersible Drainage Pump' WHERE `pool_id` = 1;
UPDATE `oc_poolbuy_pool` SET `title` = 'Commercial Multistage High-Flow Water Filtration Vessels (Lot of 4)' WHERE `pool_id` = 2;

-- Pool 12: Cuban Chains Pool
INSERT INTO `oc_poolbuy_pool` (`pool_id`, `product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`, `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`, `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`, `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (12, 52, 4, '925 Solid Sterling Silver Cuban Link Chain Necklaces (Wholesale Lot of 20)', 'PB-JW-5201', 20, 14, 'Lots (20 Chains)', 'INR', 'active', NOW(), DATE_ADD(NOW(), INTERVAL 14 DAY), 1, 1, 1, 10, '3-5 Business Days', 'Insured Courier Delivery', 0.0000, '{\"Metal\":\"Solid 925 Sterling Silver\",\"Hallmark\":\"BIS 925 Certified\",\"Clasp\":\"Double-Locking Box Clasp\",\"Lot Size\":\"20 Necklaces per Lot\",\"Shelf Life\":\"Indefinite (Anti-Tarnish Sealed)\"}', 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `title` = VALUES(`title`), `status` = 'active', `attributes` = VALUES(`attributes`);

INSERT INTO `oc_poolbuy_pool_tier` (`pool_id`, `min_qty`, `price`) VALUES
(12, 1, 18500.0000),
(12, 5, 16800.0000),
(12, 10, 15200.0000)
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);

-- Pool 13: Moissanite Rings Pool
INSERT INTO `oc_poolbuy_pool` (`pool_id`, `product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`, `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`, `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`, `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (13, 53, 4, '18K Gold Vermeil Solitaire Moissanite Engagement & Cocktail Rings (Lot of 50)', 'PB-JW-5301', 10, 7, 'Lots (50 Rings)', 'INR', 'active', NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY), 1, 1, 1, 5, '4-7 Business Days', 'Insured Armored Express', 0.0000, '{\"Center Stone\":\"1.0ct VVS1 D-Color Moissanite\",\"Base Metal\":\"925 Silver with 3µm 18K Gold Vermeil\",\"Certification\":\"Individual GRA Certificate\",\"Lot Size\":\"50 Rings (Assorted US 5-10)\",\"Shelf Life\":\"Indefinite\"}', 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `title` = VALUES(`title`), `status` = 'active', `attributes` = VALUES(`attributes`);

-- Pool 14: Gemstone Bracelets Pool
INSERT INTO `oc_poolbuy_pool` (`pool_id`, `product_id`, `seller_id`, `title`, `reference`, `moq_target`, `reserved_qty`, `unit_label`, `currency_code`, `status`, `date_start`, `date_end`, `retro_pricing`, `allow_full_moq_buy`, `min_qty_per_buyer`, `max_qty_per_buyer`, `lead_time`, `shipping_terms`, `freight_total`, `attributes`, `climate_safe`, `date_added`, `date_modified`)
VALUES (14, 54, 4, 'Natural Semi-Precious Beaded Gemstone Stretch Bracelets (Assorted Lot of 100)', 'PB-JW-5401', 15, 9, 'Lots (100 Bracelets)', 'INR', 'active', NOW(), DATE_ADD(NOW(), INTERVAL 12 DAY), 1, 1, 1, 8, '2-4 Business Days', 'Express Air Freight', 0.0000, '{\"Beads\":\"Grade AAA Natural Minerals\",\"Variety\":\"Onyx, Tiger Eye, Lapis, Rose Quartz, Amethyst\",\"Cord\":\"Dual High-Memory Japanese Stretch Cord\",\"Lot Size\":\"100 Bracelets in Velvet Pouches\",\"Shelf Life\":\"Indefinite\"}', 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE `title` = VALUES(`title`), `status` = 'active', `attributes` = VALUES(`attributes`);
