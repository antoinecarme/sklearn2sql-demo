-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : iris_str_tgt
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table 20180602_M3B_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_M3B_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	imputer_output_2 BINARY_DOUBLE, 
	imputer_output_3 BINARY_DOUBLE, 
	imputer_output_4 BINARY_DOUBLE, 
	imputer_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_M3B_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "20180602_M3B_ADS_IMP_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_STR_TGT" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table 20180602_O3Z_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_O3Z_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_output_2 BINARY_DOUBLE, 
	scaler_output_3 BINARY_DOUBLE, 
	scaler_output_4 BINARY_DOUBLE, 
	scaler_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_O3Z_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "20180602_O3Z_ADS_SCA_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS BINARY_DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS BINARY_DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS BINARY_DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS BINARY_DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM "20180602_M3B_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", dbms_random.value AS uniform 
FROM "20180602_O3Z_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.30833333333333335) THEN CLASS_0 ELSE CASE WHEN (random_number_cte.uniform <= 0.6416666666666666) THEN CLASS_1 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN CLASS_2 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.30833333333333335 AS "Proba_CLASS_0", CASE WHEN (0.30833333333333335 IS NULL OR 0.30833333333333335 > 0.0) THEN ln(0.30833333333333335) ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_CLASS_0", 0.3333333333333333 AS "Proba_CLASS_1", CASE WHEN (0.3333333333333333 IS NULL OR 0.3333333333333333 > 0.0) THEN ln(0.3333333333333333) ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_CLASS_1", 0.35833333333333334 AS "Proba_CLASS_2", CASE WHEN (0.35833333333333334 IS NULL OR 0.35833333333333334 > 0.0) THEN ln(0.35833333333333334) ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_CLASS_2", multinomial_cte.multinomial_expr AS "Decision", CASE WHEN (multinomial_cte.multinomial_expr = 'CLASS_0') THEN NULL WHEN (multinomial_cte.multinomial_expr = 'CLASS_1') THEN NULL WHEN (multinomial_cte.multinomial_expr = 'CLASS_2') THEN NULL END AS "DecisionProba" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_CLASS_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_CLASS_1", CAST(NULL AS BINARY_DOUBLE) AS "Score_CLASS_2", dummy_class_reg_cte."Proba_CLASS_0" AS "Proba_CLASS_0", dummy_class_reg_cte."Proba_CLASS_1" AS "Proba_CLASS_1", dummy_class_reg_cte."Proba_CLASS_2" AS "Proba_CLASS_2", dummy_class_reg_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", dummy_class_reg_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", dummy_class_reg_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", dummy_class_reg_cte."Decision" AS "Decision", dummy_class_reg_cte."DecisionProba" AS "DecisionProba" 
FROM dummy_class_reg_cte