-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : RandomReg_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508182559_CODEGEN_T400O2_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182559_CODEGEN_T400O2_GB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508182559_CODEGEN_T400O2_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.20716172456741333) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_55" <= 0.8011568188667297) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= 0.025700129568576813) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.45573797821998596) THEN CASE WHEN ("ADS"."Feature_57" <= 0.7340818643569946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1.2074711322784424) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -252.84102656467715 AS "E" UNION ALL SELECT 4 AS nid, -401.01586877236855 AS "E" UNION ALL SELECT 6 AS nid, -140.43801884125133 AS "E" UNION ALL SELECT 7 AS nid, 111.22723579469624 AS "E" UNION ALL SELECT 10 AS nid, 2.0020662492701846 AS "E" UNION ALL SELECT 11 AS nid, 193.88392579467964 AS "E" UNION ALL SELECT 13 AS nid, 236.29693349709683 AS "E" UNION ALL SELECT 14 AS nid, -68.24444068793147 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.20716172456741333) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_55" <= 0.8011568188667297) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= -0.056518763303756714) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.4291309118270874) THEN CASE WHEN ("ADS"."Feature_63" <= -1.6470320224761963) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_28" <= 0.7991287112236023) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -227.55692390820943 AS "E" UNION ALL SELECT 4 AS nid, -360.91428189513175 AS "E" UNION ALL SELECT 6 AS nid, -152.25652148339992 AS "E" UNION ALL SELECT 7 AS nid, 77.73187383936153 AS "E" UNION ALL SELECT 10 AS nid, -160.31951781815866 AS "E" UNION ALL SELECT 11 AS nid, 160.54972594405706 AS "E" UNION ALL SELECT 13 AS nid, -47.46336042041583 AS "E" UNION ALL SELECT 14 AS nid, 102.703183089185 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.20716172456741333) THEN CASE WHEN ("ADS"."Feature_95" <= -0.23302042484283447) THEN CASE WHEN ("ADS"."Feature_41" <= -0.21187324821949005) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_79" <= 0.6566818356513977) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.45573797821998596) THEN CASE WHEN ("ADS"."Feature_57" <= 0.7340818643569946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_6" <= -1.0603806972503662) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -268.6966071831282 AS "E" UNION ALL SELECT 4 AS nid, -132.286115276833 AS "E" UNION ALL SELECT 6 AS nid, -66.30218273793687 AS "E" UNION ALL SELECT 7 AS nid, 132.8221282945893 AS "E" UNION ALL SELECT 10 AS nid, -4.5147952272318355 AS "E" UNION ALL SELECT 11 AS nid, 162.23855532393944 AS "E" UNION ALL SELECT 13 AS nid, 18.409364311488886 AS "E" UNION ALL SELECT 14 AS nid, 211.7568683380744 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.20716172456741333) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_63" <= 0.04603707045316696) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= 0.025700129568576813) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_94" <= -0.725760817527771) THEN CASE WHEN ("ADS"."Feature_20" <= 0.6378058195114136) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_49" <= 0.9990737438201904) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -248.63223217136462 AS "E" UNION ALL SELECT 4 AS nid, -138.64685597514327 AS "E" UNION ALL SELECT 6 AS nid, -104.47481289543998 AS "E" UNION ALL SELECT 7 AS nid, 88.63223618704266 AS "E" UNION ALL SELECT 10 AS nid, 109.73803198644433 AS "E" UNION ALL SELECT 11 AS nid, 259.2870627880886 AS "E" UNION ALL SELECT 13 AS nid, -2.7785670851123636 AS "E" UNION ALL SELECT 14 AS nid, 197.77273802049856 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_55" <= 0.8011568188667297) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= -0.056518763303756714) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_94" <= -0.674340009689331) THEN CASE WHEN ("ADS"."Feature_35" <= 0.6819241046905518) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_17" <= -0.17455044388771057) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -166.08417260866474 AS "E" UNION ALL SELECT 4 AS nid, -273.0899697701693 AS "E" UNION ALL SELECT 6 AS nid, -104.24398888014426 AS "E" UNION ALL SELECT 7 AS nid, 53.03467027243673 AS "E" UNION ALL SELECT 10 AS nid, 108.15211098937698 AS "E" UNION ALL SELECT 11 AS nid, 256.10264878677424 AS "E" UNION ALL SELECT 13 AS nid, -35.819061204929746 AS "E" UNION ALL SELECT 14 AS nid, 101.20656778478092 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_96" <= 0.8706262111663818) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_63" <= 0.006115328520536423) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_94" <= -0.674340009689331) THEN CASE WHEN ("ADS"."Feature_35" <= 0.6819241046905518) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_34" <= 0.7356826066970825) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -147.87696104193762 AS "E" UNION ALL SELECT 4 AS nid, -250.5773557107342 AS "E" UNION ALL SELECT 6 AS nid, -86.96777144299705 AS "E" UNION ALL SELECT 7 AS nid, 53.81725389069262 AS "E" UNION ALL SELECT 10 AS nid, 97.33689989043926 AS "E" UNION ALL SELECT 11 AS nid, 230.49238390809677 AS "E" UNION ALL SELECT 13 AS nid, 61.954603928554725 AS "E" UNION ALL SELECT 14 AS nid, -88.7201442903887 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_95" <= -0.2972280979156494) THEN CASE WHEN ("ADS"."Feature_41" <= -0.21187324821949005) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_79" <= 0.6566818356513977) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_17" <= -0.3005116581916809) THEN CASE WHEN ("ADS"."Feature_95" <= -0.7561620473861694) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_22" <= 0.9849851131439209) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -182.63471636324059 AS "E" UNION ALL SELECT 4 AS nid, -86.71306885573706 AS "E" UNION ALL SELECT 6 AS nid, -32.57971656242132 AS "E" UNION ALL SELECT 7 AS nid, 99.9914994301132 AS "E" UNION ALL SELECT 10 AS nid, -143.53177440111878 AS "E" UNION ALL SELECT 11 AS nid, 37.91215350311193 AS "E" UNION ALL SELECT 13 AS nid, 138.3715502781027 AS "E" UNION ALL SELECT 14 AS nid, -47.4458269514782 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6753641366958618) THEN CASE WHEN ("ADS"."Feature_71" <= 0.7060462236404419) THEN CASE WHEN ("ADS"."Feature_42" <= 0.2619170844554901) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_18" <= -0.342239648103714) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.45573797821998596) THEN CASE WHEN ("ADS"."Feature_68" <= 0.8296070694923401) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1.2074711322784424) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -145.43711457466674 AS "E" UNION ALL SELECT 4 AS nid, -35.40083739231901 AS "E" UNION ALL SELECT 6 AS nid, 24.89731543252883 AS "E" UNION ALL SELECT 7 AS nid, 149.58226543185765 AS "E" UNION ALL SELECT 10 AS nid, -25.5045863629451 AS "E" UNION ALL SELECT 11 AS nid, 102.207549307282 AS "E" UNION ALL SELECT 13 AS nid, 128.2519385213634 AS "E" UNION ALL SELECT 14 AS nid, -18.353759863352334 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_63" <= -0.05232740938663483) THEN CASE WHEN ("ADS"."Feature_41" <= -0.266196072101593) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_41" <= -0.6380970478057861) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_59" <= 0.035378627479076385) THEN CASE WHEN ("ADS"."Feature_41" <= -1.5191681385040283) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_62" <= 0.40460240840911865) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -157.19419874992286 AS "E" UNION ALL SELECT 4 AS nid, -60.3809500717206 AS "E" UNION ALL SELECT 6 AS nid, -73.98362499412102 AS "E" UNION ALL SELECT 7 AS nid, 40.436523048835895 AS "E" UNION ALL SELECT 10 AS nid, -74.86005898402577 AS "E" UNION ALL SELECT 11 AS nid, 113.14956109235057 AS "E" UNION ALL SELECT 13 AS nid, 47.664503383772654 AS "E" UNION ALL SELECT 14 AS nid, -74.18404813706101 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.08977922052145004) THEN CASE WHEN ("ADS"."Feature_95" <= -0.2972280979156494) THEN CASE WHEN ("ADS"."Feature_16" <= -0.44520145654678345) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" <= -1.229270339012146) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_94" <= -0.674340009689331) THEN CASE WHEN ("ADS"."Feature_35" <= 0.6819241046905518) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_95" <= 1.1364150047302246) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -160.0552494150242 AS "E" UNION ALL SELECT 4 AS nid, -83.4053948562265 AS "E" UNION ALL SELECT 6 AS nid, -107.6707256102459 AS "E" UNION ALL SELECT 7 AS nid, 21.68229919627524 AS "E" UNION ALL SELECT 10 AS nid, 66.22304540348168 AS "E" UNION ALL SELECT 11 AS nid, 171.99591624788687 AS "E" UNION ALL SELECT 13 AS nid, -9.026621321357302 AS "E" UNION ALL SELECT 14 AS nid, 153.64635202717568 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180508182559_CODEGEN_T400O2_GB_B0" ("KEY", "Estimator") SELECT "GB_B0"."KEY", "GB_B0"."Estimator" 
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
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0"

-- Code For temporary table TMP_20180508182559_CODEGEN_8U5209_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182559_CODEGEN_8U5209_GB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508182559_CODEGEN_8U5209_GB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_88" <= 1.8550121784210205) THEN CASE WHEN ("ADS"."Feature_81" <= 0.9404175281524658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_56" <= 0.07086198031902313) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_92" <= -1.1308966875076294) THEN CASE WHEN ("ADS"."Feature_46" <= 0.5898699164390564) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_41" <= 1.2777845859527588) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -105.70169960582692 AS "E" UNION ALL SELECT 4 AS nid, -14.012286209710851 AS "E" UNION ALL SELECT 6 AS nid, 39.81136640417115 AS "E" UNION ALL SELECT 7 AS nid, 155.01699967450787 AS "E" UNION ALL SELECT 10 AS nid, -69.66580779283252 AS "E" UNION ALL SELECT 11 AS nid, 24.479886218202687 AS "E" UNION ALL SELECT 13 AS nid, 46.06291534740547 AS "E" UNION ALL SELECT 14 AS nid, 184.43107173825283 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_95" <= -0.2669096887111664) THEN CASE WHEN ("ADS"."Feature_80" <= -0.30302831530570984) THEN CASE WHEN ("ADS"."Feature_69" <= 0.9940998554229736) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_17" <= -0.36187705397605896) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_79" <= -0.027673793956637383) THEN CASE WHEN ("ADS"."Feature_53" <= -0.07573623955249786) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_20" <= 0.357879638671875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -85.51429185270395 AS "E" UNION ALL SELECT 4 AS nid, -167.63542374683593 AS "E" UNION ALL SELECT 6 AS nid, -92.37300794483369 AS "E" UNION ALL SELECT 7 AS nid, 48.0373508303457 AS "E" UNION ALL SELECT 10 AS nid, 41.398422030964845 AS "E" UNION ALL SELECT 11 AS nid, -38.63231201479074 AS "E" UNION ALL SELECT 13 AS nid, 27.3176001355772 AS "E" UNION ALL SELECT 14 AS nid, 114.33811274292584 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_88" <= 1.8550121784210205) THEN CASE WHEN ("ADS"."Feature_81" <= 0.9404175281524658) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_55" <= 0.1764853298664093) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_92" <= -1.1308966875076294) THEN CASE WHEN ("ADS"."Feature_37" <= 0.9028956890106201) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.5306899547576904) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -88.60974980486985 AS "E" UNION ALL SELECT 4 AS nid, -12.744809409235376 AS "E" UNION ALL SELECT 6 AS nid, 128.08148843276447 AS "E" UNION ALL SELECT 7 AS nid, 24.396418489461453 AS "E" UNION ALL SELECT 10 AS nid, -49.001931036505745 AS "E" UNION ALL SELECT 11 AS nid, 56.63786601424134 AS "E" UNION ALL SELECT 13 AS nid, 28.179575262824848 AS "E" UNION ALL SELECT 14 AS nid, 97.7534295213522 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6753641366958618) THEN CASE WHEN ("ADS"."Feature_63" <= -0.03640756011009216) THEN CASE WHEN ("ADS"."Feature_98" <= -0.44134199619293213) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_36" <= 0.49447429180145264) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_80" <= 1.5015649795532227) THEN CASE WHEN ("ADS"."Feature_95" <= -0.758402943611145) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_48" <= -1.491168737411499) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -126.75924001583564 AS "E" UNION ALL SELECT 4 AS nid, -62.85697130244644 AS "E" UNION ALL SELECT 6 AS nid, -20.930351632698404 AS "E" UNION ALL SELECT 7 AS nid, 88.42260758197688 AS "E" UNION ALL SELECT 10 AS nid, -71.32424126285527 AS "E" UNION ALL SELECT 11 AS nid, 27.80278345761975 AS "E" UNION ALL SELECT 13 AS nid, -23.88205873080682 AS "E" UNION ALL SELECT 14 AS nid, 109.34348791177808 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_95" <= -0.2669096887111664) THEN CASE WHEN ("ADS"."Feature_63" <= -0.05645234137773514) THEN CASE WHEN ("ADS"."Feature_41" <= -0.03661106899380684) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_66" <= -0.08202850818634033) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.6278812289237976) THEN CASE WHEN ("ADS"."Feature_80" <= 0.679784893989563) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_15" <= -0.04482971504330635) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -93.99300868549963 AS "E" UNION ALL SELECT 4 AS nid, -24.414196642770957 AS "E" UNION ALL SELECT 6 AS nid, -46.85619479898081 AS "E" UNION ALL SELECT 7 AS nid, 43.98578648472594 AS "E" UNION ALL SELECT 10 AS nid, -13.732619488024172 AS "E" UNION ALL SELECT 11 AS nid, 54.38832187751443 AS "E" UNION ALL SELECT 13 AS nid, 37.37067942773186 AS "E" UNION ALL SELECT 14 AS nid, 119.40651264221049 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_88" <= 1.8550121784210205) THEN CASE WHEN ("ADS"."Feature_55" <= 0.8011568188667297) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_89" <= 0.7454819083213806) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_92" <= -1.1308966875076294) THEN CASE WHEN ("ADS"."Feature_94" <= -0.9086097478866577) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_44" <= -1.6248418092727661) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -46.29054098483074 AS "E" UNION ALL SELECT 4 AS nid, -111.54646162817066 AS "E" UNION ALL SELECT 6 AS nid, 20.549760243555752 AS "E" UNION ALL SELECT 7 AS nid, 98.90015861055879 AS "E" UNION ALL SELECT 10 AS nid, 13.135862842611658 AS "E" UNION ALL SELECT 11 AS nid, -51.91086899502939 AS "E" UNION ALL SELECT 13 AS nid, -33.21712489184561 AS "E" UNION ALL SELECT 14 AS nid, 47.69542431288654 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180508182559_CODEGEN_8U5209_GB_B1" ("KEY", "Estimator") SELECT "GB_B1"."KEY", "GB_B1"."Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1"

