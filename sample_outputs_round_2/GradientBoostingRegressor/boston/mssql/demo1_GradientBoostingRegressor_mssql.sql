-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_5] <= 6.940999984741211) THEN CASE WHEN ([ADS].[Feature_12] <= 14.399999618530273) THEN CASE WHEN ([ADS].[Feature_7] <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.6069999933242798) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_5] <= 7.437000274658203) THEN CASE WHEN ([ADS].[Feature_0] <= 7.393424987792969) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_11] <= 361.92498779296875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 6.940999984741211 AS threshold, 506 AS count, 0 AS depth, -3.0647421359613017e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_12' AS feature, 14.399999618530273 AS threshold, 430 AS count, 1 AS depth, -2.599085393878127 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.384850025177002 AS threshold, 255 AS count, 2 AS depth, 0.8169975974579501 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 23.04719367588932 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 250 AS count, 3 AS depth, 0.37239367588932276 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_4' AS feature, 0.6069999933242798 AS threshold, 175 AS count, 2 AS depth, -7.576806324110678 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 68 AS count, 3 AS depth, -4.4092769123459705 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 107 AS count, 3 AS depth, -9.58981566990507 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_5' AS feature, 7.437000274658203 AS threshold, 76 AS count, 1 AS depth, 14.705351570626169 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_0' AS feature, 7.393424987792969 AS threshold, 46 AS count, 2 AS depth, 9.580237154150195 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 43 AS count, 3 AS depth, 10.816030885191651 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, -8.132806324110676 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_11' AS feature, 361.92498779296875 AS threshold, 30 AS count, 2 AS depth, 22.563860342555994 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, -0.6328063241106783 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 23.363745400027252 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[RF_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0_0, [DT_Output].[Estimator] AS [Estimator_0_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 9.725000381469727) THEN CASE WHEN ([ADS].[Feature_5] <= 7.437000274658203) THEN CASE WHEN ([ADS].[Feature_7] <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_10] <= 19.650001525878906) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_12] <= 19.229999542236328) THEN CASE WHEN ([ADS].[Feature_12] <= 15.0) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 9.725000381469727 AS threshold, 506 AS count, 0 AS depth, -5.43789870401381e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.437000274658203 AS threshold, 212 AS count, 1 AS depth, 6.605337002464492 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.4849499464035034 AS threshold, 182 AS count, 2 AS depth, 4.346742941062978 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 25.407097564114345 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 177 AS count, 3 AS depth, 3.751817669225369 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_10' AS feature, 19.650001525878906 AS threshold, 30 AS count, 2 AS depth, 20.30747430830039 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 21.02737086002453 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, -0.5695256916996101 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_12' AS feature, 19.229999542236328 AS threshold, 294 AS count, 1 AS depth, -4.763032124226105 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_12' AS feature, 15.0 AS threshold, 212 AS count, 2 AS depth, -3.0696347891331865 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 132 AS count, 3 AS depth, -1.8449492970152008 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 80 AS count, 3 AS depth, -5.090365851127868 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_4' AS feature, 0.6030000448226929 AS threshold, 82 AS count, 2 AS depth, -9.14108377105171 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, -4.987530806789121 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 59 AS count, 3 AS depth, -10.760265435086271 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[RF_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1_0, [DT_Output_1].[Estimator] AS [Estimator_1_0] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_5] <= 6.837500095367432) THEN CASE WHEN ([ADS].[Feature_12] <= 14.399999618530273) THEN CASE WHEN ([ADS].[Feature_7] <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 6.992370128631592) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_5] <= 7.437000274658203) THEN CASE WHEN ([ADS].[Feature_4] <= 0.659000039100647) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_10] <= 17.899999618530273) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 6.837500095367432 AS threshold, 506 AS count, 0 AS depth, -5.093861213378979e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_12' AS feature, 14.399999618530273 AS threshold, 419 AS count, 1 AS depth, -2.3577108161895035 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.384850025177002 AS threshold, 245 AS count, 2 AS depth, 0.3834443836934246 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 18.746805489111544 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 240 AS count, 3 AS depth, 0.000874360663879914 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 6.992370128631592 AS threshold, 174 AS count, 2 AS depth, -6.217383367748795 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 102 AS count, 3 AS depth, -4.229170708482983 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 72 AS count, 3 AS depth, -9.034017968375357 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_5' AS feature, 7.437000274658203 AS threshold, 87 AS count, 1 AS depth, 11.354952091763206 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.659000039100647 AS threshold, 57 AS count, 2 AS depth, 7.711912730864715 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 54 AS count, 3 AS depth, 8.52472286360112 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, -6.918669658390577 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_10' AS feature, 17.899999618530273 AS threshold, 30 AS count, 2 AS depth, 18.27672687747035 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, 19.84808204988414 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 10.419951015401386 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[RF_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2_0, [DT_Output_2].[Estimator] AS [Estimator_2_0] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 7.684999942779541) THEN CASE WHEN ([ADS].[Feature_5] <= 7.437000274658203) THEN CASE WHEN ([ADS].[Feature_12] <= 5.439999580383301) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 2.7422351837158203) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_12] <= 16.084999084472656) THEN CASE WHEN ([ADS].[Feature_7] <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_7] <= 2.003700017929077) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 7.684999942779541 AS threshold, 506 AS count, 0 AS depth, -4.054727568196224e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.437000274658203 AS threshold, 149 AS count, 1 AS depth, 7.252259338099775 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_12' AS feature, 5.439999580383301 AS threshold, 119 AS count, 2 AS depth, 4.933739627606456 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 51 AS count, 3 AS depth, 8.176913471743536 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 68 AS count, 3 AS depth, 2.5013592445036408 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 2.7422351837158203 AS threshold, 30 AS count, 2 AS depth, 16.44905418972332 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 17.069868755716186 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, -1.5545682240697865 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_12' AS feature, 16.084999084472656 AS threshold, 357 AS count, 1 AS depth, -3.02685333719011 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_7' AS feature, 1.2271499633789062 AS threshold, 213 AS count, 2 AS depth, -0.9384557070150775 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 20.7470840029778 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 211 AS count, 3 AS depth, -1.1440058464462892 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_7' AS feature, 2.003700017929077 AS threshold, 144 AS count, 2 AS depth, -6.11594149849068 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 75 AS count, 3 AS depth, -8.021468133922646 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 69 AS count, 3 AS depth, -4.044716894760279 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[RF_Tree_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS join_key_3_0, [DT_Output_3].[Estimator] AS [Estimator_3_0] 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_5] <= 6.837500095367432) THEN CASE WHEN ([ADS].[Feature_12] <= 14.399999618530273) THEN CASE WHEN ([ADS].[Feature_7] <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 6.992370128631592) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_5] <= 7.437000274658203) THEN CASE WHEN ([ADS].[Feature_4] <= 0.659000039100647) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_10] <= 18.299999237060547) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_4] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_5' AS feature, 6.837500095367432 AS threshold, 506 AS count, 0 AS depth, -4.082812261309271e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_12' AS feature, 14.399999618530273 AS threshold, 419 AS count, 1 AS depth, -1.954169691317344 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.384850025177002 AS threshold, 245 AS count, 2 AS depth, 0.26534335988659635 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 15.738045158140462 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 240 AS count, 3 AS depth, -0.05700459424369285 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 6.992370128631592 AS threshold, 174 AS count, 2 AS depth, -5.079346113989556 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 102 AS count, 3 AS depth, -3.378252248430328 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 72 AS count, 3 AS depth, -7.489229090198464 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_5' AS feature, 7.437000274658203 AS threshold, 87 AS count, 1 AS depth, 9.411460927149024 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.659000039100647 AS threshold, 57 AS count, 2 AS depth, 6.573204167358524 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 54 AS count, 3 AS depth, 7.259852343140324 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, -5.786462996713877 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_10' AS feature, 18.299999237060547 AS threshold, 30 AS count, 2 AS depth, 14.80414877075099 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, 15.813532384394355 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5.7196962479606555 AS [Estimator]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].node_id AS node_id, [DT_node_data_4].feature AS feature, [DT_node_data_4].threshold AS threshold, [DT_node_data_4].count AS count, [DT_node_data_4].depth AS depth, [DT_node_data_4].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].node_id), 
[RF_Tree_4_0] AS 
(SELECT [DT_Output_4].[KEY] AS join_key_4_0, [DT_Output_4].[Estimator] AS [Estimator_4_0] 
FROM [DT_Output_4]), 
[DT_node_lookup_5] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_12] <= 7.684999942779541) THEN CASE WHEN ([ADS].[Feature_5] <= 7.140999794006348) THEN CASE WHEN ([ADS].[Feature_7] <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_10] <= 15.049999237060547) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_12] <= 19.829999923706055) THEN CASE WHEN ([ADS].[Feature_7] <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_5] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_12' AS feature, 7.684999942779541 AS threshold, 506 AS count, 0 AS depth, -3.823028850013582e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_5' AS feature, 7.140999794006348 AS threshold, 149 AS count, 1 AS depth, 6.010978269830039 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_7' AS feature, 1.4849499464035034 AS threshold, 102 AS count, 2 AS depth, 3.494200374913203 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 19.386636081029675 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 99 AS count, 3 AS depth, 3.0126114141217935 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_10' AS feature, 15.049999237060547 AS threshold, 47 AS count, 2 AS depth, 11.472921786458073 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 14.854167501226499 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 3 AS depth, 9.374217549705259 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_12' AS feature, 19.829999923706055 AS threshold, 357 AS count, 1 AS depth, -2.508783647632151 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_7' AS feature, 1.2271499633789062 AS threshold, 281 AS count, 2 AS depth, -1.4460335757558775 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 17.098571086865974 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 279 AS count, 3 AS depth, -1.578969809896537 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_4' AS feature, 0.6030000448226929 AS threshold, 76 AS count, 2 AS depth, -6.438162202858893 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, -3.392083929688773 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 55 AS count, 3 AS depth, -7.601210270796577 AS [Estimator]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].node_id AS node_id, [DT_node_data_5].feature AS feature, [DT_node_data_5].threshold AS threshold, [DT_node_data_5].count AS count, [DT_node_data_5].depth AS depth, [DT_node_data_5].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].node_id), 
[RF_Tree_5_0] AS 
(SELECT [DT_Output_5].[KEY] AS join_key_5_0, [DT_Output_5].[Estimator] AS [Estimator_5_0] 
FROM [DT_Output_5]), 
[RF_Join_CTE] AS 
(SELECT [RF_Tree_0_0].join_key_0_0 AS join_key_0_0, [RF_Tree_0_0].[Estimator_0_0] AS [Estimator_0_0], [RF_Tree_1_0].join_key_1_0 AS join_key_1_0, [RF_Tree_1_0].[Estimator_1_0] AS [Estimator_1_0], [RF_Tree_2_0].join_key_2_0 AS join_key_2_0, [RF_Tree_2_0].[Estimator_2_0] AS [Estimator_2_0], [RF_Tree_3_0].join_key_3_0 AS join_key_3_0, [RF_Tree_3_0].[Estimator_3_0] AS [Estimator_3_0], [RF_Tree_4_0].join_key_4_0 AS join_key_4_0, [RF_Tree_4_0].[Estimator_4_0] AS [Estimator_4_0], [RF_Tree_5_0].join_key_5_0 AS join_key_5_0, [RF_Tree_5_0].[Estimator_5_0] AS [Estimator_5_0] 
FROM [RF_Tree_0_0] LEFT OUTER JOIN [RF_Tree_1_0] ON [RF_Tree_0_0].join_key_0_0 = [RF_Tree_1_0].join_key_1_0 LEFT OUTER JOIN [RF_Tree_2_0] ON [RF_Tree_2_0].join_key_2_0 = [RF_Tree_1_0].join_key_1_0 LEFT OUTER JOIN [RF_Tree_3_0] ON [RF_Tree_3_0].join_key_3_0 = [RF_Tree_2_0].join_key_2_0 LEFT OUTER JOIN [RF_Tree_4_0] ON [RF_Tree_4_0].join_key_4_0 = [RF_Tree_3_0].join_key_3_0 LEFT OUTER JOIN [RF_Tree_5_0] ON [RF_Tree_5_0].join_key_5_0 = [RF_Tree_4_0].join_key_4_0), 
[RF_AVG_Scores] AS 
(SELECT [RF_Join_CTE].join_key_0_0 AS [KEY], 22.5328063241 + 0.1 * [RF_Join_CTE].[Estimator_0_0] + 0.1 * [RF_Join_CTE].[Estimator_1_0] + 0.1 * [RF_Join_CTE].[Estimator_2_0] + 0.1 * [RF_Join_CTE].[Estimator_3_0] + 0.1 * [RF_Join_CTE].[Estimator_4_0] + 0.1 * [RF_Join_CTE].[Estimator_5_0] AS [Estimator] 
FROM [RF_Join_CTE])
 SELECT [RF_AVG_Scores].[KEY] AS [KEY], [RF_AVG_Scores].[Estimator] AS [Estimator] 
FROM [RF_AVG_Scores]