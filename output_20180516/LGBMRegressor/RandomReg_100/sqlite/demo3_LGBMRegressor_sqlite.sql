-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor
-- Dataset : RandomReg_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516114238_CODEGEN_3DSFWI_LGBM_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114238_CODEGEN_3DSFWI_LGBM_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180516114238_CODEGEN_3DSFWI_LGBM_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.14891493887121723) THEN 2 ELSE CASE WHEN ("ADS"."Feature_17" <= -0.30501486109338616) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -18.464564772115814 AS "Estimator" UNION ALL SELECT 6 AS nid, -9.511587556451559 AS "Estimator" UNION ALL SELECT 7 AS nid, -2.6155464877684906 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"LGBM_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.14891493887121723) THEN 2 ELSE CASE WHEN ("ADS"."Feature_39" <= 0.4324986908317655) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -6.643302178382874 AS "Estimator" UNION ALL SELECT 6 AS nid, 2.4311114964385827 AS "Estimator" UNION ALL SELECT 7 AS nid, 9.040610008239746 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"LGBM_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.14891493887121723) THEN 2 ELSE CASE WHEN ("ADS"."Feature_17" <= -0.30501486109338616) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -6.311137093438043 AS "Estimator" UNION ALL SELECT 6 AS nid, 1.6578517192602158 AS "Estimator" UNION ALL SELECT 7 AS nid, 8.085162813464802 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"LGBM_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.14891493887121723) THEN 2 ELSE CASE WHEN ("ADS"."Feature_94" <= -0.6387588076921019) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.995580262607999 AS "Estimator" UNION ALL SELECT 6 AS nid, 8.341395540237427 AS "Estimator" UNION ALL SELECT 7 AS nid, 2.042207623521487 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"LGBM_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6753641144036738) THEN 2 ELSE CASE WHEN ("ADS"."Feature_39" <= 0.4324986908317655) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -6.698543651898702 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.8931106705218554 AS "Estimator" UNION ALL SELECT 7 AS nid, 7.997691215168347 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"LGBM_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412266803982) THEN 2 ELSE CASE WHEN ("ADS"."Feature_92" <= -0.3634395345280554) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -7.1020388038070115 AS "Estimator" UNION ALL SELECT 6 AS nid, -0.8222793996334077 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.531966066733003 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"LGBM_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.14891493887121723) THEN 2 ELSE CASE WHEN ("ADS"."Feature_59" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.385779366890589 AS "Estimator" UNION ALL SELECT 6 AS nid, 7.3185147981752054 AS "Estimator" UNION ALL SELECT 7 AS nid, 1.4945787234739825 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"LGBM_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412266803982) THEN 2 ELSE CASE WHEN ("ADS"."Feature_92" <= -0.3634395345280554) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -6.693298738974112 AS "Estimator" UNION ALL SELECT 6 AS nid, -0.7941725503830683 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.16864653583616 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"LGBM_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6753641144036738) THEN 2 ELSE CASE WHEN ("ADS"."Feature_39" <= 0.4324986908317655) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.923788514931997 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.8855262850012098 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.950860058177601 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"LGBM_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412266803982) THEN 2 ELSE CASE WHEN ("ADS"."Feature_92" <= -0.3634395345280554) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -6.224994532267253 AS "Estimator" UNION ALL SELECT 6 AS nid, -0.7592293239775159 AS "Estimator" UNION ALL SELECT 7 AS nid, 5.750583467073739 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"LGBM_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516114238_CODEGEN_3DSFWI_LGBM_B0" ("KEY", "Estimator") SELECT "LGBM_B0"."KEY", "LGBM_B0"."Estimator" 
FROM (SELECT "LGBM_esu_0"."KEY" AS "KEY", "LGBM_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Model_0"."KEY" AS "KEY", "LGBM_Model_0"."Estimator" AS "Estimator" 
FROM "LGBM_Model_0" UNION ALL SELECT "LGBM_Model_1"."KEY" AS "KEY", "LGBM_Model_1"."Estimator" AS "Estimator" 
FROM "LGBM_Model_1" UNION ALL SELECT "LGBM_Model_2"."KEY" AS "KEY", "LGBM_Model_2"."Estimator" AS "Estimator" 
FROM "LGBM_Model_2" UNION ALL SELECT "LGBM_Model_3"."KEY" AS "KEY", "LGBM_Model_3"."Estimator" AS "Estimator" 
FROM "LGBM_Model_3" UNION ALL SELECT "LGBM_Model_4"."KEY" AS "KEY", "LGBM_Model_4"."Estimator" AS "Estimator" 
FROM "LGBM_Model_4" UNION ALL SELECT "LGBM_Model_5"."KEY" AS "KEY", "LGBM_Model_5"."Estimator" AS "Estimator" 
FROM "LGBM_Model_5" UNION ALL SELECT "LGBM_Model_6"."KEY" AS "KEY", "LGBM_Model_6"."Estimator" AS "Estimator" 
FROM "LGBM_Model_6" UNION ALL SELECT "LGBM_Model_7"."KEY" AS "KEY", "LGBM_Model_7"."Estimator" AS "Estimator" 
FROM "LGBM_Model_7" UNION ALL SELECT "LGBM_Model_8"."KEY" AS "KEY", "LGBM_Model_8"."Estimator" AS "Estimator" 
FROM "LGBM_Model_8" UNION ALL SELECT "LGBM_Model_9"."KEY" AS "KEY", "LGBM_Model_9"."Estimator" AS "Estimator" 
FROM "LGBM_Model_9") AS "LGBM_esu_0") AS "LGBM_B0"

-- Code For temporary table TMP_20180516114238_CODEGEN_LDTR4D_LGBM_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114238_CODEGEN_LDTR4D_LGBM_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180516114238_CODEGEN_LDTR4D_LGBM_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.07486956999250431) THEN 2 ELSE CASE WHEN ("ADS"."Feature_59" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -4.456614064558958 AS "Estimator" UNION ALL SELECT 6 AS nid, 7.188853326297942 AS "Estimator" UNION ALL SELECT 7 AS nid, 1.1421011114120485 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"LGBM_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_95" <= -0.2669096788510255) THEN 2 ELSE CASE WHEN ("ADS"."Feature_79" <= 0.3066655448699745) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.520293836593628 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.39359403967857365 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.230758449554443 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"LGBM_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412266803982) THEN 2 ELSE CASE WHEN ("ADS"."Feature_49" <= 0.18340417625784108) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.825511769895201 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.5590839900753716 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.941952195167542 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"LGBM_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_95" <= -0.2669096788510255) THEN 2 ELSE CASE WHEN ("ADS"."Feature_79" <= 0.3066655448699745) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.197728889783224 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.3715192291736603 AS "Estimator" UNION ALL SELECT 7 AS nid, 5.8657554931640625 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"LGBM_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.07486956999250431) THEN 2 ELSE CASE WHEN ("ADS"."Feature_59" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -4.056467017913476 AS "Estimator" UNION ALL SELECT 6 AS nid, 6.61835606779371 AS "Estimator" UNION ALL SELECT 7 AS nid, 0.9608367323875427 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"LGBM_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412266803982) THEN 2 ELSE CASE WHEN ("ADS"."Feature_49" <= 0.18340417625784108) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS nid, -5.452503826000072 AS "Estimator" UNION ALL SELECT 6 AS nid, 0.5112158493562178 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.517374126911164 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"LGBM_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516114238_CODEGEN_LDTR4D_LGBM_B1" ("KEY", "Estimator") SELECT "LGBM_B1"."KEY", "LGBM_B1"."Estimator" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Model_10"."KEY" AS "KEY", "LGBM_Model_10"."Estimator" AS "Estimator" 
FROM "LGBM_Model_10" UNION ALL SELECT "LGBM_Model_11"."KEY" AS "KEY", "LGBM_Model_11"."Estimator" AS "Estimator" 
FROM "LGBM_Model_11" UNION ALL SELECT "LGBM_Model_12"."KEY" AS "KEY", "LGBM_Model_12"."Estimator" AS "Estimator" 
FROM "LGBM_Model_12" UNION ALL SELECT "LGBM_Model_13"."KEY" AS "KEY", "LGBM_Model_13"."Estimator" AS "Estimator" 
FROM "LGBM_Model_13" UNION ALL SELECT "LGBM_Model_14"."KEY" AS "KEY", "LGBM_Model_14"."Estimator" AS "Estimator" 
FROM "LGBM_Model_14" UNION ALL SELECT "LGBM_Model_15"."KEY" AS "KEY", "LGBM_Model_15"."Estimator" AS "Estimator" 
FROM "LGBM_Model_15") AS "LGBM_esu_1") AS "LGBM_B1"

-- Code For temporary table TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum part 2. Populate

WITH "LGBM_Union" AS 
(SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180516114238_CODEGEN_3DSFWI_LGBM_B0" AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180516114238_CODEGEN_LDTR4D_LGBM_B1" AS "LGBM_B1") AS "LGBM_EnsembleUnion")
 INSERT INTO "TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum" ("KEY", "Estimator") SELECT "LGBM_sum"."KEY", "LGBM_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Estimator") AS "Estimator" 
FROM "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum"

-- Code For temporary table TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum_KEY" ON "TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum" ("KEY")

-- Model deployment code

SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180516114238_CODEGEN_9IPR79_LGBM_sum" AS "LGBM_sum"