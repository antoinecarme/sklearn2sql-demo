-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT" (
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



-- Code For temporary table TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT_KEY" ON "TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" (
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



-- Code For temporary table TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM "TMP_20180508180108_CODEGEN_VEXKGE_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT_KEY" ON "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20180508180108_CODEGEN_F8ULG0_XGB_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_F8ULG0_XGB_B0" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20180508180108_CODEGEN_F8ULG0_XGB_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 < -0.24119442701339722) THEN 1 ELSE 2 END AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 1 AS nid, -0.11818181723356247 AS "Score" UNION ALL SELECT 2 AS nid, 0.11818181723356247 AS "Score") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, -6.692246756756504e-09 AS "Score") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, -6.692246756756504e-09 AS "Score") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180508180108_CODEGEN_F8ULG0_XGB_B0" ("KEY", "Score_0") SELECT "XGB_B0"."KEY", "XGB_B0"."Score_0" 
FROM (SELECT "XGB_esu_0"."KEY" AS "KEY", "XGB_esu_0"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_0"."KEY" AS "KEY", "XGB_Model_0_0"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_0" UNION ALL SELECT "XGB_Model_0_1"."KEY" AS "KEY", "XGB_Model_0_1"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_1" UNION ALL SELECT "XGB_Model_0_2"."KEY" AS "KEY", "XGB_Model_0_2"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_2" UNION ALL SELECT "XGB_Model_0_3"."KEY" AS "KEY", "XGB_Model_0_3"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_3" UNION ALL SELECT "XGB_Model_0_4"."KEY" AS "KEY", "XGB_Model_0_4"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_4" UNION ALL SELECT "XGB_Model_0_5"."KEY" AS "KEY", "XGB_Model_0_5"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_5" UNION ALL SELECT "XGB_Model_0_6"."KEY" AS "KEY", "XGB_Model_0_6"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_6" UNION ALL SELECT "XGB_Model_0_7"."KEY" AS "KEY", "XGB_Model_0_7"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_7" UNION ALL SELECT "XGB_Model_0_8"."KEY" AS "KEY", "XGB_Model_0_8"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_8" UNION ALL SELECT "XGB_Model_0_9"."KEY" AS "KEY", "XGB_Model_0_9"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_9") AS "XGB_esu_0") AS "XGB_B0"

-- Code For temporary table TMP_20180508180108_CODEGEN_H9FOJN_XGB_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_H9FOJN_XGB_B1" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20180508180108_CODEGEN_H9FOJN_XGB_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, -6.692246756756504e-09 AS "Score") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, -6.692246756756504e-09 AS "Score") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, -6.692246756756504e-09 AS "Score") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0 AS node_id_2 
FROM "TMP_20180508180108_CODEGEN_M195QG_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS FLOAT) AS "Score" 
FROM (SELECT 0 AS nid, 4.698811562064975e-09 AS "Score") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180508180108_CODEGEN_H9FOJN_XGB_B1" ("KEY", "Score_0") SELECT "XGB_B1"."KEY", "XGB_B1"."Score_0" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_10"."KEY" AS "KEY", "XGB_Model_0_10"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_10" UNION ALL SELECT "XGB_Model_0_11"."KEY" AS "KEY", "XGB_Model_0_11"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_11" UNION ALL SELECT "XGB_Model_0_12"."KEY" AS "KEY", "XGB_Model_0_12"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_12" UNION ALL SELECT "XGB_Model_0_13"."KEY" AS "KEY", "XGB_Model_0_13"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_13" UNION ALL SELECT "XGB_Model_0_14"."KEY" AS "KEY", "XGB_Model_0_14"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_14" UNION ALL SELECT "XGB_Model_0_15"."KEY" AS "KEY", "XGB_Model_0_15"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_15") AS "XGB_esu_1") AS "XGB_B1"

-- Code For temporary table TMP_20180508180108_CODEGEN_TZVMA4_XGB_Union part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_TZVMA4_XGB_Union" (
	"KEY" BIGINT, 
	"Score_0" FLOAT
)



-- Code For temporary table TMP_20180508180108_CODEGEN_TZVMA4_XGB_Union part 2. Populate

INSERT INTO "TMP_20180508180108_CODEGEN_TZVMA4_XGB_Union" ("KEY", "Score_0") SELECT "XGB_Union"."KEY", "XGB_Union"."Score_0" 
FROM (SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
FROM "TMP_20180508180108_CODEGEN_F8ULG0_XGB_B0" AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM "TMP_20180508180108_CODEGEN_H9FOJN_XGB_B1" AS "XGB_B1") AS "XGB_EnsembleUnion") AS "XGB_Union"

-- Code For temporary table TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum part 2. Populate

INSERT INTO "TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum" ("KEY", "Score_0") SELECT "XGB_sum"."KEY", "XGB_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS FLOAT) AS "Score_0" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Score_0") AS "Score_0" 
FROM "TMP_20180508180108_CODEGEN_TZVMA4_XGB_Union" AS "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum"

-- Code For temporary table TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum part 3. Create Index 

CREATE INDEX "ix_TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum_KEY" ON "TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(min(max(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20180508180108_CODEGEN_RGOH8F_XGB_sum" AS "XGB_sum"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte