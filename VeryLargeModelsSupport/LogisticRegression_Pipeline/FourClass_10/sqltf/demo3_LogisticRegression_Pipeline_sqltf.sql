-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329233000_7PNT1C_ADS_imp_1_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329233000_7PNT1C_ADS_imp_1_OUT" (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)


-- Code For temporary table TMP_20180329233000_7PNT1C_ADS_imp_1_OUT part 2/2. Populate

INSERT INTO "TMP_20180329233000_7PNT1C_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.003903374463034205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.6152232215702322 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.042796236914291665 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.7709819558904074 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.43300733624893334 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0424956965794036 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.29809080119845455 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.14672241507251663 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.01746942384662034 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.11507331415602866 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS") AS "ADS_imp_1_OUT"
-- Code For temporary table TMP_20180329233000_PVEOSR_ADS_sca_2_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329233000_PVEOSR_ADS_sca_2_OUT" (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)


-- Code For temporary table TMP_20180329233000_PVEOSR_ADS_sca_2_OUT part 2/2. Populate

INSERT INTO "TMP_20180329233000_PVEOSR_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - -0.003903374463034205) / 0.9795060640183997 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.6152232215702322) / 1.3900807236205235 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.042796236914291665) / 1.4962685135870766 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.7709819558904074) / 2.3333561060111743 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.43300733624893334) / 1.4029757772648748 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.0424956965794036) / 0.9558091076873229 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.29809080119845455) / 1.017013180721433 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.14672241507251663) / 1.600798539929603 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.01746942384662034) / 1.1487296361671415 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.11507331415602866) / 0.9690911857336224 AS scaler_11 
FROM "TMP_20180329233000_7PNT1C_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 0.29528535484002044 * "ADS_sca_2_OUT".scaler_2 + -0.5526759872623231 * "ADS_sca_2_OUT".scaler_3 + -0.14989593625504063 * "ADS_sca_2_OUT".scaler_4 + -0.30902498812095225 * "ADS_sca_2_OUT".scaler_5 + 0.9661792392905004 * "ADS_sca_2_OUT".scaler_6 + -0.31638203715111407 * "ADS_sca_2_OUT".scaler_7 + 0.25095512612805715 * "ADS_sca_2_OUT".scaler_8 + 0.5763833387115375 * "ADS_sca_2_OUT".scaler_9 + 0.5673987481273651 * "ADS_sca_2_OUT".scaler_10 + 0.1044368493440396 * "ADS_sca_2_OUT".scaler_11 + -1.69000197554308 AS "Score_0", -0.047201699059280657 * "ADS_sca_2_OUT".scaler_2 + 0.23868794550458178 * "ADS_sca_2_OUT".scaler_3 + 0.47148153130485165 * "ADS_sca_2_OUT".scaler_4 + 0.4637849169081291 * "ADS_sca_2_OUT".scaler_5 + 0.4839694943314667 * "ADS_sca_2_OUT".scaler_6 + -0.057581453557212024 * "ADS_sca_2_OUT".scaler_7 + -0.42257590363691394 * "ADS_sca_2_OUT".scaler_8 + 0.36059852873728815 * "ADS_sca_2_OUT".scaler_9 + -0.30088387779501985 * "ADS_sca_2_OUT".scaler_10 + 0.03964462319359139 * "ADS_sca_2_OUT".scaler_11 + -1.4891828865713692 AS "Score_1", -0.20991890390381052 * "ADS_sca_2_OUT".scaler_2 + -0.6521332586221625 * "ADS_sca_2_OUT".scaler_3 + -0.9667701205297338 * "ADS_sca_2_OUT".scaler_4 + -0.503349164401245 * "ADS_sca_2_OUT".scaler_5 + -0.9766760570776902 * "ADS_sca_2_OUT".scaler_6 + 0.00933295766915345 * "ADS_sca_2_OUT".scaler_7 + 0.26234313567699874 * "ADS_sca_2_OUT".scaler_8 + 0.6326858137220698 * "ADS_sca_2_OUT".scaler_9 + 0.4799923376955715 * "ADS_sca_2_OUT".scaler_10 + -0.04031934817400002 * "ADS_sca_2_OUT".scaler_11 + -1.5691458724092984 AS "Score_2", -0.26704768543837215 * "ADS_sca_2_OUT".scaler_2 + 1.4028871180826459 * "ADS_sca_2_OUT".scaler_3 + 0.13161230508902794 * "ADS_sca_2_OUT".scaler_4 + 0.34032768548506853 * "ADS_sca_2_OUT".scaler_5 + -0.6207736114959244 * "ADS_sca_2_OUT".scaler_6 + 0.36830754620146294 * "ADS_sca_2_OUT".scaler_7 + -0.026038414457844265 * "ADS_sca_2_OUT".scaler_8 + -1.4379752169385571 * "ADS_sca_2_OUT".scaler_9 + -0.5121751476678849 * "ADS_sca_2_OUT".scaler_10 + -0.09078059258946687 * "ADS_sca_2_OUT".scaler_11 + -1.5996229421632207 AS "Score_3" 
FROM "TMP_20180329233000_PVEOSR_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_0"), 100.0)))) / (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_0"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_1"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_2"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_3"), 100.0)))) AS "Proba_0", (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_1"), 100.0)))) / (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_0"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_1"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_2"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_3"), 100.0)))) AS "Proba_1", (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_2"), 100.0)))) / (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_0"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_1"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_2"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_3"), 100.0)))) AS "Proba_2", (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_3"), 100.0)))) / (1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_0"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_1"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_2"), 100.0))) + 1.0 / (1.0 + exp(min(max(-100.0, -linear_model_cte."Score_3"), 100.0)))) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte