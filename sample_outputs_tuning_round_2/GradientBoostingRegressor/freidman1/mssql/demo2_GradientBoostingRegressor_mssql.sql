-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] <= 0.44577229022979736) THEN CASE WHEN ([ADS].[Feature_4] <= 0.6678532958030701) THEN CASE WHEN ([ADS].[Feature_3] <= 0.4583197236061096) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.6619341373443604) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.27792081236839294) THEN CASE WHEN ([ADS].[Feature_0] <= 0.37086910009384155) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 2 AS parent_id, -7.093849845116415 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 2 AS parent_id, -2.501011412013575 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 5 AS parent_id, -0.7408275201378117 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, 4.278078463400813 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 9 AS parent_id, -4.585097879169128 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 9 AS parent_id, 1.2898297572270978 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 12 AS parent_id, -1.2643830692508 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 12 AS parent_id, 4.784408715250739 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[GB_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[Estimator] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] <= 0.44577229022979736) THEN CASE WHEN ([ADS].[Feature_4] <= 0.6678532958030701) THEN CASE WHEN ([ADS].[Feature_3] <= 0.4583197236061096) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.917350709438324) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.27792081236839294) THEN CASE WHEN ([ADS].[Feature_3] <= 0.04497052729129791) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.23805725574493408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 2 AS parent_id, -6.384464860604774 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 2 AS parent_id, -2.2509102708122177 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 5 AS parent_id, 0.38757941027332676 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 7.912399167038801 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -6.219637110260264 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 9 AS parent_id, 0.3622503180672496 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 12 AS parent_id, -1.1379447623257206 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, 12 AS parent_id, 4.3059678437256625 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[GB_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[Estimator] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] <= 0.44577229022979736) THEN CASE WHEN ([ADS].[Feature_3] <= 0.24268898367881775) THEN CASE WHEN ([ADS].[Feature_1] <= 0.3780941963195801) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.2274620532989502) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.7538962364196777) THEN CASE WHEN ([ADS].[Feature_3] <= 0.04497052729129791) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.0398918092250824) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 2 AS parent_id, -7.370152713546332 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -4.2708906932921185 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 3 AS depth, 5 AS parent_id, -3.1804811311245733 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 5 AS parent_id, 0.9284733977472368 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 9 AS parent_id, -5.597673399234237 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, 9 AS parent_id, 1.605168377981131 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 12 AS parent_id, 0.6748819159331783 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 12 AS parent_id, 5.905636312210524 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[GB_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[Estimator] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_1] <= 0.44577229022979736) THEN CASE WHEN ([ADS].[Feature_4] <= 0.574918806552887) THEN CASE WHEN ([ADS].[Feature_7] <= 0.041853323578834534) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.8595516681671143) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.38620519638061523) THEN CASE WHEN ([ADS].[Feature_4] <= 0.7087181210517883) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.7423961162567139) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 2.8294125166928 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 2 AS parent_id, -4.282294629155776 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 5 AS parent_id, -0.36262630653622246 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 5 AS parent_id, 5.009876124965633 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 9 AS parent_id, -2.28524649853795 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 9 AS parent_id, 1.8822147770483508 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 12 AS parent_id, 2.036037131911777 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 12 AS parent_id, 5.191154372346607 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[GB_Tree_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], [DT_Output_3].[Estimator] AS [Estimator] 
FROM [DT_Output_3]), 
[Score_Union_CTE] AS 
(SELECT ensemble_score_union.[KEY] AS [KEY], ensemble_score_union.[Estimator] AS [Estimator] 
FROM (SELECT [GB_Tree_0_0].[KEY] AS [KEY], [GB_Tree_0_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_0_0] UNION ALL SELECT [GB_Tree_1_0].[KEY] AS [KEY], [GB_Tree_1_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_1_0] UNION ALL SELECT [GB_Tree_2_0].[KEY] AS [KEY], [GB_Tree_2_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_2_0] UNION ALL SELECT [GB_Tree_3_0].[KEY] AS [KEY], [GB_Tree_3_0].[Estimator] AS [Estimator] 
FROM [GB_Tree_3_0]) AS ensemble_score_union), 
[GradBoost_Sum_Scores] AS 
(SELECT [T].[KEY] AS [KEY], [T].[Estimator] AS [Estimator] 
FROM (SELECT [Score_Union_CTE].[KEY] AS [KEY], sum([Score_Union_CTE].[Estimator]) AS [Estimator] 
FROM [Score_Union_CTE] GROUP BY [Score_Union_CTE].[KEY]) AS [T])
 SELECT [GradBoost_Sum_Scores].[KEY] AS [KEY], 15.3537633819 + 0.1 * [GradBoost_Sum_Scores].[Estimator] AS [Estimator] 
FROM [GradBoost_Sum_Scores]