-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : BreastCancer
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table DEGEN_JHD3AC_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_JHD3AC_ADS_IMP_1_OUT" (
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
	impter_11 BINARY_DOUBLE, 
	impter_12 BINARY_DOUBLE, 
	impter_13 BINARY_DOUBLE, 
	impter_14 BINARY_DOUBLE, 
	impter_15 BINARY_DOUBLE, 
	impter_16 BINARY_DOUBLE, 
	impter_17 BINARY_DOUBLE, 
	impter_18 BINARY_DOUBLE, 
	impter_19 BINARY_DOUBLE, 
	impter_20 BINARY_DOUBLE, 
	impter_21 BINARY_DOUBLE, 
	impter_22 BINARY_DOUBLE, 
	impter_23 BINARY_DOUBLE, 
	impter_24 BINARY_DOUBLE, 
	impter_25 BINARY_DOUBLE, 
	impter_26 BINARY_DOUBLE, 
	impter_27 BINARY_DOUBLE, 
	impter_28 BINARY_DOUBLE, 
	impter_29 BINARY_DOUBLE, 
	impter_30 BINARY_DOUBLE, 
	impter_31 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_JHD3AC_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "DEGEN_JHD3AC_ADS_IMP_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BREASTCANCER" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table DEGEN_R7AJQV_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_R7AJQV_ADS_SCA_2_OUT" (
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
	scaler_11 BINARY_DOUBLE, 
	scaler_12 BINARY_DOUBLE, 
	scaler_13 BINARY_DOUBLE, 
	scaler_14 BINARY_DOUBLE, 
	scaler_15 BINARY_DOUBLE, 
	scaler_16 BINARY_DOUBLE, 
	scaler_17 BINARY_DOUBLE, 
	scaler_18 BINARY_DOUBLE, 
	scaler_19 BINARY_DOUBLE, 
	scaler_20 BINARY_DOUBLE, 
	scaler_21 BINARY_DOUBLE, 
	scaler_22 BINARY_DOUBLE, 
	scaler_23 BINARY_DOUBLE, 
	scaler_24 BINARY_DOUBLE, 
	scaler_25 BINARY_DOUBLE, 
	scaler_26 BINARY_DOUBLE, 
	scaler_27 BINARY_DOUBLE, 
	scaler_28 BINARY_DOUBLE, 
	scaler_29 BINARY_DOUBLE, 
	scaler_30 BINARY_DOUBLE, 
	scaler_31 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_R7AJQV_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "DEGEN_R7AJQV_ADS_SCA_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS BINARY_DOUBLE) - 14.077712087912083) / 3.5451492987000814 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS BINARY_DOUBLE) - 19.03905494505495) / 4.1622971504218205 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS BINARY_DOUBLE) - 91.66178021978023) / 24.503971943475648 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS BINARY_DOUBLE) - 650.9676923076925) / 355.702823163891 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS BINARY_DOUBLE) - 0.09642184615384615) / 0.014197819663072304 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS BINARY_DOUBLE) - 0.10441613186813191) / 0.05340369466973436 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS BINARY_DOUBLE) - 0.08826232681318694) / 0.08191200162631372 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS BINARY_DOUBLE) - 0.048516399999999966) / 0.039373117396730245 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS BINARY_DOUBLE) - 0.1815885714285715) / 0.02779005832874822 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS BINARY_DOUBLE) - 0.06294030769230768) / 0.007019354586172742 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS BINARY_DOUBLE) - 0.4099173626373627) / 0.29120400836827026 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS BINARY_DOUBLE) - 1.2170694505494501) / 0.5363896396336265 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS BINARY_DOUBLE) - 2.90524901098901) / 2.1424944299808626 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS BINARY_DOUBLE) - 40.87988571428572) / 48.224754479577314 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS BINARY_DOUBLE) - 0.007055971428571433) / 0.002863651656569403 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS BINARY_DOUBLE) - 0.025567830769230776) / 0.017947013631032318 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS BINARY_DOUBLE) - 0.03199925626373623) / 0.03166493672136351 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS BINARY_DOUBLE) - 0.011972369230769237) / 0.006392005589396607 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS BINARY_DOUBLE) - 0.020896200000000014) / 0.008582910079869234 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS BINARY_DOUBLE) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS BINARY_DOUBLE) - 16.17776483516484) / 4.817458816201383 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS BINARY_DOUBLE) - 25.26505494505494) / 5.92332412866667 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS BINARY_DOUBLE) - 106.68156043956041) / 33.70385837605481 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS BINARY_DOUBLE) - 870.8639560439567) / 566.9950559872813 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS BINARY_DOUBLE) - 0.1318275604395605) / 0.02274820752228878 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS BINARY_DOUBLE) - 0.24991806593406582) / 0.15246893644279044 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS BINARY_DOUBLE) - 0.2654615934065932) / 0.20692568678204093 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS BINARY_DOUBLE) - 0.11348798021978022) / 0.06638141278520703 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS BINARY_DOUBLE) - 0.2897881318681319) / 0.06220470665051894 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS BINARY_DOUBLE) - 0.08364145054945049) / 0.01706514580694785 AS scaler_31 
FROM "DEGEN_JHD3AC_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Code For temporary table N_IAL6TY_NAIVEBAYES_SCORES part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "N_IAL6TY_NAIVEBAYES_SCORES" (
	"KEY" NUMBER(19), 
	"Score_0" BINARY_DOUBLE, 
	"Score_1" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table N_IAL6TY_NAIVEBAYES_SCORES part 2. Populate

INSERT INTO "N_IAL6TY_NAIVEBAYES_SCORES" ("KEY", "Score_0", "Score_1") SELECT "U"."KEY", "U"."Score_0", "U"."Score_1" 
FROM (WITH centered_data AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS BINARY_DOUBLE) - 1.0049577921568156 AS scaler_2_0, CAST("ADS_sca_2_OUT".scaler_3 AS BINARY_DOUBLE) - 0.5272347157440817 AS scaler_3_0, CAST("ADS_sca_2_OUT".scaler_4 AS BINARY_DOUBLE) - 1.0224656573233908 AS scaler_4_0, CAST("ADS_sca_2_OUT".scaler_5 AS BINARY_DOUBLE) - 0.9755487167792978 AS scaler_5_0, CAST("ADS_sca_2_OUT".scaler_6 AS BINARY_DOUBLE) - 0.5109783768435309 AS scaler_6_0, CAST("ADS_sca_2_OUT".scaler_7 AS BINARY_DOUBLE) - 0.8454996589862851 AS scaler_7_0, CAST("ADS_sca_2_OUT".scaler_8 AS BINARY_DOUBLE) - 0.9501566820680749 AS scaler_8_0, CAST("ADS_sca_2_OUT".scaler_9 AS BINARY_DOUBLE) - 1.079373194450925 AS scaler_9_0, CAST("ADS_sca_2_OUT".scaler_10 AS BINARY_DOUBLE) - 0.4804840066713879 AS scaler_10_0, CAST("ADS_sca_2_OUT".scaler_11 AS BINARY_DOUBLE) - 0.008254648911233958 AS scaler_11_0, CAST("ADS_sca_2_OUT".scaler_12 AS BINARY_DOUBLE) - 0.7963129136236985 AS scaler_12_0, CAST("ADS_sca_2_OUT".scaler_13 AS BINARY_DOUBLE) - 0.025859092767011576 AS scaler_13_0, CAST("ADS_sca_2_OUT".scaler_14 AS BINARY_DOUBLE) - 0.7829342356917925 AS scaler_14_0, CAST("ADS_sca_2_OUT".scaler_15 AS BINARY_DOUBLE) - 0.7527459637163599 AS scaler_15_0, CAST("ADS_sca_2_OUT".scaler_16 AS BINARY_DOUBLE) - -0.07879019714350678 AS scaler_16_0, CAST("ADS_sca_2_OUT".scaler_17 AS BINARY_DOUBLE) - 0.41895691591652995 AS scaler_17_0, CAST("ADS_sca_2_OUT".scaler_18 AS BINARY_DOUBLE) - 0.32372735579628725 AS scaler_18_0, CAST("ADS_sca_2_OUT".scaler_19 AS BINARY_DOUBLE) - 0.5778838844193583 AS scaler_19_0, CAST("ADS_sca_2_OUT".scaler_20 AS BINARY_DOUBLE) - 0.05466531696521439 AS scaler_20_0, CAST("ADS_sca_2_OUT".scaler_21 AS BINARY_DOUBLE) - 0.10668595002277066 AS scaler_21_0, CAST("ADS_sca_2_OUT".scaler_22 AS BINARY_DOUBLE) - 1.0714383582224667 AS scaler_22_0, CAST("ADS_sca_2_OUT".scaler_23 AS BINARY_DOUBLE) - 0.5811783181481854 AS scaler_23_0, CAST("ADS_sca_2_OUT".scaler_24 AS BINARY_DOUBLE) - 1.0800043767778378 AS scaler_24_0, CAST("ADS_sca_2_OUT".scaler_25 AS BINARY_DOUBLE) - 1.0129008849222247 AS scaler_25_0, CAST("ADS_sca_2_OUT".scaler_26 AS BINARY_DOUBLE) - 0.5815788803349367 AS scaler_26_0, CAST("ADS_sca_2_OUT".scaler_27 AS BINARY_DOUBLE) - 0.8321432517733914 AS scaler_27_0, CAST("ADS_sca_2_OUT".scaler_28 AS BINARY_DOUBLE) - 0.8907311579327978 AS scaler_28_0, CAST("ADS_sca_2_OUT".scaler_29 AS BINARY_DOUBLE) - 1.097339665184901 AS scaler_29_0, CAST("ADS_sca_2_OUT".scaler_30 AS BINARY_DOUBLE) - 0.5790457036351542 AS scaler_30_0, CAST("ADS_sca_2_OUT".scaler_31 AS BINARY_DOUBLE) - 0.44698120583557815 AS scaler_31_0, CAST("ADS_sca_2_OUT".scaler_2 AS BINARY_DOUBLE) - -0.5450618533731864 AS scaler_2_1, CAST("ADS_sca_2_OUT".scaler_3 AS BINARY_DOUBLE) - -0.2859578119289954 AS scaler_3_1, CAST("ADS_sca_2_OUT".scaler_4 AS BINARY_DOUBLE) - -0.5545576446499755 AS scaler_4_1, CAST("ADS_sca_2_OUT".scaler_5 AS BINARY_DOUBLE) - -0.5291111684226707 AS scaler_5_1, CAST("ADS_sca_2_OUT".scaler_6 AS BINARY_DOUBLE) - -0.2771408145592028 AS scaler_6_1, CAST("ADS_sca_2_OUT".scaler_7 AS BINARY_DOUBLE) - -0.45857608622985074 AS scaler_7_1, CAST("ADS_sca_2_OUT".scaler_8 AS BINARY_DOUBLE) - -0.5153392173928566 AS scaler_8_1, CAST("ADS_sca_2_OUT".scaler_9 AS BINARY_DOUBLE) - -0.5854227495327037 AS scaler_9_1, CAST("ADS_sca_2_OUT".scaler_10 AS BINARY_DOUBLE) - -0.26060149514380665 AS scaler_10_1, CAST("ADS_sca_2_OUT".scaler_11 AS BINARY_DOUBLE) - -0.004477097714565806 AS scaler_11_1, CAST("ADS_sca_2_OUT".scaler_12 AS BINARY_DOUBLE) - -0.4318985294230235 AS scaler_12_1, CAST("ADS_sca_2_OUT".scaler_13 AS BINARY_DOUBLE) - -0.014025270653293244 AS scaler_13_1, CAST("ADS_sca_2_OUT".scaler_14 AS BINARY_DOUBLE) - -0.4246422973243612 AS scaler_14_1, CAST("ADS_sca_2_OUT".scaler_15 AS BINARY_DOUBLE) - -0.40826899726989013 AS scaler_15_1, CAST("ADS_sca_2_OUT".scaler_16 AS BINARY_DOUBLE) - 0.04273366624732332 AS scaler_16_1, CAST("ADS_sca_2_OUT".scaler_17 AS BINARY_DOUBLE) - -0.22723086964964412 AS scaler_17_1, CAST("ADS_sca_2_OUT".scaler_18 AS BINARY_DOUBLE) - -0.17558093873696776 AS scaler_18_1, CAST("ADS_sca_2_OUT".scaler_19 AS BINARY_DOUBLE) - -0.31342854748168736 AS scaler_19_1, CAST("ADS_sca_2_OUT".scaler_20 AS BINARY_DOUBLE) - -0.029648985472661257 AS scaler_20_1, CAST("ADS_sca_2_OUT".scaler_21 AS BINARY_DOUBLE) - -0.057863566114043155 AS scaler_21_1, CAST("ADS_sca_2_OUT".scaler_22 AS BINARY_DOUBLE) - -0.5811191095443907 AS scaler_22_1, CAST("ADS_sca_2_OUT".scaler_23 AS BINARY_DOUBLE) - -0.3152153589956243 AS scaler_23_1, CAST("ADS_sca_2_OUT".scaler_24 AS BINARY_DOUBLE) - -0.5857650857100123 AS scaler_24_1, CAST("ADS_sca_2_OUT".scaler_25 AS BINARY_DOUBLE) - -0.5493699714832421 AS scaler_25_1, CAST("ADS_sca_2_OUT".scaler_26 AS BINARY_DOUBLE) - -0.315432613063021 AS scaler_26_1, CAST("ADS_sca_2_OUT".scaler_27 AS BINARY_DOUBLE) - -0.45133193316522807 AS scaler_27_1, CAST("ADS_sca_2_OUT".scaler_28 AS BINARY_DOUBLE) - -0.4831084246415161 AS scaler_28_1, CAST("ADS_sca_2_OUT".scaler_29 AS BINARY_DOUBLE) - -0.5951672760324885 AS scaler_29_1, CAST("ADS_sca_2_OUT".scaler_30 AS BINARY_DOUBLE) - -0.31405868671737264 AS scaler_30_1, CAST("ADS_sca_2_OUT".scaler_31 AS BINARY_DOUBLE) - -0.2424304845209864 AS scaler_31_1 
FROM "DEGEN_R7AJQV_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."Feature" AS BINARY_DOUBLE) AS "Feature", CAST("Values".log_proba_0 AS BINARY_DOUBLE) AS log_proba_0, CAST("Values".log_proba_1 AS BINARY_DOUBLE) AS log_proba_1 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", -0.5 * 1.6413785209558347 - (0.5 * centered_data.scaler_2_0 * centered_data.scaler_2_0) / 0.8216025263534548 AS log_proba_0, -0.5 * 0.4591594197317567 - (0.5 * centered_data.scaler_2_1 * centered_data.scaler_2_1) / 0.2519013725932329 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", -0.5 * 1.6002655877680978 - (0.5 * centered_data.scaler_3_0 * centered_data.scaler_3_0) / 0.7885089841711349 AS log_proba_0, -0.5 * 1.7125045704688953 - (0.5 * centered_data.scaler_3_1 * centered_data.scaler_3_1) / 0.8821682372879674 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", -0.5 * 1.617702742616231 - (0.5 * centered_data.scaler_4_0 * centered_data.scaler_4_0) / 0.8023789120346488 AS log_proba_0, -0.5 * 0.37958815844357435 - (0.5 * centered_data.scaler_4_1 * centered_data.scaler_4_1) / 0.2326339925383573 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", -0.5 * 1.9471799881311125 - (0.5 * centered_data.scaler_5_0 * centered_data.scaler_5_0) / 1.1155002084103536 AS log_proba_0, -0.5 * -0.11953467773161504 - (0.5 * centered_data.scaler_5_1 * centered_data.scaler_5_1) / 0.14122347077170522 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 4 AS "Feature", -0.5 * 1.6635967691216225 - (0.5 * centered_data.scaler_6_0 * centered_data.scaler_6_0) / 0.8400613977236742 AS log_proba_0, -0.5 * 1.6966894307538471 - (0.5 * centered_data.scaler_6_1 * centered_data.scaler_6_1) / 0.86832636742393 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 5 AS "Feature", -0.5 * 1.884586294697884 - (0.5 * centered_data.scaler_7_0 * centered_data.scaler_7_0) / 1.0478172891533695 AS log_proba_0, -0.5 * 0.8598365858401072 - (0.5 * centered_data.scaler_7_1 * centered_data.scaler_7_1) / 0.37604724925714067 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 6 AS "Feature", -0.5 * 1.7351919744966846 - (0.5 * centered_data.scaler_8_0 * centered_data.scaler_8_0) / 0.9024111052966277 AS log_proba_0, -0.5 * 0.6262149806192654 - (0.5 * centered_data.scaler_8_1 * centered_data.scaler_8_1) / 0.2977020616303447 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 7 AS "Feature", -0.5 * 1.5602787761382297 - (0.5 * centered_data.scaler_9_0 * centered_data.scaler_9_0) / 0.7576010961261351 AS log_proba_0, -0.5 * -0.014517037017178777 - (0.5 * centered_data.scaler_9_1 * centered_data.scaler_9_1) / 0.15686117453617088 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 8 AS "Feature", -0.5 * 1.8546613818231057 - (0.5 * centered_data.scaler_10_0 * centered_data.scaler_10_0) / 1.0169259634142678 AS log_proba_0, -0.5 * 1.611844130081231 - (0.5 * centered_data.scaler_10_1 * centered_data.scaler_10_1) / 0.7976918281932132 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 9 AS "Feature", -0.5 * 2.044886537308597 - (0.5 * centered_data.scaler_11_0 * centered_data.scaler_11_0) / 1.2299942208769348 AS log_proba_0, -0.5 * 1.704574644136445 - (0.5 * centered_data.scaler_11_1 * centered_data.scaler_11_1) / 0.8752003719964173 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 10 AS "Feature", -0.5 * 2.290109494933003 - (0.5 * centered_data.scaler_12_0 * centered_data.scaler_12_0) / 1.5718172412846338 AS log_proba_0, -0.5 * 0.0015330374909261566 - (0.5 * centered_data.scaler_12_1 * centered_data.scaler_12_1) / 0.15939912070541715 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 11 AS "Feature", -0.5 * 1.7662363513160726 - (0.5 * centered_data.scaler_13_0 * centered_data.scaler_13_0) / 0.9308652815835974 AS log_proba_0, -0.5 * 1.874148636052879 - (0.5 * centered_data.scaler_13_1 * centered_data.scaler_13_1) / 1.036937408979804 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 12 AS "Feature", -0.5 * 2.336180792693972 - (0.5 * centered_data.scaler_14_0 * centered_data.scaler_14_0) / 1.6459269587736156 AS log_proba_0, -0.5 * -0.15078335369786072 - (0.5 * centered_data.scaler_14_1 * centered_data.scaler_14_1) / 0.13687866259188483 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 13 AS "Feature", -0.5 * 2.4823165683037556 - (0.5 * centered_data.scaler_15_0 * centered_data.scaler_15_0) / 1.9049190264874656 AS log_proba_0, -0.5 * -1.5091149024632373 - (0.5 * centered_data.scaler_15_1 * centered_data.scaler_15_1) / 0.03519004781536206 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 14 AS "Feature", -0.5 * 1.5865707516308165 - (0.5 * centered_data.scaler_16_0 * centered_data.scaler_16_0) / 0.7777840883052269 AS log_proba_0, -0.5 * 1.9470280422566664 - (0.5 * centered_data.scaler_16_1 * centered_data.scaler_16_1) / 1.1153307256321723 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 15 AS "Feature", -0.5 * 1.7986436805149308 - (0.5 * centered_data.scaler_17_0 * centered_data.scaler_17_0) / 0.9615262762876591 AS log_proba_0, -0.5 * 1.7032402555580715 - (0.5 * centered_data.scaler_17_1 * centered_data.scaler_17_1) / 0.8740332934575474 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 16 AS "Feature", -0.5 * 1.0045585589579304 - (0.5 * centered_data.scaler_18_0 * centered_data.scaler_18_0) / 0.43460465185656355 AS log_proba_0, -0.5 * 2.0358965030179657 - (0.5 * centered_data.scaler_18_1 * centered_data.scaler_18_1) / 1.2189860865468665 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 17 AS "Feature", -0.5 * 1.562723820175166 - (0.5 * centered_data.scaler_19_0 * centered_data.scaler_19_0) / 0.7594557305760921 AS log_proba_0, -0.5 * 1.6766536845746431 - (0.5 * centered_data.scaler_19_1 * centered_data.scaler_19_1) / 0.8511019291603588 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 18 AS "Feature", -0.5 * 2.290219275644699 - (0.5 * centered_data.scaler_20_0 * centered_data.scaler_20_0) / 1.5719898059720017 AS log_proba_0, -0.5 * 1.4628467003531778 - (0.5 * centered_data.scaler_20_1 * centered_data.scaler_20_1) / 0.6872684088429996 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 19 AS "Feature", -0.5 * 1.175820303991784 - (0.5 * centered_data.scaler_21_0 * centered_data.scaler_21_0) / 0.5157893865531157 AS log_proba_0, -0.5 * 2.0634985733218603 - (0.5 * centered_data.scaler_21_1 * centered_data.scaler_21_1) / 1.2531012853346675 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 20 AS "Feature", -0.5 * 1.5616524076097844 - (0.5 * centered_data.scaler_22_0 * centered_data.scaler_22_0) / 0.7586424759069336 AS log_proba_0, -0.5 * 0.06928545679698722 - (0.5 * centered_data.scaler_22_1 * centered_data.scaler_22_1) / 0.17057305318205368 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 21 AS "Feature", -0.5 * 1.6010153707002484 - (0.5 * centered_data.scaler_23_0 * centered_data.scaler_23_0) / 0.7891004164445184 AS log_proba_0, -0.5 * 1.653748872560812 - (0.5 * centered_data.scaler_23_1 * centered_data.scaler_23_1) / 0.8318291616098307 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 22 AS "Feature", -0.5 * 1.5419248349574444 - (0.5 * centered_data.scaler_24_0 * centered_data.scaler_24_0) / 0.7438229585143238 AS log_proba_0, -0.5 * 0.02506078871021363 - (0.5 * centered_data.scaler_24_1 * centered_data.scaler_24_1) / 0.16319388970287865 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 23 AS "Feature", -0.5 * 1.9399015164982023 - (0.5 * centered_data.scaler_25_0 * centered_data.scaler_25_0) / 1.107410547683219 AS log_proba_0, -0.5 * -0.6452862541624336 - (0.5 * centered_data.scaler_25_1 * centered_data.scaler_25_1) / 0.08347873747483647 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 24 AS "Feature", -0.5 * 1.8062986697682641 - (0.5 * centered_data.scaler_26_0 * centered_data.scaler_26_0) / 0.968914993795163 AS log_proba_0, -0.5 * 1.52851226216787 - (0.5 * centered_data.scaler_26_1 * centered_data.scaler_26_1) / 0.7339129866145799 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 25 AS "Feature", -0.5 * 1.9880815178189888 - (0.5 * centered_data.scaler_27_0 * centered_data.scaler_27_0) / 1.1620718056611916 AS log_proba_0, -0.5 * 0.7377335447964324 - (0.5 * centered_data.scaler_27_1 * centered_data.scaler_27_1) / 0.3328233129314058 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 26 AS "Feature", -0.5 * 1.5711978893999567 - (0.5 * centered_data.scaler_28_0 * centered_data.scaler_28_0) / 0.7659187563985722 AS log_proba_0, -0.5 * 1.0683796804169132 - (0.5 * centered_data.scaler_28_1 * centered_data.scaler_28_1) / 0.4632458436582229 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 27 AS "Feature", -0.5 * 1.081208439284808 - (0.5 * centered_data.scaler_29_0 * centered_data.scaler_29_0) / 0.4692269962353365 AS log_proba_0, -0.5 * 0.5668813741530396 - (0.5 * centered_data.scaler_29_1 * centered_data.scaler_29_1) / 0.28055213906972365 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 28 AS "Feature", -0.5 * 2.2523591653184756 - (0.5 * centered_data.scaler_30_0 * centered_data.scaler_30_0) / 1.5135866494918322 AS log_proba_0, -0.5 * 1.0190699205436795 - (0.5 * centered_data.scaler_30_1 * centered_data.scaler_30_1) / 0.44095733869591497 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 29 AS "Feature", -0.5 * 2.169920832418199 - (0.5 * centered_data.scaler_31_0 * centered_data.scaler_31_0) / 1.3938138488468852 AS log_proba_0, -0.5 * 1.3586657998738 - (0.5 * centered_data.scaler_31_1 * centered_data.scaler_31_1) / 0.6192716394978423 AS log_proba_1 
FROM centered_data) "Values")
 SELECT "NaiveBayes_Scores"."KEY", "NaiveBayes_Scores"."Score_0", "NaiveBayes_Scores"."Score_1" 
FROM (SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_0" AS "Score_0", nb_sums."Score_1" AS "Score_1" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", -1.0451236037171234 + sum("NaiveBayes_data".log_proba_0) AS "Score_0", -0.43332206261113054 + sum("NaiveBayes_data".log_proba_1) AS "Score_1" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") nb_sums) "NaiveBayes_Scores") "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1", CAST(NULL AS BINARY_DOUBLE) AS "Proba_0", CAST(NULL AS BINARY_DOUBLE) AS "Proba_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM "N_IAL6TY_NAIVEBAYES_SCORES" "NaiveBayes_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_0" - score_max."max_Score")) AS "exp_delta_Score_0", exp(greatest(-100.0, score_max."Score_1" - score_max."max_Score")) AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1") AS "DecisionProba" 
FROM arg_max_cte