-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516110248_codegen_6tftpx_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110248_codegen_6tftpx_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110248_codegen_6tftpx_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516110248_codegen_6tftpx_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516110248_codegen_i77n67_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110248_codegen_i77n67_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110248_codegen_i77n67_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516110248_codegen_i77n67_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.061829205238134 AS DOUBLE PRECISION)) / CAST(1.228383956209067 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.177024637671833 AS DOUBLE PRECISION)) / CAST(0.940821656314017 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.041383850049035 AS DOUBLE PRECISION)) / CAST(1.074182488881128 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.130606468058471 AS DOUBLE PRECISION)) / CAST(1.079224455973376 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.059558104719831 AS DOUBLE PRECISION)) / CAST(1.109589119050812 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(-0.048929089870106 AS DOUBLE PRECISION)) / CAST(1.378187181202905 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.191017978617131 AS DOUBLE PRECISION)) / CAST(0.973528524630321 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.022049596732675 AS DOUBLE PRECISION)) / CAST(0.474603012037971 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(-0.05772981403414 AS DOUBLE PRECISION)) / CAST(1.064607524840552 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(-0.052549592052032 AS DOUBLE PRECISION)) / CAST(1.224532889655456 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516110248_codegen_6tftpx_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(0.071011282503605 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(1.755650758743286 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-0.811441659927368 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.849886775016785 AS DOUBLE PRECISION)) THEN 4 ELSE 5 END ELSE 6 END ELSE 7 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(1.79048228263855 AS DOUBLE PRECISION)) THEN 9 ELSE 10 END END AS node_id_2 
FROM tmp_20180516110248_codegen_i77n67_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS DOUBLE PRECISION) AS "P_0", CAST("Values"."P_1" AS DOUBLE PRECISION) AS "P_1", CAST("Values"."D" AS DOUBLE PRECISION) AS "D", CAST("Values"."DP" AS DOUBLE PRECISION) AS "DP" 
FROM (SELECT 4 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 5 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 6 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 9 AS nid, CAST(0.0 AS DOUBLE PRECISION) AS "P_0", CAST(1.0 AS DOUBLE PRECISION) AS "P_1", 1 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte UNION ALL SELECT 10 AS nid, CAST(1.0 AS DOUBLE PRECISION) AS "P_0", CAST(0.0 AS DOUBLE PRECISION) AS "P_1", 0 AS "D", CAST(1.0 AS DOUBLE PRECISION) AS "DP" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln("DT_Output"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"