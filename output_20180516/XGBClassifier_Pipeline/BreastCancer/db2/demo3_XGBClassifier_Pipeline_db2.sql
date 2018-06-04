-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602142851_24g_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142851_24g_ads_imp_1_out (
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
	impter_11 DOUBLE, 
	impter_12 DOUBLE, 
	impter_13 DOUBLE, 
	impter_14 DOUBLE, 
	impter_15 DOUBLE, 
	impter_16 DOUBLE, 
	impter_17 DOUBLE, 
	impter_18 DOUBLE, 
	impter_19 DOUBLE, 
	impter_20 DOUBLE, 
	impter_21 DOUBLE, 
	impter_22 DOUBLE, 
	impter_23 DOUBLE, 
	impter_24 DOUBLE, 
	impter_25 DOUBLE, 
	impter_26 DOUBLE, 
	impter_27 DOUBLE, 
	impter_28 DOUBLE, 
	impter_29 DOUBLE, 
	impter_30 DOUBLE, 
	impter_31 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142851_24g_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602142851_24g_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BREASTCANCER" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602142851_r2d_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142851_r2d_ads_sca_2_out (
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
	scaler_11 DOUBLE, 
	scaler_12 DOUBLE, 
	scaler_13 DOUBLE, 
	scaler_14 DOUBLE, 
	scaler_15 DOUBLE, 
	scaler_16 DOUBLE, 
	scaler_17 DOUBLE, 
	scaler_18 DOUBLE, 
	scaler_19 DOUBLE, 
	scaler_20 DOUBLE, 
	scaler_21 DOUBLE, 
	scaler_22 DOUBLE, 
	scaler_23 DOUBLE, 
	scaler_24 DOUBLE, 
	scaler_25 DOUBLE, 
	scaler_26 DOUBLE, 
	scaler_27 DOUBLE, 
	scaler_28 DOUBLE, 
	scaler_29 DOUBLE, 
	scaler_30 DOUBLE, 
	scaler_31 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142851_r2d_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602142851_r2d_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 14.077712087912083) / 3.5451492987000814 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 19.03905494505495) / 4.1622971504218205 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 91.66178021978023) / 24.503971943475648 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 650.9676923076925) / 355.702823163891 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.09642184615384615) / 0.014197819663072304 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.10441613186813191) / 0.05340369466973436 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.08826232681318694) / 0.08191200162631372 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.048516399999999966) / 0.039373117396730245 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.1815885714285715) / 0.02779005832874822 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.06294030769230768) / 0.007019354586172742 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE) - 0.4099173626373627) / 0.29120400836827026 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE) - 1.2170694505494501) / 0.5363896396336265 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE) - 2.90524901098901) / 2.1424944299808626 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE) - 40.87988571428572) / 48.224754479577314 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE) - 0.007055971428571433) / 0.002863651656569403 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE) - 0.025567830769230776) / 0.017947013631032318 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE) - 0.03199925626373623) / 0.03166493672136351 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE) - 0.011972369230769237) / 0.006392005589396607 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE) - 0.020896200000000014) / 0.008582910079869234 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE) - 16.17776483516484) / 4.817458816201383 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE) - 25.26505494505494) / 5.92332412866667 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE) - 106.68156043956041) / 33.70385837605481 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE) - 870.8639560439567) / 566.9950559872813 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE) - 0.1318275604395605) / 0.02274820752228878 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE) - 0.24991806593406582) / 0.15246893644279044 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE) - 0.2654615934065932) / 0.20692568678204093 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE) - 0.11348798021978022) / 0.06638141278520703 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE) - 0.2897881318681319) / 0.06220470665051894 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE) - 0.08364145054945049) / 0.01706514580694785 AS scaler_31 
FROM tmp_20180602142851_24g_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180602142851_t4x_xgb_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142851_t4x_xgb_b0 (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142851_t4x_xgb_b0 part 2. Populate

INSERT INTO tmp_20180602142851_t4x_xgb_b0 WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.48149049282073975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_24 < -0.024672560393810272) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.33349454402923584) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1926199346780777 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.03478261083364487 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.12727272510528564 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.19272726774215698 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."Score" AS "Score" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"XGB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Score" AS "Score_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.48149049282073975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 < -0.16329550743103027) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_22 < 0.4654393792152405) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.17632412910461426 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.028210192918777466 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.11695275455713272 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.17597316205501556 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."Score" AS "Score" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"XGB_Model_0_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Score" AS "Score_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.22900760173797607) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.24573174118995667) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.15892711281776428 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.16254661977291107 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.0025618381332606077 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."Score" AS "Score" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"XGB_Model_0_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Score" AS "Score_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.48149049282073975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 < -0.16329550743103027) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_23 < 0.15699715912342072) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1533551663160324 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.02111710235476494 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.1014096662402153 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.15645359456539154 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."Score" AS "Score" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"XGB_Model_0_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Score" AS "Score_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.22900760173797607) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.01025064941495657) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.14159958064556122 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.14474166929721832 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.007800843566656113 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."Score" AS "Score" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"XGB_Model_0_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Score" AS "Score_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.31950169801712036) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.28414610028266907) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.14109736680984497 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.1364816427230835 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.014269627630710602 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."Score" AS "Score" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"XGB_Model_0_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Score" AS "Score_0" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.1815352886915207) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.11542417109012604) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.6719965934753418) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.13363148272037506 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.020645752549171448 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07329749315977097 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.13540911674499512 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."Score" AS "Score" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"XGB_Model_0_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Score" AS "Score_0" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.48149049282073975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 < -0.16650962829589844) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_23 < 0.16965895891189575) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.1283390074968338 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.014707544818520546 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07714793086051941 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.133819118142128 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."Score" AS "Score" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"XGB_Model_0_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Score" AS "Score_0" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_22 < 0.1281246393918991) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.11542417109012604) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.14317697286605835) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.12476612627506256 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.01592203602194786 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06960324943065643 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.13226597011089325 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."Score" AS "Score" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"XGB_Model_0_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Score" AS "Score_0" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.31950169801712036) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.01025064941495657) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.12262566387653351 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.11848687380552292 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.006392433773726225 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."Score" AS "Score" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"XGB_Model_0_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Score" AS "Score_0" 
FROM "DT_Output_9")
 SELECT "XGB_B0"."KEY", "XGB_B0"."Score_0" 
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

-- Code For temporary table tmp_20180602142851_j86_xgb_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142851_j86_xgb_b1 (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142851_j86_xgb_b1 part 2. Populate

INSERT INTO tmp_20180602142851_j86_xgb_b1 WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.48149049282073975) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 < -0.20310908555984497) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_23 < 0.1949825882911682) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.11701875180006027 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.016944319009780884 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.07019593566656113 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.12330199778079987 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."Score" AS "Score" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"XGB_Model_0_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Score" AS "Score_0" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_22 < 0.1281246393918991) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.07749958336353302) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.20684373378753662) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.11512360721826553 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.017077675089240074 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06643888354301453 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.12265763431787491 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."Score" AS "Score" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"XGB_Model_0_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Score" AS "Score_0" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.31950169801712036) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.01025064941495657) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_17 < -0.769645094871521) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.11374557018280029 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.003493115771561861 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, 0.07863019406795502 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 0.11759652942419052 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."Score" AS "Score" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"XGB_Model_0_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Score" AS "Score_0" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.561332106590271) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_15 < -0.19896182417869568) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_21 < -0.6165429353713989) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.10585534572601318 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, -0.0024481695145368576 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, 0.07931221276521683 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 0.11873737722635269 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."Score" AS "Score" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"XGB_Model_0_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Score" AS "Score_0" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_24 < 0.19191986322402954) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_28 < 0.008884381502866745) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_26 < 0.3394746482372284) THEN 5 ELSE 6 END END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 3 AS nid, 0.10965307056903839 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.012755125761032104 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, -0.06810056418180466 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, -0.11264988034963608 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."Score" AS "Score" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"XGB_Model_0_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Score" AS "Score_0" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_29 < 0.561332106590271) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_25 < -0.20593470335006714) THEN 3 ELSE 4 END ELSE 2 END AS node_id_2 
FROM tmp_20180602142851_r2d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."Score" AS DOUBLE) AS "Score" 
FROM (SELECT 2 AS nid, -0.10041051357984543 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS nid, 0.1078338772058487 AS "Score" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 0.0019829440861940384 AS "Score" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."Score" AS "Score" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"XGB_Model_0_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Score" AS "Score_0" 
FROM "DT_Output_15")
 SELECT "XGB_B1"."KEY", "XGB_B1"."Score_0" 
FROM (SELECT "XGB_esu_1"."KEY" AS "KEY", "XGB_esu_1"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_Model_0_10"."KEY" AS "KEY", "XGB_Model_0_10"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_10" UNION ALL SELECT "XGB_Model_0_11"."KEY" AS "KEY", "XGB_Model_0_11"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_11" UNION ALL SELECT "XGB_Model_0_12"."KEY" AS "KEY", "XGB_Model_0_12"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_12" UNION ALL SELECT "XGB_Model_0_13"."KEY" AS "KEY", "XGB_Model_0_13"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_13" UNION ALL SELECT "XGB_Model_0_14"."KEY" AS "KEY", "XGB_Model_0_14"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_14" UNION ALL SELECT "XGB_Model_0_15"."KEY" AS "KEY", "XGB_Model_0_15"."Score_0" AS "Score_0" 
FROM "XGB_Model_0_15") AS "XGB_esu_1") AS "XGB_B1"

-- Code For temporary table tmp_20180602142851_3ln_xgb_sum part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142851_3ln_xgb_sum (
	"KEY" BIGINT, 
	"Score_0" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142851_3ln_xgb_sum part 2. Populate

INSERT INTO tmp_20180602142851_3ln_xgb_sum WITH "XGB_Union" AS 
(SELECT "XGB_EnsembleUnion"."KEY" AS "KEY", "XGB_EnsembleUnion"."Score_0" AS "Score_0" 
FROM (SELECT "XGB_B0"."KEY" AS "KEY", "XGB_B0"."Score_0" AS "Score_0" 
FROM tmp_20180602142851_t4x_xgb_b0 AS "XGB_B0" UNION ALL SELECT "XGB_B1"."KEY" AS "KEY", "XGB_B1"."Score_0" AS "Score_0" 
FROM tmp_20180602142851_j86_xgb_b1 AS "XGB_B1") AS "XGB_EnsembleUnion")
 SELECT "XGB_sum"."KEY", "XGB_sum"."Score_0" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Score_0" AS DOUBLE) AS "Score_0" 
FROM (SELECT "XGB_Union"."KEY" AS "KEY", sum("XGB_Union"."Score_0") AS "Score_0" 
FROM "XGB_Union" GROUP BY "XGB_Union"."KEY") AS "T") AS "XGB_sum"

-- Model deployment code

WITH orig_cte AS 
(SELECT "XGB_sum"."KEY" AS "KEY", "XGB_sum"."Score_0" AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -"XGB_sum"."Score_0"), 100.0))) AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180602142851_3ln_xgb_sum AS "XGB_sum"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte