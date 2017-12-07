-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 46.3003438025 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 944.547330433 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.473220920137 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 5.87304643947 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM freidman3 AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT) - 46.3003438025) / 29.7072374493 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT) - 944.547330433) / 486.958277285 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT) - 0.473220920137) / 0.251756655791 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT) - 5.87304643947) / 3.10192421547 AS scaler_output_5 
FROM [ADS_imp_1_OUT]), 
linear_model_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], -0.09561283086490117 * [ADS_sca_2_OUT].scaler_output_2 + 0.09651383433550914 * [ADS_sca_2_OUT].scaler_output_3 + 0.1322960880743227 * [ADS_sca_2_OUT].scaler_output_4 + -0.015236502973559619 * [ADS_sca_2_OUT].scaler_output_5 + 0.850193027819 AS [Estimator] 
FROM [ADS_sca_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte