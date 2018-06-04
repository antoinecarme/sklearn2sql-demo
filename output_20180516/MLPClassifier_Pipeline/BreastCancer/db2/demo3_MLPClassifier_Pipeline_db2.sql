-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : BreastCancer
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602142619_uco_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142619_uco_ads_imp_1_out (
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

-- Code For temporary table tmp_20180602142619_uco_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602142619_uco_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BREASTCANCER" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602142619_3oy_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142619_3oy_ads_sca_2_out (
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

-- Code For temporary table tmp_20180602142619_3oy_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602142619_3oy_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 14.077712087912083) / 3.5451492987000814 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 19.03905494505495) / 4.1622971504218205 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 91.66178021978023) / 24.503971943475648 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 650.9676923076925) / 355.702823163891 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.09642184615384615) / 0.014197819663072304 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.10441613186813191) / 0.05340369466973436 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.08826232681318694) / 0.08191200162631372 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.048516399999999966) / 0.039373117396730245 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - 0.1815885714285715) / 0.02779005832874822 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.06294030769230768) / 0.007019354586172742 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE) - 0.4099173626373627) / 0.29120400836827026 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE) - 1.2170694505494501) / 0.5363896396336265 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE) - 2.90524901098901) / 2.1424944299808626 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE) - 40.87988571428572) / 48.224754479577314 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE) - 0.007055971428571433) / 0.002863651656569403 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE) - 0.025567830769230776) / 0.017947013631032318 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE) - 0.03199925626373623) / 0.03166493672136351 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE) - 0.011972369230769237) / 0.006392005589396607 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE) - 0.020896200000000014) / 0.008582910079869234 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE) - 16.17776483516484) / 4.817458816201383 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE) - 25.26505494505494) / 5.92332412866667 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE) - 106.68156043956041) / 33.70385837605481 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE) - 870.8639560439567) / 566.9950559872813 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE) - 0.1318275604395605) / 0.02274820752228878 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE) - 0.24991806593406582) / 0.15246893644279044 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE) - 0.2654615934065932) / 0.20692568678204093 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE) - 0.11348798021978022) / 0.06638141278520703 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE) - 0.2897881318681319) / 0.06220470665051894 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE) - 0.08364145054945049) / 0.01706514580694785 AS scaler_31 
FROM tmp_20180602142619_uco_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180602142619_q55_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142619_q55_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142619_q55_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602142619_q55_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS DOUBLE) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS DOUBLE) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS DOUBLE) AS scaler_14, CAST("ADS_sca_2_OUT".scaler_15 AS DOUBLE) AS scaler_15, CAST("ADS_sca_2_OUT".scaler_16 AS DOUBLE) AS scaler_16, CAST("ADS_sca_2_OUT".scaler_17 AS DOUBLE) AS scaler_17, CAST("ADS_sca_2_OUT".scaler_18 AS DOUBLE) AS scaler_18, CAST("ADS_sca_2_OUT".scaler_19 AS DOUBLE) AS scaler_19, CAST("ADS_sca_2_OUT".scaler_20 AS DOUBLE) AS scaler_20, CAST("ADS_sca_2_OUT".scaler_21 AS DOUBLE) AS scaler_21, CAST("ADS_sca_2_OUT".scaler_22 AS DOUBLE) AS scaler_22, CAST("ADS_sca_2_OUT".scaler_23 AS DOUBLE) AS scaler_23, CAST("ADS_sca_2_OUT".scaler_24 AS DOUBLE) AS scaler_24, CAST("ADS_sca_2_OUT".scaler_25 AS DOUBLE) AS scaler_25, CAST("ADS_sca_2_OUT".scaler_26 AS DOUBLE) AS scaler_26, CAST("ADS_sca_2_OUT".scaler_27 AS DOUBLE) AS scaler_27, CAST("ADS_sca_2_OUT".scaler_28 AS DOUBLE) AS scaler_28, CAST("ADS_sca_2_OUT".scaler_29 AS DOUBLE) AS scaler_29, CAST("ADS_sca_2_OUT".scaler_30 AS DOUBLE) AS scaler_30, CAST("ADS_sca_2_OUT".scaler_31 AS DOUBLE) AS scaler_31 
FROM tmp_20180602142619_3oy_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.6035521387696549 * "IL".scaler_2 + 1.2192753919987591 * "IL".scaler_3 + 0.36456781294759305 * "IL".scaler_4 + -0.09403360804676666 * "IL".scaler_5 + -0.7019130994730897 * "IL".scaler_6 + 1.0722042723874072 * "IL".scaler_7 + -1.018869880459989 * "IL".scaler_8 + -0.982551604492906 * "IL".scaler_9 + -0.11165166977727298 * "IL".scaler_10 + -1.321465868155152 * "IL".scaler_11 + -2.1600941515985825 * "IL".scaler_12 + -0.39714822926277077 * "IL".scaler_13 + -0.9811946197535639 * "IL".scaler_14 + -0.9508726651937556 * "IL".scaler_15 + 0.8291423738462828 * "IL".scaler_16 + 2.0943480773871332 * "IL".scaler_17 + 0.0708833045364477 * "IL".scaler_18 + -0.44613963734298734 * "IL".scaler_19 + 0.9355619169860432 * "IL".scaler_20 + 1.056126842565889 * "IL".scaler_21 + -0.8402585983288706 * "IL".scaler_22 + -0.031506340990444526 * "IL".scaler_23 + 0.10202154630018503 * "IL".scaler_24 + -1.0296779079869358 * "IL".scaler_25 + -0.6852008690045227 * "IL".scaler_26 + 0.7569658399161046 * "IL".scaler_27 + -1.0400787661351416 * "IL".scaler_28 + -0.5718418433186263 * "IL".scaler_29 + -0.2022651721105496 * "IL".scaler_30 + 0.3201751484615442 * "IL".scaler_31 + 2.726584105428716 AS "NEUR_1_1", 0.524038293729603 * "IL".scaler_2 + -0.6256426244157567 * "IL".scaler_3 + 0.1688664982025241 * "IL".scaler_4 + 0.45405057618929023 * "IL".scaler_5 + 0.6219828096030376 * "IL".scaler_6 + 0.6074891901258224 * "IL".scaler_7 + -0.7708942756272215 * "IL".scaler_8 + -0.6802527251403621 * "IL".scaler_9 + -0.28867968852319686 * "IL".scaler_10 + -0.5572486468605983 * "IL".scaler_11 + -1.57747919560752 * "IL".scaler_12 + -1.4521162821009983 * "IL".scaler_13 + -1.0565409599047377 * "IL".scaler_14 + -0.5476386384302304 * "IL".scaler_15 + 1.2264786737943294 * "IL".scaler_16 + 0.382851175226248 * "IL".scaler_17 + -0.10939875339657597 * "IL".scaler_18 + -0.23929423732151062 * "IL".scaler_19 + 0.06294999101649698 * "IL".scaler_20 + 0.734165666177976 * "IL".scaler_21 + -0.5778805157159468 * "IL".scaler_22 + -1.9022439132080835 * "IL".scaler_23 + -0.33737755691429183 * "IL".scaler_24 + -0.27210395107055774 * "IL".scaler_25 + 0.5258202907967259 * "IL".scaler_26 + -0.33564064605035154 * "IL".scaler_27 + -1.239325434530771 * "IL".scaler_28 + -0.23335965263926167 * "IL".scaler_29 + -0.8140219349518308 * "IL".scaler_30 + -0.9325380234832806 * "IL".scaler_31 + 1.0332920198191167 AS "NEUR_1_2", 1.3578064132705152 * "IL".scaler_2 + 0.3760175844671749 * "IL".scaler_3 + 1.1198448783076351 * "IL".scaler_4 + 1.048043836908615 * "IL".scaler_5 + -0.05174207543724599 * "IL".scaler_6 + -0.040531124830207876 * "IL".scaler_7 + 1.8754966843169856 * "IL".scaler_8 + 1.8551579750758735 * "IL".scaler_9 + -0.030320630538788057 * "IL".scaler_10 + -0.044384826508055496 * "IL".scaler_11 + 1.1277652511404452 * "IL".scaler_12 + -1.2928436198689428 * "IL".scaler_13 + 0.7655464990189921 * "IL".scaler_14 + 1.0363317255739817 * "IL".scaler_15 + 0.019817868649421245 * "IL".scaler_16 + -1.296896993406463 * "IL".scaler_17 + -0.2885499346920508 * "IL".scaler_18 + 0.12253475826534857 * "IL".scaler_19 + 0.5580325903597143 * "IL".scaler_20 + -1.3726571139488457 * "IL".scaler_21 + 1.6325575191588835 * "IL".scaler_22 + 2.54359096700899 * "IL".scaler_23 + 0.9865310874619295 * "IL".scaler_24 + 1.9078008501958008 * "IL".scaler_25 + 1.4305187096481697 * "IL".scaler_26 + -0.054902182663736004 * "IL".scaler_27 + 2.070973690573112 * "IL".scaler_28 + 1.784445640056942 * "IL".scaler_29 + 1.0414384379639365 * "IL".scaler_30 + -0.5640588382815349 * "IL".scaler_31 + 0.20041431461703615 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180602142619_emu_ol_logistic_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602142619_emu_ol_logistic_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602142619_emu_ol_logistic_1 part 2. Populate

INSERT INTO tmp_20180602142619_emu_ol_logistic_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.49853784447240673 * "HL_1_relu_1"."NEUR_1_1" + -0.5750282583450024 * "HL_1_relu_1"."NEUR_1_2" + -0.720158581192721 * "HL_1_relu_1"."NEUR_1_3" + -0.027381825851222667 AS "NEUR_2_1", -0.7288083284336248 * "HL_1_relu_1"."NEUR_1_1" + -0.8789506213619496 * "HL_1_relu_1"."NEUR_1_2" + 0.5483991069135904 * "HL_1_relu_1"."NEUR_1_3" + 0.616617850106614 AS "NEUR_2_2", 1.1208584532378252 * "HL_1_relu_1"."NEUR_1_1" + 1.8989329753598794 * "HL_1_relu_1"."NEUR_1_2" + -1.5860395066416046 * "HL_1_relu_1"."NEUR_1_3" + -0.06436422118750981 AS "NEUR_2_3", -0.5283052696034376 * "HL_1_relu_1"."NEUR_1_1" + -0.6427282042381117 * "HL_1_relu_1"."NEUR_1_2" + 2.5072192468079018 * "HL_1_relu_1"."NEUR_1_3" + 1.6213458356326729 AS "NEUR_2_4", -0.6947502490619669 * "HL_1_relu_1"."NEUR_1_1" + -0.2695090985330525 * "HL_1_relu_1"."NEUR_1_2" + -0.6616811479074017 * "HL_1_relu_1"."NEUR_1_3" + -0.815750113657602 AS "NEUR_2_5" 
FROM tmp_20180602142619_q55_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.18834779952475972 * "HL_2_relu"."NEUR_2_1" + -0.7528375432134866 * "HL_2_relu"."NEUR_2_2" + 2.336269951145561 * "HL_2_relu"."NEUR_2_3" + -2.6544117560890514 * "HL_2_relu"."NEUR_2_4" + 0.3793441160311912 * "HL_2_relu"."NEUR_2_5" + -0.26660724200009 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", 1.0 / (1.0 + exp(least(greatest(-100.0, -"OL_BA"."NEUR_3_1"), 100.0))) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_logistic_1"."KEY", "OL_logistic_1"."NEUR_3_1" 
FROM (SELECT "OL_logistic"."KEY" AS "KEY", "OL_logistic"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_logistic") AS "OL_logistic_1"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_logistic_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", 1.0 - "OL_logistic_1"."NEUR_3_1" AS "Proba_0", "OL_logistic_1"."NEUR_3_1" AS "Proba_1", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180602142619_emu_ol_logistic_1 AS "OL_logistic_1"), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte