-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_462` <= 0.028401151299476624) THEN 1 ELSE 2 END AS node_id_2 
FROM `BinaryClass_500` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision` 
FROM (SELECT 0 AS node_id, 'Feature_462' AS feature, 0.028401151299476624 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.49253731343283585 AS `Proba_0`, -0.708185057924 AS `LogProba_0`, 0.5074626865671642 AS `Proba_1`, -0.678332094775 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.8918918918918918 AS `Proba_0`, -0.114410351178 AS `LogProba_0`, 0.10810810810810817 AS `Proba_1`, -2.22462355152 AS `LogProba_1`, 0 AS `Decision`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Decision` AS `Decision` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`AdaBoost_Estim_0` AS 
(SELECT `DT_Output`.`KEY` AS join_key_0, NULL AS `Score_0_0`, `DT_Output`.`Proba_0` AS `Proba_0_0`, `DT_Output`.`LogProba_0` AS `LogProba_0_0`, NULL AS `Score_0_1`, `DT_Output`.`Proba_1` AS `Proba_0_1`, `DT_Output`.`LogProba_1` AS `LogProba_0_1`, `DT_Output`.`Decision` AS `Decision_0` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_234` <= -0.7735211849212646) THEN 1 ELSE 2 END AS node_id_2 
FROM `BinaryClass_500` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision` 
FROM (SELECT 0 AS node_id, 'Feature_234' AS feature, -0.7735211849212646 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.49999999027265335 AS `Proba_0`, -0.693147200015 AS `LogProba_0`, 0.5000000097273467 AS `Proba_1`, -0.693147161105 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.10810810685755079 AS `Proba_0`, -2.22462356309 AS `LogProba_0`, 0.8918918931424492 AS `Proba_1`, -0.114410349776 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 49 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.999999970482534 AS `Proba_0`, -2.95174664626e-08 AS `LogProba_0`, 2.9517466019829295e-08 AS `Proba_1`, -17.3382836803 AS `LogProba_1`, 0 AS `Decision`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Proba_0` AS `Proba_0`, `DT_node_data_1`.`LogProba_0` AS `LogProba_0`, `DT_node_data_1`.`Proba_1` AS `Proba_1`, `DT_node_data_1`.`LogProba_1` AS `LogProba_1`, `DT_node_data_1`.`Decision` AS `Decision` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`AdaBoost_Estim_1` AS 
(SELECT `DT_Output_1`.`KEY` AS join_key_1, NULL AS `Score_1_0`, `DT_Output_1`.`Proba_0` AS `Proba_1_0`, `DT_Output_1`.`LogProba_0` AS `LogProba_1_0`, NULL AS `Score_1_1`, `DT_Output_1`.`Proba_1` AS `Proba_1_1`, `DT_Output_1`.`LogProba_1` AS `LogProba_1_1`, `DT_Output_1`.`Decision` AS `Decision_1` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_450` <= 0.1288696527481079) THEN 1 ELSE 2 END AS node_id_2 
FROM `BinaryClass_500` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision` 
FROM (SELECT 0 AS node_id, 'Feature_450' AS feature, 0.1288696527481079 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.5000000000000002 AS `Proba_0`, -0.69314718056 AS `LogProba_0`, 0.49999999999999983 AS `Proba_1`, -0.69314718056 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 33 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.9998482736948295 AS `Proba_0`, -0.000151737816771 AS `LogProba_0`, 0.0001517263051704389 AS `Proba_1`, -8.79343228407 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 34 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.00017936327196925187 AS `Proba_0`, -8.62609735634 AS `LogProba_0`, 0.9998206367280307 AS `Proba_1`, -0.000179379359485 AS `LogProba_1`, 1 AS `Decision`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Proba_0` AS `Proba_0`, `DT_node_data_2`.`LogProba_0` AS `LogProba_0`, `DT_node_data_2`.`Proba_1` AS `Proba_1`, `DT_node_data_2`.`LogProba_1` AS `LogProba_1`, `DT_node_data_2`.`Decision` AS `Decision` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`AdaBoost_Estim_2` AS 
(SELECT `DT_Output_2`.`KEY` AS join_key_2, NULL AS `Score_2_0`, `DT_Output_2`.`Proba_0` AS `Proba_2_0`, `DT_Output_2`.`LogProba_0` AS `LogProba_2_0`, NULL AS `Score_2_1`, `DT_Output_2`.`Proba_1` AS `Proba_2_1`, `DT_Output_2`.`LogProba_1` AS `LogProba_2_1`, `DT_Output_2`.`Decision` AS `Decision_2` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_127` <= -0.0800955668091774) THEN 1 ELSE 2 END AS node_id_2 
FROM `BinaryClass_500` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision` 
FROM (SELECT 0 AS node_id, 'Feature_127' AS feature, -0.0800955668091774 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.49999999999999956 AS `Proba_0`, -0.69314718056 AS `LogProba_0`, 0.5000000000000004 AS `Proba_1`, -0.69314718056 AS `LogProba_1`, 1 AS `Decision` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.857850307642308 AS `Proba_0`, -0.153325661333 AS `LogProba_0`, 0.142149692357692 AS `Proba_1`, -1.9508746051 AS `LogProba_1`, 0 AS `Decision` UNION ALL SELECT 2 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.16755707414340731 AS `Proba_0`, -1.7864312446 AS `LogProba_0`, 0.8324429258565927 AS `Proba_1`, -0.183390617007 AS `LogProba_1`, 1 AS `Decision`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Proba_0` AS `Proba_0`, `DT_node_data_3`.`LogProba_0` AS `LogProba_0`, `DT_node_data_3`.`Proba_1` AS `Proba_1`, `DT_node_data_3`.`LogProba_1` AS `LogProba_1`, `DT_node_data_3`.`Decision` AS `Decision` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`AdaBoost_Estim_3` AS 
(SELECT `DT_Output_3`.`KEY` AS join_key_3, NULL AS `Score_3_0`, `DT_Output_3`.`Proba_0` AS `Proba_3_0`, `DT_Output_3`.`LogProba_0` AS `LogProba_3_0`, NULL AS `Score_3_1`, `DT_Output_3`.`Proba_1` AS `Proba_3_1`, `DT_Output_3`.`LogProba_1` AS `LogProba_3_1`, `DT_Output_3`.`Decision` AS `Decision_3` 
FROM `DT_Output_3`), 
`AdaBoost_Join_CTE` AS 
(SELECT `AdaBoost_Estim_0`.join_key_0 AS join_key_0, `AdaBoost_Estim_0`.`Score_0_0` AS `Score_0_0`, `AdaBoost_Estim_0`.`Proba_0_0` AS `Proba_0_0`, `AdaBoost_Estim_0`.`LogProba_0_0` AS `LogProba_0_0`, `AdaBoost_Estim_0`.`Score_0_1` AS `Score_0_1`, `AdaBoost_Estim_0`.`Proba_0_1` AS `Proba_0_1`, `AdaBoost_Estim_0`.`LogProba_0_1` AS `LogProba_0_1`, `AdaBoost_Estim_0`.`Decision_0` AS `Decision_0`, `AdaBoost_Estim_1`.join_key_1 AS join_key_1, `AdaBoost_Estim_1`.`Score_1_0` AS `Score_1_0`, `AdaBoost_Estim_1`.`Proba_1_0` AS `Proba_1_0`, `AdaBoost_Estim_1`.`LogProba_1_0` AS `LogProba_1_0`, `AdaBoost_Estim_1`.`Score_1_1` AS `Score_1_1`, `AdaBoost_Estim_1`.`Proba_1_1` AS `Proba_1_1`, `AdaBoost_Estim_1`.`LogProba_1_1` AS `LogProba_1_1`, `AdaBoost_Estim_1`.`Decision_1` AS `Decision_1`, `AdaBoost_Estim_2`.join_key_2 AS join_key_2, `AdaBoost_Estim_2`.`Score_2_0` AS `Score_2_0`, `AdaBoost_Estim_2`.`Proba_2_0` AS `Proba_2_0`, `AdaBoost_Estim_2`.`LogProba_2_0` AS `LogProba_2_0`, `AdaBoost_Estim_2`.`Score_2_1` AS `Score_2_1`, `AdaBoost_Estim_2`.`Proba_2_1` AS `Proba_2_1`, `AdaBoost_Estim_2`.`LogProba_2_1` AS `LogProba_2_1`, `AdaBoost_Estim_2`.`Decision_2` AS `Decision_2`, `AdaBoost_Estim_3`.join_key_3 AS join_key_3, `AdaBoost_Estim_3`.`Score_3_0` AS `Score_3_0`, `AdaBoost_Estim_3`.`Proba_3_0` AS `Proba_3_0`, `AdaBoost_Estim_3`.`LogProba_3_0` AS `LogProba_3_0`, `AdaBoost_Estim_3`.`Score_3_1` AS `Score_3_1`, `AdaBoost_Estim_3`.`Proba_3_1` AS `Proba_3_1`, `AdaBoost_Estim_3`.`LogProba_3_1` AS `LogProba_3_1`, `AdaBoost_Estim_3`.`Decision_3` AS `Decision_3` 
FROM `AdaBoost_Estim_0` LEFT OUTER JOIN `AdaBoost_Estim_1` ON `AdaBoost_Estim_0`.join_key_0 = `AdaBoost_Estim_1`.join_key_1 LEFT OUTER JOIN `AdaBoost_Estim_2` ON `AdaBoost_Estim_2`.join_key_2 = `AdaBoost_Estim_1`.join_key_1 LEFT OUTER JOIN `AdaBoost_Estim_3` ON `AdaBoost_Estim_3`.join_key_3 = `AdaBoost_Estim_2`.join_key_2), 
`AdaBoost_AVG_Scores_BN` AS 
(SELECT `AdaBoost_Join_CTE`.join_key_0 AS `KEY`, (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 AS `Score_0`, 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END) / 2) AS `Proba_0`, (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 + (1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END) / 2)) / 4.0 AS `Score_1`, 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_0_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_0_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_0_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_1_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_1_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_1_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_2_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_2_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_2_1`) ELSE -1.79769313486231e+308 END END) / 2) + 1.0 * (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END - (CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_0` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_0` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_0`) ELSE -1.79769313486231e+308 END END + CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` <= 2.22044604925e-16) THEN -36.0436533891 ELSE CASE WHEN (`AdaBoost_Join_CTE`.`Proba_3_1` IS NULL OR `AdaBoost_Join_CTE`.`Proba_3_1` > 0.0) THEN ln(`AdaBoost_Join_CTE`.`Proba_3_1`) ELSE -1.79769313486231e+308 END END) / 2) AS `Proba_1` 
FROM `AdaBoost_Join_CTE`), 
`AdaBoost_AVG_Scores` AS 
(SELECT `AdaBoost_AVG_Scores_BN`.`KEY` AS `KEY`, `AdaBoost_AVG_Scores_BN`.`Score_0` AS `Score_0`, exp((`AdaBoost_AVG_Scores_BN`.`Proba_0` / 4.0) / 1) / (exp((`AdaBoost_AVG_Scores_BN`.`Proba_0` / 4.0) / 1) + exp((`AdaBoost_AVG_Scores_BN`.`Proba_1` / 4.0) / 1)) AS `Proba_0`, NULL AS `LogProba_0`, `AdaBoost_AVG_Scores_BN`.`Score_1` AS `Score_1`, exp((`AdaBoost_AVG_Scores_BN`.`Proba_1` / 4.0) / 1) / (exp((`AdaBoost_AVG_Scores_BN`.`Proba_0` / 4.0) / 1) + exp((`AdaBoost_AVG_Scores_BN`.`Proba_1` / 4.0) / 1)) AS `Proba_1`, NULL AS `LogProba_1` 
FROM `AdaBoost_AVG_Scores_BN`), 
orig_cte AS 
(SELECT `AdaBoost_AVG_Scores`.`KEY` AS `KEY`, `AdaBoost_AVG_Scores`.`Score_0` AS `Score_0`, `AdaBoost_AVG_Scores`.`Score_1` AS `Score_1`, `AdaBoost_AVG_Scores`.`Proba_0` AS `Proba_0`, `AdaBoost_AVG_Scores`.`Proba_1` AS `Proba_1`, `AdaBoost_AVG_Scores`.`LogProba_0` AS `LogProba_0`, `AdaBoost_AVG_Scores`.`LogProba_1` AS `LogProba_1`, NULL AS `Decision` 
FROM `AdaBoost_AVG_Scores`), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.`max_LogProba` = score_class_union.`LogProba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.`max_Proba` = score_class_union.`Proba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.`max_Score` = score_class_union.`Score` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score` 
FROM score_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte