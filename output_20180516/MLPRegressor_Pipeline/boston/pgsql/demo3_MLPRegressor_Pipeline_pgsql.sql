-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : boston
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT" (
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
	impter_12 FLOAT, 
	impter_13 FLOAT, 
	impter_14 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.3688565346534656 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 12.113861386138614 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 10.983613861386127 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.07178217821782178 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.5541153465346542 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.299148514851482 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 67.85049504950491 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.8198420792079233 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 9.55940594059406 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 405.8019801980198 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.40915841584154 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 358.3797277227715 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.626584158415856 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT_KEY" ON "TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT" (
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
	scaler_12 FLOAT, 
	scaler_13 FLOAT, 
	scaler_14 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 3.3688565346534656) / 7.9935268095335426 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 12.113861386138614) / 24.187656534977855 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 10.983613861386127) / 6.8177472477399235 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.07178217821782178) / 0.2581269011709685 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.5541153465346542) / 0.11800809760824685 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 6.299148514851482) / 0.7060417397996938 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 67.85049504950491) / 28.107403181658597 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 3.8198420792079233) / 2.0933726902675627 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 9.55940594059406) / 8.728803783375893 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 405.8019801980198) / 169.7858592930543 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 18.40915841584154) / 2.166792648327246 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 358.3797277227715) / 90.64691624336051 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 12.626584158415856) / 7.167938324035357 AS scaler_14 
FROM "TMP_20180516114834_CODEGEN_4XOS4E_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT_KEY" ON "TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1 part 2. Populate

WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS FLOAT) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS FLOAT) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS FLOAT) AS scaler_14 
FROM "TMP_20180516114834_CODEGEN_SSS64W_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -1.4856664295273128 * "IL".scaler_2 + -0.20410539468097985 * "IL".scaler_3 + 0.007591175642356889 * "IL".scaler_4 + -0.33187044152702727 * "IL".scaler_5 + 0.3561438750610232 * "IL".scaler_6 + 0.9794318645978862 * "IL".scaler_7 + -0.500001630103773 * "IL".scaler_8 + 0.21050389348264426 * "IL".scaler_9 + -1.5698430439215436 * "IL".scaler_10 + -0.2877542321309605 * "IL".scaler_11 + -0.2478680229958258 * "IL".scaler_12 + 0.2535880897730282 * "IL".scaler_13 + -0.02667480259039404 * "IL".scaler_14 + 0.8546537229954408 AS "NEUR_1_1", -0.6056527806777255 * "IL".scaler_2 + 0.3344462060449844 * "IL".scaler_3 + 0.36410374059970757 * "IL".scaler_4 + -0.07432681963760412 * "IL".scaler_5 + -0.6867861969685324 * "IL".scaler_6 + 0.8638612475585904 * "IL".scaler_7 + -0.17028134020488972 * "IL".scaler_8 + -1.00726937411895 * "IL".scaler_9 + 2.8962737775926826 * "IL".scaler_10 + 0.11077197617098662 * "IL".scaler_11 + -0.13681147265415128 * "IL".scaler_12 + 0.3136933267290882 * "IL".scaler_13 + -2.237318041586123 * "IL".scaler_14 + -0.8222707055144254 AS "NEUR_1_2", -0.11557014010181747 * "IL".scaler_2 + 0.145501704911903 * "IL".scaler_3 + -0.35991298527682497 * "IL".scaler_4 + 0.9794694667283736 * "IL".scaler_5 + -2.077969126563855 * "IL".scaler_6 + -0.782110655232133 * "IL".scaler_7 + 0.9149212599734994 * "IL".scaler_8 + -3.1145295450397024 * "IL".scaler_9 + 0.588044385891882 * "IL".scaler_10 + -0.1631919951431198 * "IL".scaler_11 + -0.9088394961786566 * "IL".scaler_12 + 0.044962223348402726 * "IL".scaler_13 + -0.41935909695518087 * "IL".scaler_14 + -1.2094627846758605 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1_KEY" ON "TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1" ("KEY")

-- Code For temporary table TMP_20180516114834_CODEGEN_968KG5_OL_identity_1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516114834_CODEGEN_968KG5_OL_identity_1" (
	"KEY" BIGINT NOT NULL, 
	"NEUR_3_1" FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516114834_CODEGEN_968KG5_OL_identity_1 part 2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.37816414109992424 * "HL_1_relu_1"."NEUR_1_1" + -1.0093198525746685 * "HL_1_relu_1"."NEUR_1_2" + -0.4520904285935851 * "HL_1_relu_1"."NEUR_1_3" + -0.6507499901911786 AS "NEUR_2_1", 2.365650922798578 * "HL_1_relu_1"."NEUR_1_1" + 2.3986824734651173 * "HL_1_relu_1"."NEUR_1_2" + 1.2256442865852404 * "HL_1_relu_1"."NEUR_1_3" + 3.6296563792209433 AS "NEUR_2_2", -1.1432704990895086 * "HL_1_relu_1"."NEUR_1_1" + 0.8632867864663158 * "HL_1_relu_1"."NEUR_1_2" + -2.287155815710403 * "HL_1_relu_1"."NEUR_1_3" + -0.5492199077262419 AS "NEUR_2_3", 0.8292273087341283 * "HL_1_relu_1"."NEUR_1_1" + 0.6792464227717212 * "HL_1_relu_1"."NEUR_1_2" + 0.4603112596799152 * "HL_1_relu_1"."NEUR_1_3" + -0.5069486408710743 AS "NEUR_2_4", -0.30755214768041406 * "HL_1_relu_1"."NEUR_1_1" + -1.159736644159397 * "HL_1_relu_1"."NEUR_1_2" + -0.33791028738534945 * "HL_1_relu_1"."NEUR_1_3" + -0.8754044398485946 AS "NEUR_2_5" 
FROM "TMP_20180516114834_CODEGEN_NNW5UG_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.9785217030559817 * "HL_2_relu"."NEUR_2_1" + 1.8191213038673901 * "HL_2_relu"."NEUR_2_2" + -2.8645865163639113 * "HL_2_relu"."NEUR_2_3" + -0.18723803124117971 * "HL_2_relu"."NEUR_2_4" + -0.275962482922718 * "HL_2_relu"."NEUR_2_5" + 3.6859515198712396 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 INSERT INTO "TMP_20180516114834_CODEGEN_968KG5_OL_identity_1" ("KEY", "NEUR_3_1") SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Code For temporary table TMP_20180516114834_CODEGEN_968KG5_OL_identity_1 part 3. Create Index 

CREATE INDEX "ix_TMP_20180516114834_CODEGEN_968KG5_OL_identity_1_KEY" ON "TMP_20180516114834_CODEGEN_968KG5_OL_identity_1" ("KEY")

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "TMP_20180516114834_CODEGEN_968KG5_OL_identity_1" AS "OL_identity_1"