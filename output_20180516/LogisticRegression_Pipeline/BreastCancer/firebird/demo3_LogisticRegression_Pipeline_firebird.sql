-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : BreastCancer
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_XJ83FU_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_XJ83FU_ADS" (
	"KEY" BIGINT NOT NULL, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION, 
	impter_12 DOUBLE PRECISION, 
	impter_13 DOUBLE PRECISION, 
	impter_14 DOUBLE PRECISION, 
	impter_15 DOUBLE PRECISION, 
	impter_16 DOUBLE PRECISION, 
	impter_17 DOUBLE PRECISION, 
	impter_18 DOUBLE PRECISION, 
	impter_19 DOUBLE PRECISION, 
	impter_20 DOUBLE PRECISION, 
	impter_21 DOUBLE PRECISION, 
	impter_22 DOUBLE PRECISION, 
	impter_23 DOUBLE PRECISION, 
	impter_24 DOUBLE PRECISION, 
	impter_25 DOUBLE PRECISION, 
	impter_26 DOUBLE PRECISION, 
	impter_27 DOUBLE PRECISION, 
	impter_28 DOUBLE PRECISION, 
	impter_29 DOUBLE PRECISION, 
	impter_30 DOUBLE PRECISION, 
	impter_31 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_XJ83FU_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_XJ83FU_ADS" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 14.077712087912083 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.03905494505495 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 91.66178021978023 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 650.9676923076925 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.09642184615384615 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.10441613186813191 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.08826232681318694 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.048516399999999966 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.1815885714285715 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.06294030769230768 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.4099173626373627 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.2170694505494501 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.90524901098901 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 40.87988571428572 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.007055971428571433 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.025567830769230776 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.03199925626373623 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.011972369230769237 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.020896200000000014 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.0038465518681318647 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 16.17776483516484 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.26505494505494 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 106.68156043956041 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 870.8639560439567 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.1318275604395605 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.24991806593406582 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.2654615934065932 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.11348798021978022 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.2897881318681319 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.08364145054945049 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_XJ83FU_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_8fc0" ON "TMP_20180516_CODEGEN_XJ83FU_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_B1IXHZ_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_B1IXHZ_ADS" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION, 
	scaler_12 DOUBLE PRECISION, 
	scaler_13 DOUBLE PRECISION, 
	scaler_14 DOUBLE PRECISION, 
	scaler_15 DOUBLE PRECISION, 
	scaler_16 DOUBLE PRECISION, 
	scaler_17 DOUBLE PRECISION, 
	scaler_18 DOUBLE PRECISION, 
	scaler_19 DOUBLE PRECISION, 
	scaler_20 DOUBLE PRECISION, 
	scaler_21 DOUBLE PRECISION, 
	scaler_22 DOUBLE PRECISION, 
	scaler_23 DOUBLE PRECISION, 
	scaler_24 DOUBLE PRECISION, 
	scaler_25 DOUBLE PRECISION, 
	scaler_26 DOUBLE PRECISION, 
	scaler_27 DOUBLE PRECISION, 
	scaler_28 DOUBLE PRECISION, 
	scaler_29 DOUBLE PRECISION, 
	scaler_30 DOUBLE PRECISION, 
	scaler_31 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_B1IXHZ_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_B1IXHZ_ADS" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 14.077712087912083) / 3.5451492987000814 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - 19.03905494505495) / 4.1622971504218205 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 91.66178021978023) / 24.503971943475648 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 650.9676923076925) / 355.702823163891 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - 0.09642184615384615) / 0.014197819663072304 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - 0.10441613186813191) / 0.05340369466973436 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - 0.08826232681318694) / 0.08191200162631372 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 0.048516399999999966) / 0.039373117396730245 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - 0.1815885714285715) / 0.02779005832874822 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - 0.06294030769230768) / 0.007019354586172742 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE PRECISION) - 0.4099173626373627) / 0.29120400836827026 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE PRECISION) - 1.2170694505494501) / 0.5363896396336265 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE PRECISION) - 2.90524901098901) / 2.1424944299808626 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE PRECISION) - 40.87988571428572) / 48.224754479577314 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE PRECISION) - 0.007055971428571433) / 0.002863651656569403 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE PRECISION) - 0.025567830769230776) / 0.017947013631032318 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE PRECISION) - 0.03199925626373623) / 0.03166493672136351 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE PRECISION) - 0.011972369230769237) / 0.006392005589396607 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE PRECISION) - 0.020896200000000014) / 0.008582910079869234 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE PRECISION) - 0.0038465518681318647) / 0.0027436075866190575 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE PRECISION) - 16.17776483516484) / 4.817458816201383 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE PRECISION) - 25.26505494505494) / 5.92332412866667 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE PRECISION) - 106.68156043956041) / 33.70385837605481 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE PRECISION) - 870.8639560439567) / 566.9950559872813 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE PRECISION) - 0.1318275604395605) / 0.02274820752228878 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE PRECISION) - 0.24991806593406582) / 0.15246893644279044 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE PRECISION) - 0.2654615934065932) / 0.20692568678204093 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE PRECISION) - 0.11348798021978022) / 0.06638141278520703 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE PRECISION) - 0.2897881318681319) / 0.06220470665051894 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE PRECISION) - 0.08364145054945049) / 0.01706514580694785 AS scaler_31 
FROM "TMP_20180516_CODEGEN_XJ83FU_ADS" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_B1IXHZ_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_c7f4" ON "TMP_20180516_CODEGEN_B1IXHZ_ADS" ("KEY")

-- Model deployment code

WITH linear_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS DOUBLE PRECISION) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS DOUBLE PRECISION) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS DOUBLE PRECISION) AS scaler_14, CAST("ADS_sca_2_OUT".scaler_15 AS DOUBLE PRECISION) AS scaler_15, CAST("ADS_sca_2_OUT".scaler_16 AS DOUBLE PRECISION) AS scaler_16, CAST("ADS_sca_2_OUT".scaler_17 AS DOUBLE PRECISION) AS scaler_17, CAST("ADS_sca_2_OUT".scaler_18 AS DOUBLE PRECISION) AS scaler_18, CAST("ADS_sca_2_OUT".scaler_19 AS DOUBLE PRECISION) AS scaler_19, CAST("ADS_sca_2_OUT".scaler_20 AS DOUBLE PRECISION) AS scaler_20, CAST("ADS_sca_2_OUT".scaler_21 AS DOUBLE PRECISION) AS scaler_21, CAST("ADS_sca_2_OUT".scaler_22 AS DOUBLE PRECISION) AS scaler_22, CAST("ADS_sca_2_OUT".scaler_23 AS DOUBLE PRECISION) AS scaler_23, CAST("ADS_sca_2_OUT".scaler_24 AS DOUBLE PRECISION) AS scaler_24, CAST("ADS_sca_2_OUT".scaler_25 AS DOUBLE PRECISION) AS scaler_25, CAST("ADS_sca_2_OUT".scaler_26 AS DOUBLE PRECISION) AS scaler_26, CAST("ADS_sca_2_OUT".scaler_27 AS DOUBLE PRECISION) AS scaler_27, CAST("ADS_sca_2_OUT".scaler_28 AS DOUBLE PRECISION) AS scaler_28, CAST("ADS_sca_2_OUT".scaler_29 AS DOUBLE PRECISION) AS scaler_29, CAST("ADS_sca_2_OUT".scaler_30 AS DOUBLE PRECISION) AS scaler_30, CAST("ADS_sca_2_OUT".scaler_31 AS DOUBLE PRECISION) AS scaler_31 
FROM "TMP_20180516_CODEGEN_B1IXHZ_ADS" AS "ADS_sca_2_OUT"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.3888899776605234 * linear_input.scaler_2 + -0.47180119608447807 * linear_input.scaler_3 + -0.3411334641160032 * linear_input.scaler_4 + -0.5123119982272885 * linear_input.scaler_5 + -0.10458937737213672 * linear_input.scaler_6 + 0.39569077129100627 * linear_input.scaler_7 + -0.8028408032080064 * linear_input.scaler_8 + -1.1328656819504483 * linear_input.scaler_9 + 0.03484973533611177 * linear_input.scaler_10 + 0.08858465937937327 * linear_input.scaler_11 + -1.4318586917452147 * linear_input.scaler_12 + -0.04492525197639285 * linear_input.scaler_13 + -0.8675848302117933 * linear_input.scaler_14 + -0.9295182322111085 * linear_input.scaler_15 + 0.21365225319238987 * linear_input.scaler_16 + 0.8878602336923368 * linear_input.scaler_17 + 0.2419891326527672 * linear_input.scaler_18 + -0.36221487466700814 * linear_input.scaler_19 + 0.06423015632543991 * linear_input.scaler_20 + 0.5658094362841433 * linear_input.scaler_21 + -0.8529999453858232 * linear_input.scaler_22 + -0.8486142968279822 * linear_input.scaler_23 + -0.6896797963868336 * linear_input.scaler_24 + -0.8519216287709824 * linear_input.scaler_25 + -0.6702917011299875 * linear_input.scaler_26 + -0.024352018070713355 * linear_input.scaler_27 + -0.8880527881302775 * linear_input.scaler_28 + -0.9812161408847957 * linear_input.scaler_29 + -0.853800610613817 * linear_input.scaler_30 + -0.09234271407525338 * linear_input.scaler_31 + 0.6995443332153787 AS lincomb 
FROM linear_input), 
dot_prod_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte.lincomb AS dot_prod, 1.0 / (1.0 + exp(CASE WHEN (minvalue(maxvalue(-100.0, -linear_model_cte.lincomb), 100.0) >= -709.782712893384) THEN minvalue(maxvalue(-100.0, -linear_model_cte.lincomb), 100.0) ELSE -709.782712893384 END)) AS logistic 
FROM linear_model_cte)
 SELECT dot_prod_logistic."KEY" AS "KEY", -dot_prod_logistic.dot_prod AS "Score_0", dot_prod_logistic.dot_prod AS "Score_1", 1.0 - dot_prod_logistic.logistic AS "Proba_0", dot_prod_logistic.logistic AS "Proba_1", CASE WHEN (1.0 - dot_prod_logistic.logistic IS NULL OR 1.0 - dot_prod_logistic.logistic > 0.0) THEN ln(1.0 - dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (dot_prod_logistic.logistic IS NULL OR dot_prod_logistic.logistic > 0.0) THEN ln(dot_prod_logistic.logistic) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (dot_prod_logistic.dot_prod > 0.0) THEN 1 ELSE 0 END AS "Decision", maxvalue(1.0 - dot_prod_logistic.logistic, dot_prod_logistic.logistic) AS "DecisionProba" 
FROM dot_prod_logistic