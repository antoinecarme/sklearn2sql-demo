-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid
-- Dataset : iris
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516122232_codegen_38h1ki_calprob_b0 part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516122232_codegen_38h1ki_calprob_b0` STORED AS ORC AS WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.75) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.75) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_2` <= 5.050000190734863) THEN CASE WHEN (`ADS`.`Feature_1` <= 3.049999952316284) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.75) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS `node_id_2` 
FROM `iris` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_0`, 0.6666666666666666 AS `P_1`, 0.3333333333333333 AS `P_2`, 1 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN log(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN log(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN log(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_2`) AS `ScoreOrProba_2` 
FROM `DT_Output`), 
`sigmoid_calibration_0` AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.488937334779731 * `Calibrated_Model_0`.`ScoreOrProba_0` + -3.0910424939613868))) AS `Proba_0`, 1.0 / (1.0 + exp(-(4.718121478468529 * `Calibrated_Model_0`.`ScoreOrProba_1` + -2.95244363385918))) AS `Proba_1`, 1.0 / (1.0 + exp(-(4.801955584523639 * `Calibrated_Model_0`.`ScoreOrProba_2` + -2.4323200933644706))) AS `Proba_2` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT `sigmoid_calibration_0`.`KEY` AS `KEY`, `sigmoid_calibration_0`.`Proba_0` / (`sigmoid_calibration_0`.`Proba_0` + `sigmoid_calibration_0`.`Proba_1` + `sigmoid_calibration_0`.`Proba_2`) AS `Proba_0`, `sigmoid_calibration_0`.`Proba_1` / (`sigmoid_calibration_0`.`Proba_0` + `sigmoid_calibration_0`.`Proba_1` + `sigmoid_calibration_0`.`Proba_2`) AS `Proba_1`, `sigmoid_calibration_0`.`Proba_2` / (`sigmoid_calibration_0`.`Proba_0` + `sigmoid_calibration_0`.`Proba_1` + `sigmoid_calibration_0`.`Proba_2`) AS `Proba_2` 
FROM `sigmoid_calibration_0`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 5.050000190734863) THEN CASE WHEN (`ADS`.`Feature_0` <= 6.5) THEN 10 ELSE 11 END ELSE 12 END END END AS `node_id_2` 
FROM `iris` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`nid` AS `nid`, `DT_node_data_1`.`P_0` AS `P_0`, `DT_node_data_1`.`P_1` AS `P_1`, `DT_node_data_1`.`P_2` AS `P_2`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`nid`), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, `DT_Output_1`.`P_0` AS `Proba_0`, `DT_Output_1`.`P_1` AS `Proba_1`, `DT_Output_1`.`P_2` AS `Proba_2`, CASE WHEN (`DT_Output_1`.`P_0` IS NULL OR `DT_Output_1`.`P_0` > 0.0) THEN log(`DT_Output_1`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_1`.`P_1` IS NULL OR `DT_Output_1`.`P_1` > 0.0) THEN log(`DT_Output_1`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_1`.`P_2` IS NULL OR `DT_Output_1`.`P_2` > 0.0) THEN log(`DT_Output_1`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_1`), 
`sigmoid_calibration_1` AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.393626322122635 * `Calibrated_Model_1`.`ScoreOrProba_0` + -3.091045517303994))) AS `Proba_0`, 1.0 / (1.0 + exp(-(5.442417342523719 * `Calibrated_Model_1`.`ScoreOrProba_1` + -3.0445224878196573))) AS `Proba_1`, 1.0 / (1.0 + exp(-(5.480638259777759 * `Calibrated_Model_1`.`ScoreOrProba_2` + -2.995732594243071))) AS `Proba_2` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT `sigmoid_calibration_1`.`KEY` AS `KEY`, `sigmoid_calibration_1`.`Proba_0` / (`sigmoid_calibration_1`.`Proba_0` + `sigmoid_calibration_1`.`Proba_1` + `sigmoid_calibration_1`.`Proba_2`) AS `Proba_0`, `sigmoid_calibration_1`.`Proba_1` / (`sigmoid_calibration_1`.`Proba_0` + `sigmoid_calibration_1`.`Proba_1` + `sigmoid_calibration_1`.`Proba_2`) AS `Proba_1`, `sigmoid_calibration_1`.`Proba_2` / (`sigmoid_calibration_1`.`Proba_0` + `sigmoid_calibration_1`.`Proba_1` + `sigmoid_calibration_1`.`Proba_2`) AS `Proba_2` 
FROM `sigmoid_calibration_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.75) THEN CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN CASE WHEN (`ADS`.`Feature_0` <= 4.949999809265137) THEN 5 ELSE 6 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 8 ELSE 9 END END ELSE 10 END END AS `node_id_2` 
FROM `iris` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`nid` AS `nid`, `DT_node_data_2`.`P_0` AS `P_0`, `DT_node_data_2`.`P_1` AS `P_1`, `DT_node_data_2`.`P_2` AS `P_2`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`nid`), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, `DT_Output_2`.`P_0` AS `Proba_0`, `DT_Output_2`.`P_1` AS `Proba_1`, `DT_Output_2`.`P_2` AS `Proba_2`, CASE WHEN (`DT_Output_2`.`P_0` IS NULL OR `DT_Output_2`.`P_0` > 0.0) THEN log(`DT_Output_2`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_2`.`P_1` IS NULL OR `DT_Output_2`.`P_1` > 0.0) THEN log(`DT_Output_2`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_2`.`P_2` IS NULL OR `DT_Output_2`.`P_2` > 0.0) THEN log(`DT_Output_2`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_2`), 
`sigmoid_calibration_2` AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.393626322122635 * `Calibrated_Model_2`.`ScoreOrProba_0` + -3.091045517303994))) AS `Proba_0`, 1.0 / (1.0 + exp(-(4.346958263204309 * `Calibrated_Model_2`.`ScoreOrProba_1` + -1.949062502016408))) AS `Proba_1`, 1.0 / (1.0 + exp(-(4.310987825487246 * `Calibrated_Model_2`.`ScoreOrProba_2` + -2.995735836256492))) AS `Proba_2` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT `sigmoid_calibration_2`.`KEY` AS `KEY`, `sigmoid_calibration_2`.`Proba_0` / (`sigmoid_calibration_2`.`Proba_0` + `sigmoid_calibration_2`.`Proba_1` + `sigmoid_calibration_2`.`Proba_2`) AS `Proba_0`, `sigmoid_calibration_2`.`Proba_1` / (`sigmoid_calibration_2`.`Proba_0` + `sigmoid_calibration_2`.`Proba_1` + `sigmoid_calibration_2`.`Proba_2`) AS `Proba_1`, `sigmoid_calibration_2`.`Proba_2` / (`sigmoid_calibration_2`.`Proba_0` + `sigmoid_calibration_2`.`Proba_1` + `sigmoid_calibration_2`.`Proba_2`) AS `Proba_2` 
FROM `sigmoid_calibration_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.800000011920929) THEN 1 ELSE CASE WHEN (`ADS`.`Feature_2` <= 4.850000381469727) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.6500000953674316) THEN 4 ELSE CASE WHEN (`ADS`.`Feature_1` <= 3.0999999046325684) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 2.549999952316284) THEN CASE WHEN (`ADS`.`Feature_2` <= 4.949999809265137) THEN 10 ELSE 11 END ELSE 12 END END END AS `node_id_2` 
FROM `iris` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 1 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 4 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`nid` AS `nid`, `DT_node_data_3`.`P_0` AS `P_0`, `DT_node_data_3`.`P_1` AS `P_1`, `DT_node_data_3`.`P_2` AS `P_2`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`nid`), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, `DT_Output_3`.`P_0` AS `Proba_0`, `DT_Output_3`.`P_1` AS `Proba_1`, `DT_Output_3`.`P_2` AS `Proba_2`, CASE WHEN (`DT_Output_3`.`P_0` IS NULL OR `DT_Output_3`.`P_0` > 0.0) THEN log(`DT_Output_3`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_3`.`P_1` IS NULL OR `DT_Output_3`.`P_1` > 0.0) THEN log(`DT_Output_3`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_3`.`P_2` IS NULL OR `DT_Output_3`.`P_2` > 0.0) THEN log(`DT_Output_3`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_2`) AS `ScoreOrProba_2` 
FROM `DT_Output_3`), 
`sigmoid_calibration_3` AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(-(5.3471066241328655 * `Calibrated_Model_3`.`ScoreOrProba_0` + -3.0445258104151054))) AS `Proba_0`, 1.0 / (1.0 + exp(-(4.295450701778823 * `Calibrated_Model_3`.`ScoreOrProba_1` + -1.8975549276218453))) AS `Proba_1`, 1.0 / (1.0 + exp(-(4.214379795150796 * `Calibrated_Model_3`.`ScoreOrProba_2` + -2.99573366824266))) AS `Proba_2` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT `sigmoid_calibration_3`.`KEY` AS `KEY`, `sigmoid_calibration_3`.`Proba_0` / (`sigmoid_calibration_3`.`Proba_0` + `sigmoid_calibration_3`.`Proba_1` + `sigmoid_calibration_3`.`Proba_2`) AS `Proba_0`, `sigmoid_calibration_3`.`Proba_1` / (`sigmoid_calibration_3`.`Proba_0` + `sigmoid_calibration_3`.`Proba_1` + `sigmoid_calibration_3`.`Proba_2`) AS `Proba_1`, `sigmoid_calibration_3`.`Proba_2` / (`sigmoid_calibration_3`.`Proba_0` + `sigmoid_calibration_3`.`Proba_1` + `sigmoid_calibration_3`.`Proba_2`) AS `Proba_2` 
FROM `sigmoid_calibration_3`)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_0`, `CalProb_B0`.`Proba_1`, `CalProb_B0`.`Proba_2` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_0` AS `Proba_0`, `CalProb_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_esu_0`.`Proba_2` AS `Proba_2` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_0` AS `Proba_0`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_2` AS `Proba_2` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`

-- Code For temporary table tmp_20180516122232_codegen_38h1ki_calprob_b0 part 2. Populate

SELECT * FROM `tmp_20180516122232_codegen_38h1ki_calprob_b0`

-- Code For temporary table tmp_20180516122232_codegen_ie70ki_calprob_avg part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516122232_codegen_ie70ki_calprob_avg` STORED AS ORC AS WITH `CalProb_Union` AS 
(SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_0` AS `Proba_0`, `CalProb_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_EnsembleUnion`.`Proba_2` AS `Proba_2` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_0` AS `Proba_0`, `CalProb_B0`.`Proba_1` AS `Proba_1`, `CalProb_B0`.`Proba_2` AS `Proba_2` 
FROM `tmp_20180516122232_codegen_38h1ki_calprob_b0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`)
 SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_0`, `CalProb_avg`.`Proba_1`, `CalProb_avg`.`Proba_2` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Proba_0` AS DOUBLE) AS `Proba_0`, CAST(`T`.`Proba_1` AS DOUBLE) AS `Proba_1`, CAST(`T`.`Proba_2` AS DOUBLE) AS `Proba_2` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(CAST(`CalProb_Union`.`Proba_0` AS DOUBLE)) AS `Proba_0`, avg(CAST(`CalProb_Union`.`Proba_1` AS DOUBLE)) AS `Proba_1`, avg(CAST(`CalProb_Union`.`Proba_2` AS DOUBLE)) AS `Proba_2` 
FROM `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`

-- Code For temporary table tmp_20180516122232_codegen_ie70ki_calprob_avg part 2. Populate

SELECT * FROM `tmp_20180516122232_codegen_ie70ki_calprob_avg`

-- Model deployment code

WITH `orig_cte` AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, `CalProb_avg`.`Proba_0` AS `Proba_0`, `CalProb_avg`.`Proba_1` AS `Proba_1`, `CalProb_avg`.`Proba_2` AS `Proba_2`, CAST(NULL AS DOUBLE) AS `LogProba_0`, CAST(NULL AS DOUBLE) AS `LogProba_1`, CAST(NULL AS DOUBLE) AS `LogProba_2`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba` 
FROM `tmp_20180516122232_codegen_ie70ki_calprob_avg` AS `CalProb_avg`), 
`score_class_union` AS 
(SELECT `scu`.`KEY_u` AS `KEY_u`, `scu`.`class` AS `class`, `scu`.`LogProba` AS `LogProba`, `scu`.`Proba` AS `Proba`, `scu`.`Score` AS `Score` 
FROM (SELECT `orig_cte`.`KEY` AS `KEY_u`, 0 AS `class`, `orig_cte`.`LogProba_0` AS `LogProba`, `orig_cte`.`Proba_0` AS `Proba`, `orig_cte`.`Score_0` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 1 AS `class`, `orig_cte`.`LogProba_1` AS `LogProba`, `orig_cte`.`Proba_1` AS `Proba`, `orig_cte`.`Score_1` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 2 AS `class`, `orig_cte`.`LogProba_2` AS `LogProba`, `orig_cte`.`Proba_2` AS `Proba`, `orig_cte`.`Score_2` AS `Score` 
FROM `orig_cte`) AS `scu`), 
`score_max` AS 
(SELECT `orig_cte`.`KEY` AS `KEY`, `orig_cte`.`Score_0` AS `Score_0`, `orig_cte`.`Score_1` AS `Score_1`, `orig_cte`.`Score_2` AS `Score_2`, `orig_cte`.`Proba_0` AS `Proba_0`, `orig_cte`.`Proba_1` AS `Proba_1`, `orig_cte`.`Proba_2` AS `Proba_2`, `orig_cte`.`LogProba_0` AS `LogProba_0`, `orig_cte`.`LogProba_1` AS `LogProba_1`, `orig_cte`.`LogProba_2` AS `LogProba_2`, `orig_cte`.`Decision` AS `Decision`, `orig_cte`.`DecisionProba` AS `DecisionProba`, `max_select`.`KEY_m` AS `KEY_m`, `max_select`.`max_Proba` AS `max_Proba` 
FROM `orig_cte` LEFT OUTER JOIN (SELECT `score_class_union`.`KEY_u` AS `KEY_m`, max(`score_class_union`.`Proba`) AS `max_Proba` 
FROM `score_class_union` GROUP BY `score_class_union`.`KEY_u`) AS `max_select` ON `orig_cte`.`KEY` = `max_select`.`KEY_m`), 
`union_with_max` AS 
(SELECT `score_class_union`.`KEY_u` AS `KEY_u`, `score_class_union`.`class` AS `class`, `score_class_union`.`LogProba` AS `LogProba`, `score_class_union`.`Proba` AS `Proba`, `score_class_union`.`Score` AS `Score`, `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba` 
FROM `score_class_union` LEFT OUTER JOIN `score_max` ON `score_class_union`.`KEY_u` = `score_max`.`KEY`), 
`arg_max_cte` AS 
(SELECT `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM `score_max` LEFT OUTER JOIN (SELECT `union_with_max`.`KEY` AS `KEY_Proba`, min(`union_with_max`.`class`) AS `arg_max_Proba` 
FROM `union_with_max` 
WHERE `union_with_max`.`Proba` >= `union_with_max`.`max_Proba` GROUP BY `union_with_max`.`KEY`) AS `arg_max_t_Proba` ON `score_max`.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT `arg_max_cte`.`KEY` AS `KEY`, `arg_max_cte`.`Score_0` AS `Score_0`, `arg_max_cte`.`Score_1` AS `Score_1`, `arg_max_cte`.`Score_2` AS `Score_2`, `arg_max_cte`.`Proba_0` AS `Proba_0`, `arg_max_cte`.`Proba_1` AS `Proba_1`, `arg_max_cte`.`Proba_2` AS `Proba_2`, CASE WHEN (`arg_max_cte`.`Proba_0` IS NULL OR `arg_max_cte`.`Proba_0` > 0.0) THEN log(`arg_max_cte`.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`arg_max_cte`.`Proba_1` IS NULL OR `arg_max_cte`.`Proba_1` > 0.0) THEN log(`arg_max_cte`.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`arg_max_cte`.`Proba_2` IS NULL OR `arg_max_cte`.`Proba_2` > 0.0) THEN log(`arg_max_cte`.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, `arg_max_cte`.`arg_max_Proba` AS `Decision`, `arg_max_cte`.`max_Proba` AS `DecisionProba` 
FROM `arg_max_cte`