-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table 2540_QC6LTM_CALPROB_AVG_B0 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "2540_QC6LTM_CALPROB_AVG_B0" (
	"KEY" NUMBER(19), 
	"Proba_1" BINARY_DOUBLE, 
	"Proba_0" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 2540_QC6LTM_CALPROB_AVG_B0 part 2/2. Populate

INSERT INTO "2540_QC6LTM_CALPROB_AVG_B0" ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_18" <= -1.1672475337982178) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3908604085445404) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_88" <= 1.8314564228057861) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_18" <= 1.5096360445022583) THEN 9 ELSE CASE WHEN ("ADS"."Feature_32" <= 0.10546842217445374) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BINARYCLASS_100" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 25 AS count, 3 AS depth, 5 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 3 AS depth, 5 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 21 AS count, 2 AS depth, 8 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS count, 3 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 3 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Decision" AS "Decision", "DT_node_data"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
calibration_base_estimator_0 AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
isotonic_cte_0 AS 
(SELECT calibration_base_estimator_0."KEY" AS "KEY", CASE WHEN (calibration_base_estimator_0."ScoreOrProba_1" < 0.0) THEN 0.18181818181818182 WHEN (calibration_base_estimator_0."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_0."ScoreOrProba_1" - 0.0) * 0.6181818181818182 + 0.18181818181818182 ELSE 0.8 END AS "Proba_1", 1.0 - CASE WHEN (calibration_base_estimator_0."ScoreOrProba_1" < 0.0) THEN 0.18181818181818182 WHEN (calibration_base_estimator_0."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_0."ScoreOrProba_1" - 0.0) * 0.6181818181818182 + 0.18181818181818182 ELSE 0.8 END AS "Proba_0" 
FROM calibration_base_estimator_0), 
"Normalized_Probas" AS 
(SELECT isotonic_cte_0."KEY" AS "KEY", isotonic_cte_0."Proba_1" / (isotonic_cte_0."Proba_0" + isotonic_cte_0."Proba_1") AS "Proba_1", isotonic_cte_0."Proba_0" / (isotonic_cte_0."Proba_0" + isotonic_cte_0."Proba_1") AS "Proba_0" 
FROM isotonic_cte_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_35" <= 0.7510337829589844) THEN CASE WHEN ("ADS"."Feature_17" <= 1.086324691772461) THEN CASE WHEN ("ADS"."Feature_19" <= -2.3696539402008057) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_77" <= 0.4242115020751953) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_32" <= -0.6502364873886108) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS"."Feature_54" <= 1.471251130104065) THEN 13 ELSE 14 END END AS node_id_2 
FROM "BINARYCLASS_100" "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 28 AS count, 4 AS depth, 3 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 4 AS depth, 6 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 3 AS depth, 9 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 3 AS count, 3 AS depth, 9 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 22 AS count, 2 AS depth, 12 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 2 AS depth, 12 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Proba_0" AS "Proba_0", "DT_node_data_1"."LogProba_0" AS "LogProba_0", "DT_node_data_1"."Proba_1" AS "Proba_1", "DT_node_data_1"."LogProba_1" AS "LogProba_1", "DT_node_data_1"."Decision" AS "Decision", "DT_node_data_1"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
calibration_base_estimator_1 AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_1"."Proba_0" AS "Proba_0", "DT_Output_1"."Proba_1" AS "Proba_1", "DT_Output_1"."LogProba_0" AS "LogProba_0", "DT_Output_1"."LogProba_1" AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_1"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_1"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
isotonic_cte_1 AS 
(SELECT calibration_base_estimator_1."KEY" AS "KEY", CASE WHEN (calibration_base_estimator_1."ScoreOrProba_1" < 0.0) THEN 0.09090909090909091 WHEN (calibration_base_estimator_1."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_1."ScoreOrProba_1" - 0.0) * 0.8090909090909091 + 0.09090909090909091 ELSE 0.9 END AS "Proba_1", 1.0 - CASE WHEN (calibration_base_estimator_1."ScoreOrProba_1" < 0.0) THEN 0.09090909090909091 WHEN (calibration_base_estimator_1."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_1."ScoreOrProba_1" - 0.0) * 0.8090909090909091 + 0.09090909090909091 ELSE 0.9 END AS "Proba_0" 
FROM calibration_base_estimator_1), 
"Normalized_Probas_1" AS 
(SELECT isotonic_cte_1."KEY" AS "KEY", isotonic_cte_1."Proba_1" / (isotonic_cte_1."Proba_0" + isotonic_cte_1."Proba_1") AS "Proba_1", isotonic_cte_1."Proba_0" / (isotonic_cte_1."Proba_0" + isotonic_cte_1."Proba_1") AS "Proba_0" 
FROM isotonic_cte_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_17" <= 1.086324691772461) THEN CASE WHEN ("ADS"."Feature_88" <= -2.254085063934326) THEN 3 ELSE CASE WHEN ("ADS"."Feature_19" <= -1.6332900524139404) THEN 5 ELSE 6 END END ELSE 7 END ELSE CASE WHEN ("ADS"."Feature_81" <= -1.8876248598098755) THEN 9 ELSE CASE WHEN ("ADS"."Feature_72" <= -1.9872186183929443) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BINARYCLASS_100" "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 4 AS depth, 4 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 30 AS count, 4 AS depth, 4 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 3 AS count, 2 AS depth, 1 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 2 AS depth, 8 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 3 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 24 AS count, 3 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Proba_0" AS "Proba_0", "DT_node_data_2"."LogProba_0" AS "LogProba_0", "DT_node_data_2"."Proba_1" AS "Proba_1", "DT_node_data_2"."LogProba_1" AS "LogProba_1", "DT_node_data_2"."Decision" AS "Decision", "DT_node_data_2"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
calibration_base_estimator_2 AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_2"."Proba_0" AS "Proba_0", "DT_Output_2"."Proba_1" AS "Proba_1", "DT_Output_2"."LogProba_0" AS "LogProba_0", "DT_Output_2"."LogProba_1" AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_2"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_2"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
isotonic_cte_2 AS 
(SELECT calibration_base_estimator_2."KEY" AS "KEY", CASE WHEN (calibration_base_estimator_2."ScoreOrProba_1" < 0.0) THEN 0.2 WHEN (calibration_base_estimator_2."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_2."ScoreOrProba_1" - 0.0) * 0.5777777777777777 + 0.2 ELSE 0.7777777777777778 END AS "Proba_1", 1.0 - CASE WHEN (calibration_base_estimator_2."ScoreOrProba_1" < 0.0) THEN 0.2 WHEN (calibration_base_estimator_2."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_2."ScoreOrProba_1" - 0.0) * 0.5777777777777777 + 0.2 ELSE 0.7777777777777778 END AS "Proba_0" 
FROM calibration_base_estimator_2), 
"Normalized_Probas_2" AS 
(SELECT isotonic_cte_2."KEY" AS "KEY", isotonic_cte_2."Proba_1" / (isotonic_cte_2."Proba_0" + isotonic_cte_2."Proba_1") AS "Proba_1", isotonic_cte_2."Proba_0" / (isotonic_cte_2."Proba_0" + isotonic_cte_2."Proba_1") AS "Proba_0" 
FROM isotonic_cte_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= -0.20116814970970154) THEN CASE WHEN ("ADS"."Feature_60" <= -0.6577232480049133) THEN CASE WHEN ("ADS"."Feature_52" <= 0.3827822208404541) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_48" <= -1.1015691757202148) THEN CASE WHEN ("ADS"."Feature_77" <= 0.43627169728279114) THEN 7 ELSE 8 END ELSE 9 END END ELSE CASE WHEN ("ADS"."Feature_70" <= -1.5690407752990723) THEN 11 ELSE 12 END END AS node_id_2 
FROM "BINARYCLASS_100" "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Decision" AS "Decision", "Values"."DecisionProba" AS "DecisionProba" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS count, 3 AS depth, 2 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS count, 4 AS depth, 6 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 4 AS depth, 6 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 28 AS count, 3 AS depth, 5 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS count, 2 AS depth, 10 AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_DOUBLE_INFINITY AS "LogProba_1", 0 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 23 AS count, 2 AS depth, 10 AS parent_id, 0.0 AS "Proba_0", -BINARY_DOUBLE_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 1 AS "Decision", 1.0 AS "DecisionProba" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Proba_0" AS "Proba_0", "DT_node_data_3"."LogProba_0" AS "LogProba_0", "DT_node_data_3"."Proba_1" AS "Proba_1", "DT_node_data_3"."LogProba_1" AS "LogProba_1", "DT_node_data_3"."Decision" AS "Decision", "DT_node_data_3"."DecisionProba" AS "DecisionProba" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
calibration_base_estimator_3 AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_3"."Proba_0" AS "Proba_0", "DT_Output_3"."Proba_1" AS "Proba_1", "DT_Output_3"."LogProba_0" AS "LogProba_0", "DT_Output_3"."LogProba_1" AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_3"."Proba_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_3"."Proba_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
isotonic_cte_3 AS 
(SELECT calibration_base_estimator_3."KEY" AS "KEY", CASE WHEN (calibration_base_estimator_3."ScoreOrProba_1" < 0.0) THEN 0.125 WHEN (calibration_base_estimator_3."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_3."ScoreOrProba_1" - 0.0) * 0.6022727272727273 + 0.125 ELSE 0.7272727272727273 END AS "Proba_1", 1.0 - CASE WHEN (calibration_base_estimator_3."ScoreOrProba_1" < 0.0) THEN 0.125 WHEN (calibration_base_estimator_3."ScoreOrProba_1" < 1.0) THEN (calibration_base_estimator_3."ScoreOrProba_1" - 0.0) * 0.6022727272727273 + 0.125 ELSE 0.7272727272727273 END AS "Proba_0" 
FROM calibration_base_estimator_3), 
"Normalized_Probas_3" AS 
(SELECT isotonic_cte_3."KEY" AS "KEY", isotonic_cte_3."Proba_1" / (isotonic_cte_3."Proba_0" + isotonic_cte_3."Proba_1") AS "Proba_1", isotonic_cte_3."Proba_0" / (isotonic_cte_3."Proba_0" + isotonic_cte_3."Proba_1") AS "Proba_0" 
FROM isotonic_cte_3)
 SELECT "CalProb_AVG_B0"."KEY", "CalProb_AVG_B0"."Proba_1", "CalProb_AVG_B0"."Proba_0" 
FROM (SELECT "CalProb_AVG_esu_0"."KEY" AS "KEY", "CalProb_AVG_esu_0"."Proba_1" AS "Proba_1", "CalProb_AVG_esu_0"."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") "CalProb_AVG_esu_0") "CalProb_AVG_B0") "U"
-- Code For temporary table 0_7UVG2Q_CALPROB_AVG_UNION part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "0_7UVG2Q_CALPROB_AVG_UNION" (
	"KEY" NUMBER(19), 
	"Proba_1" BINARY_DOUBLE, 
	"Proba_0" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 0_7UVG2Q_CALPROB_AVG_UNION part 2/2. Populate

INSERT INTO "0_7UVG2Q_CALPROB_AVG_UNION" ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (SELECT "CalProb_AVG_Union"."KEY", "CalProb_AVG_Union"."Proba_1", "CalProb_AVG_Union"."Proba_0" 
FROM (SELECT "CalProb_AVG_EnsembleUnion"."KEY" AS "KEY", "CalProb_AVG_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_AVG_EnsembleUnion"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_AVG_B0"."KEY" AS "KEY", "CalProb_AVG_B0"."Proba_1" AS "Proba_1", "CalProb_AVG_B0"."Proba_0" AS "Proba_0" 
FROM "2540_QC6LTM_CALPROB_AVG_B0" "CalProb_AVG_B0") "CalProb_AVG_EnsembleUnion") "CalProb_AVG_Union") "U"

-- Model deployment code

WITH "CalProb_AVG_avg" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Proba_1" AS "Proba_1", "T"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_AVG_Union"."KEY" AS "KEY", avg(CAST("CalProb_AVG_Union"."Proba_1" AS BINARY_DOUBLE)) AS "Proba_1", avg(CAST("CalProb_AVG_Union"."Proba_0" AS BINARY_DOUBLE)) AS "Proba_0" 
FROM "0_7UVG2Q_CALPROB_AVG_UNION" "CalProb_AVG_Union" GROUP BY "CalProb_AVG_Union"."KEY") "T"), 
orig_cte AS 
(SELECT "CalProb_AVG_avg"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "CalProb_AVG_avg"."Proba_0" AS "Proba_0", "CalProb_AVG_avg"."Proba_1" AS "Proba_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM "CalProb_AVG_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte