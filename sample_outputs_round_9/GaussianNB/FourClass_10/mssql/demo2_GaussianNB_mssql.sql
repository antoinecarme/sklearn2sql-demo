-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [RawScores] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [LogProba_0], CAST(NULL AS FLOAT) AS [Proba_0], -1.42711635564 + (-0.5 * 2.75653173809 - (0.5 * (CAST([ADS].[Feature_0] AS FLOAT) - 0.477749642488) * (CAST([ADS].[Feature_0] AS FLOAT) - 0.477749642488)) / 2.5059168403) + (-0.5 * 1.23699296994 - (0.5 * (CAST([ADS].[Feature_1] AS FLOAT) - -0.135507612717) * (CAST([ADS].[Feature_1] AS FLOAT) - -0.135507612717)) / 0.548326648082) + (-0.5 * 1.60315001888 - (0.5 * (CAST([ADS].[Feature_2] AS FLOAT) - 0.0507644587825) * (CAST([ADS].[Feature_2] AS FLOAT) - 0.0507644587825)) / 0.790786667352) + (-0.5 * 1.8806283633 - (0.5 * (CAST([ADS].[Feature_3] AS FLOAT) - -0.201672957396) * (CAST([ADS].[Feature_3] AS FLOAT) - -0.201672957396)) / 1.04367829653) + (-0.5 * 1.02623714147 - (0.5 * (CAST([ADS].[Feature_4] AS FLOAT) - 0.748635879543) * (CAST([ADS].[Feature_4] AS FLOAT) - 0.748635879543)) / 0.444129130249) + (-0.5 * -0.234501342729 - (0.5 * (CAST([ADS].[Feature_5] AS FLOAT) - -0.250363068027) * (CAST([ADS].[Feature_5] AS FLOAT) - -0.250363068027)) / 0.125886016912) + (-0.5 * 0.692580794964 - (0.5 * (CAST([ADS].[Feature_6] AS FLOAT) - 0.111579778922) * (CAST([ADS].[Feature_6] AS FLOAT) - 0.111579778922)) / 0.318129651095) + (-0.5 * 2.9921072311 - (0.5 * (CAST([ADS].[Feature_7] AS FLOAT) - 0.131509578195) * (CAST([ADS].[Feature_7] AS FLOAT) - 0.131509578195)) / 3.17158088253) + (-0.5 * 1.66642643253 - (0.5 * (CAST([ADS].[Feature_8] AS FLOAT) - 0.667640442525) * (CAST([ADS].[Feature_8] AS FLOAT) - 0.667640442525)) / 0.84244185508) + (-0.5 * 2.27646082976 - (0.5 * (CAST([ADS].[Feature_9] AS FLOAT) - 0.127860830089) * (CAST([ADS].[Feature_9] AS FLOAT) - 0.127860830089)) / 1.55050977406) AS [Score_0], CAST(NULL AS FLOAT) AS [LogProba_1], CAST(NULL AS FLOAT) AS [Proba_1], -1.60943791243 + (-0.5 * 1.78685054975 - (0.5 * (CAST([ADS].[Feature_0] AS FLOAT) - 0.203595910087) * (CAST([ADS].[Feature_0] AS FLOAT) - 0.203595910087)) / 0.950253472649) + (-0.5 * 2.24906246352 - (0.5 * (CAST([ADS].[Feature_1] AS FLOAT) - 0.775620087057) * (CAST([ADS].[Feature_1] AS FLOAT) - 0.775620087057)) / 1.50860502164) + (-0.5 * 2.47484948707 - (0.5 * (CAST([ADS].[Feature_2] AS FLOAT) - 1.4814133011) * (CAST([ADS].[Feature_2] AS FLOAT) - 1.4814133011)) / 1.89074781601) + (-0.5 * 2.77953018835 - (0.5 * (CAST([ADS].[Feature_3] AS FLOAT) - 2.75469007916) * (CAST([ADS].[Feature_3] AS FLOAT) - 2.75469007916)) / 2.56421687968) + (-0.5 * 2.265103917 - (0.5 * (CAST([ADS].[Feature_4] AS FLOAT) - -0.730662401173) * (CAST([ADS].[Feature_4] AS FLOAT) - -0.730662401173)) / 1.53300038432) + (-0.5 * 1.72237963494 - (0.5 * (CAST([ADS].[Feature_5] AS FLOAT) - -0.114940120287) * (CAST([ADS].[Feature_5] AS FLOAT) - -0.114940120287)) / 0.890922860601) + (-0.5 * 1.24521347503 - (0.5 * (CAST([ADS].[Feature_6] AS FLOAT) - -1.22427289466) * (CAST([ADS].[Feature_6] AS FLOAT) - -1.22427289466)) / 0.552852748009) + (-0.5 * 2.30605876869 - (0.5 * (CAST([ADS].[Feature_7] AS FLOAT) - 0.890065384379) * (CAST([ADS].[Feature_7] AS FLOAT) - 0.890065384379)) / 1.59708757078) + (-0.5 * 2.0985820367 - (0.5 * (CAST([ADS].[Feature_8] AS FLOAT) - 0.0261923172937) * (CAST([ADS].[Feature_8] AS FLOAT) - 0.0261923172937)) / 1.2978447062) + (-0.5 * 2.01929296438 - (0.5 * (CAST([ADS].[Feature_9] AS FLOAT) - -0.143849078822) * (CAST([ADS].[Feature_9] AS FLOAT) - -0.143849078822)) / 1.19891370139) AS [Score_1], CAST(NULL AS FLOAT) AS [LogProba_2], CAST(NULL AS FLOAT) AS [Proba_2], -1.42711635564 + (-0.5 * 1.08035832739 - (0.5 * (CAST([ADS].[Feature_0] AS FLOAT) - -0.419948803623) * (CAST([ADS].[Feature_0] AS FLOAT) - -0.419948803623)) / 0.468828270287) + (-0.5 * 0.814689031606 - (0.5 * (CAST([ADS].[Feature_1] AS FLOAT) - -0.662830217447) * (CAST([ADS].[Feature_1] AS FLOAT) - -0.662830217447)) / 0.359447181473) + (-0.5 * 1.97244002854 - (0.5 * (CAST([ADS].[Feature_2] AS FLOAT) - -1.58413770025) * (CAST([ADS].[Feature_2] AS FLOAT) - -1.58413770025)) / 1.14403668772) + (-0.5 * 1.28083750236 - (0.5 * (CAST([ADS].[Feature_3] AS FLOAT) - -2.70555780766) * (CAST([ADS].[Feature_3] AS FLOAT) - -2.70555780766)) / 0.572902597261) + (-0.5 * 2.33880246878 - (0.5 * (CAST([ADS].[Feature_4] AS FLOAT) - -0.683647663386) * (CAST([ADS].[Feature_4] AS FLOAT) - -0.683647663386)) / 1.65024770745) + (-0.5 * 1.49705887719 - (0.5 * (CAST([ADS].[Feature_5] AS FLOAT) - 0.266654579501) * (CAST([ADS].[Feature_5] AS FLOAT) - 0.266654579501)) / 0.711188198133) + (-0.5 * 0.372691818556 - (0.5 * (CAST([ADS].[Feature_6] AS FLOAT) - 1.16222570946) * (CAST([ADS].[Feature_6] AS FLOAT) - 1.16222570946)) / 0.23103518874) + (-0.5 * 3.03634752143 - (0.5 * (CAST([ADS].[Feature_7] AS FLOAT) - -1.49600481057) * (CAST([ADS].[Feature_7] AS FLOAT) - -1.49600481057)) / 3.3150425363) + (-0.5 * -0.117765681648 - (0.5 * (CAST([ADS].[Feature_8] AS FLOAT) - 0.389564431679) * (CAST([ADS].[Feature_8] AS FLOAT) - 0.389564431679)) / 0.141473515637) + (-0.5 * 0.691952977007 - (0.5 * (CAST([ADS].[Feature_9] AS FLOAT) - 0.463698740338) * (CAST([ADS].[Feature_9] AS FLOAT) - 0.463698740338)) / 0.317929986271) AS [Score_2], CAST(NULL AS FLOAT) AS [LogProba_3], CAST(NULL AS FLOAT) AS [Proba_3], -1.13943428319 + (-0.5 * 0.28687753729 - (0.5 * (CAST([ADS].[Feature_0] AS FLOAT) - -0.222661033196) * (CAST([ADS].[Feature_0] AS FLOAT) - -0.222661033196)) / 0.212035931785) + (-0.5 * 1.73913850504 - (0.5 * (CAST([ADS].[Feature_1] AS FLOAT) - 1.72734367389) * (CAST([ADS].[Feature_1] AS FLOAT) - 1.72734367389)) / 0.905979535111) + (-0.5 * 2.31376496569 - (0.5 * (CAST([ADS].[Feature_2] AS FLOAT) - 0.367442967058) * (CAST([ADS].[Feature_2] AS FLOAT) - 0.367442967058)) / 1.60944258617) + (-0.5 * 2.7514769853 - (0.5 * (CAST([ADS].[Feature_3] AS FLOAT) - 1.68960506477) * (CAST([ADS].[Feature_3] AS FLOAT) - 1.68960506477)) / 2.49328201002) + (-0.5 * 0.96355322063 - (0.5 * (CAST([ADS].[Feature_4] AS FLOAT) - -1.09421288351) * (CAST([ADS].[Feature_4] AS FLOAT) - -1.09421288351)) / 0.417143978005) + (-0.5 * 1.71954266709 - (0.5 * (CAST([ADS].[Feature_5] AS FLOAT) - -0.176170360053) * (CAST([ADS].[Feature_5] AS FLOAT) - -0.176170360053)) / 0.88839892294) + (-0.5 * 1.11442187977 - (0.5 * (CAST([ADS].[Feature_6] AS FLOAT) - -0.553128928397) * (CAST([ADS].[Feature_6] AS FLOAT) - -0.553128928397)) / 0.485073338225) + (-0.5 * 2.41461399917 - (0.5 * (CAST([ADS].[Feature_7] AS FLOAT) - -0.774147651723) * (CAST([ADS].[Feature_7] AS FLOAT) - -0.774147651723)) / 1.78021996544) + (-0.5 * 1.7872397096 - (0.5 * (CAST([ADS].[Feature_8] AS FLOAT) - 0.0945487010576) * (CAST([ADS].[Feature_8] AS FLOAT) - 0.0945487010576)) / 0.950623345117) + (-0.5 * 1.39238312859 - (0.5 * (CAST([ADS].[Feature_9] AS FLOAT) - -0.130039246945) * (CAST([ADS].[Feature_9] AS FLOAT) - -0.130039246945)) / 0.640507826847) AS [Score_3] 
FROM [FourClass_10] AS [ADS]), 
orig_cte AS 
(SELECT [RawScores].[KEY] AS [KEY], [RawScores].[Score_0] AS [Score_0], [RawScores].[Score_1] AS [Score_1], [RawScores].[Score_2] AS [Score_2], [RawScores].[Score_3] AS [Score_3], [RawScores].[Proba_0] AS [Proba_0], [RawScores].[Proba_1] AS [Proba_1], [RawScores].[Proba_2] AS [Proba_2], [RawScores].[Proba_3] AS [Proba_3], [RawScores].[LogProba_0] AS [LogProba_0], [RawScores].[LogProba_1] AS [LogProba_1], [RawScores].[LogProba_2] AS [LogProba_2], [RawScores].[LogProba_3] AS [LogProba_3], CAST(NULL AS INTEGER) AS [Decision], CAST(NULL AS FLOAT) AS [DecisionProba] 
FROM [RawScores]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
score_soft_max_deltas AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], exp(score_max.[Score_0] - score_max.[max_Score]) AS [exp_delta_Score_0], exp(score_max.[Score_1] - score_max.[max_Score]) AS [exp_delta_Score_1], exp(score_max.[Score_2] - score_max.[max_Score]) AS [exp_delta_Score_2], exp(score_max.[Score_3] - score_max.[max_Score]) AS [exp_delta_Score_3] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_deltas.[KEY] AS [KEY], 0 AS class, score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 1 AS class, score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 2 AS class, score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 3 AS class, score_soft_max_deltas.[exp_delta_Score_3] AS [exp_delta_Score] 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.[KEY] AS [KEY], score_soft_max_deltas.[Score_0] AS [Score_0], score_soft_max_deltas.[Score_1] AS [Score_1], score_soft_max_deltas.[Score_2] AS [Score_2], score_soft_max_deltas.[Score_3] AS [Score_3], score_soft_max_deltas.[Proba_0] AS [Proba_0], score_soft_max_deltas.[Proba_1] AS [Proba_1], score_soft_max_deltas.[Proba_2] AS [Proba_2], score_soft_max_deltas.[Proba_3] AS [Proba_3], score_soft_max_deltas.[LogProba_0] AS [LogProba_0], score_soft_max_deltas.[LogProba_1] AS [LogProba_1], score_soft_max_deltas.[LogProba_2] AS [LogProba_2], score_soft_max_deltas.[LogProba_3] AS [LogProba_3], score_soft_max_deltas.[Decision] AS [Decision], score_soft_max_deltas.[DecisionProba] AS [DecisionProba], score_soft_max_deltas.[KEY_m] AS [KEY_m], score_soft_max_deltas.[max_Score] AS [max_Score], score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max_deltas.[exp_delta_Score_3] AS [exp_delta_Score_3], sum_exp_t.[KEY_sum] AS [KEY_sum], sum_exp_t.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.[KEY] AS [KEY_sum], sum(score_class_union_soft.[exp_delta_Score]) AS [sum_ExpDeltaScore] 
FROM score_class_union_soft GROUP BY score_class_union_soft.[KEY]) AS sum_exp_t ON score_soft_max_deltas.[KEY] = sum_exp_t.[KEY_sum]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Score_3] AS [Score_3], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[Proba_3] AS [Proba_3], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[LogProba_3] AS [LogProba_3], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[exp_delta_Score_3] AS [exp_delta_Score_3], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.[KEY_u] = score_soft_max.[KEY]), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Score_3] AS [Score_3], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[Proba_3] AS [Proba_3], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[LogProba_3] AS [LogProba_3], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[exp_delta_Score_3] AS [exp_delta_Score_3], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score], soft_max_comp.[KEY_softmax] AS [KEY_softmax], soft_max_comp.[SoftProba_0] AS [SoftProba_0], soft_max_comp.[SoftProba_1] AS [SoftProba_1], soft_max_comp.[SoftProba_2] AS [SoftProba_2], soft_max_comp.[SoftProba_3] AS [SoftProba_3] 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[max_Score] <= union_with_max.[Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_soft_max.[KEY] = [arg_max_t_Score].[KEY_Score] LEFT OUTER JOIN (SELECT score_soft_max.[KEY] AS [KEY_softmax], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1], score_soft_max.[exp_delta_Score_2] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_2], score_soft_max.[exp_delta_Score_3] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_3] 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.[KEY_softmax] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT) AS [Score_0], CAST(NULL AS FLOAT) AS [Score_1], CAST(NULL AS FLOAT) AS [Score_2], CAST(NULL AS FLOAT) AS [Score_3], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], arg_max_cte.[SoftProba_2] AS [Proba_2], arg_max_cte.[SoftProba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[SoftProba_2] IS NULL OR arg_max_cte.[SoftProba_2] > 0.0) THEN log(arg_max_cte.[SoftProba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[SoftProba_3] IS NULL OR arg_max_cte.[SoftProba_3] > 0.0) THEN log(arg_max_cte.[SoftProba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[SoftProba_0] <= CASE WHEN (arg_max_cte.[SoftProba_1] <= CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END) THEN CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END ELSE arg_max_cte.[SoftProba_1] END) THEN CASE WHEN (arg_max_cte.[SoftProba_1] <= CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END) THEN CASE WHEN (arg_max_cte.[SoftProba_2] <= arg_max_cte.[SoftProba_3]) THEN arg_max_cte.[SoftProba_3] ELSE arg_max_cte.[SoftProba_2] END ELSE arg_max_cte.[SoftProba_1] END ELSE arg_max_cte.[SoftProba_0] END AS [DecisionProba] 
FROM arg_max_cte