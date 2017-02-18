-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.03727948620987273 * "ADS"."Feature_0" + -0.1189826699975303 * "ADS"."Feature_1" + -0.6837430547186152 * "ADS"."Feature_2" + -0.2627023969136878 * "ADS"."Feature_3" + -0.12210325995481029 * "ADS"."Feature_4" + 0.0933862940082 AS linear_combination 
FROM "INPUT_DATA" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_-1", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_-1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_-1", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE -1 END AS "Decision" 
FROM linear_model_cte