-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 7.322967219335694 * "ADS"."Feature_0" + 4.561780135551203 * "ADS"."Feature_1" + -0.7411668044269398 * "ADS"."Feature_2" + 8.291238904736334 * "ADS"."Feature_3" + 4.110502933270653 * "ADS"."Feature_4" + 0.0 * "ADS"."Feature_5" + 0.0 * "ADS"."Feature_6" + 0.8576578702259307 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + 0.0 * "ADS"."Feature_9" + 2.14397040203 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte