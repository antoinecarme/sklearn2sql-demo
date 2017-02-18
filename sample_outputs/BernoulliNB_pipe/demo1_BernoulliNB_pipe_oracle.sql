-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0694906390703 ELSE "ADS"."Feature_0" END AS impute_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.119163503916 ELSE "ADS"."Feature_1" END AS impute_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.127896899745 ELSE "ADS"."Feature_2" END AS impute_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.114287346209 ELSE "ADS"."Feature_3" END AS impute_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0413271968547 ELSE "ADS"."Feature_4" END AS impute_output_6 
FROM "INPUT_DATA" "ADS"), 
"ADS_ano_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.053647534364 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.452838029092 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.689918784888 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * -0.33402126184 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * -0.452218452037 AS anova_output_2, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.620732053756 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * 0.179006433042 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.520498333383 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.386172344142 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.403237919763 AS anova_output_3, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * 0.534948377585 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.502789475991 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.167923582168 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.610459612885 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.245303297449 AS anova_output_4, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * 0.119525555247 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.210071806412 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.0756568397014 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * -0.602658142322 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.756744794427 AS anova_output_5, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.557994206474 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.682617751982 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * -0.468157311555 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.0586765863683 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * -0.0078268813005 AS anova_output_6 
FROM "ADS_imp_1_OUT"), 
"RawScores" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "LogProba_-1", CAST(NULL AS FLOAT) AS "Proba_-1", -0.798507696218 + "ADS_ano_2_OUT".anova_output_2 * -0.554310735706 + (1 - "ADS_ano_2_OUT".anova_output_2) * -0.854415328156 + "ADS_ano_2_OUT".anova_output_3 * -0.482851771724 + (1 - "ADS_ano_2_OUT".anova_output_3) * -0.959775843814 + "ADS_ano_2_OUT".anova_output_4 * -0.592051063689 + (1 - "ADS_ano_2_OUT".anova_output_4) * -0.805625163987 + "ADS_ano_2_OUT".anova_output_5 * -0.714653385781 + (1 - "ADS_ano_2_OUT".anova_output_5) * -0.672093771362 + "ADS_ano_2_OUT".anova_output_6 * -0.854415328156 + (1 - "ADS_ano_2_OUT".anova_output_6) * -0.554310735706 AS "Score_-1", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "Proba_1", -0.597837000756 + "ADS_ano_2_OUT".anova_output_2 * -0.74721440183 + (1 - "ADS_ano_2_OUT".anova_output_2) * -0.641853886172 + "ADS_ano_2_OUT".anova_output_3 * -0.907557051905 + (1 - "ADS_ano_2_OUT".anova_output_3) * -0.516690743218 + "ADS_ano_2_OUT".anova_output_4 * -0.864997437487 + (1 - "ADS_ano_2_OUT".anova_output_4) * -0.546543706368 + "ADS_ano_2_OUT".anova_output_5 * -0.675755437848 + (1 - "ADS_ano_2_OUT".anova_output_5) * -0.710846757659 + "ADS_ano_2_OUT".anova_output_6 * -0.641853886172 + (1 - "ADS_ano_2_OUT".anova_output_6) * -0.74721440183 AS "Score_1" 
FROM "ADS_ano_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_-1" AS "Score_-1", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_-1" AS "Proba_-1", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_-1" AS "LogProba_-1", "RawScores"."LogProba_1" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Decision" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", -1 AS class, orig_cte."LogProba_-1" AS "LogProba", orig_cte."Proba_-1" AS "Proba", orig_cte."Score_-1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_-1" AS "Score_-1", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_-1" AS "Proba_-1", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_-1" AS "LogProba_-1", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_-1" AS "Score_-1", score_max."Score_1" AS "Score_1", score_max."Proba_-1" AS "Proba_-1", score_max."Proba_1" AS "Proba_1", score_max."LogProba_-1" AS "LogProba_-1", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", exp(score_max."Score_-1" - score_max."max_Score") AS "exp_delta_Score_-1", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."LogProba" AS "LogProba", soft_scu."Proba" AS "Proba", soft_scu."Score" AS "Score", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_comp."KEY" AS "KEY", -1 AS class, score_soft_max_comp."LogProba_-1" AS "LogProba", score_soft_max_comp."Proba_-1" AS "Proba", score_soft_max_comp."Score_-1" AS "Score", score_soft_max_comp."exp_delta_Score_-1" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 1 AS class, score_soft_max_comp."LogProba_1" AS "LogProba", score_soft_max_comp."Proba_1" AS "Proba", score_soft_max_comp."Score_1" AS "Score", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_comp) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp."KEY" AS "KEY", score_soft_max_comp."Score_-1" AS "Score_-1", score_soft_max_comp."Score_1" AS "Score_1", score_soft_max_comp."Proba_-1" AS "Proba_-1", score_soft_max_comp."Proba_1" AS "Proba_1", score_soft_max_comp."LogProba_-1" AS "LogProba_-1", score_soft_max_comp."LogProba_1" AS "LogProba_1", score_soft_max_comp."Decision" AS "Decision", score_soft_max_comp."max_LogProba" AS "max_LogProba", score_soft_max_comp."max_Proba" AS "max_Proba", score_soft_max_comp."max_Score" AS "max_Score", score_soft_max_comp."exp_delta_Score_-1" AS "exp_delta_Score_-1", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score_1", (SELECT sum(score_class_union_soft."exp_delta_Score") AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp."KEY" = score_class_union_soft."KEY") AS "sum_ExpDeltaScore" 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_-1" AS "Score_-1", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_-1" AS "Proba_-1", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_-1" AS "LogProba_-1", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_-1" AS "exp_delta_Score_-1", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max."max_LogProba" = score_class_union."LogProba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max."max_Proba" = score_class_union."Proba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max."max_Score" = score_class_union."Score" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Score", score_soft_max."exp_delta_Score_-1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_-1", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_-1" AS "Score_-1", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."SoftProba_-1" AS "Proba_-1", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_-1" > 0.0) THEN ln(arg_max_cte."SoftProba_-1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_-1", CASE WHEN (arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte