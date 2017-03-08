-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 7.380644491258648 * "ADS"."Feature_0" + 7.408229144280926 * "ADS"."Feature_1" + 0.0 * "ADS"."Feature_2" + 9.828320026293733 * "ADS"."Feature_3" + 4.639730940164735 * "ADS"."Feature_4" + 0.0 * "ADS"."Feature_5" + 0.0 * "ADS"."Feature_6" + 1.8521172792784357 * "ADS"."Feature_7" + 1.654804102136827 * "ADS"."Feature_8" + -0.4077656278098979 * "ADS"."Feature_9" + -1.31960054323 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte