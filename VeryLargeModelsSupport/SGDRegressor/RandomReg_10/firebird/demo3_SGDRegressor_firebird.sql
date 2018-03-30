-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 28.627661164978555 * "ADS"."Feature_0" + 53.461497286565745 * "ADS"."Feature_1" + 66.46934640103174 * "ADS"."Feature_2" + 32.69873075515514 * "ADS"."Feature_3" + 43.295031265800844 * "ADS"."Feature_4" + 57.09907059593139 * "ADS"."Feature_5" + 23.158123206983337 * "ADS"."Feature_6" + 31.616153072642767 * "ADS"."Feature_7" + 66.29004894491052 * "ADS"."Feature_8" + 29.958859784854912 * "ADS"."Feature_9" + 11.233413030334829 AS "Estimator" 
FROM "RandomReg_10" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte