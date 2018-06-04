-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : freidman1
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602151321_0gu_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602151321_0gu_ads_imp_1_out (
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

-- Code For temporary table tmp_20180602151321_0gu_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602151321_0gu_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FREIDMAN1" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602151321_ink_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602151321_ink_ads_sca_2_out (
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

-- Code For temporary table tmp_20180602151321_ink_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602151321_ink_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM tmp_20180602151321_0gu_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180602151321_6tu_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602151321_6tu_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602151321_6tu_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602151321_6tu_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11 
FROM tmp_20180602151321_ink_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.5672417757003642 * "IL".scaler_2 + 0.5057796789629737 * "IL".scaler_3 + -0.8498679164644488 * "IL".scaler_4 + -0.34628707191552416 * "IL".scaler_5 + 0.7319999603929198 * "IL".scaler_6 + 0.978724530263257 * "IL".scaler_7 + -0.742740310138656 * "IL".scaler_8 + 0.6660161563614796 * "IL".scaler_9 + 0.19442506613376276 * "IL".scaler_10 + -0.12890055432033962 * "IL".scaler_11 + 0.3453057484747701 AS "NEUR_1_1", 0.4019199706196294 * "IL".scaler_2 + 0.32078869165657486 * "IL".scaler_3 + -0.502877599278676 * "IL".scaler_4 + -0.2993313152808058 * "IL".scaler_5 + 0.8726776216688985 * "IL".scaler_6 + -0.3463769339885429 * "IL".scaler_7 + -0.5958267057174076 * "IL".scaler_8 + -0.6838561135691036 * "IL".scaler_9 + 0.6771746398303877 * "IL".scaler_10 + 0.2188735659041657 * "IL".scaler_11 + -1.1953071756107314 AS "NEUR_1_2", 0.26862546252948466 * "IL".scaler_2 + 0.5830124077086065 * "IL".scaler_3 + 0.3388457843504076 * "IL".scaler_4 + 0.8059036754931677 * "IL".scaler_5 + 0.10590149147170344 * "IL".scaler_6 + -0.25955866520903487 * "IL".scaler_7 + 0.15033562480131626 * "IL".scaler_8 + 0.006808924516458687 * "IL".scaler_9 + -0.10748228978944972 * "IL".scaler_10 + -0.1534628199994319 * "IL".scaler_11 + 1.5444727911212666 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180602151321_bw6_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602151321_bw6_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602151321_bw6_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180602151321_bw6_ol_identity_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.7595003395441787 * "HL_1_relu_1"."NEUR_1_1" + 0.5280256743305564 * "HL_1_relu_1"."NEUR_1_2" + 0.05395390841629002 * "HL_1_relu_1"."NEUR_1_3" + -0.22766348946958154 AS "NEUR_2_1", -0.7586036338440688 * "HL_1_relu_1"."NEUR_1_1" + -0.3219311095900301 * "HL_1_relu_1"."NEUR_1_2" + -0.887424755524296 * "HL_1_relu_1"."NEUR_1_3" + -1.4752699231523443 AS "NEUR_2_2", 0.7752399588824818 * "HL_1_relu_1"."NEUR_1_1" + 1.5336340142063307 * "HL_1_relu_1"."NEUR_1_2" + 1.9994012931795995 * "HL_1_relu_1"."NEUR_1_3" + 0.8303625565280884 AS "NEUR_2_3", 0.11108949252665852 * "HL_1_relu_1"."NEUR_1_1" + -0.5047387303305901 * "HL_1_relu_1"."NEUR_1_2" + -0.40662851962234314 * "HL_1_relu_1"."NEUR_1_3" + -0.7964330424336139 AS "NEUR_2_4", -0.6381037095684027 * "HL_1_relu_1"."NEUR_1_1" + 0.3107516317696397 * "HL_1_relu_1"."NEUR_1_2" + -0.6607928342177893 * "HL_1_relu_1"."NEUR_1_3" + -0.6138178020691967 AS "NEUR_2_5" 
FROM tmp_20180602151321_6tu_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.21536964791711305 * "HL_2_relu"."NEUR_2_1" + 0.25962254093522197 * "HL_2_relu"."NEUR_2_2" + 2.027453178689807 * "HL_2_relu"."NEUR_2_3" + 0.7008364212197095 * "HL_2_relu"."NEUR_2_4" + -0.21602054638180057 * "HL_2_relu"."NEUR_2_5" + 5.184786172736181 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180602151321_bw6_ol_identity_1 AS "OL_identity_1"