-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : iris_date_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516123038_codegen_847l5y_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123038_codegen_847l5y_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123038_codegen_847l5y_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516123038_codegen_847l5y_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_DATE_TGT" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180516123038_codegen_lp7j3m_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123038_codegen_lp7j3m_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123038_codegen_lp7j3m_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516123038_codegen_lp7j3m_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM tmp_20180516123038_codegen_847l5y_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.5739872455596924) THEN 11 ELSE 12 END ELSE 13 END ELSE 14 END END END AS node_id_2 
FROM tmp_20180516123038_codegen_lp7j3m_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_1789-07-14T00:00:00.000000000" AS DOUBLE) AS "P_1789-07-14T00:00:00.000000000", CAST("Values"."P_1789-08-14T00:00:00.000000000" AS DOUBLE) AS "P_1789-08-14T00:00:00.000000000", CAST("Values"."P_1789-09-14T00:00:00.000000000" AS DOUBLE) AS "P_1789-09-14T00:00:00.000000000", CAST("Values"."D" AS DOUBLE) AS "D", CAST("Values"."DP" AS DOUBLE) AS "DP" 
FROM (SELECT 1 AS nid, 1.0 AS "P_1789-07-14T00:00:00.000000000", 0.0 AS "P_1789-08-14T00:00:00.000000000", 0.0 AS "P_1789-09-14T00:00:00.000000000", '1789-07-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 1.0 AS "P_1789-08-14T00:00:00.000000000", 0.0 AS "P_1789-09-14T00:00:00.000000000", '1789-08-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 0.0 AS "P_1789-08-14T00:00:00.000000000", 1.0 AS "P_1789-09-14T00:00:00.000000000", '1789-09-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 1.0 AS "P_1789-08-14T00:00:00.000000000", 0.0 AS "P_1789-09-14T00:00:00.000000000", '1789-08-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 0.0 AS "P_1789-08-14T00:00:00.000000000", 1.0 AS "P_1789-09-14T00:00:00.000000000", '1789-09-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 1.0 AS "P_1789-08-14T00:00:00.000000000", 0.0 AS "P_1789-09-14T00:00:00.000000000", '1789-08-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 0.0 AS "P_1789-08-14T00:00:00.000000000", 1.0 AS "P_1789-09-14T00:00:00.000000000", '1789-09-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 0.0 AS "P_1789-07-14T00:00:00.000000000", 0.0 AS "P_1789-08-14T00:00:00.000000000", 1.0 AS "P_1789-09-14T00:00:00.000000000", '1789-09-14T00:00:00.000000000' AS "D", 1.0 AS "DP" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_1789-07-14T00:00:00.000000000" AS "P_1789-07-14T00:00:00.000000000", "DT_node_data"."P_1789-08-14T00:00:00.000000000" AS "P_1789-08-14T00:00:00.000000000", "DT_node_data"."P_1789-09-14T00:00:00.000000000" AS "P_1789-09-14T00:00:00.000000000", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-09-14T00:00:00.000000000", "DT_Output"."P_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", "DT_Output"."P_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", "DT_Output"."P_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN ("DT_Output"."P_1789-07-14T00:00:00.000000000" IS NULL OR "DT_Output"."P_1789-07-14T00:00:00.000000000" > 0.0) THEN ln("DT_Output"."P_1789-07-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-07-14T00:00:00.000000000", CASE WHEN ("DT_Output"."P_1789-08-14T00:00:00.000000000" IS NULL OR "DT_Output"."P_1789-08-14T00:00:00.000000000" > 0.0) THEN ln("DT_Output"."P_1789-08-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-08-14T00:00:00.000000000", CASE WHEN ("DT_Output"."P_1789-09-14T00:00:00.000000000" IS NULL OR "DT_Output"."P_1789-09-14T00:00:00.000000000" > 0.0) THEN ln("DT_Output"."P_1789-09-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-09-14T00:00:00.000000000", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"