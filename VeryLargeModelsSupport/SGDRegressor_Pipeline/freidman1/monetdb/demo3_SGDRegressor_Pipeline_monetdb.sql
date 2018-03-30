-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0.9395935164673913 * "ADS_sca_2_OUT".scaler_2 + 1.9898696018955262 * "ADS_sca_2_OUT".scaler_3 + -0.134829502242979 * "ADS_sca_2_OUT".scaler_4 + 1.9246066031651914 * "ADS_sca_2_OUT".scaler_5 + 0.8970957243152798 * "ADS_sca_2_OUT".scaler_6 + 0.13241392193907778 * "ADS_sca_2_OUT".scaler_7 + 0.032211560632884294 * "ADS_sca_2_OUT".scaler_8 + 0.3158843506944345 * "ADS_sca_2_OUT".scaler_9 + 0.05479432866208863 * "ADS_sca_2_OUT".scaler_10 + -0.18305876428391182 * "ADS_sca_2_OUT".scaler_11 + 10.739543342787488 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte