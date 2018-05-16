-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor_Pipeline
-- Dataset : freidman1
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516120925_CODEGEN_MI6ZNC_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516120925_CODEGEN_MI6ZNC_ADS_imp_1_OUT (
	[KEY] BIGINT NULL, 
	impter_2 FLOAT(53) NULL, 
	impter_3 FLOAT(53) NULL, 
	impter_4 FLOAT(53) NULL, 
	impter_5 FLOAT(53) NULL, 
	impter_6 FLOAT(53) NULL, 
	impter_7 FLOAT(53) NULL, 
	impter_8 FLOAT(53) NULL, 
	impter_9 FLOAT(53) NULL, 
	impter_10 FLOAT(53) NULL, 
	impter_11 FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516120925_CODEGEN_MI6ZNC_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516120925_CODEGEN_MI6ZNC_ADS_imp_1_OUT ([KEY], impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].impter_2, [ADS_imp_1_OUT].impter_3, [ADS_imp_1_OUT].impter_4, [ADS_imp_1_OUT].impter_5, [ADS_imp_1_OUT].impter_6, [ADS_imp_1_OUT].impter_7, [ADS_imp_1_OUT].impter_8, [ADS_imp_1_OUT].impter_9, [ADS_imp_1_OUT].impter_10, [ADS_imp_1_OUT].impter_11 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.5629846484809591 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.45606442423375926 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.47113817481474773 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.533968020094518 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.4780936262373869 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.5682849224172329 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.47914374714280494 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.4594152477223205 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.4901106996809651 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.5378806933707533 ELSE [ADS].[Feature_9] END AS impter_11 
FROM freidman1 AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516120925_CODEGEN_VQG837_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516120925_CODEGEN_VQG837_ADS_sca_2_OUT (
	[KEY] BIGINT NULL, 
	scaler_2 FLOAT NULL, 
	scaler_3 FLOAT NULL, 
	scaler_4 FLOAT NULL, 
	scaler_5 FLOAT NULL, 
	scaler_6 FLOAT NULL, 
	scaler_7 FLOAT NULL, 
	scaler_8 FLOAT NULL, 
	scaler_9 FLOAT NULL, 
	scaler_10 FLOAT NULL, 
	scaler_11 FLOAT NULL
)



-- Code For temporary table ##TMP_20180516120925_CODEGEN_VQG837_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516120925_CODEGEN_VQG837_ADS_sca_2_OUT ([KEY], scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_2, [ADS_sca_2_OUT].scaler_3, [ADS_sca_2_OUT].scaler_4, [ADS_sca_2_OUT].scaler_5, [ADS_sca_2_OUT].scaler_6, [ADS_sca_2_OUT].scaler_7, [ADS_sca_2_OUT].scaler_8, [ADS_sca_2_OUT].scaler_9, [ADS_sca_2_OUT].scaler_10, [ADS_sca_2_OUT].scaler_11 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT(53)) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT(53)) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT(53)) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT(53)) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT(53)) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT(53)) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT(53)) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT(53)) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT(53)) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT(53)) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM ##TMP_20180516120925_CODEGEN_MI6ZNC_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Model deployment code

WITH linear_input AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT(53)) AS scaler_2, CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT(53)) AS scaler_3, CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT(53)) AS scaler_4, CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT(53)) AS scaler_5, CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT(53)) AS scaler_6, CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT(53)) AS scaler_7, CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT(53)) AS scaler_8, CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT(53)) AS scaler_9, CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT(53)) AS scaler_10, CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT(53)) AS scaler_11 
FROM ##TMP_20180516120925_CODEGEN_VQG837_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
linear_model_cte AS 
(SELECT linear_input.[KEY] AS [KEY], 0.9395935164673913 * linear_input.scaler_2 + 1.9898696018955262 * linear_input.scaler_3 + -0.134829502242979 * linear_input.scaler_4 + 1.9246066031651914 * linear_input.scaler_5 + 0.8970957243152798 * linear_input.scaler_6 + 0.13241392193907778 * linear_input.scaler_7 + 0.032211560632884294 * linear_input.scaler_8 + 0.3158843506944345 * linear_input.scaler_9 + 0.05479432866208863 * linear_input.scaler_10 + -0.18305876428391182 * linear_input.scaler_11 + 10.739543342787488 AS [Estimator] 
FROM linear_input)
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte