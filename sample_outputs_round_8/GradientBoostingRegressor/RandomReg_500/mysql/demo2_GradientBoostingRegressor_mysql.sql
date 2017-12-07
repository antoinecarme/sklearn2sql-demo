-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_223` <= 1.307685375213623) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.34087520837783813) THEN CASE WHEN (`ADS`.`Feature_414` <= -0.14265117049217224) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_213` <= 0.4496297538280487) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_286` <= -0.29996761679649353) THEN 9 ELSE 10 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_223' AS feature, 1.307685375213623 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -8.526512829121202e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.34087520837783813 AS threshold, 23 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -49.706959269913064 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_414' AS feature, -0.14265117049217224 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -186.84398847373572 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -330.2371247305229 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -115.14742034534216 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_213' AS feature, 0.4496297538280487 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 38.45255950397292 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -28.557101844596804 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 159.06994993139844 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_286' AS feature, -0.29996761679649353 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 571.6300316040004 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 498.7859106787147 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 644.4741525292859 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`GB_Tree_0_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_492` <= 0.9982689023017883) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.34087520837783813) THEN CASE WHEN (`ADS`.`Feature_248` <= 0.37020519375801086) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_325` <= -0.39315688610076904) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_104` <= -0.7855955362319946) THEN 9 ELSE 10 END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_492' AS feature, 0.9982689023017883 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -9.094947017729283e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.34087520837783813 AS threshold, 23 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -44.736263342921774 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_248' AS feature, 0.37020519375801086 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -168.15958962636216 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -103.63267831080795 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -297.21341225747057 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_325' AS feature, -0.39315688610076904 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 34.607303553575626 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -59.51326242897713 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 105.1977280404902 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_104' AS feature, -0.7855955362319946 AS threshold, 2 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 514.4670284436003 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 448.9073196108432 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 580.0267372763573 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`GB_Tree_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_354` <= 1.2342638969421387) THEN CASE WHEN (`ADS`.`Feature_168` <= 0.23004752397537231) THEN CASE WHEN (`ADS`.`Feature_227` <= 0.09987786412239075) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_249` <= -0.16331957280635834) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_189` <= 0.7096656560897827) THEN CASE WHEN (`ADS`.`Feature_450` <= -0.48537516593933105) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_15` <= 0.6353161334991455) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.2342638969421387 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -5.4001247917767615e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_168' AS feature, 0.23004752397537231 AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -59.67623395304457 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_227' AS feature, 0.09987786412239075 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -202.82303191421684 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -105.81947323795666 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -267.4920710317236 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_249' AS feature, -0.16331957280635834 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -14.942859590178259 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 70.55975520899496 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -66.24442846968218 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_189' AS feature, 0.7096656560897827 AS threshold, 4 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 313.30022825348397 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_450' AS feature, -0.48537516593933105 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 463.02032559924027 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 522.0240635487216 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 404.0165876497589 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_15' AS feature, 0.6353161334991455 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 163.58013090772778 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 156.95790428007814 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 170.2023575353774 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`GB_Tree_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_354` <= 1.2342638969421387) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.3685441017150879) THEN CASE WHEN (`ADS`.`Feature_232` <= -0.0004541724920272827) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_135` <= -0.7979525327682495) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_189` <= 0.7096656560897827) THEN CASE WHEN (`ADS`.`Feature_364` <= 0.22740063071250916) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_435` <= -1.3653326034545898) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `RandomReg_500` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_354' AS feature, 1.2342638969421387 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.4210854715202005e-15 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.3685441017150879 AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -53.708610557740116 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_232' AS feature, -0.0004541724920272827 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -137.57121034504218 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -240.74286392855117 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -85.98538355328769 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_135' AS feature, -0.7979525327682495 AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 9.188339282736434 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -64.07030007025257 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 61.51593882058573 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_189' AS feature, 0.7096656560897827 AS threshold, 4 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 281.9702054281356 AS `Estimator` UNION ALL SELECT 9 AS node_id, 'Feature_364' AS feature, 0.22740063071250916 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 416.7182930393162 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 469.82165719384943 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 363.614928884783 AS `Estimator` UNION ALL SELECT 12 AS node_id, 'Feature_435' AS feature, -1.3653326034545898 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 147.22211781695498 AS `Estimator` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 153.18212178183964 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 141.2621138520703 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`GB_Tree_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`Score_Union_CTE` AS 
(SELECT ensemble_score_union.`KEY` AS `KEY`, ensemble_score_union.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Tree_0_0`.`KEY` AS `KEY`, `GB_Tree_0_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_0_0` UNION ALL SELECT `GB_Tree_1_0`.`KEY` AS `KEY`, `GB_Tree_1_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_1_0` UNION ALL SELECT `GB_Tree_2_0`.`KEY` AS `KEY`, `GB_Tree_2_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_2_0` UNION ALL SELECT `GB_Tree_3_0`.`KEY` AS `KEY`, `GB_Tree_3_0`.`Estimator` AS `Estimator` 
FROM `GB_Tree_3_0`) AS ensemble_score_union), 
`GradBoost_Sum_Scores` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Estimator` AS `Estimator` 
FROM (SELECT `Score_Union_CTE`.`KEY` AS `KEY`, sum(`Score_Union_CTE`.`Estimator`) AS `Estimator` 
FROM `Score_Union_CTE` GROUP BY `Score_Union_CTE`.`KEY`) AS `T`)
 SELECT `GradBoost_Sum_Scores`.`KEY` AS `KEY`, -38.8535044255 + 0.1 * `GradBoost_Sum_Scores`.`Estimator` AS `Estimator` 
FROM `GradBoost_Sum_Scores`