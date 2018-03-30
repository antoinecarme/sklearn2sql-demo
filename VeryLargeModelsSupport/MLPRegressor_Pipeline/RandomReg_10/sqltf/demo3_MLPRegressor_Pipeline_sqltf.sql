-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329231753_1NXYG2_ADS_imp_1_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329231753_1NXYG2_ADS_imp_1_OUT" (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)


-- Code For temporary table TMP_20180329231753_1NXYG2_ADS_imp_1_OUT part 2/2. Populate

INSERT INTO "TMP_20180329231753_1NXYG2_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT"
-- Code For temporary table TMP_20180329231754_VK1Y3G_ADS_sca_2_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329231754_VK1Y3G_ADS_sca_2_OUT" (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)


-- Code For temporary table TMP_20180329231754_VK1Y3G_ADS_sca_2_OUT part 2/2. Populate

INSERT INTO "TMP_20180329231754_VK1Y3G_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM "TMP_20180329231753_1NXYG2_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"
-- Code For temporary table TMP_20180329231754_WMAX1W_HL_1_relu_1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329231754_WMAX1W_HL_1_relu_1" (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)


-- Code For temporary table TMP_20180329231754_WMAX1W_HL_1_relu_1 part 2/2. Populate

WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM "TMP_20180329231754_VK1Y3G_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -1.2652628383846387 * "IL".scaler_2 + -2.6681804643301166 * "IL".scaler_3 + -3.1582379120640067 * "IL".scaler_4 + -1.3385481888551198 * "IL".scaler_5 + -2.0577655486286743 * "IL".scaler_6 + -2.84417541907169 * "IL".scaler_7 + -1.3792650671814417 * "IL".scaler_8 + -1.411481658802069 * "IL".scaler_9 + -3.356484043999449 * "IL".scaler_10 + -1.9172437702642275 * "IL".scaler_11 + -0.6497281525872338 AS "NEUR_1_1", -0.04133285142388573 * "IL".scaler_2 + -0.9497219225085062 * "IL".scaler_3 + -1.5108068877440568 * "IL".scaler_4 + 0.6072531181300049 * "IL".scaler_5 + -0.10530206935098296 * "IL".scaler_6 + -0.016259353825250667 * "IL".scaler_7 + -0.6867029967449415 * "IL".scaler_8 + -0.659594957728415 * "IL".scaler_9 + -0.4218462677212708 * "IL".scaler_10 + -0.44634784150929285 * "IL".scaler_11 + -0.7720217085016 AS "NEUR_1_2", 1.7146268788516483 * "IL".scaler_2 + 3.6158196461652032 * "IL".scaler_3 + 4.2798437601095785 * "IL".scaler_4 + 1.8140377751491732 * "IL".scaler_5 + 2.78865104928233 * "IL".scaler_6 + 3.854275947903176 * "IL".scaler_7 + 1.8690680361533976 * "IL".scaler_8 + 1.9127443556123023 * "IL".scaler_9 + 4.548565544128607 * "IL".scaler_10 + 2.5982088707177855 * "IL".scaler_11 + 1.0975270096002308 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(max("HL_BA_1"."NEUR_1_1", 0.0) AS FLOAT) AS "NEUR_1_1", CAST(max("HL_BA_1"."NEUR_1_2", 0.0) AS FLOAT) AS "NEUR_1_2", CAST(max("HL_BA_1"."NEUR_1_3", 0.0) AS FLOAT) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20180329231754_WMAX1W_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"
-- Code For temporary table TMP_20180329231754_7TPGNO_OL_identity_1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329231754_7TPGNO_OL_identity_1" (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT
)


-- Code For temporary table TMP_20180329231754_7TPGNO_OL_identity_1 part 2/2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.7417147923183456 * "HL_1_relu_1"."NEUR_1_1" + 0.4400554589082016 * "HL_1_relu_1"."NEUR_1_2" + 0.43005225427028937 * "HL_1_relu_1"."NEUR_1_3" + -0.2545125965324868 AS "NEUR_2_1", 4.995645153506303 * "HL_1_relu_1"."NEUR_1_1" + 8.207578353025825e-06 * "HL_1_relu_1"."NEUR_1_2" + -0.5064984152174611 * "HL_1_relu_1"."NEUR_1_3" + -0.6720260546951734 AS "NEUR_2_2", -1.9963874010618505 * "HL_1_relu_1"."NEUR_1_1" + -1.016601235410726 * "HL_1_relu_1"."NEUR_1_2" + 4.959397453629041 * "HL_1_relu_1"."NEUR_1_3" + -0.16279527467957522 AS "NEUR_2_3", -2.2469489085409484 * "HL_1_relu_1"."NEUR_1_1" + -0.5047400986495407 * "HL_1_relu_1"."NEUR_1_2" + -0.4066296219699137 * "HL_1_relu_1"."NEUR_1_3" + -1.106754442995298 AS "NEUR_2_4", -0.6327004147212908 * "HL_1_relu_1"."NEUR_1_1" + 0.5520077051044718 * "HL_1_relu_1"."NEUR_1_2" + -0.5901708370652465 * "HL_1_relu_1"."NEUR_1_3" + -0.48090803642128666 AS "NEUR_2_5" 
FROM "TMP_20180329231754_WMAX1W_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(max("HL_BA_2"."NEUR_2_1", 0.0) AS FLOAT) AS "NEUR_2_1", CAST(max("HL_BA_2"."NEUR_2_2", 0.0) AS FLOAT) AS "NEUR_2_2", CAST(max("HL_BA_2"."NEUR_2_3", 0.0) AS FLOAT) AS "NEUR_2_3", CAST(max("HL_BA_2"."NEUR_2_4", 0.0) AS FLOAT) AS "NEUR_2_4", CAST(max("HL_BA_2"."NEUR_2_5", 0.0) AS FLOAT) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.17577937168219257 * "HL_2_relu"."NEUR_2_1" + -5.590583669878125 * "HL_2_relu"."NEUR_2_2" + 4.140366763848187 * "HL_2_relu"."NEUR_2_3" + 0.6797151957074706 * "HL_2_relu"."NEUR_2_4" + -0.29893169826900307 * "HL_2_relu"."NEUR_2_5" + 4.502809328939573 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS FLOAT) AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20180329231754_7TPGNO_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20180329231754_7TPGNO_OL_identity_1" AS "OL_identity_1"