-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.409806) THEN CASE WHEN ("ADS"."Feature_1" < 0.34778) THEN 3 ELSE CASE WHEN ("ADS"."Feature_0" < 0.410616) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_0" < 0.233864) THEN 5 ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.409806 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.34778 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.233864 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.766961 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.410616 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.14823 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.68177 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.879278 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.34564 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, "DT_Output"."Estimator" AS "Estimator_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.564646) THEN CASE WHEN ("ADS"."Feature_1" < 0.34778) THEN 3 ELSE CASE WHEN ("ADS"."Feature_0" < 0.356624) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_0" < 0.255752) THEN 5 ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.564646 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.34778 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.255752 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.720566 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.356624 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.06783 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.58334 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.83564 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.25556 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, "DT_Output_1"."Estimator" AS "Estimator_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.347182) THEN CASE WHEN ("ADS"."Feature_3" < 0.391787) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.564646) THEN CASE WHEN ("ADS"."Feature_0" < 0.441189) THEN 7 ELSE 8 END ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.347182 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.391787 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.564646 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.602135 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.949949 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 0.441189 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.44119 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.781252 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.15076 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, "DT_Output_2"."Estimator" AS "Estimator_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.211237) THEN CASE WHEN ("ADS"."Feature_3" < 0.391787) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.178086) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.172984) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.211237 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.391787 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.178086 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.519026 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.798978 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.698771 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_3' AS feature, 0.172984 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.80394 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.24013 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, "DT_Output_3"."Estimator" AS "Estimator_3" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.391787) THEN CASE WHEN ("ADS"."Feature_1" < 0.191665) THEN 3 ELSE CASE WHEN ("ADS"."Feature_0" < 0.364041) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_0" < 0.233864) THEN 5 ELSE CASE WHEN ("ADS"."Feature_1" < 0.263661) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.391787 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.191665 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.233864 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.438931 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.364041 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.747877 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_1' AS feature, 0.263661 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.531228 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.884122 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.782991 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.25609 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS join_key_4, "DT_Output_4"."Estimator" AS "Estimator_4" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.844413) THEN CASE WHEN ("ADS"."Feature_1" < 0.463055) THEN CASE WHEN ("ADS"."Feature_4" < 0.447737) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.207595) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.844413 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.463055 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.19884 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, 0.447737 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.207595 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.438954 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.633983 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.565401 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.909673 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS join_key_5, "DT_Output_5"."Estimator" AS "Estimator_5" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.564646) THEN CASE WHEN ("ADS"."Feature_1" < 0.191665) THEN 3 ELSE CASE WHEN ("ADS"."Feature_0" < 0.441189) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_1" < 0.347182) THEN 5 ELSE CASE WHEN ("ADS"."Feature_0" < 0.301523) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.564646 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.191665 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.347182 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.385382 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.441189 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.632197 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.301523 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.469263 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.758055 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.721432 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.10468 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS join_key_6, "DT_Output_6"."Estimator" AS "Estimator_6" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.844413) THEN CASE WHEN ("ADS"."Feature_1" < 0.463055) THEN CASE WHEN ("ADS"."Feature_4" < 0.447737) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_4" < 0.64413) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.844413 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.463055 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.00117 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, 0.447737 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_4' AS feature, 0.64413 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.349068 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.523214 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.590866 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.865456 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS join_key_7, "DT_Output_7"."Estimator" AS "Estimator_7" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.391787) THEN CASE WHEN ("ADS"."Feature_1" < 0.157794) THEN 3 ELSE CASE WHEN ("ADS"."Feature_6" < 0.310351) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_4" < 0.525632) THEN CASE WHEN ("ADS"."Feature_0" < 0.315587) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.391787 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.157794 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_4' AS feature, 0.525632 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.240009 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_6' AS feature, 0.310351 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_0' AS feature, 0.315587 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.858102 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.288957 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.564283 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.437694 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.667075 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS join_key_8, "DT_Output_8"."Estimator" AS "Estimator_8" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.844413) THEN CASE WHEN ("ADS"."Feature_1" < 0.463055) THEN CASE WHEN ("ADS"."Feature_4" < 0.447737) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.172984) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.844413 AS threshold, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.463055 AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.83535 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, 0.447737 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_3' AS feature, 0.172984 AS threshold, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.274355 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.424908 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.365219 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.626809 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS join_key_9, "DT_Output_9"."Estimator" AS "Estimator_9" 
FROM "DT_Output_9"), 
"XGB_Join_CTE" AS 
(SELECT "XGB_Tree_0".join_key_0 AS join_key_0, "XGB_Tree_0"."Estimator_0" AS "Estimator_0", "XGB_Tree_1".join_key_1 AS join_key_1, "XGB_Tree_1"."Estimator_1" AS "Estimator_1", "XGB_Tree_2".join_key_2 AS join_key_2, "XGB_Tree_2"."Estimator_2" AS "Estimator_2", "XGB_Tree_3".join_key_3 AS join_key_3, "XGB_Tree_3"."Estimator_3" AS "Estimator_3", "XGB_Tree_4".join_key_4 AS join_key_4, "XGB_Tree_4"."Estimator_4" AS "Estimator_4", "XGB_Tree_5".join_key_5 AS join_key_5, "XGB_Tree_5"."Estimator_5" AS "Estimator_5", "XGB_Tree_6".join_key_6 AS join_key_6, "XGB_Tree_6"."Estimator_6" AS "Estimator_6", "XGB_Tree_7".join_key_7 AS join_key_7, "XGB_Tree_7"."Estimator_7" AS "Estimator_7", "XGB_Tree_8".join_key_8 AS join_key_8, "XGB_Tree_8"."Estimator_8" AS "Estimator_8", "XGB_Tree_9".join_key_9 AS join_key_9, "XGB_Tree_9"."Estimator_9" AS "Estimator_9" 
FROM "XGB_Tree_0" LEFT OUTER JOIN "XGB_Tree_1" ON "XGB_Tree_0".join_key_0 = "XGB_Tree_1".join_key_1 LEFT OUTER JOIN "XGB_Tree_2" ON "XGB_Tree_2".join_key_2 = "XGB_Tree_1".join_key_1 LEFT OUTER JOIN "XGB_Tree_3" ON "XGB_Tree_3".join_key_3 = "XGB_Tree_2".join_key_2 LEFT OUTER JOIN "XGB_Tree_4" ON "XGB_Tree_4".join_key_4 = "XGB_Tree_3".join_key_3 LEFT OUTER JOIN "XGB_Tree_5" ON "XGB_Tree_5".join_key_5 = "XGB_Tree_4".join_key_4 LEFT OUTER JOIN "XGB_Tree_6" ON "XGB_Tree_6".join_key_6 = "XGB_Tree_5".join_key_5 LEFT OUTER JOIN "XGB_Tree_7" ON "XGB_Tree_7".join_key_7 = "XGB_Tree_6".join_key_6 LEFT OUTER JOIN "XGB_Tree_8" ON "XGB_Tree_8".join_key_8 = "XGB_Tree_7".join_key_7 LEFT OUTER JOIN "XGB_Tree_9" ON "XGB_Tree_9".join_key_9 = "XGB_Tree_8".join_key_8), 
"XGB_AVG_Scores" AS 
(SELECT "XGB_Join_CTE".join_key_0 AS "KEY", "XGB_Join_CTE"."Estimator_0" + "XGB_Join_CTE"."Estimator_1" + "XGB_Join_CTE"."Estimator_2" + "XGB_Join_CTE"."Estimator_3" + "XGB_Join_CTE"."Estimator_4" + "XGB_Join_CTE"."Estimator_5" + "XGB_Join_CTE"."Estimator_6" + "XGB_Join_CTE"."Estimator_7" + "XGB_Join_CTE"."Estimator_8" + "XGB_Join_CTE"."Estimator_9" + 0.5 AS "Estimator" 
FROM "XGB_Join_CTE")
 SELECT "XGB_AVG_Scores"."KEY" AS "KEY", "XGB_AVG_Scores"."Estimator" AS "Estimator" 
FROM "XGB_AVG_Scores"