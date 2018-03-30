-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_323" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -2.9392613250197774 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -11.814350214004516 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -18.654919337564046 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"LGBM_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_323" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 7.146666425466538 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -1.2846679067611695 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -7.783208585668493 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"LGBM_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_70" <= -0.10383642017085577) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 6.789333077633021 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -1.4096326351165773 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -7.721442848205567 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"LGBM_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_157" <= -0.2712712597281069) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 6.449866396730596 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -8.081835019588471 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -1.8966254666999536 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"LGBM_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= -0.37420882474661676) THEN 2 ELSE CASE WHEN ("ADS"."Feature_306" <= -0.3464411724833026) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -6.64343775605162 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 8.873062126977104 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 0.4472010088377986 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"LGBM_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_70" <= -0.10383642017085577) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 5.913516274455822 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -0.966909516399557 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -6.954960953712464 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"LGBM_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= -0.37420882474661676) THEN 2 ELSE CASE WHEN ("ADS"."Feature_97" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -6.10323884566625 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 7.93811313956976 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, -0.28529022255769143 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"LGBM_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_323" <= 1.0000000180025095e-35) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 5.445209298169974 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -0.45617063283920295 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -6.317351690928142 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"LGBM_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_2" <= -0.5307947435725665) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 5.172948823553144 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -6.626578257300638 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -0.9969036617279052 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"LGBM_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= -0.37420882474661676) THEN 2 ELSE CASE WHEN ("ADS"."Feature_97" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -5.389694633483887 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 7.332392251491547 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, -0.5494837064009447 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"LGBM_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"LGBM_Sum_B0" AS 
(SELECT "LGBM_Sum_esu_0"."KEY" AS "KEY", "LGBM_Sum_esu_0"."Estimator" AS "Estimator" 
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
FROM "LGBM_Tree_9") AS "LGBM_Sum_esu_0"), 
"DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN CASE WHEN ("ADS"."Feature_70" <= -0.10383642017085577) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 4.762642074353767 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -0.4014830675992099 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -5.93338248538971 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"LGBM_Tree_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" <= -0.37420882474661676) THEN 2 ELSE CASE WHEN ("ADS"."Feature_306" <= -0.3464411724833026) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -4.952618338267008 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 7.532467397054036 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, -0.33114703277061724 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"LGBM_Tree_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" <= 0.8203900330532611) THEN CASE WHEN ("ADS"."Feature_214" <= -0.3045388177820177) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 6.250708452860515 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -5.451137277058193 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, 0.6892569326585339 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"LGBM_Tree_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_157" <= -0.2712712597281069) THEN 2 ELSE CASE WHEN ("ADS"."Feature_214" <= 0.10535271434982822) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -4.244763854055694 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, -0.6415416602735167 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 7.869941539764405 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"LGBM_Tree_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" <= 0.8203900330532611) THEN CASE WHEN ("ADS"."Feature_390" <= 0.10807272293659424) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, 5.905604069573538 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, -4.751418824493885 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 2 AS parent_id, 1.038063685099284 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"LGBM_Tree_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_157" <= -0.2712712597281069) THEN 2 ELSE CASE WHEN ("ADS"."Feature_353" <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 1 AS depth, 1 AS parent_id, -4.036769115563596 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, -1.0418503757566213 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS DOUBLE PRECISION) AS threshold, 2 AS depth, 3 AS parent_id, 6.879034276630567 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"LGBM_Tree_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15"), 
"LGBM_Sum_B1" AS 
(SELECT "LGBM_Sum_esu_1"."KEY" AS "KEY", "LGBM_Sum_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Tree_10"."KEY" AS "KEY", "LGBM_Tree_10"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_10" UNION ALL SELECT "LGBM_Tree_11"."KEY" AS "KEY", "LGBM_Tree_11"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_11" UNION ALL SELECT "LGBM_Tree_12"."KEY" AS "KEY", "LGBM_Tree_12"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_12" UNION ALL SELECT "LGBM_Tree_13"."KEY" AS "KEY", "LGBM_Tree_13"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_13" UNION ALL SELECT "LGBM_Tree_14"."KEY" AS "KEY", "LGBM_Tree_14"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_14" UNION ALL SELECT "LGBM_Tree_15"."KEY" AS "KEY", "LGBM_Tree_15"."Estimator" AS "Estimator" 
FROM "LGBM_Tree_15") AS "LGBM_Sum_esu_1"), 
"LGBM_Sum_Union" AS 
(SELECT "LGBM_Sum_EnsembleUnion"."KEY" AS "KEY", "LGBM_Sum_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Sum_B0"."KEY" AS "KEY", "LGBM_Sum_B0"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_B0" UNION ALL SELECT "LGBM_Sum_B1"."KEY" AS "KEY", "LGBM_Sum_B1"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_B1") AS "LGBM_Sum_EnsembleUnion"), 
"LGBM_Sum_sum" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Sum_Union"."KEY" AS "KEY", sum(CAST("LGBM_Sum_Union"."Estimator" AS DOUBLE PRECISION)) AS "Estimator" 
FROM "LGBM_Sum_Union" GROUP BY "LGBM_Sum_Union"."KEY") AS "T")
 SELECT "LGBM_Sum_sum"."KEY" AS "KEY", "LGBM_Sum_sum"."Estimator" AS "Estimator" 
FROM "LGBM_Sum_sum"