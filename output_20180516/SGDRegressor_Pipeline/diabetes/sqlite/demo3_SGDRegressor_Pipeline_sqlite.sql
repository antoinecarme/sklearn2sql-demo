-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor_Pipeline
-- Dataset : diabetes
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT" (
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



-- Code For temporary table TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT_KEY" ON "TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT" (
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



-- Code For temporary table TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM "TMP_20180516115500_CODEGEN_WP6IPW_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT_KEY" ON "TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM "TMP_20180516115500_CODEGEN_0AZYBJ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.2424637766095335 * linear_input.scaler_2 + -10.618748891714944 * linear_input.scaler_3 + 23.679863091516292 * linear_input.scaler_4 + 14.034052304047412 * linear_input.scaler_5 + -2.591970076308286 * linear_input.scaler_6 + -6.98451869475154 * linear_input.scaler_7 + -10.707911970680266 * linear_input.scaler_8 + 4.290575492034916 * linear_input.scaler_9 + 21.931423939628292 * linear_input.scaler_10 + 4.522242711225028 * linear_input.scaler_11 + 150.13677355116624 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte