-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.35326990485191345) THEN CASE WHEN ("ADS"."Feature_1" <= 0.6978154182434082) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.5685478448867798) THEN CASE WHEN ("ADS"."Feature_1" <= 0.5839114189147949) THEN 6 ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.7208253741264343) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.35326990485191345 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.93419394985343 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.6978154182434082 AS threshold, 31 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.50949540666995 AS "Estimator" UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.481304170523817 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.672899391892493 AS "Estimator" UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.5685478448867798 AS threshold, 69 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.472826628674976 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 0.5839114189147949 AS threshold, 38 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.441224828180793 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.846766337954596 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 16.886061179860963 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'Feature_3' AS feature, 0.7208253741264343 AS threshold, 31 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.963177222829145 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.05791178680304 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.811863569103625 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"