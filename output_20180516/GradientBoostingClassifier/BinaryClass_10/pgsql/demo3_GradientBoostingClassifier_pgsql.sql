-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingClassifier
-- Dataset : BinaryClass_10
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516110333_CODEGEN_ZFKKP6_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110333_CODEGEN_ZFKKP6_GB_B0" (
	"KEY" BIGINT, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110333_CODEGEN_ZFKKP6_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_5" <= -1.1672475337982178) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -0.15384615384615385 AS "E" UNION ALL SELECT 4 AS nid, -2.0 AS "E" UNION ALL SELECT 5 AS nid, 2.0 AS "E" UNION ALL SELECT 7 AS nid, 2.0 AS "E" UNION ALL SELECT 8 AS nid, -2.0 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", -"DT_Output"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output"), 
"GB_Model_0_1" AS 
(SELECT "DT_Output"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output"."E" AS "Score_1" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_5" <= -1.1672475337982178) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -0.13847003506844247 AS "E" UNION ALL SELECT 4 AS nid, -1.8187307530779822 AS "E" UNION ALL SELECT 5 AS nid, 1.8187307530779817 AS "E" UNION ALL SELECT 7 AS nid, 1.8187307530779817 AS "E" UNION ALL SELECT 8 AS nid, -1.8187307530779822 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", -"DT_Output_1"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_1"), 
"GB_Model_1_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_1"."E" AS "Score_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -1.0882456302642822) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 2.029663056273607 AS "E" UNION ALL SELECT 4 AS nid, -1.1217211227850905 AS "E" UNION ALL SELECT 6 AS nid, -1.9711914921168885 AS "E" UNION ALL SELECT 7 AS nid, -1.6825816841776358 AS "E" UNION ALL SELECT 9 AS nid, 1.682581684177635 AS "E" UNION ALL SELECT 10 AS nid, -1.6825816841776358 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", -"DT_Output_2"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_2"), 
"GB_Model_2_1" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_2"."E" AS "Score_1" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_3" <= 1.745934009552002) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -1.2864660764794682 AS "E" UNION ALL SELECT 4 AS nid, 1.8405198691485003 AS "E" UNION ALL SELECT 5 AS nid, 1.7636078071636292 AS "E" UNION ALL SELECT 7 AS nid, 1.5768740943066493 AS "E" UNION ALL SELECT 8 AS nid, -1.5768740943066488 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", -"DT_Output_3"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_3"), 
"GB_Model_3_1" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_3"."E" AS "Score_1" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_2" <= 1.9229145050048828) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -1.2117249884428376 AS "E" UNION ALL SELECT 4 AS nid, 1.9559132821549832 AS "E" UNION ALL SELECT 5 AS nid, 1.6401442459379127 AS "E" UNION ALL SELECT 7 AS nid, 1.492717814519233 AS "E" UNION ALL SELECT 8 AS nid, -1.492717814519233 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", -"DT_Output_4"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_4"), 
"GB_Model_4_1" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_4"."E" AS "Score_1" 
FROM "DT_Output_4")
 INSERT INTO "TMP_20180516110333_CODEGEN_ZFKKP6_GB_B0" ("KEY", "Score_0", "Score_1") SELECT "GB_B0"."KEY", "GB_B0"."Score_0", "GB_B0"."Score_1" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Score_0" AS "Score_0", "GB_esu_0"."Score_1" AS "Score_1" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Score_0" AS "Score_0", "GB_Model_0_0"."Score_1" AS "Score_1" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_0_1"."KEY" AS "KEY", "GB_Model_0_1"."Score_0" AS "Score_0", "GB_Model_0_1"."Score_1" AS "Score_1" 
FROM "GB_Model_0_1" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Score_0" AS "Score_0", "GB_Model_1_0"."Score_1" AS "Score_1" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_1_1"."KEY" AS "KEY", "GB_Model_1_1"."Score_0" AS "Score_0", "GB_Model_1_1"."Score_1" AS "Score_1" 
FROM "GB_Model_1_1" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Score_0" AS "Score_0", "GB_Model_2_0"."Score_1" AS "Score_1" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_2_1"."KEY" AS "KEY", "GB_Model_2_1"."Score_0" AS "Score_0", "GB_Model_2_1"."Score_1" AS "Score_1" 
FROM "GB_Model_2_1" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Score_0" AS "Score_0", "GB_Model_3_0"."Score_1" AS "Score_1" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_3_1"."KEY" AS "KEY", "GB_Model_3_1"."Score_0" AS "Score_0", "GB_Model_3_1"."Score_1" AS "Score_1" 
FROM "GB_Model_3_1" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Score_0" AS "Score_0", "GB_Model_4_0"."Score_1" AS "Score_1" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_4_1"."KEY" AS "KEY", "GB_Model_4_1"."Score_0" AS "Score_0", "GB_Model_4_1"."Score_1" AS "Score_1" 
FROM "GB_Model_4_1") AS "GB_esu_0") AS "GB_B0"

-- Code For temporary table TMP_20180516110333_CODEGEN_RBLUKL_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110333_CODEGEN_RBLUKL_GB_B1" (
	"KEY" BIGINT, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110333_CODEGEN_RBLUKL_GB_B1 part 2. Populate

WITH "DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -1.0882456302642822) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.885642417488209 AS "E" UNION ALL SELECT 4 AS nid, -0.9536234176150937 AS "E" UNION ALL SELECT 6 AS nid, -1.6211579543283008 AS "E" UNION ALL SELECT 7 AS nid, -1.449351273756259 AS "E" UNION ALL SELECT 9 AS nid, 1.4243950929603062 AS "E" UNION ALL SELECT 10 AS nid, -1.4243950929603058 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", -"DT_Output_5"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_5"), 
"GB_Model_5_1" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_5"."E" AS "Score_1" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_5" <= -1.1672475337982178) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 0.034092464473056215 AS "E" UNION ALL SELECT 4 AS nid, -1.4101642957975853 AS "E" UNION ALL SELECT 5 AS nid, 1.5976716078766435 AS "E" UNION ALL SELECT 7 AS nid, 1.368052405793643 AS "E" UNION ALL SELECT 8 AS nid, -1.3680524057936443 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", -"DT_Output_6"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_6"), 
"GB_Model_6_1" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_6"."E" AS "Score_1" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -1.0882456302642822) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.7325581378799262 AS "E" UNION ALL SELECT 4 AS nid, -0.8446287141773386 AS "E" UNION ALL SELECT 6 AS nid, -1.5300009798940906 AS "E" UNION ALL SELECT 7 AS nid, -1.3375971672397093 AS "E" UNION ALL SELECT 9 AS nid, 1.320993249880287 AS "E" UNION ALL SELECT 10 AS nid, -1.320993249880286 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", -"DT_Output_7"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_7"), 
"GB_Model_7_1" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_7"."E" AS "Score_1" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_3" <= 1.745934009552002) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -0.9991597393140883 AS "E" UNION ALL SELECT 4 AS nid, 1.5478008465502715 AS "E" UNION ALL SELECT 5 AS nid, 1.554317242661278 AS "E" UNION ALL SELECT 7 AS nid, 1.2812716053275388 AS "E" UNION ALL SELECT 8 AS nid, -1.281271605327538 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", -"DT_Output_8"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_8"), 
"GB_Model_8_1" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_8"."E" AS "Score_1" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -0.9849978089332581) THEN CASE WHEN ("ADS"."Feature_7" <= 0.0838359072804451) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.3962254822254181) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.2474463050002376 AS "E" UNION ALL SELECT 4 AS nid, 1.6409435582754206 AS "E" UNION ALL SELECT 6 AS nid, -0.7048073824764006 AS "E" UNION ALL SELECT 7 AS nid, 1.1286418950002148 AS "E" UNION ALL SELECT 9 AS nid, -1.4115632784888261 AS "E" UNION ALL SELECT 10 AS nid, -1.267248164332446 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", -"DT_Output_9"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_9"), 
"GB_Model_9_1" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_9"."E" AS "Score_1" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516110333_CODEGEN_RBLUKL_GB_B1" ("KEY", "Score_0", "Score_1") SELECT "GB_B1"."KEY", "GB_B1"."Score_0", "GB_B1"."Score_1" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Score_0" AS "Score_0", "GB_esu_1"."Score_1" AS "Score_1" 
FROM (SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Score_0" AS "Score_0", "GB_Model_5_0"."Score_1" AS "Score_1" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_5_1"."KEY" AS "KEY", "GB_Model_5_1"."Score_0" AS "Score_0", "GB_Model_5_1"."Score_1" AS "Score_1" 
FROM "GB_Model_5_1" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Score_0" AS "Score_0", "GB_Model_6_0"."Score_1" AS "Score_1" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_6_1"."KEY" AS "KEY", "GB_Model_6_1"."Score_0" AS "Score_0", "GB_Model_6_1"."Score_1" AS "Score_1" 
FROM "GB_Model_6_1" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Score_0" AS "Score_0", "GB_Model_7_0"."Score_1" AS "Score_1" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_7_1"."KEY" AS "KEY", "GB_Model_7_1"."Score_0" AS "Score_0", "GB_Model_7_1"."Score_1" AS "Score_1" 
FROM "GB_Model_7_1" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Score_0" AS "Score_0", "GB_Model_8_0"."Score_1" AS "Score_1" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_8_1"."KEY" AS "KEY", "GB_Model_8_1"."Score_0" AS "Score_0", "GB_Model_8_1"."Score_1" AS "Score_1" 
FROM "GB_Model_8_1" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Score_0" AS "Score_0", "GB_Model_9_0"."Score_1" AS "Score_1" 
FROM "GB_Model_9_0" UNION ALL SELECT "GB_Model_9_1"."KEY" AS "KEY", "GB_Model_9_1"."Score_0" AS "Score_0", "GB_Model_9_1"."Score_1" AS "Score_1" 
FROM "GB_Model_9_1") AS "GB_esu_1") AS "GB_B1"

