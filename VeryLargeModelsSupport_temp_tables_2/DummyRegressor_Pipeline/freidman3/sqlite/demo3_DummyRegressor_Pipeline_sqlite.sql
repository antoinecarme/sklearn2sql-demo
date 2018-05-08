-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor_Pipeline
-- Dataset : freidman3
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT_KEY" ON "TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "TMP_20180508185148_CODEGEN_0D1PEZ_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT_KEY" ON "TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 1.3612342030259192 AS "Constant" 
FROM "TMP_20180508185148_CODEGEN_1I87Z4_ADS_sca_2_OUT" AS "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte