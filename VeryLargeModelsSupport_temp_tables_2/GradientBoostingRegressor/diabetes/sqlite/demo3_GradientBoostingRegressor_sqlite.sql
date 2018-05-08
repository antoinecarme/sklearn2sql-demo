-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : diabetes
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508183350_CODEGEN_A5M4VP_GB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183350_CODEGEN_A5M4VP_GB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508183350_CODEGEN_A5M4VP_GB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.05576823651790619) THEN CASE WHEN ("ADS"."Feature_3" <= 0.037365272641181946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -56.26206018803645 AS "E" UNION ALL SELECT 4 AS nid, 98.92634560906515 AS "E" UNION ALL SELECT 6 AS nid, 147.92634560906515 AS "E" UNION ALL SELECT 7 AS nid, 4.5749942577138 AS "E" UNION ALL SELECT 10 AS nid, 10.468012275731821 AS "E" UNION ALL SELECT 11 AS nid, 58.92634560906521 AS "E" UNION ALL SELECT 13 AS nid, 122.05134560906521 AS "E" UNION ALL SELECT 14 AS nid, 66.05134560906515 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.00016888421669136733) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_2" <= -0.021834230050444603) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -37.89909893573828 AS "E" UNION ALL SELECT 4 AS nid, -63.205024129706885 AS "E" UNION ALL SELECT 6 AS nid, 133.13371104815863 AS "E" UNION ALL SELECT 7 AS nid, 4.117494831942426 AS "E" UNION ALL SELECT 10 AS nid, -14.908867076841354 AS "E" UNION ALL SELECT 11 AS nid, 31.375443762530647 AS "E" UNION ALL SELECT 13 AS nid, 108.54701233020995 AS "E" UNION ALL SELECT 14 AS nid, 54.678457424970226 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03625963628292084) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_3" <= 0.037365272641181946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -49.766609329091665 AS "E" UNION ALL SELECT 4 AS nid, 92.82362094173246 AS "E" UNION ALL SELECT 6 AS nid, 17.59555823856106 AS "E" UNION ALL SELECT 7 AS nid, -45.60956996656714 AS "E" UNION ALL SELECT 10 AS nid, 7.324309607101877 AS "E" UNION ALL SELECT 11 AS nid, 50.25051607768055 AS "E" UNION ALL SELECT 13 AS nid, 110.4290098151377 AS "E" UNION ALL SELECT 14 AS nid, 68.87188634151958 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.0007076415931805968) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.019717179238796234) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_2" <= -0.021834230050444603) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.038333673030138016) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -29.566777184999317 AS "E" UNION ALL SELECT 4 AS nid, -52.40540745223855 AS "E" UNION ALL SELECT 6 AS nid, -19.417554600564845 AS "E" UNION ALL SELECT 7 AS nid, 20.648083697077226 AS "E" UNION ALL SELECT 10 AS nid, -14.821133305970204 AS "E" UNION ALL SELECT 11 AS nid, 26.37345823008113 AS "E" UNION ALL SELECT 13 AS nid, 84.93432962632869 AS "E" UNION ALL SELECT 14 AS nid, 37.90132752479809 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03625963628292084) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_8" <= 0.044254668056964874) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= -0.020144322887063026) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -40.71874552064134 AS "E" UNION ALL SELECT 4 AS nid, 86.49793656605914 AS "E" UNION ALL SELECT 6 AS nid, 15.312180133368075 AS "E" UNION ALL SELECT 7 AS nid, -41.110139424736026 AS "E" UNION ALL SELECT 10 AS nid, 4.746341702913099 AS "E" UNION ALL SELECT 11 AS nid, 42.05141431656916 AS "E" UNION ALL SELECT 13 AS nid, 119.83017587099098 AS "E" UNION ALL SELECT 14 AS nid, 69.47888906512253 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_3" <= 0.11827273666858673) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03262709826231003) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_3" <= 0.037365272641181946) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.052737556397914886) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -36.69086722310085 AS "E" UNION ALL SELECT 4 AS nid, 83.34767472491586 AS "E" UNION ALL SELECT 6 AS nid, 14.783877471914003 AS "E" UNION ALL SELECT 7 AS nid, -33.32666779580165 AS "E" UNION ALL SELECT 10 AS nid, 3.8042906775333662 AS "E" UNION ALL SELECT 11 AS nid, 40.23523176236177 AS "E" UNION ALL SELECT 13 AS nid, 19.711765593120287 AS "E" UNION ALL SELECT 14 AS nid, 75.43609750017679 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.021657448261976242) THEN CASE WHEN ("ADS"."Feature_2" <= 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03135676681995392) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.016708049923181534) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.06261299550533295) THEN CASE WHEN ("ADS"."Feature_6" <= -0.045241665095090866) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= 0.08966054022312164) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -31.279874986673047 AS "E" UNION ALL SELECT 4 AS nid, 2.4527301036017364 AS "E" UNION ALL SELECT 6 AS nid, -8.30307922706563 AS "E" UNION ALL SELECT 7 AS nid, 39.13706168830357 AS "E" UNION ALL SELECT 10 AS nid, 52.50060169065488 AS "E" UNION ALL SELECT 11 AS nid, 8.413298807774964 AS "E" UNION ALL SELECT 13 AS nid, 75.78197438705396 AS "E" UNION ALL SELECT 14 AS nid, 25.68904818988106 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.051995899528265) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.013265177607536316) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.07031869888305664) THEN CASE WHEN ("ADS"."Feature_3" <= 0.03851289674639702) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.022485405206680298) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -17.42636935752086 AS "E" UNION ALL SELECT 4 AS nid, -36.986863239305734 AS "E" UNION ALL SELECT 6 AS nid, -18.034420078142336 AS "E" UNION ALL SELECT 7 AS nid, 80.70942057717716 AS "E" UNION ALL SELECT 10 AS nid, 2.9134087249073 AS "E" UNION ALL SELECT 11 AS nid, 33.8014852495471 AS "E" UNION ALL SELECT 13 AS nid, 75.18125910884453 AS "E" UNION ALL SELECT 14 AS nid, 40.167650576359556 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.021657448261976242) THEN CASE WHEN ("ADS"."Feature_2" <= 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03135676681995392) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.016708049923181534) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.06261299550533295) THEN CASE WHEN ("ADS"."Feature_6" <= -0.045241665095090866) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.09967650473117828) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -26.117185459809097 AS "E" UNION ALL SELECT 4 AS nid, 2.1900367455021534 AS "E" UNION ALL SELECT 6 AS nid, -6.346655746923815 AS "E" UNION ALL SELECT 7 AS nid, 32.9936028985348 AS "E" UNION ALL SELECT 10 AS nid, 45.40469807715848 AS "E" UNION ALL SELECT 11 AS nid, 5.976521749405776 AS "E" UNION ALL SELECT 13 AS nid, 62.31807548501923 AS "E" UNION ALL SELECT 14 AS nid, 8.823510772118468 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_2" <= 0.051995899528265) THEN CASE WHEN ("ADS"."Feature_7" <= 0.061984702944755554) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.013265177607536316) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.03413021191954613) THEN CASE WHEN ("ADS"."Feature_3" <= -0.04813268035650253) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.005111072678118944) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -23.0931689623177 AS "E" UNION ALL SELECT 4 AS nid, 40.281136267916146 AS "E" UNION ALL SELECT 6 AS nid, -15.596312495635733 AS "E" UNION ALL SELECT 7 AS nid, 69.33911822960594 AS "E" UNION ALL SELECT 10 AS nid, -30.77310860197734 AS "E" UNION ALL SELECT 11 AS nid, 10.467580885327717 AS "E" UNION ALL SELECT 13 AS nid, 6.807544145521914 AS "E" UNION ALL SELECT 14 AS nid, 48.92363191950647 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180508183350_CODEGEN_A5M4VP_GB_B0" ("KEY", "Estimator") SELECT "GB_B0"."KEY", "GB_B0"."Estimator" 
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

-- Code For temporary table TMP_20180508183350_CODEGEN_GSFP12_GB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183350_CODEGEN_GSFP12_GB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508183350_CODEGEN_GSFP12_GB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.009422320872545242) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03061874583363533) THEN CASE WHEN ("ADS"."Feature_8" <= 0.027040982618927956) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.041246943175792694) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.02359379082918167) THEN CASE WHEN ("ADS"."Feature_9" <= 0.029988106340169907) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.03199999779462814) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -22.496425090209065 AS "E" UNION ALL SELECT 4 AS nid, 14.89484728109519 AS "E" UNION ALL SELECT 6 AS nid, -39.12894278887687 AS "E" UNION ALL SELECT 7 AS nid, 18.976138100439222 AS "E" UNION ALL SELECT 10 AS nid, -6.074903248575574 AS "E" UNION ALL SELECT 11 AS nid, 33.75354539493074 AS "E" UNION ALL SELECT 13 AS nid, -44.26487040338847 AS "E" UNION ALL SELECT 14 AS nid, 41.60118015827299 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.009422320872545242) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03061874583363533) THEN CASE WHEN ("ADS"."Feature_5" <= -0.047346703708171844) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.008829440921545029) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.02359379082918167) THEN CASE WHEN ("ADS"."Feature_6" <= -0.07101312279701233) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.042962126433849335) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.726166201237744 AS "E" UNION ALL SELECT 4 AS nid, -22.865887420805546 AS "E" UNION ALL SELECT 6 AS nid, -38.32849375836015 AS "E" UNION ALL SELECT 7 AS nid, 17.55215726297349 AS "E" UNION ALL SELECT 10 AS nid, 82.74020216266568 AS "E" UNION ALL SELECT 11 AS nid, 1.0395187410446005 AS "E" UNION ALL SELECT 13 AS nid, -75.03019223138226 AS "E" UNION ALL SELECT 14 AS nid, 36.06113962975183 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.016671042889356613) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.04769385606050491) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.06261299550533295) THEN CASE WHEN ("ADS"."Feature_7" <= 0.09999285638332367) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.0036982859019190073) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -8.112854852767265 AS "E" UNION ALL SELECT 4 AS nid, -26.668026113701202 AS "E" UNION ALL SELECT 6 AS nid, 14.271112732068888 AS "E" UNION ALL SELECT 7 AS nid, -34.95077611886939 AS "E" UNION ALL SELECT 10 AS nid, 4.6271898771974485 AS "E" UNION ALL SELECT 11 AS nid, 53.573970024713866 AS "E" UNION ALL SELECT 13 AS nid, 17.941526241429177 AS "E" UNION ALL SELECT 14 AS nid, 51.356387663010125 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_8" <= -0.04327875375747681) THEN CASE WHEN ("ADS"."Feature_0" <= -0.03820740059018135) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_4" <= -0.0545431450009346) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.03413021191954613) THEN CASE WHEN ("ADS"."Feature_3" <= -0.059035107493400574) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.06366442888975143) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -9.629104898627563 AS "E" UNION ALL SELECT 4 AS nid, -34.99450493751931 AS "E" UNION ALL SELECT 6 AS nid, 33.44674128871671 AS "E" UNION ALL SELECT 7 AS nid, -10.547161435064588 AS "E" UNION ALL SELECT 10 AS nid, -37.126802786338196 AS "E" UNION ALL SELECT 11 AS nid, 5.7196996000905775 AS "E" UNION ALL SELECT 13 AS nid, 32.80864199858613 AS "E" UNION ALL SELECT 14 AS nid, -4.234591496761688 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.009422320872545242) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN CASE WHEN ("ADS"."Feature_9" <= 0.09626181423664093) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.043524712324142456) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.02359379082918167) THEN CASE WHEN ("ADS"."Feature_2" <= 0.029361844062805176) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= -0.030139416456222534) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -2.6856598788351502 AS "E" UNION ALL SELECT 4 AS nid, 70.3102458897569 AS "E" UNION ALL SELECT 6 AS nid, -25.536629455101842 AS "E" UNION ALL SELECT 7 AS nid, -2.1835425615964903 AS "E" UNION ALL SELECT 10 AS nid, 25.252727647580905 AS "E" UNION ALL SELECT 11 AS nid, -7.060625551241057 AS "E" UNION ALL SELECT 13 AS nid, -31.127167602351324 AS "E" UNION ALL SELECT 14 AS nid, 30.749236372670346 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_8" <= -0.04327875375747681) THEN CASE WHEN ("ADS"."Feature_9" <= -0.0735645666718483) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= -0.0475032776594162) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.023859284818172455) THEN CASE WHEN ("ADS"."Feature_3" <= -0.0005063045537099242) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.04985411837697029) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 1.7413990878232934 AS "E" UNION ALL SELECT 4 AS nid, -27.484854187585665 AS "E" UNION ALL SELECT 6 AS nid, 26.647660932753837 AS "E" UNION ALL SELECT 7 AS nid, -4.382408064172256 AS "E" UNION ALL SELECT 10 AS nid, -71.38797229032185 AS "E" UNION ALL SELECT 11 AS nid, 22.13999113847224 AS "E" UNION ALL SELECT 13 AS nid, -11.875005024029093 AS "E" UNION ALL SELECT 14 AS nid, 31.009833834037707 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180508183350_CODEGEN_GSFP12_GB_B1" ("KEY", "Estimator") SELECT "GB_B1"."KEY", "GB_B1"."Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1"

-- Code For temporary table TMP_20180508183350_CODEGEN_P4GN7B_GB_Union part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183350_CODEGEN_P4GN7B_GB_Union" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180508183350_CODEGEN_P4GN7B_GB_Union part 2. Populate

INSERT INTO "TMP_20180508183350_CODEGEN_P4GN7B_GB_Union" ("KEY", "Estimator") SELECT "GB_Union"."KEY", "GB_Union"."Estimator" 
FROM (SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180508183350_CODEGEN_A5M4VP_GB_B0" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180508183350_CODEGEN_GSFP12_GB_B1" AS "GB_B1") AS "GB_EnsembleUnion") AS "GB_Union"

-- Code For temporary table TMP_20180508183350_CODEGEN_6MB8NV_GB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183350_CODEGEN_6MB8NV_GB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508183350_CODEGEN_6MB8NV_GB_sum part 2. Populate

INSERT INTO "TMP_20180508183350_CODEGEN_6MB8NV_GB_sum" ("KEY", "Estimator") SELECT "GB_sum"."KEY", "GB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "TMP_20180508183350_CODEGEN_P4GN7B_GB_Union" AS "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum"

-- Code For temporary table TMP_20180508183350_CODEGEN_6MB8NV_GB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180508183350_CODEGEN_6MB8NV_GB_sum_KEY" ON "TMP_20180508183350_CODEGEN_6MB8NV_GB_sum" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 154.07365439093485 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180508183350_CODEGEN_6MB8NV_GB_sum" AS "GB_sum"