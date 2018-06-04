-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor_Pipeline
-- Dataset : freidman3
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602152248_EOQ_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152248_EOQ_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152248_EOQ_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180602152248_EOQ_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.79128122207401 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.9672833084396 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.5310009099975209 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.139967152050499 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman3 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180602152248_EOQ_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152248_EOQ_ADS_imp_1_OUT_KEY` ON `TMP_20180602152248_EOQ_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180602152248_F1U_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152248_F1U_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152248_F1U_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180602152248_F1U_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM `TMP_20180602152248_EOQ_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180602152248_F1U_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152248_F1U_ADS_sca_2_OUT_KEY` ON `TMP_20180602152248_F1U_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180602152248_OW3_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152248_OW3_LGBM_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152248_OW3_LGBM_B0 part 2. Populate

INSERT INTO `TMP_20180602152248_OW3_LGBM_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, 1.347595450430665 AS `Estimator` UNION ALL SELECT 6 AS nid, 1.3612138719364468 AS `Estimator` UNION ALL SELECT 7 AS nid, 1.3687826343726268 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`LGBM_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.012956810660571569 AS `Estimator` UNION ALL SELECT 6 AS nid, -1.9310298375785352e-05 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.007171014051786379 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`LGBM_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.012308970230099347 AS `Estimator` UNION ALL SELECT 6 AS nid, -1.8344720869901636e-05 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.006812463592933982 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`LGBM_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.011693521409428545 AS `Estimator` UNION ALL SELECT 6 AS nid, -1.7427608725570497e-05 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.006471840292215348 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`LGBM_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.20899805514978842) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.01110884565028495 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.006405732370654328 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.00011649514427003654 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`LGBM_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.010553403340634846 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.0002020732409575777 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.005943816204212214 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`LGBM_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.20899805514978842) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.010025733288022734 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.00589068644597622 AS `Estimator` UNION ALL SELECT 7 AS nid, -6.627479325170103e-05 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`LGBM_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.00952444663714795 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.00035885490831874664 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.005461824391233294 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`LGBM_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.20899805514978842) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.0090482240897559 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.005420072271307516 AS `Estimator` UNION ALL SELECT 7 AS nid, -0.0002221693163332732 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`LGBM_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.008595812897242252 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.0004910105373710394 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.005021665638043104 AS `Estimator`) AS `Values`), 
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

-- Code For temporary table TMP_20180602152248_EAT_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152248_EAT_LGBM_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152248_EAT_LGBM_B1 part 2. Populate

INSERT INTO `TMP_20180602152248_EAT_LGBM_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.20899805514978842) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.008166022243953887 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.004989863269697203 AS `Estimator` UNION ALL SELECT 7 AS nid, -0.00035428743728477025 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`LGBM_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.2702165971766578) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.007757721060798282 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.0006014356145723945 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.004619534037958242 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`LGBM_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.8189187564832935) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.4017176226368672) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.00743617479290281 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.001340077928311768 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.004850034420623591 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`LGBM_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.35891575393575154) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.007244773244573958 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.005796788463538344 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.0006651591673191335 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`LGBM_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.8189187564832935) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.4017176226368672) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.007107818481468019 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.0009861680845330869 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.004472992588814936 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`LGBM_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.778099550330666) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.35891575393575154) THEN 6 ELSE 7 END END AS node_id_2 
FROM `TMP_20180602152248_F1U_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.006774924620099012 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.005467539610849186 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.0005942580447456724 AS `Estimator`) AS `Values`), 
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

-- Code For temporary table TMP_20180602152248_DN2_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602152248_DN2_LGBM_sum` (
	`KEY` BIGINT NOT NULL, 
	`Estimator` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602152248_DN2_LGBM_sum part 2. Populate

INSERT INTO `TMP_20180602152248_DN2_LGBM_sum` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `LGBM_Union` AS 
(SELECT `LGBM_EnsembleUnion`.`KEY` AS `KEY`, `LGBM_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_B0`.`KEY` AS `KEY`, `LGBM_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180602152248_OW3_LGBM_B0` AS `LGBM_B0` UNION ALL SELECT `LGBM_B1`.`KEY` AS `KEY`, `LGBM_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180602152248_EAT_LGBM_B1` AS `LGBM_B1`) AS `LGBM_EnsembleUnion`)
 SELECT `LGBM_sum`.`KEY`, `LGBM_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `LGBM_Union`.`KEY` AS `KEY`, sum(`LGBM_Union`.`Estimator`) AS `Estimator` 
FROM `LGBM_Union` GROUP BY `LGBM_Union`.`KEY`) AS `T`) AS `LGBM_sum`) AS `U`

-- Code For temporary table TMP_20180602152248_DN2_LGBM_sum part 3. Create Index 

CREATE INDEX `ix_TMP_20180602152248_DN2_LGBM_sum_KEY` ON `TMP_20180602152248_DN2_LGBM_sum` (`KEY`)

-- Model deployment code

SELECT `LGBM_sum`.`KEY` AS `KEY`, `LGBM_sum`.`Estimator` AS `Estimator` 
FROM `TMP_20180602152248_DN2_LGBM_sum` AS `LGBM_sum`