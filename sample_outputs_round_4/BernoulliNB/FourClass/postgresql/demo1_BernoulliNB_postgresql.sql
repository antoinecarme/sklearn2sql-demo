-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "RawScores" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "Proba_0", -1.38629436112 + "ADS"."Feature_0" * -0.587786664902 + (1 - "ADS"."Feature_0") * -0.810930216216 + "ADS"."Feature_1" * -0.897941593206 + (1 - "ADS"."Feature_1") * -0.523248143765 + "ADS"."Feature_2" * -0.30010459245 + (1 - "ADS"."Feature_2") * -1.34992671695 + "ADS"."Feature_3" * -0.523248143765 + (1 - "ADS"."Feature_3") * -0.897941593206 + "ADS"."Feature_4" * -0.810930216216 + (1 - "ADS"."Feature_4") * -0.587786664902 + "ADS"."Feature_5" * -0.99325177301 + (1 - "ADS"."Feature_5") * -0.462623521948 + "ADS"."Feature_6" * -0.462623521948 + (1 - "ADS"."Feature_6") * -0.99325177301 + "ADS"."Feature_7" * -0.523248143765 + (1 - "ADS"."Feature_7") * -0.897941593206 + "ADS"."Feature_8" * -0.251314428281 + (1 - "ADS"."Feature_8") * -1.50407739678 + "ADS"."Feature_9" * -0.117783035656 + (1 - "ADS"."Feature_9") * -2.19722457734 + "ADS"."Feature_10" * -0.204794412646 + (1 - "ADS"."Feature_10") * -1.68639895357 + "ADS"."Feature_11" * -0.405465108108 + (1 - "ADS"."Feature_11") * -1.09861228867 + "ADS"."Feature_12" * -0.810930216216 + (1 - "ADS"."Feature_12") * -0.587786664902 + "ADS"."Feature_13" * -0.897941593206 + (1 - "ADS"."Feature_13") * -0.523248143765 + "ADS"."Feature_14" * -0.523248143765 + (1 - "ADS"."Feature_14") * -0.897941593206 + "ADS"."Feature_15" * -0.810930216216 + (1 - "ADS"."Feature_15") * -0.587786664902 + "ADS"."Feature_16" * -0.656779536389 + (1 - "ADS"."Feature_16") * -0.730887508543 + "ADS"."Feature_17" * -0.204794412646 + (1 - "ADS"."Feature_17") * -1.68639895357 + "ADS"."Feature_18" * -0.897941593206 + (1 - "ADS"."Feature_18") * -0.523248143765 + "ADS"."Feature_19" * -0.523248143765 + (1 - "ADS"."Feature_19") * -0.897941593206 AS "Score_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "Proba_1", -1.38629436112 + "ADS"."Feature_0" * -0.523248143765 + (1 - "ADS"."Feature_0") * -0.897941593206 + "ADS"."Feature_1" * -0.730887508543 + (1 - "ADS"."Feature_1") * -0.656779536389 + "ADS"."Feature_2" * -1.09861228867 + (1 - "ADS"."Feature_2") * -0.405465108108 + "ADS"."Feature_3" * -0.462623521948 + (1 - "ADS"."Feature_3") * -0.99325177301 + "ADS"."Feature_4" * -0.462623521948 + (1 - "ADS"."Feature_4") * -0.99325177301 + "ADS"."Feature_5" * -0.351397886838 + (1 - "ADS"."Feature_5") * -1.21639532432 + "ADS"."Feature_6" * -0.730887508543 + (1 - "ADS"."Feature_6") * -0.656779536389 + "ADS"."Feature_7" * -0.897941593206 + (1 - "ADS"."Feature_7") * -0.523248143765 + "ADS"."Feature_8" * -0.587786664902 + (1 - "ADS"."Feature_8") * -0.810930216216 + "ADS"."Feature_9" * -0.730887508543 + (1 - "ADS"."Feature_9") * -0.656779536389 + "ADS"."Feature_10" * -0.656779536389 + (1 - "ADS"."Feature_10") * -0.730887508543 + "ADS"."Feature_11" * -0.30010459245 + (1 - "ADS"."Feature_11") * -1.34992671695 + "ADS"."Feature_12" * -0.730887508543 + (1 - "ADS"."Feature_12") * -0.656779536389 + "ADS"."Feature_13" * -0.730887508543 + (1 - "ADS"."Feature_13") * -0.656779536389 + "ADS"."Feature_14" * -0.656779536389 + (1 - "ADS"."Feature_14") * -0.730887508543 + "ADS"."Feature_15" * -0.730887508543 + (1 - "ADS"."Feature_15") * -0.656779536389 + "ADS"."Feature_16" * -0.351397886838 + (1 - "ADS"."Feature_16") * -1.21639532432 + "ADS"."Feature_17" * -0.251314428281 + (1 - "ADS"."Feature_17") * -1.50407739678 + "ADS"."Feature_18" * -0.730887508543 + (1 - "ADS"."Feature_18") * -0.656779536389 + "ADS"."Feature_19" * -0.810930216216 + (1 - "ADS"."Feature_19") * -0.587786664902 AS "Score_1", CAST(NULL AS FLOAT(53)) AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "Proba_2", -1.38629436112 + "ADS"."Feature_0" * -0.656779536389 + (1 - "ADS"."Feature_0") * -0.730887508543 + "ADS"."Feature_1" * -0.523248143765 + (1 - "ADS"."Feature_1") * -0.897941593206 + "ADS"."Feature_2" * -0.523248143765 + (1 - "ADS"."Feature_2") * -0.897941593206 + "ADS"."Feature_3" * -0.462623521948 + (1 - "ADS"."Feature_3") * -0.99325177301 + "ADS"."Feature_4" * -0.730887508543 + (1 - "ADS"."Feature_4") * -0.656779536389 + "ADS"."Feature_5" * -0.810930216216 + (1 - "ADS"."Feature_5") * -0.587786664902 + "ADS"."Feature_6" * -0.587786664902 + (1 - "ADS"."Feature_6") * -0.810930216216 + "ADS"."Feature_7" * -0.656779536389 + (1 - "ADS"."Feature_7") * -0.730887508543 + "ADS"."Feature_8" * -0.117783035656 + (1 - "ADS"."Feature_8") * -2.19722457734 + "ADS"."Feature_9" * -1.21639532432 + (1 - "ADS"."Feature_9") * -0.351397886838 + "ADS"."Feature_10" * -0.656779536389 + (1 - "ADS"."Feature_10") * -0.730887508543 + "ADS"."Feature_11" * -1.34992671695 + (1 - "ADS"."Feature_11") * -0.30010459245 + "ADS"."Feature_12" * -0.656779536389 + (1 - "ADS"."Feature_12") * -0.730887508543 + "ADS"."Feature_13" * -1.09861228867 + (1 - "ADS"."Feature_13") * -0.405465108108 + "ADS"."Feature_14" * -0.99325177301 + (1 - "ADS"."Feature_14") * -0.462623521948 + "ADS"."Feature_15" * -0.656779536389 + (1 - "ADS"."Feature_15") * -0.730887508543 + "ADS"."Feature_16" * -0.99325177301 + (1 - "ADS"."Feature_16") * -0.462623521948 + "ADS"."Feature_17" * -0.810930216216 + (1 - "ADS"."Feature_17") * -0.587786664902 + "ADS"."Feature_18" * -0.810930216216 + (1 - "ADS"."Feature_18") * -0.587786664902 + "ADS"."Feature_19" * -0.810930216216 + (1 - "ADS"."Feature_19") * -0.587786664902 AS "Score_2", CAST(NULL AS FLOAT(53)) AS "LogProba_3", CAST(NULL AS FLOAT(53)) AS "Proba_3", -1.38629436112 + "ADS"."Feature_0" * -0.730887508543 + (1 - "ADS"."Feature_0") * -0.656779536389 + "ADS"."Feature_1" * -0.587786664902 + (1 - "ADS"."Feature_1") * -0.810930216216 + "ADS"."Feature_2" * -0.730887508543 + (1 - "ADS"."Feature_2") * -0.656779536389 + "ADS"."Feature_3" * -0.656779536389 + (1 - "ADS"."Feature_3") * -0.730887508543 + "ADS"."Feature_4" * -0.523248143765 + (1 - "ADS"."Feature_4") * -0.897941593206 + "ADS"."Feature_5" * -0.523248143765 + (1 - "ADS"."Feature_5") * -0.897941593206 + "ADS"."Feature_6" * -0.351397886838 + (1 - "ADS"."Feature_6") * -1.21639532432 + "ADS"."Feature_7" * -0.810930216216 + (1 - "ADS"."Feature_7") * -0.587786664902 + "ADS"."Feature_8" * -2.60268968544 + (1 - "ADS"."Feature_8") * -0.0769610411361 + "ADS"."Feature_9" * -0.204794412646 + (1 - "ADS"."Feature_9") * -1.68639895357 + "ADS"."Feature_10" * -0.897941593206 + (1 - "ADS"."Feature_10") * -0.523248143765 + "ADS"."Feature_11" * -0.0769610411361 + (1 - "ADS"."Feature_11") * -2.60268968544 + "ADS"."Feature_12" * -0.587786664902 + (1 - "ADS"."Feature_12") * -0.810930216216 + "ADS"."Feature_13" * -0.587786664902 + (1 - "ADS"."Feature_13") * -0.810930216216 + "ADS"."Feature_14" * -0.656779536389 + (1 - "ADS"."Feature_14") * -0.730887508543 + "ADS"."Feature_15" * -1.21639532432 + (1 - "ADS"."Feature_15") * -0.351397886838 + "ADS"."Feature_16" * -0.99325177301 + (1 - "ADS"."Feature_16") * -0.462623521948 + "ADS"."Feature_17" * -0.656779536389 + (1 - "ADS"."Feature_17") * -0.730887508543 + "ADS"."Feature_18" * -0.897941593206 + (1 - "ADS"."Feature_18") * -0.523248143765 + "ADS"."Feature_19" * -0.656779536389 + (1 - "ADS"."Feature_19") * -0.730887508543 AS "Score_3" 
FROM "INPUT_DATA" AS "ADS"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Score_2" AS "Score_2", "RawScores"."Score_3" AS "Score_3", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."Proba_2" AS "Proba_2", "RawScores"."Proba_3" AS "Proba_3", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", "RawScores"."LogProba_2" AS "LogProba_2", "RawScores"."LogProba_3" AS "LogProba_3", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "RawScores"), 
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
score_soft_max_comp AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", exp(CASE WHEN (score_max."Score_0" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_0" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_0", exp(CASE WHEN (score_max."Score_1" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_1" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_1", exp(CASE WHEN (score_max."Score_2" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_2" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_2", exp(CASE WHEN (score_max."Score_3" - score_max."max_Score" >= -709.782712893) THEN score_max."Score_3" - score_max."max_Score" ELSE -709.782712893 END) AS "exp_delta_Score_3" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."LogProba" AS "LogProba", soft_scu."Proba" AS "Proba", soft_scu."Score" AS "Score", soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_comp."KEY" AS "KEY", 0 AS class, score_soft_max_comp."LogProba_0" AS "LogProba", score_soft_max_comp."Proba_0" AS "Proba", score_soft_max_comp."Score_0" AS "Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 1 AS class, score_soft_max_comp."LogProba_1" AS "LogProba", score_soft_max_comp."Proba_1" AS "Proba", score_soft_max_comp."Score_1" AS "Score", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 2 AS class, score_soft_max_comp."LogProba_2" AS "LogProba", score_soft_max_comp."Proba_2" AS "Proba", score_soft_max_comp."Score_2" AS "Score", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp."KEY" AS "KEY", 3 AS class, score_soft_max_comp."LogProba_3" AS "LogProba", score_soft_max_comp."Proba_3" AS "Proba", score_soft_max_comp."Score_3" AS "Score", score_soft_max_comp."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp."KEY" AS "KEY", score_soft_max_comp."Score_0" AS "Score_0", score_soft_max_comp."Score_1" AS "Score_1", score_soft_max_comp."Score_2" AS "Score_2", score_soft_max_comp."Score_3" AS "Score_3", score_soft_max_comp."Proba_0" AS "Proba_0", score_soft_max_comp."Proba_1" AS "Proba_1", score_soft_max_comp."Proba_2" AS "Proba_2", score_soft_max_comp."Proba_3" AS "Proba_3", score_soft_max_comp."LogProba_0" AS "LogProba_0", score_soft_max_comp."LogProba_1" AS "LogProba_1", score_soft_max_comp."LogProba_2" AS "LogProba_2", score_soft_max_comp."LogProba_3" AS "LogProba_3", score_soft_max_comp."Decision" AS "Decision", score_soft_max_comp."max_LogProba" AS "max_LogProba", score_soft_max_comp."max_Proba" AS "max_Proba", score_soft_max_comp."max_Score" AS "max_Score", score_soft_max_comp."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_comp."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_comp."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_comp."exp_delta_Score_3" AS "exp_delta_Score_3", (SELECT sum(score_class_union_soft."exp_delta_Score") AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp."KEY" = score_class_union_soft."KEY") AS "sum_ExpDeltaScore" 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max."max_LogProba" = score_class_union."LogProba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max."max_Proba" = score_class_union."Proba" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max."max_Score" = score_class_union."Score" AND score_soft_max."KEY" = score_class_union."KEY") AS "arg_max_Score", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3" 
FROM score_soft_max)
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "Score_1", CAST(NULL AS FLOAT(53)) AS "Score_2", CAST(NULL AS FLOAT(53)) AS "Score_3", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte