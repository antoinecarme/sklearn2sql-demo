-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT [ADS].[KEY] AS [KEY], 4.907857637666901 * [ADS].[Feature_0] + 33.13929778994937 * [ADS].[Feature_1] + 77.23747504778761 * [ADS].[Feature_2] + -37.98891273547019 * [ADS].[Feature_3] + 2.6400780152460332 * [ADS].[Feature_4] + -2.4124083245792214 * [ADS].[Feature_5] + 32.32161896669079 * [ADS].[Feature_6] + -56.98657289341954 * [ADS].[Feature_7] + -27.396297635936303 * [ADS].[Feature_8] + -47.67213555246227 * [ADS].[Feature_9] + -121.878352615 AS [Score_0], -2.9282228357764217 * [ADS].[Feature_0] + -60.24287176956674 * [ADS].[Feature_1] + -22.684851517838506 * [ADS].[Feature_2] + 18.473440545887026 * [ADS].[Feature_3] + -9.964909647690478 * [ADS].[Feature_4] + -28.462383233559986 * [ADS].[Feature_5] + -4.7748496932598545 * [ADS].[Feature_6] + 20.390873451375533 * [ADS].[Feature_7] + 22.90860767100919 * [ADS].[Feature_8] + 3.749028238093859 * [ADS].[Feature_9] + -162.505907914 AS [Score_1], -29.509698759017155 * [ADS].[Feature_0] + 82.47050720703373 * [ADS].[Feature_1] + -28.999323175926836 * [ADS].[Feature_2] + -12.545050539701634 * [ADS].[Feature_3] + -8.563813917395661 * [ADS].[Feature_4] + 9.199599659544223 * [ADS].[Feature_5] + -60.61662502219011 * [ADS].[Feature_6] + 9.151112884659996 * [ADS].[Feature_7] + -1.2348168054819748 * [ADS].[Feature_8] + -11.216672257012881 * [ADS].[Feature_9] + -131.064853624 AS [Score_2], 21.29300340345884 * [ADS].[Feature_0] + -61.268568614436475 * [ADS].[Feature_1] + -23.705955396770747 * [ADS].[Feature_2] + 27.579893371508795 * [ADS].[Feature_3] + 28.62714352757676 * [ADS].[Feature_4] + 32.45959963417767 * [ADS].[Feature_5] + 5.526803166196839 * [ADS].[Feature_6] + 34.98502177097961 * [ADS].[Feature_7] + -16.476836471088433 * [ADS].[Feature_8] + 33.09580913131776 * [ADS].[Feature_9] + -57.8989194619 AS [Score_3] 
FROM [FourClass_10] AS [ADS]), 
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