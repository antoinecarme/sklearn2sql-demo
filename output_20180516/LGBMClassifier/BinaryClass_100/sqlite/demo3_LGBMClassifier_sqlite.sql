-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMClassifier
-- Dataset : BinaryClass_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516111019_CODEGEN_JOYNB2_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516111019_CODEGEN_JOYNB2_LGBM_B0" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20180516111019_CODEGEN_JOYNB2_LGBM_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.08181818181818183 AS "Score" UNION ALL SELECT 4 AS nid, -0.03043478260869564 AS "Score" UNION ALL SELECT 5 AS nid, -0.09999999999999999 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"LGBM_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07785970941192365 AS "Score" UNION ALL SELECT 4 AS nid, -0.028919854548823704 AS "Score" UNION ALL SELECT 5 AS nid, -0.09524187224606032 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"LGBM_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07432295598691702 AS "Score" UNION ALL SELECT 4 AS nid, -0.0274921214682807 AS "Score" UNION ALL SELECT 5 AS nid, -0.09113178077572359 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"LGBM_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07113620841455619 AS "Score" UNION ALL SELECT 4 AS nid, -0.02614440645343223 AS "Score" UNION ALL SELECT 5 AS nid, -0.08754910073915208 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"LGBM_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= -0.2067798577984605) THEN CASE WHEN ("ADS"."Feature_33" <= 0.20325693874805037) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.06459869004957046 AS "Score" UNION ALL SELECT 4 AS nid, -0.024763552746379 AS "Score" UNION ALL SELECT 5 AS nid, -0.08894052979112571 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"LGBM_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 1.0000000180025095e-35) THEN CASE WHEN ("ADS"."Feature_67" <= -0.37789257329605025) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.0657355331874627 AS "Score" UNION ALL SELECT 4 AS nid, -0.08699895614934877 AS "Score" UNION ALL SELECT 5 AS nid, -0.024924435827053032 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"LGBM_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.0823479843071869 AS "Score" UNION ALL SELECT 4 AS nid, -0.011358622988871296 AS "Score" UNION ALL SELECT 5 AS nid, -0.08068312123593979 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"LGBM_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= -0.2067798577984605) THEN CASE WHEN ("ADS"."Feature_33" <= 0.20325693874805037) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.05794406614976366 AS "Score" UNION ALL SELECT 4 AS nid, -0.01910059898099636 AS "Score" UNION ALL SELECT 5 AS nid, -0.08243592993939444 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"LGBM_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_67" <= -0.37789257329605025) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07811377558076071 AS "Score" UNION ALL SELECT 4 AS nid, -0.07440223840763062 AS "Score" UNION ALL SELECT 5 AS nid, -0.006410822152913691 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"LGBM_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07600128757379401 AS "Score" UNION ALL SELECT 4 AS nid, -0.008448862260883665 AS "Score" UNION ALL SELECT 5 AS nid, -0.07587251310301008 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"LGBM_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516111019_CODEGEN_JOYNB2_LGBM_B0" ("KEY", "Score_0") SELECT "LGBM_B0"."KEY", "LGBM_B0"."Score_0" 
FROM (SELECT "LGBM_esu_0"."KEY" AS "KEY", "LGBM_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Model_0_0"."KEY" AS "KEY", "LGBM_Model_0_0"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_0" UNION ALL SELECT "LGBM_Model_0_1"."KEY" AS "KEY", "LGBM_Model_0_1"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_1" UNION ALL SELECT "LGBM_Model_0_2"."KEY" AS "KEY", "LGBM_Model_0_2"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_2" UNION ALL SELECT "LGBM_Model_0_3"."KEY" AS "KEY", "LGBM_Model_0_3"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_3" UNION ALL SELECT "LGBM_Model_0_4"."KEY" AS "KEY", "LGBM_Model_0_4"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_4" UNION ALL SELECT "LGBM_Model_0_5"."KEY" AS "KEY", "LGBM_Model_0_5"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_5" UNION ALL SELECT "LGBM_Model_0_6"."KEY" AS "KEY", "LGBM_Model_0_6"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_6" UNION ALL SELECT "LGBM_Model_0_7"."KEY" AS "KEY", "LGBM_Model_0_7"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_7" UNION ALL SELECT "LGBM_Model_0_8"."KEY" AS "KEY", "LGBM_Model_0_8"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_8" UNION ALL SELECT "LGBM_Model_0_9"."KEY" AS "KEY", "LGBM_Model_0_9"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_9") AS "LGBM_esu_0") AS "LGBM_B0"

-- Code For temporary table TMP_20180516111019_CODEGEN_8KC9I4_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516111019_CODEGEN_8KC9I4_LGBM_B1" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20180516111019_CODEGEN_8KC9I4_LGBM_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= -0.2067798577984605) THEN CASE WHEN ("ADS"."Feature_33" <= 0.20325693874805037) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.053117278221128106 AS "Score" UNION ALL SELECT 4 AS nid, -0.014687938871197832 AS "Score" UNION ALL SELECT 5 AS nid, -0.07785403281397123 AS "Score") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"LGBM_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_67" <= -0.37789257329605025) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07285174128719608 AS "Score" UNION ALL SELECT 4 AS nid, -0.0703793816513677 AS "Score" UNION ALL SELECT 5 AS nid, -0.0030039051162096785 AS "Score") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"LGBM_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_77" <= 0.3415780695659441) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.07124614965837597 AS "Score" UNION ALL SELECT 4 AS nid, -0.0059567913406479885 AS "Score" UNION ALL SELECT 5 AS nid, -0.07217794523350006 AS "Score") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"LGBM_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= -0.2067798577984605) THEN CASE WHEN ("ADS"."Feature_33" <= 0.20325693874805037) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.049136492733936415 AS "Score" UNION ALL SELECT 4 AS nid, -0.010819434344282008 AS "Score" UNION ALL SELECT 5 AS nid, -0.07430482101567583 AS "Score") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"LGBM_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_67" <= -0.37789257329605025) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.06883643163561767 AS "Score" UNION ALL SELECT 4 AS nid, -0.06715003019821807 AS "Score" UNION ALL SELECT 5 AS nid, -2.985174807817525e-05 AS "Score") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"LGBM_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_57" <= 0.5010480800369204) THEN CASE WHEN ("ADS"."Feature_44" <= -0.14718421059116327) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_100" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 3 AS nid, 0.06758342181262621 AS "Score" UNION ALL SELECT 4 AS nid, 0.010001156735718013 AS "Score" UNION ALL SELECT 5 AS nid, -0.056401505595816886 AS "Score") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"LGBM_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516111019_CODEGEN_8KC9I4_LGBM_B1" ("KEY", "Score_0") SELECT "LGBM_B1"."KEY", "LGBM_B1"."Score_0" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Model_0_10"."KEY" AS "KEY", "LGBM_Model_0_10"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_10" UNION ALL SELECT "LGBM_Model_0_11"."KEY" AS "KEY", "LGBM_Model_0_11"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_11" UNION ALL SELECT "LGBM_Model_0_12"."KEY" AS "KEY", "LGBM_Model_0_12"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_12" UNION ALL SELECT "LGBM_Model_0_13"."KEY" AS "KEY", "LGBM_Model_0_13"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_13" UNION ALL SELECT "LGBM_Model_0_14"."KEY" AS "KEY", "LGBM_Model_0_14"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_14" UNION ALL SELECT "LGBM_Model_0_15"."KEY" AS "KEY", "LGBM_Model_0_15"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_15") AS "LGBM_esu_1") AS "LGBM_B1"

-- Code For temporary table TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum part 2. Populate

WITH "LGBM_Union" AS 
(SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Score_0" AS "Score_0" 
FROM "TMP_20180516111019_CODEGEN_JOYNB2_LGBM_B0" AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Score_0" AS "Score_0" 
FROM "TMP_20180516111019_CODEGEN_8KC9I4_LGBM_B1" AS "LGBM_B1") AS "LGBM_EnsembleUnion")
 INSERT INTO "TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum" ("KEY", "Score_0") SELECT "LGBM_sum"."KEY", "LGBM_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS FLOAT) AS "Score_0" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Score_0") AS "Score_0" 
FROM "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum"

-- Code For temporary table TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum_KEY" ON "TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Score_0" AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -"LGBM_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(min(max(-100.0, -"LGBM_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20180516111019_CODEGEN_HB05FH_LGBM_sum" AS "LGBM_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte