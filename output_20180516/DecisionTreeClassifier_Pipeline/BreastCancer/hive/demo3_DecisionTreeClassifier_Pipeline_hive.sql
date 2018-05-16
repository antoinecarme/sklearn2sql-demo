-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516111559_codegen_8p1og9_ads_imp_1_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516111559_codegen_8p1og9_ads_imp_1_out` STORED AS ORC AS SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.`impter_2`, `ADS_imp_1_OUT`.`impter_3`, `ADS_imp_1_OUT`.`impter_4`, `ADS_imp_1_OUT`.`impter_5`, `ADS_imp_1_OUT`.`impter_6`, `ADS_imp_1_OUT`.`impter_7`, `ADS_imp_1_OUT`.`impter_8`, `ADS_imp_1_OUT`.`impter_9`, `ADS_imp_1_OUT`.`impter_10`, `ADS_imp_1_OUT`.`impter_11`, `ADS_imp_1_OUT`.`impter_12`, `ADS_imp_1_OUT`.`impter_13`, `ADS_imp_1_OUT`.`impter_14`, `ADS_imp_1_OUT`.`impter_15`, `ADS_imp_1_OUT`.`impter_16`, `ADS_imp_1_OUT`.`impter_17`, `ADS_imp_1_OUT`.`impter_18`, `ADS_imp_1_OUT`.`impter_19`, `ADS_imp_1_OUT`.`impter_20`, `ADS_imp_1_OUT`.`impter_21`, `ADS_imp_1_OUT`.`impter_22`, `ADS_imp_1_OUT`.`impter_23`, `ADS_imp_1_OUT`.`impter_24`, `ADS_imp_1_OUT`.`impter_25`, `ADS_imp_1_OUT`.`impter_26`, `ADS_imp_1_OUT`.`impter_27`, `ADS_imp_1_OUT`.`impter_28`, `ADS_imp_1_OUT`.`impter_29`, `ADS_imp_1_OUT`.`impter_30`, `ADS_imp_1_OUT`.`impter_31` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 14.077712087912083 ELSE `ADS`.`Feature_0` END AS `impter_2`, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 19.03905494505495 ELSE `ADS`.`Feature_1` END AS `impter_3`, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 91.66178021978023 ELSE `ADS`.`Feature_2` END AS `impter_4`, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 650.9676923076925 ELSE `ADS`.`Feature_3` END AS `impter_5`, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.09642184615384615 ELSE `ADS`.`Feature_4` END AS `impter_6`, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.10441613186813191 ELSE `ADS`.`Feature_5` END AS `impter_7`, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.08826232681318694 ELSE `ADS`.`Feature_6` END AS `impter_8`, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.048516399999999966 ELSE `ADS`.`Feature_7` END AS `impter_9`, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.1815885714285715 ELSE `ADS`.`Feature_8` END AS `impter_10`, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.06294030769230768 ELSE `ADS`.`Feature_9` END AS `impter_11`, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 0.4099173626373627 ELSE `ADS`.`Feature_10` END AS `impter_12`, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 1.2170694505494501 ELSE `ADS`.`Feature_11` END AS `impter_13`, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 2.90524901098901 ELSE `ADS`.`Feature_12` END AS `impter_14`, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN 40.87988571428572 ELSE `ADS`.`Feature_13` END AS `impter_15`, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN 0.007055971428571433 ELSE `ADS`.`Feature_14` END AS `impter_16`, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN 0.025567830769230776 ELSE `ADS`.`Feature_15` END AS `impter_17`, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN 0.03199925626373623 ELSE `ADS`.`Feature_16` END AS `impter_18`, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.011972369230769237 ELSE `ADS`.`Feature_17` END AS `impter_19`, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN 0.020896200000000014 ELSE `ADS`.`Feature_18` END AS `impter_20`, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN 0.0038465518681318647 ELSE `ADS`.`Feature_19` END AS `impter_21`, CASE WHEN (`ADS`.`Feature_20` IS NULL) THEN 16.17776483516484 ELSE `ADS`.`Feature_20` END AS `impter_22`, CASE WHEN (`ADS`.`Feature_21` IS NULL) THEN 25.26505494505494 ELSE `ADS`.`Feature_21` END AS `impter_23`, CASE WHEN (`ADS`.`Feature_22` IS NULL) THEN 106.68156043956041 ELSE `ADS`.`Feature_22` END AS `impter_24`, CASE WHEN (`ADS`.`Feature_23` IS NULL) THEN 870.8639560439567 ELSE `ADS`.`Feature_23` END AS `impter_25`, CASE WHEN (`ADS`.`Feature_24` IS NULL) THEN 0.1318275604395605 ELSE `ADS`.`Feature_24` END AS `impter_26`, CASE WHEN (`ADS`.`Feature_25` IS NULL) THEN 0.24991806593406582 ELSE `ADS`.`Feature_25` END AS `impter_27`, CASE WHEN (`ADS`.`Feature_26` IS NULL) THEN 0.2654615934065932 ELSE `ADS`.`Feature_26` END AS `impter_28`, CASE WHEN (`ADS`.`Feature_27` IS NULL) THEN 0.11348798021978022 ELSE `ADS`.`Feature_27` END AS `impter_29`, CASE WHEN (`ADS`.`Feature_28` IS NULL) THEN 0.2897881318681319 ELSE `ADS`.`Feature_28` END AS `impter_30`, CASE WHEN (`ADS`.`Feature_29` IS NULL) THEN 0.08364145054945049 ELSE `ADS`.`Feature_29` END AS `impter_31` 
FROM `BreastCancer` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180516111559_codegen_8p1og9_ads_imp_1_out part 2. Populate

SELECT * FROM `tmp_20180516111559_codegen_8p1og9_ads_imp_1_out`

-- Code For temporary table tmp_20180516111559_codegen_ihro3t_ads_sca_2_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516111559_codegen_ihro3t_ads_sca_2_out` STORED AS ORC AS SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.`scaler_2`, `ADS_sca_2_OUT`.`scaler_3`, `ADS_sca_2_OUT`.`scaler_4`, `ADS_sca_2_OUT`.`scaler_5`, `ADS_sca_2_OUT`.`scaler_6`, `ADS_sca_2_OUT`.`scaler_7`, `ADS_sca_2_OUT`.`scaler_8`, `ADS_sca_2_OUT`.`scaler_9`, `ADS_sca_2_OUT`.`scaler_10`, `ADS_sca_2_OUT`.`scaler_11`, `ADS_sca_2_OUT`.`scaler_12`, `ADS_sca_2_OUT`.`scaler_13`, `ADS_sca_2_OUT`.`scaler_14`, `ADS_sca_2_OUT`.`scaler_15`, `ADS_sca_2_OUT`.`scaler_16`, `ADS_sca_2_OUT`.`scaler_17`, `ADS_sca_2_OUT`.`scaler_18`, `ADS_sca_2_OUT`.`scaler_19`, `ADS_sca_2_OUT`.`scaler_20`, `ADS_sca_2_OUT`.`scaler_21`, `ADS_sca_2_OUT`.`scaler_22`, `ADS_sca_2_OUT`.`scaler_23`, `ADS_sca_2_OUT`.`scaler_24`, `ADS_sca_2_OUT`.`scaler_25`, `ADS_sca_2_OUT`.`scaler_26`, `ADS_sca_2_OUT`.`scaler_27`, `ADS_sca_2_OUT`.`scaler_28`, `ADS_sca_2_OUT`.`scaler_29`, `ADS_sca_2_OUT`.`scaler_30`, `ADS_sca_2_OUT`.`scaler_31` 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.`impter_2` AS DOUBLE) - 14.077712087912083) / 3.5451492987000814 AS `scaler_2`, (CAST(`ADS_imp_1_OUT`.`impter_3` AS DOUBLE) - 19.03905494505495) / 4.1622971504218205 AS `scaler_3`, (CAST(`ADS_imp_1_OUT`.`impter_4` AS DOUBLE) - 91.66178021978023) / 24.503971943475648 AS `scaler_4`, (CAST(`ADS_imp_1_OUT`.`impter_5` AS DOUBLE) - 650.9676923076925) / 355.702823163891 AS `scaler_5`, (CAST(`ADS_imp_1_OUT`.`impter_6` AS DOUBLE) - 0.09642184615384615) / 0.014197819663072304 AS `scaler_6`, (CAST(`ADS_imp_1_OUT`.`impter_7` AS DOUBLE) - 0.10441613186813191) / 0.05340369466973436 AS `scaler_7`, (CAST(`ADS_imp_1_OUT`.`impter_8` AS DOUBLE) - 0.08826232681318694) / 0.08191200162631372 AS `scaler_8`, (CAST(`ADS_imp_1_OUT`.`impter_9` AS DOUBLE) - 0.048516399999999966) / 0.039373117396730245 AS `scaler_9`, (CAST(`ADS_imp_1_OUT`.`impter_10` AS DOUBLE) - 0.1815885714285715) / 0.02779005832874822 AS `scaler_10`, (CAST(`ADS_imp_1_OUT`.`impter_11` AS DOUBLE) - 0.06294030769230768) / 0.007019354586172742 AS `scaler_11`, (CAST(`ADS_imp_1_OUT`.`impter_12` AS DOUBLE) - 0.4099173626373627) / 0.29120400836827026 AS `scaler_12`, (CAST(`ADS_imp_1_OUT`.`impter_13` AS DOUBLE) - 1.2170694505494501) / 0.5363896396336265 AS `scaler_13`, (CAST(`ADS_imp_1_OUT`.`impter_14` AS DOUBLE) - 2.90524901098901) / 2.1424944299808626 AS `scaler_14`, (CAST(`ADS_imp_1_OUT`.`impter_15` AS DOUBLE) - 40.87988571428572) / 48.224754479577314 AS `scaler_15`, (CAST(`ADS_imp_1_OUT`.`impter_16` AS DOUBLE) - 0.007055971428571433) / 0.002863651656569403 AS `scaler_16`, (CAST(`ADS_imp_1_OUT`.`impter_17` AS DOUBLE) - 0.025567830769230776) / 0.017947013631032318 AS `scaler_17`, (CAST(`ADS_imp_1_OUT`.`impter_18` AS DOUBLE) - 0.03199925626373623) / 0.03166493672136351 AS `scaler_18`, (CAST(`ADS_imp_1_OUT`.`impter_19` AS DOUBLE) - 0.011972369230769237) / 0.006392005589396607 AS `scaler_19`, (CAST(`ADS_imp_1_OUT`.`impter_20` AS DOUBLE) - 0.020896200000000014) / 0.008582910079869234 AS `scaler_20`, (CAST(`ADS_imp_1_OUT`.`impter_21` AS DOUBLE) - 0.0038465518681318647) / 0.0027436075866190575 AS `scaler_21`, (CAST(`ADS_imp_1_OUT`.`impter_22` AS DOUBLE) - 16.17776483516484) / 4.817458816201383 AS `scaler_22`, (CAST(`ADS_imp_1_OUT`.`impter_23` AS DOUBLE) - 25.26505494505494) / 5.92332412866667 AS `scaler_23`, (CAST(`ADS_imp_1_OUT`.`impter_24` AS DOUBLE) - 106.68156043956041) / 33.70385837605481 AS `scaler_24`, (CAST(`ADS_imp_1_OUT`.`impter_25` AS DOUBLE) - 870.8639560439567) / 566.9950559872813 AS `scaler_25`, (CAST(`ADS_imp_1_OUT`.`impter_26` AS DOUBLE) - 0.1318275604395605) / 0.02274820752228878 AS `scaler_26`, (CAST(`ADS_imp_1_OUT`.`impter_27` AS DOUBLE) - 0.24991806593406582) / 0.15246893644279044 AS `scaler_27`, (CAST(`ADS_imp_1_OUT`.`impter_28` AS DOUBLE) - 0.2654615934065932) / 0.20692568678204093 AS `scaler_28`, (CAST(`ADS_imp_1_OUT`.`impter_29` AS DOUBLE) - 0.11348798021978022) / 0.06638141278520703 AS `scaler_29`, (CAST(`ADS_imp_1_OUT`.`impter_30` AS DOUBLE) - 0.2897881318681319) / 0.06220470665051894 AS `scaler_30`, (CAST(`ADS_imp_1_OUT`.`impter_31` AS DOUBLE) - 0.08364145054945049) / 0.01706514580694785 AS `scaler_31` 
FROM `tmp_20180516111559_codegen_8p1og9_ads_imp_1_out` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180516111559_codegen_ihro3t_ads_sca_2_out part 2. Populate

SELECT * FROM `tmp_20180516111559_codegen_ihro3t_ads_sca_2_out`

-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_29` <= 0.48149049282073975) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_25` <= 0.15994150936603546) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_20` <= -1.419763207435608) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_29` <= 0.1327483057975769) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` <= 0.8007535338401794) THEN 6 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` <= 0.6271899342536926) THEN 8 ELSE 9 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_15` <= -0.17221209406852722) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_17` <= -0.7624015212059021) THEN 12 ELSE 13 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` <= 0.934090256690979) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_26` <= -1.9275171756744385) THEN 18 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_10` <= -1.0953043699264526) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_21` <= -0.32058224081993103) THEN 21 ELSE 22 END ELSE 23 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_18` <= 3.273360252380371) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_28` <= -0.2999221384525299) THEN 26 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_8` <= -0.029022935777902603) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_18` <= -0.10419273376464844) THEN 29 ELSE 30 END ELSE 31 END END ELSE 32 END END AS `node_id_2` 
FROM `tmp_20180516111559_codegen_ihro3t_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 3 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 9 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 13 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 16 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 22 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 23 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 26 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 29 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 30 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 31 AS `nid`, 1.0 AS `P_0`, 0.0 AS `P_1`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 32 AS `nid`, 0.0 AS `P_0`, 1.0 AS `P_1`, 1 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`)
 SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN log(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN log(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, `DT_Output`.`D` AS `Decision`, `DT_Output`.`DP` AS `DecisionProba` 
FROM `DT_Output`