-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.0618292052381 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.177024637672 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.041383850049 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.130606468058 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.0595581047198 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN -0.0489290898701 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.191017978617 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0220495967327 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN -0.0577298140341 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN -0.052549592052 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [BinaryClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.0618292052381) / 1.22838395621 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.177024637672) / 0.940821656314 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.041383850049) / 1.07418248888 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.130606468058) / 1.07922445597 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.0595581047198) / 1.10958911905 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - -0.0489290898701) / 1.3781871812 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.191017978617) / 0.97352852463 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0220495967327) / 0.474603012038 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - -0.0577298140341) / 1.06460752484 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - -0.052549592052) / 1.22453288966 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_11 <= 0.07101128250360489) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.7556507587432861) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.8114416599273682) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= 0.8498867750167847) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= 1.7904822826385498) THEN 9 ELSE 10 END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision], [Values].[DecisionProba] AS [DecisionProba] 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 4 AS depth, 3 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 31 AS count, 2 AS depth, 8 AS parent_id, 0.0 AS [Proba_0], -1.79769313486231e+308 AS [LogProba_0], 1.0 AS [Proba_1], 0.0 AS [LogProba_1], 1 AS [Decision], 1.0 AS [DecisionProba] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 2 AS depth, 8 AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision], 1.0 AS [DecisionProba]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Proba_0] AS [Proba_0], [DT_node_data].[LogProba_0] AS [LogProba_0], [DT_node_data].[Proba_1] AS [Proba_1], [DT_node_data].[LogProba_1] AS [LogProba_1], [DT_node_data].[Decision] AS [Decision], [DT_node_data].[DecisionProba] AS [DecisionProba] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id)
 SELECT [DT_Output].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], [DT_Output].[Proba_0] AS [Proba_0], [DT_Output].[Proba_1] AS [Proba_1], [DT_Output].[LogProba_0] AS [LogProba_0], [DT_Output].[LogProba_1] AS [LogProba_1], [DT_Output].[Decision] AS [Decision], [DT_Output].[DecisionProba] AS [DecisionProba] 
FROM [DT_Output]