-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor_Pipeline
-- Dataset : freidman3
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516122003_CODEGEN_TVE8JW_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516122003_CODEGEN_TVE8JW_ADS_imp_1_OUT (
	[KEY] BIGINT NULL, 
	imputer_output_2 FLOAT(53) NULL, 
	imputer_output_3 FLOAT(53) NULL, 
	imputer_output_4 FLOAT(53) NULL, 
	imputer_output_5 FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516122003_CODEGEN_TVE8JW_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516122003_CODEGEN_TVE8JW_ADS_imp_1_OUT ([KEY], imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].imputer_output_2, [ADS_imp_1_OUT].imputer_output_3, [ADS_imp_1_OUT].imputer_output_4, [ADS_imp_1_OUT].imputer_output_5 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 43.79128122207401 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 945.9672833084396 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.5310009099975209 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 6.139967152050499 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM freidman3 AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516122003_CODEGEN_SJM4E4_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516122003_CODEGEN_SJM4E4_ADS_sca_2_OUT (
	[KEY] BIGINT NULL, 
	scaler_output_2 FLOAT NULL, 
	scaler_output_3 FLOAT NULL, 
	scaler_output_4 FLOAT NULL, 
	scaler_output_5 FLOAT NULL
)



-- Code For temporary table ##TMP_20180516122003_CODEGEN_SJM4E4_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516122003_CODEGEN_SJM4E4_ADS_sca_2_OUT ([KEY], scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_output_2, [ADS_sca_2_OUT].scaler_output_3, [ADS_sca_2_OUT].scaler_output_4, [ADS_sca_2_OUT].scaler_output_5 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT(53)) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT(53)) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT(53)) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT(53)) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM ##TMP_20180516122003_CODEGEN_TVE8JW_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Model deployment code

WITH linear_input AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT(53)) AS scaler_output_2, CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT(53)) AS scaler_output_3, CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT(53)) AS scaler_output_4, CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT(53)) AS scaler_output_5 
FROM ##TMP_20180516122003_CODEGEN_SJM4E4_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
linear_model_cte AS 
(SELECT linear_input.[KEY] AS [KEY], -0.05650113408120648 * linear_input.scaler_output_2 + 0.0552564964561722 * linear_input.scaler_output_3 + 0.108477543222794 * linear_input.scaler_output_4 + 0.01847829922800209 * linear_input.scaler_output_5 + 0.9494192236627949 AS [Estimator] 
FROM linear_input)
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte