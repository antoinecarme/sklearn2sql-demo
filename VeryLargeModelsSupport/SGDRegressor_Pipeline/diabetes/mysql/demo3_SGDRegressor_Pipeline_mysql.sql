-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232142_JL57QX_ADS_imp_1_OUT part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232142_JL57QX_ADS_imp_1_OUT` (
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

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232142_JL57QX_ADS_imp_1_OUT part 2/2. Populate

INSERT INTO `TMP_20180329232142_JL57QX_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.0002686932066652995 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.0007239580580639441 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.0007280719825586765 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.001013565221084393 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.0009763580732882109 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.0017643808242337245 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.0016512815450565026 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.0013905501983388136 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0012726482548090939 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.001034425005681627 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM diabetes AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`
-- Code For temporary table TMP_20180329232142_G999MR_ADS_sca_2_OUT part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232142_G999MR_ADS_sca_2_OUT` (
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

 ENGINE=MEMORY
-- Code For temporary table TMP_20180329232142_G999MR_ADS_sca_2_OUT part 2/2. Populate

INSERT INTO `TMP_20180329232142_G999MR_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM `TMP_20180329232142_JL57QX_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Model deployment code

WITH linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, -0.2424637766095335 * `ADS_sca_2_OUT`.scaler_2 + -10.618748891714944 * `ADS_sca_2_OUT`.scaler_3 + 23.679863091516292 * `ADS_sca_2_OUT`.scaler_4 + 14.034052304047412 * `ADS_sca_2_OUT`.scaler_5 + -2.591970076308286 * `ADS_sca_2_OUT`.scaler_6 + -6.98451869475154 * `ADS_sca_2_OUT`.scaler_7 + -10.707911970680266 * `ADS_sca_2_OUT`.scaler_8 + 4.290575492034916 * `ADS_sca_2_OUT`.scaler_9 + 21.931423939628292 * `ADS_sca_2_OUT`.scaler_10 + 4.522242711225028 * `ADS_sca_2_OUT`.scaler_11 + 150.13677355116624 AS `Estimator` 
FROM `TMP_20180329232142_G999MR_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte