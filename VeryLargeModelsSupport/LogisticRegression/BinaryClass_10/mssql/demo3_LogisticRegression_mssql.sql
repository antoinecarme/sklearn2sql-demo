-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], -1.1252563498078363 * [ADS].[Feature_0] + -0.12013328713125014 * [ADS].[Feature_1] + -0.5468436787865264 * [ADS].[Feature_2] + 0.47683824240818157 * [ADS].[Feature_3] + -0.3611933396160592 * [ADS].[Feature_4] + -0.5147912529514502 * [ADS].[Feature_5] + -0.35762076081405897 * [ADS].[Feature_6] + -0.4730469507472085 * [ADS].[Feature_7] + 0.10643729907008474 * [ADS].[Feature_8] + 1.278213558350015 * [ADS].[Feature_9] + 0.6102962144449273 AS lincomb 
FROM [BinaryClass_10] AS [ADS])
 SELECT linear_model_cte.[KEY] AS [KEY], -linear_model_cte.lincomb AS [Score_0], linear_model_cte.lincomb AS [Score_1], 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) AS [Proba_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) AS [Proba_1], CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS [Decision], CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) END AS [DecisionProba] 
FROM linear_model_cte