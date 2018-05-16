-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : FourClass_10
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT" (
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
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT_KEY" ON "TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT" (
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
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM "TMP_20180516112304_CODEGEN_YZDRJ0_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT_KEY" ON "TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM "TMP_20180516112304_CODEGEN_4FOX4L_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.225) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.475) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.725) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.225 AS "Proba_0", CASE WHEN (0.225 IS NULL OR 0.225 > 0.0) THEN ln(0.225) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.25 AS "Proba_1", CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN ln(0.25) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.25 AS "Proba_2", CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN ln(0.25) ELSE -1.79769313486231e+308 END AS "LogProba_2", 0.275 AS "Proba_3", CASE WHEN (0.275 IS NULL OR 0.275 > 0.0) THEN ln(0.275) ELSE -1.79769313486231e+308 END AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte