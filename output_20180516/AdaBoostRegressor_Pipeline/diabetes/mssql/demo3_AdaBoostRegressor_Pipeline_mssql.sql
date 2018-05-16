-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : diabetes
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516115138_CODEGEN_PKLA7S_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516115138_CODEGEN_PKLA7S_ADS_imp_1_OUT (
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



-- Code For temporary table ##TMP_20180516115138_CODEGEN_PKLA7S_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516115138_CODEGEN_PKLA7S_ADS_imp_1_OUT ([KEY], impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].impter_2, [ADS_imp_1_OUT].impter_3, [ADS_imp_1_OUT].impter_4, [ADS_imp_1_OUT].impter_5, [ADS_imp_1_OUT].impter_6, [ADS_imp_1_OUT].impter_7, [ADS_imp_1_OUT].impter_8, [ADS_imp_1_OUT].impter_9, [ADS_imp_1_OUT].impter_10, [ADS_imp_1_OUT].impter_11 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.0002686932066652995 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.0007239580580639441 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.0007280719825586765 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.001013565221084393 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.0009763580732882109 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.0017643808242337245 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN -0.0016512815450565026 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0013905501983388136 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.0012726482548090939 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.001034425005681627 ELSE [ADS].[Feature_9] END AS impter_11 
FROM diabetes AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT (
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



-- Code For temporary table ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT ([KEY], scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_2, [ADS_sca_2_OUT].scaler_3, [ADS_sca_2_OUT].scaler_4, [ADS_sca_2_OUT].scaler_5, [ADS_sca_2_OUT].scaler_6, [ADS_sca_2_OUT].scaler_7, [ADS_sca_2_OUT].scaler_8, [ADS_sca_2_OUT].scaler_9, [ADS_sca_2_OUT].scaler_10, [ADS_sca_2_OUT].scaler_11 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT(53)) - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT(53)) - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT(53)) - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT(53)) - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT(53)) - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT(53)) - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT(53)) - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT(53)) - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT(53)) - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT(53)) - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM ##TMP_20180516115138_CODEGEN_PKLA7S_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Code For temporary table ##TMP_20180516115138_CODEGEN_RCJX17_Quantiles part 1. Create 


CREATE TABLE ##TMP_20180516115138_CODEGEN_RCJX17_Quantiles (
	[KEY] BIGINT NULL, 
	[Quantile] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516115138_CODEGEN_RCJX17_Quantiles part 2. Populate

