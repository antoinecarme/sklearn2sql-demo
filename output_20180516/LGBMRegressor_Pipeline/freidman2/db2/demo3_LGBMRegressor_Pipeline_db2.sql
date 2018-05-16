-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LGBMRegressor_Pipeline
-- Dataset : freidman2
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516121324_codegen_6sfv3r_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121324_codegen_6sfv3r_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121324_codegen_6sfv3r_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516121324_codegen_6sfv3r_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "FREIDMAN2" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180516121324_codegen_s4wtss_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121324_codegen_s4wtss_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121324_codegen_s4wtss_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516121324_codegen_s4wtss_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM tmp_20180516121324_codegen_6sfv3r_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180516121324_codegen_xuxqxo_lgbm_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121324_codegen_xuxqxo_lgbm_b0 (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121324_codegen_xuxqxo_lgbm_b0 part 2. Populate

INSERT INTO tmp_20180516121324_codegen_xuxqxo_lgbm_b0 WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.1625491071001343) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, 482.8941449244817 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 490.0993488836288 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 517.7970262570815 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"LGBM_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.0000000180025095e-35) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -12.793630010941449 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -4.030740521170876 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 21.81915512084961 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"LGBM_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.1625491071001343) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -14.749121114942762 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -8.276600069999695 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 17.083583760984016 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"LGBM_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.1625491071001343) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -14.01166511818215 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -7.86277027130127 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 16.229404817927968 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"LGBM_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.0000000180025095e-35) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -11.136731574114632 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -3.5841937027194284 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 19.062547238667808 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"LGBM_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2702165971766578) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.18580045827127697) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -11.770608433087666 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -3.5561132691502575 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 17.68084326553345 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"LGBM_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -12.393895325837313 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -4.50346630525589 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 15.9722086923463 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"LGBM_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.0000000180025095e-35) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0000000180025095e-35) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -9.802862705903896 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -2.9632945515892724 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 16.603741993506752 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"LGBM_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2702165971766578) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.18580045827127697) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -10.479942186673483 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -2.9925001220703127 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 15.568430654525756 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"LGBM_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.32140712198882604) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -10.968044874403212 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -1.8452249623835089 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 16.913542956397645 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"LGBM_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9")
 SELECT "LGBM_B0"."KEY", "LGBM_B0"."Estimator" 
FROM (SELECT "LGBM_esu_0"."KEY" AS "KEY", "LGBM_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Model_0"."KEY" AS "KEY", "LGBM_Model_0"."Estimator" AS "Estimator" 
FROM "LGBM_Model_0" UNION ALL SELECT "LGBM_Model_1"."KEY" AS "KEY", "LGBM_Model_1"."Estimator" AS "Estimator" 
FROM "LGBM_Model_1" UNION ALL SELECT "LGBM_Model_2"."KEY" AS "KEY", "LGBM_Model_2"."Estimator" AS "Estimator" 
FROM "LGBM_Model_2" UNION ALL SELECT "LGBM_Model_3"."KEY" AS "KEY", "LGBM_Model_3"."Estimator" AS "Estimator" 
FROM "LGBM_Model_3" UNION ALL SELECT "LGBM_Model_4"."KEY" AS "KEY", "LGBM_Model_4"."Estimator" AS "Estimator" 
FROM "LGBM_Model_4" UNION ALL SELECT "LGBM_Model_5"."KEY" AS "KEY", "LGBM_Model_5"."Estimator" AS "Estimator" 
FROM "LGBM_Model_5" UNION ALL SELECT "LGBM_Model_6"."KEY" AS "KEY", "LGBM_Model_6"."Estimator" AS "Estimator" 
FROM "LGBM_Model_6" UNION ALL SELECT "LGBM_Model_7"."KEY" AS "KEY", "LGBM_Model_7"."Estimator" AS "Estimator" 
FROM "LGBM_Model_7" UNION ALL SELECT "LGBM_Model_8"."KEY" AS "KEY", "LGBM_Model_8"."Estimator" AS "Estimator" 
FROM "LGBM_Model_8" UNION ALL SELECT "LGBM_Model_9"."KEY" AS "KEY", "LGBM_Model_9"."Estimator" AS "Estimator" 
FROM "LGBM_Model_9") AS "LGBM_esu_0") AS "LGBM_B0"

-- Code For temporary table tmp_20180516121324_codegen_yps2g6_lgbm_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121324_codegen_yps2g6_lgbm_b1 (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121324_codegen_yps2g6_lgbm_b1 part 2. Populate

INSERT INTO tmp_20180516121324_codegen_yps2g6_lgbm_b1 WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2702165971766578) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.2944709088803666) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -9.681227424939474 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -2.085434001463431 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 15.075806097362353 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"LGBM_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.32140712198882604) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -10.14657541204382 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -1.7300191707909107 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 15.681816484246935 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"LGBM_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2702165971766578) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.2944709088803666) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -8.942333932717641 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -1.9510654467123527 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 13.954295237168024 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"LGBM_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4017176226368672) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.32140712198882604) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -9.386331801944308 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -1.6227087751030922 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 14.54084018298558 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"LGBM_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.53678257444202) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.778099550330666) THEN 4 ELSE 5 END ELSE 3 END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 3 AS nid, 8.862405347824097 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -10.147826476324173 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -1.130419070489945 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"LGBM_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.45492743380573836) THEN 2 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.53678257444202) THEN 6 ELSE 7 END END AS node_id_2 
FROM tmp_20180516121324_codegen_s4wtss_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT 2 AS nid, -8.947397152582806 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -1.2455032962741275 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 14.134066591262817 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"LGBM_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15")
 SELECT "LGBM_B1"."KEY", "LGBM_B1"."Estimator" 
FROM (SELECT "LGBM_esu_1"."KEY" AS "KEY", "LGBM_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_Model_10"."KEY" AS "KEY", "LGBM_Model_10"."Estimator" AS "Estimator" 
FROM "LGBM_Model_10" UNION ALL SELECT "LGBM_Model_11"."KEY" AS "KEY", "LGBM_Model_11"."Estimator" AS "Estimator" 
FROM "LGBM_Model_11" UNION ALL SELECT "LGBM_Model_12"."KEY" AS "KEY", "LGBM_Model_12"."Estimator" AS "Estimator" 
FROM "LGBM_Model_12" UNION ALL SELECT "LGBM_Model_13"."KEY" AS "KEY", "LGBM_Model_13"."Estimator" AS "Estimator" 
FROM "LGBM_Model_13" UNION ALL SELECT "LGBM_Model_14"."KEY" AS "KEY", "LGBM_Model_14"."Estimator" AS "Estimator" 
FROM "LGBM_Model_14" UNION ALL SELECT "LGBM_Model_15"."KEY" AS "KEY", "LGBM_Model_15"."Estimator" AS "Estimator" 
FROM "LGBM_Model_15") AS "LGBM_esu_1") AS "LGBM_B1"

-- Code For temporary table tmp_20180516121324_codegen_jtdwrm_lgbm_sum part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121324_codegen_jtdwrm_lgbm_sum (
	"KEY" BIGINT, 
	"Estimator" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121324_codegen_jtdwrm_lgbm_sum part 2. Populate

INSERT INTO tmp_20180516121324_codegen_jtdwrm_lgbm_sum WITH "LGBM_Union" AS 
(SELECT "LGBM_EnsembleUnion"."KEY" AS "KEY", "LGBM_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "LGBM_B0"."KEY" AS "KEY", "LGBM_B0"."Estimator" AS "Estimator" 
FROM tmp_20180516121324_codegen_xuxqxo_lgbm_b0 AS "LGBM_B0" UNION ALL SELECT "LGBM_B1"."KEY" AS "KEY", "LGBM_B1"."Estimator" AS "Estimator" 
FROM tmp_20180516121324_codegen_yps2g6_lgbm_b1 AS "LGBM_B1") AS "LGBM_EnsembleUnion")
 SELECT "LGBM_sum"."KEY", "LGBM_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE) AS "Estimator" 
FROM (SELECT "LGBM_Union"."KEY" AS "KEY", sum("LGBM_Union"."Estimator") AS "Estimator" 
FROM "LGBM_Union" GROUP BY "LGBM_Union"."KEY") AS "T") AS "LGBM_sum"

-- Model deployment code

SELECT "LGBM_sum"."KEY" AS "KEY", "LGBM_sum"."Estimator" AS "Estimator" 
FROM tmp_20180516121324_codegen_jtdwrm_lgbm_sum AS "LGBM_sum"