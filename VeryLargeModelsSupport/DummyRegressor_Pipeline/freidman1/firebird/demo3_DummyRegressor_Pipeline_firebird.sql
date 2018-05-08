-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 15.3537633818605 AS "Constant" 
FROM "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte