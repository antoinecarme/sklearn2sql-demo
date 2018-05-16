-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : boston
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516114835_codegen_shjrbl_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114835_codegen_shjrbl_ads_imp_1_out  (
	"KEY" BIGINT, 
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
	impter_12 DOUBLE PRECISION, 
	impter_13 DOUBLE PRECISION, 
	impter_14 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114835_codegen_shjrbl_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516114835_codegen_shjrbl_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.3688565346534656 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 12.113861386138614 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 10.983613861386127 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.07178217821782178 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.5541153465346542 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.299148514851482 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 67.85049504950491 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.8198420792079233 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 9.55940594059406 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 405.8019801980198 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.40915841584154 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 358.3797277227715 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.626584158415856 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516114835_codegen_uyybpm_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114835_codegen_uyybpm_ads_sca_2_out  (
	"KEY" BIGINT, 
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
	scaler_12 DOUBLE PRECISION, 
	scaler_13 DOUBLE PRECISION, 
	scaler_14 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114835_codegen_uyybpm_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516114835_codegen_uyybpm_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(3.368856534653466 AS DOUBLE PRECISION)) / CAST(7.993526809533543 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(12.113861386138614 AS DOUBLE PRECISION)) / CAST(24.187656534977855 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(10.983613861386125 AS DOUBLE PRECISION)) / CAST(6.817747247739923 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.071782178217822 AS DOUBLE PRECISION)) / CAST(0.258126901170968 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(0.554115346534654 AS DOUBLE PRECISION)) / CAST(0.118008097608247 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(6.299148514851482 AS DOUBLE PRECISION)) / CAST(0.706041739799694 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(67.85049504950491 AS DOUBLE PRECISION)) / CAST(28.107403181658597 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(3.819842079207924 AS DOUBLE PRECISION)) / CAST(2.093372690267563 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(9.55940594059406 AS DOUBLE PRECISION)) / CAST(8.728803783375893 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(405.80198019801975 AS DOUBLE PRECISION)) / CAST(169.7858592930543 AS DOUBLE PRECISION) AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE PRECISION) - CAST(18.40915841584154 AS DOUBLE PRECISION)) / CAST(2.166792648327246 AS DOUBLE PRECISION) AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE PRECISION) - CAST(358.3797277227715 AS DOUBLE PRECISION)) / CAST(90.64691624336051 AS DOUBLE PRECISION) AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE PRECISION) - CAST(12.626584158415856 AS DOUBLE PRECISION)) / CAST(7.167938324035357 AS DOUBLE PRECISION) AS scaler_14 
FROM tmp_20180516114835_codegen_shjrbl_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180516114835_codegen_h7q73t_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114835_codegen_h7q73t_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114835_codegen_h7q73t_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516114835_codegen_h7q73t_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS DOUBLE PRECISION) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS DOUBLE PRECISION) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS DOUBLE PRECISION) AS scaler_14 
FROM tmp_20180516114835_codegen_uyybpm_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(-1.485666429527313 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-0.20410539468098 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(0.007591175642357 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-0.331870441527027 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.356143875061023 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(0.979431864597886 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-0.500001630103773 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(0.210503893482644 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-1.569843043921544 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.28775423213096 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-0.247868022995826 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(0.253588089773028 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(-0.026674802590394 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(0.854653722995441 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(-0.605652780677726 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.334446206044984 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(0.364103740599708 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-0.074326819637604 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-0.686786196968532 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(0.86386124755859 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-0.17028134020489 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-1.00726937411895 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(2.896273777592682 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(0.110771976170987 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-0.136811472654151 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(0.313693326729088 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(-2.237318041586123 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(-0.822270705514425 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(-0.115570140101817 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.145501704911903 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-0.359912985276825 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(0.979469466728374 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-2.077969126563855 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-0.782110655232133 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(0.914921259973499 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-3.114529545039702 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(0.588044385891882 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.16319199514312 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-0.908839496178656 AS DOUBLE PRECISION) * "IL".scaler_12 + CAST(0.044962223348403 AS DOUBLE PRECISION) * "IL".scaler_13 + CAST(-0.419359096955181 AS DOUBLE PRECISION) * "IL".scaler_14 + CAST(-1.20946278467586 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180516114835_codegen_ujy9v1_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114835_codegen_ujy9v1_ol_identity_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114835_codegen_ujy9v1_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180516114835_codegen_ujy9v1_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(0.378164141099924 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-1.009319852574668 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.452090428593585 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.650749990191179 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(2.365650922798578 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(2.398682473465118 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(1.22564428658524 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(3.629656379220944 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(-1.143270499089508 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.863286786466316 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-2.287155815710403 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.549219907726242 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(0.829227308734128 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.679246422771721 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(0.460311259679915 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.506948640871074 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.307552147680414 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-1.159736644159397 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.337910287385349 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.875404439848595 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180516114835_codegen_h7q73t_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(-0.978521703055982 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(1.81912130386739 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(-2.864586516363912 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(-0.18723803124118 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-0.275962482922718 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(3.68595151987124 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180516114835_codegen_ujy9v1_ol_identity_1 AS "OL_identity_1"