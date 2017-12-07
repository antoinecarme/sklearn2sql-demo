-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_174" <= 1.6169886589050293) THEN CASE WHEN ("ADS"."Feature_90" <= 0.6194288730621338) THEN CASE WHEN ("ADS"."Feature_122" <= -0.1213950365781784) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_414" <= -0.9172976016998291) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_389" <= 0.30582451820373535) THEN CASE WHEN ("ADS"."Feature_455" <= 0.1888607293367386) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_174' AS feature, 1.6169886589050293 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.3936369469139113e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_90' AS feature, 0.6194288730621338 AS threshold, 62 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 28.971260472672316 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_122' AS feature, -0.1213950365781784 AS threshold, 49 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -13.831371975580002 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -99.97954998456198 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 62.37663164775021 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_414' AS feature, -0.9172976016998291 AS threshold, 13 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 190.30425970070024 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 329.3056601360319 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 128.52585950721956 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_389' AS feature, 0.30582451820373535 AS threshold, 5 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -359.2436298611366 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_455' AS feature, 0.1888607293367386 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -422.30143404061397 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -371.83944825350403 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -573.6873914019438 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -107.01241314322728 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0_0, "DT_Output"."Estimator" AS "Estimator_0_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_174" <= 1.6169886589050293) THEN CASE WHEN ("ADS"."Feature_90" <= 0.4613170921802521) THEN CASE WHEN ("ADS"."Feature_275" <= -0.06115013733506203) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_245" <= -1.0011792182922363) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_300" <= 0.903911292552948) THEN CASE WHEN ("ADS"."Feature_431" <= 0.5812169909477234) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_174' AS feature, 1.6169886589050293 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.090455420370867e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_90' AS feature, 0.4613170921802521 AS threshold, 62 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 26.07413442540508 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_275' AS feature, -0.06115013733506203 AS threshold, 46 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -18.32611174229183 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -103.53375991819742 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 53.24831272546886 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_245' AS feature, -1.0011792182922363 AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 153.7248421575337 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -36.91640129261509 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 217.27192330758328 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_300' AS feature, 0.903911292552948 AS threshold, 5 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -323.31926687502295 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_431' AS feature, 0.5812169909477234 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -380.0712906365526 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -334.6555034281536 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -516.3186522617494 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -96.31117182890455 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1_0, "DT_Output_1"."Estimator" AS "Estimator_1_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_122" <= 0.38969457149505615) THEN CASE WHEN ("ADS"."Feature_110" <= -0.9006558656692505) THEN CASE WHEN ("ADS"."Feature_435" <= -0.7120752334594727) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_340" <= -0.9448025226593018) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_450" <= 0.6210378408432007) THEN CASE WHEN ("ADS"."Feature_271" <= -0.03574063256382942) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_137" <= -0.11860155314207077) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_122' AS feature, 0.38969457149505615 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.5452277101854334e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_110' AS feature, -0.9006558656692505 AS threshold, 40 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -67.93780891193121 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_435' AS feature, -0.7120752334594727 AS threshold, 9 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -230.38483854777027 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -79.60632605509976 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -305.77409479410545 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_340' AS feature, -0.9448025226593018 AS threshold, 31 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -20.775768049913417 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -171.2327786618703 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.33391449695623 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_450' AS feature, 0.6210378408432007 AS threshold, 27 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 100.64860579545363 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_271' AS feature, -0.03574063256382942 AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 51.77438623107408 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -45.40232656339069 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 12 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 124.65692082692267 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'Feature_137' AS feature, -0.11860155314207077 AS threshold, 6 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 271.7083742707821 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 339.21803336594985 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 204.19871517561435 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2_0, "DT_Output_2"."Estimator" AS "Estimator_2_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_174" <= 1.6169886589050293) THEN CASE WHEN ("ADS"."Feature_122" <= -0.1213950365781784) THEN CASE WHEN ("ADS"."Feature_406" <= -0.8517231941223145) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_450" <= 0.5269297361373901) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_415" <= 0.07620321214199066) THEN CASE WHEN ("ADS"."Feature_126" <= 1.3150900602340698) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_174' AS feature, 1.6169886589050293 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.5452277101854334e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_122' AS feature, -0.1213950365781784 AS threshold, 62 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 21.73571913036903 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_406' AS feature, -0.8517231941223145 AS threshold, 28 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -49.74533640194808 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 7 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 76.15577592576393 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -91.71237384451874 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_450' AS feature, 0.5269297361373901 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 80.60247074521841 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 40.13117170355021 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 212.1341926306401 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_415' AS feature, 0.07620321214199066 AS threshold, 5 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -269.52291721657605 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'Feature_126' AS feature, 1.3150900602340698 AS threshold, 4 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -314.85028499679265 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -275.09725414366886 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -434.1093775561639 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -88.21344609570973 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3_0, "DT_Output_3"."Estimator" AS "Estimator_3_0" 
FROM "DT_Output_3"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0_0".join_key_0_0 AS join_key_0_0, "RF_Tree_0_0"."Estimator_0_0" AS "Estimator_0_0", "RF_Tree_1_0".join_key_1_0 AS join_key_1_0, "RF_Tree_1_0"."Estimator_1_0" AS "Estimator_1_0", "RF_Tree_2_0".join_key_2_0 AS join_key_2_0, "RF_Tree_2_0"."Estimator_2_0" AS "Estimator_2_0", "RF_Tree_3_0".join_key_3_0 AS join_key_3_0, "RF_Tree_3_0"."Estimator_3_0" AS "Estimator_3_0" 
FROM "RF_Tree_0_0" LEFT OUTER JOIN "RF_Tree_1_0" ON "RF_Tree_0_0".join_key_0_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_2_0" ON "RF_Tree_2_0".join_key_2_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_3_0" ON "RF_Tree_3_0".join_key_3_0 = "RF_Tree_2_0".join_key_2_0), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0_0 AS "KEY", -46.2347389557 + 0.1 * "RF_Join_CTE"."Estimator_0_0" + 0.1 * "RF_Join_CTE"."Estimator_1_0" + 0.1 * "RF_Join_CTE"."Estimator_2_0" + 0.1 * "RF_Join_CTE"."Estimator_3_0" AS "Estimator" 
FROM "RF_Join_CTE")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"