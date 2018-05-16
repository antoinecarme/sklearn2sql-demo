-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : FourClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.003903374463034205 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.6152232215702322 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.042796236914291665 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.7709819558904074 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.43300733624893334 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794036 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.29809080119845455 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.14672241507251663 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.01746942384662034 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.11507331415602866 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT_KEY` ON `TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM `TMP_20180516112441_CODEGEN_F3FOAX_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT_KEY` ON `TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_1_1` DOUBLE, 
	`NEUR_1_2` DOUBLE, 
	`NEUR_1_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1 part 2. Populate

INSERT INTO `TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1` (`KEY`, `NEUR_1_1`, `NEUR_1_2`, `NEUR_1_3`) SELECT `U`.`KEY`, `U`.`NEUR_1_1`, `U`.`NEUR_1_2`, `U`.`NEUR_1_3` 
FROM (WITH `IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_2 AS DOUBLE) AS scaler_2, CAST(`ADS_sca_2_OUT`.scaler_3 AS DOUBLE) AS scaler_3, CAST(`ADS_sca_2_OUT`.scaler_4 AS DOUBLE) AS scaler_4, CAST(`ADS_sca_2_OUT`.scaler_5 AS DOUBLE) AS scaler_5, CAST(`ADS_sca_2_OUT`.scaler_6 AS DOUBLE) AS scaler_6, CAST(`ADS_sca_2_OUT`.scaler_7 AS DOUBLE) AS scaler_7, CAST(`ADS_sca_2_OUT`.scaler_8 AS DOUBLE) AS scaler_8, CAST(`ADS_sca_2_OUT`.scaler_9 AS DOUBLE) AS scaler_9, CAST(`ADS_sca_2_OUT`.scaler_10 AS DOUBLE) AS scaler_10, CAST(`ADS_sca_2_OUT`.scaler_11 AS DOUBLE) AS scaler_11 
FROM `TMP_20180516112441_CODEGEN_YD1H5O_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.891420621551592 * `IL`.scaler_2 + -3.6213835085294135 * `IL`.scaler_3 + -2.438292780916934 * `IL`.scaler_4 + -2.7743988662517007 * `IL`.scaler_5 + -0.6983234062685576 * `IL`.scaler_6 + 0.6734928683172556 * `IL`.scaler_7 + 1.2108075918467651 * `IL`.scaler_8 + 1.064626681262849 * `IL`.scaler_9 + 1.934482119853757 * `IL`.scaler_10 + -0.7886056087615796 * `IL`.scaler_11 + 0.2688282846034892 AS `NEUR_1_1`, -0.9914320658081578 * `IL`.scaler_2 + 2.434406802942193 * `IL`.scaler_3 + 1.031258702700202 * `IL`.scaler_4 + 1.6708046086385788 * `IL`.scaler_5 + 0.8265627549631424 * `IL`.scaler_6 + 1.969353953904609 * `IL`.scaler_7 + -1.0043150271239543 * `IL`.scaler_8 + -2.4344029995102354 * `IL`.scaler_9 + 1.7923194193175307 * `IL`.scaler_10 + -1.6033785125369864 * `IL`.scaler_11 + -0.47608020425988345 AS `NEUR_1_2`, -1.9859057728804306 * `IL`.scaler_2 + -0.6404997784376683 * `IL`.scaler_3 + -2.8094693480107162 * `IL`.scaler_4 + -2.0240083886171156 * `IL`.scaler_5 + -4.455937794772853 * `IL`.scaler_6 + 1.022902128176445 * `IL`.scaler_7 + 2.4078836308119462 * `IL`.scaler_8 + -2.4429986430460646 * `IL`.scaler_9 + -0.24786166665154463 * `IL`.scaler_10 + 0.33213735224034685 * `IL`.scaler_11 + -1.4050078347970443 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, greatest(`HL_BA_1`.`NEUR_1_1`, 0) AS `NEUR_1_1`, greatest(`HL_BA_1`.`NEUR_1_2`, 0) AS `NEUR_1_2`, greatest(`HL_BA_1`.`NEUR_1_3`, 0) AS `NEUR_1_3` 
FROM `HL_BA_1`)
 SELECT `HL_1_relu_1`.`KEY`, `HL_1_relu_1`.`NEUR_1_1`, `HL_1_relu_1`.`NEUR_1_2`, `HL_1_relu_1`.`NEUR_1_3` 
FROM (SELECT `HL_1_relu`.`KEY` AS `KEY`, `HL_1_relu`.`NEUR_1_1` AS `NEUR_1_1`, `HL_1_relu`.`NEUR_1_2` AS `NEUR_1_2`, `HL_1_relu`.`NEUR_1_3` AS `NEUR_1_3` 
FROM `HL_1_relu`) AS `HL_1_relu_1`) AS `U`

-- Code For temporary table TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1_KEY` ON `TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1` (`KEY`)

-- Code For temporary table TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_3_1` DOUBLE, 
	`NEUR_3_2` DOUBLE, 
	`NEUR_3_3` DOUBLE, 
	`NEUR_3_4` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1 part 2. Populate

INSERT INTO `TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1` (`KEY`, `NEUR_3_1`, `NEUR_3_2`, `NEUR_3_3`, `NEUR_3_4`) SELECT `U`.`KEY`, `U`.`NEUR_3_1`, `U`.`NEUR_3_2`, `U`.`NEUR_3_3`, `U`.`NEUR_3_4` 
FROM (WITH `HL_BA_2` AS 
(SELECT `HL_1_relu_1`.`KEY` AS `KEY`, 1.5420738007731059 * `HL_1_relu_1`.`NEUR_1_1` + 0.9892187397708667 * `HL_1_relu_1`.`NEUR_1_2` + 3.0677247504358 * `HL_1_relu_1`.`NEUR_1_3` + -1.2745925487665142 AS `NEUR_2_1`, -1.0879469332710787 * `HL_1_relu_1`.`NEUR_1_1` + 1.4068826124690863 * `HL_1_relu_1`.`NEUR_1_2` + -2.2391749062668853 * `HL_1_relu_1`.`NEUR_1_3` + 1.388838447210668 AS `NEUR_2_2`, 4.301535046167383 * `HL_1_relu_1`.`NEUR_1_1` + 0.53370778730481 * `HL_1_relu_1`.`NEUR_1_2` + 1.0085490510958008 * `HL_1_relu_1`.`NEUR_1_3` + -3.330554823031546 AS `NEUR_2_3`, 0.36761402595006865 * `HL_1_relu_1`.`NEUR_1_1` + -0.5047115949623301 * `HL_1_relu_1`.`NEUR_1_2` + -1.450028651522304 * `HL_1_relu_1`.`NEUR_1_3` + -0.2882486611615313 AS `NEUR_2_4`, -0.9414603480949059 * `HL_1_relu_1`.`NEUR_1_1` + 0.8828933615863002 * `HL_1_relu_1`.`NEUR_1_2` + -1.2962466875038778 * `HL_1_relu_1`.`NEUR_1_3` + 1.1832397299783874 AS `NEUR_2_5` 
FROM `TMP_20180516112441_CODEGEN_MCSLFE_HL_1_relu_1` AS `HL_1_relu_1`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, greatest(`HL_BA_2`.`NEUR_2_1`, 0) AS `NEUR_2_1`, greatest(`HL_BA_2`.`NEUR_2_2`, 0) AS `NEUR_2_2`, greatest(`HL_BA_2`.`NEUR_2_3`, 0) AS `NEUR_2_3`, greatest(`HL_BA_2`.`NEUR_2_4`, 0) AS `NEUR_2_4`, greatest(`HL_BA_2`.`NEUR_2_5`, 0) AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -0.8119768035963767 * `HL_2_relu`.`NEUR_2_1` + -2.318129386010093 * `HL_2_relu`.`NEUR_2_2` + 2.1771950537436955 * `HL_2_relu`.`NEUR_2_3` + 0.45104031752613905 * `HL_2_relu`.`NEUR_2_4` + -1.2837751543817417 * `HL_2_relu`.`NEUR_2_5` + 4.698779218833022 AS `NEUR_3_1`, -0.5536572953614642 * `HL_2_relu`.`NEUR_2_1` + 0.7324552139408529 * `HL_2_relu`.`NEUR_2_2` + -3.7796519090623426 * `HL_2_relu`.`NEUR_2_3` + 0.41063182712935786 * `HL_2_relu`.`NEUR_2_4` + 1.0617030942499417 * `HL_2_relu`.`NEUR_2_5` + -0.9474579620649851 AS `NEUR_3_2`, -0.6644366256800954 * `HL_2_relu`.`NEUR_2_1` + 1.2986846697709273 * `HL_2_relu`.`NEUR_2_2` + 2.2494324524387608 * `HL_2_relu`.`NEUR_2_3` + -0.6774922669070693 * `HL_2_relu`.`NEUR_2_4` + -0.282557411772602 * `HL_2_relu`.`NEUR_2_5` + -1.4585302273721141 AS `NEUR_3_3`, 2.001868159391685 * `HL_2_relu`.`NEUR_2_1` + -0.29724514775747296 * `HL_2_relu`.`NEUR_2_2` + -1.1156757341923513 * `HL_2_relu`.`NEUR_2_3` + -0.8140468094884385 * `HL_2_relu`.`NEUR_2_4` + 0.7481644781755419 * `HL_2_relu`.`NEUR_2_5` + -1.268041901155751 AS `NEUR_3_4` 
FROM `HL_2_relu`), 
`OL_softmax` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1`, `OL_BA`.`NEUR_3_2` AS `NEUR_3_2`, `OL_BA`.`NEUR_3_3` AS `NEUR_3_3`, `OL_BA`.`NEUR_3_4` AS `NEUR_3_4` 
FROM `OL_BA`)
 SELECT `OL_softmax_1`.`KEY`, `OL_softmax_1`.`NEUR_3_1`, `OL_softmax_1`.`NEUR_3_2`, `OL_softmax_1`.`NEUR_3_3`, `OL_softmax_1`.`NEUR_3_4` 
FROM (SELECT `OL_softmax`.`KEY` AS `KEY`, `OL_softmax`.`NEUR_3_1` AS `NEUR_3_1`, `OL_softmax`.`NEUR_3_2` AS `NEUR_3_2`, `OL_softmax`.`NEUR_3_3` AS `NEUR_3_3`, `OL_softmax`.`NEUR_3_4` AS `NEUR_3_4` 
FROM `OL_softmax`) AS `OL_softmax_1`) AS `U`

-- Code For temporary table TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1_KEY` ON `TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `OL_softmax_1`.`KEY` AS `KEY`, `OL_softmax_1`.`NEUR_3_1` AS `Score_0`, `OL_softmax_1`.`NEUR_3_2` AS `Score_1`, `OL_softmax_1`.`NEUR_3_3` AS `Score_2`, `OL_softmax_1`.`NEUR_3_4` AS `Score_3`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180516112441_CODEGEN_MZ33NW_OL_softmax_1` AS `OL_softmax_1`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
score_soft_max_deltas AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, exp(greatest(-100.0, score_max.`Score_0` - score_max.`max_Score`)) AS `exp_delta_Score_0`, exp(greatest(-100.0, score_max.`Score_1` - score_max.`max_Score`)) AS `exp_delta_Score_1`, exp(greatest(-100.0, score_max.`Score_2` - score_max.`max_Score`)) AS `exp_delta_Score_2`, exp(greatest(-100.0, score_max.`Score_3` - score_max.`max_Score`)) AS `exp_delta_Score_3` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_deltas.`KEY` AS `KEY`, 0 AS class, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 1 AS class, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 2 AS class, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 3 AS class, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score` 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.`KEY` AS `KEY`, score_soft_max_deltas.`Score_0` AS `Score_0`, score_soft_max_deltas.`Score_1` AS `Score_1`, score_soft_max_deltas.`Score_2` AS `Score_2`, score_soft_max_deltas.`Score_3` AS `Score_3`, score_soft_max_deltas.`Proba_0` AS `Proba_0`, score_soft_max_deltas.`Proba_1` AS `Proba_1`, score_soft_max_deltas.`Proba_2` AS `Proba_2`, score_soft_max_deltas.`Proba_3` AS `Proba_3`, score_soft_max_deltas.`LogProba_0` AS `LogProba_0`, score_soft_max_deltas.`LogProba_1` AS `LogProba_1`, score_soft_max_deltas.`LogProba_2` AS `LogProba_2`, score_soft_max_deltas.`LogProba_3` AS `LogProba_3`, score_soft_max_deltas.`Decision` AS `Decision`, score_soft_max_deltas.`DecisionProba` AS `DecisionProba`, score_soft_max_deltas.`KEY_m` AS `KEY_m`, score_soft_max_deltas.`max_Score` AS `max_Score`, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score_3`, sum_exp_t.`KEY_sum` AS `KEY_sum`, sum_exp_t.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.`KEY` AS `KEY_sum`, sum(score_class_union_soft.`exp_delta_Score`) AS `sum_ExpDeltaScore` 
FROM score_class_union_soft GROUP BY score_class_union_soft.`KEY`) AS sum_exp_t ON score_soft_max_deltas.`KEY` = sum_exp_t.`KEY_sum`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.`KEY_u` = score_soft_max.`KEY`), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score`, soft_max_comp.`KEY_softmax` AS `KEY_softmax`, soft_max_comp.`SoftProba_0` AS `SoftProba_0`, soft_max_comp.`SoftProba_1` AS `SoftProba_1`, soft_max_comp.`SoftProba_2` AS `SoftProba_2`, soft_max_comp.`SoftProba_3` AS `SoftProba_3` 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`Score` >= union_with_max.`max_Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_soft_max.`KEY` = `arg_max_t_Score`.`KEY_Score` LEFT OUTER JOIN (SELECT score_soft_max.`KEY` AS `KEY_softmax`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2`, score_soft_max.`exp_delta_Score_3` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_3` 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.`KEY_softmax` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, arg_max_cte.`SoftProba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`SoftProba_3` IS NULL OR arg_max_cte.`SoftProba_3` > 0.0) THEN ln(arg_max_cte.`SoftProba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision`, greatest(arg_max_cte.`SoftProba_0`, arg_max_cte.`SoftProba_1`, arg_max_cte.`SoftProba_2`, arg_max_cte.`SoftProba_3`) AS `DecisionProba` 
FROM arg_max_cte