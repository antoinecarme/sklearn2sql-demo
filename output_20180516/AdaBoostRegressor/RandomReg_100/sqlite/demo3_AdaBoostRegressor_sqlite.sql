-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : RandomReg_100
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516114035_CODEGEN_1HJIMW_WE_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114035_CODEGEN_1HJIMW_WE_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20180516114035_CODEGEN_1HJIMW_WE_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.34553784132003784) THEN CASE WHEN ("ADS"."Feature_41" <= -0.15062880516052246) THEN CASE WHEN ("ADS"."Feature_49" <= 0.33193662762641907) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_81" <= 0.4526126980781555) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_53" <= -0.5890092849731445) THEN CASE WHEN ("ADS"."Feature_37" <= -0.04914991930127144) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= -1.1293261051177979) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -299.55516868188016 AS "E" UNION ALL SELECT 4 AS nid, -439.78883114766336 AS "E" UNION ALL SELECT 6 AS nid, -149.93062882389108 AS "E" UNION ALL SELECT 7 AS nid, 111.60742166947276 AS "E" UNION ALL SELECT 10 AS nid, 319.6456319352328 AS "E" UNION ALL SELECT 11 AS nid, 108.14981384071251 AS "E" UNION ALL SELECT 13 AS nid, -74.03087422300632 AS "E" UNION ALL SELECT 14 AS nid, 120.35070981059704 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", 0.0662842423356548 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_13" <= -0.9841643571853638) THEN CASE WHEN ("ADS"."Feature_90" <= -0.863237738609314) THEN CASE WHEN ("ADS"."Feature_25" <= -1.2677878141403198) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_13" <= -1.1559348106384277) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_49" <= -0.7116714715957642) THEN CASE WHEN ("ADS"."Feature_62" <= 0.45676225423812866) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_74" <= -0.3884258568286896) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 75.60702200307296 AS "E" UNION ALL SELECT 4 AS nid, 419.8117904787066 AS "E" UNION ALL SELECT 6 AS nid, -150.50585850810697 AS "E" UNION ALL SELECT 7 AS nid, -334.8676350174931 AS "E" UNION ALL SELECT 10 AS nid, 79.09631375271496 AS "E" UNION ALL SELECT 11 AS nid, -169.73339035166558 AS "E" UNION ALL SELECT 13 AS nid, 89.9551260739289 AS "E" UNION ALL SELECT 14 AS nid, 232.21531580410792 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", 0.0576482692120721 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_80" <= -0.24700424075126648) THEN CASE WHEN ("ADS"."Feature_91" <= -0.2744545042514801) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_66" <= 0.8733834028244019) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_89" <= 0.9215834140777588) THEN CASE WHEN ("ADS"."Feature_60" <= -0.7706659436225891) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_31" <= -0.3869132399559021) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -422.76491839408925 AS "E" UNION ALL SELECT 4 AS nid, -243.53908567938973 AS "E" UNION ALL SELECT 6 AS nid, -81.38465826950127 AS "E" UNION ALL SELECT 7 AS nid, 233.33694106574706 AS "E" UNION ALL SELECT 10 AS nid, -56.83957441014503 AS "E" UNION ALL SELECT 11 AS nid, 134.62937712576715 AS "E" UNION ALL SELECT 13 AS nid, -280.96508601336274 AS "E" UNION ALL SELECT 14 AS nid, -153.06328093387233 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", 0.05571332269059435 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_80" <= 1.2518916130065918) THEN CASE WHEN ("ADS"."Feature_45" <= 0.46917635202407837) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_77" <= 0.6920472383499146) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= -0.5033579468727112) THEN CASE WHEN ("ADS"."Feature_57" <= -0.4445692002773285) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_49" <= -1.5119811296463013) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -359.3225987208778 AS "E" UNION ALL SELECT 4 AS nid, -218.33311725313078 AS "E" UNION ALL SELECT 6 AS nid, 327.27619652811467 AS "E" UNION ALL SELECT 7 AS nid, 48.423335696929506 AS "E" UNION ALL SELECT 10 AS nid, -165.08085766797484 AS "E" UNION ALL SELECT 11 AS nid, -16.45296535992008 AS "E" UNION ALL SELECT 13 AS nid, -104.86554844683326 AS "E" UNION ALL SELECT 14 AS nid, 175.4532994575898 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", 0.06142148173446328 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_88" <= -0.8855451941490173) THEN CASE WHEN ("ADS"."Feature_65" <= -0.18200907111167908) THEN CASE WHEN ("ADS"."Feature_39" <= 1.5304360389709473) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_95" <= -0.758402943611145) THEN CASE WHEN ("ADS"."Feature_66" <= 0.25202929973602295) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_80" <= -0.7997870445251465) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 245.21860440601063 AS "E" UNION ALL SELECT 4 AS nid, 305.0402047722153 AS "E" UNION ALL SELECT 5 AS nid, 419.81179047870665 AS "E" UNION ALL SELECT 8 AS nid, -173.73866973283788 AS "E" UNION ALL SELECT 9 AS nid, -387.5326881456799 AS "E" UNION ALL SELECT 11 AS nid, -106.36961064660952 AS "E" UNION ALL SELECT 12 AS nid, 80.25033909068998 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", 0.06926725469721884 AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6633224487304688) THEN CASE WHEN ("ADS"."Feature_63" <= -0.04059891402721405) THEN CASE WHEN ("ADS"."Feature_92" <= -0.10441219806671143) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_41" <= -0.36463797092437744) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_44" <= -0.9893494844436646) THEN CASE WHEN ("ADS"."Feature_83" <= -0.05271312594413757) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.4291309118270874) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -250.1411376723568 AS "E" UNION ALL SELECT 4 AS nid, -431.1969669859277 AS "E" UNION ALL SELECT 6 AS nid, -194.4689573946363 AS "E" UNION ALL SELECT 7 AS nid, 39.53652680210184 AS "E" UNION ALL SELECT 10 AS nid, -52.26649363412389 AS "E" UNION ALL SELECT 11 AS nid, -166.33878820731078 AS "E" UNION ALL SELECT 13 AS nid, 198.9904787086985 AS "E" UNION ALL SELECT 14 AS nid, -34.15921261125043 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", 0.05536112300519518 AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_63" <= -0.3170818090438843) THEN CASE WHEN ("ADS"."Feature_96" <= 1.3153736591339111) THEN CASE WHEN ("ADS"."Feature_49" <= 0.9990737438201904) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_67" <= 0.5289682149887085) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_69" <= 0.08657990396022797) THEN CASE WHEN ("ADS"."Feature_79" <= -0.23458990454673767) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_43" <= -0.45903992652893066) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -146.81309318434305 AS "E" UNION ALL SELECT 4 AS nid, 234.75877165475936 AS "E" UNION ALL SELECT 6 AS nid, -436.89308608869476 AS "E" UNION ALL SELECT 7 AS nid, -454.8215873712685 AS "E" UNION ALL SELECT 10 AS nid, 48.7762016183392 AS "E" UNION ALL SELECT 11 AS nid, 265.5272995551691 AS "E" UNION ALL SELECT 13 AS nid, -202.30311906307523 AS "E" UNION ALL SELECT 14 AS nid, 59.00190945501265 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", 0.06895166935934854 AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_41" <= -0.5153412222862244) THEN CASE WHEN ("ADS"."Feature_55" <= 0.7472752332687378) THEN CASE WHEN ("ADS"."Feature_79" <= 0.7658234238624573) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_15" <= 1.3074146509170532) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_95" <= -0.4157814681529999) THEN CASE WHEN ("ADS"."Feature_32" <= -0.8026922941207886) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= 1.2976652383804321) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -246.1786931426876 AS "E" UNION ALL SELECT 4 AS nid, -52.10870342095156 AS "E" UNION ALL SELECT 6 AS nid, -437.5246838653099 AS "E" UNION ALL SELECT 7 AS nid, -327.50301874204285 AS "E" UNION ALL SELECT 10 AS nid, 117.89556480946582 AS "E" UNION ALL SELECT 11 AS nid, -171.36829448707329 AS "E" UNION ALL SELECT 13 AS nid, 104.24162385615097 AS "E" UNION ALL SELECT 14 AS nid, 327.0201989083299 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", 0.06154726925609073 AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_95" <= -0.2972280979156494) THEN CASE WHEN ("ADS"."Feature_1" <= -1.393744945526123) THEN CASE WHEN ("ADS"."Feature_56" <= -0.9485934972763062) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_41" <= -0.5469627380371094) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_79" <= 0.3004913330078125) THEN CASE WHEN ("ADS"."Feature_68" <= -0.2486875355243683) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_69" <= -0.7042298316955566) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 212.81710450150226 AS "E" UNION ALL SELECT 4 AS nid, 219.92766037620171 AS "E" UNION ALL SELECT 6 AS nid, -357.0894177181091 AS "E" UNION ALL SELECT 7 AS nid, -160.98488985685765 AS "E" UNION ALL SELECT 10 AS nid, -135.17627509375765 AS "E" UNION ALL SELECT 11 AS nid, 85.26034557003274 AS "E" UNION ALL SELECT 13 AS nid, 277.81274127427787 AS "E" UNION ALL SELECT 14 AS nid, 125.55647826963536 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", 0.049941690054889035 AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_63" <= 0.4602121114730835) THEN CASE WHEN ("ADS"."Feature_41" <= -0.14402875304222107) THEN CASE WHEN ("ADS"."Feature_80" <= -0.31594058871269226) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_93" <= -0.7789497375488281) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_11" <= -1.0486905574798584) THEN CASE WHEN ("ADS"."Feature_13" <= 0.3548305928707123) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_69" <= -0.44060736894607544) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -283.74889504755856 AS "E" UNION ALL SELECT 4 AS nid, -109.5863292926706 AS "E" UNION ALL SELECT 6 AS nid, 247.11490781997932 AS "E" UNION ALL SELECT 7 AS nid, -64.3641298000168 AS "E" UNION ALL SELECT 10 AS nid, -186.18029669535417 AS "E" UNION ALL SELECT 11 AS nid, -146.53732849176905 AS "E" UNION ALL SELECT 13 AS nid, 267.0025306442181 AS "E" UNION ALL SELECT 14 AS nid, 142.6334358229316 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", 0.059550659864497 AS "Weight", 9 AS est_index 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516114035_CODEGEN_1HJIMW_WE_B0" ("KEY", "Estimator", "Weight", est_index) SELECT "WE_B0"."KEY", "WE_B0"."Estimator", "WE_B0"."Weight", "WE_B0".est_index 
FROM (SELECT "WE_esu_0"."KEY" AS "KEY", "WE_esu_0"."Estimator" AS "Estimator", "WE_esu_0"."Weight" AS "Weight", "WE_esu_0".est_index AS est_index 
FROM (SELECT "ADB_Model_0"."KEY" AS "KEY", "ADB_Model_0"."Estimator" AS "Estimator", "ADB_Model_0"."Weight" AS "Weight", "ADB_Model_0".est_index AS est_index 
FROM "ADB_Model_0" UNION ALL SELECT "ADB_Model_1"."KEY" AS "KEY", "ADB_Model_1"."Estimator" AS "Estimator", "ADB_Model_1"."Weight" AS "Weight", "ADB_Model_1".est_index AS est_index 
FROM "ADB_Model_1" UNION ALL SELECT "ADB_Model_2"."KEY" AS "KEY", "ADB_Model_2"."Estimator" AS "Estimator", "ADB_Model_2"."Weight" AS "Weight", "ADB_Model_2".est_index AS est_index 
FROM "ADB_Model_2" UNION ALL SELECT "ADB_Model_3"."KEY" AS "KEY", "ADB_Model_3"."Estimator" AS "Estimator", "ADB_Model_3"."Weight" AS "Weight", "ADB_Model_3".est_index AS est_index 
FROM "ADB_Model_3" UNION ALL SELECT "ADB_Model_4"."KEY" AS "KEY", "ADB_Model_4"."Estimator" AS "Estimator", "ADB_Model_4"."Weight" AS "Weight", "ADB_Model_4".est_index AS est_index 
FROM "ADB_Model_4" UNION ALL SELECT "ADB_Model_5"."KEY" AS "KEY", "ADB_Model_5"."Estimator" AS "Estimator", "ADB_Model_5"."Weight" AS "Weight", "ADB_Model_5".est_index AS est_index 
FROM "ADB_Model_5" UNION ALL SELECT "ADB_Model_6"."KEY" AS "KEY", "ADB_Model_6"."Estimator" AS "Estimator", "ADB_Model_6"."Weight" AS "Weight", "ADB_Model_6".est_index AS est_index 
FROM "ADB_Model_6" UNION ALL SELECT "ADB_Model_7"."KEY" AS "KEY", "ADB_Model_7"."Estimator" AS "Estimator", "ADB_Model_7"."Weight" AS "Weight", "ADB_Model_7".est_index AS est_index 
FROM "ADB_Model_7" UNION ALL SELECT "ADB_Model_8"."KEY" AS "KEY", "ADB_Model_8"."Estimator" AS "Estimator", "ADB_Model_8"."Weight" AS "Weight", "ADB_Model_8".est_index AS est_index 
FROM "ADB_Model_8" UNION ALL SELECT "ADB_Model_9"."KEY" AS "KEY", "ADB_Model_9"."Estimator" AS "Estimator", "ADB_Model_9"."Weight" AS "Weight", "ADB_Model_9".est_index AS est_index 
FROM "ADB_Model_9") AS "WE_esu_0") AS "WE_B0"

-- Code For temporary table TMP_20180516114035_CODEGEN_QZYBD3_WE_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114035_CODEGEN_QZYBD3_WE_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20180516114035_CODEGEN_QZYBD3_WE_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_63" <= -0.8221249580383301) THEN CASE WHEN ("ADS"."Feature_56" <= -0.36408668756484985) THEN CASE WHEN ("ADS"."Feature_78" <= 0.6419654488563538) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_78" <= 0.9275895357131958) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_80" <= 0.9317564964294434) THEN CASE WHEN ("ADS"."Feature_65" <= 0.9399657249450684) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_93" <= 0.2717847526073456) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -46.89741779569693 AS "E" UNION ALL SELECT 4 AS nid, 128.74971924769997 AS "E" UNION ALL SELECT 6 AS nid, -194.64536551564441 AS "E" UNION ALL SELECT 7 AS nid, -432.78585670839794 AS "E" UNION ALL SELECT 10 AS nid, 26.278419883211438 AS "E" UNION ALL SELECT 11 AS nid, -250.18297267655564 AS "E" UNION ALL SELECT 13 AS nid, 213.40502898228738 AS "E" UNION ALL SELECT 14 AS nid, 347.2842238497908 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", 0.0718035611011946 AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.6753641366958618) THEN CASE WHEN ("ADS"."Feature_52" <= 1.4058172702789307) THEN CASE WHEN ("ADS"."Feature_96" <= 0.8706262111663818) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_43" <= -1.2496120929718018) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_17" <= -0.36187705397605896) THEN CASE WHEN ("ADS"."Feature_95" <= 0.3182663917541504) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_20" <= 0.6378058195114136) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -254.39888647855693 AS "E" UNION ALL SELECT 4 AS nid, -427.51192244368093 AS "E" UNION ALL SELECT 6 AS nid, -86.11645147491663 AS "E" UNION ALL SELECT 7 AS nid, 215.90083761986224 AS "E" UNION ALL SELECT 10 AS nid, -80.6416086866768 AS "E" UNION ALL SELECT 11 AS nid, 169.16897281669048 AS "E" UNION ALL SELECT 13 AS nid, 167.85216124440603 AS "E" UNION ALL SELECT 14 AS nid, 310.86621384651613 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", 0.06519009096675096 AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_91" <= -0.040150485932826996) THEN CASE WHEN ("ADS"."Feature_19" <= -0.6786158084869385) THEN CASE WHEN ("ADS"."Feature_37" <= 0.039794497191905975) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_41" <= -0.3415294885635376) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_39" <= 0.3670928478240967) THEN CASE WHEN ("ADS"."Feature_62" <= 0.38502657413482666) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_80" <= 1.693086862564087) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 128.70994156313017 AS "E" UNION ALL SELECT 4 AS nid, -84.88591152141443 AS "E" UNION ALL SELECT 6 AS nid, -360.0761788021789 AS "E" UNION ALL SELECT 7 AS nid, -176.06805164953155 AS "E" UNION ALL SELECT 10 AS nid, 49.17610059789685 AS "E" UNION ALL SELECT 11 AS nid, -174.6693610135026 AS "E" UNION ALL SELECT 13 AS nid, 208.40677806881985 AS "E" UNION ALL SELECT 14 AS nid, 419.81179047870665 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", 0.06452696916181104 AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_63" <= 0.25588664412498474) THEN CASE WHEN ("ADS"."Feature_80" <= -0.34553784132003784) THEN CASE WHEN ("ADS"."Feature_18" <= -0.3967856764793396) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" <= -0.09503273665904999) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_59" <= -0.7684159278869629) THEN CASE WHEN ("ADS"."Feature_47" <= 1.3490431308746338) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_27" <= 0.3713006377220154) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -416.9696088757073 AS "E" UNION ALL SELECT 4 AS nid, -178.1208998678555 AS "E" UNION ALL SELECT 6 AS nid, -95.51114924846917 AS "E" UNION ALL SELECT 7 AS nid, 68.03071719681672 AS "E" UNION ALL SELECT 10 AS nid, -38.114295082326265 AS "E" UNION ALL SELECT 11 AS nid, -257.9792248911822 AS "E" UNION ALL SELECT 13 AS nid, 256.49688781095426 AS "E" UNION ALL SELECT 14 AS nid, 119.43164365651639 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", 0.06240374788626324 AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.7656269073486328) THEN CASE WHEN ("ADS"."Feature_1" <= -0.30887019634246826) THEN CASE WHEN ("ADS"."Feature_29" <= 0.12952925264835358) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_55" <= 1.3508002758026123) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_33" <= -0.292339950799942) THEN CASE WHEN ("ADS"."Feature_47" <= -0.5029033422470093) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.4565832018852234) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -311.3240743964379 AS "E" UNION ALL SELECT 4 AS nid, -454.8215873712685 AS "E" UNION ALL SELECT 6 AS nid, -140.76117130611314 AS "E" UNION ALL SELECT 7 AS nid, 172.79513511576155 AS "E" UNION ALL SELECT 10 AS nid, -180.97543591851664 AS "E" UNION ALL SELECT 11 AS nid, 62.882494629935834 AS "E" UNION ALL SELECT 13 AS nid, 179.37907527259367 AS "E" UNION ALL SELECT 14 AS nid, -66.78234314356789 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", 0.07077177190417273 AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= -0.25653302669525146) THEN CASE WHEN ("ADS"."Feature_41" <= -0.5217077136039734) THEN CASE WHEN ("ADS"."Feature_62" <= 1.211120367050171) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= -0.7036556005477905) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_41" <= -0.8709725737571716) THEN CASE WHEN ("ADS"."Feature_60" <= 0.2611076533794403) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_78" <= -0.8572570085525513) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, -381.9745888498094 AS "E" UNION ALL SELECT 4 AS nid, -208.7579662950499 AS "E" UNION ALL SELECT 6 AS nid, 110.77904144712802 AS "E" UNION ALL SELECT 7 AS nid, -120.33010917423199 AS "E" UNION ALL SELECT 10 AS nid, -83.49561556211482 AS "E" UNION ALL SELECT 11 AS nid, 59.62618655916408 AS "E" UNION ALL SELECT 13 AS nid, -75.64447824421846 AS "E" UNION ALL SELECT 14 AS nid, 236.27379253268913 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", 0.059616876769783576 AS "Weight", 15 AS est_index 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516114035_CODEGEN_QZYBD3_WE_B1" ("KEY", "Estimator", "Weight", est_index) SELECT "WE_B1"."KEY", "WE_B1"."Estimator", "WE_B1"."Weight", "WE_B1".est_index 
FROM (SELECT "WE_esu_1"."KEY" AS "KEY", "WE_esu_1"."Estimator" AS "Estimator", "WE_esu_1"."Weight" AS "Weight", "WE_esu_1".est_index AS est_index 
FROM (SELECT "ADB_Model_10"."KEY" AS "KEY", "ADB_Model_10"."Estimator" AS "Estimator", "ADB_Model_10"."Weight" AS "Weight", "ADB_Model_10".est_index AS est_index 
FROM "ADB_Model_10" UNION ALL SELECT "ADB_Model_11"."KEY" AS "KEY", "ADB_Model_11"."Estimator" AS "Estimator", "ADB_Model_11"."Weight" AS "Weight", "ADB_Model_11".est_index AS est_index 
FROM "ADB_Model_11" UNION ALL SELECT "ADB_Model_12"."KEY" AS "KEY", "ADB_Model_12"."Estimator" AS "Estimator", "ADB_Model_12"."Weight" AS "Weight", "ADB_Model_12".est_index AS est_index 
FROM "ADB_Model_12" UNION ALL SELECT "ADB_Model_13"."KEY" AS "KEY", "ADB_Model_13"."Estimator" AS "Estimator", "ADB_Model_13"."Weight" AS "Weight", "ADB_Model_13".est_index AS est_index 
FROM "ADB_Model_13" UNION ALL SELECT "ADB_Model_14"."KEY" AS "KEY", "ADB_Model_14"."Estimator" AS "Estimator", "ADB_Model_14"."Weight" AS "Weight", "ADB_Model_14".est_index AS est_index 
FROM "ADB_Model_14" UNION ALL SELECT "ADB_Model_15"."KEY" AS "KEY", "ADB_Model_15"."Estimator" AS "Estimator", "ADB_Model_15"."Weight" AS "Weight", "ADB_Model_15".est_index AS est_index 
FROM "ADB_Model_15") AS "WE_esu_1") AS "WE_B1"

-- Code For temporary table TMP_20180516114035_CODEGEN_QZD3MR_Quantiles part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114035_CODEGEN_QZD3MR_Quantiles" (
	"KEY" BIGINT, 
	"Quantile" FLOAT
)



-- Code For temporary table TMP_20180516114035_CODEGEN_QZD3MR_Quantiles part 2. Populate

WITH "WE_Union" AS 
(SELECT "WE_EnsembleUnion"."KEY" AS "KEY", "WE_EnsembleUnion"."Estimator" AS "Estimator", "WE_EnsembleUnion"."Weight" AS "Weight", "WE_EnsembleUnion".est_index AS est_index 
FROM (SELECT "WE_B0"."KEY" AS "KEY", "WE_B0"."Estimator" AS "Estimator", "WE_B0"."Weight" AS "Weight", "WE_B0".est_index AS est_index 
FROM "TMP_20180516114035_CODEGEN_1HJIMW_WE_B0" AS "WE_B0" UNION ALL SELECT "WE_B1"."KEY" AS "KEY", "WE_B1"."Estimator" AS "Estimator", "WE_B1"."Weight" AS "Weight", "WE_B1".est_index AS est_index 
FROM "TMP_20180516114035_CODEGEN_QZYBD3_WE_B1" AS "WE_B1") AS "WE_EnsembleUnion"), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WE_Union" AS u1, "WE_Union" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW")
 INSERT INTO "TMP_20180516114035_CODEGEN_QZD3MR_Quantiles" ("KEY", "Quantile") SELECT "Quantiles"."KEY", "Quantiles"."Quantile" 
FROM (SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles"

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "TMP_20180516114035_CODEGEN_QZD3MR_Quantiles" AS "Quantiles"