-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.571437811354 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.382666238013 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.572691272422 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.49696190088 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.451024542384 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.481756971335 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.500052942379 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.479198857297 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.507387853051 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.628661567941 ELSE [ADS].[Feature_9] END AS impter_11 
FROM freidman1 AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - 0.571437811354) / 0.271926055138 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.382666238013) / 0.24530412971 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.572691272422) / 0.305022968027 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.49696190088) / 0.312889400468 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - 0.451024542384) / 0.24602253009 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - 0.481756971335) / 0.286861434558 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - 0.500052942379) / 0.284593201265 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.479198857297) / 0.318231552426 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.507387853051) / 0.213964399112 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.628661567941) / 0.260134905409 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
[DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.9624107480049133) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_9 <= 1.2099848985671997) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= -0.01863822713494301) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= -0.45597419142723083) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.24133674800395966) THEN 8 ELSE 9 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.5942299365997314) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'scaler_5' AS feature, -0.9624107480049133 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.3447910280083307e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'scaler_9' AS feature, 1.2099848985671997 AS threshold, 7 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.063242498104496 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'scaler_3' AS feature, -0.01863822713494301 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -7.257944261227441 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -8.552847149924816 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.668138483832692 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1049680806331743 AS [Estimator] UNION ALL SELECT 6 AS node_id, 'scaler_3' AS feature, -0.45597419142723083 AS threshold, 18 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.3579276381517458 AS [Estimator] UNION ALL SELECT 7 AS node_id, 'scaler_4' AS feature, 0.24133674800395966 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.3645814959461566 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.417501055459373 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.6883380635670597 AS [Estimator] UNION ALL SELECT 10 AS node_id, 'scaler_7' AS feature, 1.5942299365997314 AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.219182205200697 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.634880171167518 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.64650457956567 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].parent_id AS parent_id, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[RF_Tree_0_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0_0, [DT_Output].[Estimator] AS [Estimator_0_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.9624107480049133) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= 0.9427720308303833) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.8448602557182312) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= -0.45597419142723083) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 0.24133674800395966) THEN 8 ELSE 9 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= 1.3240382671356201) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'scaler_5' AS feature, -0.9624107480049133 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.415845301584341e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'scaler_3' AS feature, 0.9427720308303833 AS threshold, 7 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.456918248294046 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'scaler_7' AS feature, -0.8448602557182312 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.532149835104698 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.2013246354494225 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -7.697562434932334 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9944712725698572 AS [Estimator] UNION ALL SELECT 6 AS node_id, 'scaler_3' AS feature, -0.45597419142723083 AS threshold, 18 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.12213487433657 AS [Estimator] UNION ALL SELECT 7 AS node_id, 'scaler_4' AS feature, 0.24133674800395966 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.2281233463515406 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.975750949913436 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5195042572103545 AS [Estimator] UNION ALL SELECT 10 AS node_id, 'scaler_4' AS feature, 1.3240382671356201 AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.797263984680626 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.271392154050764 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.581854121609103 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].parent_id AS parent_id, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[RF_Tree_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1_0, [DT_Output_1].[Estimator] AS [Estimator_1_0] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.15014678239822388) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -1.1256920099258423) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_8 <= -1.071732759475708) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.8448602557182312) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.0317341089248657) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.2916998863220215) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= 1.1739957332611084) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'scaler_5' AS feature, -0.15014678239822388 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.7053025658242404e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'scaler_4' AS feature, -1.1256920099258423 AS threshold, 9 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.104680047987803 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'scaler_8' AS feature, -1.071732759475708 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.9267692649083026 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.958514384503733 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8950241453128722 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'scaler_7' AS feature, -0.8448602557182312 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.827951280243833 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.7811921719044808 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.646654923579573 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'scaler_2' AS feature, -1.0317341089248657 AS threshold, 16 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.308882526993136 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'scaler_2' AS feature, -1.2916998863220215 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.027876981104706 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.2617476714115101 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.5601356004910976 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'scaler_7' AS feature, 1.1739957332611084 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.309673182708024 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.635669857033203 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.016691473919533 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].parent_id AS parent_id, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[RF_Tree_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2_0, [DT_Output_2].[Estimator] AS [Estimator_2_0] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= -0.15014678239822388) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_4 <= -1.1256920099258423) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_3 <= 0.7875641584396362) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.8448602557182312) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_2 <= -1.0317341089248657) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_7 <= -0.5232309103012085) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_5 <= 1.5642189979553223) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [ADS_sca_2_OUT]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].parent_id AS parent_id, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'scaler_5' AS feature, -0.15014678239822388 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.9184653865522706e-15 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'scaler_4' AS feature, -1.1256920099258423 AS threshold, 9 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.694212043189023 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'scaler_3' AS feature, 0.7875641584396362 AS threshold, 2 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.7340923384174722 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.6626629460533593 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8055217307815852 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'scaler_7' AS feature, -0.8448602557182312 AS threshold, 7 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.24515615221945 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.403072954714032 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.981989431221616 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'scaler_2' AS feature, -1.0317341089248657 AS threshold, 16 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.077994274293822 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'scaler_7' AS feature, -0.5232309103012085 AS threshold, 3 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.8250892829942351 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.2041220404419875 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.1355729042703588 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'scaler_5' AS feature, 1.5642189979553223 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.9787058644372197 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.5667647229689687 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.921999562056239 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].parent_id AS parent_id, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[RF_Tree_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS join_key_3_0, [DT_Output_3].[Estimator] AS [Estimator_3_0] 
FROM [DT_Output_3]), 
[RF_Join_CTE] AS 
(SELECT [RF_Tree_0_0].join_key_0_0 AS join_key_0_0, [RF_Tree_0_0].[Estimator_0_0] AS [Estimator_0_0], [RF_Tree_1_0].join_key_1_0 AS join_key_1_0, [RF_Tree_1_0].[Estimator_1_0] AS [Estimator_1_0], [RF_Tree_2_0].join_key_2_0 AS join_key_2_0, [RF_Tree_2_0].[Estimator_2_0] AS [Estimator_2_0], [RF_Tree_3_0].join_key_3_0 AS join_key_3_0, [RF_Tree_3_0].[Estimator_3_0] AS [Estimator_3_0] 
FROM [RF_Tree_0_0] LEFT OUTER JOIN [RF_Tree_1_0] ON [RF_Tree_0_0].join_key_0_0 = [RF_Tree_1_0].join_key_1_0 LEFT OUTER JOIN [RF_Tree_2_0] ON [RF_Tree_2_0].join_key_2_0 = [RF_Tree_1_0].join_key_1_0 LEFT OUTER JOIN [RF_Tree_3_0] ON [RF_Tree_3_0].join_key_3_0 = [RF_Tree_2_0].join_key_2_0), 
[RF_AVG_Scores] AS 
(SELECT [RF_Join_CTE].join_key_0_0 AS [KEY], 14.6015539014 + 0.1 * [RF_Join_CTE].[Estimator_0_0] + 0.1 * [RF_Join_CTE].[Estimator_1_0] + 0.1 * [RF_Join_CTE].[Estimator_2_0] + 0.1 * [RF_Join_CTE].[Estimator_3_0] AS [Estimator] 
FROM [RF_Join_CTE])
 SELECT [RF_AVG_Scores].[KEY] AS [KEY], [RF_AVG_Scores].[Estimator] AS [Estimator] 
FROM [RF_AVG_Scores]