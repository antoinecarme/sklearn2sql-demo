-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor
-- Dataset : freidman2
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180417040442_99UKC7_LGBM_B0 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180417040442_99UKC7_LGBM_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180417040442_99UKC7_LGBM_B0 part 2/2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280838) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, 482.8941449244817 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 490.0993488836288 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 517.7970262570815 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280838) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -15.388802726180465 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -8.543858757019043 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 17.768935145753805 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5668879806967247) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 989.364790234492) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -10.726046767601602 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.667014275278364 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 22.666155967712402 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280838) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -14.083060087981048 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -7.920077376365661 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 16.322550692702787 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5668879806967247) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 989.364790234492) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -9.797968453627368 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.5339828502564203 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 20.71672082901001 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 821.2744087124171) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.5668879806967247) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -11.884413646062216 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -4.85117790482261 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 16.544940138714654 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 946.1449433239337) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -12.490155735722295 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -4.6311378457546235 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 16.17902341570173 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 870.9581401280838) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -11.86564800121166 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -6.660443513393402 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 13.744889736175537 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 821.2744087124171) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6584039803950519) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -10.464329446156821 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.3253614552815756 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 17.684536533355715 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 1094.2822956917105) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -11.003009351094564 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.8635490983724594 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 16.98641973223005 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180417040442_99UKC7_LGBM_B0" ("KEY", "Estimator") SELECT "LGBM_B0"."KEY", "LGBM_B0"."Estimator" 
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

-- Code For temporary table TMP_20180417040442_XY8C7Q_LGBM_B1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180417040442_XY8C7Q_LGBM_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180417040442_XY8C7Q_LGBM_B1 part 2/2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5668879806967247) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 989.364790234492) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -7.684462527739696 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.0598479997544061 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 16.097542555332183 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"LGBM_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 821.2744087124171) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6584039803950519) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -9.424456369082133 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.1272746229171753 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 15.827596826553345 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"LGBM_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 1094.2822956917105) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -9.827890057033963 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.7008621197193863 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 15.22764831724621 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"LGBM_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 821.2744087124171) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6110724332062274) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -8.705650010108949 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.914779907685739 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 13.60298085504252 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"LGBM_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.41442794810547895) THEN 2 ELSE CASE WHEN ("ADS"."Feature_1" <= 1094.2822956917105) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -9.089848415939896 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -1.5957981877028944 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 14.118640418279739 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"LGBM_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" <= 736.0386185020224) THEN 2 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.4936393842341704) THEN 6 ELSE 7 END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values".threshold AS FLOAT) AS threshold, CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 1 AS parent_id, -8.770652904333891 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, -4.67874755859375 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 3 AS parent_id, 10.470666643232107 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"LGBM_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180417040442_XY8C7Q_LGBM_B1" ("KEY", "Estimator") SELECT "LGBM_B1"."KEY", "LGBM_B1"."Estimator" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Model_10"."KEY" AS "KEY", "LGBM_Model_10"."Estimator" AS "Estimator" 
FROM "LGBM_Model_10" UNION ALL SELECT "LGBM_Model_11"."KEY" AS "KEY", "LGBM_Model_11"."Estimator" AS "Estimator" 
FROM "LGBM_Model_11" UNION ALL SELECT "LGBM_Model_12"."KEY" AS "KEY", "LGBM_Model_12"."Estimator" AS "Estimator" 
FROM "LGBM_Model_12" UNION ALL SELECT "LGBM_Model_13"."KEY" AS "KEY", "LGBM_Model_13"."Estimator" AS "Estimator" 
FROM "LGBM_Model_13" UNION ALL SELECT "LGBM_Model_14"."KEY" AS "KEY", "LGBM_Model_14"."Estimator" AS "Estimator" 
FROM "LGBM_Model_14" UNION ALL SELECT "LGBM_Model_15"."KEY" AS "KEY", "LGBM_Model_15"."Estimator" AS "Estimator" 
FROM "LGBM_Model_15") AS "LGBM_esu_1") AS "LGBM_B1"

-- Code For temporary table TMP_20180417040442_N246F7_LGBM_Union part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180417040442_N246F7_LGBM_Union" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180417040442_N246F7_LGBM_Union part 2/2. Populate

INSERT INTO "TMP_20180417040442_N246F7_LGBM_Union" ("KEY", "Estimator") SELECT "LGBM_Union"."KEY", "LGBM_Union"."Estimator" 
FROM (SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180417040442_99UKC7_LGBM_B0" AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180417040442_XY8C7Q_LGBM_B1" AS "LGBM_B1") AS "LGBM_EnsembleUnion") AS "LGBM_Union"

-- Code For temporary table TMP_20180417040442_RT512I_LGBM_sum part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180417040442_RT512I_LGBM_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180417040442_RT512I_LGBM_sum part 2/2. Populate

INSERT INTO "TMP_20180417040442_RT512I_LGBM_sum" ("KEY", "Estimator") SELECT "LGBM_sum"."KEY", "LGBM_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Estimator") AS "Estimator" 
FROM "TMP_20180417040442_N246F7_LGBM_Union" AS "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum"

-- Model deployment code

SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180417040442_RT512I_LGBM_sum" AS "LGBM_sum"