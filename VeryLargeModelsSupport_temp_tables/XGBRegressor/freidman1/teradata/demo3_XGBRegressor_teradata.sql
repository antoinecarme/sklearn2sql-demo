-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : freidman1
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417035324_2kixox_xgb_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417035324_2kixox_xgb_  (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417035324_2kixox_xgb_ part 2/2. Populate

INSERT INTO tmp_20180417035324_2kixox_xgb_ ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.445772290229797) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 1.734698176383972 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.724623799324036 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 1.28542423248291 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data"."threshold" AS "threshold", "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.22746205329895) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" < 0.285542845726013) THEN 3 ELSE 4 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 0.884101510047913 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.987747490406036 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.617801666259766 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1"."threshold" AS "threshold", "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.445772290229797) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.370869100093842) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.572838723659515 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 1.045592784881592 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.019989490509033 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.532330632209778 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2"."threshold" AS "threshold", "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.283626079559326) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.285542845726013) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.585362315177918 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 1.009075045585632 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.812050759792328 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.375001788139343 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3"."threshold" AS "threshold", "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.445772290229797) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN CASE WHEN ("ADS"."Feature_3" < 0.45831972360611) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.370869100093842) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.997104167938232 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.819213688373566 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.261871695518494 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.388358592987061 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.73712807893753 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4"."threshold" AS "threshold", "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.500074326992035) THEN CASE WHEN ("ADS"."Feature_4" < 0.450501918792725) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 0.22746205329895) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.459443390369415 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.792573392391205 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.640691578388214 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.13517439365387 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5"."threshold" AS "threshold", "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.550355672836304) THEN CASE WHEN ("ADS"."Feature_1" < 0.415769696235657) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.323834806680679) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.77407032251358 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.593460261821747 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 1.069392085075378 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.315710753202438 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.536658585071564 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6"."threshold" AS "threshold", "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.37473800778389) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN CASE WHEN ("ADS"."Feature_3" < 0.45831972360611) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.285542845726013) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.757862269878388 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.582578420639038 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.944873154163361 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.249066352844238 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.490707010030746 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7"."threshold" AS "threshold", "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.22746205329895) THEN CASE WHEN ("ADS"."Feature_4" < 0.482725590467453) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.318555891513824) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.539905071258545) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.273966640233994 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.5175621509552 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.389171421527863 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 6 AS parent_id, 0.644472122192383 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 6 AS parent_id, 0.919069409370422 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8"."threshold" AS "threshold", "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.415769696235657) THEN CASE WHEN ("ADS"."Feature_4" < 0.624884307384491) THEN CASE WHEN ("ADS"."Feature_3" < 0.45831972360611) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.370869100093842) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.651627779006958 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.48002216219902 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.789377391338348 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.203255414962769 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.434192419052124 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9"."threshold" AS "threshold", "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 SELECT "XGB_B0"."KEY", "XGB_B0"."Estimator" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_0"."KEY" AS "KEY", "XGB_Model_0"."Estimator" AS "Estimator" 
FROM "XGB_Model_0" UNION ALL SELECT "XGB_Model_1"."KEY" AS "KEY", "XGB_Model_1"."Estimator" AS "Estimator" 
FROM "XGB_Model_1" UNION ALL SELECT "XGB_Model_2"."KEY" AS "KEY", "XGB_Model_2"."Estimator" AS "Estimator" 
FROM "XGB_Model_2" UNION ALL SELECT "XGB_Model_3"."KEY" AS "KEY", "XGB_Model_3"."Estimator" AS "Estimator" 
FROM "XGB_Model_3" UNION ALL SELECT "XGB_Model_4"."KEY" AS "KEY", "XGB_Model_4"."Estimator" AS "Estimator" 
FROM "XGB_Model_4" UNION ALL SELECT "XGB_Model_5"."KEY" AS "KEY", "XGB_Model_5"."Estimator" AS "Estimator" 
FROM "XGB_Model_5" UNION ALL SELECT "XGB_Model_6"."KEY" AS "KEY", "XGB_Model_6"."Estimator" AS "Estimator" 
FROM "XGB_Model_6" UNION ALL SELECT "XGB_Model_7"."KEY" AS "KEY", "XGB_Model_7"."Estimator" AS "Estimator" 
FROM "XGB_Model_7" UNION ALL SELECT "XGB_Model_8"."KEY" AS "KEY", "XGB_Model_8"."Estimator" AS "Estimator" 
FROM "XGB_Model_8" UNION ALL SELECT "XGB_Model_9"."KEY" AS "KEY", "XGB_Model_9"."Estimator" AS "Estimator" 
FROM "XGB_Model_9") AS "XGB_esu_0") AS "XGB_B0") AS "U"

-- Code For temporary table tmp_20180417035324_2bngo1_xgb_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417035324_2bngo1_xgb_  (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417035324_2bngo1_xgb_ part 2/2. Populate

INSERT INTO tmp_20180417035324_2bngo1_xgb_ ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.550355672836304) THEN CASE WHEN ("ADS"."Feature_1" < 0.594910204410553) THEN CASE WHEN ("ADS"."Feature_3" < 0.227992653846741) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.323834806680679) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.581882357597351 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.390215843915939 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.733968913555145 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.162565812468529 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.396961092948914 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10"."threshold" AS "threshold", "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.754144787788391) THEN CASE WHEN ("ADS"."Feature_0" < 0.29219776391983) THEN 3 ELSE CASE WHEN ("ADS"."Feature_4" < 0.431096315383911) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 0.680274546146393 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.160901218652725 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.323393195867538 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.540306925773621 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11"."threshold" AS "threshold", "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.22746205329895) THEN CASE WHEN ("ADS"."Feature_4" < 0.482725590467453) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.275402367115021) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.753896236419678) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.156294927000999 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.329571783542633 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 2 AS parent_id, 0.280535310506821 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 6 AS parent_id, 0.478363126516342 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 6 AS parent_id, 0.704482734203339 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12"."threshold" AS "threshold", "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 0.318555891513824) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 0.283626079559326) THEN CASE WHEN ("ADS"."Feature_4" < 0.566807866096497) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.75140380859375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 0.206003114581108 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.166734918951988 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.367419123649597 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.451818317174912 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.659331977367401 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13"."threshold" AS "threshold", "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.600103259086609) THEN CASE WHEN ("ADS"."Feature_3" < 0.227992653846741) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.79511421918869) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 0.494112938642502 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.096684850752354 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.280590087175369 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 4 AS parent_id, 0.473152846097946 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14"."threshold" AS "threshold", "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.705635368824005) THEN CASE WHEN ("ADS"."Feature_3" < 0.814894676208496) THEN CASE WHEN ("ADS"."Feature_0" < 0.382996559143066) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, CAST("Values".feature AS FLOAT) AS feature, CAST("Values"."threshold" AS FLOAT) AS "threshold", CAST("Values".depth AS FLOAT) AS depth, CAST("Values".parent_id AS FLOAT) AS parent_id, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 1 AS depth, 0 AS parent_id, 0.486659437417984 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 2 AS depth, 1 AS parent_id, 0.460586220026016 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.071518264710903 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS "threshold", 3 AS depth, 3 AS parent_id, 0.268396705389023 AS "Estimator" 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15"."threshold" AS "threshold", "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 SELECT "XGB_B1"."KEY", "XGB_B1"."Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1") AS "U"

-- Code For temporary table tmp_20180417035324_44ovlm_xgb_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417035324_44ovlm_xgb_  (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417035324_44ovlm_xgb_ part 2/2. Populate

INSERT INTO tmp_20180417035324_44ovlm_xgb_ ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (SELECT "XGB_Union"."KEY", "XGB_Union"."Estimator" 
FROM (SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM tmp_20180417035324_2kixox_xgb_ AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM tmp_20180417035324_2bngo1_xgb_ AS "XGB_B1") AS "XGB_EnsembleUnion") AS "XGB_Union") AS "U"

-- Code For temporary table tmp_20180417035324_n9kqf6_xgb_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417035324_n9kqf6_xgb_  (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417035324_n9kqf6_xgb_ part 2/2. Populate

INSERT INTO tmp_20180417035324_n9kqf6_xgb_ ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (SELECT "XGB_sum"."KEY", "XGB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM tmp_20180417035324_44ovlm_xgb_ AS "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum") AS "U"

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM tmp_20180417035324_n9kqf6_xgb_ AS "XGB_sum"