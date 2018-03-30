-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232300_TLI46E_XGB_Sum_B0 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232300_TLI46E_XGB_Sum_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table TMP_20180329232300_TLI46E_XGB_Sum_B0 part 2/2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.44577229022979736) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873047) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 1.7346981763839722 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.7246237993240356 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.2854242324829102 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.2274620532989502) THEN 1 ELSE CASE WHEN ("ADS"."Feature_3" < 0.2855428457260132) THEN 3 ELSE 4 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 0.8841015100479126 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.9877474904060364 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.6178016662597656 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.44577229022979736) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873047) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.37086910009384155) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.5728387236595154 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.0455927848815918 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.0199894905090332 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.5323306322097778 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.28362607955932617) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.2855428457260132) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.5853623151779175 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.0090750455856323 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.8120507597923279 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.3750017881393433 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.44577229022979736) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN CASE WHEN ("ADS"."Feature_3" < 0.4583197236061096) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.37086910009384155) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.9971041679382324 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.8192136883735657 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.2618716955184937 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.38835859298706055 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.7371280789375305 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.5000743269920349) THEN CASE WHEN ("ADS"."Feature_4" < 0.4505019187927246) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 0.2274620532989502) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.4594433903694153 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.7925733923912048 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.6406915783882141 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.1351743936538696 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.5503556728363037) THEN CASE WHEN ("ADS"."Feature_1" < 0.41576969623565674) THEN CASE WHEN ("ADS"."Feature_3" < 0.33722972869873047) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.3238348066806793) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.7740703225135803 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.5934602618217468 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 1.0693920850753784 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.31571075320243835 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.5366585850715637 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.37473800778388977) THEN CASE WHEN ("ADS"."Feature_4" < 0.574918806552887) THEN CASE WHEN ("ADS"."Feature_3" < 0.4583197236061096) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.2855428457260132) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.7578622698783875 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.5825784206390381 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.9448731541633606 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.24906635284423828 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.49070701003074646 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" < 0.482725590467453) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.31855589151382446) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.5399050712585449) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.27396664023399353 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.5175621509552002 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.38917142152786255 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.6444721221923828 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.9190694093704224 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.41576969623565674) THEN CASE WHEN ("ADS"."Feature_4" < 0.624884307384491) THEN CASE WHEN ("ADS"."Feature_3" < 0.4583197236061096) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.37086910009384155) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.651627779006958 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.4800221621990204 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.7893773913383484 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.20325541496276855 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.434192419052124 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180329232300_TLI46E_XGB_Sum_B0" ("KEY", "Estimator") SELECT "XGB_Sum_B0"."KEY", "XGB_Sum_B0"."Estimator" 
FROM (SELECT "XGB_Sum_esu_0"."KEY" AS "KEY", "XGB_Sum_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_0"."KEY" AS "KEY", "XGB_Tree_0"."Estimator" AS "Estimator" 
FROM "XGB_Tree_0" UNION ALL SELECT "XGB_Tree_1"."KEY" AS "KEY", "XGB_Tree_1"."Estimator" AS "Estimator" 
FROM "XGB_Tree_1" UNION ALL SELECT "XGB_Tree_2"."KEY" AS "KEY", "XGB_Tree_2"."Estimator" AS "Estimator" 
FROM "XGB_Tree_2" UNION ALL SELECT "XGB_Tree_3"."KEY" AS "KEY", "XGB_Tree_3"."Estimator" AS "Estimator" 
FROM "XGB_Tree_3" UNION ALL SELECT "XGB_Tree_4"."KEY" AS "KEY", "XGB_Tree_4"."Estimator" AS "Estimator" 
FROM "XGB_Tree_4" UNION ALL SELECT "XGB_Tree_5"."KEY" AS "KEY", "XGB_Tree_5"."Estimator" AS "Estimator" 
FROM "XGB_Tree_5" UNION ALL SELECT "XGB_Tree_6"."KEY" AS "KEY", "XGB_Tree_6"."Estimator" AS "Estimator" 
FROM "XGB_Tree_6" UNION ALL SELECT "XGB_Tree_7"."KEY" AS "KEY", "XGB_Tree_7"."Estimator" AS "Estimator" 
FROM "XGB_Tree_7" UNION ALL SELECT "XGB_Tree_8"."KEY" AS "KEY", "XGB_Tree_8"."Estimator" AS "Estimator" 
FROM "XGB_Tree_8" UNION ALL SELECT "XGB_Tree_9"."KEY" AS "KEY", "XGB_Tree_9"."Estimator" AS "Estimator" 
FROM "XGB_Tree_9") AS "XGB_Sum_esu_0") AS "XGB_Sum_B0"
-- Code For temporary table TMP_20180329232300_SLB2B7_XGB_Sum_B1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232300_SLB2B7_XGB_Sum_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table TMP_20180329232300_SLB2B7_XGB_Sum_B1 part 2/2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.5503556728363037) THEN CASE WHEN ("ADS"."Feature_1" < 0.594910204410553) THEN CASE WHEN ("ADS"."Feature_3" < 0.22799265384674072) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 0.3238348066806793) THEN 5 ELSE 6 END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.5818823575973511 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.39021584391593933 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.7339689135551453 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.16256581246852875 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.3969610929489136 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"XGB_Tree_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" < 0.7541447877883911) THEN CASE WHEN ("ADS"."Feature_0" < 0.2921977639198303) THEN 3 ELSE CASE WHEN ("ADS"."Feature_4" < 0.43109631538391113) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 0.6802745461463928 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.16090121865272522 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.32339319586753845 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.5403069257736206 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"XGB_Tree_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.2274620532989502) THEN CASE WHEN ("ADS"."Feature_4" < 0.482725590467453) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.27540236711502075) THEN 5 ELSE CASE WHEN ("ADS"."Feature_3" < 0.7538962364196777) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.15629492700099945 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.32957178354263306 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.2805353105068207 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.47836312651634216 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 0.7044827342033386 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"XGB_Tree_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" < 0.31855589151382446) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" < 0.28362607955932617) THEN CASE WHEN ("ADS"."Feature_4" < 0.5668078660964966) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_3" < 0.75140380859375) THEN 7 ELSE 8 END END END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 0.2060031145811081 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.16673491895198822 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.36741912364959717 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.4518183171749115 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.6593319773674011 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"XGB_Tree_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_1" < 0.6001032590866089) THEN CASE WHEN ("ADS"."Feature_3" < 0.22799265384674072) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" < 0.7951142191886902) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 0.49411293864250183 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.09668485075235367 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.28059008717536926 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 0.47315284609794617 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"XGB_Tree_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_4" < 0.7056353688240051) THEN CASE WHEN ("ADS"."Feature_3" < 0.8148946762084961) THEN CASE WHEN ("ADS"."Feature_0" < 0.3829965591430664) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM freidman1 AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 0.486659437417984 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 0.46058622002601624 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.07151826471090317 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.2683967053890228 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"XGB_Tree_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180329232300_SLB2B7_XGB_Sum_B1" ("KEY", "Estimator") SELECT "XGB_Sum_B1"."KEY", "XGB_Sum_B1"."Estimator" 
FROM (SELECT "XGB_Sum_esu_1"."KEY" AS "KEY", "XGB_Sum_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_10"."KEY" AS "KEY", "XGB_Tree_10"."Estimator" AS "Estimator" 
FROM "XGB_Tree_10" UNION ALL SELECT "XGB_Tree_11"."KEY" AS "KEY", "XGB_Tree_11"."Estimator" AS "Estimator" 
FROM "XGB_Tree_11" UNION ALL SELECT "XGB_Tree_12"."KEY" AS "KEY", "XGB_Tree_12"."Estimator" AS "Estimator" 
FROM "XGB_Tree_12" UNION ALL SELECT "XGB_Tree_13"."KEY" AS "KEY", "XGB_Tree_13"."Estimator" AS "Estimator" 
FROM "XGB_Tree_13" UNION ALL SELECT "XGB_Tree_14"."KEY" AS "KEY", "XGB_Tree_14"."Estimator" AS "Estimator" 
FROM "XGB_Tree_14" UNION ALL SELECT "XGB_Tree_15"."KEY" AS "KEY", "XGB_Tree_15"."Estimator" AS "Estimator" 
FROM "XGB_Tree_15") AS "XGB_Sum_esu_1") AS "XGB_Sum_B1"
-- Code For temporary table TMP_20180329232300_UESU36_XGB_Sum_Union part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232300_UESU36_XGB_Sum_Union" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table TMP_20180329232300_UESU36_XGB_Sum_Union part 2/2. Populate

INSERT INTO "TMP_20180329232300_UESU36_XGB_Sum_Union" ("KEY", "Estimator") SELECT "XGB_Sum_Union"."KEY", "XGB_Sum_Union"."Estimator" 
FROM (SELECT "XGB_Sum_EnsembleUnion"."KEY" AS "KEY", "XGB_Sum_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Sum_B0"."KEY" AS "KEY", "XGB_Sum_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180329232300_TLI46E_XGB_Sum_B0" AS "XGB_Sum_B0" UNION ALL SELECT "XGB_Sum_B1"."KEY" AS "KEY", "XGB_Sum_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180329232300_SLB2B7_XGB_Sum_B1" AS "XGB_Sum_B1") AS "XGB_Sum_EnsembleUnion") AS "XGB_Sum_Union"

-- Model deployment code

WITH "XGB_Sum_sum" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Sum_Union"."KEY" AS "KEY", sum(CAST("XGB_Sum_Union"."Estimator" AS FLOAT)) AS "Estimator" 
FROM "TMP_20180329232300_UESU36_XGB_Sum_Union" AS "XGB_Sum_Union" GROUP BY "XGB_Sum_Union"."KEY") AS "T")
 SELECT "XGB_Sum_sum"."KEY" AS "KEY", "XGB_Sum_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_sum"