-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier
-- Dataset : iris
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table CODEGEN_MOTU6Z_HL_1_RELU_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "CODEGEN_MOTU6Z_HL_1_RELU_1" (
	"KEY" NUMBER(19), 
	"NEUR_1_1" BINARY_DOUBLE, 
	"NEUR_1_2" BINARY_DOUBLE, 
	"NEUR_1_3" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table CODEGEN_MOTU6Z_HL_1_RELU_1 part 2. Populate

INSERT INTO "CODEGEN_MOTU6Z_HL_1_RELU_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS BINARY_DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS BINARY_DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS BINARY_DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS BINARY_DOUBLE) AS "Feature_3" 
FROM "IRIS" "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.13455435144968741 * "IL"."Feature_0" + -0.5912072376363042 * "IL"."Feature_1" + -0.7322306108957215 * "IL"."Feature_2" + -0.8188914469345558 * "IL"."Feature_3" + 0.34759387273386655 AS "NEUR_1_1", 10.565500144933031 * "IL"."Feature_0" + 5.716453098983826 * "IL"."Feature_1" + -6.118814583042024 * "IL"."Feature_2" + -6.402647933429349 * "IL"."Feature_3" + 3.487613326619119 AS "NEUR_1_2", -0.5255550062039617 * "IL"."Feature_0" + -6.159708532756877 * "IL"."Feature_1" + 17.583197075412752 * "IL"."Feature_2" + 10.362687928581492 * "IL"."Feature_3" + -2.3933629305744653 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") "HL_1_relu_1") "U"

-- Code For temporary table ODEGEN_7GX9HD_OL_SOFTMAX_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "ODEGEN_7GX9HD_OL_SOFTMAX_1" (
	"KEY" NUMBER(19), 
	"NEUR_3_1" BINARY_DOUBLE, 
	"NEUR_3_2" BINARY_DOUBLE, 
	"NEUR_3_3" BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table ODEGEN_7GX9HD_OL_SOFTMAX_1 part 2. Populate

INSERT INTO "ODEGEN_7GX9HD_OL_SOFTMAX_1" ("KEY", "NEUR_3_1", "NEUR_3_2", "NEUR_3_3") SELECT "U"."KEY", "U"."NEUR_3_1", "U"."NEUR_3_2", "U"."NEUR_3_3" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.672671923104853 * "HL_1_relu_1"."NEUR_1_1" + 5.419802759827511 * "HL_1_relu_1"."NEUR_1_2" + -1.9271053122849495 * "HL_1_relu_1"."NEUR_1_3" + 5.16187181842687 AS "NEUR_2_1", 0.6487191883099986 * "HL_1_relu_1"."NEUR_1_1" + -0.06938249903932749 * "HL_1_relu_1"."NEUR_1_2" + -0.6458158083131357 * "HL_1_relu_1"."NEUR_1_3" + -0.5292904296119374 AS "NEUR_2_2", -0.3006659700228309 * "HL_1_relu_1"."NEUR_1_1" + -0.8271971827368583 * "HL_1_relu_1"."NEUR_1_2" + -0.3009923810787846 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.34127033794348177 * "HL_1_relu_1"."NEUR_1_1" + -0.5188069008070966 * "HL_1_relu_1"."NEUR_1_2" + -0.12230784517386467 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -0.38669908724665947 * "HL_1_relu_1"."NEUR_1_1" + -5.0643406659762 * "HL_1_relu_1"."NEUR_1_2" + 16.572683876392247 * "HL_1_relu_1"."NEUR_1_3" + -6.299977617411162 AS "NEUR_2_5" 
FROM "CODEGEN_MOTU6Z_HL_1_RELU_1" "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 6.420395346256409 * "HL_2_relu"."NEUR_2_1" + 0.5913547027503123 * "HL_2_relu"."NEUR_2_2" + -0.5046470737389107 * "HL_2_relu"."NEUR_2_3" + -0.7696561096154452 * "HL_2_relu"."NEUR_2_4" + -17.85369401478755 * "HL_2_relu"."NEUR_2_5" + 15.785393419813078 AS "NEUR_3_1", -0.40407667443888545 * "HL_2_relu"."NEUR_2_1" + 0.6650586309492138 * "HL_2_relu"."NEUR_2_2" + 0.4331327944007979 * "HL_2_relu"."NEUR_2_3" + 0.3491807798287565 * "HL_2_relu"."NEUR_2_4" + 8.357362564421251 * "HL_2_relu"."NEUR_2_5" + -2.5684496922066598 AS "NEUR_3_2", -6.523942317697426 * "HL_2_relu"."NEUR_2_1" + 0.45768465590741686 * "HL_2_relu"."NEUR_2_2" + 0.0795303302319135 * "HL_2_relu"."NEUR_2_3" + -0.4065546790748663 * "HL_2_relu"."NEUR_2_4" + 8.873337773187462 * "HL_2_relu"."NEUR_2_5" + -14.393700566574061 AS "NEUR_3_3" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1", "OL_BA"."NEUR_3_2" AS "NEUR_3_2", "OL_BA"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_BA")
 SELECT "OL_softmax_1"."KEY", "OL_softmax_1"."NEUR_3_1", "OL_softmax_1"."NEUR_3_2", "OL_softmax_1"."NEUR_3_3" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_softmax") "OL_softmax_1") "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_0", "OL_softmax_1"."NEUR_3_2" AS "Score_1", "OL_softmax_1"."NEUR_3_3" AS "Score_2", CAST(NULL AS BINARY_DOUBLE) AS "Proba_0", CAST(NULL AS BINARY_DOUBLE) AS "Proba_1", CAST(NULL AS BINARY_DOUBLE) AS "Proba_2", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_2", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM "ODEGEN_7GX9HD_OL_SOFTMAX_1" "OL_softmax_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_0" - score_max."max_Score")) AS "exp_delta_Score_0", exp(greatest(-100.0, score_max."Score_1" - score_max."max_Score")) AS "exp_delta_Score_1", exp(greatest(-100.0, score_max."Score_2" - score_max."max_Score")) AS "exp_delta_Score_2" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS class, score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2" 
FROM score_soft_max) soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", CAST(NULL AS BINARY_DOUBLE) AS "Score_2", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_2", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1", arg_max_cte."SoftProba_2") AS "DecisionProba" 
FROM arg_max_cte