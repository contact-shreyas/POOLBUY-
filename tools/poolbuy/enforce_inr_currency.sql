USE `opencart`;

-- Disable all currencies except INR
UPDATE `oc_currency` SET `status` = 0 WHERE `code` != 'INR';

-- Ensure INR is enabled as primary base currency (value = 1.0) with clean Rupee symbol
UPDATE `oc_currency`
SET `status` = 1,
    `value` = 1.00000000,
    `symbol_left` = UNHEX('E282B9'),
    `symbol_right` = '',
    `decimal_place` = 2,
    `date_modified` = NOW()
WHERE `code` = 'INR';

-- Set OpenCart default storefront currency to INR
UPDATE `oc_setting` SET `value` = 'INR' WHERE `code` = 'config' AND `key` = 'config_currency';
UPDATE `oc_setting` SET `value` = '0' WHERE `code` = 'config' AND `key` = 'config_currency_auto';

-- Set PoolBuy module currency to INR
UPDATE `oc_setting` SET `value` = 'INR' WHERE `code` = 'module_poolbuy' AND `key` = 'module_poolbuy_currency_code';
UPDATE `oc_setting` SET `value` = UNHEX('E282B9') WHERE `code` = 'module_poolbuy' AND `key` = 'module_poolbuy_currency_symbol';

-- Ensure every pool in the database is in INR
UPDATE `oc_poolbuy_pool` SET `currency_code` = 'INR';

-- Remove any test/odd currency pools
DELETE FROM `oc_poolbuy_pool` WHERE `reference` LIKE 'PB-CUR-%';
