-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.26786117350337224 * "ADS"."Feature_0" + 42.765703616619454 * "ADS"."Feature_1" + 60.178193319787155 * "ADS"."Feature_2" + 28.474500252203253 * "ADS"."Feature_3" + 71.75585525568509 * "ADS"."Feature_4" + 63.10476703234157 * "ADS"."Feature_5" + 24.090354544802583 * "ADS"."Feature_6" + 22.249907960839405 * "ADS"."Feature_7" + 94.51674567959759 * "ADS"."Feature_8" + 85.90489726100401 * "ADS"."Feature_9" + 0.394055856725 AS "Estimator" 
FROM "RandomReg_10" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte