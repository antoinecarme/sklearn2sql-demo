-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0913457234768 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.183299818156 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.144296871944 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.0157433746202 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.291652680588 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0214644439852 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0943910366717 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.120823196384 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.199931961377 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.166865808502 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0913457234768) / 0.99285819423 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.183299818156) / 1.0424147431 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - -0.144296871944) / 0.93258274544 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.0157433746202) / 1.0768308298 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.291652680588) / 1.06779281764 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0214644439852) / 0.974096996863 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0943910366717) / 0.983484545507 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.120823196384) / 1.03775315873 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.199931961377) / 1.03105730106 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.166865808502) / 1.02652021225 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -8.86620415648 AS "Constant" 
FROM "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte