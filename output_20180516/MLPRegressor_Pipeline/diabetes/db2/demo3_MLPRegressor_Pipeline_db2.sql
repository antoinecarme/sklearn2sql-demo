-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : diabetes
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145959_5wr_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145959_5wr_ads_imp_1_out (
	"KEY" BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145959_5wr_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602145959_5wr_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "DIABETES" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602145959_jyr_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145959_jyr_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145959_jyr_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602145959_jyr_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0002686932066652995) / 0.04724209583653783 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.0007239580580639441) / 0.047605576685038974 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.0007280719825586765) / 0.04693591143936869 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.001013565221084393) / 0.0483352719489719 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.0009763580732882109) / 0.048050762009702486 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.0017643808242337245) / 0.04806080873154401 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - -0.0016512815450565026) / 0.04620240378043046 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0013905501983388136) / 0.047363093040531656 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.0012726482548090939) / 0.04589286131364784 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.001034425005681627) / 0.04776158519570627 AS scaler_11 
FROM tmp_20180602145959_5wr_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180602145959_dx0_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145959_dx0_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145959_dx0_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602145959_dx0_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11 
FROM tmp_20180602145959_jyr_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -3.641525927922719 * "IL".scaler_2 + -2.1467226504856765 * "IL".scaler_3 + -1.1205273457178795 * "IL".scaler_4 + 0.29204160936584395 * "IL".scaler_5 + 2.637325534039227 * "IL".scaler_6 + 3.2326472224361833 * "IL".scaler_7 + -3.0551835687805755 * "IL".scaler_8 + -4.7685497389409885 * "IL".scaler_9 + -3.363558519095022 * "IL".scaler_10 + -1.0338700847354563 * "IL".scaler_11 + -1.484722234709689 AS "NEUR_1_1", -0.22655412698530447 * "IL".scaler_2 + 1.0759621609131513 * "IL".scaler_3 + -3.2627064260297063 * "IL".scaler_4 + -3.3528613396141664 * "IL".scaler_5 + -2.3796642710197395 * "IL".scaler_6 + -6.218291316277157 * "IL".scaler_7 + 6.003568901416862 * "IL".scaler_8 + 2.850536853365166 * "IL".scaler_9 + 0.1409658849189419 * "IL".scaler_10 + -2.654321786222787 * "IL".scaler_11 + -7.896491924173303 AS "NEUR_1_2", 0.4980345427612391 * "IL".scaler_2 + -0.27736904862723455 * "IL".scaler_3 + 1.4156593567243063 * "IL".scaler_4 + 0.888877251400475 * "IL".scaler_5 + -5.262065479489379 * "IL".scaler_6 + 4.198778048858764 * "IL".scaler_7 + 1.0516743044327723 * "IL".scaler_8 + 0.2718835137448526 * "IL".scaler_9 + 3.5935139445313022 * "IL".scaler_10 + 0.3077439542724636 * "IL".scaler_11 + 4.734244914297272 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180602145959_gjt_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145959_gjt_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145959_gjt_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180602145959_gjt_ol_identity_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -1.289366387812844 * "HL_1_relu_1"."NEUR_1_1" + 1.7766911953969817 * "HL_1_relu_1"."NEUR_1_2" + -2.068729167297351 * "HL_1_relu_1"."NEUR_1_3" + -0.16232028627113487 AS "NEUR_2_1", -1.6465274267559176 * "HL_1_relu_1"."NEUR_1_1" + -0.8701300422318493 * "HL_1_relu_1"."NEUR_1_2" + -1.0558606354973579 * "HL_1_relu_1"."NEUR_1_3" + -4.901874301898457 AS "NEUR_2_2", 1.0381539434142173 * "HL_1_relu_1"."NEUR_1_1" + 7.233977476988104 * "HL_1_relu_1"."NEUR_1_2" + 3.0368435325976044 * "HL_1_relu_1"."NEUR_1_3" + 1.1916907812740447 AS "NEUR_2_3", -0.1956535396226598 * "HL_1_relu_1"."NEUR_1_1" + -0.5051404049230115 * "HL_1_relu_1"."NEUR_1_2" + -0.4066296192522317 * "HL_1_relu_1"."NEUR_1_3" + -0.8471256168975997 AS "NEUR_2_4", 0.07955823967919683 * "HL_1_relu_1"."NEUR_1_1" + 6.453783140615478 * "HL_1_relu_1"."NEUR_1_2" + -1.0279702515525373 * "HL_1_relu_1"."NEUR_1_3" + -5.1081300934288665 AS "NEUR_2_5" 
FROM tmp_20180602145959_dx0_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 2.4863024110759433 * "HL_2_relu"."NEUR_2_1" + 1.502994444268018 * "HL_2_relu"."NEUR_2_2" + 6.951523244650881 * "HL_2_relu"."NEUR_2_3" + 0.7020892063061553 * "HL_2_relu"."NEUR_2_4" + -8.501878860831729 * "HL_2_relu"."NEUR_2_5" + 14.579846867784326 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180602145959_gjt_ol_identity_1 AS "OL_identity_1"