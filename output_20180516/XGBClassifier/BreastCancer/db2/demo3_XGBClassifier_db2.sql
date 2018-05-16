-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBClassifier
-- Dataset : BreastCancer
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112035_codegen_qwnwdc_xgb_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516112035_codegen_qwnwdc_xgb_b0 (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516112035_codegen_qwnwdc_xgb_b0 part 2. Populate

INSERT INTO tmp_20180516112035_codegen_qwnwdc_xgb_b0 WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.14544999599456787) THEN CASE WHEN ("ADS"."Feature_22" < 105.85000610351562) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" < 15.260000228881836) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1926199346780777 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.03478261083364487 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.12727272510528564 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.19272726774215698 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.14544999599456787) THEN CASE WHEN ("ADS"."Feature_13" < 33.00499725341797) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_20" < 18.420000076293945) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.17632412910461426 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.028210192918777466 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.11695275455713272 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.17597316205501556 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 114.39999389648438) THEN CASE WHEN ("ADS"."Feature_27" < 0.1297999918460846) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.15892711281776428 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.16254661977291107 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.0025618381332606077 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.14544999599456787) THEN CASE WHEN ("ADS"."Feature_13" < 33.00499725341797) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_21" < 26.19499969482422) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1533551663160324 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.02111710235476494 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.1014096662402153 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.15645359456539154 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 114.39999389648438) THEN CASE WHEN ("ADS"."Feature_7" < 0.04891999810934067) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.14159958064556122 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.14474166929721832 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.007800843566656113 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 117.44999694824219) THEN CASE WHEN ("ADS"."Feature_27" < 0.13234999775886536) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.14109736680984497 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.1364816427230835 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.014269627630710602 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 112.80000305175781) THEN CASE WHEN ("ADS"."Feature_27" < 0.12115000188350677) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_7" < 0.07497499883174896) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.13363148272037506 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.020645752549171448 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07329749315977097 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.13540911674499512 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.14544999599456787) THEN CASE WHEN ("ADS"."Feature_13" < 32.849998474121094) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_21" < 26.270000457763672) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1283390074968338 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.014707544818520546 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07714793086051941 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.133819118142128 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_20" < 16.795000076293945) THEN CASE WHEN ("ADS"."Feature_27" < 0.12115000188350677) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 19.635000228881836) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.12476612627506256 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.01592203602194786 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06960324943065643 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.13226597011089325 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 117.44999694824219) THEN CASE WHEN ("ADS"."Feature_7" < 0.04891999810934067) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.12262566387653351 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.11848687380552292 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.006392433773726225 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 SELECT "XGB_B0"."KEY", "XGB_B0"."Score_0" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_0"."KEY" AS "KEY", "XGB_Model_0_0"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_0" UNION ALL SELECT "XGB_Model_0_1"."KEY" AS "KEY", "XGB_Model_0_1"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_1" UNION ALL SELECT "XGB_Model_0_2"."KEY" AS "KEY", "XGB_Model_0_2"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_2" UNION ALL SELECT "XGB_Model_0_3"."KEY" AS "KEY", "XGB_Model_0_3"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_3" UNION ALL SELECT "XGB_Model_0_4"."KEY" AS "KEY", "XGB_Model_0_4"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_4" UNION ALL SELECT "XGB_Model_0_5"."KEY" AS "KEY", "XGB_Model_0_5"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_5" UNION ALL SELECT "XGB_Model_0_6"."KEY" AS "KEY", "XGB_Model_0_6"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_6" UNION ALL SELECT "XGB_Model_0_7"."KEY" AS "KEY", "XGB_Model_0_7"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_7" UNION ALL SELECT "XGB_Model_0_8"."KEY" AS "KEY", "XGB_Model_0_8"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_8" UNION ALL SELECT "XGB_Model_0_9"."KEY" AS "KEY", "XGB_Model_0_9"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_9") AS "XGB_esu_0") AS "XGB_B0"

-- Code For temporary table tmp_20180516112035_codegen_rxq3sq_xgb_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516112035_codegen_rxq3sq_xgb_b1 (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516112035_codegen_rxq3sq_xgb_b1 part 2. Populate

INSERT INTO tmp_20180516112035_codegen_rxq3sq_xgb_b1 WITH "DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.14544999599456787) THEN CASE WHEN ("ADS"."Feature_13" < 31.084999084472656) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_21" < 26.420000076293945) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.11701875180006027 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.016944319009780884 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07019593566656113 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.12330199778079987 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_20" < 16.795000076293945) THEN CASE WHEN ("ADS"."Feature_7" < 0.045464999973773956) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" < 19.899999618530273) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.11512360721826553 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.017077675089240074 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06643888354301453 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.12265763431787491 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 117.44999694824219) THEN CASE WHEN ("ADS"."Feature_7" < 0.04891999810934067) THEN CASE WHEN ("ADS"."Feature_15" < 0.011754999868571758) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.11374557018280029 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.003493115771561861 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, 0.07863019406795502 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 0.11759652942419052 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.15074999630451202) THEN CASE WHEN ("ADS"."Feature_13" < 31.28499984741211) THEN CASE WHEN ("ADS"."Feature_19" < 0.002154999878257513) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.10585534572601318 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.0024481695145368576 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, 0.07931221276521683 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 0.11873737722635269 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_22" < 113.14999389648438) THEN CASE WHEN ("ADS"."Feature_26" < 0.267300009727478) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_24" < 0.13955000042915344) THEN 5 ELSE 6 END END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.10965307056903839 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.012755125761032104 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06810056418180466 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.11264988034963608 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_27" < 0.15074999630451202) THEN CASE WHEN ("ADS"."Feature_23" < 754.0999755859375) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM "BREASTCANCER" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.10041051357984543 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.1078338772058487 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.0019829440861940384 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 SELECT "XGB_B1"."KEY", "XGB_B1"."Score_0" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_10"."KEY" AS "KEY", "XGB_Model_0_10"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_10" UNION ALL SELECT "XGB_Model_0_11"."KEY" AS "KEY", "XGB_Model_0_11"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_11" UNION ALL SELECT "XGB_Model_0_12"."KEY" AS "KEY", "XGB_Model_0_12"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_12" UNION ALL SELECT "XGB_Model_0_13"."KEY" AS "KEY", "XGB_Model_0_13"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_13" UNION ALL SELECT "XGB_Model_0_14"."KEY" AS "KEY", "XGB_Model_0_14"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_14" UNION ALL SELECT "XGB_Model_0_15"."KEY" AS "KEY", "XGB_Model_0_15"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_15") AS "XGB_esu_1") AS "XGB_B1"

-- Code For temporary table tmp_20180516112035_codegen_n7kd05_xgb_sum part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516112035_codegen_n7kd05_xgb_sum (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516112035_codegen_n7kd05_xgb_sum part 2. Populate

INSERT INTO tmp_20180516112035_codegen_n7kd05_xgb_sum WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
FROM tmp_20180516112035_codegen_qwnwdc_xgb_b0 AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM tmp_20180516112035_codegen_rxq3sq_xgb_b1 AS "XGB_B1") AS "XGB_EnsembleUnion")
 SELECT "XGB_sum"."KEY", "XGB_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS DOUBLE) AS "Score_0" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Score_0") AS "Score_0" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum"

-- Model deployment code

WITH orig_cte AS 
(SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180516112035_codegen_n7kd05_xgb_sum AS "XGB_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte