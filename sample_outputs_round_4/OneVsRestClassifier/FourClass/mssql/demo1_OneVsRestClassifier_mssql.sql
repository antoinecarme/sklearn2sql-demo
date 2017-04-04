-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_14] <= -0.6677243709564209) THEN CASE WHEN ([ADS].[Feature_2] <= 0.4163095951080322) THEN 2 ELSE 3 END ELSE CASE WHEN ([ADS].[Feature_16] <= -0.07423041760921478) THEN 5 ELSE 6 END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision] 
FROM (SELECT 0 AS node_id, 'Feature_14' AS feature, -0.6677243709564209 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.76 AS [Proba_0], -0.274436845702 AS [LogProba_0], 0.24 AS [Proba_1], -1.42711635564 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 1 AS node_id, 'Feature_2' AS feature, 0.4163095951080322 AS threshold, 40 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.55 AS [Proba_0], -0.597837000756 AS [LogProba_0], 0.45 AS [Proba_1], -0.798507696218 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7391304347826086 AS [Proba_0], -0.302280871873 AS [LogProba_0], 0.2608695652173913 AS [Proba_1], -1.3437347467 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.29411764705882354 AS [Proba_0], -1.22377543162 AS [LogProba_0], 0.7058823529411765 AS [Proba_1], -0.348306694268 AS [LogProba_1], 1 AS [Decision] UNION ALL SELECT 4 AS node_id, 'Feature_16' AS feature, -0.07423041760921478 AS threshold, 60 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9 AS [Proba_0], -0.105360515658 AS [LogProba_0], 0.1 AS [Proba_1], -2.30258509299 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 36 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75 AS [Proba_0], -0.287682072452 AS [LogProba_0], 0.25 AS [Proba_1], -1.38629436112 AS [LogProba_1], 0 AS [Decision]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Proba_0] AS [Proba_0], [DT_node_data].[LogProba_0] AS [LogProba_0], [DT_node_data].[Proba_1] AS [Proba_1], [DT_node_data].[LogProba_1] AS [LogProba_1], [DT_node_data].[Decision] AS [Decision] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[OVR_Score_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0, CAST(NULL AS FLOAT) AS [Score_0], [DT_Output].[Proba_1] AS [Proba_0], [DT_Output].[LogProba_1] AS [LogProba_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_16] <= -0.3107805848121643) THEN CASE WHEN ([ADS].[Feature_16] <= -1.1967531442642212) THEN 2 ELSE 3 END ELSE CASE WHEN ([ADS].[Feature_9] <= -0.5071932077407837) THEN 5 ELSE 6 END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision] 
FROM (SELECT 0 AS node_id, 'Feature_16' AS feature, -0.3107805848121643 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.76 AS [Proba_0], -0.274436845702 AS [LogProba_0], 0.24 AS [Proba_1], -1.42711635564 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 1 AS node_id, 'Feature_16' AS feature, -1.1967531442642212 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4878048780487805 AS [Proba_0], -0.71783979315 AS [LogProba_0], 0.5121951219512195 AS [Proba_1], -0.669049628981 AS [LogProba_1], 1 AS [Decision] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.875 AS [Proba_0], -0.133531392625 AS [LogProba_0], 0.125 AS [Proba_1], -2.07944154168 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.24 AS [Proba_0], -1.42711635564 AS [LogProba_0], 0.76 AS [Proba_1], -0.274436845702 AS [LogProba_1], 1 AS [Decision] UNION ALL SELECT 4 AS node_id, 'Feature_9' AS feature, -0.5071932077407837 AS threshold, 59 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9491525423728814 AS [Proba_0], -0.0521857531706 AS [LogProba_0], 0.05084745762711865 AS [Proba_1], -2.97892515524 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8 AS [Proba_0], -0.223143551314 AS [LogProba_0], 0.2 AS [Proba_1], -1.60943791243 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 44 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Proba_0] AS [Proba_0], [DT_node_data_1].[LogProba_0] AS [LogProba_0], [DT_node_data_1].[Proba_1] AS [Proba_1], [DT_node_data_1].[LogProba_1] AS [LogProba_1], [DT_node_data_1].[Decision] AS [Decision] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[OVR_Score_1] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1, CAST(NULL AS FLOAT) AS [Score_1], [DT_Output_1].[Proba_1] AS [Proba_1], [DT_Output_1].[LogProba_1] AS [LogProba_1] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_16] <= 0.4329221844673157) THEN CASE WHEN ([ADS].[Feature_16] <= -0.16241931915283203) THEN 2 ELSE 3 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.050866857171058655) THEN 5 ELSE 6 END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision] 
FROM (SELECT 0 AS node_id, 'Feature_16' AS feature, 0.4329221844673157 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.74 AS [Proba_0], -0.301105092784 AS [LogProba_0], 0.26 AS [Proba_1], -1.34707364797 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 1 AS node_id, 'Feature_16' AS feature, -0.16241931915283203 AS threshold, 67 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9402985074626866 AS [Proba_0], -0.0615578929994 AS [LogProba_0], 0.05970149253731343 AS [Proba_1], -2.81839825827 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 45 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8181818181818182 AS [Proba_0], -0.200670695462 AS [LogProba_0], 0.18181818181818182 AS [Proba_1], -1.70474809224 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 4 AS node_id, 'Feature_8' AS feature, -0.050866857171058655 AS threshold, 33 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS [Proba_0], -1.09861228867 AS [LogProba_0], 0.6666666666666666 AS [Proba_1], -0.405465108108 AS [LogProba_1], 1 AS [Decision] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS [Proba_0], -0.405465108108 AS [LogProba_0], 0.3333333333333333 AS [Proba_1], -1.09861228867 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.05555555555555555 AS [Proba_0], -2.8903717579 AS [LogProba_0], 0.9444444444444444 AS [Proba_1], -0.0571584138399 AS [LogProba_1], 1 AS [Decision]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Proba_0] AS [Proba_0], [DT_node_data_2].[LogProba_0] AS [LogProba_0], [DT_node_data_2].[Proba_1] AS [Proba_1], [DT_node_data_2].[LogProba_1] AS [LogProba_1], [DT_node_data_2].[Decision] AS [Decision] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[OVR_Score_2] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2, CAST(NULL AS FLOAT) AS [Score_2], [DT_Output_2].[Proba_1] AS [Proba_2], [DT_Output_2].[LogProba_1] AS [LogProba_2] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_14] <= 0.5972224473953247) THEN CASE WHEN ([ADS].[Feature_6] <= 0.6811661720275879) THEN CASE WHEN ([ADS].[Feature_19] <= -0.4557480216026306) THEN 3 ELSE 4 END ELSE 5 END ELSE 6 END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Proba_0] AS [Proba_0], [Values].[LogProba_0] AS [LogProba_0], [Values].[Proba_1] AS [Proba_1], [Values].[LogProba_1] AS [LogProba_1], [Values].[Decision] AS [Decision] 
FROM (SELECT 0 AS node_id, 'Feature_14' AS feature, 0.5972224473953247 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.74 AS [Proba_0], -0.301105092784 AS [LogProba_0], 0.26 AS [Proba_1], -1.34707364797 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 1 AS node_id, 'Feature_6' AS feature, 0.6811661720275879 AS threshold, 71 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8732394366197183 AS [Proba_0], -0.135545491996 AS [LogProba_0], 0.1267605633802817 AS [Proba_1], -2.06545529971 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 2 AS node_id, 'Feature_19' AS feature, -0.4557480216026306 AS threshold, 55 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9454545454545454 AS [Proba_0], -0.056089466651 AS [LogProba_0], 0.05454545454545454 AS [Proba_1], -2.90872089656 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8571428571428571 AS [Proba_0], -0.154150679827 AS [LogProba_0], 0.14285714285714285 AS [Proba_1], -1.94591014906 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS [Proba_0], 0.0 AS [LogProba_0], 0.0 AS [Proba_1], -1.79769313486231e+308 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.625 AS [Proba_0], -0.470003629246 AS [LogProba_0], 0.375 AS [Proba_1], -0.980829253012 AS [LogProba_1], 0 AS [Decision] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.41379310344827586 AS [Proba_0], -0.882389180198 AS [LogProba_0], 0.5862068965517241 AS [Proba_1], -0.53408248593 AS [LogProba_1], 1 AS [Decision]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Proba_0] AS [Proba_0], [DT_node_data_3].[LogProba_0] AS [LogProba_0], [DT_node_data_3].[Proba_1] AS [Proba_1], [DT_node_data_3].[LogProba_1] AS [LogProba_1], [DT_node_data_3].[Decision] AS [Decision] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[OVR_Score_3] AS 
(SELECT [DT_Output_3].[KEY] AS join_key_3, CAST(NULL AS FLOAT) AS [Score_3], [DT_Output_3].[Proba_1] AS [Proba_3], [DT_Output_3].[LogProba_1] AS [LogProba_3] 
FROM [DT_Output_3]), 
[OVR_Join_CTE] AS 
(SELECT [OVR_Score_0].join_key_0 AS join_key_0, [OVR_Score_0].[Score_0] AS [Score_0], [OVR_Score_0].[Proba_0] AS [Proba_0], [OVR_Score_0].[LogProba_0] AS [LogProba_0], [OVR_Score_1].join_key_1 AS join_key_1, [OVR_Score_1].[Score_1] AS [Score_1], [OVR_Score_1].[Proba_1] AS [Proba_1], [OVR_Score_1].[LogProba_1] AS [LogProba_1], [OVR_Score_2].join_key_2 AS join_key_2, [OVR_Score_2].[Score_2] AS [Score_2], [OVR_Score_2].[Proba_2] AS [Proba_2], [OVR_Score_2].[LogProba_2] AS [LogProba_2], [OVR_Score_3].join_key_3 AS join_key_3, [OVR_Score_3].[Score_3] AS [Score_3], [OVR_Score_3].[Proba_3] AS [Proba_3], [OVR_Score_3].[LogProba_3] AS [LogProba_3] 
FROM [OVR_Score_0] LEFT OUTER JOIN [OVR_Score_1] ON [OVR_Score_0].join_key_0 = [OVR_Score_1].join_key_1 LEFT OUTER JOIN [OVR_Score_2] ON [OVR_Score_2].join_key_2 = [OVR_Score_1].join_key_1 LEFT OUTER JOIN [OVR_Score_3] ON [OVR_Score_3].join_key_3 = [OVR_Score_2].join_key_2), 
[OVR_Scores] AS 
(SELECT [OVR_Join_CTE].join_key_0 AS [KEY], [OVR_Join_CTE].[Score_0] AS [Score_0], [OVR_Join_CTE].[Proba_0] AS [Proba_0], [OVR_Join_CTE].[LogProba_0] AS [LogProba_0], [OVR_Join_CTE].[Score_1] AS [Score_1], [OVR_Join_CTE].[Proba_1] AS [Proba_1], [OVR_Join_CTE].[LogProba_1] AS [LogProba_1], [OVR_Join_CTE].[Score_2] AS [Score_2], [OVR_Join_CTE].[Proba_2] AS [Proba_2], [OVR_Join_CTE].[LogProba_2] AS [LogProba_2], [OVR_Join_CTE].[Score_3] AS [Score_3], [OVR_Join_CTE].[Proba_3] AS [Proba_3], [OVR_Join_CTE].[LogProba_3] AS [LogProba_3] 
FROM [OVR_Join_CTE]), 
orig_cte AS 
(SELECT [OVR_Scores].[KEY] AS [KEY], [OVR_Scores].[Score_0] AS [Score_0], [OVR_Scores].[Score_1] AS [Score_1], [OVR_Scores].[Score_2] AS [Score_2], [OVR_Scores].[Score_3] AS [Score_3], [OVR_Scores].[Proba_0] AS [Proba_0], [OVR_Scores].[Proba_1] AS [Proba_1], [OVR_Scores].[Proba_2] AS [Proba_2], [OVR_Scores].[Proba_3] AS [Proba_3], [OVR_Scores].[LogProba_0] AS [LogProba_0], [OVR_Scores].[LogProba_1] AS [LogProba_1], [OVR_Scores].[LogProba_2] AS [LogProba_2], [OVR_Scores].[LogProba_3] AS [LogProba_3], CAST(NULL AS FLOAT(53)) AS [Decision] 
FROM [OVR_Scores]), 
score_class_union AS 
(SELECT scu.[KEY] AS [KEY], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], (SELECT max(score_class_union.[LogProba]) AS max_1 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_LogProba], (SELECT max(score_class_union.[Proba]) AS max_2 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Proba], (SELECT max(score_class_union.[Score]) AS max_3 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Score] 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[max_LogProba] AS [max_LogProba], score_max.[max_Proba] AS [max_Proba], score_max.[max_Score] AS [max_Score], (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.[max_LogProba] = score_class_union.[LogProba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_LogProba], (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.[max_Proba] = score_class_union.[Proba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Proba], (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.[max_Score] = score_class_union.[Score] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Score] 
FROM score_max)
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Score_3] AS [Score_3], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], arg_max_cte.[Proba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[Proba_3] IS NULL OR arg_max_cte.[Proba_3] > 0.0) THEN log(arg_max_cte.[Proba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision] 
FROM arg_max_cte