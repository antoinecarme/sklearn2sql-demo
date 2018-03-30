-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.09279790530155482 * "ADS"."Feature_0" + 0.038348732210723734 * "ADS"."Feature_1" + -0.005696129838456466 * "ADS"."Feature_2" + 2.296931450103133 * "ADS"."Feature_3" + -8.234491142428583 * "ADS"."Feature_4" + 4.644280946244265 * "ADS"."Feature_5" + -0.025699007698226223 * "ADS"."Feature_6" + -1.281004146208661 * "ADS"."Feature_7" + 0.25600905287833425 * "ADS"."Feature_8" + -0.012629982857974979 * "ADS"."Feature_9" + -0.9197864854180353 * "ADS"."Feature_10" + 0.010843842193868058 * "ADS"."Feature_11" + -0.4106370814564049 * "ADS"."Feature_12" + 25.178686937277092 AS "Estimator" 
FROM boston AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte