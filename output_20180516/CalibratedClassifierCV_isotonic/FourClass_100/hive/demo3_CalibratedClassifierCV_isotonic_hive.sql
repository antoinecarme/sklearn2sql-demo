-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_isotonic
-- Dataset : FourClass_100
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112839_codegen_ij86hj_calprob_b0 part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516112839_codegen_ij86hj_calprob_b0` STORED AS ORC AS WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_44` <= -2.251925468444824) THEN CASE WHEN (`ADS`.`Feature_96` <= -1.1317903995513916) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_29` <= 0.45919904112815857) THEN CASE WHEN (`ADS`.`Feature_48` <= -0.5835959315299988) THEN CASE WHEN (`ADS`.`Feature_72` <= -0.8984273672103882) THEN CASE WHEN (`ADS`.`Feature_32` <= -1.5972270965576172) THEN 8 ELSE 9 END ELSE 10 END ELSE CASE WHEN (`ADS`.`Feature_88` <= -0.5731241703033447) THEN CASE WHEN (`ADS`.`Feature_65` <= 0.17340008914470673) THEN 13 ELSE 14 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.6707823276519775) THEN 16 ELSE 17 END END END ELSE CASE WHEN (`ADS`.`Feature_89` <= -0.5230199694633484) THEN CASE WHEN (`ADS`.`Feature_25` <= 0.36054521799087524) THEN 20 ELSE CASE WHEN (`ADS`.`Feature_1` <= 1.2682536840438843) THEN 22 ELSE 23 END END ELSE CASE WHEN (`ADS`.`Feature_71` <= 0.8836559653282166) THEN CASE WHEN (`ADS`.`Feature_23` <= 1.8338840007781982) THEN 26 ELSE 27 END ELSE CASE WHEN (`ADS`.`Feature_55` <= -0.1688147336244583) THEN 29 ELSE 30 END END END END END AS `node_id_2` 
FROM `FourClass_100` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS `nid`, 0.0 AS `P_0`, 0.3333333333333333 AS `P_1`, 0.3333333333333333 AS `P_2`, 0.3333333333333333 AS `P_3`, 1 AS `D`, 0.3333333333333333 AS `DP` UNION ALL SELECT 16 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS `nid`, 0.5 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.5 AS `P_3`, 0 AS `D`, 0.5 AS `DP` UNION ALL SELECT 20 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS `nid`, 0.5 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.5 AS `P_3`, 0 AS `D`, 0.5 AS `DP` UNION ALL SELECT 26 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 29 AS `nid`, 0.0 AS `P_0`, 0.5 AS `P_1`, 0.5 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 0.5 AS `DP` UNION ALL SELECT 30 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`P_3` AS `P_3`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`), 
`Calibrated_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, `DT_Output`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN log(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN log(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN log(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output`.`P_3` IS NULL OR `DT_Output`.`P_3` > 0.0) THEN log(`DT_Output`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_2`) AS `ScoreOrProba_2`, coalesce(CAST(NULL AS DOUBLE), `DT_Output`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output`), 
`isotonic_cte_0` AS 
(SELECT `Calibrated_Model_0`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 0.0) THEN 0.08823529411764706 WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 0.5) THEN (`Calibrated_Model_0`.`ScoreOrProba_0` - 0.0) * 0.0 + 0.08823529411764706 WHEN (`Calibrated_Model_0`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_0` - 0.5) * 0.6806722689075629 + 0.08823529411764706 ELSE 0.42857142857142855 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.0) THEN 0.2222222222222222 WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 0.3333333333333333) THEN (`Calibrated_Model_0`.`ScoreOrProba_1` - 0.0) * 1.3333333333333333 + 0.2222222222222222 WHEN (`Calibrated_Model_0`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_1` - 0.3333333333333333) * 0.0 + 0.6666666666666666 ELSE 0.6666666666666666 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 0.0) THEN 0.125 WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 0.3333333333333333) THEN (`Calibrated_Model_0`.`ScoreOrProba_2` - 0.0) * 0.0 + 0.125 WHEN (`Calibrated_Model_0`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_2` - 0.3333333333333333) * 0.18749999999999997 + 0.125 ELSE 0.25 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 0.0) THEN 0.09803921568627451 WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 0.5) THEN (`Calibrated_Model_0`.`ScoreOrProba_3` - 0.0) * 0.0 + 0.09803921568627451 WHEN (`Calibrated_Model_0`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_0`.`ScoreOrProba_3` - 0.5) * 0.1372549019607843 + 0.09803921568627451 ELSE 0.16666666666666666 END AS `Proba_3` 
FROM `Calibrated_Model_0`), 
`Normalized_Probas` AS 
(SELECT `isotonic_cte_0`.`KEY` AS `KEY`, `isotonic_cte_0`.`Proba_0` / (`isotonic_cte_0`.`Proba_0` + `isotonic_cte_0`.`Proba_1` + `isotonic_cte_0`.`Proba_2` + `isotonic_cte_0`.`Proba_3`) AS `Proba_0`, `isotonic_cte_0`.`Proba_1` / (`isotonic_cte_0`.`Proba_0` + `isotonic_cte_0`.`Proba_1` + `isotonic_cte_0`.`Proba_2` + `isotonic_cte_0`.`Proba_3`) AS `Proba_1`, `isotonic_cte_0`.`Proba_2` / (`isotonic_cte_0`.`Proba_0` + `isotonic_cte_0`.`Proba_1` + `isotonic_cte_0`.`Proba_2` + `isotonic_cte_0`.`Proba_3`) AS `Proba_2`, `isotonic_cte_0`.`Proba_3` / (`isotonic_cte_0`.`Proba_0` + `isotonic_cte_0`.`Proba_1` + `isotonic_cte_0`.`Proba_2` + `isotonic_cte_0`.`Proba_3`) AS `Proba_3` 
FROM `isotonic_cte_0`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_44` <= -2.102118492126465) THEN CASE WHEN (`ADS`.`Feature_27` <= -2.5788779258728027) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_19` <= -0.34581390023231506) THEN CASE WHEN (`ADS`.`Feature_44` <= 0.03072994016110897) THEN CASE WHEN (`ADS`.`Feature_78` <= -0.5366795063018799) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_57` <= -0.7518550753593445) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_24` <= 0.6162330508232117) THEN CASE WHEN (`ADS`.`Feature_23` <= 0.7732001543045044) THEN 13 ELSE 14 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -1.0073661804199219) THEN 16 ELSE 17 END END END ELSE CASE WHEN (`ADS`.`Feature_92` <= -0.3169291019439697) THEN CASE WHEN (`ADS`.`Feature_6` <= 1.4078700542449951) THEN 20 ELSE 21 END ELSE CASE WHEN (`ADS`.`Feature_20` <= -0.9702260494232178) THEN CASE WHEN (`ADS`.`Feature_32` <= 0.9924542307853699) THEN 24 ELSE 25 END ELSE CASE WHEN (`ADS`.`Feature_28` <= -1.3160618543624878) THEN 27 ELSE 28 END END END END END AS `node_id_2` 
FROM `FourClass_100` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 7 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 17 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 24 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 25 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS `nid`, 0.0 AS `P_0`, 0.75 AS `P_1`, 0.0 AS `P_2`, 0.25 AS `P_3`, 1 AS `D`, 0.75 AS `DP` UNION ALL SELECT 28 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`nid` AS `nid`, `DT_node_data_1`.`P_0` AS `P_0`, `DT_node_data_1`.`P_1` AS `P_1`, `DT_node_data_1`.`P_2` AS `P_2`, `DT_node_data_1`.`P_3` AS `P_3`, `DT_node_data_1`.`D` AS `D`, `DT_node_data_1`.`DP` AS `DP` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`nid`), 
`Calibrated_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `DT_Output_1`.`P_0` AS `Proba_0`, `DT_Output_1`.`P_1` AS `Proba_1`, `DT_Output_1`.`P_2` AS `Proba_2`, `DT_Output_1`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_1`.`P_0` IS NULL OR `DT_Output_1`.`P_0` > 0.0) THEN log(`DT_Output_1`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_1`.`P_1` IS NULL OR `DT_Output_1`.`P_1` > 0.0) THEN log(`DT_Output_1`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_1`.`P_2` IS NULL OR `DT_Output_1`.`P_2` > 0.0) THEN log(`DT_Output_1`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_1`.`P_3` IS NULL OR `DT_Output_1`.`P_3` > 0.0) THEN log(`DT_Output_1`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_2`) AS `ScoreOrProba_2`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_1`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_1`), 
`isotonic_cte_1` AS 
(SELECT `Calibrated_Model_1`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_0` < 0.0) THEN 0.23529411764705882 WHEN (`Calibrated_Model_1`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_0` - 0.0) * 0.05042016806722688 + 0.23529411764705882 ELSE 0.2857142857142857 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 0.0) THEN 0.2184873949579832 WHEN (`Calibrated_Model_1`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_1` - 0.0) * 0.0 + 0.2184873949579832 ELSE 0.2184873949579832 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_2` < 0.0) THEN 0.10526315789473684 WHEN (`Calibrated_Model_1`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_2` - 0.0) * 0.6947368421052632 + 0.10526315789473684 ELSE 0.8 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_1`.`ScoreOrProba_3` < 0.0) THEN 0.23157894736842105 WHEN (`Calibrated_Model_1`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_1`.`ScoreOrProba_3` - 0.0) * 0.0 + 0.23157894736842105 ELSE 0.23157894736842105 END AS `Proba_3` 
FROM `Calibrated_Model_1`), 
`Normalized_Probas_1` AS 
(SELECT `isotonic_cte_1`.`KEY` AS `KEY`, `isotonic_cte_1`.`Proba_0` / (`isotonic_cte_1`.`Proba_0` + `isotonic_cte_1`.`Proba_1` + `isotonic_cte_1`.`Proba_2` + `isotonic_cte_1`.`Proba_3`) AS `Proba_0`, `isotonic_cte_1`.`Proba_1` / (`isotonic_cte_1`.`Proba_0` + `isotonic_cte_1`.`Proba_1` + `isotonic_cte_1`.`Proba_2` + `isotonic_cte_1`.`Proba_3`) AS `Proba_1`, `isotonic_cte_1`.`Proba_2` / (`isotonic_cte_1`.`Proba_0` + `isotonic_cte_1`.`Proba_1` + `isotonic_cte_1`.`Proba_2` + `isotonic_cte_1`.`Proba_3`) AS `Proba_2`, `isotonic_cte_1`.`Proba_3` / (`isotonic_cte_1`.`Proba_0` + `isotonic_cte_1`.`Proba_1` + `isotonic_cte_1`.`Proba_2` + `isotonic_cte_1`.`Proba_3`) AS `Proba_3` 
FROM `isotonic_cte_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_44` <= -2.1092634201049805) THEN CASE WHEN (`ADS`.`Feature_89` <= -0.8151466846466064) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_78` <= -0.6111561059951782) THEN CASE WHEN (`ADS`.`Feature_41` <= 0.3993445336818695) THEN CASE WHEN (`ADS`.`Feature_19` <= -0.5326353907585144) THEN CASE WHEN (`ADS`.`Feature_71` <= -0.6677910685539246) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_14` <= 0.8646166324615479) THEN 11 ELSE 12 END END ELSE 13 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.35835689306259155) THEN CASE WHEN (`ADS`.`Feature_53` <= 2.6993987560272217) THEN 16 ELSE CASE WHEN (`ADS`.`Feature_53` <= 2.9988903999328613) THEN 18 ELSE 19 END END ELSE CASE WHEN (`ADS`.`Feature_48` <= -0.5433159470558167) THEN CASE WHEN (`ADS`.`Feature_26` <= 0.5924341082572937) THEN 22 ELSE 23 END ELSE CASE WHEN (`ADS`.`Feature_47` <= -0.02338995784521103) THEN 25 ELSE 26 END END END END END AS `node_id_2` 
FROM `FourClass_100` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS `nid`, 0.16666666666666666 AS `P_0`, 0.8333333333333334 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 0.8333333333333334 AS `DP` UNION ALL SELECT 12 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 25 AS `nid`, 0.0 AS `P_0`, 0.16666666666666666 AS `P_1`, 0.0 AS `P_2`, 0.8333333333333334 AS `P_3`, 3 AS `D`, 0.8333333333333334 AS `DP` UNION ALL SELECT 26 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`nid` AS `nid`, `DT_node_data_2`.`P_0` AS `P_0`, `DT_node_data_2`.`P_1` AS `P_1`, `DT_node_data_2`.`P_2` AS `P_2`, `DT_node_data_2`.`P_3` AS `P_3`, `DT_node_data_2`.`D` AS `D`, `DT_node_data_2`.`DP` AS `DP` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`nid`), 
`Calibrated_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `DT_Output_2`.`P_0` AS `Proba_0`, `DT_Output_2`.`P_1` AS `Proba_1`, `DT_Output_2`.`P_2` AS `Proba_2`, `DT_Output_2`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_2`.`P_0` IS NULL OR `DT_Output_2`.`P_0` > 0.0) THEN log(`DT_Output_2`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_2`.`P_1` IS NULL OR `DT_Output_2`.`P_1` > 0.0) THEN log(`DT_Output_2`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_2`.`P_2` IS NULL OR `DT_Output_2`.`P_2` > 0.0) THEN log(`DT_Output_2`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_2`.`P_3` IS NULL OR `DT_Output_2`.`P_3` > 0.0) THEN log(`DT_Output_2`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_2`) AS `ScoreOrProba_2`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_2`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_2`), 
`isotonic_cte_2` AS 
(SELECT `Calibrated_Model_2`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 0.0) THEN 0.11764705882352941 WHEN (`Calibrated_Model_2`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_0` - 0.0) * 0.45378151260504196 + 0.11764705882352941 ELSE 0.5714285714285714 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 0.0) THEN 0.19883040935672514 WHEN (`Calibrated_Model_2`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_1` - 0.0) * 0.0 + 0.19883040935672514 ELSE 0.19883040935672514 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_2` < 0.0) THEN 0.05555555555555555 WHEN (`Calibrated_Model_2`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_2` - 0.0) * 0.7777777777777778 + 0.05555555555555555 ELSE 0.8333333333333334 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 0.0) THEN 0.13333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 0.8333333333333334) THEN (`Calibrated_Model_2`.`ScoreOrProba_3` - 0.0) * 0.23999999999999996 + 0.13333333333333333 WHEN (`Calibrated_Model_2`.`ScoreOrProba_3` < 1.0) THEN (`Calibrated_Model_2`.`ScoreOrProba_3` - 0.8333333333333334) * 1.0000000000000004 + 0.3333333333333333 ELSE 0.5 END AS `Proba_3` 
FROM `Calibrated_Model_2`), 
`Normalized_Probas_2` AS 
(SELECT `isotonic_cte_2`.`KEY` AS `KEY`, `isotonic_cte_2`.`Proba_0` / (`isotonic_cte_2`.`Proba_0` + `isotonic_cte_2`.`Proba_1` + `isotonic_cte_2`.`Proba_2` + `isotonic_cte_2`.`Proba_3`) AS `Proba_0`, `isotonic_cte_2`.`Proba_1` / (`isotonic_cte_2`.`Proba_0` + `isotonic_cte_2`.`Proba_1` + `isotonic_cte_2`.`Proba_2` + `isotonic_cte_2`.`Proba_3`) AS `Proba_1`, `isotonic_cte_2`.`Proba_2` / (`isotonic_cte_2`.`Proba_0` + `isotonic_cte_2`.`Proba_1` + `isotonic_cte_2`.`Proba_2` + `isotonic_cte_2`.`Proba_3`) AS `Proba_2`, `isotonic_cte_2`.`Proba_3` / (`isotonic_cte_2`.`Proba_0` + `isotonic_cte_2`.`Proba_1` + `isotonic_cte_2`.`Proba_2` + `isotonic_cte_2`.`Proba_3`) AS `Proba_3` 
FROM `isotonic_cte_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_44` <= -2.1092634201049805) THEN CASE WHEN (`ADS`.`Feature_61` <= 0.8375953435897827) THEN 2 ELSE 3 END ELSE CASE WHEN (`ADS`.`Feature_29` <= -0.5552122592926025) THEN CASE WHEN (`ADS`.`Feature_60` <= 0.3076881170272827) THEN CASE WHEN (`ADS`.`Feature_69` <= -0.2408703714609146) THEN CASE WHEN (`ADS`.`Feature_32` <= -0.5704486966133118) THEN 8 ELSE 9 END ELSE 10 END ELSE CASE WHEN (`ADS`.`Feature_46` <= 0.2785100042819977) THEN 12 ELSE CASE WHEN (`ADS`.`Feature_23` <= 2.195375919342041) THEN 14 ELSE 15 END END END ELSE CASE WHEN (`ADS`.`Feature_99` <= -0.09796052426099777) THEN CASE WHEN (`ADS`.`Feature_89` <= -0.5230199694633484) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.59128338098526) THEN 19 ELSE 20 END ELSE CASE WHEN (`ADS`.`Feature_11` <= -1.609899878501892) THEN 22 ELSE 23 END END ELSE CASE WHEN (`ADS`.`Feature_48` <= 1.0742266178131104) THEN CASE WHEN (`ADS`.`Feature_36` <= 0.3751178979873657) THEN 26 ELSE 27 END ELSE 28 END END END END AS `node_id_2` 
FROM `FourClass_100` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 3 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 19 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS `nid`, 0.0 AS `P_0`, 0.07142857142857142 AS `P_1`, 0.0 AS `P_2`, 0.9285714285714286 AS `P_3`, 3 AS `D`, 0.9285714285714286 AS `DP` UNION ALL SELECT 26 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 27 AS `nid`, 0.3333333333333333 AS `P_0`, 0.0 AS `P_1`, 0.3333333333333333 AS `P_2`, 0.3333333333333333 AS `P_3`, 0 AS `D`, 0.3333333333333333 AS `DP` UNION ALL SELECT 28 AS `nid`, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`nid` AS `nid`, `DT_node_data_3`.`P_0` AS `P_0`, `DT_node_data_3`.`P_1` AS `P_1`, `DT_node_data_3`.`P_2` AS `P_2`, `DT_node_data_3`.`P_3` AS `P_3`, `DT_node_data_3`.`D` AS `D`, `DT_node_data_3`.`DP` AS `DP` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`nid`), 
`Calibrated_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `DT_Output_3`.`P_0` AS `Proba_0`, `DT_Output_3`.`P_1` AS `Proba_1`, `DT_Output_3`.`P_2` AS `Proba_2`, `DT_Output_3`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output_3`.`P_0` IS NULL OR `DT_Output_3`.`P_0` > 0.0) THEN log(`DT_Output_3`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output_3`.`P_1` IS NULL OR `DT_Output_3`.`P_1` > 0.0) THEN log(`DT_Output_3`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output_3`.`P_2` IS NULL OR `DT_Output_3`.`P_2` > 0.0) THEN log(`DT_Output_3`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output_3`.`P_3` IS NULL OR `DT_Output_3`.`P_3` > 0.0) THEN log(`DT_Output_3`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_0`) AS `ScoreOrProba_0`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_1`) AS `ScoreOrProba_1`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_2`) AS `ScoreOrProba_2`, coalesce(CAST(NULL AS DOUBLE), `DT_Output_3`.`P_3`) AS `ScoreOrProba_3` 
FROM `DT_Output_3`), 
`isotonic_cte_3` AS 
(SELECT `Calibrated_Model_3`.`KEY` AS `KEY`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_0` < 0.0) THEN 0.11764705882352941 WHEN (`Calibrated_Model_3`.`ScoreOrProba_0` < 0.3333333333333333) THEN (`Calibrated_Model_3`.`ScoreOrProba_0` - 0.0) * 0.0 + 0.11764705882352941 WHEN (`Calibrated_Model_3`.`ScoreOrProba_0` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_0` - 0.3333333333333333) * 0.4235294117647058 + 0.11764705882352941 ELSE 0.4 END AS `Proba_0`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 0.0) THEN 0.26851851851851855 WHEN (`Calibrated_Model_3`.`ScoreOrProba_1` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_1` - 0.0) * 0.0 + 0.26851851851851855 ELSE 0.26851851851851855 END AS `Proba_1`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_2` < 0.0) THEN 0.08771929824561403 WHEN (`Calibrated_Model_3`.`ScoreOrProba_2` < 1.0) THEN (`Calibrated_Model_3`.`ScoreOrProba_2` - 0.0) * 0.0 + 0.08771929824561403 ELSE 0.08771929824561403 END AS `Proba_2`, CASE WHEN (`Calibrated_Model_3`.`ScoreOrProba_3` < 0.0) THEN 0.1111111111111111 WHEN (`Calibrated_Model_3`.`ScoreOrProba_3` < 0.3333333333333333) THEN (`Calibrated_Model_3`.`ScoreOrProba_3` - 0.0) * 0.0 + 0.1111111111111111 WHEN (`Calibrated_Model_3`.`ScoreOrProba_3` < 0.9285714285714286) THEN (`Calibrated_Model_3`.`ScoreOrProba_3` - 0.3333333333333333) * 0.6533333333333332 + 0.1111111111111111 ELSE 0.5 END AS `Proba_3` 
FROM `Calibrated_Model_3`), 
`Normalized_Probas_3` AS 
(SELECT `isotonic_cte_3`.`KEY` AS `KEY`, `isotonic_cte_3`.`Proba_0` / (`isotonic_cte_3`.`Proba_0` + `isotonic_cte_3`.`Proba_1` + `isotonic_cte_3`.`Proba_2` + `isotonic_cte_3`.`Proba_3`) AS `Proba_0`, `isotonic_cte_3`.`Proba_1` / (`isotonic_cte_3`.`Proba_0` + `isotonic_cte_3`.`Proba_1` + `isotonic_cte_3`.`Proba_2` + `isotonic_cte_3`.`Proba_3`) AS `Proba_1`, `isotonic_cte_3`.`Proba_2` / (`isotonic_cte_3`.`Proba_0` + `isotonic_cte_3`.`Proba_1` + `isotonic_cte_3`.`Proba_2` + `isotonic_cte_3`.`Proba_3`) AS `Proba_2`, `isotonic_cte_3`.`Proba_3` / (`isotonic_cte_3`.`Proba_0` + `isotonic_cte_3`.`Proba_1` + `isotonic_cte_3`.`Proba_2` + `isotonic_cte_3`.`Proba_3`) AS `Proba_3` 
FROM `isotonic_cte_3`)
 SELECT `CalProb_B0`.`KEY`, `CalProb_B0`.`Proba_0`, `CalProb_B0`.`Proba_1`, `CalProb_B0`.`Proba_2`, `CalProb_B0`.`Proba_3` 
FROM (SELECT `CalProb_esu_0`.`KEY` AS `KEY`, `CalProb_esu_0`.`Proba_0` AS `Proba_0`, `CalProb_esu_0`.`Proba_1` AS `Proba_1`, `CalProb_esu_0`.`Proba_2` AS `Proba_2`, `CalProb_esu_0`.`Proba_3` AS `Proba_3` 
FROM (SELECT `Normalized_Probas`.`KEY` AS `KEY`, `Normalized_Probas`.`Proba_0` AS `Proba_0`, `Normalized_Probas`.`Proba_1` AS `Proba_1`, `Normalized_Probas`.`Proba_2` AS `Proba_2`, `Normalized_Probas`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas` UNION ALL SELECT `Normalized_Probas_1`.`KEY` AS `KEY`, `Normalized_Probas_1`.`Proba_0` AS `Proba_0`, `Normalized_Probas_1`.`Proba_1` AS `Proba_1`, `Normalized_Probas_1`.`Proba_2` AS `Proba_2`, `Normalized_Probas_1`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_1` UNION ALL SELECT `Normalized_Probas_2`.`KEY` AS `KEY`, `Normalized_Probas_2`.`Proba_0` AS `Proba_0`, `Normalized_Probas_2`.`Proba_1` AS `Proba_1`, `Normalized_Probas_2`.`Proba_2` AS `Proba_2`, `Normalized_Probas_2`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_2` UNION ALL SELECT `Normalized_Probas_3`.`KEY` AS `KEY`, `Normalized_Probas_3`.`Proba_0` AS `Proba_0`, `Normalized_Probas_3`.`Proba_1` AS `Proba_1`, `Normalized_Probas_3`.`Proba_2` AS `Proba_2`, `Normalized_Probas_3`.`Proba_3` AS `Proba_3` 
FROM `Normalized_Probas_3`) AS `CalProb_esu_0`) AS `CalProb_B0`

-- Code For temporary table tmp_20180516112839_codegen_ij86hj_calprob_b0 part 2. Populate

SELECT * FROM `tmp_20180516112839_codegen_ij86hj_calprob_b0`

-- Code For temporary table tmp_20180516112839_codegen_v7ip12_calprob_avg part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516112839_codegen_v7ip12_calprob_avg` STORED AS ORC AS WITH `CalProb_Union` AS 
(SELECT `CalProb_EnsembleUnion`.`KEY` AS `KEY`, `CalProb_EnsembleUnion`.`Proba_0` AS `Proba_0`, `CalProb_EnsembleUnion`.`Proba_1` AS `Proba_1`, `CalProb_EnsembleUnion`.`Proba_2` AS `Proba_2`, `CalProb_EnsembleUnion`.`Proba_3` AS `Proba_3` 
FROM (SELECT `CalProb_B0`.`KEY` AS `KEY`, `CalProb_B0`.`Proba_0` AS `Proba_0`, `CalProb_B0`.`Proba_1` AS `Proba_1`, `CalProb_B0`.`Proba_2` AS `Proba_2`, `CalProb_B0`.`Proba_3` AS `Proba_3` 
FROM `tmp_20180516112839_codegen_ij86hj_calprob_b0` AS `CalProb_B0`) AS `CalProb_EnsembleUnion`)
 SELECT `CalProb_avg`.`KEY`, `CalProb_avg`.`Proba_0`, `CalProb_avg`.`Proba_1`, `CalProb_avg`.`Proba_2`, `CalProb_avg`.`Proba_3` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Proba_0` AS DOUBLE) AS `Proba_0`, CAST(`T`.`Proba_1` AS DOUBLE) AS `Proba_1`, CAST(`T`.`Proba_2` AS DOUBLE) AS `Proba_2`, CAST(`T`.`Proba_3` AS DOUBLE) AS `Proba_3` 
