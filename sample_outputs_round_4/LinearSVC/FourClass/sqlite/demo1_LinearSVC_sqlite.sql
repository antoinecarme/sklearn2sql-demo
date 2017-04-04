-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", -0.19711544450053978 * "ADS"."Feature_0" + 0.10550652306571029 * "ADS"."Feature_1" + -0.06731011144160279 * "ADS"."Feature_2" + -0.1612029846744912 * "ADS"."Feature_3" + -0.11091767486622514 * "ADS"."Feature_4" + 0.020399905538902946 * "ADS"."Feature_5" + 0.10157710121998079 * "ADS"."Feature_6" + 0.06387605801015846 * "ADS"."Feature_7" + 0.06134531143458883 * "ADS"."Feature_8" + -0.14194804444862127 * "ADS"."Feature_9" + -0.044090708422585445 * "ADS"."Feature_10" + 0.04594730390590764 * "ADS"."Feature_11" + -0.1325864737689141 * "ADS"."Feature_12" + 0.07162272518771591 * "ADS"."Feature_13" + 0.20122890676633873 * "ADS"."Feature_14" + -0.03811734982848637 * "ADS"."Feature_15" + -0.017162720758711354 * "ADS"."Feature_16" + 0.034932753760066125 * "ADS"."Feature_17" + 0.2590064684131407 * "ADS"."Feature_18" + 0.06761977679643878 * "ADS"."Feature_19" + -0.482561388759 AS "Score_0", 0.19214062246255265 * "ADS"."Feature_0" + 0.03793507561016957 * "ADS"."Feature_1" + 0.3271013622795283 * "ADS"."Feature_2" + -0.038765323154847875 * "ADS"."Feature_3" + 0.11403138361121729 * "ADS"."Feature_4" + 0.04527546107772289 * "ADS"."Feature_5" + 0.11618398577960157 * "ADS"."Feature_6" + 0.10800562922287801 * "ADS"."Feature_7" + -0.09698841712243943 * "ADS"."Feature_8" + 0.22873237643632996 * "ADS"."Feature_9" + 0.11439151342533378 * "ADS"."Feature_10" + -0.1900926549027508 * "ADS"."Feature_11" + -0.21401040046100914 * "ADS"."Feature_12" + -0.030191139346492327 * "ADS"."Feature_13" + -0.07357026894203533 * "ADS"."Feature_14" + 0.1064781364362796 * "ADS"."Feature_15" + 0.09691458694539912 * "ADS"."Feature_16" + -0.12200272451810104 * "ADS"."Feature_17" + -0.05166813059562622 * "ADS"."Feature_18" + -0.07954538970228792 * "ADS"."Feature_19" + -0.513324675428 AS "Score_1", 0.04907948282443525 * "ADS"."Feature_0" + 0.09655950203252016 * "ADS"."Feature_1" + -0.33825672393692824 * "ADS"."Feature_2" + 0.18600065113933248 * "ADS"."Feature_3" + 0.22206518910678258 * "ADS"."Feature_4" + 0.0012762315360492972 * "ADS"."Feature_5" + -0.3406262468753276 * "ADS"."Feature_6" + -0.09221617543545224 * "ADS"."Feature_7" + -0.21288655446010715 * "ADS"."Feature_8" + -0.06339243961747353 * "ADS"."Feature_9" + 0.25741459134569006 * "ADS"."Feature_10" + -0.00914054260628957 * "ADS"."Feature_11" + 0.4214668209701973 * "ADS"."Feature_12" + -0.14500505135216443 * "ADS"."Feature_13" + -0.09293536153253802 * "ADS"."Feature_14" + -0.052578290547594796 * "ADS"."Feature_15" + -0.0296759014735385 * "ADS"."Feature_16" + -0.15338993777535426 * "ADS"."Feature_17" + -0.13234077478538872 * "ADS"."Feature_18" + -0.010092599211551253 * "ADS"."Feature_19" + -1.20115238261 AS "Score_2", 0.007652432883542485 * "ADS"."Feature_0" + -0.06989484013243738 * "ADS"."Feature_1" + 0.02188329335705524 * "ADS"."Feature_2" + 0.05508514552430528 * "ADS"."Feature_3" + -0.08039410175047879 * "ADS"."Feature_4" + -0.021231293480199965 * "ADS"."Feature_5" + 0.07423540357896935 * "ADS"."Feature_6" + -0.042752019640431516 * "ADS"."Feature_7" + 0.10564886415889886 * "ADS"."Feature_8" + -0.02916647094115091 * "ADS"."Feature_9" + -0.14084490785045073 * "ADS"."Feature_10" + 0.08766185316367689 * "ADS"."Feature_11" + 0.0036702838021373404 * "ADS"."Feature_12" + -0.085846367497703 * "ADS"."Feature_13" + -0.05264029334538916 * "ADS"."Feature_14" + -0.01442025704319123 * "ADS"."Feature_15" + -0.06339630080533419 * "ADS"."Feature_16" + 0.057810421645196265 * "ADS"."Feature_17" + -0.08251195782681932 * "ADS"."Feature_18" + 0.018435747872241618 * "ADS"."Feature_19" + -0.453686078138 AS "Score_3" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte