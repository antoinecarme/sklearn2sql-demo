-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT [ADS].[KEY] AS [KEY], rand() AS uniform 
FROM digits AS [ADS]), 
multinomial_cte AS 
(SELECT random_number_cte.[KEY] AS [KEY], CASE WHEN (random_number_cte.uniform <= 0.09603340292275574) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.19832985386221294) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.3013221990257481) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 0.4022268615170494) THEN 3 ELSE CASE WHEN (random_number_cte.uniform <= 0.5073068893528183) THEN 4 ELSE CASE WHEN (random_number_cte.uniform <= 0.6075156576200417) THEN 5 ELSE CASE WHEN (random_number_cte.uniform <= 0.7063326374391092) THEN 6 ELSE CASE WHEN (random_number_cte.uniform <= 0.8037578288100209) THEN 7 ELSE CASE WHEN (random_number_cte.uniform <= 0.8977035490605428) THEN 8 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 9 END END END END END END END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte.[KEY] AS [KEY], 0.09603340292275574 AS [Proba_0], CASE WHEN (0.09603340292275574 IS NULL OR 0.09603340292275574 > 0.0) THEN log(0.09603340292275574) ELSE -1.79769313486231e+308 END AS [LogProba_0], 0.1022964509394572 AS [Proba_1], CASE WHEN (0.1022964509394572 IS NULL OR 0.1022964509394572 > 0.0) THEN log(0.1022964509394572) ELSE -1.79769313486231e+308 END AS [LogProba_1], 0.10299234516353514 AS [Proba_2], CASE WHEN (0.10299234516353514 IS NULL OR 0.10299234516353514 > 0.0) THEN log(0.10299234516353514) ELSE -1.79769313486231e+308 END AS [LogProba_2], 0.10090466249130133 AS [Proba_3], CASE WHEN (0.10090466249130133 IS NULL OR 0.10090466249130133 > 0.0) THEN log(0.10090466249130133) ELSE -1.79769313486231e+308 END AS [LogProba_3], 0.10508002783576896 AS [Proba_4], CASE WHEN (0.10508002783576896 IS NULL OR 0.10508002783576896 > 0.0) THEN log(0.10508002783576896) ELSE -1.79769313486231e+308 END AS [LogProba_4], 0.10020876826722339 AS [Proba_5], CASE WHEN (0.10020876826722339 IS NULL OR 0.10020876826722339 > 0.0) THEN log(0.10020876826722339) ELSE -1.79769313486231e+308 END AS [LogProba_5], 0.09881697981906751 AS [Proba_6], CASE WHEN (0.09881697981906751 IS NULL OR 0.09881697981906751 > 0.0) THEN log(0.09881697981906751) ELSE -1.79769313486231e+308 END AS [LogProba_6], 0.09742519137091162 AS [Proba_7], CASE WHEN (0.09742519137091162 IS NULL OR 0.09742519137091162 > 0.0) THEN log(0.09742519137091162) ELSE -1.79769313486231e+308 END AS [LogProba_7], 0.09394572025052192 AS [Proba_8], CASE WHEN (0.09394572025052192 IS NULL OR 0.09394572025052192 > 0.0) THEN log(0.09394572025052192) ELSE -1.79769313486231e+308 END AS [LogProba_8], 0.1022964509394572 AS [Proba_9], CASE WHEN (0.1022964509394572 IS NULL OR 0.1022964509394572 > 0.0) THEN log(0.1022964509394572) ELSE -1.79769313486231e+308 END AS [LogProba_9], multinomial_cte.multinomial_expr AS [Decision] 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [Score_1], CAST(NULL AS FLOAT(53)) AS [Score_2], CAST(NULL AS FLOAT(53)) AS [Score_3], CAST(NULL AS FLOAT(53)) AS [Score_4], CAST(NULL AS FLOAT(53)) AS [Score_5], CAST(NULL AS FLOAT(53)) AS [Score_6], CAST(NULL AS FLOAT(53)) AS [Score_7], CAST(NULL AS FLOAT(53)) AS [Score_8], CAST(NULL AS FLOAT(53)) AS [Score_9], dummy_class_reg_cte.[Proba_0] AS [Proba_0], dummy_class_reg_cte.[Proba_1] AS [Proba_1], dummy_class_reg_cte.[Proba_2] AS [Proba_2], dummy_class_reg_cte.[Proba_3] AS [Proba_3], dummy_class_reg_cte.[Proba_4] AS [Proba_4], dummy_class_reg_cte.[Proba_5] AS [Proba_5], dummy_class_reg_cte.[Proba_6] AS [Proba_6], dummy_class_reg_cte.[Proba_7] AS [Proba_7], dummy_class_reg_cte.[Proba_8] AS [Proba_8], dummy_class_reg_cte.[Proba_9] AS [Proba_9], dummy_class_reg_cte.[LogProba_0] AS [LogProba_0], dummy_class_reg_cte.[LogProba_1] AS [LogProba_1], dummy_class_reg_cte.[LogProba_2] AS [LogProba_2], dummy_class_reg_cte.[LogProba_3] AS [LogProba_3], dummy_class_reg_cte.[LogProba_4] AS [LogProba_4], dummy_class_reg_cte.[LogProba_5] AS [LogProba_5], dummy_class_reg_cte.[LogProba_6] AS [LogProba_6], dummy_class_reg_cte.[LogProba_7] AS [LogProba_7], dummy_class_reg_cte.[LogProba_8] AS [LogProba_8], dummy_class_reg_cte.[LogProba_9] AS [LogProba_9], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM dummy_class_reg_cte