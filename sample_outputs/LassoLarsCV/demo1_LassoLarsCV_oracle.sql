-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.0 * "ADS"."Feature_0" + 0.0 * "ADS"."Feature_1" + 0.0 * "ADS"."Feature_2" + 0.0 * "ADS"."Feature_3" + 0.0 * "ADS"."Feature_4" + 0.0598080155345 AS "Estimator" 
FROM "INPUT_DATA" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte