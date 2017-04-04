-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 7.569950821463623 * "ADS"."Feature_0" + 5.810058050412439 * "ADS"."Feature_1" + 0.0 * "ADS"."Feature_2" + 11.899333310317202 * "ADS"."Feature_3" + 5.385332223765683 * "ADS"."Feature_4" + 0.0 * "ADS"."Feature_5" + 0.0 * "ADS"."Feature_6" + 0.0 * "ADS"."Feature_7" + 0.0 * "ADS"."Feature_8" + 0.0 * "ADS"."Feature_9" + -0.509744152851 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte