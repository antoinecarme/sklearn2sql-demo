-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge_Pipeline
-- Dataset : freidman3
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516121940_codegen_jzpqno_ads_imp_1_out part 1. Create 


CREATE TABLE tmp_20180516121940_codegen_jzpqno_ads_imp_1_out (
	`KEY` BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516121940_codegen_jzpqno_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516121940_codegen_jzpqno_ads_imp_1_out (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.79128122207401 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.9672833084396 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.5310009099975209 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.139967152050499 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman3 AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180516121940_codegen_6m8fh7_ads_sca_2_out part 1. Create 


CREATE TABLE tmp_20180516121940_codegen_6m8fh7_ads_sca_2_out (
	`KEY` BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516121940_codegen_6m8fh7_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516121940_codegen_6m8fh7_ads_sca_2_out (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM tmp_20180516121940_codegen_jzpqno_ads_imp_1_out AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Model deployment code

WITH linear_input AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST(`ADS_sca_2_OUT`.scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST(`ADS_sca_2_OUT`.scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST(`ADS_sca_2_OUT`.scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM tmp_20180516121940_codegen_6m8fh7_ads_sca_2_out AS `ADS_sca_2_OUT`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, -0.0827472933471106 * linear_input.scaler_output_2 + 0.08650495811443386 * linear_input.scaler_output_3 + 0.16805102977200415 * linear_input.scaler_output_4 + 0.016669269325658192 * linear_input.scaler_output_5 + 1.3612342030259192 AS `Estimator` 
FROM linear_input)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte