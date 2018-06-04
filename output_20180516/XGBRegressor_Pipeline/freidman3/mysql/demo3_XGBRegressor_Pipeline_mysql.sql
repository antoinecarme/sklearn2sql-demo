-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor_Pipeline
-- Dataset : freidman3
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602152528_L92_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152528_L92_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152528_L92_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180602152528_L92_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.79128122207401 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.9672833084396 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.5310009099975209 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.139967152050499 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman3 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180602152528_L92_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152528_L92_ADS_imp_1_OUT_KEY` ON `TMP_20180602152528_L92_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180602152528_I4U_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152528_I4U_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152528_I4U_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180602152528_I4U_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM `TMP_20180602152528_L92_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180602152528_I4U_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152528_I4U_ADS_sca_2_OUT_KEY` ON `TMP_20180602152528_I4U_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180602152528_MEW_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152528_MEW_XGB_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152528_MEW_XGB_B0 part 2. Populate

INSERT INTO `TMP_20180602152528_MEW_XGB_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE 2 END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.03304983675479889 AS `Estimator` UNION ALL SELECT 2 AS nid, 0.09192007780075073 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`XGB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE 2 END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.03004531003534794 AS `Estimator` UNION ALL SELECT 2 AS nid, 0.08285753428936005 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`XGB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 1.1021127700805664) THEN 3 ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.027313916012644768 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.0781811997294426 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.05488375946879387 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`XGB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 0.6816338896751404) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.20375587046146393) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.024830834940075874 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.07208586484193802 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.03887651488184929 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.06283045560121536 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`XGB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -0.9838693141937256) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -1.3361194133758545) THEN 3 ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.030827684327960014 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.042946554720401764 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.06566087901592255 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`XGB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 0.6816338896751404) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.20375587046146393) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.019770970568060875 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.05906825140118599 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.031149083748459816 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.05134235695004463 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`XGB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.128638505935669) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 0.19130240380764008) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.02235419861972332 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.05528220534324646 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.048120249062776566 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.028293082490563393 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`XGB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 0.20899805426597595) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.40340161323547363) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.015941409394145012 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.04950718954205513 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.025699550285935402 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.04306947439908981 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`XGB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.128638505935669) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 0.19130240380764008) THEN 5 ELSE 6 END ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.018013611435890198 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.045275527983903885 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.039108484983444214 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.023343760520219803 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`XGB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.128638505935669) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -1.3361194133758545) THEN 3 ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.016332341358065605 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.024957163259387016 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.039277832955121994 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`XGB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `XGB_B0`.`KEY`, `XGB_B0`.`Estimator` 
FROM (SELECT `XGB_esu_0`.`KEY` AS `KEY`, `XGB_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_0`.`KEY` AS `KEY`, `XGB_Model_0`.`Estimator` AS `Estimator` 
FROM `XGB_Model_0` UNION ALL SELECT `XGB_Model_1`.`KEY` AS `KEY`, `XGB_Model_1`.`Estimator` AS `Estimator` 
FROM `XGB_Model_1` UNION ALL SELECT `XGB_Model_2`.`KEY` AS `KEY`, `XGB_Model_2`.`Estimator` AS `Estimator` 
FROM `XGB_Model_2` UNION ALL SELECT `XGB_Model_3`.`KEY` AS `KEY`, `XGB_Model_3`.`Estimator` AS `Estimator` 
FROM `XGB_Model_3` UNION ALL SELECT `XGB_Model_4`.`KEY` AS `KEY`, `XGB_Model_4`.`Estimator` AS `Estimator` 
FROM `XGB_Model_4` UNION ALL SELECT `XGB_Model_5`.`KEY` AS `KEY`, `XGB_Model_5`.`Estimator` AS `Estimator` 
FROM `XGB_Model_5` UNION ALL SELECT `XGB_Model_6`.`KEY` AS `KEY`, `XGB_Model_6`.`Estimator` AS `Estimator` 
FROM `XGB_Model_6` UNION ALL SELECT `XGB_Model_7`.`KEY` AS `KEY`, `XGB_Model_7`.`Estimator` AS `Estimator` 
FROM `XGB_Model_7` UNION ALL SELECT `XGB_Model_8`.`KEY` AS `KEY`, `XGB_Model_8`.`Estimator` AS `Estimator` 
FROM `XGB_Model_8` UNION ALL SELECT `XGB_Model_9`.`KEY` AS `KEY`, `XGB_Model_9`.`Estimator` AS `Estimator` 
FROM `XGB_Model_9`) AS `XGB_esu_0`) AS `XGB_B0`) AS `U`

-- Code For temporary table TMP_20180602152528_G0E_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152528_G0E_XGB_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152528_G0E_XGB_B1 part 2. Populate

INSERT INTO `TMP_20180602152528_G0E_XGB_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -0.9463390111923218) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -1.3361194133758545) THEN 3 ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.01674405112862587 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.022688327357172966 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.036280449479818344 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`XGB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < -0.2713426351547241) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -0.9838693141937256) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.03643549606204033 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.001228771056048572 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.016789136454463005 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.031296584755182266 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`XGB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < -0.2713426351547241) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -0.9838693141937256) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.03290235996246338 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.0011161346919834614 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.015239374712109566 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.028287295252084732 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`XGB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.4309000968933105) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < 1.1652297973632812) THEN 3 ELSE 4 END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.006589339580386877 AS `Estimator` UNION ALL SELECT 3 AS nid, 0.026202401146292686 AS `Estimator` UNION ALL SELECT 4 AS nid, 0.01683136634528637 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`XGB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < -0.2713426351547241) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -0.9838693141937256) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.027468154206871986 AS `Estimator` UNION ALL SELECT 3 AS nid, -0.0004146725113969296 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.011774403974413872 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.023228108882904053 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`XGB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 < -0.2713426351547241) THEN 1 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 < -1.0379496812820435) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 < -0.349178671836853) THEN 5 ELSE 6 END END END AS node_id_2 
FROM `TMP_20180602152528_I4U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 1 AS nid, 0.024804571643471718 AS `Estimator` UNION ALL SELECT 3 AS nid, -0.0012562409974634647 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.010588334873318672 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.0209946371614933 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`XGB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `XGB_B1`.`KEY`, `XGB_B1`.`Estimator` 
FROM (SELECT `XGB_esu_1`.`KEY` AS `KEY`, `XGB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_10`.`KEY` AS `KEY`, `XGB_Model_10`.`Estimator` AS `Estimator` 
FROM `XGB_Model_10` UNION ALL SELECT `XGB_Model_11`.`KEY` AS `KEY`, `XGB_Model_11`.`Estimator` AS `Estimator` 
FROM `XGB_Model_11` UNION ALL SELECT `XGB_Model_12`.`KEY` AS `KEY`, `XGB_Model_12`.`Estimator` AS `Estimator` 
FROM `XGB_Model_12` UNION ALL SELECT `XGB_Model_13`.`KEY` AS `KEY`, `XGB_Model_13`.`Estimator` AS `Estimator` 
FROM `XGB_Model_13` UNION ALL SELECT `XGB_Model_14`.`KEY` AS `KEY`, `XGB_Model_14`.`Estimator` AS `Estimator` 
FROM `XGB_Model_14` UNION ALL SELECT `XGB_Model_15`.`KEY` AS `KEY`, `XGB_Model_15`.`Estimator` AS `Estimator` 
FROM `XGB_Model_15`) AS `XGB_esu_1`) AS `XGB_B1`) AS `U`

-- Code For temporary table TMP_20180602152528_L6J_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152528_L6J_XGB_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152528_L6J_XGB_sum part 2. Populate

INSERT INTO `TMP_20180602152528_L6J_XGB_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `XGB_Union` AS 
(SELECT `XGB_EnsembleUnion`.`KEY` AS `KEY`, `XGB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_B0`.`KEY` AS `KEY`, `XGB_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180602152528_MEW_XGB_B0` AS `XGB_B0` UNION ALL SELECT `XGB_B1`.`KEY` AS `KEY`, `XGB_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180602152528_G0E_XGB_B1` AS `XGB_B1`) AS `XGB_EnsembleUnion`)
 SELECT `XGB_sum`.`KEY`, `XGB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `XGB_Union`.`KEY` AS `KEY`, sum(`XGB_Union`.`Estimator`) AS `Estimator` 
FROM `XGB_Union` GROUP BY `XGB_Union`.`KEY`) AS `T`) AS `XGB_sum`) AS `U`

-- Code For temporary table TMP_20180602152528_L6J_XGB_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152528_L6J_XGB_sum_KEY` ON `TMP_20180602152528_L6J_XGB_sum` (`KEY`)

-- Model deployment code

SELECT `XGB_sum`.`KEY` AS `KEY`, `XGB_sum`.`Estimator` + 0.5 AS `Estimator` 
FROM `TMP_20180602152528_L6J_XGB_sum` AS `XGB_sum`