WITH [DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.1500326246023178) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.11634615063667297) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.9707697629928589) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -1.3020480871200562) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.40230131149292) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.18217915296554565) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.5191034078598022) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 76.73333333333333 AS [E] UNION ALL SELECT 4 AS nid, 106.52808988764045 AS [E] UNION ALL SELECT 6 AS nid, 244.0 AS [E] UNION ALL SELECT 7 AS nid, 155.5185185185185 AS [E] UNION ALL SELECT 10 AS nid, 155.5 AS [E] UNION ALL SELECT 11 AS nid, 198.71428571428572 AS [E] UNION ALL SELECT 13 AS nid, 297.3157894736842 AS [E] UNION ALL SELECT 14 AS nid, 223.5 AS [E]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].nid AS nid, [DT_node_data].[E] AS [E] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].nid), 
[ADB_Model_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[E] AS [Estimator], 0.10750260463364116 AS [Weight], 0 AS est_index 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 0.7402026653289795) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 0.6326913833618164) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.5286004543304443) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.886191725730896) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= 0.4908640384674072) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.6663813591003418) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.8185133337974548) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_1] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 106.35754189944134 AS [E] UNION ALL SELECT 4 AS nid, 219.66666666666666 AS [E] UNION ALL SELECT 6 AS nid, 131.06666666666666 AS [E] UNION ALL SELECT 7 AS nid, 197.14285714285714 AS [E] UNION ALL SELECT 10 AS nid, 218.5064935064935 AS [E] UNION ALL SELECT 11 AS nid, 291.26666666666665 AS [E] UNION ALL SELECT 13 AS nid, 103.8 AS [E] UNION ALL SELECT 14 AS nid, 201.0 AS [E]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].nid AS nid, [DT_node_data_1].[E] AS [E] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].nid), 
[ADB_Model_1] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[E] AS [Estimator], 0.09354237709363004 AS [Weight], 1 AS est_index 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.45792627334594727) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 1.3931347131729126) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.19671835005283356) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= 0.04821458458900452) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.4711917638778687) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 0.7402026653289795) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.3822742700576782) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_2] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 95.83333333333333 AS [E] UNION ALL SELECT 4 AS nid, 136.88888888888889 AS [E] UNION ALL SELECT 6 AS nid, 235.25 AS [E] UNION ALL SELECT 7 AS nid, 150.5 AS [E] UNION ALL SELECT 10 AS nid, 162.04516129032257 AS [E] UNION ALL SELECT 11 AS nid, 221.15686274509804 AS [E] UNION ALL SELECT 13 AS nid, 298.1666666666667 AS [E] UNION ALL SELECT 14 AS nid, 217.54545454545453 AS [E]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].nid AS nid, [DT_node_data_2].[E] AS [E] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].nid), 
[ADB_Model_2] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[E] AS [Estimator], 0.06136321087010758 AS [Weight], 2 AS est_index 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.021907038986682892) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.07041918486356735) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 2.3076553344726562) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.6218109130859375) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.3498516082763672) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -0.6222151517868042) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 1.1021310091018677) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_3] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 100.7 AS [E] UNION ALL SELECT 4 AS nid, 253.0 AS [E] UNION ALL SELECT 6 AS nid, 302.0 AS [E] UNION ALL SELECT 7 AS nid, 158.17777777777778 AS [E] UNION ALL SELECT 10 AS nid, 162.41176470588235 AS [E] UNION ALL SELECT 11 AS nid, 232.24528301886792 AS [E] UNION ALL SELECT 13 AS nid, 110.70833333333333 AS [E] UNION ALL SELECT 14 AS nid, 246.66666666666666 AS [E]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].nid AS nid, [DT_node_data_3].[E] AS [E] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].nid), 
[ADB_Model_3] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], [DT_Output_3].[E] AS [Estimator], 0.07227610823500182 AS [Weight], 3 AS est_index 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.9545133709907532) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.2439785897731781) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 2.1545372009277344) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= -0.0008598752319812775) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= -0.5645701289176941) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.24513116478919983) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -1.2423365116119385) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_4] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 104.24166666666666 AS [E] UNION ALL SELECT 4 AS nid, 253.0 AS [E] UNION ALL SELECT 6 AS nid, 192.66666666666666 AS [E] UNION ALL SELECT 7 AS nid, 146.61855670103094 AS [E] UNION ALL SELECT 10 AS nid, 68.0 AS [E] UNION ALL SELECT 11 AS nid, 221.0 AS [E] UNION ALL SELECT 13 AS nid, 146.4 AS [E] UNION ALL SELECT 14 AS nid, 276.9848484848485 AS [E]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].nid AS nid, [DT_node_data_4].[E] AS [E] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].nid), 
[ADB_Model_4] AS 
(SELECT [DT_Output_4].[KEY] AS [KEY], [DT_Output_4].[E] AS [Estimator], 0.06892498966419022 AS [Weight], 4 AS est_index 
FROM [DT_Output_4]), 
[DT_node_lookup_5] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.2541116774082184) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.5051982998847961) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.8637807369232178) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.77559494972229) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.503667950630188) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.7218210697174072) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.9763884544372559) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_5] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 141.0 AS [E] UNION ALL SELECT 4 AS nid, 218.10526315789474 AS [E] UNION ALL SELECT 6 AS nid, 183.91666666666666 AS [E] UNION ALL SELECT 7 AS nid, 113.04580152671755 AS [E] UNION ALL SELECT 10 AS nid, 176.88888888888889 AS [E] UNION ALL SELECT 11 AS nid, 87.84615384615384 AS [E] UNION ALL SELECT 13 AS nid, 216.8230769230769 AS [E] UNION ALL SELECT 14 AS nid, 301.4 AS [E]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].nid AS nid, [DT_node_data_5].[E] AS [E] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].nid), 
[ADB_Model_5] AS 
(SELECT [DT_Output_5].[KEY] AS [KEY], [DT_Output_5].[E] AS [Estimator], 0.05026466992485405 AS [Weight], 5 AS est_index 
FROM [DT_Output_5]), 
[DT_node_lookup_6] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.09338267147541046) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.4516777992248535) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= 0.4908640384674072) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= 0.6103914976119995) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.6062126755714417) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 2.917891263961792) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.0835670232772827) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_6] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 124.10752688172043 AS [E] UNION ALL SELECT 4 AS nid, 76.93181818181819 AS [E] UNION ALL SELECT 6 AS nid, 228.33333333333334 AS [E] UNION ALL SELECT 7 AS nid, 122.46153846153847 AS [E] UNION ALL SELECT 10 AS nid, 172.0952380952381 AS [E] UNION ALL SELECT 11 AS nid, 346.0 AS [E] UNION ALL SELECT 13 AS nid, 128.0 AS [E] UNION ALL SELECT 14 AS nid, 268.864406779661 AS [E]) AS [Values]), 
[DT_Output_6] AS 
(SELECT [DT_node_lookup_6].[KEY] AS [KEY], [DT_node_lookup_6].node_id_2 AS node_id_2, [DT_node_data_6].nid AS nid, [DT_node_data_6].[E] AS [E] 
FROM [DT_node_lookup_6] LEFT OUTER JOIN [DT_node_data_6] ON [DT_node_lookup_6].node_id_2 = [DT_node_data_6].nid), 
[ADB_Model_6] AS 
(SELECT [DT_Output_6].[KEY] AS [KEY], [DT_Output_6].[E] AS [Estimator], 0.07727929370486647 AS [Weight], 6 AS est_index 
FROM [DT_Output_6]), 
[DT_node_lookup_7] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= -0.3477584719657898) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 1.203190803527832) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.7801955938339233) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.26255133748054504) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.09338267147541046) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 1.9070825576782227) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.7080578804016113) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_7] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 75.9375 AS [E] UNION ALL SELECT 4 AS nid, 125.2394366197183 AS [E] UNION ALL SELECT 6 AS nid, 204.75 AS [E] UNION ALL SELECT 7 AS nid, 257.5 AS [E] UNION ALL SELECT 10 AS nid, 135.54310344827587 AS [E] UNION ALL SELECT 11 AS nid, 266.22222222222223 AS [E] UNION ALL SELECT 13 AS nid, 257.97297297297297 AS [E] UNION ALL SELECT 14 AS nid, 159.33333333333334 AS [E]) AS [Values]), 
[DT_Output_7] AS 
(SELECT [DT_node_lookup_7].[KEY] AS [KEY], [DT_node_lookup_7].node_id_2 AS node_id_2, [DT_node_data_7].nid AS nid, [DT_node_data_7].[E] AS [E] 
FROM [DT_node_lookup_7] LEFT OUTER JOIN [DT_node_data_7] ON [DT_node_lookup_7].node_id_2 = [DT_node_data_7].nid), 
[ADB_Model_7] AS 
(SELECT [DT_Output_7].[KEY] AS [KEY], [DT_Output_7].[E] AS [Estimator], 0.05834452676111754 AS [Weight], 7 AS est_index 
FROM [DT_Output_7]), 
[DT_node_lookup_8] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.5515639781951904) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.8767361640930176) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 0.6171091198921204) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -0.6222151517868042) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.43114182353019714) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 2.1256508827209473) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 0.3479241728782654) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_8] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 120.27717391304348 AS [E] UNION ALL SELECT 4 AS nid, 179.49382716049382 AS [E] UNION ALL SELECT 6 AS nid, 102.0 AS [E] UNION ALL SELECT 7 AS nid, 252.46808510638297 AS [E] UNION ALL SELECT 10 AS nid, 296.0 AS [E] UNION ALL SELECT 11 AS nid, 340.2307692307692 AS [E] UNION ALL SELECT 13 AS nid, 128.0 AS [E] UNION ALL SELECT 14 AS nid, 255.0 AS [E]) AS [Values]), 
[DT_Output_8] AS 
(SELECT [DT_node_lookup_8].[KEY] AS [KEY], [DT_node_lookup_8].node_id_2 AS node_id_2, [DT_node_data_8].nid AS nid, [DT_node_data_8].[E] AS [E] 
FROM [DT_node_lookup_8] LEFT OUTER JOIN [DT_node_data_8] ON [DT_node_lookup_8].node_id_2 = [DT_node_data_8].nid), 
[ADB_Model_8] AS 
(SELECT [DT_Output_8].[KEY] AS [KEY], [DT_Output_8].[E] AS [Estimator], 0.046362345584868785 AS [Weight], 8 AS est_index 
FROM [DT_Output_8]), 
[DT_node_lookup_9] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.9889585971832275) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.23324185609817505) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 0.889798104763031) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.929378867149353) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -1.052392601966858) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= -0.2391015589237213) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.1220130920410156) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_9] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 98.77669902912622 AS [E] UNION ALL SELECT 4 AS nid, 250.0 AS [E] UNION ALL SELECT 6 AS nid, 294.7142857142857 AS [E] UNION ALL SELECT 7 AS nid, 166.1 AS [E] UNION ALL SELECT 10 AS nid, 78.0 AS [E] UNION ALL SELECT 11 AS nid, 140.6 AS [E] UNION ALL SELECT 13 AS nid, 153.16666666666666 AS [E] UNION ALL SELECT 14 AS nid, 270.6607142857143 AS [E]) AS [Values]), 
[DT_Output_9] AS 
(SELECT [DT_node_lookup_9].[KEY] AS [KEY], [DT_node_lookup_9].node_id_2 AS node_id_2, [DT_node_data_9].nid AS nid, [DT_node_data_9].[E] AS [E] 
FROM [DT_node_lookup_9] LEFT OUTER JOIN [DT_node_data_9] ON [DT_node_lookup_9].node_id_2 = [DT_node_data_9].nid), 
[ADB_Model_9] AS 
(SELECT [DT_Output_9].[KEY] AS [KEY], [DT_Output_9].[E] AS [Estimator], 0.0617546744821441 AS [Weight], 9 AS est_index 
FROM [DT_Output_9]), 
[DT_node_lookup_10] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.503667950630188) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 2.0796070098876953) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= -0.8118095397949219) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.779662013053894) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.929378867149353) THEN 8 ELSE 9 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 1.1353976726531982) THEN 11 ELSE 12 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_10] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 133.5909090909091 AS [E] UNION ALL SELECT 4 AS nid, 84.05263157894737 AS [E] UNION ALL SELECT 5 AS nid, 253.0 AS [E] UNION ALL SELECT 8 AS nid, 289.25 AS [E] UNION ALL SELECT 9 AS nid, 152.87437185929647 AS [E] UNION ALL SELECT 11 AS nid, 269.72340425531917 AS [E] UNION ALL SELECT 12 AS nid, 134.5 AS [E]) AS [Values]), 
[DT_Output_10] AS 
(SELECT [DT_node_lookup_10].[KEY] AS [KEY], [DT_node_lookup_10].node_id_2 AS node_id_2, [DT_node_data_10].nid AS nid, [DT_node_data_10].[E] AS [E] 
FROM [DT_node_lookup_10] LEFT OUTER JOIN [DT_node_data_10] ON [DT_node_lookup_10].node_id_2 = [DT_node_data_10].nid), 
[ADB_Model_10] AS 
(SELECT [DT_Output_10].[KEY] AS [KEY], [DT_Output_10].[E] AS [Estimator], 0.050485802975356826 AS [Weight], 10 AS est_index 
FROM [DT_Output_10]), 
[DT_node_lookup_11] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 0.46715831756591797) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 0.4669780135154724) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 2.68825626373291) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_6 <= 0.9492676258087158) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.3458282947540283) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -1.50126051902771) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.042502447962760925) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_11] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 126.87162162162163 AS [E] UNION ALL SELECT 4 AS nid, 346.0 AS [E] UNION ALL SELECT 6 AS nid, 251.56521739130434 AS [E] UNION ALL SELECT 7 AS nid, 161.97368421052633 AS [E] UNION ALL SELECT 10 AS nid, 133.33333333333334 AS [E] UNION ALL SELECT 11 AS nid, 269.3114754098361 AS [E] UNION ALL SELECT 13 AS nid, 236.58823529411765 AS [E] UNION ALL SELECT 14 AS nid, 133.02380952380952 AS [E]) AS [Values]), 
[DT_Output_11] AS 
(SELECT [DT_node_lookup_11].[KEY] AS [KEY], [DT_node_lookup_11].node_id_2 AS node_id_2, [DT_node_data_11].nid AS nid, [DT_node_data_11].[E] AS [E] 
FROM [DT_node_lookup_11] LEFT OUTER JOIN [DT_node_data_11] ON [DT_node_lookup_11].node_id_2 = [DT_node_data_11].nid), 
[ADB_Model_11] AS 
(SELECT [DT_Output_11].[KEY] AS [KEY], [DT_Output_11].[E] AS [Estimator], 0.057254879554018104 AS [Weight], 11 AS est_index 
FROM [DT_Output_11]), 
[DT_node_lookup_12] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.43276339769363403) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.4597100019454956) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.17258942127227783) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 2.917891263961792) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.18217915296554565) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= 0.3773806095123291) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 3.5660452842712402) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_12] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 152.61421319796955 AS [E] UNION ALL SELECT 4 AS nid, 85.84444444444445 AS [E] UNION ALL SELECT 6 AS nid, 273.125 AS [E] UNION ALL SELECT 7 AS nid, 346.0 AS [E] UNION ALL SELECT 10 AS nid, 81.875 AS [E] UNION ALL SELECT 11 AS nid, 137.875 AS [E] UNION ALL SELECT 13 AS nid, 255.43589743589743 AS [E] UNION ALL SELECT 14 AS nid, 84.0 AS [E]) AS [Values]), 
[DT_Output_12] AS 
(SELECT [DT_node_lookup_12].[KEY] AS [KEY], [DT_node_lookup_12].node_id_2 AS node_id_2, [DT_node_data_12].nid AS nid, [DT_node_data_12].[E] AS [E] 
FROM [DT_node_lookup_12] LEFT OUTER JOIN [DT_node_data_12] ON [DT_node_lookup_12].node_id_2 = [DT_node_data_12].nid), 
[ADB_Model_12] AS 
(SELECT [DT_Output_12].[KEY] AS [KEY], [DT_Output_12].[E] AS [Estimator], 0.05821431167548321 AS [Weight], 12 AS est_index 
FROM [DT_Output_12]), 
[DT_node_lookup_13] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.9774768352508545) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= -0.2439785897731781) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.38567081093788147) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.7708054780960083) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.1220130920410156) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 0.2119712233543396) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -1.0761356353759766) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_13] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 228.0 AS [E] UNION ALL SELECT 4 AS nid, 110.51162790697674 AS [E] UNION ALL SELECT 6 AS nid, 192.25 AS [E] UNION ALL SELECT 7 AS nid, 55.666666666666664 AS [E] UNION ALL SELECT 10 AS nid, 213.66666666666666 AS [E] UNION ALL SELECT 11 AS nid, 98.0 AS [E] UNION ALL SELECT 13 AS nid, 133.25 AS [E] UNION ALL SELECT 14 AS nid, 269.80645161290323 AS [E]) AS [Values]), 
[DT_Output_13] AS 
(SELECT [DT_node_lookup_13].[KEY] AS [KEY], [DT_node_lookup_13].node_id_2 AS node_id_2, [DT_node_data_13].nid AS nid, [DT_node_data_13].[E] AS [E] 
FROM [DT_node_lookup_13] LEFT OUTER JOIN [DT_node_data_13] ON [DT_node_lookup_13].node_id_2 = [DT_node_data_13].nid), 
[ADB_Model_13] AS 
(SELECT [DT_Output_13].[KEY] AS [KEY], [DT_Output_13].[E] AS [Estimator], 0.04592642570178122 AS [Weight], 13 AS est_index 
FROM [DT_Output_13]), 
[DT_node_lookup_14] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_10 <= 0.2541116774082184) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.5641341209411621) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.30598580837249756) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.08586477488279343) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.8663866519927979) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -0.9434657096862793) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 3.456969738006592) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_14] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 170.46153846153845 AS [E] UNION ALL SELECT 4 AS nid, 90.02884615384616 AS [E] UNION ALL SELECT 6 AS nid, 267.5 AS [E] UNION ALL SELECT 7 AS nid, 140.875 AS [E] UNION ALL SELECT 10 AS nid, 239.53658536585365 AS [E] UNION ALL SELECT 11 AS nid, 153.47674418604652 AS [E] UNION ALL SELECT 13 AS nid, 280.1509433962264 AS [E] UNION ALL SELECT 14 AS nid, 84.0 AS [E]) AS [Values]), 
[DT_Output_14] AS 
(SELECT [DT_node_lookup_14].[KEY] AS [KEY], [DT_node_lookup_14].node_id_2 AS node_id_2, [DT_node_data_14].nid AS nid, [DT_node_data_14].[E] AS [E] 
FROM [DT_node_lookup_14] LEFT OUTER JOIN [DT_node_data_14] ON [DT_node_lookup_14].node_id_2 = [DT_node_data_14].nid), 
[ADB_Model_14] AS 
(SELECT [DT_Output_14].[KEY] AS [KEY], [DT_Output_14].[E] AS [Estimator], 0.05694713842233399 AS [Weight], 14 AS est_index 
FROM [DT_Output_14]), 
[DT_node_lookup_15] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.15921565890312195) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 0.5027728080749512) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -2.0062708854675293) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -0.2969965636730194) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.6929373741149902) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.4597100019454956) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 3.653141498565674) THEN 13 ELSE 14 END END END AS node_id_2 
FROM ##TMP_20180516115138_CODEGEN_ZFYTNR_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_15] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 160.54545454545453 AS [E] UNION ALL SELECT 4 AS nid, 96.39506172839506 AS [E] UNION ALL SELECT 6 AS nid, 165.86666666666667 AS [E] UNION ALL SELECT 7 AS nid, 287.0 AS [E] UNION ALL SELECT 10 AS nid, 160.95569620253164 AS [E] UNION ALL SELECT 11 AS nid, 311.09090909090907 AS [E] UNION ALL SELECT 13 AS nid, 259.07547169811323 AS [E] UNION ALL SELECT 14 AS nid, 84.0 AS [E]) AS [Values]), 
[DT_Output_15] AS 
(SELECT [DT_node_lookup_15].[KEY] AS [KEY], [DT_node_lookup_15].node_id_2 AS node_id_2, [DT_node_data_15].nid AS nid, [DT_node_data_15].[E] AS [E] 
FROM [DT_node_lookup_15] LEFT OUTER JOIN [DT_node_data_15] ON [DT_node_lookup_15].node_id_2 = [DT_node_data_15].nid), 
[ADB_Model_15] AS 
(SELECT [DT_Output_15].[KEY] AS [KEY], [DT_Output_15].[E] AS [Estimator], 0.03355664071660493 AS [Weight], 15 AS est_index 
FROM [DT_Output_15]), 
[WE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[Estimator] AS [Estimator], ensemble_score_union.[Weight] AS [Weight], ensemble_score_union.est_index AS est_index 
FROM (SELECT [ADB_Model_0].[KEY] AS [KEY], [ADB_Model_0].[Estimator] AS [Estimator], [ADB_Model_0].[Weight] AS [Weight], [ADB_Model_0].est_index AS est_index 
FROM [ADB_Model_0] UNION ALL SELECT [ADB_Model_1].[KEY] AS [KEY], [ADB_Model_1].[Estimator] AS [Estimator], [ADB_Model_1].[Weight] AS [Weight], [ADB_Model_1].est_index AS est_index 
FROM [ADB_Model_1] UNION ALL SELECT [ADB_Model_2].[KEY] AS [KEY], [ADB_Model_2].[Estimator] AS [Estimator], [ADB_Model_2].[Weight] AS [Weight], [ADB_Model_2].est_index AS est_index 
FROM [ADB_Model_2] UNION ALL SELECT [ADB_Model_3].[KEY] AS [KEY], [ADB_Model_3].[Estimator] AS [Estimator], [ADB_Model_3].[Weight] AS [Weight], [ADB_Model_3].est_index AS est_index 
FROM [ADB_Model_3] UNION ALL SELECT [ADB_Model_4].[KEY] AS [KEY], [ADB_Model_4].[Estimator] AS [Estimator], [ADB_Model_4].[Weight] AS [Weight], [ADB_Model_4].est_index AS est_index 
FROM [ADB_Model_4] UNION ALL SELECT [ADB_Model_5].[KEY] AS [KEY], [ADB_Model_5].[Estimator] AS [Estimator], [ADB_Model_5].[Weight] AS [Weight], [ADB_Model_5].est_index AS est_index 
FROM [ADB_Model_5] UNION ALL SELECT [ADB_Model_6].[KEY] AS [KEY], [ADB_Model_6].[Estimator] AS [Estimator], [ADB_Model_6].[Weight] AS [Weight], [ADB_Model_6].est_index AS est_index 
FROM [ADB_Model_6] UNION ALL SELECT [ADB_Model_7].[KEY] AS [KEY], [ADB_Model_7].[Estimator] AS [Estimator], [ADB_Model_7].[Weight] AS [Weight], [ADB_Model_7].est_index AS est_index 
FROM [ADB_Model_7] UNION ALL SELECT [ADB_Model_8].[KEY] AS [KEY], [ADB_Model_8].[Estimator] AS [Estimator], [ADB_Model_8].[Weight] AS [Weight], [ADB_Model_8].est_index AS est_index 
FROM [ADB_Model_8] UNION ALL SELECT [ADB_Model_9].[KEY] AS [KEY], [ADB_Model_9].[Estimator] AS [Estimator], [ADB_Model_9].[Weight] AS [Weight], [ADB_Model_9].est_index AS est_index 
FROM [ADB_Model_9] UNION ALL SELECT [ADB_Model_10].[KEY] AS [KEY], [ADB_Model_10].[Estimator] AS [Estimator], [ADB_Model_10].[Weight] AS [Weight], [ADB_Model_10].est_index AS est_index 
FROM [ADB_Model_10] UNION ALL SELECT [ADB_Model_11].[KEY] AS [KEY], [ADB_Model_11].[Estimator] AS [Estimator], [ADB_Model_11].[Weight] AS [Weight], [ADB_Model_11].est_index AS est_index 
FROM [ADB_Model_11] UNION ALL SELECT [ADB_Model_12].[KEY] AS [KEY], [ADB_Model_12].[Estimator] AS [Estimator], [ADB_Model_12].[Weight] AS [Weight], [ADB_Model_12].est_index AS est_index 
FROM [ADB_Model_12] UNION ALL SELECT [ADB_Model_13].[KEY] AS [KEY], [ADB_Model_13].[Estimator] AS [Estimator], [ADB_Model_13].[Weight] AS [Weight], [ADB_Model_13].est_index AS est_index 
FROM [ADB_Model_13] UNION ALL SELECT [ADB_Model_14].[KEY] AS [KEY], [ADB_Model_14].[Estimator] AS [Estimator], [ADB_Model_14].[Weight] AS [Weight], [ADB_Model_14].est_index AS est_index 
FROM [ADB_Model_14] UNION ALL SELECT [ADB_Model_15].[KEY] AS [KEY], [ADB_Model_15].[Estimator] AS [Estimator], [ADB_Model_15].[Weight] AS [Weight], [ADB_Model_15].est_index AS est_index 
FROM [ADB_Model_15]) AS ensemble_score_union), 
[Cumulative_Frequencies] AS 
(SELECT [CW].[KEY] AS [KEY], [CW].[Estimator] AS [Estimator], [CW].[Weight] AS [Weight], [CW].est_index AS est_index, [CW].cum_weight AS cum_weight 
FROM (SELECT u1.[KEY] AS [KEY], u1.[Estimator] AS [Estimator], u1.[Weight] AS [Weight], u1.est_index AS est_index, sum(u2.[Weight]) AS cum_weight 
FROM [WE] AS u1, [WE] AS u2 
WHERE u1.[Estimator] >= u2.[Estimator] AND u1.[KEY] = u2.[KEY] GROUP BY u1.[KEY], u1.est_index, u1.[Estimator], u1.[Weight]) AS [CW])
 INSERT INTO ##TMP_20180516115138_CODEGEN_RCJX17_Quantiles ([KEY], [Quantile]) SELECT [Quantiles].[KEY], [Quantiles].[Quantile] 
FROM (SELECT [CW2].[KEY] AS [KEY], [CW2].[Quantile] AS [Quantile] 
FROM (SELECT [Cumulative_Frequencies].[KEY] AS [KEY], min([Cumulative_Frequencies].[Estimator]) AS [Quantile] 
FROM [Cumulative_Frequencies] 
WHERE [Cumulative_Frequencies].cum_weight >= 0.5 GROUP BY [Cumulative_Frequencies].[KEY]) AS [CW2]) AS [Quantiles]

-- Model deployment code

SELECT [Quantiles].[KEY] AS [KEY], [Quantiles].[Quantile] AS [Estimator] 
FROM ##TMP_20180516115138_CODEGEN_RCJX17_Quantiles AS [Quantiles]