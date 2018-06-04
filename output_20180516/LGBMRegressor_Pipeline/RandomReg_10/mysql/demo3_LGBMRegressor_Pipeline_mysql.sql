-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602144435_21B_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144435_21B_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144435_21B_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180602144435_21B_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.16680947298137394 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.16351271994443456 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.19149292241003152 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.058384844753055345 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.09933205162122274 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.21293121660488037 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.047865568690029614 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.05078698959084227 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.1913199225908187 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.19940405677473352 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180602144435_21B_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602144435_21B_ADS_imp_1_OUT_KEY` ON `TMP_20180602144435_21B_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180602144435_V71_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144435_V71_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144435_V71_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180602144435_V71_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM `TMP_20180602144435_21B_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180602144435_V71_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602144435_V71_ADS_sca_2_OUT_KEY` ON `TMP_20180602144435_V71_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180602144435_SCL_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144435_SCL_LGBM_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144435_SCL_LGBM_B0 part 2. Populate

INSERT INTO `TMP_20180602144435_SCL_LGBM_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.21623320457812215) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 33.01758538832267 AS `Estimator` UNION ALL SELECT 4 AS nid, 16.35685888558626 AS `Estimator` UNION ALL SELECT 5 AS nid, 26.49344970802466 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`LGBM_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.21623320457812215) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 6.281146121025086 AS `Estimator` UNION ALL SELECT 4 AS nid, -9.546544489860535 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.08321702793240549 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`LGBM_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.21623320457812215) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 5.967088474531969 AS `Estimator` UNION ALL SELECT 4 AS nid, -9.069217104911806 AS `Estimator` UNION ALL SELECT 5 AS nid, 0.07905627424518269 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`LGBM_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.2586791747234464) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 5.668734281857809 AS `Estimator` UNION ALL SELECT 4 AS nid, -7.652173786896926 AS `Estimator` UNION ALL SELECT 5 AS nid, 1.203937196917832 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`LGBM_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.45068346401604725) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -6.060863846430072 AS `Estimator` UNION ALL SELECT 6 AS nid, -3.4349961614608766 AS `Estimator` UNION ALL SELECT 7 AS nid, 7.040704530658144 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`LGBM_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.2586791747234464) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 5.338919224739075 AS `Estimator` UNION ALL SELECT 4 AS nid, -7.213532202977401 AS `Estimator` UNION ALL SELECT 5 AS nid, 1.141010937591394 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`LGBM_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.45068346401604725) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -5.75336786530636 AS `Estimator` UNION ALL SELECT 6 AS nid, -3.1847934646159413 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.637478779933669 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`LGBM_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03176193209818628) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.07141511842555943) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -4.028308840898368 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.17185233652591705 AS `Estimator` UNION ALL SELECT 7 AS nid, 7.317475950150262 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`LGBM_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.11568439252545913) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 5.036602361202241 AS `Estimator` UNION ALL SELECT 4 AS nid, -6.427921153759134 AS `Estimator` UNION ALL SELECT 5 AS nid, 1.6815066769009546 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`LGBM_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.3880965409812232) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.418575739852324) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -4.910905361175537 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.2693685668706894 AS `Estimator` UNION ALL SELECT 7 AS nid, 7.770410826206208 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`LGBM_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `LGBM_B0`.`KEY`, `LGBM_B0`.`Estimator` 
FROM (SELECT `LGBM_esu_0`.`KEY` AS `KEY`, `LGBM_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Model_0`.`KEY` AS `KEY`, `LGBM_Model_0`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_0` UNION ALL SELECT `LGBM_Model_1`.`KEY` AS `KEY`, `LGBM_Model_1`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_1` UNION ALL SELECT `LGBM_Model_2`.`KEY` AS `KEY`, `LGBM_Model_2`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_2` UNION ALL SELECT `LGBM_Model_3`.`KEY` AS `KEY`, `LGBM_Model_3`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_3` UNION ALL SELECT `LGBM_Model_4`.`KEY` AS `KEY`, `LGBM_Model_4`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_4` UNION ALL SELECT `LGBM_Model_5`.`KEY` AS `KEY`, `LGBM_Model_5`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_5` UNION ALL SELECT `LGBM_Model_6`.`KEY` AS `KEY`, `LGBM_Model_6`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_6` UNION ALL SELECT `LGBM_Model_7`.`KEY` AS `KEY`, `LGBM_Model_7`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_7` UNION ALL SELECT `LGBM_Model_8`.`KEY` AS `KEY`, `LGBM_Model_8`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_8` UNION ALL SELECT `LGBM_Model_9`.`KEY` AS `KEY`, `LGBM_Model_9`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_9`) AS `LGBM_esu_0`) AS `LGBM_B0`) AS `U`

-- Code For temporary table TMP_20180602144435_F2V_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144435_F2V_LGBM_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144435_F2V_LGBM_B1 part 2. Populate

INSERT INTO `TMP_20180602144435_F2V_LGBM_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03176193209818628) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.07141511842555943) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -3.8286320564074394 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.19408844918012622 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.925470465705509 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`LGBM_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.7485514689090479) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -6.171608558439074 AS `Estimator` UNION ALL SELECT 6 AS nid, -2.5980403355189736 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.52738412734001 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`LGBM_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.3880965409812232) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -4.589754547278086 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.5462024084159306 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.953922884030776 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`LGBM_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.03176193209818628) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.07141511842555943) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -3.583646340247913 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.2481087422370911 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.419049066588993 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`LGBM_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.7485514689090479) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -5.778139722914923 AS `Estimator` UNION ALL SELECT 6 AS nid, -2.3511506770338335 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.037843723643211 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`LGBM_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= 0.3164803121911138) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.11568439252545913) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM `TMP_20180602144435_V71_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS nid, 4.316606424252192 AS `Estimator` UNION ALL SELECT 4 AS nid, -5.71238597097068 AS `Estimator` UNION ALL SELECT 5 AS nid, 1.721952373640878 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`LGBM_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `LGBM_B1`.`KEY`, `LGBM_B1`.`Estimator` 
FROM (SELECT `LGBM_esu_1`.`KEY` AS `KEY`, `LGBM_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Model_10`.`KEY` AS `KEY`, `LGBM_Model_10`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_10` UNION ALL SELECT `LGBM_Model_11`.`KEY` AS `KEY`, `LGBM_Model_11`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_11` UNION ALL SELECT `LGBM_Model_12`.`KEY` AS `KEY`, `LGBM_Model_12`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_12` UNION ALL SELECT `LGBM_Model_13`.`KEY` AS `KEY`, `LGBM_Model_13`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_13` UNION ALL SELECT `LGBM_Model_14`.`KEY` AS `KEY`, `LGBM_Model_14`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_14` UNION ALL SELECT `LGBM_Model_15`.`KEY` AS `KEY`, `LGBM_Model_15`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_15`) AS `LGBM_esu_1`) AS `LGBM_B1`) AS `U`

-- Code For temporary table TMP_20180602144435_UA2_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144435_UA2_LGBM_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144435_UA2_LGBM_sum part 2. Populate

INSERT INTO `TMP_20180602144435_UA2_LGBM_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `LGBM_Union` AS 
(SELECT `LGBM_EnsembleUnion`.`KEY` AS `KEY`, `LGBM_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_B0`.`KEY` AS `KEY`, `LGBM_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180602144435_SCL_LGBM_B0` AS `LGBM_B0` UNION ALL SELECT `LGBM_B1`.`KEY` AS `KEY`, `LGBM_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180602144435_F2V_LGBM_B1` AS `LGBM_B1`) AS `LGBM_EnsembleUnion`)
 SELECT `LGBM_sum`.`KEY`, `LGBM_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `LGBM_Union`.`KEY` AS `KEY`, sum(`LGBM_Union`.`Estimator`) AS `Estimator` 
FROM `LGBM_Union` GROUP BY `LGBM_Union`.`KEY`) AS `T`) AS `LGBM_sum`) AS `U`

-- Code For temporary table TMP_20180602144435_UA2_LGBM_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180602144435_UA2_LGBM_sum_KEY` ON `TMP_20180602144435_UA2_LGBM_sum` (`KEY`)

-- Model deployment code

SELECT `LGBM_sum`.`KEY` AS `KEY`, `LGBM_sum`.`Estimator` AS `Estimator` 
FROM `TMP_20180602144435_UA2_LGBM_sum` AS `LGBM_sum`