FROM (SELECT `CalProb_Union`.`KEY` AS `KEY`, avg(CAST(`CalProb_Union`.`Proba_0` AS DOUBLE)) AS `Proba_0`, avg(CAST(`CalProb_Union`.`Proba_1` AS DOUBLE)) AS `Proba_1`, avg(CAST(`CalProb_Union`.`Proba_2` AS DOUBLE)) AS `Proba_2`, avg(CAST(`CalProb_Union`.`Proba_3` AS DOUBLE)) AS `Proba_3` 
FROM `CalProb_Union` GROUP BY `CalProb_Union`.`KEY`) AS `T`) AS `CalProb_avg`

-- Code For temporary table tmp_20180516112839_codegen_v7ip12_calprob_avg part 2. Populate

SELECT * FROM `tmp_20180516112839_codegen_v7ip12_calprob_avg`

-- Model deployment code

WITH `orig_cte` AS 
(SELECT `CalProb_avg`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `CalProb_avg`.`Proba_0` AS `Proba_0`, `CalProb_avg`.`Proba_1` AS `Proba_1`, `CalProb_avg`.`Proba_2` AS `Proba_2`, `CalProb_avg`.`Proba_3` AS `Proba_3`, CAST(NULL AS DOUBLE) AS `LogProba_0`, CAST(NULL AS DOUBLE) AS `LogProba_1`, CAST(NULL AS DOUBLE) AS `LogProba_2`, CAST(NULL AS DOUBLE) AS `LogProba_3`, CAST(NULL AS BIGINT) AS `Decision`, CAST(NULL AS DOUBLE) AS `DecisionProba` 
FROM `tmp_20180516112839_codegen_v7ip12_calprob_avg` AS `CalProb_avg`), 
`score_class_union` AS 
(SELECT `scu`.`KEY_u` AS `KEY_u`, `scu`.`class` AS `class`, `scu`.`LogProba` AS `LogProba`, `scu`.`Proba` AS `Proba`, `scu`.`Score` AS `Score` 
FROM (SELECT `orig_cte`.`KEY` AS `KEY_u`, 0 AS `class`, `orig_cte`.`LogProba_0` AS `LogProba`, `orig_cte`.`Proba_0` AS `Proba`, `orig_cte`.`Score_0` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 1 AS `class`, `orig_cte`.`LogProba_1` AS `LogProba`, `orig_cte`.`Proba_1` AS `Proba`, `orig_cte`.`Score_1` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 2 AS `class`, `orig_cte`.`LogProba_2` AS `LogProba`, `orig_cte`.`Proba_2` AS `Proba`, `orig_cte`.`Score_2` AS `Score` 
FROM `orig_cte` UNION ALL SELECT `orig_cte`.`KEY` AS `KEY_u`, 3 AS `class`, `orig_cte`.`LogProba_3` AS `LogProba`, `orig_cte`.`Proba_3` AS `Proba`, `orig_cte`.`Score_3` AS `Score` 
FROM `orig_cte`) AS `scu`), 
`score_max` AS 
(SELECT `orig_cte`.`KEY` AS `KEY`, `orig_cte`.`Score_0` AS `Score_0`, `orig_cte`.`Score_1` AS `Score_1`, `orig_cte`.`Score_2` AS `Score_2`, `orig_cte`.`Score_3` AS `Score_3`, `orig_cte`.`Proba_0` AS `Proba_0`, `orig_cte`.`Proba_1` AS `Proba_1`, `orig_cte`.`Proba_2` AS `Proba_2`, `orig_cte`.`Proba_3` AS `Proba_3`, `orig_cte`.`LogProba_0` AS `LogProba_0`, `orig_cte`.`LogProba_1` AS `LogProba_1`, `orig_cte`.`LogProba_2` AS `LogProba_2`, `orig_cte`.`LogProba_3` AS `LogProba_3`, `orig_cte`.`Decision` AS `Decision`, `orig_cte`.`DecisionProba` AS `DecisionProba`, `max_select`.`KEY_m` AS `KEY_m`, `max_select`.`max_Proba` AS `max_Proba` 
FROM `orig_cte` LEFT OUTER JOIN (SELECT `score_class_union`.`KEY_u` AS `KEY_m`, max(`score_class_union`.`Proba`) AS `max_Proba` 
FROM `score_class_union` GROUP BY `score_class_union`.`KEY_u`) AS `max_select` ON `orig_cte`.`KEY` = `max_select`.`KEY_m`), 
`union_with_max` AS 
(SELECT `score_class_union`.`KEY_u` AS `KEY_u`, `score_class_union`.`class` AS `class`, `score_class_union`.`LogProba` AS `LogProba`, `score_class_union`.`Proba` AS `Proba`, `score_class_union`.`Score` AS `Score`, `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Score_3` AS `Score_3`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`Proba_3` AS `Proba_3`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`LogProba_3` AS `LogProba_3`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba` 
FROM `score_class_union` LEFT OUTER JOIN `score_max` ON `score_class_union`.`KEY_u` = `score_max`.`KEY`), 
`arg_max_cte` AS 
(SELECT `score_max`.`KEY` AS `KEY`, `score_max`.`Score_0` AS `Score_0`, `score_max`.`Score_1` AS `Score_1`, `score_max`.`Score_2` AS `Score_2`, `score_max`.`Score_3` AS `Score_3`, `score_max`.`Proba_0` AS `Proba_0`, `score_max`.`Proba_1` AS `Proba_1`, `score_max`.`Proba_2` AS `Proba_2`, `score_max`.`Proba_3` AS `Proba_3`, `score_max`.`LogProba_0` AS `LogProba_0`, `score_max`.`LogProba_1` AS `LogProba_1`, `score_max`.`LogProba_2` AS `LogProba_2`, `score_max`.`LogProba_3` AS `LogProba_3`, `score_max`.`Decision` AS `Decision`, `score_max`.`DecisionProba` AS `DecisionProba`, `score_max`.`KEY_m` AS `KEY_m`, `score_max`.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM `score_max` LEFT OUTER JOIN (SELECT `union_with_max`.`KEY` AS `KEY_Proba`, min(`union_with_max`.`class`) AS `arg_max_Proba` 
FROM `union_with_max` 
WHERE `union_with_max`.`Proba` >= `union_with_max`.`max_Proba` GROUP BY `union_with_max`.`KEY`) AS `arg_max_t_Proba` ON `score_max`.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT `arg_max_cte`.`KEY` AS `KEY`, `arg_max_cte`.`Score_0` AS `Score_0`, `arg_max_cte`.`Score_1` AS `Score_1`, `arg_max_cte`.`Score_2` AS `Score_2`, `arg_max_cte`.`Score_3` AS `Score_3`, `arg_max_cte`.`Proba_0` AS `Proba_0`, `arg_max_cte`.`Proba_1` AS `Proba_1`, `arg_max_cte`.`Proba_2` AS `Proba_2`, `arg_max_cte`.`Proba_3` AS `Proba_3`, CASE WHEN (`arg_max_cte`.`Proba_0` IS NULL OR `arg_max_cte`.`Proba_0` > 0.0) THEN log(`arg_max_cte`.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`arg_max_cte`.`Proba_1` IS NULL OR `arg_max_cte`.`Proba_1` > 0.0) THEN log(`arg_max_cte`.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`arg_max_cte`.`Proba_2` IS NULL OR `arg_max_cte`.`Proba_2` > 0.0) THEN log(`arg_max_cte`.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`arg_max_cte`.`Proba_3` IS NULL OR `arg_max_cte`.`Proba_3` > 0.0) THEN log(`arg_max_cte`.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, `arg_max_cte`.`arg_max_Proba` AS `Decision`, `arg_max_cte`.`max_Proba` AS `DecisionProba` 
FROM `arg_max_cte`