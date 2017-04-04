-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.45284771614915764 * "ADS"."Feature_0" + -0.09716394305881719 * "ADS"."Feature_1" + -0.1295240489493421 * "ADS"."Feature_2" + -0.19913861189266902 * "ADS"."Feature_3" + 0.3441443615368908 * "ADS"."Feature_4" + 0.12116383886012409 * "ADS"."Feature_5" + -0.68310404120246 * "ADS"."Feature_6" + -0.3593760458728341 * "ADS"."Feature_7" + -0.18729181188293567 * "ADS"."Feature_8" + -0.3269919448420042 * "ADS"."Feature_9" + -0.3828883712112617 * "ADS"."Feature_10" + -0.09720578005310303 * "ADS"."Feature_11" + -0.13916743203027215 * "ADS"."Feature_12" + -0.05208522161238246 * "ADS"."Feature_13" + -0.04344235305429895 * "ADS"."Feature_14" + -0.16855918551397284 * "ADS"."Feature_15" + -0.09710806277342389 * "ADS"."Feature_16" + -0.293327568483008 * "ADS"."Feature_17" + -0.17783265018313255 * "ADS"."Feature_18" + 0.3920102066948404 * "ADS"."Feature_19" + -1.82250639564 AS "Score_0", 0.07621258840428012 * "ADS"."Feature_0" + -0.46911865340278114 * "ADS"."Feature_1" + 0.1991767229034061 * "ADS"."Feature_2" + -0.030441205458916383 * "ADS"."Feature_3" + -0.08706163497709832 * "ADS"."Feature_4" + 0.2988215136215895 * "ADS"."Feature_5" + -0.00020745499928220414 * "ADS"."Feature_6" + 0.1861665333432848 * "ADS"."Feature_7" + -0.07707184281654104 * "ADS"."Feature_8" + -0.12791139525145492 * "ADS"."Feature_9" + 0.4112389977103348 * "ADS"."Feature_10" + 0.035788973689028385 * "ADS"."Feature_11" + 0.4679089210579336 * "ADS"."Feature_12" + -0.07579259730670719 * "ADS"."Feature_13" + -0.5060638940441301 * "ADS"."Feature_14" + 0.2597707147077787 * "ADS"."Feature_15" + -0.3556531005686123 * "ADS"."Feature_16" + 0.5648908941676364 * "ADS"."Feature_17" + -0.22383639622197044 * "ADS"."Feature_18" + 0.0314679363474991 * "ADS"."Feature_19" + -1.59191887622 AS "Score_1", -0.2720941818179481 * "ADS"."Feature_0" + 0.06206605523648704 * "ADS"."Feature_1" + -0.1072772226410024 * "ADS"."Feature_2" + 0.38021257070141196 * "ADS"."Feature_3" + -0.5475751783282637 * "ADS"."Feature_4" + 0.25078628156099675 * "ADS"."Feature_5" + 0.7256003003971842 * "ADS"."Feature_6" + -0.33285439253790217 * "ADS"."Feature_7" + -0.31096205454763726 * "ADS"."Feature_8" + 0.5758302830013157 * "ADS"."Feature_9" + 0.0733886549650062 * "ADS"."Feature_10" + -0.021744436332785166 * "ADS"."Feature_11" + -0.1656303014365395 * "ADS"."Feature_12" + 0.16542642602804122 * "ADS"."Feature_13" + 0.07157025092604316 * "ADS"."Feature_14" + -0.5909476349876842 * "ADS"."Feature_15" + 0.5249849312816448 * "ADS"."Feature_16" + 0.017709468931783386 * "ADS"."Feature_17" + -0.3678480976228458 * "ADS"."Feature_18" + -0.13243867831399364 * "ADS"."Feature_19" + -1.74572121056 AS "Score_2", 0.13316763363963371 * "ADS"."Feature_0" + 0.1960989010381942 * "ADS"."Feature_1" + -0.31894815376716695 * "ADS"."Feature_2" + -0.031669523747337135 * "ADS"."Feature_3" + 0.2414914226373668 * "ADS"."Feature_4" + -0.6064405835712057 * "ADS"."Feature_5" + 0.5736151509398331 * "ADS"."Feature_6" + 0.6199066037886256 * "ADS"."Feature_7" + 0.8961149826548253 * "ADS"."Feature_8" + -0.2808960589116978 * "ADS"."Feature_9" + -0.3881642061134697 * "ADS"."Feature_10" + -0.0017263298216548212 * "ADS"."Feature_11" + -0.06351978690553128 * "ADS"."Feature_12" + 0.2872781973710952 * "ADS"."Feature_13" + 0.0795109417846499 * "ADS"."Feature_14" + 0.745747524813789 * "ADS"."Feature_15" + -0.08499726555007181 * "ADS"."Feature_16" + -0.3153707434101707 * "ADS"."Feature_17" + 0.8663739011721875 * "ADS"."Feature_18" + -0.4935943289189725 * "ADS"."Feature_19" + -1.49646771198 AS "Score_3" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", (1.0 / (1.0 + exp(-linear_model_cte."Score_0"))) / (1.0 / (1.0 + exp(-linear_model_cte."Score_0")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_1")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_2")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_3"))) AS "Proba_0", (1.0 / (1.0 + exp(-linear_model_cte."Score_1"))) / (1.0 / (1.0 + exp(-linear_model_cte."Score_0")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_1")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_2")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_3"))) AS "Proba_1", (1.0 / (1.0 + exp(-linear_model_cte."Score_2"))) / (1.0 / (1.0 + exp(-linear_model_cte."Score_0")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_1")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_2")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_3"))) AS "Proba_2", (1.0 / (1.0 + exp(-linear_model_cte."Score_3"))) / (1.0 / (1.0 + exp(-linear_model_cte."Score_0")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_1")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_2")) + 1.0 / (1.0 + exp(-linear_model_cte."Score_3"))) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
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