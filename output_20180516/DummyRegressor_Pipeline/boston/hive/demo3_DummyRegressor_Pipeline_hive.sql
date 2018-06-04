-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor_Pipeline
-- Dataset : boston
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145354_1yo_ads_imp_1_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180602145354_1yo_ads_imp_1_out` STORED AS ORC AS SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.`impter_2`, `ADS_imp_1_OUT`.`impter_3`, `ADS_imp_1_OUT`.`impter_4`, `ADS_imp_1_OUT`.`impter_5`, `ADS_imp_1_OUT`.`impter_6`, `ADS_imp_1_OUT`.`impter_7`, `ADS_imp_1_OUT`.`impter_8`, `ADS_imp_1_OUT`.`impter_9`, `ADS_imp_1_OUT`.`impter_10`, `ADS_imp_1_OUT`.`impter_11`, `ADS_imp_1_OUT`.`impter_12`, `ADS_imp_1_OUT`.`impter_13`, `ADS_imp_1_OUT`.`impter_14` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.3688565346534656 ELSE `ADS`.`Feature_0` END AS `impter_2`, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 12.113861386138614 ELSE `ADS`.`Feature_1` END AS `impter_3`, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 10.983613861386127 ELSE `ADS`.`Feature_2` END AS `impter_4`, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.07178217821782178 ELSE `ADS`.`Feature_3` END AS `impter_5`, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.5541153465346542 ELSE `ADS`.`Feature_4` END AS `impter_6`, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.299148514851482 ELSE `ADS`.`Feature_5` END AS `impter_7`, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 67.85049504950491 ELSE `ADS`.`Feature_6` END AS `impter_8`, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.8198420792079233 ELSE `ADS`.`Feature_7` END AS `impter_9`, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.55940594059406 ELSE `ADS`.`Feature_8` END AS `impter_10`, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 405.8019801980198 ELSE `ADS`.`Feature_9` END AS `impter_11`, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.40915841584154 ELSE `ADS`.`Feature_10` END AS `impter_12`, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 358.3797277227715 ELSE `ADS`.`Feature_11` END AS `impter_13`, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.626584158415856 ELSE `ADS`.`Feature_12` END AS `impter_14` 
FROM `boston` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180602145354_1yo_ads_imp_1_out part 2. Populate

SELECT * FROM `tmp_20180602145354_1yo_ads_imp_1_out`

-- Code For temporary table tmp_20180602145354_i47_ads_sca_2_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180602145354_i47_ads_sca_2_out` STORED AS ORC AS SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.`scaler_2`, `ADS_sca_2_OUT`.`scaler_3`, `ADS_sca_2_OUT`.`scaler_4`, `ADS_sca_2_OUT`.`scaler_5`, `ADS_sca_2_OUT`.`scaler_6`, `ADS_sca_2_OUT`.`scaler_7`, `ADS_sca_2_OUT`.`scaler_8`, `ADS_sca_2_OUT`.`scaler_9`, `ADS_sca_2_OUT`.`scaler_10`, `ADS_sca_2_OUT`.`scaler_11`, `ADS_sca_2_OUT`.`scaler_12`, `ADS_sca_2_OUT`.`scaler_13`, `ADS_sca_2_OUT`.`scaler_14` 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.`impter_2` AS DOUBLE) - 3.3688565346534656) / 7.9935268095335426 AS `scaler_2`, (CAST(`ADS_imp_1_OUT`.`impter_3` AS DOUBLE) - 12.113861386138614) / 24.187656534977855 AS `scaler_3`, (CAST(`ADS_imp_1_OUT`.`impter_4` AS DOUBLE) - 10.983613861386127) / 6.8177472477399235 AS `scaler_4`, (CAST(`ADS_imp_1_OUT`.`impter_5` AS DOUBLE) - 0.07178217821782178) / 0.2581269011709685 AS `scaler_5`, (CAST(`ADS_imp_1_OUT`.`impter_6` AS DOUBLE) - 0.5541153465346542) / 0.11800809760824685 AS `scaler_6`, (CAST(`ADS_imp_1_OUT`.`impter_7` AS DOUBLE) - 6.299148514851482) / 0.7060417397996938 AS `scaler_7`, (CAST(`ADS_imp_1_OUT`.`impter_8` AS DOUBLE) - 67.85049504950491) / 28.107403181658597 AS `scaler_8`, (CAST(`ADS_imp_1_OUT`.`impter_9` AS DOUBLE) - 3.8198420792079233) / 2.0933726902675627 AS `scaler_9`, (CAST(`ADS_imp_1_OUT`.`impter_10` AS DOUBLE) - 9.55940594059406) / 8.728803783375893 AS `scaler_10`, (CAST(`ADS_imp_1_OUT`.`impter_11` AS DOUBLE) - 405.8019801980198) / 169.7858592930543 AS `scaler_11`, (CAST(`ADS_imp_1_OUT`.`impter_12` AS DOUBLE) - 18.40915841584154) / 2.166792648327246 AS `scaler_12`, (CAST(`ADS_imp_1_OUT`.`impter_13` AS DOUBLE) - 358.3797277227715) / 90.64691624336051 AS `scaler_13`, (CAST(`ADS_imp_1_OUT`.`impter_14` AS DOUBLE) - 12.626584158415856) / 7.167938324035357 AS `scaler_14` 
FROM `tmp_20180602145354_1yo_ads_imp_1_out` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180602145354_i47_ads_sca_2_out part 2. Populate

SELECT * FROM `tmp_20180602145354_i47_ads_sca_2_out`

-- Model deployment code

WITH `dummy_class_reg_cte` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 22.5789603960396 AS `Constant` 
FROM `tmp_20180602145354_i47_ads_sca_2_out` AS `ADS_sca_2_OUT`)
 SELECT `dummy_class_reg_cte`.`KEY` AS `KEY`, `dummy_class_reg_cte`.`Constant` AS `Estimator` 
FROM `dummy_class_reg_cte`