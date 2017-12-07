-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN -0.00567174286917 ELSE [ADS].[Feature_0] END AS impter_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.134167702232 ELSE [ADS].[Feature_1] END AS impter_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.0892585678947 ELSE [ADS].[Feature_2] END AS impter_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.384228298847 ELSE [ADS].[Feature_3] END AS impter_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN -0.0452100743619 ELSE [ADS].[Feature_4] END AS impter_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN -0.0594091790622 ELSE [ADS].[Feature_5] END AS impter_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN -0.0888649434475 ELSE [ADS].[Feature_6] END AS impter_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.0583880587588 ELSE [ADS].[Feature_7] END AS impter_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.181142281827 ELSE [ADS].[Feature_8] END AS impter_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.152539344804 ELSE [ADS].[Feature_9] END AS impter_11 
FROM [FourClass_10] AS [ADS]), 
[ADS_sca_2_OUT] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].impter_2 AS FLOAT) - -0.00567174286917) / 1.32003573205 AS scaler_2, (CAST([ADS_imp_1_OUT].impter_3 AS FLOAT) - 0.134167702232) / 1.06628547419 AS scaler_3, (CAST([ADS_imp_1_OUT].impter_4 AS FLOAT) - 0.0892585678947) / 0.817533182272 AS scaler_4, (CAST([ADS_imp_1_OUT].impter_5 AS FLOAT) - 0.384228298847) / 1.18810200176 AS scaler_5, (CAST([ADS_imp_1_OUT].impter_6 AS FLOAT) - -0.0452100743619) / 1.10260874996 AS scaler_6, (CAST([ADS_imp_1_OUT].impter_7 AS FLOAT) - -0.0594091790622) / 0.945328473631 AS scaler_7, (CAST([ADS_imp_1_OUT].impter_8 AS FLOAT) - -0.0888649434475) / 1.54622933548 AS scaler_8, (CAST([ADS_imp_1_OUT].impter_9 AS FLOAT) - 0.0583880587588) / 1.58122474221 AS scaler_9, (CAST([ADS_imp_1_OUT].impter_10 AS FLOAT) - 0.181142281827) / 1.54401077758 AS scaler_10, (CAST([ADS_imp_1_OUT].impter_11 AS FLOAT) - 0.152539344804) / 1.41097230206 AS scaler_11 
FROM [ADS_imp_1_OUT]), 
linear_model_cte AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], 0.08767572775808047 * [ADS_sca_2_OUT].scaler_2 + -0.07528979732462017 * [ADS_sca_2_OUT].scaler_3 + 0.04323764523493305 * [ADS_sca_2_OUT].scaler_4 + -0.1423694671394509 * [ADS_sca_2_OUT].scaler_5 + -0.014591976652366802 * [ADS_sca_2_OUT].scaler_6 + 0.06994042894851733 * [ADS_sca_2_OUT].scaler_7 + 0.029144097932080427 * [ADS_sca_2_OUT].scaler_8 + 0.010011089813692711 * [ADS_sca_2_OUT].scaler_9 + -0.0149627176259709 * [ADS_sca_2_OUT].scaler_10 + 0.16562823995349873 * [ADS_sca_2_OUT].scaler_11 + -0.611940298507 AS [Score_0], 0.22310140846112686 * [ADS_sca_2_OUT].scaler_2 + -0.07301710819072137 * [ADS_sca_2_OUT].scaler_3 + -0.10251334906265967 * [ADS_sca_2_OUT].scaler_4 + 0.1789772607645056 * [ADS_sca_2_OUT].scaler_5 + -0.13515802467679305 * [ADS_sca_2_OUT].scaler_6 + 0.09552118291637683 * [ADS_sca_2_OUT].scaler_7 + 0.19248443976072438 * [ADS_sca_2_OUT].scaler_8 + -0.006239881732115834 * [ADS_sca_2_OUT].scaler_9 + -0.11169486431366252 * [ADS_sca_2_OUT].scaler_10 + 0.04330370405937176 * [ADS_sca_2_OUT].scaler_11 + -0.432835820896 AS [Score_1], -0.15215737767851614 * [ADS_sca_2_OUT].scaler_2 + 0.03327694629241635 * [ADS_sca_2_OUT].scaler_3 + 0.09428599401426001 * [ADS_sca_2_OUT].scaler_4 + -0.06341172166471139 * [ADS_sca_2_OUT].scaler_5 + 0.11261968716871365 * [ADS_sca_2_OUT].scaler_6 + 0.09149819347051677 * [ADS_sca_2_OUT].scaler_7 + -0.046353216926544656 * [ADS_sca_2_OUT].scaler_8 + -0.09821517226408859 * [ADS_sca_2_OUT].scaler_9 + 0.1201571226270713 * [ADS_sca_2_OUT].scaler_10 + -0.09722553113094427 * [ADS_sca_2_OUT].scaler_11 + -0.522388059701 AS [Score_2], -0.1586197585406912 * [ADS_sca_2_OUT].scaler_2 + 0.1150299592229252 * [ADS_sca_2_OUT].scaler_3 + -0.03501029018652698 * [ADS_sca_2_OUT].scaler_4 + 0.026803928039656914 * [ADS_sca_2_OUT].scaler_5 + 0.03713031416044616 * [ADS_sca_2_OUT].scaler_6 + -0.25695980533541096 * [ADS_sca_2_OUT].scaler_7 + -0.1752753207662587 * [ADS_sca_2_OUT].scaler_8 + 0.09444396418251426 * [ADS_sca_2_OUT].scaler_9 + 0.006500459312557827 * [ADS_sca_2_OUT].scaler_10 + -0.11170641288192856 * [ADS_sca_2_OUT].scaler_11 + -0.432835820896 AS [Score_3] 
FROM [ADS_sca_2_OUT]), 
orig_cte AS 
(SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Score_0] AS [Score_0], linear_model_cte.[Score_1] AS [Score_1], linear_model_cte.[Score_2] AS [Score_2], linear_model_cte.[Score_3] AS [Score_3], CAST(NULL AS FLOAT(53)) AS [Proba_0], CAST(NULL AS FLOAT(53)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [Proba_2], CAST(NULL AS FLOAT(53)) AS [Proba_3], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_2], CAST(NULL AS FLOAT(53)) AS [LogProba_3], CAST(NULL AS FLOAT(53)) AS [Decision] 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.[KEY] AS [KEY], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 3 AS class, orig_cte.[LogProba_3] AS [LogProba], orig_cte.[Proba_3] AS [Proba], orig_cte.[Score_3] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Score_3] AS [Score_3], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[Proba_3] AS [Proba_3], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[LogProba_3] AS [LogProba_3], orig_cte.[Decision] AS [Decision], (SELECT max(score_class_union.[LogProba]) AS max_1 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_LogProba], (SELECT max(score_class_union.[Proba]) AS max_2 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Proba], (SELECT max(score_class_union.[Score]) AS max_3 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Score] 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Score_3] AS [Score_3], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[Proba_3] AS [Proba_3], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[LogProba_3] AS [LogProba_3], score_max.[Decision] AS [Decision], score_max.[max_LogProba] AS [max_LogProba], score_max.[max_Proba] AS [max_Proba], score_max.[max_Score] AS [max_Score], (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.[max_LogProba] = score_class_union.[LogProba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_LogProba], (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.[max_Proba] = score_class_union.[Proba] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Proba], (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.[max_Score] = score_class_union.[Score] AND score_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Score] 
FROM score_max)
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Score_3] AS [Score_3], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], arg_max_cte.[Proba_3] AS [Proba_3], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], CASE WHEN (arg_max_cte.[Proba_3] IS NULL OR arg_max_cte.[Proba_3] > 0.0) THEN log(arg_max_cte.[Proba_3]) ELSE -1.79769313486231e+308 END AS [LogProba_3], arg_max_cte.[arg_max_Score] AS [Decision] 
FROM arg_max_cte