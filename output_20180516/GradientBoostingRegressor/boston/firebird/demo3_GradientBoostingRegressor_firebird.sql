-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : boston
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_35FXQ7_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_35FXQ7_GB_" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_35FXQ7_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_35FXQ7_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 7.010499954223633) THEN CASE WHEN ("ADS"."Feature_12" <= 14.780000686645508) THEN CASE WHEN ("ADS"."Feature_5" <= 6.541999816894531) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_8" <= 16.0) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= 16.0) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -0.8483721607454837 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 5.778934340802502 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -4.564066779018324 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -9.700210396039603 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 11.0210396039604 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -3.3122937293729344 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 23.381039603960392 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -0.6789603960396029 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_7" <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 5.781899929046631) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 2.7422351837158203) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 21.815194157496244 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -0.2396463855716492 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -4.805447210491492 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -9.581208416719333 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 7.94163458537708 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -7.634800467546751 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 21.04293564356436 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -0.6110643564356408 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" <= 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_11" <= 174.31500244140625) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 25.103447187567056 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 2.484205273659576 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 10.139057899312366 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 18.18908054074639 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -7.359879756146922 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -2.4218652961991904 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -4.342721902787801 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -9.80502580423983 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" <= 6.541999816894531) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_11" <= 361.92498779296875) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 5.781899929046631) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 0.9564209312261512 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 6.484731479394312 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -2.3688659748667185 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 17.119734025133283 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 22.814012685528617 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -1.1245083937503437 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -3.8619717533611166 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -7.680560208782768 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" <= 6.541999816894531) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 8.752500534057617) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 16.084999084472656) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 0.8607788381035378 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 5.836258331454881 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 15.407760622619955 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -2.1319793773800484 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 20.532611416975755 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -1.1975617354332486 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -2.8272705763317787 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -6.76966368664234 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" <= 14.300000190734863) THEN CASE WHEN ("ADS"."Feature_7" <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= 2.003700017929077) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.650001525878906) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 15.394158637917217 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -0.0862720289231399 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -6.463808470986295 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -2.8557554273301307 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 5.81169995972859 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -5.588383293837697 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 13.866984560357956 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -1.9187814396420428 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" <= 7.121000289916992) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 15.199999809265137) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 5.848030090332031) THEN CASE WHEN ("ADS"."Feature_5" <= 6.938499927520752) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 17.75321200449003 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 1.6591435216962147 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 12.796594507036893 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 8.266752204906313 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -1.926331818462883 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 6.092732573697336 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -3.778369007299135 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -6.937024667785336 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 5.154999732971191) THEN CASE WHEN ("ADS"."Feature_5" <= 7.406000137329102) THEN CASE WHEN ("ADS"."Feature_5" <= 6.659000396728516) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" <= 3.2074499130249023) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 11.690000534057617) THEN CASE WHEN ("ADS"."Feature_5" <= 7.07450008392334) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6694999933242798) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 1.957581564285816 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 6.914444562849308 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 13.947995739948368 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 10.023002777579354 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 0.401168739240097 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 6.656375521084428 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -1.819744042370566 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -4.813677124435982 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.684999942779541) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_12" <= 4.909999847412109) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 8.752500534057617) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 5.346084613071413 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 1.709044700366004 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 10.325905698462392 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -3.219216068276914 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 15.124496337113442 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -1.1814593983125241 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -2.192314557866565 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -5.8546149874711295 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.531499862670898) THEN CASE WHEN ("ADS"."Feature_12" <= 17.979999542236328) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.600000381469727) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_6" <= 92.25) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 13.6120467034021 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -0.9948407576948689 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -1.3137722426799754 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -4.870926422275086 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 3.479706009560154 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 9.293315128616154 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -6.464029502259475 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -2.726194547802579 AS "E" FROM rdb$database) AS "Values"), 
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

-- Code For temporary table TMP_20180516_CODEGEN_M4ILX7_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_M4ILX7_GB_" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_M4ILX7_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_M4ILX7_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.684999942779541) THEN CASE WHEN ("ADS"."Feature_5" <= 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 15.199999809265137) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6694999933242798) THEN CASE WHEN ("ADS"."Feature_5" <= 6.604499816894531) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 9.870019912719727) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 16.03042247150008 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 1.821409955429755 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 9.249655724557512 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 5.393094924998318 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -1.097192260753167 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 2.9672046090800324 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -2.320706273272657 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -5.920274456589774 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 5.154999732971191) THEN CASE WHEN ("ADS"."Feature_7" <= 3.2074499130249023) THEN CASE WHEN ("ADS"."Feature_6" <= 53.099998474121094) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 64.8499984741211) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.650001525878906) THEN CASE WHEN ("ADS"."Feature_5" <= 6.481499671936035) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.1716500520706177) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 4.45893942446002 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 10.679274034730696 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 5.049649593801159 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 0.1548636905527001 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -0.34880846594333415 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 3.0415724083043774 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 7.66672001954712 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -2.588318526317513 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.802999973297119) THEN CASE WHEN ("ADS"."Feature_12" <= 14.300000190734863) THEN CASE WHEN ("ADS"."Feature_7" <= 1.384850025177002) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.450000762939453) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN CASE WHEN ("ADS"."Feature_5" <= 7.479499816894531) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= 16.974998474121094) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 9.963139704387164 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -0.08025550887970825 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -0.5914923147357894 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -3.2386349549117512 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 3.298261314433055 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 7.22979934684516 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -1.8596300631661944 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -5.822959015412992 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.725000381469727) THEN CASE WHEN ("ADS"."Feature_5" <= 7.07450008392334) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 15.100000381469727) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 2.064300060272217) THEN CASE WHEN ("ADS"."Feature_11" <= 28.139999389648438) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= 281.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 11.186096474641952 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 0.7950189600237958 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 6.685315566575873 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 3.8872203528188716 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -6.0146691120059375 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -2.638999622315692 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 0.7806885165178139 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -1.1256769388015495 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.531499862670898) THEN CASE WHEN ("ADS"."Feature_12" <= 19.229999542236328) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.450000762939453) THEN CASE WHEN ("ADS"."Feature_5" <= 7.479499816894531) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= 4.510000228881836) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 9.478965639279586 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -0.6499702953553841 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -1.233527298074414 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -3.676696947229039 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 2.5270905093722926 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 5.959944169144661 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 11.244529202974093 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -1.2220960075581273 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.475000381469727) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_9" <= 222.5) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 17.899999618530273) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.675000011920929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM boston AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 5.00442683276913 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 1.1985510005554418 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 5.943336196435719 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 0.7774532662097009 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 8.531069075351624 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -0.5351569767333489 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -1.4468251981974587 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, -3.730065268370492 AS "E" FROM rdb$database) AS "Values"), 
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

-- Code For temporary table TMP_20180516_CODEGEN_LPEDI1_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_LPEDI1_GB_" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_LPEDI1_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_LPEDI1_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_35FXQ7_GB_" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_M4ILX7_GB_" AS "GB_B1") AS "GB_EnsembleUnion")
 SELECT "GB_sum"."KEY", "GB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE PRECISION) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_LPEDI1_GB_ part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_bd2c" ON "TMP_20180516_CODEGEN_LPEDI1_GB_" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 22.5789603960396 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_LPEDI1_GB_" AS "GB_sum"