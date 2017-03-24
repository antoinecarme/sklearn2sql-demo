-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], 2.6376927818159315 * [ADS].[Feature_0] + 2.317494339164479 * [ADS].[Feature_1] + 1.9634795714963948 * [ADS].[Feature_2] + 2.651019025007853 * [ADS].[Feature_3] + 2.3364670187634875 * [ADS].[Feature_4] + 1.9077945499798765 * [ADS].[Feature_5] + 1.6954617926363589 * [ADS].[Feature_6] + 1.8835914577801347 * [ADS].[Feature_7] + 1.975225427355081 * [ADS].[Feature_8] + 1.7768641928680498 * [ADS].[Feature_9] + 3.63151623767 AS [Estimator] 
FROM [INPUT_DATA] AS [ADS])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte