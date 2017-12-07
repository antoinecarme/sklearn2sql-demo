-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 50.0742331514 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 997.315669756 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.509924721577 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.12276031039 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 50.0742331514) / 29.595742004 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 997.315669756) / 414.431872503 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.509924721577) / 0.313441539063 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.12276031039) / 2.51295846647 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -0.11091662894646466 * "ADS_sca_2_OUT".scaler_output_2 + 0.10381649138593892 * "ADS_sca_2_OUT".scaler_output_3 + 0.18965722931234696 * "ADS_sca_2_OUT".scaler_output_4 + 0.006566636180108919 * "ADS_sca_2_OUT".scaler_output_5 + 1.31577076545 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte