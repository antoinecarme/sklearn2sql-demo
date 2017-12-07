-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.025567249331 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0308457695226 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0729721924865 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.177463105828 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0840670319996 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0702470176973 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0722807995373 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.175204807463 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0051006247696 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0978993295304 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.025567249331) / 1.00999074622 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.0308457695226) / 0.855966264767 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0729721924865) / 0.967824460915 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.177463105828) / 0.874966175761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.0840670319996) / 0.971913604296 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.0702470176973) / 0.947450528965 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0722807995373) / 1.01769497316 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.175204807463) / 0.898797549192 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.0051006247696) / 0.917309015907 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0978993295304) / 1.02127060673 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 21.45481062645998 * "ADS_sca_2_OUT".scaler_2 + 26.098708860761942 * "ADS_sca_2_OUT".scaler_3 + 41.06867705241235 * "ADS_sca_2_OUT".scaler_4 + 10.73834777878626 * "ADS_sca_2_OUT".scaler_5 + 8.231745625088344 * "ADS_sca_2_OUT".scaler_6 + 39.57007016241269 * "ADS_sca_2_OUT".scaler_7 + 38.156450171235846 * "ADS_sca_2_OUT".scaler_8 + 29.86206619257143 * "ADS_sca_2_OUT".scaler_9 + 5.6859628186788 * "ADS_sca_2_OUT".scaler_10 + 54.048817131031726 * "ADS_sca_2_OUT".scaler_11 + 8.9947318304 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte