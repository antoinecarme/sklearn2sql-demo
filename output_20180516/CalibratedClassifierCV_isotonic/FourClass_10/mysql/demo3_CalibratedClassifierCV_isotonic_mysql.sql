-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_isotonic
-- Dataset : FourClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516112153_CODEGEN_EMS7XE_CalProb_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112153_CODEGEN_EMS7XE_CalProb_B0` (
	`KEY` BIGINT, 
	`Proba_0` DOUBLE, 
	`Proba_1` DOUBLE, 
	`Proba_2` DOUBLE, 
	`Proba_3` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112153_CODEGEN_EMS7XE_CalProb_B0 part 2. Populate

INSERT INTO `TMP_20180516112153_CODEGEN_EMS7XE_CalProb_B0` (`KEY`, `Proba_0`, `Proba_1`, `Proba_2`, `Proba_3`) SELECT `U`.`KEY`, `U`.`Proba_0`, `U`.`Proba_1`, `U`.`Proba_2`, `U`.`Proba_3` 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5580734014511108) THEN CASE WHEN (`ADS`.`Feature_3` <= -1.775954246520996) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.35484129190444946) THEN CASE WHEN (`ADS`.`Feature_7` <= -1.394566535949707) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` <= 1.2103608846664429) THEN 7 ELSE 8 END END ELSE 9 END END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.362348735332489) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.5951647758483887) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 3.1317644119262695) THEN CASE WHEN (`ADS`.`Feature_9` <= -1.5898537635803223) THEN 16 ELSE CASE WHEN (`ADS`.`Feature_5` <= 1.7956550121307373) THEN 18 ELSE 19 END END ELSE 20 END END END AS node_id_2 
FROM `FourClass_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.2 AS `P_0`, 0.0 AS `P_1`, 0.8 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 0.8 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 0.875 AS `P_1`, 0.0 AS `P_2`, 0.125 AS `P_3`, 1 AS `D`, 0.875 AS `DP` UNION ALL SELECT 19 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`P_3` AS `P_3`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, `DT_Output`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN ln(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output`.`P_3` IS NULL OR `DT_Output`.`P_3` > 0.0) THEN ln(`DT_Output`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output`), 
isotonic_cte_0 AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 0.0) THEN 0.06666666666666667 WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 0.2) THEN (`Calibrated_Model_0`.`ScoreOrProba_0` - 0.0) * 2.1666666666666665 + 0.06666666666666667 WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_0` - 0.2) * 0.3125 + 0.5 ELSE 0.75 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.0) THEN 0.13333333333333333 WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.875) THEN (`Calibrated_Model_0`.`ScoreOrProba_1` - 0.0) * 0.41904761904761906 + 0.13333333333333333 ELSE 0.5 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 0.0) THEN 0.08823529411764706 WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 0.8) THEN (`Calibrated_Model_0`.`ScoreOrProba_2` - 0.0) * 0.0 + 0.08823529411764706 WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_2` - 0.8) * 4.558823529411765 + 0.08823529411764706 ELSE 1.0 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 0.0) THEN 0.0625 WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 0.125) THEN (`Calibrated_Model_0`.`ScoreOrProba_3` - 0.0) * 0.0 + 0.0625 WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_3` - 0.125) * 0.7448979591836735 + 0.0625 ELSE 0.7142857142857143 END AS `Proba_3` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT isotonic_cte_0.`KEY` AS `KEY`, isotonic_cte_0.`Proba_0` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1` + isotonic_cte_0.`Proba_2` + isotonic_cte_0.`Proba_3`) AS `Proba_0`, isotonic_cte_0.`Proba_1` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1` + isotonic_cte_0.`Proba_2` + isotonic_cte_0.`Proba_3`) AS `Proba_1`, isotonic_cte_0.`Proba_2` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1` + isotonic_cte_0.`Proba_2` + isotonic_cte_0.`Proba_3`) AS `Proba_2`, isotonic_cte_0.`Proba_3` / (isotonic_cte_0.`Proba_0` + isotonic_cte_0.`Proba_1` + isotonic_cte_0.`Proba_2` + isotonic_cte_0.`Proba_3`) AS `Proba_3` 
FROM isotonic_cte_0), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.6375722885131836) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.38003355264663696) THEN CASE WHEN (`ADS`.`Feature_8` <= -1.3765311241149902) THEN 3 ELSE CASE WHEN (`ADS`.`Feature_7` <= -3.0004677772521973) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_9` <= 2.1687114238739014) THEN 7 ELSE 8 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= -2.255753517150879) THEN 10 ELSE CASE WHEN (`ADS`.`Feature_2` <= -2.5394277572631836) THEN 12 ELSE 13 END END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.14806883037090302) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.18978963792324066) THEN 16 ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.33265137672424316) THEN 18 ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.7994422912597656) THEN 20 ELSE 21 END END END ELSE CASE WHEN (`ADS`.`Feature_9` <= -1.429455041885376) THEN 23 ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.8872426748275757) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.9329301118850708) THEN 26 ELSE 27 END ELSE 28 END END END END AS node_id_2 
FROM `FourClass_10` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 3 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.3333333333333333 AS `P_1`, 0.0 AS `P_2`, 0.6666666666666666 AS `P_3`, 3 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 21 AS nid, 0.0 AS `P_0`, 0.3333333333333333 AS `P_1`, 0.6666666666666666 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 0.6666666666666666 AS `DP` UNION ALL SELECT 23 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 26 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 28 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`P_0` AS `P_0`, `DT_node_data_1`.`P_1` AS `P_1`, `DT_node_data_1`.`P_2` AS `P_2`, `DT_node_data_1`.`P_3` AS `P_3`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_1`.`P_0` AS `Proba_0`, `DT_Output_1`.`P_1` AS `Proba_1`, `DT_Output_1`.`P_2` AS `Proba_2`, `DT_Output_1`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_1`.`P_0` IS NULL OR `DT_Output_1`.`P_0` > 0.0) THEN ln(`DT_Output_1`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_1`.`P_1` IS NULL OR `DT_Output_1`.`P_1` > 0.0) THEN ln(`DT_Output_1`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_1`.`P_2` IS NULL OR `DT_Output_1`.`P_2` > 0.0) THEN ln(`DT_Output_1`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_1`.`P_3` IS NULL OR `DT_Output_1`.`P_3` > 0.0) THEN ln(`DT_Output_1`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_1`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_1`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_1`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_1`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_1`), 
isotonic_cte_1 AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_0` < 0.0) THEN 0.0625 WHEN (`Calibrated_Model_1`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_0` - 0.0) * 0.7375 + 0.0625 ELSE 0.8 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.0) THEN 0.0 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.3333333333333333) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.0) * 1.9 + 0.0 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.3333333333333333) * 0.0 + 0.6333333333333333 ELSE 0.6333333333333333 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_2` < 0.0) THEN 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_2` < 0.6666666666666666) THEN (`Calibrated_Model_1`.`ScoreOrProba_2` - 0.0) * 0.3846153846153846 + 0.07692307692307693 WHEN (`Calibrated_Model_1`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_2` - 0.6666666666666666) * 0.7999999999999999 + 0.3333333333333333 ELSE 0.6 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_3` < 0.0) THEN 0.16666666666666666 WHEN (`Calibrated_Model_1`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_3` - 0.0) * 0.8333333333333334 + 0.16666666666666666 ELSE 1.0 END AS `Proba_3` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT isotonic_cte_1.`KEY` AS `KEY`, isotonic_cte_1.`Proba_0` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1` + isotonic_cte_1.`Proba_2` + isotonic_cte_1.`Proba_3`) AS `Proba_0`, isotonic_cte_1.`Proba_1` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1` + isotonic_cte_1.`Proba_2` + isotonic_cte_1.`Proba_3`) AS `Proba_1`, isotonic_cte_1.`Proba_2` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1` + isotonic_cte_1.`Proba_2` + isotonic_cte_1.`Proba_3`) AS `Proba_2`, isotonic_cte_1.`Proba_3` / (isotonic_cte_1.`Proba_0` + isotonic_cte_1.`Proba_1` + isotonic_cte_1.`Proba_2` + isotonic_cte_1.`Proba_3`) AS `Proba_3` 
FROM isotonic_cte_1), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.6454985737800598) THEN CASE WHEN (`ADS`.`Feature_3` <= -1.9080277681350708) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.23840734362602234) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.04635188356041908) THEN 5 ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.030811965465545654) THEN 7 ELSE 8 END END ELSE 9 END END ELSE CASE WHEN (`ADS`.`Feature_7` <= -0.2341448962688446) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.18966388702392578) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 2.708956480026245) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.1025473102927208) THEN CASE WHEN (`ADS`.`Feature_9` <= -1.5898537635803223) THEN 17 ELSE 18 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -1.012413501739502) THEN 20 ELSE 21 END END ELSE 22 END END END AS node_id_2 
FROM `FourClass_10` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.75 AS `P_0`, 0.0 AS `P_1`, 0.25 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 0.75 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 0.14285714285714285 AS `P_0`, 0.5714285714285714 AS `P_1`, 0.0 AS `P_2`, 0.2857142857142857 AS `P_3`, 1 AS `D`, 0.5714285714285714 AS `DP` UNION ALL SELECT 22 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`P_0` AS `P_0`, `DT_node_data_2`.`P_1` AS `P_1`, `DT_node_data_2`.`P_2` AS `P_2`, `DT_node_data_2`.`P_3` AS `P_3`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_2`.`P_0` AS `Proba_0`, `DT_Output_2`.`P_1` AS `Proba_1`, `DT_Output_2`.`P_2` AS `Proba_2`, `DT_Output_2`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_2`.`P_0` IS NULL OR `DT_Output_2`.`P_0` > 0.0) THEN ln(`DT_Output_2`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_2`.`P_1` IS NULL OR `DT_Output_2`.`P_1` > 0.0) THEN ln(`DT_Output_2`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_2`.`P_2` IS NULL OR `DT_Output_2`.`P_2` > 0.0) THEN ln(`DT_Output_2`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_2`.`P_3` IS NULL OR `DT_Output_2`.`P_3` > 0.0) THEN ln(`DT_Output_2`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_2`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_2`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_2`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_2`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_2`), 
isotonic_cte_2 AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 0.0) THEN 0.045454545454545456 WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 0.14285714285714285) THEN (`Calibrated_Model_2`.`ScoreOrProba_0` - 0.0) * 0.0 + 0.045454545454545456 WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 0.75) THEN (`Calibrated_Model_2`.`ScoreOrProba_0` - 0.14285714285714285) * 1.0780748663101603 + 0.045454545454545456 WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_0` - 0.75) * 0.0 + 0.7 ELSE 0.7 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.0) THEN 0.14285714285714285 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.5714285714285714) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.0) * 0.9166666666666665 + 0.14285714285714285 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.5714285714285714) * 0.0 + 0.6666666666666666 ELSE 0.6666666666666666 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_2` < 0.0) THEN 0.13333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_2` < 0.25) THEN (`Calibrated_Model_2`.`ScoreOrProba_2` - 0.0) * 0.0 + 0.13333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_2` - 0.25) * 0.26666666666666666 + 0.13333333333333333 ELSE 0.3333333333333333 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 0.0) THEN 0.08333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 0.2857142857142857) THEN (`Calibrated_Model_2`.`ScoreOrProba_3` - 0.0) * 0.0 + 0.08333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_3` - 0.2857142857142857) * 0.7233333333333333 + 0.08333333333333333 ELSE 0.6 END AS `Proba_3` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT isotonic_cte_2.`KEY` AS `KEY`, isotonic_cte_2.`Proba_0` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1` + isotonic_cte_2.`Proba_2` + isotonic_cte_2.`Proba_3`) AS `Proba_0`, isotonic_cte_2.`Proba_1` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1` + isotonic_cte_2.`Proba_2` + isotonic_cte_2.`Proba_3`) AS `Proba_1`, isotonic_cte_2.`Proba_2` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1` + isotonic_cte_2.`Proba_2` + isotonic_cte_2.`Proba_3`) AS `Proba_2`, isotonic_cte_2.`Proba_3` / (isotonic_cte_2.`Proba_0` + isotonic_cte_2.`Proba_1` + isotonic_cte_2.`Proba_2` + isotonic_cte_2.`Proba_3`) AS `Proba_3` 
FROM isotonic_cte_2), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_7` <= 0.3870038390159607) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.6974312663078308) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.3257526755332947) THEN CASE WHEN (`ADS`.`Feature_7` <= -1.1488919258117676) THEN 4 ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_1` <= -1.8410160541534424) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.10374534130096436) THEN 10 ELSE CASE WHEN (`ADS`.`Feature_3` <= 3.2052979469299316) THEN 12 ELSE 13 END END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 1.1771701574325562) THEN CASE WHEN (`ADS`.`Feature_2` <= -2.197004795074463) THEN 16 ELSE CASE WHEN (`ADS`.`Feature_0` <= -2.160223960876465) THEN 18 ELSE 19 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= 1.035046935081482) THEN CASE WHEN (`ADS`.`Feature_7` <= 3.265392780303955) THEN 22 ELSE 23 END ELSE 24 END END END AS node_id_2 
FROM `FourClass_10` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 4 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 5 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 24 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`P_0` AS `P_0`, `DT_node_data_3`.`P_1` AS `P_1`, `DT_node_data_3`.`P_2` AS `P_2`, `DT_node_data_3`.`P_3` AS `P_3`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `DT_Output_3`.`P_0` AS `Proba_0`, `DT_Output_3`.`P_1` AS `Proba_1`, `DT_Output_3`.`P_2` AS `Proba_2`, `DT_Output_3`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_3`.`P_0` IS NULL OR `DT_Output_3`.`P_0` > 0.0) THEN ln(`DT_Output_3`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_3`.`P_1` IS NULL OR `DT_Output_3`.`P_1` > 0.0) THEN ln(`DT_Output_3`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_3`.`P_2` IS NULL OR `DT_Output_3`.`P_2` > 0.0) THEN ln(`DT_Output_3`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_3`.`P_3` IS NULL OR `DT_Output_3`.`P_3` > 0.0) THEN ln(`DT_Output_3`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba`, coalesce(NULL, `DT_Output_3`.`P_0`) AS `ScoreOrProba_0`, coalesce(NULL, `DT_Output_3`.`P_1`) AS `ScoreOrProba_1`, coalesce(NULL, `DT_Output_3`.`P_2`) AS `ScoreOrProba_2`, coalesce(NULL, `DT_Output_3`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_3`), 
isotonic_cte_3 AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_0` < 0.0) THEN 0.07692307692307693 WHEN (`Calibrated_Model_3`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_0` - 0.0) * 0.4230769230769231 + 0.07692307692307693 ELSE 0.5 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.0) THEN 0.15384615384615385 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.0) * 0.34615384615384615 + 0.15384615384615385 ELSE 0.5 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_2` < 0.0) THEN 0.1875 WHEN (`Calibrated_Model_3`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_2` - 0.0) * 0.47916666666666663 + 0.1875 ELSE 0.6666666666666666 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_3` < 0.0) THEN 0.13333333333333333 WHEN (`Calibrated_Model_3`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_3` - 0.0) * 0.6166666666666667 + 0.13333333333333333 ELSE 0.75 END AS `Proba_3` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT isotonic_cte_3.`KEY` AS `KEY`, isotonic_cte_3.`Proba_0` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1` + isotonic_cte_3.`Proba_2` + isotonic_cte_3.`Proba_3`) AS `Proba_0`, isotonic_cte_3.`Proba_1` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1` + isotonic_cte_3.`Proba_2` + isotonic_cte_3.`Proba_3`) AS `Proba_1`, isotonic_cte_3.`Proba_2` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1` + isotonic_cte_3.`Proba_2` + isotonic_cte_3.`Proba_3`) AS `Proba_2`, isotonic_cte_3.`Proba_3` / (isotonic_cte_3.`Proba_0` + isotonic_cte_3.`Proba_1` + isotonic_cte_3.`Proba_2` + isotonic_cte_3.`Proba_3`) AS `Proba_3` 
FROM isotonic_cte_3)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_0`, `CalProb_B0`.`Proba_1`, `CalProb_B0`.`Proba_2`, `CalProb_B0`.`Proba_3` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_0` AS `Proba_0`, `CalProb_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_esu_0`.`Proba_2` AS `Proba_2`, `CalProb_esu_0`.`Proba_3` AS `Proba_3` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_0` AS `Proba_0`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_2` AS `Proba_2`, `Normalized_Probas`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_2` AS `Proba_2`, `Normalized_Probas_1`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_2` AS `Proba_2`, `Normalized_Probas_2`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_2` AS `Proba_2`, `Normalized_Probas_3`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`) AS `U`

-- Code For temporary table TMP_20180516112153_CODEGEN_HNON88_CalProb_avg part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112153_CODEGEN_HNON88_CalProb_avg` (
	`KEY` BIGINT NOT NULL, 
	`Proba_0` DOUBLE, 
	`Proba_1` DOUBLE, 
	`Proba_2` DOUBLE, 
	`Proba_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112153_CODEGEN_HNON88_CalProb_avg part 2. Populate

INSERT INTO `TMP_20180516112153_CODEGEN_HNON88_CalProb_avg` (`KEY`, `Proba_0`, `Proba_1`, `Proba_2`, `Proba_3`) SELECT `U`.`KEY`, `U`.`Proba_0`, `U`.`Proba_1`, `U`.`Proba_2`, `U`.`Proba_3` 
FROM (WITH `CalProb_Union` AS 
(SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_0` AS `Proba_0`, `CalProb_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_EnsembleUnion`.`Proba_2` AS `Proba_2`, `CalProb_EnsembleUnion`.`Proba_3` AS `Proba_3` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_0` AS `Proba_0`, `CalProb_B0`.`Proba_1` AS `Proba_1`, `CalProb_B0`.`Proba_2` AS `Proba_2`, `CalProb_B0`.`Proba_3` AS `Proba_3` 
FROM `TMP_20180516112153_CODEGEN_EMS7XE_CalProb_B0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`)
 SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_0`, `CalProb_avg`.`Proba_1`, `CalProb_avg`.`Proba_2`, `CalProb_avg`.`Proba_3` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Proba_0` AS DOUBLE) AS `Proba_0`, CAST(`T`.`Proba_1` AS DOUBLE) AS `Proba_1`, CAST(`T`.`Proba_2` AS DOUBLE) AS `Proba_2`, CAST(`T`.`Proba_3` AS DOUBLE) AS `Proba_3` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(CAST(`CalProb_Union`.`Proba_0` AS DOUBLE)) AS `Proba_0`, avg(CAST(`CalProb_Union`.`Proba_1` AS DOUBLE)) AS `Proba_1`, avg(CAST(`CalProb_Union`.`Proba_2` AS DOUBLE)) AS `Proba_2`, avg(CAST(`CalProb_Union`.`Proba_3` AS DOUBLE)) AS `Proba_3` 
FROM `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`) AS `U`

-- Code For temporary table TMP_20180516112153_CODEGEN_HNON88_CalProb_avg part 3. Create Index 

CREATE INDEX `ix_TMP_20180516112153_CODEGEN_HNON88_CalProb_avg_KEY` ON `TMP_20180516112153_CODEGEN_HNON88_CalProb_avg` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, `CalProb_avg`.`Proba_0` AS `Proba_0`, `CalProb_avg`.`Proba_1` AS `Proba_1`, `CalProb_avg`.`Proba_2` AS `Proba_2`, `CalProb_avg`.`Proba_3` AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180516112153_CODEGEN_HNON88_CalProb_avg` AS `CalProb_avg`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`Proba` >= union_with_max.`max_Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte