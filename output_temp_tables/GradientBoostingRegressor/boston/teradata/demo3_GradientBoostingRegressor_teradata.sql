-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : boston
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145404_3sr_gb_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145404_3sr_gb_b0  (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145404_3sr_gb_b0 part 2. Populate

INSERT INTO tmp_20180602145404_3sr_gb_b0 ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(7.010499954223633 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(14.780000686645508 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.541999816894531 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_8" <= CAST(16.0 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= CAST(16.0 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(-0.848372160745484 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 4 AS nid, CAST(5.778934340802502 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(-4.564066779018324 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(-9.700210396039605 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 10 AS nid, CAST(11.0210396039604 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(-3.312293729372934 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 13 AS nid, CAST(23.381039603960392 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(-0.678960396039603 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.824999809265137 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(14.805000305175781 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.384850025177002 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(5.781899929046631 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(2.74223518371582 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_1 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(21.815194157496244 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 4 AS nid, CAST(-0.239646385571649 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 6 AS nid, CAST(-4.805447210491492 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 7 AS nid, CAST(-9.581208416719331 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 10 AS nid, CAST(7.94163458537708 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 11 AS nid, CAST(-7.634800467546751 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 13 AS nid, CAST(21.04293564356436 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1 UNION ALL SELECT 14 AS nid, CAST(-0.611064356435641 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.725000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.140999794006348 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_11" <= CAST(174.31500244140625 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_2 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(25.103447187567056 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 4 AS nid, CAST(2.484205273659576 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 6 AS nid, CAST(10.139057899312366 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 7 AS nid, CAST(18.18908054074639 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 10 AS nid, CAST(-7.359879756146922 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 11 AS nid, CAST(-2.42186529619919 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 13 AS nid, CAST(-4.342721902787801 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2 UNION ALL SELECT 14 AS nid, CAST(-9.80502580423983 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_2) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.864999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.541999816894531 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_11" <= CAST(361.92498779296875 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(14.805000305175781 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(5.781899929046631 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_3 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(0.956420931226151 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 4 AS nid, CAST(6.484731479394312 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 6 AS nid, CAST(-2.368865974866718 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 7 AS nid, CAST(17.119734025133283 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 10 AS nid, CAST(22.814012685528617 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 11 AS nid, CAST(-1.124508393750344 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 13 AS nid, CAST(-3.861971753361116 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3 UNION ALL SELECT 14 AS nid, CAST(-7.680560208782768 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_3) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.864999771118164 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.541999816894531 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(8.752500534057617 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(16.084999084472656 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_4 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(0.860778838103538 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 4 AS nid, CAST(5.836258331454881 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 6 AS nid, CAST(15.407760622619955 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 7 AS nid, CAST(-2.131979377380048 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 10 AS nid, CAST(20.532611416975755 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 11 AS nid, CAST(-1.197561735433248 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 13 AS nid, CAST(-2.827270576331778 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4 UNION ALL SELECT 14 AS nid, CAST(-6.76966368664234 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_4) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.824999809265137 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(14.300000190734863 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.384850025177002 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(2.003700017929077 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.650001525878906 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_5 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(15.394158637917217 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 4 AS nid, CAST(-0.08627202892314 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 6 AS nid, CAST(-6.463808470986295 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 7 AS nid, CAST(-2.85575542733013 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 10 AS nid, CAST(5.81169995972859 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 11 AS nid, CAST(-5.588383293837697 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 13 AS nid, CAST(13.866984560357956 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5 UNION ALL SELECT 14 AS nid, CAST(-1.918781439642043 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_5) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.725000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.121000289916992 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(15.199999809265137 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(5.848030090332031 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.938499927520752 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_6 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(17.75321200449003 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 4 AS nid, CAST(1.659143521696215 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 6 AS nid, CAST(12.796594507036893 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 7 AS nid, CAST(8.266752204906313 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 10 AS nid, CAST(-1.926331818462883 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 11 AS nid, CAST(6.092732573697336 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 13 AS nid, CAST(-3.778369007299135 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6 UNION ALL SELECT 14 AS nid, CAST(-6.937024667785336 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_6) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(5.154999732971191 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.406000137329102 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.659000396728516 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(3.207449913024902 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(11.690000534057617 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.07450008392334 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.66949999332428 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_7 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(1.957581564285816 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 4 AS nid, CAST(6.914444562849308 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 6 AS nid, CAST(13.947995739948368 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 7 AS nid, CAST(10.023002777579354 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 10 AS nid, CAST(0.401168739240097 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 11 AS nid, CAST(6.656375521084428 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 13 AS nid, CAST(-1.819744042370566 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7 UNION ALL SELECT 14 AS nid, CAST(-4.813677124435982 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_7) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.684999942779541 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(4.909999847412109 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= CAST(8.752500534057617 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_8 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(5.346084613071413 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 4 AS nid, CAST(1.709044700366004 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 6 AS nid, CAST(10.325905698462392 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 7 AS nid, CAST(-3.219216068276914 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 10 AS nid, CAST(15.124496337113442 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 11 AS nid, CAST(-1.181459398312524 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 13 AS nid, CAST(-2.192314557866565 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8 UNION ALL SELECT 14 AS nid, CAST(-5.85461498747113 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_8) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.531499862670898 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(17.979999542236328 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.600000381469727 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_6" <= CAST(92.25 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_9 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(13.6120467034021 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 4 AS nid, CAST(-0.994840757694869 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 6 AS nid, CAST(-1.313772242679976 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 7 AS nid, CAST(-4.870926422275086 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 10 AS nid, CAST(3.479706009560154 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 11 AS nid, CAST(9.293315128616154 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 13 AS nid, CAST(-6.464029502259475 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9 UNION ALL SELECT 14 AS nid, CAST(-2.726194547802579 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_9) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 SELECT "GB_B0"."KEY", "GB_B0"."Estimator" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Estimator" AS "Estimator" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Estimator" AS "Estimator" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Estimator" AS "Estimator" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Estimator" AS "Estimator" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Estimator" AS "Estimator" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Estimator" AS "Estimator" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Estimator" AS "Estimator" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Estimator" AS "Estimator" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Estimator" AS "Estimator" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Estimator" AS "Estimator" 
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0") AS "U"

-- Code For temporary table tmp_20180602145404_kp8_gb_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145404_kp8_gb_b1  (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145404_kp8_gb_b1 part 2. Populate

INSERT INTO tmp_20180602145404_kp8_gb_b1 ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.684999942779541 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.140999794006348 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(15.199999809265137 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.66949999332428 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.604499816894531 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(9.870019912719727 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_10 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(16.03042247150008 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 4 AS nid, CAST(1.821409955429755 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 6 AS nid, CAST(9.249655724557512 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 7 AS nid, CAST(5.393094924998318 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 10 AS nid, CAST(-1.097192260753167 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 11 AS nid, CAST(2.967204609080032 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 13 AS nid, CAST(-2.320706273272657 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10 UNION ALL SELECT 14 AS nid, CAST(-5.920274456589774 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_10) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(5.154999732971191 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(3.207449913024902 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_6" <= CAST(53.099998474121094 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= CAST(64.8499984741211 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.650001525878906 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(6.481499671936035 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(1.171650052070618 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_11 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(4.45893942446002 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 4 AS nid, CAST(10.679274034730696 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 6 AS nid, CAST(5.049649593801159 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 7 AS nid, CAST(0.1548636905527 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 10 AS nid, CAST(-0.348808465943334 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 11 AS nid, CAST(3.041572408304378 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 13 AS nid, CAST(7.66672001954712 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11 UNION ALL SELECT 14 AS nid, CAST(-2.588318526317513 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_11) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.802999973297119 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(14.300000190734863 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.384850025177002 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.450000762939453 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.659000039100647 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.479499816894531 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(16.974998474121094 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_12 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(9.963139704387164 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 4 AS nid, CAST(-0.080255508879708 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 6 AS nid, CAST(-0.59149231473579 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 7 AS nid, CAST(-3.238634954911751 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 10 AS nid, CAST(3.298261314433055 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 11 AS nid, CAST(7.22979934684516 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 13 AS nid, CAST(-1.859630063166194 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12 UNION ALL SELECT 14 AS nid, CAST(-5.822959015412992 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_12) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(9.725000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.07450008392334 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.484949946403504 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(15.100000381469727 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= CAST(2.064300060272217 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_11" <= CAST(28.139999389648438 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= CAST(281.5 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_13 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(11.186096474641952 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 4 AS nid, CAST(0.795018960023796 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 6 AS nid, CAST(6.685315566575873 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 7 AS nid, CAST(3.887220352818872 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 10 AS nid, CAST(-6.014669112005937 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 11 AS nid, CAST(-2.638999622315692 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 13 AS nid, CAST(0.780688516517814 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13 UNION ALL SELECT 14 AS nid, CAST(-1.12567693880155 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_13) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= CAST(6.531499862670898 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_12" <= CAST(19.229999542236328 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.603000044822693 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(19.450000762939453 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.479499816894531 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(4.510000228881836 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_14 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(9.478965639279586 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 4 AS nid, CAST(-0.649970295355384 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 6 AS nid, CAST(-1.233527298074414 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 7 AS nid, CAST(-3.676696947229039 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 10 AS nid, CAST(2.527090509372292 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 11 AS nid, CAST(5.959944169144661 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 13 AS nid, CAST(11.244529202974093 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14 UNION ALL SELECT 14 AS nid, CAST(-1.222096007558127 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_14) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= CAST(7.475000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(7.437000274658203 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_9" <= CAST(222.5 AS DOUBLE PRECISION)) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= CAST(17.899999618530273 AS DOUBLE PRECISION)) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= CAST(19.850000381469727 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_7" <= CAST(1.227149963378906 AS DOUBLE PRECISION)) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= CAST(0.675000011920929 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
dummy_cte_15 AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, CAST(5.00442683276913 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 4 AS nid, CAST(1.198551000555442 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 6 AS nid, CAST(5.943336196435719 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 7 AS nid, CAST(0.777453266209701 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 10 AS nid, CAST(8.531069075351624 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 11 AS nid, CAST(-0.535156976733349 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 13 AS nid, CAST(-1.446825198197459 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15 UNION ALL SELECT 14 AS nid, CAST(-3.730065268370492 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte_15) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 SELECT "GB_B1"."KEY", "GB_B1"."Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1") AS "U"

-- Code For temporary table tmp_20180602145404_19q_gb_sum part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145404_19q_gb_sum  (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145404_19q_gb_sum part 2. Populate

INSERT INTO tmp_20180602145404_19q_gb_sum ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM tmp_20180602145404_3sr_gb_b0 AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM tmp_20180602145404_kp8_gb_b1 AS "GB_B1") AS "GB_EnsembleUnion")
 SELECT "GB_sum"."KEY", "GB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE PRECISION) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "U"

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", CAST(22.5789603960396 AS DOUBLE PRECISION) + CAST(0.1 AS DOUBLE PRECISION) * "GB_sum"."Estimator" AS "Estimator" 
FROM tmp_20180602145404_19q_gb_sum AS "GB_sum"