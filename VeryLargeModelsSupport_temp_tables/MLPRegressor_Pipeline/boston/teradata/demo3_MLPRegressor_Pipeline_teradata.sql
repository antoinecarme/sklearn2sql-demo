-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : boston
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417023633_zhblpi_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417023633_zhblpi_ads_  (
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
	impter_11 FLOAT, 
	impter_12 FLOAT, 
	impter_13 FLOAT, 
	impter_14 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417023633_zhblpi_ads_ part 2/2. Populate

INSERT INTO tmp_20180417023633_zhblpi_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.3688565346534656 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 12.113861386138614 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 10.983613861386127 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.07178217821782178 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.5541153465346542 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.299148514851482 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 67.85049504950491 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.8198420792079233 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 9.55940594059406 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 405.8019801980198 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.40915841584154 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 358.3797277227715 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.626584158415856 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180417023633_os8pni_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417023633_os8pni_ads_  (
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
	scaler_11 FLOAT, 
	scaler_12 FLOAT, 
	scaler_13 FLOAT, 
	scaler_14 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417023633_os8pni_ads_ part 2/2. Populate

INSERT INTO tmp_20180417023633_os8pni_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 3.368856534653466) / 7.993526809533543 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 12.113861386138614) / 24.187656534977855 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 10.983613861386125) / 6.817747247739923 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.071782178217822) / 0.258126901170968 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.554115346534654) / 0.118008097608247 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 6.299148514851482) / 0.706041739799694 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 67.85049504950491) / 28.107403181658597 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 3.819842079207924) / 2.093372690267563 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 9.55940594059406) / 8.728803783375893 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 405.80198019801975) / 169.7858592930543 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 18.40915841584154) / 2.166792648327246 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 358.3797277227715) / 90.64691624336051 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 12.626584158415856) / 7.167938324035357 AS scaler_14 
FROM tmp_20180417023633_zhblpi_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180417023633_7kno7o_hl_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417023633_7kno7o_hl_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417023633_7kno7o_hl_1 part 2/2. Populate

INSERT INTO tmp_20180417023633_7kno7o_hl_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS FLOAT) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS FLOAT) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS FLOAT) AS scaler_14 
FROM tmp_20180417023633_os8pni_ads_ AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -1.485666429527313 * "IL".scaler_2 + -0.20410539468098 * "IL".scaler_3 + 0.007591175642357 * "IL".scaler_4 + -0.331870441527027 * "IL".scaler_5 + 0.356143875061023 * "IL".scaler_6 + 0.979431864597886 * "IL".scaler_7 + -0.500001630103773 * "IL".scaler_8 + 0.210503893482644 * "IL".scaler_9 + -1.569843043921544 * "IL".scaler_10 + -0.28775423213096 * "IL".scaler_11 + -0.247868022995826 * "IL".scaler_12 + 0.253588089773028 * "IL".scaler_13 + -0.026674802590394 * "IL".scaler_14 + 0.854653722995441 AS "NEUR_1_1", -0.605652780677726 * "IL".scaler_2 + 0.334446206044984 * "IL".scaler_3 + 0.364103740599708 * "IL".scaler_4 + -0.074326819637604 * "IL".scaler_5 + -0.686786196968532 * "IL".scaler_6 + 0.86386124755859 * "IL".scaler_7 + -0.17028134020489 * "IL".scaler_8 + -1.00726937411895 * "IL".scaler_9 + 2.896273777592682 * "IL".scaler_10 + 0.110771976170987 * "IL".scaler_11 + -0.136811472654151 * "IL".scaler_12 + 0.313693326729088 * "IL".scaler_13 + -2.237318041586123 * "IL".scaler_14 + -0.822270705514425 AS "NEUR_1_2", -0.115570140101817 * "IL".scaler_2 + 0.145501704911903 * "IL".scaler_3 + -0.359912985276825 * "IL".scaler_4 + 0.979469466728374 * "IL".scaler_5 + -2.077969126563855 * "IL".scaler_6 + -0.782110655232133 * "IL".scaler_7 + 0.914921259973499 * "IL".scaler_8 + -3.114529545039702 * "IL".scaler_9 + 0.588044385891882 * "IL".scaler_10 + -0.16319199514312 * "IL".scaler_11 + -0.908839496178656 * "IL".scaler_12 + 0.044962223348403 * "IL".scaler_13 + -0.419359096955181 * "IL".scaler_14 + -1.20946278467586 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(greatest("HL_BA_1"."NEUR_1_1", 0.0) AS FLOAT) AS "NEUR_1_1", CAST(greatest("HL_BA_1"."NEUR_1_2", 0.0) AS FLOAT) AS "NEUR_1_2", CAST(greatest("HL_BA_1"."NEUR_1_3", 0.0) AS FLOAT) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180417023633_wb2r5y_ol_i part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417023633_wb2r5y_ol_i  (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417023633_wb2r5y_ol_i part 2/2. Populate

INSERT INTO tmp_20180417023633_wb2r5y_ol_i ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.378164141099924 * "HL_1_relu_1"."NEUR_1_1" + -1.009319852574668 * "HL_1_relu_1"."NEUR_1_2" + -0.452090428593585 * "HL_1_relu_1"."NEUR_1_3" + -0.650749990191179 AS "NEUR_2_1", 2.365650922798578 * "HL_1_relu_1"."NEUR_1_1" + 2.398682473465118 * "HL_1_relu_1"."NEUR_1_2" + 1.22564428658524 * "HL_1_relu_1"."NEUR_1_3" + 3.629656379220944 AS "NEUR_2_2", -1.143270499089508 * "HL_1_relu_1"."NEUR_1_1" + 0.863286786466316 * "HL_1_relu_1"."NEUR_1_2" + -2.287155815710403 * "HL_1_relu_1"."NEUR_1_3" + -0.549219907726242 AS "NEUR_2_3", 0.829227308734128 * "HL_1_relu_1"."NEUR_1_1" + 0.679246422771721 * "HL_1_relu_1"."NEUR_1_2" + 0.460311259679915 * "HL_1_relu_1"."NEUR_1_3" + -0.506948640871074 AS "NEUR_2_4", -0.307552147680414 * "HL_1_relu_1"."NEUR_1_1" + -1.159736644159397 * "HL_1_relu_1"."NEUR_1_2" + -0.337910287385349 * "HL_1_relu_1"."NEUR_1_3" + -0.875404439848595 AS "NEUR_2_5" 
FROM tmp_20180417023633_7kno7o_hl_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(greatest("HL_BA_2"."NEUR_2_1", 0.0) AS FLOAT) AS "NEUR_2_1", CAST(greatest("HL_BA_2"."NEUR_2_2", 0.0) AS FLOAT) AS "NEUR_2_2", CAST(greatest("HL_BA_2"."NEUR_2_3", 0.0) AS FLOAT) AS "NEUR_2_3", CAST(greatest("HL_BA_2"."NEUR_2_4", 0.0) AS FLOAT) AS "NEUR_2_4", CAST(greatest("HL_BA_2"."NEUR_2_5", 0.0) AS FLOAT) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.978521703055982 * "HL_2_relu"."NEUR_2_1" + 1.81912130386739 * "HL_2_relu"."NEUR_2_2" + -2.864586516363912 * "HL_2_relu"."NEUR_2_3" + -0.18723803124118 * "HL_2_relu"."NEUR_2_4" + -0.275962482922718 * "HL_2_relu"."NEUR_2_5" + 3.68595151987124 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS FLOAT) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180417023633_wb2r5y_ol_i AS "OL_identity_1"