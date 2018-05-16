-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : diabetes
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_KK21RU_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_KK21RU_ADS" (
	"KEY" BIGINT NOT NULL, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_KK21RU_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_KK21RU_ADS" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_KK21RU_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_7c36" ON "TMP_20180516_CODEGEN_KK21RU_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_W7STMS_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_W7STMS_ADS" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_W7STMS_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_W7STMS_ADS" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM "TMP_20180516_CODEGEN_KK21RU_ADS" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_W7STMS_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_978e" ON "TMP_20180516_CODEGEN_W7STMS_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_Z4ZK9R_HL_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_Z4ZK9R_HL_" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_Z4ZK9R_HL_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_Z4ZK9R_HL_" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM "TMP_20180516_CODEGEN_W7STMS_ADS" AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -3.641525927922719 * "IL".scaler_2 + -2.1467226504856765 * "IL".scaler_3 + -1.1205273457178795 * "IL".scaler_4 + 0.29204160936584395 * "IL".scaler_5 + 2.637325534039227 * "IL".scaler_6 + 3.2326472224361833 * "IL".scaler_7 + -3.0551835687805755 * "IL".scaler_8 + -4.7685497389409885 * "IL".scaler_9 + -3.363558519095022 * "IL".scaler_10 + -1.0338700847354563 * "IL".scaler_11 + -1.484722234709689 AS "NEUR_1_1", -0.22655412698530447 * "IL".scaler_2 + 1.0759621609131513 * "IL".scaler_3 + -3.2627064260297063 * "IL".scaler_4 + -3.3528613396141664 * "IL".scaler_5 + -2.3796642710197395 * "IL".scaler_6 + -6.218291316277157 * "IL".scaler_7 + 6.003568901416862 * "IL".scaler_8 + 2.850536853365166 * "IL".scaler_9 + 0.1409658849189419 * "IL".scaler_10 + -2.654321786222787 * "IL".scaler_11 + -7.896491924173303 AS "NEUR_1_2", 0.4980345427612391 * "IL".scaler_2 + -0.27736904862723455 * "IL".scaler_3 + 1.4156593567243063 * "IL".scaler_4 + 0.888877251400475 * "IL".scaler_5 + -5.262065479489379 * "IL".scaler_6 + 4.198778048858764 * "IL".scaler_7 + 1.0516743044327723 * "IL".scaler_8 + 0.2718835137448526 * "IL".scaler_9 + 3.5935139445313022 * "IL".scaler_10 + 0.3077439542724636 * "IL".scaler_11 + 4.734244914297272 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", maxvalue("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", maxvalue("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", maxvalue("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_Z4ZK9R_HL_ part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_5fcd" ON "TMP_20180516_CODEGEN_Z4ZK9R_HL_" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_HHVDYH_OL_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_HHVDYH_OL_" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_HHVDYH_OL_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_HHVDYH_OL_" ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -1.289366387812844 * "HL_1_relu_1"."NEUR_1_1" + 1.7766911953969817 * "HL_1_relu_1"."NEUR_1_2" + -2.068729167297351 * "HL_1_relu_1"."NEUR_1_3" + -0.16232028627113487 AS "NEUR_2_1", -1.6465274267559176 * "HL_1_relu_1"."NEUR_1_1" + -0.8701300422318493 * "HL_1_relu_1"."NEUR_1_2" + -1.0558606354973579 * "HL_1_relu_1"."NEUR_1_3" + -4.901874301898457 AS "NEUR_2_2", 1.0381539434142173 * "HL_1_relu_1"."NEUR_1_1" + 7.233977476988104 * "HL_1_relu_1"."NEUR_1_2" + 3.0368435325976044 * "HL_1_relu_1"."NEUR_1_3" + 1.1916907812740447 AS "NEUR_2_3", -0.1956535396226598 * "HL_1_relu_1"."NEUR_1_1" + -0.5051404049230115 * "HL_1_relu_1"."NEUR_1_2" + -0.4066296192522317 * "HL_1_relu_1"."NEUR_1_3" + -0.8471256168975997 AS "NEUR_2_4", 0.07955823967919683 * "HL_1_relu_1"."NEUR_1_1" + 6.453783140615478 * "HL_1_relu_1"."NEUR_1_2" + -1.0279702515525373 * "HL_1_relu_1"."NEUR_1_3" + -5.1081300934288665 AS "NEUR_2_5" 
FROM "TMP_20180516_CODEGEN_Z4ZK9R_HL_" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", maxvalue("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", maxvalue("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", maxvalue("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", maxvalue("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", maxvalue("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 2.4863024110759433 * "HL_2_relu"."NEUR_2_1" + 1.502994444268018 * "HL_2_relu"."NEUR_2_2" + 6.951523244650881 * "HL_2_relu"."NEUR_2_3" + 0.7020892063061553 * "HL_2_relu"."NEUR_2_4" + -8.501878860831729 * "HL_2_relu"."NEUR_2_5" + 14.579846867784326 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_HHVDYH_OL_ part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_3376" ON "TMP_20180516_CODEGEN_HHVDYH_OL_" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_HHVDYH_OL_" AS "OL_identity_1"