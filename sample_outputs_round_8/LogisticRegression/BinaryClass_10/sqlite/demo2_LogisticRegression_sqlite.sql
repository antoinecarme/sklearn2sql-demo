-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.8230669193159551 * "ADS"."Feature_0" + 0.16396005046193904 * "ADS"."Feature_1" + -0.8352629597390521 * "ADS"."Feature_2" + 0.27390973512184935 * "ADS"."Feature_3" + 0.29891168035381593 * "ADS"."Feature_4" + 0.272523579796493 * "ADS"."Feature_5" + -0.9978165891981986 * "ADS"."Feature_6" + -0.31286640283623557 * "ADS"."Feature_7" + 0.665837656856636 * "ADS"."Feature_8" + 0.7862954925307877 * "ADS"."Feature_9" + -0.427297567089 AS lincomb 
FROM "BinaryClass_10" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) AS "Proba_0", 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(-linear_model_cte.lincomb))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(-linear_model_cte.lincomb)) IS NULL OR 1.0 / (1.0 + exp(-linear_model_cte.lincomb)) > 0.0) THEN ln(1.0 / (1.0 + exp(-linear_model_cte.lincomb))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte