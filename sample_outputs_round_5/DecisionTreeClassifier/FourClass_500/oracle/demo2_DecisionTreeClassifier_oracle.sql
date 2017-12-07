-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_222" <= 2.6770360469818115) THEN CASE WHEN ("ADS"."Feature_236" <= -0.13991162180900574) THEN CASE WHEN ("ADS"."Feature_187" <= 1.2275336980819702) THEN 3 ELSE CASE WHEN ("ADS"."Feature_358" <= 0.054048292338848114) THEN 5 ELSE CASE WHEN ("ADS"."Feature_15" <= -0.022529616951942444) THEN 7 ELSE 8 END END END ELSE CASE WHEN ("ADS"."Feature_184" <= 4.153774261474609) THEN CASE WHEN ("ADS"."Feature_152" <= -0.5811033248901367) THEN 11 ELSE CASE WHEN ("ADS"."Feature_468" <= 0.5025533437728882) THEN 13 ELSE 14 END END ELSE CASE WHEN ("ADS"."Feature_335" <= 1.5232324600219727) THEN 16 ELSE 17 END END END ELSE CASE WHEN ("ADS"."Feature_88" <= 3.9379897117614746) THEN CASE WHEN ("ADS"."Feature_487" <= 2.167361259460449) THEN 20 ELSE 21 END ELSE CASE WHEN ("ADS"."Feature_431" <= -0.2632221579551697) THEN 23 ELSE CASE WHEN ("ADS"."Feature_61" <= 1.1613352298736572) THEN 25 ELSE 26 END END END END AS node_id_2 
FROM "FourClass_500" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Proba_3" AS "Proba_3", "Values"."LogProba_3" AS "LogProba_3", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_222' AS feature, 2.6770360469818115 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.208955223880597 AS "Proba_0", -1.56563528978 AS "LogProba_0", 0.2835820895522388 AS "Proba_1", -1.26025364022 AS "LogProba_1", 0.2835820895522388 AS "Proba_2", -1.26025364022 AS "LogProba_2", 0.22388059701492538 AS "Proba_3", -1.49664241829 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_236' AS feature, -0.13991162180900574 AS threshold, 47 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2765957446808511 AS "Proba_0", -1.28519824425 AS "LogProba_0", 0.10638297872340426 AS "Proba_1", -2.24070968928 AS "LogProba_1", 0.3404255319148936 AS "Proba_2", -1.07755887947 AS "LogProba_2", 0.2765957446808511 AS "Proba_3", -1.28519824425 AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_187' AS feature, 1.2275336980819702 AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.058823529411764705 AS "Proba_1", -2.83321334406 AS "LogProba_1", 0.7058823529411765 AS "Proba_2", -0.348306694268 AS "LogProba_2", 0.23529411764705882 AS "Proba_3", -1.44691898294 AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_358' AS feature, 0.054048292338848114 AS threshold, 6 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.16666666666666666 AS "Proba_1", -1.79175946923 AS "LogProba_1", 0.16666666666666666 AS "Proba_2", -1.79175946923 AS "LogProba_2", 0.6666666666666666 AS "Proba_3", -0.405465108108 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_15' AS feature, -0.022529616951942444 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 9 AS node_id, 'Feature_184' AS feature, 4.153774261474609 AS threshold, 30 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.43333333333333335 AS "Proba_0", -0.836248024201 AS "LogProba_0", 0.13333333333333333 AS "Proba_1", -2.01490302054 AS "LogProba_1", 0.13333333333333333 AS "Proba_2", -2.01490302054 AS "LogProba_2", 0.3 AS "Proba_3", -1.20397280433 AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 10 AS node_id, 'Feature_152' AS feature, -0.5811033248901367 AS threshold, 20 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2 AS "Proba_0", -1.60943791243 AS "LogProba_0", 0.2 AS "Proba_1", -1.60943791243 AS "LogProba_1", 0.15 AS "Proba_2", -1.89711998489 AS "LogProba_2", 0.45 AS "Proba_3", -0.798507696218 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 12 AS node_id, 'Feature_468' AS feature, 0.5025533437728882 AS threshold, 16 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.25 AS "Proba_0", -1.38629436112 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.1875 AS "Proba_2", -1.67397643357 AS "LogProba_2", 0.5625 AS "Proba_3", -0.575364144904 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.1 AS "Proba_2", -2.30258509299 AS "LogProba_2", 0.9 AS "Proba_3", -0.105360515658 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 6 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6666666666666666 AS "Proba_0", -0.405465108108 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.3333333333333333 AS "Proba_2", -1.09861228867 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 15 AS node_id, 'Feature_335' AS feature, 1.5232324600219727 AS threshold, 10 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.9 AS "Proba_0", -0.105360515658 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.1 AS "Proba_2", -2.30258509299 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 17 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 18 AS node_id, 'Feature_88' AS feature, 3.9379897117614746 AS threshold, 20 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.05 AS "Proba_0", -2.99573227355 AS "LogProba_0", 0.7 AS "Proba_1", -0.356674943939 AS "LogProba_1", 0.15 AS "Proba_2", -1.89711998489 AS "LogProba_2", 0.1 AS "Proba_3", -2.30258509299 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 19 AS node_id, 'Feature_487' AS feature, 2.167361259460449 AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.9333333333333333 AS "Proba_1", -0.068992871487 AS "LogProba_1", 0.06666666666666667 AS "Proba_2", -2.7080502011 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 14 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 21 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 22 AS node_id, 'Feature_431' AS feature, -0.2632221579551697 AS threshold, 5 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2 AS "Proba_0", -1.60943791243 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.4 AS "Proba_2", -0.916290731874 AS "LogProba_2", 0.4 AS "Proba_3", -0.916290731874 AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 24 AS node_id, 'Feature_61' AS feature, 1.1613352298736572 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.6666666666666666 AS "Proba_2", -0.405465108108 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Proba_3" AS "Proba_3", "DT_node_data"."LogProba_3" AS "LogProba_3", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."Proba_3" AS "Proba_3", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."LogProba_3" AS "LogProba_3", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"