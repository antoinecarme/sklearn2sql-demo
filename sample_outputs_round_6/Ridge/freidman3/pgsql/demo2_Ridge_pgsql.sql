-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.004996900768183139 * "ADS"."Feature_0" + 0.0004270335832871411 * "ADS"."Feature_1" + 0.6299793172662705 * "ADS"."Feature_2" + -0.007083364129346287 * "ADS"."Feature_3" + 0.925756738793 AS "Estimator" 
FROM freidman3 AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte