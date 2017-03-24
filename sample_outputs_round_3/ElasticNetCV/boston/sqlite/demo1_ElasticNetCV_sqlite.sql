-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.0702656775353659 * "ADS"."Feature_0" + 0.05182156498757903 * "ADS"."Feature_1" + -0.0 * "ADS"."Feature_2" + 0.0 * "ADS"."Feature_3" + -0.0 * "ADS"."Feature_4" + 0.5600527634709873 * "ADS"."Feature_5" + 0.02702653282286148 * "ADS"."Feature_6" + -0.5970477302791506 * "ADS"."Feature_7" + 0.2831547014506109 * "ADS"."Feature_8" + -0.016142973808680353 * "ADS"."Feature_9" + -0.6862248086386282 * "ADS"."Feature_10" + 0.008026445242467858 * "ADS"."Feature_11" + -0.7804641228501399 * "ADS"."Feature_12" + 42.6524803814 AS "Estimator" 
FROM "INPUT_DATA" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte