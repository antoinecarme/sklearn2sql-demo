-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid
-- Dataset : iris_date_tgt
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516122920_codegen_l6cfe3_calprob_b0 part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516122920_codegen_l6cfe3_calprob_b0` STORED AS ORC AS WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.75) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.75) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_2` <= 5.050000190734863) THEN CASE WHEN (`ADS`.`Feature_1` <= 3.049999952316284) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.75) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS `node_id_2` 
FROM `iris_date_tgt` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`P_1789-07-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-07-14T00:00:00.000000000`, CAST(`P_1789-08-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-08-14T00:00:00.000000000`, CAST(`P_1789-09-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-09-14T00:00:00.000000000`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-07-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.6666666666666666 AS `P_1789-08-14T00:00:00.000000000`, 0.3333333333333333 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `P_1789-07-14T00:00:00.000000000` AS `P_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `P_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `P_1789-09-14T00:00:00.000000000`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-09-14T00:00:00.000000000`, `P_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (`P_1789-07-14T00:00:00.000000000` IS NULL OR `P_1789-07-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (`P_1789-08-14T00:00:00.000000000` IS NULL OR `P_1789-08-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (`P_1789-09-14T00:00:00.000000000` IS NULL OR `P_1789-09-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `P_1789-07-14T00:00:00.000000000`) AS `ScoreOrProba_1789-07-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-08-14T00:00:00.000000000`) AS `ScoreOrProba_1789-08-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-09-14T00:00:00.000000000`) AS `ScoreOrProba_1789-09-14T00:00:00.000000000` 
FROM `DT_Output`), 
`sigmoid_calibration_0` AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.488937334779731 * `ScoreOrProba_1789-07-14T00:00:00.000000000` + -3.0910424939613868))) AS `Proba_1789-07-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.718121478468529 * `ScoreOrProba_1789-08-14T00:00:00.000000000` + -2.95244363385918))) AS `Proba_1789-08-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.801955584523639 * `ScoreOrProba_1789-09-14T00:00:00.000000000` + -2.4323200933644706))) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT `sigmoid_calibration_0`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `sigmoid_calibration_0`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 5.050000190734863) THEN CASE WHEN (`ADS`.`Feature_0` <= 6.5) THEN 10 ELSE 11 END ELSE 12 END END END AS `node_id_2` 
FROM `iris_date_tgt` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`P_1789-07-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-07-14T00:00:00.000000000`, CAST(`P_1789-08-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-08-14T00:00:00.000000000`, CAST(`P_1789-09-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-09-14T00:00:00.000000000`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-07-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`nid` AS `nid`, `P_1789-07-14T00:00:00.000000000` AS `P_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `P_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `P_1789-09-14T00:00:00.000000000`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`nid`), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-09-14T00:00:00.000000000`, `P_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (`P_1789-07-14T00:00:00.000000000` IS NULL OR `P_1789-07-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (`P_1789-08-14T00:00:00.000000000` IS NULL OR `P_1789-08-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (`P_1789-09-14T00:00:00.000000000` IS NULL OR `P_1789-09-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `P_1789-07-14T00:00:00.000000000`) AS `ScoreOrProba_1789-07-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-08-14T00:00:00.000000000`) AS `ScoreOrProba_1789-08-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-09-14T00:00:00.000000000`) AS `ScoreOrProba_1789-09-14T00:00:00.000000000` 
FROM `DT_Output_1`), 
`sigmoid_calibration_1` AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.393626322122635 * `ScoreOrProba_1789-07-14T00:00:00.000000000` + -3.091045517303994))) AS `Proba_1789-07-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(5.442417342523719 * `ScoreOrProba_1789-08-14T00:00:00.000000000` + -3.0445224878196573))) AS `Proba_1789-08-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(5.480638259777759 * `ScoreOrProba_1789-09-14T00:00:00.000000000` + -2.995732594243071))) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT `sigmoid_calibration_1`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `sigmoid_calibration_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.75) THEN CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN CASE WHEN (`ADS`.`Feature_0` <= 4.949999809265137) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 8 ELSE 9 END END ELSE 10 END END AS `node_id_2` 
FROM `iris_date_tgt` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`P_1789-07-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-07-14T00:00:00.000000000`, CAST(`P_1789-08-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-08-14T00:00:00.000000000`, CAST(`P_1789-09-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-09-14T00:00:00.000000000`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-07-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`nid` AS `nid`, `P_1789-07-14T00:00:00.000000000` AS `P_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `P_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `P_1789-09-14T00:00:00.000000000`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`nid`), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-09-14T00:00:00.000000000`, `P_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (`P_1789-07-14T00:00:00.000000000` IS NULL OR `P_1789-07-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (`P_1789-08-14T00:00:00.000000000` IS NULL OR `P_1789-08-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (`P_1789-09-14T00:00:00.000000000` IS NULL OR `P_1789-09-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `P_1789-07-14T00:00:00.000000000`) AS `ScoreOrProba_1789-07-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-08-14T00:00:00.000000000`) AS `ScoreOrProba_1789-08-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-09-14T00:00:00.000000000`) AS `ScoreOrProba_1789-09-14T00:00:00.000000000` 
FROM `DT_Output_2`), 
`sigmoid_calibration_2` AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.393626322122635 * `ScoreOrProba_1789-07-14T00:00:00.000000000` + -3.091045517303994))) AS `Proba_1789-07-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.346958263204309 * `ScoreOrProba_1789-08-14T00:00:00.000000000` + -1.949062502016408))) AS `Proba_1789-08-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.310987825487246 * `ScoreOrProba_1789-09-14T00:00:00.000000000` + -2.995735836256492))) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT `sigmoid_calibration_2`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `sigmoid_calibration_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.850000381469727) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 2.549999952316284) THEN CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN 10 ELSE 11 END ELSE 12 END END END AS `node_id_2` 
FROM `iris_date_tgt` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`P_1789-07-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-07-14T00:00:00.000000000`, CAST(`P_1789-08-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-08-14T00:00:00.000000000`, CAST(`P_1789-09-14T00:00:00.000000000` AS DOUBLE) AS `P_1789-09-14T00:00:00.000000000`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-07-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 1.0 AS `P_1789-08-14T00:00:00.000000000`, 0.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-08-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 0.0 AS `P_1789-07-14T00:00:00.000000000`, 0.0 AS `P_1789-08-14T00:00:00.000000000`, 1.0 AS `P_1789-09-14T00:00:00.000000000`, '1789-09-14T00:00:00.000000000' AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`nid` AS `nid`, `P_1789-07-14T00:00:00.000000000` AS `P_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `P_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `P_1789-09-14T00:00:00.000000000`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`nid`), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-09-14T00:00:00.000000000`, `P_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `P_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `P_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (`P_1789-07-14T00:00:00.000000000` IS NULL OR `P_1789-07-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (`P_1789-08-14T00:00:00.000000000` IS NULL OR `P_1789-08-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (`P_1789-09-14T00:00:00.000000000` IS NULL OR `P_1789-09-14T00:00:00.000000000` > 0.0) THEN log(`P_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `P_1789-07-14T00:00:00.000000000`) AS `ScoreOrProba_1789-07-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-08-14T00:00:00.000000000`) AS `ScoreOrProba_1789-08-14T00:00:00.000000000`, coalesce(CAST(NULL AS DOUBLE), `P_1789-09-14T00:00:00.000000000`) AS `ScoreOrProba_1789-09-14T00:00:00.000000000` 
FROM `DT_Output_3`), 
`sigmoid_calibration_3` AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.3471066241328655 * `ScoreOrProba_1789-07-14T00:00:00.000000000` + -3.0445258104151054))) AS `Proba_1789-07-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.295450701778823 * `ScoreOrProba_1789-08-14T00:00:00.000000000` + -1.8975549276218453))) AS `Proba_1789-08-14T00:00:00.000000000`, 1.0 / (1.0 + exp(-(4.214379795150796 * `ScoreOrProba_1789-09-14T00:00:00.000000000` + -2.99573366824266))) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT `sigmoid_calibration_3`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` / (`Proba_1789-07-14T00:00:00.000000000` + `Proba_1789-08-14T00:00:00.000000000` + `Proba_1789-09-14T00:00:00.000000000`) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `sigmoid_calibration_3`)
 SELECT `CalProb_B0`.`KEY`, `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`

-- Code For temporary table tmp_20180516122920_codegen_l6cfe3_calprob_b0 part 2. Populate

SELECT * FROM `tmp_20180516122920_codegen_l6cfe3_calprob_b0`

-- Code For temporary table tmp_20180516122920_codegen_7od89n_calprob_avg part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516122920_codegen_7od89n_calprob_avg` STORED AS ORC AS WITH `CalProb_Union` AS 
(SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `tmp_20180516122920_codegen_l6cfe3_calprob_b0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`)
 SELECT `CalProb_avg`.`KEY`, `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`Proba_1789-07-14T00:00:00.000000000` AS DOUBLE) AS `Proba_1789-07-14T00:00:00.000000000`, CAST(`Proba_1789-08-14T00:00:00.000000000` AS DOUBLE) AS `Proba_1789-08-14T00:00:00.000000000`, CAST(`Proba_1789-09-14T00:00:00.000000000` AS DOUBLE) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(CAST(`Proba_1789-07-14T00:00:00.000000000` AS DOUBLE)) AS `Proba_1789-07-14T00:00:00.000000000`, avg(CAST(`Proba_1789-08-14T00:00:00.000000000` AS DOUBLE)) AS `Proba_1789-08-14T00:00:00.000000000`, avg(CAST(`Proba_1789-09-14T00:00:00.000000000` AS DOUBLE)) AS `Proba_1789-09-14T00:00:00.000000000` 
FROM `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`

-- Code For temporary table tmp_20180516122920_codegen_7od89n_calprob_avg part 2. Populate

SELECT * FROM `tmp_20180516122920_codegen_7od89n_calprob_avg`

-- Model deployment code

WITH `orig_cte` AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `Score_1789-09-14T00:00:00.000000000`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `LogProba_1789-07-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `LogProba_1789-08-14T00:00:00.000000000`, CAST(NULL AS DOUBLE) AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba` 
FROM `tmp_20180516122920_codegen_7od89n_calprob_avg` AS `CalProb_avg`), 
`score_class_union` AS 
(SELECT `scu`.`KEY_u` AS `KEY_u`, `scu`.`class` AS `class`, `scu`.`LogProba` AS `LogProba`, `scu`.`Proba` AS `Proba`, `scu`.`Score` AS `Score` 
FROM (SELECT `orig_cte`.`KEY` AS `KEY_u`, '1789-07-14T00:00:00.000000000' AS `class`, `LogProba_1789-07-14T00:00:00.000000000` AS `LogProba`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba`, `Score_1789-07-14T00:00:00.000000000` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, '1789-08-14T00:00:00.000000000' AS `class`, `LogProba_1789-08-14T00:00:00.000000000` AS `LogProba`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba`, `Score_1789-08-14T00:00:00.000000000` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, '1789-09-14T00:00:00.000000000' AS `class`, `LogProba_1789-09-14T00:00:00.000000000` AS `LogProba`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba`, `Score_1789-09-14T00:00:00.000000000` AS `Score` 
FROM `orig_cte`) AS `scu`), 
`score_max` AS 
(SELECT `orig_cte`.`KEY` AS `KEY`, `Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, `Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, `Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, `LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, `LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, `LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, `orig_cte`.`Decision` AS `Decision`, `orig_cte`.`DecisionProba` AS `DecisionProba`, `max_select`.`KEY_m` AS `KEY_m`, `max_select`.`max_Proba` AS `max_Proba` 
FROM `orig_cte` LEFT OUTER JOIN (SELECT `score_class_union`.`KEY_u` AS `KEY_m`, max(`score_class_union`.`Proba`) AS `max_Proba` 
FROM `score_class_union` GROUP BY `score_class_union`.`KEY_u`) AS `max_select` ON `orig_cte`.`KEY` = `max_select`.`KEY_m`), 
`union_with_max` AS 
(SELECT `score_class_union`.`KEY_u` AS `KEY_u`, `score_class_union`.`class` AS `class`, `score_class_union`.`LogProba` AS `LogProba`, `score_class_union`.`Proba` AS `Proba`, `score_class_union`.`Score` AS `Score`, `score_max`.`KEY` AS `KEY`, `Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, `Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, `Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, `LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, `LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, `LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba` 
FROM `score_class_union` LEFT OUTER JOIN `score_max` ON `score_class_union`.`KEY_u` = `score_max`.`KEY`), 
`arg_max_cte` AS 
(SELECT `score_max`.`KEY` AS `KEY`, `Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, `Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, `Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, `LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, `LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, `LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM `score_max` LEFT OUTER JOIN (SELECT `union_with_max`.`KEY` AS `KEY_Proba`, min(`union_with_max`.`class`) AS `arg_max_Proba` 
FROM `union_with_max` 
WHERE `union_with_max`.`Proba` >= `union_with_max`.`max_Proba` GROUP BY `union_with_max`.`KEY`) AS `arg_max_t_Proba` ON `score_max`.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT `arg_max_cte`.`KEY` AS `KEY`, `Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, `Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, `Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, `Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, `Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, `Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (`Proba_1789-07-14T00:00:00.000000000` IS NULL OR `Proba_1789-07-14T00:00:00.000000000` > 0.0) THEN log(`Proba_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (`Proba_1789-08-14T00:00:00.000000000` IS NULL OR `Proba_1789-08-14T00:00:00.000000000` > 0.0) THEN log(`Proba_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (`Proba_1789-09-14T00:00:00.000000000` IS NULL OR `Proba_1789-09-14T00:00:00.000000000` > 0.0) THEN log(`Proba_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, `arg_max_cte`.`arg_max_Proba` AS `Decision`, `arg_max_cte`.`max_Proba` AS `DecisionProba` 
FROM `arg_max_cte`