-- Code For temporary table TMP_20180516110333_CODEGEN_JTY776_GB_B2 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110333_CODEGEN_JTY776_GB_B2" (
	"KEY" BIGINT, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110333_CODEGEN_JTY776_GB_B2 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -0.9849978089332581) THEN CASE WHEN ("ADS"."Feature_0" <= 0.3825899362564087) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.3962254822254181) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.2184263700300324 AS "E" UNION ALL SELECT 4 AS nid, 1.5461569468624359 AS "E" UNION ALL SELECT 6 AS nid, -0.650107306740469 AS "E" UNION ALL SELECT 7 AS nid, 1.08568074504253 AS "E" UNION ALL SELECT 9 AS nid, -1.3573824352603094 AS "E" UNION ALL SELECT 10 AS nid, -1.2354392373628378 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", -"DT_Output_10"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_10"), 
"GB_Model_10_1" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_10"."E" AS "Score_1" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -0.9849978089332581) THEN CASE WHEN ("ADS"."Feature_9" <= -0.06832970678806305) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= -0.11454783380031586) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.4696247823959214 AS "E" UNION ALL SELECT 4 AS nid, 1.193370171985729 AS "E" UNION ALL SELECT 6 AS nid, 0.9559635164394037 AS "E" UNION ALL SELECT 7 AS nid, -0.6719261067130203 AS "E" UNION ALL SELECT 9 AS nid, -1.312020288239965 AS "E" UNION ALL SELECT 10 AS nid, -1.2080771534525385 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", -"DT_Output_11"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_11"), 
"GB_Model_11_1" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_11"."E" AS "Score_1" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -0.9849978089332581) THEN CASE WHEN ("ADS"."Feature_9" <= -0.06832970678806305) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.4073570966720581) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.4067686970730768 AS "E" UNION ALL SELECT 4 AS nid, 1.1716176992600653 AS "E" UNION ALL SELECT 6 AS nid, 0.5662845648276641 AS "E" UNION ALL SELECT 7 AS nid, -1.254792449094061 AS "E" UNION ALL SELECT 9 AS nid, -1.2736544511427008 AS "E" UNION ALL SELECT 10 AS nid, -1.184398877840221 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", -"DT_Output_12"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_12"), 
"GB_Model_12_1" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_12"."E" AS "Score_1" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN CASE WHEN ("ADS"."Feature_5" <= 2.3706862926483154) THEN CASE WHEN ("ADS"."Feature_5" <= -1.1672475337982178) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_6" <= 1.9341034889221191) THEN CASE WHEN ("ADS"."Feature_5" <= 1.6434659957885742) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_4" <= 1.7262625694274902) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 0.0744224226197791 AS "E" UNION ALL SELECT 4 AS nid, -1.2077480105959142 AS "E" UNION ALL SELECT 5 AS nid, 1.5491441975162652 AS "E" UNION ALL SELECT 8 AS nid, 1.1645200827182243 AS "E" UNION ALL SELECT 9 AS nid, 1.2111046798702165 AS "E" UNION ALL SELECT 11 AS nid, -1.3595490765186873 AS "E" UNION ALL SELECT 12 AS nid, -1.251621745056133 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", -"DT_Output_13"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_13"), 
"GB_Model_13_1" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_13"."E" AS "Score_1" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_5" <= -0.9849978089332581) THEN CASE WHEN ("ADS"."Feature_0" <= 0.3825899362564087) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.43705305457115173) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 9 ELSE 10 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.135864157694164 AS "E" UNION ALL SELECT 4 AS nid, 1.3518548370812429 AS "E" UNION ALL SELECT 6 AS nid, -0.4726610334665721 AS "E" UNION ALL SELECT 7 AS nid, 1.1515365924767922 AS "E" UNION ALL SELECT 9 AS nid, -1.2427283654474486 AS "E" UNION ALL SELECT 10 AS nid, -1.1451672515691305 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", -"DT_Output_14"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_14"), 
"GB_Model_14_1" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_14"."E" AS "Score_1" 
FROM "DT_Output_14")
 INSERT INTO "TMP_20180516110333_CODEGEN_JTY776_GB_B2" ("KEY", "Score_0", "Score_1") SELECT "GB_B2"."KEY", "GB_B2"."Score_0", "GB_B2"."Score_1" 
FROM (SELECT "GB_esu_2"."KEY" AS "KEY", "GB_esu_2"."Score_0" AS "Score_0", "GB_esu_2"."Score_1" AS "Score_1" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Score_0" AS "Score_0", "GB_Model_10_0"."Score_1" AS "Score_1" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_10_1"."KEY" AS "KEY", "GB_Model_10_1"."Score_0" AS "Score_0", "GB_Model_10_1"."Score_1" AS "Score_1" 
FROM "GB_Model_10_1" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Score_0" AS "Score_0", "GB_Model_11_0"."Score_1" AS "Score_1" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_11_1"."KEY" AS "KEY", "GB_Model_11_1"."Score_0" AS "Score_0", "GB_Model_11_1"."Score_1" AS "Score_1" 
FROM "GB_Model_11_1" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Score_0" AS "Score_0", "GB_Model_12_0"."Score_1" AS "Score_1" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_12_1"."KEY" AS "KEY", "GB_Model_12_1"."Score_0" AS "Score_0", "GB_Model_12_1"."Score_1" AS "Score_1" 
FROM "GB_Model_12_1" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Score_0" AS "Score_0", "GB_Model_13_0"."Score_1" AS "Score_1" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_13_1"."KEY" AS "KEY", "GB_Model_13_1"."Score_0" AS "Score_0", "GB_Model_13_1"."Score_1" AS "Score_1" 
FROM "GB_Model_13_1" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Score_0" AS "Score_0", "GB_Model_14_0"."Score_1" AS "Score_1" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_14_1"."KEY" AS "KEY", "GB_Model_14_1"."Score_0" AS "Score_0", "GB_Model_14_1"."Score_1" AS "Score_1" 
FROM "GB_Model_14_1") AS "GB_esu_2") AS "GB_B2"

-- Code For temporary table TMP_20180516110333_CODEGEN_Z5HE1T_GB_B3 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110333_CODEGEN_Z5HE1T_GB_B3" (
	"KEY" BIGINT, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110333_CODEGEN_Z5HE1T_GB_B3 part 2. Populate

WITH "DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_7" <= 0.3353678584098816) THEN CASE WHEN ("ADS"."Feature_9" <= -0.8793928623199463) THEN 2 ELSE CASE WHEN ("ADS"."Feature_9" <= 0.03440605849027634) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_5" <= -1.2985916137695312) THEN 7 ELSE 8 END END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 2 AS nid, 1.4931003709313195 AS "E" UNION ALL SELECT 4 AS nid, -0.3736476669355103 AS "E" UNION ALL SELECT 5 AS nid, 0.9204301051861393 AS "E" UNION ALL SELECT 7 AS nid, -1.2143628508478628 AS "E" UNION ALL SELECT 8 AS nid, -1.1294597227644136 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", -"DT_Output_15"."E" AS "Score_0", 0.0 AS "Score_1" 
FROM "DT_Output_15"), 
"GB_Model_15_1" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", 0.0 AS "Score_0", "DT_Output_15"."E" AS "Score_1" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516110333_CODEGEN_Z5HE1T_GB_B3" ("KEY", "Score_0", "Score_1") SELECT "GB_B3"."KEY", "GB_B3"."Score_0", "GB_B3"."Score_1" 
FROM (SELECT "GB_esu_3"."KEY" AS "KEY", "GB_esu_3"."Score_0" AS "Score_0", "GB_esu_3"."Score_1" AS "Score_1" 
FROM (SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Score_0" AS "Score_0", "GB_Model_15_0"."Score_1" AS "Score_1" 
FROM "GB_Model_15_0" UNION ALL SELECT "GB_Model_15_1"."KEY" AS "KEY", "GB_Model_15_1"."Score_0" AS "Score_0", "GB_Model_15_1"."Score_1" AS "Score_1" 
FROM "GB_Model_15_1") AS "GB_esu_3") AS "GB_B3"

-- Code For temporary table TMP_20180516110333_CODEGEN_D06V8Y_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110333_CODEGEN_D06V8Y_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110333_CODEGEN_D06V8Y_GB_sum part 2. Populate

WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Score_0" AS "Score_0", "GB_EnsembleUnion"."Score_1" AS "Score_1" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Score_0" AS "Score_0", "GB_B0"."Score_1" AS "Score_1" 
FROM "TMP_20180516110333_CODEGEN_ZFKKP6_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Score_0" AS "Score_0", "GB_B1"."Score_1" AS "Score_1" 
FROM "TMP_20180516110333_CODEGEN_RBLUKL_GB_B1" AS "GB_B1" UNION ALL SELECT "GB_B2"."KEY" AS "KEY", "GB_B2"."Score_0" AS "Score_0", "GB_B2"."Score_1" AS "Score_1" 
FROM "TMP_20180516110333_CODEGEN_JTY776_GB_B2" AS "GB_B2" UNION ALL SELECT "GB_B3"."KEY" AS "KEY", "GB_B3"."Score_0" AS "Score_0", "GB_B3"."Score_1" AS "Score_1" 
FROM "TMP_20180516110333_CODEGEN_Z5HE1T_GB_B3" AS "GB_B3") AS "GB_EnsembleUnion")
 INSERT INTO "TMP_20180516110333_CODEGEN_D06V8Y_GB_sum" ("KEY", "Score_0", "Score_1") SELECT "GB_sum"."KEY", "GB_sum"."Score_0", "GB_sum"."Score_1" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS FLOAT) AS "Score_0", CAST("T"."Score_1" AS FLOAT) AS "Score_1" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Score_0") AS "Score_0", sum("GB_Union"."Score_1") AS "Score_1" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum"

-- Code For temporary table TMP_20180516110333_CODEGEN_D06V8Y_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180516110333_CODEGEN_D06V8Y_GB_sum_KEY" ON "TMP_20180516110333_CODEGEN_D06V8Y_GB_sum" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "GB_sum"."KEY" AS "KEY", -(0.0 + 0.1 * "GB_sum"."Score_1") AS "Score_0", 0.0 + 0.1 * "GB_sum"."Score_1" AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(0.0 + 0.1 * "GB_sum"."Score_1")), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(0.0 + 0.1 * "GB_sum"."Score_1")), 100.0))) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20180516110333_CODEGEN_D06V8Y_GB_sum" AS "GB_sum"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte