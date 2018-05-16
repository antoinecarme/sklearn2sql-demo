-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMClassifier
-- Dataset : BinaryClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516110353_codegen_o2feqj_lgbm_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110353_codegen_o2feqj_lgbm_b0  (
	"KEY" BIGINT, 
	"Score_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110353_codegen_o2feqj_lgbm_b0 part 2. Populate

INSERT INTO tmp_20180516110353_codegen_o2feqj_lgbm_b0 ("KEY", "Score_0") SELECT "U"."KEY", "U"."Score_0" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.082352941176471 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.025 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.1 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"LGBM_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.078370350449718 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.023753777661994 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.09524187224606 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"LGBM_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.074815111530727 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.022576204356707 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.091131780775724 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"LGBM_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.071614314717172 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.021462286643733 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.087549100739152 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"LGBM_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.068710356654058 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.020407578856725 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.084401502427522 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"LGBM_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.0 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.066057124108061 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.019408088601104 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.081617122023786 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"LGBM_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(-0.840828066043025 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.07464273688896 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(0.002336974660619 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.065795510396088 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"LGBM_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(-0.272910352181121 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.055762038239037 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.021135422753326 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.078167065770267 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"LGBM_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(-0.840828066043025 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.070466688260311 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(0.003717985192086 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.062240009896782 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"LGBM_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(-0.272910352181121 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.052258562145673 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.01794797920496 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.075293098483556 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"LGBM_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 SELECT "LGBM_B0"."KEY", "LGBM_B0"."Score_0" 
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
FROM "LGBM_Model_0_9") AS "LGBM_esu_0") AS "LGBM_B0") AS "U"

-- Code For temporary table tmp_20180516110353_codegen_uwj687_lgbm_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110353_codegen_uwj687_lgbm_b1  (
	"KEY" BIGINT, 
	"Score_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110353_codegen_uwj687_lgbm_b1 part 2. Populate

INSERT INTO tmp_20180516110353_codegen_uwj687_lgbm_b1 ("KEY", "Score_0") SELECT "U"."KEY", "U"."Score_0" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.066911648426474 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.008955647153941 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.07346212365109 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"LGBM_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(-0.840828066043025 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.065106732153567 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(0.007014447647001 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.058222007043345 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"LGBM_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(-0.272910352181121 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.047766078132052 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.014691891892223 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.071294359412559 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"LGBM_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(-0.840828066043025 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.062247599688751 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(0.008015897613299 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.05559667965269 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"LGBM_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.060759369714525 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.005361734044879 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.069448206223089 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"LGBM_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= CAST(0.38701399443859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(0.349151056608212 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "BinaryClass_10" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE PRECISION) AS "Score" 
FROM (SELECT 3 AS nid, CAST(0.059360332870445 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(-0.005095999879608 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(-0.06815199813821 AS DOUBLE PRECISION) AS "Score" 
FROM dummy_cte) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"LGBM_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 SELECT "LGBM_B1"."KEY", "LGBM_B1"."Score_0" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_Model_0_10"."KEY" AS "KEY", "LGBM_Model_0_10"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_10" UNION ALL SELECT "LGBM_Model_0_11"."KEY" AS "KEY", "LGBM_Model_0_11"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_11" UNION ALL SELECT "LGBM_Model_0_12"."KEY" AS "KEY", "LGBM_Model_0_12"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_12" UNION ALL SELECT "LGBM_Model_0_13"."KEY" AS "KEY", "LGBM_Model_0_13"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_13" UNION ALL SELECT "LGBM_Model_0_14"."KEY" AS "KEY", "LGBM_Model_0_14"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_14" UNION ALL SELECT "LGBM_Model_0_15"."KEY" AS "KEY", "LGBM_Model_0_15"."Score_0" AS "Score_0" 
FROM "LGBM_Model_0_15") AS "LGBM_esu_1") AS "LGBM_B1") AS "U"

-- Code For temporary table tmp_20180516110353_codegen_6xqfua_lgbm_sum part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110353_codegen_6xqfua_lgbm_sum  (
	"KEY" BIGINT, 
	"Score_0" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110353_codegen_6xqfua_lgbm_sum part 2. Populate

INSERT INTO tmp_20180516110353_codegen_6xqfua_lgbm_sum ("KEY", "Score_0") SELECT "U"."KEY", "U"."Score_0" 
FROM (WITH "LGBM_Union" AS 
(SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Score_0" AS "Score_0" 
FROM tmp_20180516110353_codegen_o2feqj_lgbm_b0 AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Score_0" AS "Score_0" 
FROM tmp_20180516110353_codegen_uwj687_lgbm_b1 AS "LGBM_B1") AS "LGBM_EnsembleUnion")
 SELECT "LGBM_sum"."KEY", "LGBM_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS DOUBLE PRECISION) AS "Score_0" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Score_0") AS "Score_0" 
FROM "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(1.0 AS DOUBLE PRECISION) - CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -"LGBM_sum"."Score_0"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Proba_0", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -"LGBM_sum"."Score_0"), CAST(100.0 AS DOUBLE PRECISION)))) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180516110353_codegen_6xqfua_lgbm_sum AS "LGBM_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max."class") AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte