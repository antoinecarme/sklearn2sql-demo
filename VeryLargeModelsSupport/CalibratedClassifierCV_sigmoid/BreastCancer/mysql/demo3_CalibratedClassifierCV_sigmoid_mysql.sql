-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232739_PGNJXN_CalProb_AVG_B0 part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232739_PGNJXN_CalProb_AVG_B0` (
	`KEY` BIGINT, 
	`Proba_1` DOUBLE, 
	`Proba_0` DOUBLE
)

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232739_PGNJXN_CalProb_AVG_B0 part 2/2. Populate

INSERT INTO `TMP_20180329232739_PGNJXN_CalProb_AVG_B0` (`KEY`, `Proba_1`, `Proba_0`) SELECT `U`.`KEY`, `U`.`Proba_1`, `U`.`Proba_0` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_27` <= 0.14695000648498535) THEN CASE WHEN (`ADS`.`Feature_23` <= 953.9500122070312) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.12229999899864197) THEN CASE WHEN (`ADS`.`Feature_10` <= 0.6431000232696533) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 18.934999465942383) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_10` <= 0.40389999747276306) THEN CASE WHEN (`ADS`.`Feature_21` <= 33.915000915527344) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.06902500241994858) THEN 13 ELSE 14 END END END ELSE CASE WHEN (`ADS`.`Feature_26` <= 0.1906999945640564) THEN CASE WHEN (`ADS`.`Feature_22` <= 122.05000305175781) THEN 17 ELSE 18 END ELSE 19 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 10.405500411987305) THEN 21 ELSE CASE WHEN (`ADS`.`Feature_26` <= 0.20340000092983246) THEN 23 ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.05634000152349472) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.054854996502399445) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM `BreastCancer` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 199 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 5 AS depth, 9 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 9 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 12 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 12 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 16 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 16 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 12 AS count, 3 AS depth, 15 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 2 AS depth, 20 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 23 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 22 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 26 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 25 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 25 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 28 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 98 AS count, 4 AS depth, 24 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Proba_0` AS `Proba_0`, `DT_node_data`.`LogProba_0` AS `LogProba_0`, `DT_node_data`.`Proba_1` AS `Proba_1`, `DT_node_data`.`LogProba_1` AS `LogProba_1`, `DT_node_data`.`Decision` AS `Decision`, `DT_node_data`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
calibration_base_estimator_0 AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output`.`Proba_0` AS `Proba_0`, `DT_Output`.`Proba_1` AS `Proba_1`, `DT_Output`.`LogProba_0` AS `LogProba_0`, `DT_Output`.`LogProba_1` AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output`.`Proba_1`) AS `ScoreOrProba_1` 
FROM `DT_Output`), 
sigmoid_calibration_0 AS 
(SELECT calibration_base_estimator_0.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.756413424714996 * calibration_base_estimator_0.`ScoreOrProba_1` + -2.5569469411985817)), 100.0))) AS `Proba_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.756413424714996 * calibration_base_estimator_0.`ScoreOrProba_1` + -2.5569469411985817)), 100.0))) AS `Proba_0` 
FROM calibration_base_estimator_0), 
`Normalized_Probas` AS 
(SELECT sigmoid_calibration_0.`KEY` AS `KEY`, sigmoid_calibration_0.`Proba_1` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1`) AS `Proba_1`, sigmoid_calibration_0.`Proba_0` / (sigmoid_calibration_0.`Proba_0` + sigmoid_calibration_0.`Proba_1`) AS `Proba_0` 
FROM sigmoid_calibration_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_27` <= 0.1436000019311905) THEN CASE WHEN (`ADS`.`Feature_23` <= 961.550048828125) THEN CASE WHEN (`ADS`.`Feature_18` <= 0.008710499852895737) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_27` <= 0.131850004196167) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_23` <= 779.75) THEN 7 ELSE 8 END END END ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_16` <= 0.13565000891685486) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.08810999989509583) THEN CASE WHEN (`ADS`.`Feature_28` <= 0.3084000051021576) THEN CASE WHEN (`ADS`.`Feature_20` <= 18.149999618530273) THEN 14 ELSE 15 END ELSE 16 END ELSE 17 END ELSE 18 END END AS node_id_2 
FROM `BreastCancer` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 209 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 5 AS count, 5 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 6 AS parent_id, 0.6666666666666666 AS `Proba_0`, -0.40546510810816444 AS `LogProba_0`, 0.3333333333333333 AS `Proba_1`, -1.0986122886681098 AS `LogProba_1`, 0 AS `Decision`, 0.6666666666666666 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 13 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 13 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 4 AS depth, 12 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 17 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 106 AS count, 3 AS depth, 11 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 2 AS depth, 10 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Proba_0` AS `Proba_0`, `DT_node_data_1`.`LogProba_0` AS `LogProba_0`, `DT_node_data_1`.`Proba_1` AS `Proba_1`, `DT_node_data_1`.`LogProba_1` AS `LogProba_1`, `DT_node_data_1`.`Decision` AS `Decision`, `DT_node_data_1`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
calibration_base_estimator_1 AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_1`.`Proba_0` AS `Proba_0`, `DT_Output_1`.`Proba_1` AS `Proba_1`, `DT_Output_1`.`LogProba_0` AS `LogProba_0`, `DT_Output_1`.`LogProba_1` AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_1`.`Proba_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_1`), 
sigmoid_calibration_1 AS 
(SELECT calibration_base_estimator_1.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.6995923736239025 * calibration_base_estimator_1.`ScoreOrProba_1` + -1.924211076199023)), 100.0))) AS `Proba_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.6995923736239025 * calibration_base_estimator_1.`ScoreOrProba_1` + -1.924211076199023)), 100.0))) AS `Proba_0` 
FROM calibration_base_estimator_1), 
`Normalized_Probas_1` AS 
(SELECT sigmoid_calibration_1.`KEY` AS `KEY`, sigmoid_calibration_1.`Proba_1` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1`) AS `Proba_1`, sigmoid_calibration_1.`Proba_0` / (sigmoid_calibration_1.`Proba_0` + sigmoid_calibration_1.`Proba_1`) AS `Proba_0` 
FROM sigmoid_calibration_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_27` <= 0.14239999651908875) THEN CASE WHEN (`ADS`.`Feature_23` <= 1058.0) THEN CASE WHEN (`ADS`.`Feature_13` <= 48.70000076293945) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.1221500039100647) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_10` <= 0.41290000081062317) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.09071999788284302) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_21` <= 20.864999771118164) THEN 11 ELSE 12 END END END ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_16` <= 0.12630000710487366) THEN CASE WHEN (`ADS`.`Feature_12` <= 1.2384999990463257) THEN 16 ELSE CASE WHEN (`ADS`.`Feature_1` <= 15.345000267028809) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.06742499768733978) THEN 19 ELSE 20 END ELSE 21 END END ELSE 22 END END AS node_id_2 
FROM `BreastCancer` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 197 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 5 AS depth, 5 AS parent_id, 0.06666666666666667 AS `Proba_0`, -2.70805020110221 AS `LogProba_0`, 0.9333333333333333 AS `Proba_1`, -0.06899287148695143 AS `LogProba_1`, 1 AS `Decision`, 0.9333333333333333 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 5 AS parent_id, 0.75 AS `Proba_0`, -0.2876820724517809 AS `LogProba_0`, 0.25 AS `Proba_1`, -1.3862943611198906 AS `LogProba_1`, 0 AS `Decision`, 0.75 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 8 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 10 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 13 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 15 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 18 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 20 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 18 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 101 AS count, 4 AS depth, 17 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 2 AS depth, 14 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Proba_0` AS `Proba_0`, `DT_node_data_2`.`LogProba_0` AS `LogProba_0`, `DT_node_data_2`.`Proba_1` AS `Proba_1`, `DT_node_data_2`.`LogProba_1` AS `LogProba_1`, `DT_node_data_2`.`Decision` AS `Decision`, `DT_node_data_2`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
calibration_base_estimator_2 AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_2`.`Proba_0` AS `Proba_0`, `DT_Output_2`.`Proba_1` AS `Proba_1`, `DT_Output_2`.`LogProba_0` AS `LogProba_0`, `DT_Output_2`.`LogProba_1` AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_2`.`Proba_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_2`), 
sigmoid_calibration_2 AS 
(SELECT calibration_base_estimator_2.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.460676238424658 * calibration_base_estimator_2.`ScoreOrProba_1` + -2.260905500780578)), 100.0))) AS `Proba_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(5.460676238424658 * calibration_base_estimator_2.`ScoreOrProba_1` + -2.260905500780578)), 100.0))) AS `Proba_0` 
FROM calibration_base_estimator_2), 
`Normalized_Probas_2` AS 
(SELECT sigmoid_calibration_2.`KEY` AS `KEY`, sigmoid_calibration_2.`Proba_1` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1`) AS `Proba_1`, sigmoid_calibration_2.`Proba_0` / (sigmoid_calibration_2.`Proba_0` + sigmoid_calibration_2.`Proba_1`) AS `Proba_0` 
FROM sigmoid_calibration_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_27` <= 0.14559999108314514) THEN CASE WHEN (`ADS`.`Feature_23` <= 1058.0) THEN CASE WHEN (`ADS`.`Feature_18` <= 0.010339999571442604) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.03027999959886074) THEN 4 ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_13` <= 32.98500061035156) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_21` <= 29.18000030517578) THEN 9 ELSE 10 END END END ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_16` <= 0.13565000891685486) THEN CASE WHEN (`ADS`.`Feature_26` <= 0.20340000092983246) THEN 14 ELSE 15 END ELSE 16 END END AS node_id_2 
FROM `BreastCancer` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Proba_0` AS `Proba_0`, `Values`.`LogProba_0` AS `LogProba_0`, `Values`.`Proba_1` AS `Proba_1`, `Values`.`LogProba_1` AS `LogProba_1`, `Values`.`Decision` AS `Decision`, `Values`.`DecisionProba` AS `DecisionProba` 
FROM (SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 4 AS depth, 3 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 197 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 21 AS count, 5 AS depth, 8 AS parent_id, 0.047619047619047616 AS `Proba_0`, -3.044522437723423 AS `LogProba_0`, 0.9523809523809523 AS `Proba_1`, -0.048790164169432056 AS `LogProba_1`, 1 AS `Decision`, 0.9523809523809523 AS `DecisionProba` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 8 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 106 AS count, 3 AS depth, 13 AS parent_id, 1.0 AS `Proba_0`, 0.0 AS `LogProba_0`, 0.0 AS `Proba_1`, -1.79769313486231e+308 AS `LogProba_1`, 0 AS `Decision`, 1.0 AS `DecisionProba` UNION ALL SELECT 16 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 2 AS depth, 12 AS parent_id, 0.0 AS `Proba_0`, -1.79769313486231e+308 AS `LogProba_0`, 1.0 AS `Proba_1`, 0.0 AS `LogProba_1`, 1 AS `Decision`, 1.0 AS `DecisionProba`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Proba_0` AS `Proba_0`, `DT_node_data_3`.`LogProba_0` AS `LogProba_0`, `DT_node_data_3`.`Proba_1` AS `Proba_1`, `DT_node_data_3`.`LogProba_1` AS `LogProba_1`, `DT_node_data_3`.`Decision` AS `Decision`, `DT_node_data_3`.`DecisionProba` AS `DecisionProba` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
calibration_base_estimator_3 AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `DT_Output_3`.`Proba_0` AS `Proba_0`, `DT_Output_3`.`Proba_1` AS `Proba_1`, `DT_Output_3`.`LogProba_0` AS `LogProba_0`, `DT_Output_3`.`LogProba_1` AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`Proba_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_3`.`Proba_1`) AS `ScoreOrProba_1` 
FROM `DT_Output_3`), 
sigmoid_calibration_3 AS 
(SELECT calibration_base_estimator_3.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.949259195511301 * calibration_base_estimator_3.`ScoreOrProba_1` + -2.0321952231560854)), 100.0))) AS `Proba_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.949259195511301 * calibration_base_estimator_3.`ScoreOrProba_1` + -2.0321952231560854)), 100.0))) AS `Proba_0` 
FROM calibration_base_estimator_3), 
`Normalized_Probas_3` AS 
(SELECT sigmoid_calibration_3.`KEY` AS `KEY`, sigmoid_calibration_3.`Proba_1` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1`) AS `Proba_1`, sigmoid_calibration_3.`Proba_0` / (sigmoid_calibration_3.`Proba_0` + sigmoid_calibration_3.`Proba_1`) AS `Proba_0` 
FROM sigmoid_calibration_3)
 SELECT `CalProb_AVG_B0`.`KEY`, `CalProb_AVG_B0`.`Proba_1`, `CalProb_AVG_B0`.`Proba_0` 
FROM (SELECT `CalProb_AVG_esu_0`.`KEY` AS `KEY`, `CalProb_AVG_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_AVG_esu_0`.`Proba_0` AS `Proba_0` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0` 
FROM `Normalized_Probas_3`) AS `CalProb_AVG_esu_0`) AS `CalProb_AVG_B0`) AS `U`
-- Code For temporary table TMP_20180329232739_JMJZKI_CalProb_AVG_Union part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232739_JMJZKI_CalProb_AVG_Union` (
	`KEY` BIGINT, 
	`Proba_1` DOUBLE, 
	`Proba_0` DOUBLE
)

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232739_JMJZKI_CalProb_AVG_Union part 2/2. Populate

INSERT INTO `TMP_20180329232739_JMJZKI_CalProb_AVG_Union` (`KEY`, `Proba_1`, `Proba_0`) SELECT `U`.`KEY`, `U`.`Proba_1`, `U`.`Proba_0` 
FROM (SELECT `CalProb_AVG_Union`.`KEY`, `CalProb_AVG_Union`.`Proba_1`, `CalProb_AVG_Union`.`Proba_0` 
FROM (SELECT `CalProb_AVG_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_AVG_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_AVG_EnsembleUnion`.`Proba_0` AS `Proba_0` 
FROM (SELECT `CalProb_AVG_B0`.`KEY` AS `KEY`, `CalProb_AVG_B0`.`Proba_1` AS `Proba_1`, `CalProb_AVG_B0`.`Proba_0` AS `Proba_0` 
FROM `TMP_20180329232739_PGNJXN_CalProb_AVG_B0` AS `CalProb_AVG_B0`) AS `CalProb_AVG_EnsembleUnion`) AS `CalProb_AVG_Union`) AS `U`

-- Model deployment code

WITH `CalProb_AVG_avg` AS 
(SELECT `T`.`KEY` AS `KEY`, `T`.`Proba_1` AS `Proba_1`, `T`.`Proba_0` AS `Proba_0` 
FROM (SELECT `CalProb_AVG_Union`.`KEY` AS `KEY`, avg(`CalProb_AVG_Union`.`Proba_1`) AS `Proba_1`, avg(`CalProb_AVG_Union`.`Proba_0`) AS `Proba_0` 
FROM `TMP_20180329232739_JMJZKI_CalProb_AVG_Union` AS `CalProb_AVG_Union` GROUP BY `CalProb_AVG_Union`.`KEY`) AS `T`), 
orig_cte AS 
(SELECT `CalProb_AVG_avg`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, `CalProb_AVG_avg`.`Proba_0` AS `Proba_0`, `CalProb_AVG_avg`.`Proba_1` AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `CalProb_AVG_avg`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte