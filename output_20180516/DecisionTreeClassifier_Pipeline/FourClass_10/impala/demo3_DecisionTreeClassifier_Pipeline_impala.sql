-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : FourClass_10
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112245_codegen_hgylm8_ads_imp_1_out part 1. Create 


CREATE TABLE tmp_20180516112245_codegen_hgylm8_ads_imp_1_out (
	`KEY` BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516112245_codegen_hgylm8_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516112245_codegen_hgylm8_ads_imp_1_out (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.003903374463034205 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.6152232215702322 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.042796236914291665 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.7709819558904074 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.43300733624893334 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794036 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.29809080119845455 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.14672241507251663 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.01746942384662034 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.11507331415602866 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180516112245_codegen_l72lfb_ads_sca_2_out part 1. Create 


CREATE TABLE tmp_20180516112245_codegen_l72lfb_ads_sca_2_out (
	`KEY` BIGINT, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516112245_codegen_l72lfb_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516112245_codegen_l72lfb_ads_sca_2_out (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM tmp_20180516112245_codegen_hgylm8_ads_imp_1_out AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Model deployment code

WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.05717501789331436) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -1.0915334224700928) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.055714450776576996) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.6663551330566406) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_3 <= -0.7177659273147583) THEN 6 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -1.8367701768875122) THEN 8 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -1.2985427379608154) THEN 10 ELSE 11 END END END ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -1.7257757186889648) THEN 14 ELSE 15 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 0.13469922542572021) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.16149663925170898) THEN 18 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.047089215368032455) THEN 20 ELSE 21 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.8858284950256348) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.3181282877922058) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -0.23210814595222473) THEN 25 ELSE 26 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.9481966495513916) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.2743743360042572) THEN 29 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.4922003746032715) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.6603237390518188) THEN 32 ELSE 33 END ELSE 34 END END ELSE 35 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -1.3508446216583252) THEN 37 ELSE 38 END END END END AS node_id_2 
FROM tmp_20180516112245_codegen_l72lfb_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`P_0` AS DOUBLE) AS `P_0`, CAST(`Values`.`P_1` AS DOUBLE) AS `P_1`, CAST(`Values`.`P_2` AS DOUBLE) AS `P_2`, CAST(`Values`.`P_3` AS DOUBLE) AS `P_3`, CAST(`Values`.`D` AS DOUBLE) AS `D`, CAST(`Values`.`DP` AS DOUBLE) AS `DP` 
FROM (SELECT 2 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 6 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 8 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 10 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 11 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 12 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 14 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 15 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 18 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 20 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 21 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 25 AS nid, 1.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 0 AS `D`, 1.0 AS `DP` UNION ALL SELECT 26 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 29 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 32 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 33 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 0.0 AS `P_2`, 1.0 AS `P_3`, 3 AS `D`, 1.0 AS `DP` UNION ALL SELECT 34 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 35 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP` UNION ALL SELECT 37 AS nid, 0.0 AS `P_0`, 1.0 AS `P_1`, 0.0 AS `P_2`, 0.0 AS `P_3`, 1 AS `D`, 1.0 AS `DP` UNION ALL SELECT 38 AS nid, 0.0 AS `P_0`, 0.0 AS `P_1`, 1.0 AS `P_2`, 0.0 AS `P_3`, 2 AS `D`, 1.0 AS `DP`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`P_0` AS `P_0`, `DT_node_data`.`P_1` AS `P_1`, `DT_node_data`.`P_2` AS `P_2`, `DT_node_data`.`P_3` AS `P_3`, `DT_node_data`.`D` AS `D`, `DT_node_data`.`DP` AS `DP` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid)
 SELECT `DT_Output`.`KEY` AS `KEY`, CAST(NULL AS DOUBLE) AS `Score_0`, CAST(NULL AS DOUBLE) AS `Score_1`, CAST(NULL AS DOUBLE) AS `Score_2`, CAST(NULL AS DOUBLE) AS `Score_3`, `DT_Output`.`P_0` AS `Proba_0`, `DT_Output`.`P_1` AS `Proba_1`, `DT_Output`.`P_2` AS `Proba_2`, `DT_Output`.`P_3` AS `Proba_3`, CASE WHEN (`DT_Output`.`P_0` IS NULL OR `DT_Output`.`P_0` > 0.0) THEN ln(`DT_Output`.`P_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`DT_Output`.`P_1` IS NULL OR `DT_Output`.`P_1` > 0.0) THEN ln(`DT_Output`.`P_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`DT_Output`.`P_2` IS NULL OR `DT_Output`.`P_2` > 0.0) THEN ln(`DT_Output`.`P_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (`DT_Output`.`P_3` IS NULL OR `DT_Output`.`P_3` > 0.0) THEN ln(`DT_Output`.`P_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, `DT_Output`.`D` AS `Decision`, `DT_Output`.`DP` AS `DecisionProba` 
FROM `DT_Output`