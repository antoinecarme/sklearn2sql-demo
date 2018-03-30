-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232407_AHE5LH_LGBM_Sum_B0 part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232407_AHE5LH_LGBM_Sum_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232407_AHE5LH_LGBM_Sum_B0 part 2/2. Populate

INSERT INTO `TMP_20180329232407_AHE5LH_LGBM_Sum_B0` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, 1.347595450430665 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 1.3612138719364468 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 1.3687826343726268 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`LGBM_Tree_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.012956810660571569 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -1.9310298375785352e-05 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.007171014051786379 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`LGBM_Tree_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.012308970230099347 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -1.8344720869901636e-05 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.006812463592933982 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`LGBM_Tree_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.011693521409428545 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -1.7427608725570497e-05 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.006471840292215348 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`LGBM_Tree_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 49.232675914117046) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.01110884565028495 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.006405732370654328 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.00011649514427003654 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.node_id AS node_id, `DT_node_data_4`.feature AS feature, `DT_node_data_4`.threshold AS threshold, `DT_node_data_4`.depth AS depth, `DT_node_data_4`.parent_id AS parent_id, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.node_id), 
`LGBM_Tree_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.010553403340634846 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.0002020732409575777 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005943816204212214 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.node_id AS node_id, `DT_node_data_5`.feature AS feature, `DT_node_data_5`.threshold AS threshold, `DT_node_data_5`.depth AS depth, `DT_node_data_5`.parent_id AS parent_id, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.node_id), 
`LGBM_Tree_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 49.232675914117046) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.010025733288022734 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.00589068644597622 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -6.627479325170103e-05 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.node_id AS node_id, `DT_node_data_6`.feature AS feature, `DT_node_data_6`.threshold AS threshold, `DT_node_data_6`.depth AS depth, `DT_node_data_6`.parent_id AS parent_id, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.node_id), 
`LGBM_Tree_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.00952444663714795 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.00035885490831874664 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005461824391233294 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.node_id AS node_id, `DT_node_data_7`.feature AS feature, `DT_node_data_7`.threshold AS threshold, `DT_node_data_7`.depth AS depth, `DT_node_data_7`.parent_id AS parent_id, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.node_id), 
`LGBM_Tree_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 49.232675914117046) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.0090482240897559 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005420072271307516 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.0002221693163332732 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.node_id AS node_id, `DT_node_data_8`.feature AS feature, `DT_node_data_8`.threshold AS threshold, `DT_node_data_8`.depth AS depth, `DT_node_data_8`.parent_id AS parent_id, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.node_id), 
`LGBM_Tree_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.008595812897242252 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.0004910105373710394 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005021665638043104 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.node_id AS node_id, `DT_node_data_9`.feature AS feature, `DT_node_data_9`.threshold AS threshold, `DT_node_data_9`.depth AS depth, `DT_node_data_9`.parent_id AS parent_id, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.node_id), 
`LGBM_Tree_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `LGBM_Sum_B0`.`KEY`, `LGBM_Sum_B0`.`Estimator` 
FROM (SELECT `LGBM_Sum_esu_0`.`KEY` AS `KEY`, `LGBM_Sum_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Tree_0`.`KEY` AS `KEY`, `LGBM_Tree_0`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_0` UNION ALL SELECT `LGBM_Tree_1`.`KEY` AS `KEY`, `LGBM_Tree_1`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_1` UNION ALL SELECT `LGBM_Tree_2`.`KEY` AS `KEY`, `LGBM_Tree_2`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_2` UNION ALL SELECT `LGBM_Tree_3`.`KEY` AS `KEY`, `LGBM_Tree_3`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_3` UNION ALL SELECT `LGBM_Tree_4`.`KEY` AS `KEY`, `LGBM_Tree_4`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_4` UNION ALL SELECT `LGBM_Tree_5`.`KEY` AS `KEY`, `LGBM_Tree_5`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_5` UNION ALL SELECT `LGBM_Tree_6`.`KEY` AS `KEY`, `LGBM_Tree_6`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_6` UNION ALL SELECT `LGBM_Tree_7`.`KEY` AS `KEY`, `LGBM_Tree_7`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_7` UNION ALL SELECT `LGBM_Tree_8`.`KEY` AS `KEY`, `LGBM_Tree_8`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_8` UNION ALL SELECT `LGBM_Tree_9`.`KEY` AS `KEY`, `LGBM_Tree_9`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_9`) AS `LGBM_Sum_esu_0`) AS `LGBM_Sum_B0`) AS `U`
-- Code For temporary table TMP_20180329232407_O426K9_LGBM_Sum_B1 part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232407_O426K9_LGBM_Sum_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232407_O426K9_LGBM_Sum_B1 part 2/2. Populate

INSERT INTO `TMP_20180329232407_O426K9_LGBM_Sum_B1` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 49.232675914117046) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.008166022243953887 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.004989863269697203 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.00035428743728477025 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.node_id AS node_id, `DT_node_data_10`.feature AS feature, `DT_node_data_10`.threshold AS threshold, `DT_node_data_10`.depth AS depth, `DT_node_data_10`.parent_id AS parent_id, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.node_id), 
`LGBM_Tree_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_1` <= 821.2744087124171) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.007757721060798282 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.0006014356145723945 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.004619534037958242 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.node_id AS node_id, `DT_node_data_11`.feature AS feature, `DT_node_data_11`.threshold AS threshold, `DT_node_data_11`.depth AS depth, `DT_node_data_11`.parent_id AS parent_id, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.node_id), 
`LGBM_Tree_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 568.0729020105207) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.41442794810547895) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.00743617479290281 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.001340077928311768 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.004850034420623591 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.node_id AS node_id, `DT_node_data_12`.feature AS feature, `DT_node_data_12`.threshold AS threshold, `DT_node_data_12`.depth AS depth, `DT_node_data_12`.parent_id AS parent_id, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.node_id), 
`LGBM_Tree_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 34.446685757025755) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.007244773244573958 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005796788463538344 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.0006651591673191335 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.node_id AS node_id, `DT_node_data_13`.feature AS feature, `DT_node_data_13`.threshold AS threshold, `DT_node_data_13`.depth AS depth, `DT_node_data_13`.parent_id AS parent_id, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.node_id), 
`LGBM_Tree_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 568.0729020105207) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.41442794810547895) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.007107818481468019 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, -0.0009861680845330869 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.004472992588814936 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.node_id AS node_id, `DT_node_data_14`.feature AS feature, `DT_node_data_14`.threshold AS threshold, `DT_node_data_14`.depth AS depth, `DT_node_data_14`.parent_id AS parent_id, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.node_id), 
`LGBM_Tree_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.3052070585017281) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_0` <= 34.446685757025755) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS depth, 1 AS parent_id, -0.006774924620099012 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.005467539610849186 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS depth, 3 AS parent_id, 0.0005942580447456724 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.node_id AS node_id, `DT_node_data_15`.feature AS feature, `DT_node_data_15`.threshold AS threshold, `DT_node_data_15`.depth AS depth, `DT_node_data_15`.parent_id AS parent_id, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.node_id), 
`LGBM_Tree_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `LGBM_Sum_B1`.`KEY`, `LGBM_Sum_B1`.`Estimator` 
FROM (SELECT `LGBM_Sum_esu_1`.`KEY` AS `KEY`, `LGBM_Sum_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Tree_10`.`KEY` AS `KEY`, `LGBM_Tree_10`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_10` UNION ALL SELECT `LGBM_Tree_11`.`KEY` AS `KEY`, `LGBM_Tree_11`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_11` UNION ALL SELECT `LGBM_Tree_12`.`KEY` AS `KEY`, `LGBM_Tree_12`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_12` UNION ALL SELECT `LGBM_Tree_13`.`KEY` AS `KEY`, `LGBM_Tree_13`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_13` UNION ALL SELECT `LGBM_Tree_14`.`KEY` AS `KEY`, `LGBM_Tree_14`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_14` UNION ALL SELECT `LGBM_Tree_15`.`KEY` AS `KEY`, `LGBM_Tree_15`.`Estimator` AS `Estimator` 
FROM `LGBM_Tree_15`) AS `LGBM_Sum_esu_1`) AS `LGBM_Sum_B1`) AS `U`
-- Code For temporary table TMP_20180329232407_M0JVCA_LGBM_Sum_Union part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232407_M0JVCA_LGBM_Sum_Union` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232407_M0JVCA_LGBM_Sum_Union part 2/2. Populate

INSERT INTO `TMP_20180329232407_M0JVCA_LGBM_Sum_Union` (`KEY`, `Estimator`) SELECT `U`.`KEY`, `U`.`Estimator` 
FROM (SELECT `LGBM_Sum_Union`.`KEY`, `LGBM_Sum_Union`.`Estimator` 
FROM (SELECT `LGBM_Sum_EnsembleUnion`.`KEY` AS `KEY`, `LGBM_Sum_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Sum_B0`.`KEY` AS `KEY`, `LGBM_Sum_B0`.`Estimator` AS `Estimator` 
FROM `TMP_20180329232407_AHE5LH_LGBM_Sum_B0` AS `LGBM_Sum_B0` UNION ALL SELECT `LGBM_Sum_B1`.`KEY` AS `KEY`, `LGBM_Sum_B1`.`Estimator` AS `Estimator` 
FROM `TMP_20180329232407_O426K9_LGBM_Sum_B1` AS `LGBM_Sum_B1`) AS `LGBM_Sum_EnsembleUnion`) AS `LGBM_Sum_Union`) AS `U`

-- Model deployment code

WITH `LGBM_Sum_sum` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `LGBM_Sum_Union`.`KEY` AS `KEY`, sum(`LGBM_Sum_Union`.`Estimator`) AS `Estimator` 
FROM `TMP_20180329232407_M0JVCA_LGBM_Sum_Union` AS `LGBM_Sum_Union` GROUP BY `LGBM_Sum_Union`.`KEY`) AS `T`)
 SELECT `LGBM_Sum_sum`.`KEY` AS `KEY`, `LGBM_Sum_sum`.`Estimator` AS `Estimator` 
FROM `LGBM_Sum_sum`