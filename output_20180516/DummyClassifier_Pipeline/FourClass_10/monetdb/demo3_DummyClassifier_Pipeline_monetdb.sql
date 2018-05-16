-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : FourClass_10
-- Database : monetdb


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112304_codegen_m0u9xv_ads_imp_1_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516112304_codegen_m0u9xv_ads_imp_1_out (
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

-- Code For temporary table tmp_20180516112304_codegen_m0u9xv_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516112304_codegen_m0u9xv_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516112304_codegen_ponu3v_ads_sca_2_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516112304_codegen_ponu3v_ads_sca_2_out (
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

-- Code For temporary table tmp_20180516112304_codegen_ponu3v_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516112304_codegen_ponu3v_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM tmp_20180516112304_codegen_m0u9xv_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", rand() AS uniform 
FROM tmp_20180516112304_codegen_ponu3v_ads_sca_2_out AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.225) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.475) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.725) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.225 AS "Proba_0", log(CASE WHEN (0.225 IS NULL OR 0.225 > 1e-100) THEN 0.225 ELSE 1e-100 END) AS "LogProba_0", 0.25 AS "Proba_1", log(CASE WHEN (0.25 IS NULL OR 0.25 > 1e-100) THEN 0.25 ELSE 1e-100 END) AS "LogProba_1", 0.25 AS "Proba_2", log(CASE WHEN (0.25 IS NULL OR 0.25 > 1e-100) THEN 0.25 ELSE 1e-100 END) AS "LogProba_2", 0.275 AS "Proba_3", log(CASE WHEN (0.275 IS NULL OR 0.275 > 1e-100) THEN 0.275 ELSE 1e-100 END) AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte