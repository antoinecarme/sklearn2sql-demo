-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 5.3641914588043145) THEN CASE WHEN ("ADS"."Feature_1" <= 3.2210245667686928) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_3" <= 1.9216256311307733) THEN 5 ELSE 6 END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 5.3641914588043145 AS threshold, 150 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.3333333333333333 AS "Proba_1", -1.09861228867 AS "LogProba_1", 0.3333333333333333 AS "Proba_2", -1.09861228867 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 3.2210245667686928 AS threshold, 46 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8695652173913043 AS "Proba_0", -0.139761942375 AS "LogProba_0", 0.10869565217391304 AS "Proba_1", -2.21920348405 AS "LogProba_1", 0.021739130434782608 AS "Proba_2", -3.82864139649 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75 AS "Proba_0", -0.287682072452 AS "LogProba_0", 0.20833333333333334 AS "Proba_1", -1.56861591791 AS "LogProba_1", 0.041666666666666664 AS "Proba_2", -3.17805383035 AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_3' AS feature, 1.9216256311307733 AS threshold, 104 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.09615384615384616 AS "Proba_0", -2.34180580615 AS "LogProba_0", 0.4326923076923077 AS "Proba_1", -0.837728409371 AS "LogProba_1", 0.47115384615384615 AS "Proba_2", -0.752570601031 AS "LogProba_2", 2 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 75 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.13333333333333333 AS "Proba_0", -2.01490302054 AS "LogProba_0", 0.6 AS "Proba_1", -0.510825623766 AS "LogProba_1", 0.26666666666666666 AS "Proba_2", -1.32175583998 AS "LogProba_2", 1 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 2 AS "Decision" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"