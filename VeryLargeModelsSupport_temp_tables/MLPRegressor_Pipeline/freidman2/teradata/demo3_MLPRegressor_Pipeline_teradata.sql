-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : freidman2
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417040503_v443zg_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417040503_v443zg_ads_  (
	"KEY" BIGINT, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417040503_v443zg_ads_ part 2/2. Populate

INSERT INTO tmp_20180417040503_v443zg_ads_ ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180417040503_zdvve3_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417040503_zdvve3_ads_  (
	"KEY" BIGINT, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417040503_zdvve3_ads_ part 2/2. Populate

INSERT INTO tmp_20180417040503_zdvve3_ads_ ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.79128122207402) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 945.9672833084397) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.531000909997521) / 0.290186328214479 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM tmp_20180417040503_v443zg_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180417040503_f1em77_hl_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417040503_f1em77_hl_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417040503_f1em77_hl_1 part 2/2. Populate

INSERT INTO tmp_20180417040503_f1em77_hl_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS FLOAT) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS FLOAT) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS FLOAT) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS FLOAT) AS scaler_output_5 
FROM tmp_20180417040503_zdvve3_ads_ AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -4.616183815119964 * "IL".scaler_output_2 + 0.703196767971444 * "IL".scaler_output_3 + 2.474660428438955 * "IL".scaler_output_4 + -1.713635516491606 * "IL".scaler_output_5 + -0.126403545541848 AS "NEUR_1_1", -5.271045034507839 * "IL".scaler_output_2 + 4.772317610378354 * "IL".scaler_output_3 + 7.720316301435171 * "IL".scaler_output_4 + -1.193567393463134 * "IL".scaler_output_5 + 3.838887033052238 AS "NEUR_1_2", 7.794970265681159 * "IL".scaler_output_2 + 13.0023744548319 * "IL".scaler_output_3 + 10.890756920408942 * "IL".scaler_output_4 + 2.805824019325546 * "IL".scaler_output_5 + 8.893502051887332 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(greatest("HL_BA_1"."NEUR_1_1", 0.0) AS FLOAT) AS "NEUR_1_1", CAST(greatest("HL_BA_1"."NEUR_1_2", 0.0) AS FLOAT) AS "NEUR_1_2", CAST(greatest("HL_BA_1"."NEUR_1_3", 0.0) AS FLOAT) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180417040503_vzeg86_ol_i part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417040503_vzeg86_ol_i  (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417040503_vzeg86_ol_i part 2/2. Populate

INSERT INTO tmp_20180417040503_vzeg86_ol_i ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -4.966012704370613 * "HL_1_relu_1"."NEUR_1_1" + 2.358448730967458 * "HL_1_relu_1"."NEUR_1_2" + -0.874009039910178 * "HL_1_relu_1"."NEUR_1_3" + 4.58002067620665 AS "NEUR_2_1", -0.038270282211228 * "HL_1_relu_1"."NEUR_1_1" + -1.100352964677505 * "HL_1_relu_1"."NEUR_1_2" + -2.284216253240719 * "HL_1_relu_1"."NEUR_1_3" + -1.148186620407764 AS "NEUR_2_2", -0.300721438358932 * "HL_1_relu_1"."NEUR_1_1" + -0.827349788139322 * "HL_1_relu_1"."NEUR_1_2" + -0.301047909632852 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777 AS "NEUR_2_3", -0.341333297172973 * "HL_1_relu_1"."NEUR_1_1" + -0.518902612854483 * "HL_1_relu_1"."NEUR_1_2" + -0.122330409126358 * "HL_1_relu_1"."NEUR_1_3" + -0.740628349606889 AS "NEUR_2_4", -0.061924106672967 * "HL_1_relu_1"."NEUR_1_1" + 10.905065045765516 * "HL_1_relu_1"."NEUR_1_2" + 8.059164495032318 * "HL_1_relu_1"."NEUR_1_3" + 7.619391280375899 AS "NEUR_2_5" 
FROM tmp_20180417040503_f1em77_hl_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(greatest("HL_BA_2"."NEUR_2_1", 0.0) AS FLOAT) AS "NEUR_2_1", CAST(greatest("HL_BA_2"."NEUR_2_2", 0.0) AS FLOAT) AS "NEUR_2_2", CAST(greatest("HL_BA_2"."NEUR_2_3", 0.0) AS FLOAT) AS "NEUR_2_3", CAST(greatest("HL_BA_2"."NEUR_2_4", 0.0) AS FLOAT) AS "NEUR_2_4", CAST(greatest("HL_BA_2"."NEUR_2_5", 0.0) AS FLOAT) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 14.97754794085944 * "HL_2_relu"."NEUR_2_1" + 1.507933193583798 * "HL_2_relu"."NEUR_2_2" + -0.718399515278495 * "HL_2_relu"."NEUR_2_3" + 0.682963566874828 * "HL_2_relu"."NEUR_2_4" + 2.379661612179494 * "HL_2_relu"."NEUR_2_5" + 54.96344431473489 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS FLOAT) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180417040503_vzeg86_ol_i AS "OL_identity_1"