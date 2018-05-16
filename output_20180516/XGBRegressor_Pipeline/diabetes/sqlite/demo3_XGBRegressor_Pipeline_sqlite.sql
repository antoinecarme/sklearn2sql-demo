-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor_Pipeline
-- Dataset : diabetes
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT_KEY" ON "TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM "TMP_20180516115636_CODEGEN_VVL2K6_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT_KEY" ON "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20180516115636_CODEGEN_UHJ768_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115636_CODEGEN_UHJ768_XGB_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180516115636_CODEGEN_UHJ768_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.012311428785324097) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.4807044267654419) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS nid, 15.776923179626465 AS "Estimator" UNION ALL SELECT 6 AS nid, 24.05500030517578 AS "Estimator" UNION ALL SELECT 7 AS nid, 10.930405616760254 AS "Estimator" UNION ALL SELECT 8 AS nid, 8.347762107849121 AS "Estimator" UNION ALL SELECT 9 AS nid, 13.62121295928955 AS "Estimator" UNION ALL SELECT 10 AS nid, 18.598438262939453 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 1.4482282400131226) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.752074122428894) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS nid, 14.003450393676758 AS "Estimator" UNION ALL SELECT 6 AS nid, 23.286762237548828 AS "Estimator" UNION ALL SELECT 7 AS nid, 9.415186882019043 AS "Estimator" UNION ALL SELECT 8 AS nid, 7.198849678039551 AS "Estimator" UNION ALL SELECT 9 AS nid, 14.533350944519043 AS "Estimator" UNION ALL SELECT 10 AS nid, 19.064584732055664 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.012311428785324097) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.9707697629928589) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 < -0.434483140707016) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 1.1726664304733276) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.4807044267654419) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 6 AS nid, 20.29665184020996 AS "Estimator" UNION ALL SELECT 7 AS nid, 6.414662837982178 AS "Estimator" UNION ALL SELECT 8 AS nid, 8.630793571472168 AS "Estimator" UNION ALL SELECT 9 AS nid, 9.850298881530762 AS "Estimator" UNION ALL SELECT 10 AS nid, 14.109347343444824 AS "Estimator" UNION ALL SELECT 11 AS nid, 10.822417259216309 AS "Estimator" UNION ALL SELECT 12 AS nid, 15.3329439163208 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.0314108207821846) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 < -0.434483140707016) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 < -0.2762012183666229) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 < 0.77745521068573) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 8.028899192810059 AS "Estimator" UNION ALL SELECT 8 AS nid, 5.990607738494873 AS "Estimator" UNION ALL SELECT 9 AS nid, 8.930937767028809 AS "Estimator" UNION ALL SELECT 10 AS nid, 12.754850387573242 AS "Estimator" UNION ALL SELECT 11 AS nid, 9.25925064086914 AS "Estimator" UNION ALL SELECT 12 AS nid, 13.668062210083008 AS "Estimator" UNION ALL SELECT 13 AS nid, 19.54034996032715 AS "Estimator" UNION ALL SELECT 14 AS nid, 13.672558784484863 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.5311645865440369) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.7402026653289795) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 < 0.6062126755714417) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.2656087875366211) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 6.921077728271484 AS "Estimator" UNION ALL SELECT 8 AS nid, 5.144952297210693 AS "Estimator" UNION ALL SELECT 9 AS nid, 11.345939636230469 AS "Estimator" UNION ALL SELECT 10 AS nid, 7.35351037979126 AS "Estimator" UNION ALL SELECT 11 AS nid, 9.932232856750488 AS "Estimator" UNION ALL SELECT 12 AS nid, 13.648144721984863 AS "Estimator" UNION ALL SELECT 13 AS nid, 11.720587730407715 AS "Estimator" UNION ALL SELECT 14 AS nid, 16.95893669128418 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.26255133748054504) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.29165154695510864) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 1.4482282400131226) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < -1.0167781114578247) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 6 AS nid, 15.905003547668457 AS "Estimator" UNION ALL SELECT 7 AS nid, 5.828351974487305 AS "Estimator" UNION ALL SELECT 8 AS nid, 3.6082522869110107 AS "Estimator" UNION ALL SELECT 9 AS nid, 10.483193397521973 AS "Estimator" UNION ALL SELECT 10 AS nid, 6.575033664703369 AS "Estimator" UNION ALL SELECT 11 AS nid, 5.92445707321167 AS "Estimator" UNION ALL SELECT 12 AS nid, 11.060623168945312 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.4441823661327362) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.09338267147541046) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6326913833618164) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.32470041513442993) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 1.2388052940368652) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -0.9434657096862793) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 6 AS nid, 14.899293899536133 AS "Estimator" UNION ALL SELECT 7 AS nid, 5.037124156951904 AS "Estimator" UNION ALL SELECT 8 AS nid, 8.110381126403809 AS "Estimator" UNION ALL SELECT 9 AS nid, 7.3873162269592285 AS "Estimator" UNION ALL SELECT 10 AS nid, 11.648924827575684 AS "Estimator" UNION ALL SELECT 11 AS nid, 13.217264175415039 AS "Estimator" UNION ALL SELECT 12 AS nid, 8.917932510375977 AS "Estimator") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.11634615063667297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.4908640384674072) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.3004886507987976) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.7758171558380127) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.515149712562561) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.2656087875366211) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 5.168146133422852 AS "Estimator" UNION ALL SELECT 8 AS nid, 3.6053311824798584 AS "Estimator" UNION ALL SELECT 9 AS nid, 8.7820405960083 AS "Estimator" UNION ALL SELECT 10 AS nid, 5.390221118927002 AS "Estimator" UNION ALL SELECT 11 AS nid, 5.32416296005249 AS "Estimator" UNION ALL SELECT 12 AS nid, 8.763245582580566 AS "Estimator" UNION ALL SELECT 13 AS nid, 8.623435974121094 AS "Estimator" UNION ALL SELECT 14 AS nid, 12.895909309387207 AS "Estimator") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.4441823661327362) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.09338267147541046) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6326913833618164) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 1.2744197845458984) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.7299189567565918) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 6 AS nid, 12.363444328308105 AS "Estimator" UNION ALL SELECT 7 AS nid, 4.04940938949585 AS "Estimator" UNION ALL SELECT 8 AS nid, 6.651192665100098 AS "Estimator" UNION ALL SELECT 9 AS nid, 6.120324611663818 AS "Estimator" UNION ALL SELECT 10 AS nid, 10.08482551574707 AS "Estimator" UNION ALL SELECT 11 AS nid, 8.969040870666504 AS "Estimator" UNION ALL SELECT 12 AS nid, 3.548654317855835 AS "Estimator") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9315498471260071) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.9707697629928589) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 1.4482282400131226) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.9365731477737427) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 4 AS nid, 7.961431980133057 AS "Estimator" UNION ALL SELECT 6 AS nid, 11.157633781433105 AS "Estimator" UNION ALL SELECT 7 AS nid, 2.6931638717651367 AS "Estimator" UNION ALL SELECT 8 AS nid, 4.346072673797607 AS "Estimator" UNION ALL SELECT 9 AS nid, 6.031167030334473 AS "Estimator" UNION ALL SELECT 10 AS nid, 8.75991439819336 AS "Estimator") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516115636_CODEGEN_UHJ768_XGB_B0" ("KEY", "Estimator") SELECT "XGB_B0"."KEY", "XGB_B0"."Estimator" 
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
FROM "XGB_Model_9") AS "XGB_esu_0") AS "XGB_B0"

-- Code For temporary table TMP_20180516115636_CODEGEN_O6JGQP_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115636_CODEGEN_O6JGQP_XGB_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT
)



-- Code For temporary table TMP_20180516115636_CODEGEN_O6JGQP_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.1852366030216217) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6171091198921204) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -1.021852970123291) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -1.1028356552124023) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 < 0.6062126755714417) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9774768352508545) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 5.3822102546691895 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.910175323486328 AS "Estimator" UNION ALL SELECT 9 AS nid, 4.021858215332031 AS "Estimator" UNION ALL SELECT 10 AS nid, 7.552056312561035 AS "Estimator" UNION ALL SELECT 11 AS nid, 4.675178050994873 AS "Estimator" UNION ALL SELECT 12 AS nid, 8.340153694152832 AS "Estimator" UNION ALL SELECT 13 AS nid, 7.252984523773193 AS "Estimator" UNION ALL SELECT 14 AS nid, 10.570660591125488 AS "Estimator") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 < -0.775999128818512) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.6844651699066162) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 1.5286004543304443) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.7758171558380127) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.36924293637275696) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 3.94830584526062 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.2174837589263916 AS "Estimator" UNION ALL SELECT 9 AS nid, 2.6256496906280518 AS "Estimator" UNION ALL SELECT 10 AS nid, 7.762805938720703 AS "Estimator" UNION ALL SELECT 11 AS nid, 4.909304141998291 AS "Estimator" UNION ALL SELECT 12 AS nid, 7.3871750831604 AS "Estimator" UNION ALL SELECT 13 AS nid, 10.758736610412598 AS "Estimator" UNION ALL SELECT 14 AS nid, 6.986988067626953 AS "Estimator") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.1852366030216217) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6171091198921204) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.561488926410675) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -1.1028356552124023) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 < 0.6062126755714417) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9774768352508545) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 2.458796739578247 AS "Estimator" UNION ALL SELECT 8 AS nid, 5.796570777893066 AS "Estimator" UNION ALL SELECT 9 AS nid, 3.137352466583252 AS "Estimator" UNION ALL SELECT 10 AS nid, 6.299558639526367 AS "Estimator" UNION ALL SELECT 11 AS nid, 3.8004708290100098 AS "Estimator" UNION ALL SELECT 12 AS nid, 6.960630893707275 AS "Estimator" UNION ALL SELECT 13 AS nid, 5.935761451721191 AS "Estimator" UNION ALL SELECT 14 AS nid, 8.735002517700195 AS "Estimator") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.1852366030216217) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6171091198921204) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -1.021852970123291) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -1.341890573501587) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.6100610494613647) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9774768352508545) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 4.188769817352295 AS "Estimator" UNION ALL SELECT 8 AS nid, 1.9906542301177979 AS "Estimator" UNION ALL SELECT 9 AS nid, 2.0451626777648926 AS "Estimator" UNION ALL SELECT 10 AS nid, 5.4328932762146 AS "Estimator" UNION ALL SELECT 11 AS nid, 6.339311122894287 AS "Estimator" UNION ALL SELECT 12 AS nid, 3.2873058319091797 AS "Estimator" UNION ALL SELECT 13 AS nid, 5.36133337020874 AS "Estimator" UNION ALL SELECT 14 AS nid, 7.887193202972412 AS "Estimator") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.5471989512443542) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.9707697629928589) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 < -0.8144451379776001) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.46715831756591797) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.9849739074707031) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 < -0.08397127687931061) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 2.081838369369507) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 2.65255069732666 AS "Estimator" UNION ALL SELECT 8 AS nid, 0.41457176208496094 AS "Estimator" UNION ALL SELECT 9 AS nid, 2.761002779006958 AS "Estimator" UNION ALL SELECT 10 AS nid, 4.807448863983154 AS "Estimator" UNION ALL SELECT 11 AS nid, 4.043216228485107 AS "Estimator" UNION ALL SELECT 12 AS nid, 6.891916751861572 AS "Estimator" UNION ALL SELECT 13 AS nid, 0.9939157366752625 AS "Estimator" UNION ALL SELECT 14 AS nid, 7.210835933685303 AS "Estimator") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.9889585971832275) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.23324185609817505) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -1.272944688796997) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 1.0208101272583008) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.43114182353019714) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -0.22630083560943604) THEN 11 ELSE 12 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 < 0.9097489714622498) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516115636_CODEGEN_99MQLL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT 7 AS nid, 0.42818233370780945 AS "Estimator" UNION ALL SELECT 8 AS nid, 2.249375343322754 AS "Estimator" UNION ALL SELECT 9 AS nid, 4.159715175628662 AS "Estimator" UNION ALL SELECT 10 AS nid, 1.6386209726333618 AS "Estimator" UNION ALL SELECT 11 AS nid, 7.7528204917907715 AS "Estimator" UNION ALL SELECT 12 AS nid, 3.6319217681884766 AS "Estimator" UNION ALL SELECT 13 AS nid, 1.6937063932418823 AS "Estimator" UNION ALL SELECT 14 AS nid, 5.325215816497803 AS "Estimator") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516115636_CODEGEN_O6JGQP_XGB_B1" ("KEY", "Estimator") SELECT "XGB_B1"."KEY", "XGB_B1"."Estimator" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Model_10"."KEY" AS "KEY", "XGB_Model_10"."Estimator" AS "Estimator" 
FROM "XGB_Model_10" UNION ALL SELECT "XGB_Model_11"."KEY" AS "KEY", "XGB_Model_11"."Estimator" AS "Estimator" 
FROM "XGB_Model_11" UNION ALL SELECT "XGB_Model_12"."KEY" AS "KEY", "XGB_Model_12"."Estimator" AS "Estimator" 
FROM "XGB_Model_12" UNION ALL SELECT "XGB_Model_13"."KEY" AS "KEY", "XGB_Model_13"."Estimator" AS "Estimator" 
FROM "XGB_Model_13" UNION ALL SELECT "XGB_Model_14"."KEY" AS "KEY", "XGB_Model_14"."Estimator" AS "Estimator" 
FROM "XGB_Model_14" UNION ALL SELECT "XGB_Model_15"."KEY" AS "KEY", "XGB_Model_15"."Estimator" AS "Estimator" 
FROM "XGB_Model_15") AS "XGB_esu_1") AS "XGB_B1"

-- Code For temporary table TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum part 2. Populate

WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180516115636_CODEGEN_UHJ768_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180516115636_CODEGEN_O6JGQP_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion")
 INSERT INTO "TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum" ("KEY", "Estimator") SELECT "XGB_sum"."KEY", "XGB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS FLOAT) AS "Estimator" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Estimator") AS "Estimator" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum"

-- Code For temporary table TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum_KEY" ON "TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum" ("KEY")

-- Model deployment code

SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "TMP_20180516115636_CODEGEN_WQ94P1_XGB_sum" AS "XGB_sum"