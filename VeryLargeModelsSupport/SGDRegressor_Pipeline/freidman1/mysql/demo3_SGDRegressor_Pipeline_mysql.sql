-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232239_FYRBNL_ADS_imp_1_OUT part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232239_FYRBNL_ADS_imp_1_OUT` (
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
-- Code For temporary table TMP_20180329232239_FYRBNL_ADS_imp_1_OUT part 2/2. Populate

INSERT INTO `TMP_20180329232239_FYRBNL_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.5629846484809591 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.45606442423375926 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.47113817481474773 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.533968020094518 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.4780936262373869 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.5682849224172329 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.47914374714280494 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.4594152477223205 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.4901106996809651 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.5378806933707533 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM freidman1 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`
-- Code For temporary table TMP_20180329232239_MJZVDI_ADS_sca_2_OUT part 1/2. Create 


CREATE TEMPORARY TABLE `TMP_20180329232239_MJZVDI_ADS_sca_2_OUT` (
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
-- Code For temporary table TMP_20180329232239_MJZVDI_ADS_sca_2_OUT part 2/2. Populate

INSERT INTO `TMP_20180329232239_MJZVDI_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impter_2 - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (`ADS_imp_1_OUT`.impter_3 - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (`ADS_imp_1_OUT`.impter_4 - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (`ADS_imp_1_OUT`.impter_5 - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (`ADS_imp_1_OUT`.impter_6 - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (`ADS_imp_1_OUT`.impter_7 - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (`ADS_imp_1_OUT`.impter_8 - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (`ADS_imp_1_OUT`.impter_9 - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (`ADS_imp_1_OUT`.impter_10 - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (`ADS_imp_1_OUT`.impter_11 - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM `TMP_20180329232239_FYRBNL_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Model deployment code

WITH linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, 0.9395935164673913 * `ADS_sca_2_OUT`.scaler_2 + 1.9898696018955262 * `ADS_sca_2_OUT`.scaler_3 + -0.134829502242979 * `ADS_sca_2_OUT`.scaler_4 + 1.9246066031651914 * `ADS_sca_2_OUT`.scaler_5 + 0.8970957243152798 * `ADS_sca_2_OUT`.scaler_6 + 0.13241392193907778 * `ADS_sca_2_OUT`.scaler_7 + 0.032211560632884294 * `ADS_sca_2_OUT`.scaler_8 + 0.3158843506944345 * `ADS_sca_2_OUT`.scaler_9 + 0.05479432866208863 * `ADS_sca_2_OUT`.scaler_10 + -0.18305876428391182 * `ADS_sca_2_OUT`.scaler_11 + 10.739543342787488 AS `Estimator` 
FROM `TMP_20180329232239_MJZVDI_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte