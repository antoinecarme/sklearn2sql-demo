-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "RawScores" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "LogProba_-1", CAST(NULL AS FLOAT) AS "Proba_-1", -0.798507696218 + (-0.5 * 1.58442095539 - (0.5 * ("ADS"."Feature_0" - -0.109137440008) * ("ADS"."Feature_0" - -0.109137440008)) / 0.776113807022) + (-0.5 * 1.7144176729 - (0.5 * ("ADS"."Feature_1" - -0.092803070908) * ("ADS"."Feature_1" - -0.092803070908)) / 0.883857530869) + (-0.5 * 1.89182397282 - (0.5 * ("ADS"."Feature_2" - 0.24011601671) * ("ADS"."Feature_2" - 0.24011601671)) / 1.05542856418) + (-0.5 * 1.69899885243 - (0.5 * ("ADS"."Feature_3" - 0.0314315046681) * ("ADS"."Feature_3" - 0.0314315046681)) / 0.870334016522) + (-0.5 * 1.98835581986 - (0.5 * ("ADS"."Feature_4" - 0.113969267155) * ("ADS"."Feature_4" - 0.113969267155)) / 1.16239060805) AS "Score_-1", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "Proba_1", -0.597837000756 + (-0.5 * 1.97704795347 - (0.5 * ("ADS"."Feature_0" - -0.0370523473936) * ("ADS"."Feature_0" - -0.0370523473936)) / 1.14932048723) + (-0.5 * 1.77770931195 - (0.5 * ("ADS"."Feature_1" - -0.140731130923) * ("ADS"."Feature_1" - -0.140731130923)) / 0.941606561639) + (-0.5 * 1.73261656279 - (0.5 * ("ADS"."Feature_2" - -0.428998376845) * ("ADS"."Feature_2" - -0.428998376845)) / 0.900090015333) + (-0.5 * 1.91614260175 - (0.5 * ("ADS"."Feature_3" - -0.233511860564) * ("ADS"."Feature_3" - -0.233511860564)) / 1.08140977306) + (-0.5 * 1.70136476627 - (0.5 * ("ADS"."Feature_4" - -0.0181072243001) * ("ADS"."Feature_4" - -0.0181072243001)) / 0.872395589609) AS "Score_1" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_-1" AS "Score_-1", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_-1" AS "Proba_-1", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_-1" AS "LogProba_-1", "RawScores"."LogProba_1" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Decision" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", -1 AS class, orig_cte."LogProba_-1" AS "LogProba", orig_cte."Proba_-1" AS "Proba", orig_cte."Score_-1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
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
FROM score_soft_max_comp) AS soft_scu), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_-1" AS "Score_-1", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."SoftProba_-1" AS "Proba_-1", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_-1" > 0.0) THEN ln(arg_max_cte."SoftProba_-1") ELSE -1.79769313486231e+308 END AS "LogProba_-1", CASE WHEN (arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte