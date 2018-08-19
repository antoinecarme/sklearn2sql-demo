-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid_Pipeline
-- Dataset : BinaryClass_10
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table 20180602_A6X_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_A6X_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	impter_2 BINARY_DOUBLE, 
	impter_3 BINARY_DOUBLE, 
	impter_4 BINARY_DOUBLE, 
	impter_5 BINARY_DOUBLE, 
	impter_6 BINARY_DOUBLE, 
	impter_7 BINARY_DOUBLE, 
	impter_8 BINARY_DOUBLE, 
	impter_9 BINARY_DOUBLE, 
	impter_10 BINARY_DOUBLE, 
	impter_11 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_A6X_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "20180602_A6X_ADS_IMP_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BINARYCLASS_10" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table 20180602_NC0_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "20180602_NC0_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_2 BINARY_DOUBLE, 
	scaler_3 BINARY_DOUBLE, 
	scaler_4 BINARY_DOUBLE, 
	scaler_5 BINARY_DOUBLE, 
	scaler_6 BINARY_DOUBLE, 
	scaler_7 BINARY_DOUBLE, 
	scaler_8 BINARY_DOUBLE, 
	scaler_9 BINARY_DOUBLE, 
	scaler_10 BINARY_DOUBLE, 
	scaler_11 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table 20180602_NC0_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "20180602_NC0_ADS_SCA_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS BINARY_DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS BINARY_DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS BINARY_DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS BINARY_DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS BINARY_DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS BINARY_DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS BINARY_DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS BINARY_DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS BINARY_DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS BINARY_DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM "20180602_A6X_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Code For temporary table MP_20180602_9AT_CALPROB_B0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "MP_20180602_9AT_CALPROB_B0" (
	"KEY" NUMBER(19), 
	"Proba_1" BINARY_DOUBLE, 
	"Proba_0" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table MP_20180602_9AT_CALPROB_B0 part 2. Populate

INSERT INTO "MP_20180602_9AT_CALPROB_B0" ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.167745441198349) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0334277153015137) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.6659789085388184) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.7904822826385498) THEN 9 ELSE 10 END END AS node_id_2 
FROM "20180602_NC0_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS BINARY_DOUBLE) AS "P_0", CAST("Values"."P_1" AS BINARY_DOUBLE) AS "P_1", CAST("Values"."D" AS BINARY_DOUBLE) AS "D", CAST("Values"."DP" AS BINARY_DOUBLE) AS "DP" 
FROM (SELECT 4 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 5 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 10 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"Calibrated_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output"), 
sigmoid_calibration_0 AS 
(SELECT "Calibrated_Model_0"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.3640840384918076 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.9661855827081625)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.3640840384918076 * "Calibrated_Model_0"."ScoreOrProba_1" + -0.9661855827081625)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_0"), 
"Normalized_Probas" AS 
(SELECT sigmoid_calibration_0."KEY" AS "KEY", sigmoid_calibration_0."Proba_1" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_1", sigmoid_calibration_0."Proba_0" / (sigmoid_calibration_0."Proba_0" + sigmoid_calibration_0."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_0), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.07101128250360489) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.7515931129455566) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.4045209884643555) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.0299372673034668) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.4344911575317383) THEN 11 ELSE 12 END END AS node_id_2 
FROM "20180602_NC0_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS BINARY_DOUBLE) AS "P_0", CAST("Values"."P_1" AS BINARY_DOUBLE) AS "P_1", CAST("Values"."D" AS BINARY_DOUBLE) AS "D", CAST("Values"."DP" AS BINARY_DOUBLE) AS "DP" 
FROM (SELECT 5 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 6 AS nid, 0.75 AS "P_0", 0.25 AS "P_1", 0 AS "D", 0.75 AS "DP" FROM DUAL UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 12 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."P_0" AS "P_0", "DT_node_data_1"."P_1" AS "P_1", "DT_node_data_1"."D" AS "D", "DT_node_data_1"."DP" AS "DP" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"Calibrated_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_1"."P_0" AS "Proba_0", "DT_Output_1"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_1"."P_0" IS NULL OR "DT_Output_1"."P_0" > 0.0) THEN ln("DT_Output_1"."P_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN ("DT_Output_1"."P_1" IS NULL OR "DT_Output_1"."P_1" > 0.0) THEN ln("DT_Output_1"."P_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_1"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_1"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_1"), 
sigmoid_calibration_1 AS 
(SELECT "Calibrated_Model_1"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.7526301314605353 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(2.7526301314605353 * "Calibrated_Model_1"."ScoreOrProba_1" + -1.597109346935524)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_1"), 
"Normalized_Probas_1" AS 
(SELECT sigmoid_calibration_1."KEY" AS "KEY", sigmoid_calibration_1."Proba_1" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_1", sigmoid_calibration_1."Proba_0" / (sigmoid_calibration_1."Proba_0" + sigmoid_calibration_1."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_1), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.07101128250360489) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.7556507587432861) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.7515931129455566) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.5206031799316406) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.0610102415084839) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.8911219835281372) THEN 11 ELSE 12 END END AS node_id_2 
FROM "20180602_NC0_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS BINARY_DOUBLE) AS "P_0", CAST("Values"."P_1" AS BINARY_DOUBLE) AS "P_1", CAST("Values"."D" AS BINARY_DOUBLE) AS "D", CAST("Values"."DP" AS BINARY_DOUBLE) AS "DP" 
FROM (SELECT 5 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 6 AS nid, 0.8 AS "P_0", 0.2 AS "P_1", 0 AS "D", 0.8 AS "DP" FROM DUAL UNION ALL SELECT 7 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 12 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."P_0" AS "P_0", "DT_node_data_2"."P_1" AS "P_1", "DT_node_data_2"."D" AS "D", "DT_node_data_2"."DP" AS "DP" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"Calibrated_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_2"."P_0" AS "Proba_0", "DT_Output_2"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_2"."P_0" IS NULL OR "DT_Output_2"."P_0" > 0.0) THEN ln("DT_Output_2"."P_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN ("DT_Output_2"."P_1" IS NULL OR "DT_Output_2"."P_1" > 0.0) THEN ln("DT_Output_2"."P_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_2"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_2"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_2"), 
sigmoid_calibration_2 AS 
(SELECT "Calibrated_Model_2"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.650659014145948 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.2527629098223436)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(3.650659014145948 * "Calibrated_Model_2"."ScoreOrProba_1" + -1.2527629098223436)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_2"), 
"Normalized_Probas_2" AS 
(SELECT sigmoid_calibration_2."KEY" AS "KEY", sigmoid_calibration_2."Proba_1" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_1", sigmoid_calibration_2."Proba_0" / (sigmoid_calibration_2."Proba_0" + sigmoid_calibration_2."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_2), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.17995494604110718) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.4718672037124634) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.77065110206604) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0334277153015137) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.8862568140029907) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.7904822826385498) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.010654184967279434) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.21191619336605072) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END END AS node_id_2 
FROM "20180602_NC0_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS BINARY_DOUBLE) AS "P_0", CAST("Values"."P_1" AS BINARY_DOUBLE) AS "P_1", CAST("Values"."D" AS BINARY_DOUBLE) AS "D", CAST("Values"."DP" AS BINARY_DOUBLE) AS "DP" 
FROM (SELECT 5 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 7 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 9 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 13 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 14 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 15 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" FROM DUAL UNION ALL SELECT 16 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."P_0" AS "P_0", "DT_node_data_3"."P_1" AS "P_1", "DT_node_data_3"."D" AS "D", "DT_node_data_3"."DP" AS "DP" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"Calibrated_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "DT_Output_3"."P_0" AS "Proba_0", "DT_Output_3"."P_1" AS "Proba_1", CASE WHEN ("DT_Output_3"."P_0" IS NULL OR "DT_Output_3"."P_0" > 0.0) THEN ln("DT_Output_3"."P_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN ("DT_Output_3"."P_1" IS NULL OR "DT_Output_3"."P_1" > 0.0) THEN ln("DT_Output_3"."P_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_3"."P_0") AS "ScoreOrProba_0", coalesce(CAST(NULL AS BINARY_DOUBLE), "DT_Output_3"."P_1") AS "ScoreOrProba_1" 
FROM "DT_Output_3"), 
sigmoid_calibration_3 AS 
(SELECT "Calibrated_Model_3"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.062903184000669 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.3978968871297432)), 100.0))) AS "Proba_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(4.062903184000669 * "Calibrated_Model_3"."ScoreOrProba_1" + -2.3978968871297432)), 100.0))) AS "Proba_0" 
FROM "Calibrated_Model_3"), 
"Normalized_Probas_3" AS 
(SELECT sigmoid_calibration_3."KEY" AS "KEY", sigmoid_calibration_3."Proba_1" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_1", sigmoid_calibration_3."Proba_0" / (sigmoid_calibration_3."Proba_0" + sigmoid_calibration_3."Proba_1") AS "Proba_0" 
FROM sigmoid_calibration_3)
 SELECT "CalProb_B0"."KEY", "CalProb_B0"."Proba_1", "CalProb_B0"."Proba_0" 
FROM (SELECT "CalProb_esu_0"."KEY" AS "KEY", "CalProb_esu_0"."Proba_1" AS "Proba_1", "CalProb_esu_0"."Proba_0" AS "Proba_0" 
FROM (SELECT "Normalized_Probas"."KEY" AS "KEY", "Normalized_Probas"."Proba_1" AS "Proba_1", "Normalized_Probas"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas" UNION ALL SELECT "Normalized_Probas_1"."KEY" AS "KEY", "Normalized_Probas_1"."Proba_1" AS "Proba_1", "Normalized_Probas_1"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_1" UNION ALL SELECT "Normalized_Probas_2"."KEY" AS "KEY", "Normalized_Probas_2"."Proba_1" AS "Proba_1", "Normalized_Probas_2"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_2" UNION ALL SELECT "Normalized_Probas_3"."KEY" AS "KEY", "Normalized_Probas_3"."Proba_1" AS "Proba_1", "Normalized_Probas_3"."Proba_0" AS "Proba_0" 
FROM "Normalized_Probas_3") "CalProb_esu_0") "CalProb_B0") "U"

-- Code For temporary table P_20180602_6D3_CALPROB_AVG part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "P_20180602_6D3_CALPROB_AVG" (
	"KEY" NUMBER(19), 
	"Proba_1" BINARY_DOUBLE, 
	"Proba_0" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table P_20180602_6D3_CALPROB_AVG part 2. Populate

INSERT INTO "P_20180602_6D3_CALPROB_AVG" ("KEY", "Proba_1", "Proba_0") SELECT "U"."KEY", "U"."Proba_1", "U"."Proba_0" 
FROM (WITH "CalProb_Union" AS 
(SELECT "CalProb_EnsembleUnion"."KEY" AS "KEY", "CalProb_EnsembleUnion"."Proba_1" AS "Proba_1", "CalProb_EnsembleUnion"."Proba_0" AS "Proba_0" 
FROM (SELECT "CalProb_B0"."KEY" AS "KEY", "CalProb_B0"."Proba_1" AS "Proba_1", "CalProb_B0"."Proba_0" AS "Proba_0" 
FROM "MP_20180602_9AT_CALPROB_B0" "CalProb_B0") "CalProb_EnsembleUnion")
 SELECT "CalProb_avg"."KEY", "CalProb_avg"."Proba_1", "CalProb_avg"."Proba_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Proba_1" AS BINARY_DOUBLE) AS "Proba_1", CAST("T"."Proba_0" AS BINARY_DOUBLE) AS "Proba_0" 
FROM (SELECT "CalProb_Union"."KEY" AS "KEY", avg(CAST("CalProb_Union"."Proba_1" AS BINARY_DOUBLE)) AS "Proba_1", avg(CAST("CalProb_Union"."Proba_0" AS BINARY_DOUBLE)) AS "Proba_0" 
FROM "CalProb_Union" GROUP BY "CalProb_Union"."KEY") "T") "CalProb_avg") "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "CalProb_avg"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", "CalProb_avg"."Proba_0" AS "Proba_0", "CalProb_avg"."Proba_1" AS "Proba_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM "P_20180602_6D3_CALPROB_AVG" "CalProb_avg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."Proba" >= union_with_max."max_Proba" GROUP BY union_with_max."KEY") "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte