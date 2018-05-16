-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516113842_CODEGEN_1C5K9G_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516113842_CODEGEN_1C5K9G_ADS_imp_1_OUT (
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



-- Code For temporary table ##TMP_20180516113842_CODEGEN_1C5K9G_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516113842_CODEGEN_1C5K9G_ADS_imp_1_OUT ([KEY], impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].impter_2, [ADS_imp_1_OUT].impter_3, [ADS_imp_1_OUT].impter_4, [ADS_imp_1_OUT].impter_5, [ADS_imp_1_OUT].impter_6, [ADS_imp_1_OUT].impter_7, [ADS_imp_1_OUT].impter_8, [ADS_imp_1_OUT].impter_9, [ADS_imp_1_OUT].impter_10, [ADS_imp_1_OUT].impter_11 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.16680947298137394 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN -0.16351271994443456 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.19149292241003152 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.058384844753055345 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.09933205162122274 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.21293121660488037 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.047865568690029614 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.05078698959084227 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.1913199225908187 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.19940405677473352 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [RandomReg_10] AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516113842_CODEGEN_USB8ZU_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516113842_CODEGEN_USB8ZU_ADS_sca_2_OUT (
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



-- Code For temporary table ##TMP_20180516113842_CODEGEN_USB8ZU_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516113842_CODEGEN_USB8ZU_ADS_sca_2_OUT ([KEY], scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_2, [ADS_sca_2_OUT].scaler_3, [ADS_sca_2_OUT].scaler_4, [ADS_sca_2_OUT].scaler_5, [ADS_sca_2_OUT].scaler_6, [ADS_sca_2_OUT].scaler_7, [ADS_sca_2_OUT].scaler_8, [ADS_sca_2_OUT].scaler_9, [ADS_sca_2_OUT].scaler_10, [ADS_sca_2_OUT].scaler_11 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT(53)) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT(53)) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT(53)) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT(53)) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT(53)) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT(53)) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT(53)) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT(53)) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT(53)) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT(53)) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM ##TMP_20180516113842_CODEGEN_1C5K9G_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Model deployment code

WITH linear_input AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_2 AS FLOAT(53)) AS scaler_2, CAST([ADS_sca_2_OUT].scaler_3 AS FLOAT(53)) AS scaler_3, CAST([ADS_sca_2_OUT].scaler_4 AS FLOAT(53)) AS scaler_4, CAST([ADS_sca_2_OUT].scaler_5 AS FLOAT(53)) AS scaler_5, CAST([ADS_sca_2_OUT].scaler_6 AS FLOAT(53)) AS scaler_6, CAST([ADS_sca_2_OUT].scaler_7 AS FLOAT(53)) AS scaler_7, CAST([ADS_sca_2_OUT].scaler_8 AS FLOAT(53)) AS scaler_8, CAST([ADS_sca_2_OUT].scaler_9 AS FLOAT(53)) AS scaler_9, CAST([ADS_sca_2_OUT].scaler_10 AS FLOAT(53)) AS scaler_10, CAST([ADS_sca_2_OUT].scaler_11 AS FLOAT(53)) AS scaler_11 
FROM ##TMP_20180516113842_CODEGEN_USB8ZU_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
linear_model_cte AS 
(SELECT linear_input.[KEY] AS [KEY], 27.47234926415581 * linear_input.scaler_2 + 55.058999608561706 * linear_input.scaler_3 + 66.05234096939769 * linear_input.scaler_4 + 33.828318306544865 * linear_input.scaler_5 + 43.37201281310904 * linear_input.scaler_6 + 55.56899634206041 * linear_input.scaler_7 + 22.845413884624314 * linear_input.scaler_8 + 32.642963122076885 * linear_input.scaler_9 + 68.23784430018478 * linear_input.scaler_10 + 28.597451330145503 * linear_input.scaler_11 + 17.846455791454694 AS [Estimator] 
FROM linear_input)
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte