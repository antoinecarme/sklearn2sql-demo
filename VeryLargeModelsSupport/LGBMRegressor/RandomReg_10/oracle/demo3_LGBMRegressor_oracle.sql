-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table 9231754_ONMYVF_LGBM_SUM_B0 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "9231754_ONMYVF_LGBM_SUM_B0" (
	"KEY" NUMBER(19), 
	"Estimator" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 9231754_ONMYVF_LGBM_SUM_B0 part 2/2. Populate

INSERT INTO "9231754_ONMYVF_LGBM_SUM_B0" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN CASE WHEN ("ADS"."Feature_6" <= -0.19785263541739564) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 32.746200772783446 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 16.35685888558626 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 26.55858030807355 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN CASE WHEN ("ADS"."Feature_6" <= -0.19785263541739564) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 6.023330282395886 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -9.546544489860535 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.14509103724668768 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN CASE WHEN ("ADS"."Feature_5" <= 0.45500511241557645) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 5.722164007084024 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -7.8801029828878555 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 1.1954605499039526 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.6104019941272986) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -6.086806035262567 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.8521560813441422 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 9.623245660066605 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.15789261826699202) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.18410375978829144) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -4.65805237342914 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -1.8667952474951743 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 8.542741489410401 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.19500725638808467) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.08420545265254369) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -4.193964002723209 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 0.2966920852661133 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 7.866703109741211 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5585674071555415) THEN CASE WHEN ("ADS"."Feature_7" <= 0.16329535342121068) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 5.493027937412262 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -6.561676018238067 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 1.9566135623238303 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.6104019941272986) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.15789261826699202) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -5.50080465608173 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -2.7341144788832894 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.435566604137421 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" <= -0.5162992655484951) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -4.967426937421163 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.6187176295689175 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 7.561222980239176 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= -0.4875688158672278) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.15789261826699202) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -6.317852896735783 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -2.838640162785506 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 7.166515947977702 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 SELECT "LGBM_Sum_B0"."KEY", "LGBM_Sum_B0"."Estimator" 
FROM (SELECT "LGBM_Sum_esu_0"."KEY" AS "KEY", "LGBM_Sum_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Tree_0"."KEY" AS "KEY", "LGBM_Tree_0"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_0" UNION ALL SELECT "LGBM_Tree_1"."KEY" AS "KEY", "LGBM_Tree_1"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_1" UNION ALL SELECT "LGBM_Tree_2"."KEY" AS "KEY", "LGBM_Tree_2"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_2" UNION ALL SELECT "LGBM_Tree_3"."KEY" AS "KEY", "LGBM_Tree_3"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_3" UNION ALL SELECT "LGBM_Tree_4"."KEY" AS "KEY", "LGBM_Tree_4"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_4" UNION ALL SELECT "LGBM_Tree_5"."KEY" AS "KEY", "LGBM_Tree_5"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_5" UNION ALL SELECT "LGBM_Tree_6"."KEY" AS "KEY", "LGBM_Tree_6"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_6" UNION ALL SELECT "LGBM_Tree_7"."KEY" AS "KEY", "LGBM_Tree_7"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_7" UNION ALL SELECT "LGBM_Tree_8"."KEY" AS "KEY", "LGBM_Tree_8"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_8" UNION ALL SELECT "LGBM_Tree_9"."KEY" AS "KEY", "LGBM_Tree_9"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_9") "LGBM_Sum_esu_0") "LGBM_Sum_B0") "U"
-- Code For temporary table 9231754_SCOOEF_LGBM_SUM_B1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "9231754_SCOOEF_LGBM_SUM_B1" (
	"KEY" NUMBER(19), 
	"Estimator" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 9231754_SCOOEF_LGBM_SUM_B1 part 2/2. Populate

INSERT INTO "9231754_SCOOEF_LGBM_SUM_B1" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.19500725638808467) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.08420545265254369) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -3.7725048169111597 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 0.43184781528654553 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.902944211959839 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"LGBM_Tree_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN CASE WHEN ("ADS"."Feature_5" <= 0.637277131244996) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, 4.561142703794665 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -6.227999674862829 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 1.9608283829689026 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"LGBM_Tree_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" <= -0.5162992655484951) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -4.607918028235436 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.47535212093165946 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.888518155162984 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"LGBM_Tree_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= -0.19500725638808467) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.08420545265254369) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -3.5869268933931986 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 0.42814759643515576 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.544952235221863 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"LGBM_Tree_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= -0.4875688158672278) THEN 2 ELSE CASE WHEN ("ADS"."Feature_8" <= -0.15789261826699202) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -5.782482641722475 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -2.475708982245676 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.440923217137655 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"LGBM_Tree_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" <= -0.5162992655484951) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4633442915635686) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RANDOMREG_10" "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 1 AS depth, 1 AS parent_id, -4.313408274650574 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, -0.4734426932675498 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS BINARY_DOUBLE) AS threshold, 2 AS depth, 3 AS parent_id, 6.484483802047643 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"LGBM_Tree_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 SELECT "LGBM_Sum_B1"."KEY", "LGBM_Sum_B1"."Estimator" 
FROM (SELECT "LGBM_Sum_esu_1"."KEY" AS "KEY", "LGBM_Sum_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Tree_10"."KEY" AS "KEY", "LGBM_Tree_10"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_10" UNION ALL SELECT "LGBM_Tree_11"."KEY" AS "KEY", "LGBM_Tree_11"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_11" UNION ALL SELECT "LGBM_Tree_12"."KEY" AS "KEY", "LGBM_Tree_12"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_12" UNION ALL SELECT "LGBM_Tree_13"."KEY" AS "KEY", "LGBM_Tree_13"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_13" UNION ALL SELECT "LGBM_Tree_14"."KEY" AS "KEY", "LGBM_Tree_14"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_14" UNION ALL SELECT "LGBM_Tree_15"."KEY" AS "KEY", "LGBM_Tree_15"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_15") "LGBM_Sum_esu_1") "LGBM_Sum_B1") "U"
-- Code For temporary table 1754_XVIOIR_LGBM_SUM_UNION part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "1754_XVIOIR_LGBM_SUM_UNION" (
	"KEY" NUMBER(19), 
	"Estimator" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 1754_XVIOIR_LGBM_SUM_UNION part 2/2. Populate

INSERT INTO "1754_XVIOIR_LGBM_SUM_UNION" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (SELECT "LGBM_Sum_Union"."KEY", "LGBM_Sum_Union"."Estimator" 
FROM (SELECT "LGBM_Sum_EnsembleUnion"."KEY" AS "KEY", "LGBM_Sum_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Sum_B0"."KEY" AS "KEY", "LGBM_Sum_B0"."Estimator" AS "Estimator" 
FROM "9231754_ONMYVF_LGBM_SUM_B0" "LGBM_Sum_B0" UNION ALL SELECT "LGBM_Sum_B1"."KEY" AS "KEY", "LGBM_Sum_B1"."Estimator" AS "Estimator" 
FROM "9231754_SCOOEF_LGBM_SUM_B1" "LGBM_Sum_B1") "LGBM_Sum_EnsembleUnion") "LGBM_Sum_Union") "U"

-- Model deployment code

WITH "LGBM_Sum_sum" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Sum_Union"."KEY" AS "KEY", sum(CAST("LGBM_Sum_Union"."Estimator" AS BINARY_DOUBLE)) AS "Estimator" 
FROM "1754_XVIOIR_LGBM_SUM_UNION" "LGBM_Sum_Union" GROUP BY "LGBM_Sum_Union"."KEY") "T")
 SELECT "LGBM_Sum_sum"."KEY" AS "KEY", "LGBM_Sum_sum"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_sum"