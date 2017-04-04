-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_6" <= -1.281054973602295) THEN 1 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.5616683959960938) THEN CASE WHEN ("ADS"."Feature_13" <= 0.3327587842941284) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_0" <= 1.2478772401809692) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "INPUT_DATA" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Proba_3" AS "Proba_3", "Values"."LogProba_3" AS "LogProba_3", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'Feature_6' AS feature, -1.281054973602295 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.25 AS "Proba_0", -1.38629436112 AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436112 AS "LogProba_1", 0.25 AS "Proba_2", -1.38629436112 AS "LogProba_2", 0.25 AS "Proba_3", -1.38629436112 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.11764705882352941 AS "Proba_0", -2.1400661635 AS "LogProba_0", 0.058823529411764705 AS "Proba_1", -2.83321334406 AS "LogProba_1", 0.058823529411764705 AS "Proba_2", -2.83321334406 AS "LogProba_2", 0.7647058823529411 AS "Proba_3", -0.268263986595 AS "LogProba_3", 3 AS "Decision" UNION ALL SELECT 2 AS node_id, 'Feature_2' AS feature, 0.5616683959960938 AS threshold, 83 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.27710843373493976 AS "Proba_0", -1.28334639187 AS "LogProba_0", 0.2891566265060241 AS "Proba_1", -1.24078677745 AS "LogProba_1", 0.2891566265060241 AS "Proba_2", -1.24078677745 AS "LogProba_2", 0.14457831325301204 AS "Proba_3", -1.93393395801 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 3 AS node_id, 'Feature_13' AS feature, 0.3327587842941284 AS threshold, 38 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.02631578947368421 AS "Proba_0", -3.63758615973 AS "LogProba_0", 0.3684210526315789 AS "Proba_1", -0.998528830111 AS "LogProba_1", 0.42105263157894735 AS "Proba_2", -0.864997437487 AS "LogProba_2", 0.18421052631578946 AS "Proba_3", -1.69167601067 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.06666666666666667 AS "Proba_0", -2.7080502011 AS "LogProba_0", 0.7333333333333333 AS "Proba_1", -0.310154928304 AS "LogProba_1", 0.13333333333333333 AS "Proba_2", -2.01490302054 AS "LogProba_2", 0.06666666666666667 AS "Proba_3", -2.7080502011 AS "LogProba_3", 1 AS "Decision" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -1.79769313486231e+308 AS "LogProba_0", 0.13043478260869565 AS "Proba_1", -2.03688192726 AS "LogProba_1", 0.6086956521739131 AS "Proba_2", -0.496436886314 AS "LogProba_2", 0.2608695652173913 AS "Proba_3", -1.3437347467 AS "LogProba_3", 2 AS "Decision" UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 1.2478772401809692 AS threshold, 45 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.4888888888888889 AS "Proba_0", -0.715620036412 AS "LogProba_0", 0.2222222222222222 AS "Proba_1", -1.50407739678 AS "LogProba_1", 0.17777777777777778 AS "Proba_2", -1.72722094809 AS "LogProba_2", 0.1111111111111111 AS "Proba_3", -2.19722457734 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 30 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.7 AS "Proba_0", -0.356674943939 AS "LogProba_0", 0.1 AS "Proba_1", -2.30258509299 AS "LogProba_1", 0.03333333333333333 AS "Proba_2", -3.40119738166 AS "LogProba_2", 0.16666666666666666 AS "Proba_3", -1.79175946923 AS "LogProba_3", 0 AS "Decision" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.06666666666666667 AS "Proba_0", -2.7080502011 AS "LogProba_0", 0.4666666666666667 AS "Proba_1", -0.762140052047 AS "LogProba_1", 0.4666666666666667 AS "Proba_2", -0.762140052047 AS "LogProba_2", 0.0 AS "Proba_3", -1.79769313486231e+308 AS "LogProba_3", 1 AS "Decision") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Proba_3" AS "Proba_3", "DT_node_data"."LogProba_3" AS "LogProba_3", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."Proba_3" AS "Proba_3", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."LogProba_3" AS "LogProba_3", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"