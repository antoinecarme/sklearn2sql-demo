-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor
-- Dataset : freidman1
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516120750_codegen_mssr9k_lgbm_b0 part 1. Create 


CREATE TABLE tmp_20180516120750_codegen_mssr9k_lgbm_b0 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516120750_codegen_mssr9k_lgbm_b0 part 2. Populate

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5994100664801979) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, 15.200469904526686 AS `Estimator` UNION ALL SELECT 6 AS nid, 15.422595859425408 AS `Estimator` UNION ALL SELECT 7 AS nid, 15.580411407332868 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`LGBM_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5994100664801979) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1456287688169724 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.06539088629540944 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.2153156650811434 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`LGBM_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5994100664801979) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1383473269068278 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.06212134771935997 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.20454987809062006 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`LGBM_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5994100664801979) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1314299638454731 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.05901527953821988 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1943223848938942 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`LGBM_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5994100664801979) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.12485846152696281 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.05606451522381533 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1846062703430653 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`LGBM_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5000743064706704) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1420501381384604 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.006007910966873169 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1780671380184315 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`LGBM_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5000743064706704) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.13494762923060494 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.005707516670227051 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.16916377941767377 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`LGBM_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.6222383378657121) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.11156776516865462 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.045042541176080704 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.16429961614665534 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`LGBM_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.46963624436969487) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.37473800801288903) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.13752821845312913 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.01659700522820155 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1542890925859583 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`LGBM_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5000743064706704) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.12077955312349581 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.0005588829517364502 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1472054673565759 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`LGBM_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 INSERT INTO tmp_20180516120750_codegen_mssr9k_lgbm_b0 (`KEY`, `Estimator`) SELECT `LGBM_B0`.`KEY`, `LGBM_B0`.`Estimator` 
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
FROM `LGBM_Model_9`) AS `LGBM_esu_0`) AS `LGBM_B0`

-- Code For temporary table tmp_20180516120750_codegen_lmbw8f_lgbm_b1 part 1. Create 


CREATE TABLE tmp_20180516120750_codegen_lmbw8f_lgbm_b1 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516120750_codegen_lmbw8f_lgbm_b1 part 2. Populate

WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.2495012051802635) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.43468972473570455) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.1510502178221941 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07514725886285306 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.14244862418207857 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`LGBM_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.46963624436969487) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.37473800801288903) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.12236519093314807 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.01273715723128546 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.1358081385750195 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`LGBM_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.2495012051802635) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.43468972473570455) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.14034854248166084 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07070917330682279 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.13284856890224747 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`LGBM_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5000743064706704) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.4457722655336853) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.10578776543790645 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.0050853342562913895 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.12552924387984807 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`LGBM_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.22245209447626654) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.43468972473570455) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.14409448930195398 AS `Estimator` UNION ALL SELECT 6 AS nid, -0.07628547797600428 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.12178892919695693 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`LGBM_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5503556407024869) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.754144769490826) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 2 AS nid, -0.08522149171584692 AS `Estimator` UNION ALL SELECT 6 AS nid, 0.031331977487674786 AS `Estimator` UNION ALL SELECT 7 AS nid, 0.13328333653509616 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`LGBM_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 INSERT INTO tmp_20180516120750_codegen_lmbw8f_lgbm_b1 (`KEY`, `Estimator`) SELECT `LGBM_B1`.`KEY`, `LGBM_B1`.`Estimator` 
FROM (SELECT `LGBM_esu_1`.`KEY` AS `KEY`, `LGBM_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Model_10`.`KEY` AS `KEY`, `LGBM_Model_10`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_10` UNION ALL SELECT `LGBM_Model_11`.`KEY` AS `KEY`, `LGBM_Model_11`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_11` UNION ALL SELECT `LGBM_Model_12`.`KEY` AS `KEY`, `LGBM_Model_12`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_12` UNION ALL SELECT `LGBM_Model_13`.`KEY` AS `KEY`, `LGBM_Model_13`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_13` UNION ALL SELECT `LGBM_Model_14`.`KEY` AS `KEY`, `LGBM_Model_14`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_14` UNION ALL SELECT `LGBM_Model_15`.`KEY` AS `KEY`, `LGBM_Model_15`.`Estimator` AS `Estimator` 
FROM `LGBM_Model_15`) AS `LGBM_esu_1`) AS `LGBM_B1`

-- Code For temporary table tmp_20180516120750_codegen_otrxfs_lgbm_sum part 1. Create 


CREATE TABLE tmp_20180516120750_codegen_otrxfs_lgbm_sum (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516120750_codegen_otrxfs_lgbm_sum part 2. Populate

WITH `LGBM_Union` AS 
(SELECT `LGBM_EnsembleUnion`.`KEY` AS `KEY`, `LGBM_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_B0`.`KEY` AS `KEY`, `LGBM_B0`.`Estimator` AS `Estimator` 
FROM tmp_20180516120750_codegen_mssr9k_lgbm_b0 AS `LGBM_B0` UNION ALL SELECT `LGBM_B1`.`KEY` AS `KEY`, `LGBM_B1`.`Estimator` AS `Estimator` 
FROM tmp_20180516120750_codegen_lmbw8f_lgbm_b1 AS `LGBM_B1`) AS `LGBM_EnsembleUnion`)
 INSERT INTO tmp_20180516120750_codegen_otrxfs_lgbm_sum (`KEY`, `Estimator`) SELECT `LGBM_sum`.`KEY`, `LGBM_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `LGBM_Union`.`KEY` AS `KEY`, sum(`LGBM_Union`.`Estimator`) AS `Estimator` 
FROM `LGBM_Union` GROUP BY `LGBM_Union`.`KEY`) AS `T`) AS `LGBM_sum`

-- Model deployment code

SELECT `LGBM_sum`.`KEY` AS `KEY`, `LGBM_sum`.`Estimator` AS `Estimator` 
FROM tmp_20180516120750_codegen_otrxfs_lgbm_sum AS `LGBM_sum`