-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 0.27288156747817993) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.5872388482093811) THEN CASE WHEN ("ADS"."Feature_1" <= 0.6041109561920166) THEN 4 ELSE 5 END ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.27288156747817993 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.705523258563531 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.833304679438161 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_3' AS feature, 0.5872388482093811 AS threshold, 49 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.16086127570487 AS "Estimator" UNION ALL SELECT 3 AS node_id, 'Feature_1' AS feature, 0.6041109561920166 AS threshold, 30 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.138317966599356 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.822948472560205 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.704234030931676 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.162054573087254 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, "DT_Output"."Estimator" AS "Estimator_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.6710246801376343) THEN CASE WHEN ("ADS"."Feature_0" <= 0.3376411497592926) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.6710246801376343 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.570443330521567 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.3376411497592926 AS threshold, 45 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.48145323100574 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.658312096729047 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.954396431497925 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.444753562725175 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, "DT_Output_1"."Estimator" AS "Estimator_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 0.6942398548126221) THEN CASE WHEN ("ADS"."Feature_3" <= 0.5456032156944275) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_1' AS feature, 0.6942398548126221 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.625030860648232 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_3' AS feature, 0.5456032156944275 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.588365983226188 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.075128440644104 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.956911702050318 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.555841294011675 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, "DT_Output_2"."Estimator" AS "Estimator_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.7026160955429077) THEN CASE WHEN ("ADS"."Feature_1" <= 0.3257482647895813) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.7026160955429077 AS threshold, 61 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.910242051346742 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.3257482647895813 AS threshold, 42 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.470325689239402 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.695265920759857 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.857855573479172 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.612884125337064 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, "DT_Output_3"."Estimator" AS "Estimator_3" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.588091254234314) THEN CASE WHEN ("ADS"."Feature_0" <= 0.5712430477142334) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.588091254234314 AS threshold, 65 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.40760513814373 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.5712430477142334 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.335692126833441 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.619162607833388 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.144558612469883 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.268818344238895 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".count AS count, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"RF_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS join_key_4, "DT_Output_4"."Estimator" AS "Estimator_4" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.588091254234314) THEN CASE WHEN ("ADS"."Feature_0" <= 0.5712430477142334) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.588091254234314 AS threshold, 63 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.951576032804223 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.5712430477142334 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.672439708494464 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.315351384582303 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.310304927009142 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.003373942688253 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".count AS count, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"RF_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS join_key_5, "DT_Output_5"."Estimator" AS "Estimator_5" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 0.3291250467300415) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" <= 0.614842414855957) THEN 3 ELSE 4 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.3291250467300415 AS threshold, 58 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.455123817631511 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.691366044288964 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.614842414855957 AS threshold, 38 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.149039872260804 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.930631577761766 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.098550191669048 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".count AS count, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"RF_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS join_key_6, "DT_Output_6"."Estimator" AS "Estimator_6" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.625738263130188) THEN CASE WHEN ("ADS"."Feature_0" <= 0.31604501605033875) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.625738263130188 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.96518831643209 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.31604501605033875 AS threshold, 43 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.517670481979927 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.034414442122628 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.148130755955684 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.187082851180445 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".count AS count, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"RF_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS join_key_7, "DT_Output_7"."Estimator" AS "Estimator_7" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.41053545475006104) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.5144156813621521) THEN 3 ELSE 4 END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.41053545475006104 AS threshold, 65 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.876274290244291 AS "Estimator" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.126496549393188 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.5144156813621521 AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.218677550969304 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.161802539828708 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.275552562109894 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".count AS count, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"RF_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS join_key_8, "DT_Output_8"."Estimator" AS "Estimator_8" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.4988505244255066) THEN CASE WHEN ("ADS"."Feature_0" <= 0.560158371925354) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4988505244255066 AS threshold, 61 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.136563968083635 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.560158371925354 AS threshold, 37 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.167669858832726 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.060565227562542 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.328326805737996 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.089905131960002 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".count AS count, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"RF_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS join_key_9, "DT_Output_9"."Estimator" AS "Estimator_9" 
FROM "DT_Output_9"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0".join_key_0 AS join_key_0, "RF_Tree_0"."Estimator_0" AS "Estimator_0", "RF_Tree_1".join_key_1 AS join_key_1, "RF_Tree_1"."Estimator_1" AS "Estimator_1", "RF_Tree_2".join_key_2 AS join_key_2, "RF_Tree_2"."Estimator_2" AS "Estimator_2", "RF_Tree_3".join_key_3 AS join_key_3, "RF_Tree_3"."Estimator_3" AS "Estimator_3", "RF_Tree_4".join_key_4 AS join_key_4, "RF_Tree_4"."Estimator_4" AS "Estimator_4", "RF_Tree_5".join_key_5 AS join_key_5, "RF_Tree_5"."Estimator_5" AS "Estimator_5", "RF_Tree_6".join_key_6 AS join_key_6, "RF_Tree_6"."Estimator_6" AS "Estimator_6", "RF_Tree_7".join_key_7 AS join_key_7, "RF_Tree_7"."Estimator_7" AS "Estimator_7", "RF_Tree_8".join_key_8 AS join_key_8, "RF_Tree_8"."Estimator_8" AS "Estimator_8", "RF_Tree_9".join_key_9 AS join_key_9, "RF_Tree_9"."Estimator_9" AS "Estimator_9" 
FROM "RF_Tree_0" LEFT OUTER JOIN "RF_Tree_1" ON "RF_Tree_0".join_key_0 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_2" ON "RF_Tree_2".join_key_2 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_3" ON "RF_Tree_3".join_key_3 = "RF_Tree_2".join_key_2 LEFT OUTER JOIN "RF_Tree_4" ON "RF_Tree_4".join_key_4 = "RF_Tree_3".join_key_3 LEFT OUTER JOIN "RF_Tree_5" ON "RF_Tree_5".join_key_5 = "RF_Tree_4".join_key_4 LEFT OUTER JOIN "RF_Tree_6" ON "RF_Tree_6".join_key_6 = "RF_Tree_5".join_key_5 LEFT OUTER JOIN "RF_Tree_7" ON "RF_Tree_7".join_key_7 = "RF_Tree_6".join_key_6 LEFT OUTER JOIN "RF_Tree_8" ON "RF_Tree_8".join_key_8 = "RF_Tree_7".join_key_7 LEFT OUTER JOIN "RF_Tree_9" ON "RF_Tree_9".join_key_9 = "RF_Tree_8".join_key_8), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0 AS "KEY", "RF_Join_CTE"."Estimator_0" / 10 + "RF_Join_CTE"."Estimator_1" / 10 + "RF_Join_CTE"."Estimator_2" / 10 + "RF_Join_CTE"."Estimator_3" / 10 + "RF_Join_CTE"."Estimator_4" / 10 + "RF_Join_CTE"."Estimator_5" / 10 + "RF_Join_CTE"."Estimator_6" / 10 + "RF_Join_CTE"."Estimator_7" / 10 + "RF_Join_CTE"."Estimator_8" / 10 + "RF_Join_CTE"."Estimator_9" / 10 AS "Estimator" 
FROM "RF_Join_CTE")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"