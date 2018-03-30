-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table 32327_D42F27_ADS_IMP_1_OUT part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "32327_D42F27_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	imputer_output_2 BINARY_DOUBLE, 
	imputer_output_3 BINARY_DOUBLE, 
	imputer_output_4 BINARY_DOUBLE, 
	imputer_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 32327_D42F27_ADS_IMP_1_OUT part 2/2. Populate

INSERT INTO "32327_D42F27_ADS_IMP_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "FREIDMAN2" "ADS") "ADS_imp_1_OUT") "U"
-- Code For temporary table 32327_E0FGGD_ADS_SCA_2_OUT part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "32327_E0FGGD_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_output_2 BINARY_DOUBLE, 
	scaler_output_3 BINARY_DOUBLE, 
	scaler_output_4 BINARY_DOUBLE, 
	scaler_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 32327_E0FGGD_ADS_SCA_2_OUT part 2/2. Populate

INSERT INTO "32327_E0FGGD_ADS_SCA_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS BINARY_DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS BINARY_DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS BINARY_DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS BINARY_DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "32327_D42F27_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"
-- Code For temporary table 9232327_I4DZMW_HL_1_RELU_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "9232327_I4DZMW_HL_1_RELU_1" (
	"KEY" NUMBER(19), 
	"NEUR_1_1" BINARY_DOUBLE, 
	"NEUR_1_2" BINARY_DOUBLE, 
	"NEUR_1_3" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 9232327_I4DZMW_HL_1_RELU_1 part 2/2. Populate

INSERT INTO "9232327_I4DZMW_HL_1_RELU_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS BINARY_DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS BINARY_DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS BINARY_DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS BINARY_DOUBLE) AS scaler_output_5 
FROM "32327_E0FGGD_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -4.616183815119964 * "IL".scaler_output_2 + 0.7031967679714437 * "IL".scaler_output_3 + 2.474660428438955 * "IL".scaler_output_4 + -1.7136355164916055 * "IL".scaler_output_5 + -0.12640354554184774 AS "NEUR_1_1", -5.271045034507839 * "IL".scaler_output_2 + 4.772317610378354 * "IL".scaler_output_3 + 7.720316301435171 * "IL".scaler_output_4 + -1.1935673934631335 * "IL".scaler_output_5 + 3.8388870330522384 AS "NEUR_1_2", 7.794970265681159 * "IL".scaler_output_2 + 13.0023744548319 * "IL".scaler_output_3 + 10.890756920408942 * "IL".scaler_output_4 + 2.8058240193255464 * "IL".scaler_output_5 + 8.893502051887332 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(greatest("HL_BA_1"."NEUR_1_1", 0.0) AS BINARY_DOUBLE) AS "NEUR_1_1", CAST(greatest("HL_BA_1"."NEUR_1_2", 0.0) AS BINARY_DOUBLE) AS "NEUR_1_2", CAST(greatest("HL_BA_1"."NEUR_1_3", 0.0) AS BINARY_DOUBLE) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") "HL_1_relu_1") "U"
-- Code For temporary table 32327_06EFZO_OL_IDENTITY_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE "32327_06EFZO_OL_IDENTITY_1" (
	"KEY" NUMBER(19), 
	"NEUR_3_1" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS
-- Code For temporary table 32327_06EFZO_OL_IDENTITY_1 part 2/2. Populate

INSERT INTO "32327_06EFZO_OL_IDENTITY_1" ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -4.9660127043706135 * "HL_1_relu_1"."NEUR_1_1" + 2.3584487309674573 * "HL_1_relu_1"."NEUR_1_2" + -0.874009039910178 * "HL_1_relu_1"."NEUR_1_3" + 4.58002067620665 AS "NEUR_2_1", -0.03827028221122839 * "HL_1_relu_1"."NEUR_1_1" + -1.1003529646775052 * "HL_1_relu_1"."NEUR_1_2" + -2.284216253240719 * "HL_1_relu_1"."NEUR_1_3" + -1.1481866204077642 AS "NEUR_2_2", -0.30072143835893156 * "HL_1_relu_1"."NEUR_1_1" + -0.8273497881393219 * "HL_1_relu_1"."NEUR_1_2" + -0.3010479096328519 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.34133329717297284 * "HL_1_relu_1"."NEUR_1_1" + -0.5189026128544831 * "HL_1_relu_1"."NEUR_1_2" + -0.1223304091263583 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -0.061924106672967334 * "HL_1_relu_1"."NEUR_1_1" + 10.905065045765516 * "HL_1_relu_1"."NEUR_1_2" + 8.059164495032318 * "HL_1_relu_1"."NEUR_1_3" + 7.619391280375899 AS "NEUR_2_5" 
FROM "9232327_I4DZMW_HL_1_RELU_1" "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(greatest("HL_BA_2"."NEUR_2_1", 0.0) AS BINARY_DOUBLE) AS "NEUR_2_1", CAST(greatest("HL_BA_2"."NEUR_2_2", 0.0) AS BINARY_DOUBLE) AS "NEUR_2_2", CAST(greatest("HL_BA_2"."NEUR_2_3", 0.0) AS BINARY_DOUBLE) AS "NEUR_2_3", CAST(greatest("HL_BA_2"."NEUR_2_4", 0.0) AS BINARY_DOUBLE) AS "NEUR_2_4", CAST(greatest("HL_BA_2"."NEUR_2_5", 0.0) AS BINARY_DOUBLE) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 14.97754794085944 * "HL_2_relu"."NEUR_2_1" + 1.5079331935837978 * "HL_2_relu"."NEUR_2_2" + -0.7183995152784949 * "HL_2_relu"."NEUR_2_3" + 0.6829635668748275 * "HL_2_relu"."NEUR_2_4" + 2.3796616121794933 * "HL_2_relu"."NEUR_2_5" + 54.96344431473489 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS BINARY_DOUBLE) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") "OL_identity_1") "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM "32327_06EFZO_OL_IDENTITY_1" "OL_identity_1"