-- Code For temporary table TMP_20180508182559_CODEGEN_MF9G0D_GB_Union part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182559_CODEGEN_MF9G0D_GB_Union" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508182559_CODEGEN_MF9G0D_GB_Union part 2. Populate

INSERT INTO "TMP_20180508182559_CODEGEN_MF9G0D_GB_Union" ("KEY", "Estimator") SELECT "GB_Union"."KEY", "GB_Union"."Estimator" 
FROM (SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180508182559_CODEGEN_T400O2_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180508182559_CODEGEN_8U5209_GB_B1" AS "GB_B1") AS "GB_EnsembleUnion") AS "GB_Union"

-- Code For temporary table TMP_20180508182559_CODEGEN_LMGFHM_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182559_CODEGEN_LMGFHM_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508182559_CODEGEN_LMGFHM_GB_sum part 2. Populate

INSERT INTO "TMP_20180508182559_CODEGEN_LMGFHM_GB_sum" ("KEY", "Estimator") SELECT "GB_sum"."KEY", "GB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "TMP_20180508182559_CODEGEN_MF9G0D_GB_Union" AS "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum"

-- Code For temporary table TMP_20180508182559_CODEGEN_LMGFHM_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180508182559_CODEGEN_LMGFHM_GB_sum_KEY" ON "TMP_20180508182559_CODEGEN_LMGFHM_GB_sum" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", -11.471614782695335 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180508182559_CODEGEN_LMGFHM_GB_sum" AS "GB_sum"