-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : iris_str_tgt
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM iris_str_tgt AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT_KEY" ON "TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM "TMP_20180516130523_CODEGEN_IQ9YC2_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT_KEY" ON "TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.5739872455596924) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516130523_CODEGEN_URIT7D_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_CLASS_0" AS FLOAT) AS "P_CLASS_0", CAST("Values"."P_CLASS_1" AS FLOAT) AS "P_CLASS_1", CAST("Values"."P_CLASS_2" AS FLOAT) AS "P_CLASS_2", CAST("Values"."D" AS FLOAT) AS "D", CAST("Values"."DP" AS FLOAT) AS "DP" 
FROM (SELECT 1 AS nid, 1.0 AS "P_CLASS_0", 0.0 AS "P_CLASS_1", 0.0 AS "P_CLASS_2", 'CLASS_0' AS "D", 1.0 AS "DP" UNION ALL SELECT 4 AS nid, 0.0 AS "P_CLASS_0", 1.0 AS "P_CLASS_1", 0.0 AS "P_CLASS_2", 'CLASS_1' AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 0.0 AS "P_CLASS_0", 0.0 AS "P_CLASS_1", 1.0 AS "P_CLASS_2", 'CLASS_2' AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 0.0 AS "P_CLASS_0", 1.0 AS "P_CLASS_1", 0.0 AS "P_CLASS_2", 'CLASS_1' AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_CLASS_0", 0.0 AS "P_CLASS_1", 1.0 AS "P_CLASS_2", 'CLASS_2' AS "D", 1.0 AS "DP" UNION ALL SELECT 12 AS nid, 0.0 AS "P_CLASS_0", 1.0 AS "P_CLASS_1", 0.0 AS "P_CLASS_2", 'CLASS_1' AS "D", 1.0 AS "DP" UNION ALL SELECT 13 AS nid, 0.0 AS "P_CLASS_0", 0.0 AS "P_CLASS_1", 1.0 AS "P_CLASS_2", 'CLASS_2' AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 0.0 AS "P_CLASS_0", 0.0 AS "P_CLASS_1", 1.0 AS "P_CLASS_2", 'CLASS_2' AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_CLASS_0" AS "P_CLASS_0", "DT_node_data"."P_CLASS_1" AS "P_CLASS_1", "DT_node_data"."P_CLASS_2" AS "P_CLASS_2", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_CLASS_0", CAST(NULL AS FLOAT) AS "Score_CLASS_1", CAST(NULL AS FLOAT) AS "Score_CLASS_2", "DT_Output"."P_CLASS_0" AS "Proba_CLASS_0", "DT_Output"."P_CLASS_1" AS "Proba_CLASS_1", "DT_Output"."P_CLASS_2" AS "Proba_CLASS_2", CASE WHEN ("DT_Output"."P_CLASS_0" IS NULL OR "DT_Output"."P_CLASS_0" > 0.0) THEN ln("DT_Output"."P_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN ("DT_Output"."P_CLASS_1" IS NULL OR "DT_Output"."P_CLASS_1" > 0.0) THEN ln("DT_Output"."P_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN ("DT_Output"."P_CLASS_2" IS NULL OR "DT_Output"."P_CLASS_2" > 0.0) THEN ln("DT_Output"."P_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"