-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : iris_date_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602153402_qon_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602153402_qon_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602153402_qon_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602153402_qon_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_DATE_TGT" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602153402_o93_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602153402_o93_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602153402_o93_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602153402_o93_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM tmp_20180602153402_qon_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM tmp_20180602153402_o93_ads_sca_2_out AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.30833333333333335) THEN 1789-07-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= 0.6416666666666666) THEN 1789-08-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1789-09-14T00:00:00.000000000 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.30833333333333335 AS "Proba_1789-07-14T00:00:00.000000000", CASE WHEN (0.30833333333333335 IS NULL OR 0.30833333333333335 > 0.0) THEN ln(0.30833333333333335) ELSE -1.79769313486231e+308 END AS "LogProba_1789-07-14T00:00:00.000000000", 0.3333333333333333 AS "Proba_1789-08-14T00:00:00.000000000", CASE WHEN (0.3333333333333333 IS NULL OR 0.3333333333333333 > 0.0) THEN ln(0.3333333333333333) ELSE -1.79769313486231e+308 END AS "LogProba_1789-08-14T00:00:00.000000000", 0.35833333333333334 AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN (0.35833333333333334 IS NULL OR 0.35833333333333334 > 0.0) THEN ln(0.35833333333333334) ELSE -1.79769313486231e+308 END AS "LogProba_1789-09-14T00:00:00.000000000", multinomial_cte.multinomial_expr AS "Decision", CASE WHEN (multinomial_cte.multinomial_expr = '1789-07-14T00:00:00.000000000') THEN NULL WHEN (multinomial_cte.multinomial_expr = '1789-08-14T00:00:00.000000000') THEN NULL WHEN (multinomial_cte.multinomial_expr = '1789-09-14T00:00:00.000000000') THEN NULL END AS "DecisionProba" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", dummy_class_reg_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", dummy_class_reg_cte."Decision" AS "Decision", dummy_class_reg_cte."DecisionProba" AS "DecisionProba" 
FROM dummy_class_reg_cte