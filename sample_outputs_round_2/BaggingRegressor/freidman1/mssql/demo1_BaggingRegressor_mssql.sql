-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.44362396001815796) THEN CASE WHEN ([ADS].[Feature_0] <= 0.41764819622039795) THEN CASE WHEN ([ADS].[Feature_4] <= 0.39405009150505066) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 0.10554825514554977) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.3127939701080322) THEN CASE WHEN ([ADS].[Feature_1] <= 0.08349291980266571) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.22302359342575073) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.44362396001815796 AS threshold, 64 AS count, 0 AS depth, 14.609622357923714 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.41764819622039795 AS threshold, 25 AS count, 1 AS depth, 10.861730111314989 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_4' AS feature, 0.39405009150505066 AS threshold, 13 AS count, 2 AS depth, 7.378755559067844 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 5.887193530414574 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 9.367504930605541 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_5' AS feature, 0.10554825514554977 AS threshold, 12 AS count, 2 AS depth, 14.18638763845999 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 19.589823548169687 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 13.333213547453198 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.3127939701080322 AS threshold, 39 AS count, 1 AS depth, 17.436979666768888 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_1' AS feature, 0.08349291980266571 AS threshold, 13 AS count, 2 AS depth, 13.622743039662272 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 10.835582692152641 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 14.784059851124619 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_0' AS feature, 0.22302359342575073 AS threshold, 26 AS count, 2 AS depth, 19.058030233289198 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 12.697277905429791 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 3 AS depth, 20.40728072707755 AS [Estimator]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].node_id AS node_id, [DT_node_data].feature AS feature, [DT_node_data].threshold AS threshold, [DT_node_data].count AS count, [DT_node_data].depth AS depth, [DT_node_data].[Estimator] AS [Estimator] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].node_id), 
[RF_Tree_0] AS 
(SELECT [DT_Output].[KEY] AS join_key_0, [DT_Output].[Estimator] AS [Estimator_0] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] <= 0.060345061123371124) THEN CASE WHEN ([ADS].[Feature_4] <= 0.34551745653152466) THEN CASE WHEN ([ADS].[Feature_0] <= 0.001945205614902079) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.6007814407348633) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_3] <= 0.7967653274536133) THEN CASE WHEN ([ADS].[Feature_4] <= 0.604088544845581) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.43534767627716064) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.060345061123371124 AS threshold, 64 AS count, 0 AS depth, 14.661645804821976 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_4' AS feature, 0.34551745653152466 AS threshold, 4 AS count, 1 AS depth, 5.801862119335213 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.001945205614902079 AS threshold, 2 AS count, 2 AS depth, 5.215263137589069 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 5.497917362846032 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 4.36730046181818 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_9' AS feature, 0.6007814407348633 AS threshold, 2 AS count, 2 AS depth, 6.388461101081356 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 6.838111420807488 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 6.238577661172646 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_3' AS feature, 0.7967653274536133 AS threshold, 60 AS count, 1 AS depth, 15.432061777473002 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.604088544845581 AS threshold, 46 AS count, 2 AS depth, 14.319799650876691 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, 12.6084794459938 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 3 AS depth, 17.07013569443848 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_1' AS feature, 0.43534767627716064 AS threshold, 14 AS count, 2 AS depth, 19.705489948079865 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 16.694290689364443 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 22.415569280923755 AS [Estimator]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].node_id AS node_id, [DT_node_data_1].feature AS feature, [DT_node_data_1].threshold AS threshold, [DT_node_data_1].count AS count, [DT_node_data_1].depth AS depth, [DT_node_data_1].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].node_id), 
[RF_Tree_1] AS 
(SELECT [DT_Output_1].[KEY] AS join_key_1, [DT_Output_1].[Estimator] AS [Estimator_1] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.42948198318481445) THEN CASE WHEN ([ADS].[Feature_0] <= 0.4138941764831543) THEN CASE WHEN ([ADS].[Feature_3] <= 0.008039407432079315) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.19619408249855042) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.6828919053077698) THEN CASE WHEN ([ADS].[Feature_6] <= 0.2886207103729248) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.8520926237106323) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.42948198318481445 AS threshold, 64 AS count, 0 AS depth, 14.153255557367238 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.4138941764831543 AS threshold, 28 AS count, 1 AS depth, 10.576242041790474 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.008039407432079315 AS threshold, 11 AS count, 2 AS depth, 6.796839656963638 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15.227988669921533 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 6.2698928436537695 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 0.19619408249855042 AS threshold, 17 AS count, 2 AS depth, 13.369713369705966 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 6.155294945132741 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 14.451876133391949 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_0' AS feature, 0.6828919053077698 AS threshold, 36 AS count, 1 AS depth, 16.537931234418412 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_6' AS feature, 0.2886207103729248 AS threshold, 28 AS count, 2 AS depth, 14.948873445758998 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 18.53442291320274 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 13.970996318274338 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_9' AS feature, 0.8520926237106323 AS threshold, 8 AS count, 2 AS depth, 20.24573274129038 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 19.92277476755298 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 22.829396531189595 AS [Estimator]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].node_id AS node_id, [DT_node_data_2].feature AS feature, [DT_node_data_2].threshold AS threshold, [DT_node_data_2].count AS count, [DT_node_data_2].depth AS depth, [DT_node_data_2].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].node_id), 
[RF_Tree_2] AS 
(SELECT [DT_Output_2].[KEY] AS join_key_2, [DT_Output_2].[Estimator] AS [Estimator_2] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.42639899253845215) THEN CASE WHEN ([ADS].[Feature_4] <= 0.9292148351669312) THEN CASE WHEN ([ADS].[Feature_1] <= 0.21441060304641724) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= 0.35903826355934143) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.3127939701080322) THEN CASE WHEN ([ADS].[Feature_9] <= 0.14458578824996948) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.46981680393218994) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.42639899253845215 AS threshold, 62 AS count, 0 AS depth, 14.571115673610725 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_4' AS feature, 0.9292148351669312 AS threshold, 25 AS count, 1 AS depth, 8.969058899433554 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.21441060304641724 AS threshold, 23 AS count, 2 AS depth, 8.285161293438636 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 5.859609079857294 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 9.445208004281886 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_7' AS feature, 0.35903826355934143 AS threshold, 2 AS count, 2 AS depth, 16.71989843404262 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 18.728580828849235 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15.715557236639313 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.3127939701080322 AS threshold, 37 AS count, 1 AS depth, 17.861212509238584 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_9' AS feature, 0.14458578824996948 AS threshold, 11 AS count, 2 AS depth, 13.232951618803403 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 10.732974796802255 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 15.107934235304269 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_0' AS feature, 0.46981680393218994 AS threshold, 26 AS count, 2 AS depth, 20.17534295445617 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 16.693508273151465 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, 22.318010450643683 AS [Estimator]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].node_id AS node_id, [DT_node_data_3].feature AS feature, [DT_node_data_3].threshold AS threshold, [DT_node_data_3].count AS count, [DT_node_data_3].depth AS depth, [DT_node_data_3].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].node_id), 
[RF_Tree_3] AS 
(SELECT [DT_Output_3].[KEY] AS join_key_3, [DT_Output_3].[Estimator] AS [Estimator_3] 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.22136607766151428) THEN CASE WHEN ([ADS].[Feature_4] <= 0.6770554780960083) THEN CASE WHEN ([ADS].[Feature_9] <= 0.8359124064445496) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.951988935470581) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.4463324546813965) THEN CASE WHEN ([ADS].[Feature_7] <= 0.9079338312149048) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.2909003496170044) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_4] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.22136607766151428 AS threshold, 65 AS count, 0 AS depth, 14.328736068477037 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_4' AS feature, 0.6770554780960083 AS threshold, 14 AS count, 1 AS depth, 7.530277784589681 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_9' AS feature, 0.8359124064445496 AS threshold, 10 AS count, 2 AS depth, 6.332966553059708 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 6.9992210054738075 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 3.4458639259319477 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_4' AS feature, 0.951988935470581 AS threshold, 4 AS count, 2 AS depth, 11.361673725485595 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 10.273202847697167 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15.715557236639313 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_0' AS feature, 0.4463324546813965 AS threshold, 51 AS count, 1 AS depth, 16.135921181915446 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_7' AS feature, 0.9079338312149048 AS threshold, 22 AS count, 2 AS depth, 13.240522522423841 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 12.056146020688702 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 18.14722517246944 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_1' AS feature, 0.2909003496170044 AS threshold, 29 AS count, 2 AS depth, 18.55997587358283 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 14.106615993216863 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, 19.909478867633123 AS [Estimator]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].node_id AS node_id, [DT_node_data_4].feature AS feature, [DT_node_data_4].threshold AS threshold, [DT_node_data_4].count AS count, [DT_node_data_4].depth AS depth, [DT_node_data_4].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].node_id), 
[RF_Tree_4] AS 
(SELECT [DT_Output_4].[KEY] AS join_key_4, [DT_Output_4].[Estimator] AS [Estimator_4] 
FROM [DT_Output_4]), 
[DT_node_lookup_5] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.48432642221450806) THEN CASE WHEN ([ADS].[Feature_0] <= 0.32571449875831604) THEN CASE WHEN ([ADS].[Feature_0] <= 0.016482437029480934) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.19619408249855042) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.4253922402858734) THEN CASE WHEN ([ADS].[Feature_5] <= 0.1540510058403015) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.46981680393218994) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_5] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.48432642221450806 AS threshold, 63 AS count, 0 AS depth, 15.179109747951522 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.32571449875831604 AS threshold, 29 AS count, 1 AS depth, 11.179551301737332 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.016482437029480934 AS threshold, 10 AS count, 2 AS depth, 6.512649491411247 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5.281526175057622 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 7.196606889385484 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 0.19619408249855042 AS threshold, 19 AS count, 2 AS depth, 13.513002206900373 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 7.624418047331492 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 15.868435870727925 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_4' AS feature, 0.4253922402858734 AS threshold, 34 AS count, 1 AS depth, 18.07534172624456 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_5' AS feature, 0.1540510058403015 AS threshold, 14 AS count, 2 AS depth, 15.251163834008535 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 19.48698958237979 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 14.0053327315464 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_0' AS feature, 0.46981680393218994 AS threshold, 20 AS count, 2 AS depth, 19.80122821594436 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 16.492976227341682 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 13 AS count, 3 AS depth, 21.45535421024569 AS [Estimator]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].node_id AS node_id, [DT_node_data_5].feature AS feature, [DT_node_data_5].threshold AS threshold, [DT_node_data_5].count AS count, [DT_node_data_5].depth AS depth, [DT_node_data_5].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].node_id), 
[RF_Tree_5] AS 
(SELECT [DT_Output_5].[KEY] AS join_key_5, [DT_Output_5].[Estimator] AS [Estimator_5] 
FROM [DT_Output_5]), 
[DT_node_lookup_6] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.6411193013191223) THEN CASE WHEN ([ADS].[Feature_7] <= 0.5714396238327026) THEN CASE WHEN ([ADS].[Feature_1] <= 0.1351473033428192) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.7638086080551147) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.42152515053749084) THEN CASE WHEN ([ADS].[Feature_4] <= 0.6746648550033569) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.6615452766418457) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_6] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.6411193013191223 AS threshold, 58 AS count, 0 AS depth, 14.475315851950603 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_7' AS feature, 0.5714396238327026 AS threshold, 34 AS count, 1 AS depth, 10.825924361566546 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.1351473033428192 AS threshold, 21 AS count, 2 AS depth, 12.57079264079522 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 6.1164812672472735 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 13.461042485422523 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_9' AS feature, 0.7638086080551147 AS threshold, 13 AS count, 2 AS depth, 7.795363666064105 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, 8.880101907481727 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, 5.445097476325927 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.42152515053749084 AS threshold, 24 AS count, 1 AS depth, 18.428823299866668 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_4' AS feature, 0.6746648550033569 AS threshold, 10 AS count, 2 AS depth, 14.751998370503847 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, 13.363317454824989 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 19.195777300676195 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_1' AS feature, 0.6615452766418457 AS threshold, 14 AS count, 2 AS depth, 21.28857602270442 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 23.331184445871394 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, 19.088843874678453 AS [Estimator]) AS [Values]), 
[DT_Output_6] AS 
(SELECT [DT_node_lookup_6].[KEY] AS [KEY], [DT_node_lookup_6].node_id_2 AS node_id_2, [DT_node_data_6].node_id AS node_id, [DT_node_data_6].feature AS feature, [DT_node_data_6].threshold AS threshold, [DT_node_data_6].count AS count, [DT_node_data_6].depth AS depth, [DT_node_data_6].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_6] LEFT OUTER JOIN [DT_node_data_6] ON [DT_node_lookup_6].node_id_2 = [DT_node_data_6].node_id), 
[RF_Tree_6] AS 
(SELECT [DT_Output_6].[KEY] AS join_key_6, [DT_Output_6].[Estimator] AS [Estimator_6] 
FROM [DT_Output_6]), 
[DT_node_lookup_7] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.6870614290237427) THEN CASE WHEN ([ADS].[Feature_4] <= 0.4538566768169403) THEN CASE WHEN ([ADS].[Feature_0] <= 0.3977736234664917) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.09805239737033844) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.39990270137786865) THEN CASE WHEN ([ADS].[Feature_3] <= 0.8584316968917847) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.6475018858909607) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_7] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.6870614290237427 AS threshold, 64 AS count, 0 AS depth, 14.492815883583434 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_4' AS feature, 0.4538566768169403 AS threshold, 49 AS count, 1 AS depth, 12.817074882346487 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.3977736234664917 AS threshold, 28 AS count, 2 AS depth, 11.20777473416406 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 8.918684853784885 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 12.947483043252234 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 0.09805239737033844 AS threshold, 21 AS count, 2 AS depth, 15.02986258609733 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 8.021332838540616 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 16.3277384652745 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.39990270137786865 AS threshold, 15 AS count, 1 AS depth, 19.799329054167075 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_3' AS feature, 0.8584316968917847 AS threshold, 4 AS count, 2 AS depth, 13.06258815448788 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 11.713183683895465 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, 15.086694860376504 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_1' AS feature, 0.6475018858909607 AS threshold, 11 AS count, 2 AS depth, 21.572155606714233 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 23.51088484223036 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 19.827299294749714 AS [Estimator]) AS [Values]), 
[DT_Output_7] AS 
(SELECT [DT_node_lookup_7].[KEY] AS [KEY], [DT_node_lookup_7].node_id_2 AS node_id_2, [DT_node_data_7].node_id AS node_id, [DT_node_data_7].feature AS feature, [DT_node_data_7].threshold AS threshold, [DT_node_data_7].count AS count, [DT_node_data_7].depth AS depth, [DT_node_data_7].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_7] LEFT OUTER JOIN [DT_node_data_7] ON [DT_node_lookup_7].node_id_2 = [DT_node_data_7].node_id), 
[RF_Tree_7] AS 
(SELECT [DT_Output_7].[KEY] AS join_key_7, [DT_Output_7].[Estimator] AS [Estimator_7] 
FROM [DT_Output_7]), 
[DT_node_lookup_8] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.4927043914794922) THEN CASE WHEN ([ADS].[Feature_3] <= 0.16743269562721252) THEN CASE WHEN ([ADS].[Feature_2] <= 0.9696260690689087) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.0718214362859726) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.4382513761520386) THEN CASE WHEN ([ADS].[Feature_3] <= 0.9358811378479004) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.4386520981788635) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_8] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4927043914794922 AS threshold, 65 AS count, 0 AS depth, 14.096627161858153 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.16743269562721252 AS threshold, 32 AS count, 1 AS depth, 10.953369417301136 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 0.9696260690689087 AS threshold, 11 AS count, 2 AS depth, 7.993188372680011 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 3 AS depth, 6.546228313231706 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, 15.227988669921535 AS [Estimator] UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 0.0718214362859726 AS threshold, 21 AS count, 2 AS depth, 12.393457493062765 AS [Estimator] UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 5.880412752530789 AS [Estimator] UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, 13.182917461612098 AS [Estimator] UNION ALL SELECT 8 AS node_id, 'Feature_4' AS feature, 0.4382513761520386 AS threshold, 33 AS count, 1 AS depth, 17.938386627427843 AS [Estimator] UNION ALL SELECT 9 AS node_id, 'Feature_3' AS feature, 0.9358811378479004 AS threshold, 14 AS count, 2 AS depth, 13.335287679476634 AS [Estimator] UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, 12.089498406994903 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 18.733707860230798 AS [Estimator] UNION ALL SELECT 12 AS node_id, 'Feature_0' AS feature, 0.4386520981788635 AS threshold, 19 AS count, 2 AS depth, 20.47802742629747 AS [Estimator] UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 5 AS count, 3 AS depth, 15.843331844510422 AS [Estimator] UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, 21.952703293229707 AS [Estimator]) AS [Values]), 
[DT_Output_8] AS 
(SELECT [DT_node_lookup_8].[KEY] AS [KEY], [DT_node_lookup_8].node_id_2 AS node_id_2, [DT_node_data_8].node_id AS node_id, [DT_node_data_8].feature AS feature, [DT_node_data_8].threshold AS threshold, [DT_node_data_8].count AS count, [DT_node_data_8].depth AS depth, [DT_node_data_8].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_8] LEFT OUTER JOIN [DT_node_data_8] ON [DT_node_lookup_8].node_id_2 = [DT_node_data_8].node_id), 
[RF_Tree_8] AS 
(SELECT [DT_Output_8].[KEY] AS join_key_8, [DT_Output_8].[Estimator] AS [Estimator_8] 
FROM [DT_Output_8]), 
[DT_node_lookup_9] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_3] <= 0.290732741355896) THEN CASE WHEN ([ADS].[Feature_0] <= 0.9528290629386902) THEN CASE WHEN ([ADS].[Feature_1] <= 0.4904026687145233) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.4485704302787781) THEN CASE WHEN ([ADS].[Feature_7] <= 0.08170557022094727) THEN 8 ELSE 9 END ELSE CASE WHEN ([ADS].[Feature_1] <= 0.30333471298217773) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [INPUT_DATA] AS [ADS]), 
[DT_node_data_9] AS 
(SELECT [Values].node_id AS node_id, [Values].feature AS feature, [Values].threshold AS threshold, [Values].count AS count, [Values].depth AS depth, [Values].[Estimator] AS [Estimator] 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.290732741355896 AS threshold, 61 AS count, 0 AS depth, 14.579670258703322 AS [Estimator] UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.9528290629386902 AS threshold, 19 AS count, 1 AS depth, 8.669136152145564 AS [Estimator] UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.4904026687145233 AS threshold, 18 AS count, 2 AS depth, 7.925102769993327 AS [Estimator] UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 5.582595667156556 AS [Estimator] UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, 9.642941312073628 AS [Estimator] UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, 18.341570120124636 AS [Estimator] UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.4485704302787781 AS threshold, 42 AS count, 1 AS depth, 16.878211300142453 AS [Estimator] UNION ALL SELECT 7 AS node_id, 'Feature_7' AS feature, 0.08170557022094727 AS threshold, 19 AS count, 2 AS depth, 14.46539923107511 AS [Estimator] UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, 10.1723073116678 AS [Estimator] UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, 15.296320247734592 AS [Estimator] UNION ALL SELECT 10 AS node_id, 'Feature_1' AS feature, 0.30333471298217773 AS threshold, 23 AS count, 2 AS depth, 19.428898344585072 AS [Estimator] UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, 13.305071880605576 AS [Estimator] UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, 21.548684428270278 AS [Estimator]) AS [Values]), 
[DT_Output_9] AS 
(SELECT [DT_node_lookup_9].[KEY] AS [KEY], [DT_node_lookup_9].node_id_2 AS node_id_2, [DT_node_data_9].node_id AS node_id, [DT_node_data_9].feature AS feature, [DT_node_data_9].threshold AS threshold, [DT_node_data_9].count AS count, [DT_node_data_9].depth AS depth, [DT_node_data_9].[Estimator] AS [Estimator] 
FROM [DT_node_lookup_9] LEFT OUTER JOIN [DT_node_data_9] ON [DT_node_lookup_9].node_id_2 = [DT_node_data_9].node_id), 
[RF_Tree_9] AS 
(SELECT [DT_Output_9].[KEY] AS join_key_9, [DT_Output_9].[Estimator] AS [Estimator_9] 
FROM [DT_Output_9]), 
[RF_Join_CTE] AS 
(SELECT [RF_Tree_0].join_key_0 AS join_key_0, [RF_Tree_0].[Estimator_0] AS [Estimator_0], [RF_Tree_1].join_key_1 AS join_key_1, [RF_Tree_1].[Estimator_1] AS [Estimator_1], [RF_Tree_2].join_key_2 AS join_key_2, [RF_Tree_2].[Estimator_2] AS [Estimator_2], [RF_Tree_3].join_key_3 AS join_key_3, [RF_Tree_3].[Estimator_3] AS [Estimator_3], [RF_Tree_4].join_key_4 AS join_key_4, [RF_Tree_4].[Estimator_4] AS [Estimator_4], [RF_Tree_5].join_key_5 AS join_key_5, [RF_Tree_5].[Estimator_5] AS [Estimator_5], [RF_Tree_6].join_key_6 AS join_key_6, [RF_Tree_6].[Estimator_6] AS [Estimator_6], [RF_Tree_7].join_key_7 AS join_key_7, [RF_Tree_7].[Estimator_7] AS [Estimator_7], [RF_Tree_8].join_key_8 AS join_key_8, [RF_Tree_8].[Estimator_8] AS [Estimator_8], [RF_Tree_9].join_key_9 AS join_key_9, [RF_Tree_9].[Estimator_9] AS [Estimator_9] 
FROM [RF_Tree_0] LEFT OUTER JOIN [RF_Tree_1] ON [RF_Tree_0].join_key_0 = [RF_Tree_1].join_key_1 LEFT OUTER JOIN [RF_Tree_2] ON [RF_Tree_2].join_key_2 = [RF_Tree_1].join_key_1 LEFT OUTER JOIN [RF_Tree_3] ON [RF_Tree_3].join_key_3 = [RF_Tree_2].join_key_2 LEFT OUTER JOIN [RF_Tree_4] ON [RF_Tree_4].join_key_4 = [RF_Tree_3].join_key_3 LEFT OUTER JOIN [RF_Tree_5] ON [RF_Tree_5].join_key_5 = [RF_Tree_4].join_key_4 LEFT OUTER JOIN [RF_Tree_6] ON [RF_Tree_6].join_key_6 = [RF_Tree_5].join_key_5 LEFT OUTER JOIN [RF_Tree_7] ON [RF_Tree_7].join_key_7 = [RF_Tree_6].join_key_6 LEFT OUTER JOIN [RF_Tree_8] ON [RF_Tree_8].join_key_8 = [RF_Tree_7].join_key_7 LEFT OUTER JOIN [RF_Tree_9] ON [RF_Tree_9].join_key_9 = [RF_Tree_8].join_key_8), 
[RF_AVG_Scores] AS 
(SELECT [RF_Join_CTE].join_key_0 AS [KEY], [RF_Join_CTE].[Estimator_0] / 10 + [RF_Join_CTE].[Estimator_1] / 10 + [RF_Join_CTE].[Estimator_2] / 10 + [RF_Join_CTE].[Estimator_3] / 10 + [RF_Join_CTE].[Estimator_4] / 10 + [RF_Join_CTE].[Estimator_5] / 10 + [RF_Join_CTE].[Estimator_6] / 10 + [RF_Join_CTE].[Estimator_7] / 10 + [RF_Join_CTE].[Estimator_8] / 10 + [RF_Join_CTE].[Estimator_9] / 10 AS [Estimator] 
FROM [RF_Join_CTE])
 SELECT [RF_AVG_Scores].[KEY] AS [KEY], [RF_AVG_Scores].[Estimator] AS [Estimator] 
FROM [RF_AVG_Scores]