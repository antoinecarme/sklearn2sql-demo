-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : freidman1
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516120823_codegen_ibeum8_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516120823_codegen_ibeum8_ads_imp_1_out  (
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
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516120823_codegen_ibeum8_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516120823_codegen_ibeum8_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516120823_codegen_q709n9_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516120823_codegen_q709n9_ads_sca_2_out  (
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
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516120823_codegen_q709n9_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516120823_codegen_q709n9_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.562984648480959 AS DOUBLE PRECISION)) / CAST(0.258371468339634 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.456064424233759 AS DOUBLE PRECISION)) / CAST(0.28787217307127 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.471138174814748 AS DOUBLE PRECISION)) / CAST(0.310921679155305 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.533968020094518 AS DOUBLE PRECISION)) / CAST(0.282619986740028 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(0.478093626237387 AS DOUBLE PRECISION)) / CAST(0.286140491317745 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(0.568284922417233 AS DOUBLE PRECISION)) / CAST(0.297674081064517 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.479143747142805 AS DOUBLE PRECISION)) / CAST(0.273531497143158 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.45941524772232 AS DOUBLE PRECISION)) / CAST(0.28721149346999 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(0.490110699680965 AS DOUBLE PRECISION)) / CAST(0.27904867173227 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.537880693370753 AS DOUBLE PRECISION)) / CAST(0.295819229654319 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516120823_codegen_ibeum8_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180516120823_codegen_aekikb_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516120823_codegen_aekikb_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516120823_codegen_aekikb_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516120823_codegen_aekikb_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516120823_codegen_q709n9_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(0.567241775700364 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.505779678962974 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-0.849867916464449 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-0.346287071915524 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.73199996039292 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(0.978724530263257 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-0.742740310138656 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(0.66601615636148 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(0.194425066133763 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.12890055432034 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(0.34530574847477 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(0.401919970619629 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.320788691656575 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-0.502877599278676 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(-0.299331315280806 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.872677621668898 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-0.346376933988543 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-0.595826705717408 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-0.683856113569104 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(0.677174639830388 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(0.218873565904166 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-1.195307175610732 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(0.268625462529485 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.583012407708606 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(0.338845784350408 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(0.805903675493168 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.105901491471703 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-0.259558665209035 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(0.150335624801316 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(0.006808924516459 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-0.10748228978945 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-0.153462819999432 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(1.544472791121266 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180516120823_codegen_wgsqjw_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516120823_codegen_wgsqjw_ol_identity_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516120823_codegen_wgsqjw_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180516120823_codegen_wgsqjw_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(-0.759500339544179 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.528025674330556 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(0.05395390841629 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.227663489469582 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-0.758603633844069 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.32193110959003 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.887424755524296 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-1.475269923152344 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(0.775239958882482 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(1.533634014206331 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(1.9994012931796 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(0.830362556528088 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(0.111089492526659 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.50473873033059 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.406628519622343 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.796433042433614 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.638103709568403 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.31075163176964 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.660792834217789 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.613817802069197 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180516120823_codegen_aekikb_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(0.215369647917113 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(0.259622540935222 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(2.027453178689807 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(0.70083642121971 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-0.216020546381801 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(5.184786172736181 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180516120823_codegen_wgsqjw_ol_identity_1 AS "OL_identity_1"