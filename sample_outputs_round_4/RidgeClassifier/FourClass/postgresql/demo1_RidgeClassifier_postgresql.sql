-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.13436553539785534 * "ADS"."Feature_0" + -0.09458165435060728 * "ADS"."Feature_1" + 0.15426728723300173 * "ADS"."Feature_2" + -0.07711020318521132 * "ADS"."Feature_3" + 0.06737265129488512 * "ADS"."Feature_4" + -0.0680901311533396 * "ADS"."Feature_5" + -0.0013170432643130044 * "ADS"."Feature_6" + -0.1319447704342044 * "ADS"."Feature_7" + -0.044585851205322595 * "ADS"."Feature_8" + -0.010945787797092316 * "ADS"."Feature_9" + -0.005833439429415055 * "ADS"."Feature_10" + -0.13235237527535132 * "ADS"."Feature_11" + 0.024566387216293898 * "ADS"."Feature_12" + 0.06730650692027454 * "ADS"."Feature_13" + 0.06813351205570281 * "ADS"."Feature_14" + -0.2357052904759287 * "ADS"."Feature_15" + 0.07116182344435466 * "ADS"."Feature_16" + 0.012082328074326854 * "ADS"."Feature_17" + -0.12228581044669497 * "ADS"."Feature_18" + -0.07317732754976171 * "ADS"."Feature_19" + -0.720210172407 AS "Score_0", -0.0771950276372903 * "ADS"."Feature_0" + 0.08277545926881177 * "ADS"."Feature_1" + -0.113244260778889 * "ADS"."Feature_2" + 0.05762716808617973 * "ADS"."Feature_3" + 0.08752417254159092 * "ADS"."Feature_4" + 0.0644849932043388 * "ADS"."Feature_5" + -0.03899905432198129 * "ADS"."Feature_6" + 0.04231634220375117 * "ADS"."Feature_7" + -0.021107158992917294 * "ADS"."Feature_8" + 0.029090942171023686 * "ADS"."Feature_9" + 0.010869404786077543 * "ADS"."Feature_10" + 0.10128716420795633 * "ADS"."Feature_11" + -0.10269646587434621 * "ADS"."Feature_12" + -0.04254833769024152 * "ADS"."Feature_13" + -0.05581490951209834 * "ADS"."Feature_14" + -0.2828433290943108 * "ADS"."Feature_15" + -0.0873036341633993 * "ADS"."Feature_16" + 0.03505119178753084 * "ADS"."Feature_17" + -0.03648610924981525 * "ADS"."Feature_18" + -0.07499614697229522 * "ADS"."Feature_19" + -0.304052786692 AS "Score_1", 0.14601166713500072 * "ADS"."Feature_0" + -0.10697465601456177 * "ADS"."Feature_1" + -0.07061284706344659 * "ADS"."Feature_2" + 0.012781576887790021 * "ADS"."Feature_3" + -0.022972347931583682 * "ADS"."Feature_4" + -0.1453892683694323 * "ADS"."Feature_5" + 0.07427723311145898 * "ADS"."Feature_6" + 0.12328439097991353 * "ADS"."Feature_7" + 0.014294708351680672 * "ADS"."Feature_8" + 0.015333396562154353 * "ADS"."Feature_9" + -0.015144261962962613 * "ADS"."Feature_10" + 0.11047533451517434 * "ADS"."Feature_11" + 0.04733554241202254 * "ADS"."Feature_12" + -0.07659213329426427 * "ADS"."Feature_13" + -0.017489604150209066 * "ADS"."Feature_14" + 0.2411786605251838 * "ADS"."Feature_15" + 0.03385919160330512 * "ADS"."Feature_16" + -0.11896727147195856 * "ADS"."Feature_17" + 0.11483518182662492 * "ADS"."Feature_18" + 0.04186526559790356 * "ADS"."Feature_19" + -0.733992742316 AS "Score_2", -0.20318217489556992 * "ADS"."Feature_0" + 0.11878085109635408 * "ADS"."Feature_1" + 0.029589820609333958 * "ADS"."Feature_2" + 0.006701458211241621 * "ADS"."Feature_3" + -0.13192447590489237 * "ADS"."Feature_4" + 0.1489944063184301 * "ADS"."Feature_5" + -0.03396113552516467 * "ADS"."Feature_6" + -0.0336559627494602 * "ADS"."Feature_7" + 0.05139830184655926 * "ADS"."Feature_8" + -0.03347855093608569 * "ADS"."Feature_9" + 0.010108296606300195 * "ADS"."Feature_10" + -0.07941012344777913 * "ADS"."Feature_11" + 0.030794536246029694 * "ADS"."Feature_12" + 0.05183396406423126 * "ADS"."Feature_13" + 0.005171001606604581 * "ADS"."Feature_14" + 0.2773699590450545 * "ADS"."Feature_15" + -0.017717380884260496 * "ADS"."Feature_16" + 0.0718337516101009 * "ADS"."Feature_17" + 0.04393673786988545 * "ADS"."Feature_18" + 0.10630820892415592 * "ADS"."Feature_19" + -0.241744298585 AS "Score_3" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT(53)) AS "Proba_0", CAST(NULL AS FLOAT(53)) AS "Proba_1", CAST(NULL AS FLOAT(53)) AS "Proba_2", CAST(NULL AS FLOAT(53)) AS "Proba_3", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "LogProba_3", CAST(NULL AS FLOAT(53)) AS "Decision" 
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