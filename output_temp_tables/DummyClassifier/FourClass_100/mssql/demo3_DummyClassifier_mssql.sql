-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier
-- Dataset : FourClass_100
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT [ADS].[KEY] AS [KEY], rand() AS uniform 
FROM [FourClass_100] AS [ADS]), 
multinomial_cte AS 
(SELECT random_number_cte.[KEY] AS [KEY], CASE WHEN (random_number_cte.uniform <= 0.25) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.5104166666666667) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.7500000000000001) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte.[KEY] AS [KEY], 0.25 AS [Proba_0], CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN log(0.25) ELSE -1.79769313486231e+308 END AS [LogProba_0], 0.2604166666666667 AS [Proba_1], CASE WHEN (0.2604166666666667 IS NULL OR 0.2604166666666667 > 0.0) THEN log(0.2604166666666667) ELSE -1.79769313486231e+308 END AS [LogProba_1], 0.23958333333333334 AS [Proba_2], CASE WHEN (0.23958333333333334 IS NULL OR 0.23958333333333334 > 0.0) THEN log(0.23958333333333334) ELSE -1.79769313486231e+308 END AS [LogProba_2], 0.25 AS [Proba_3], CASE WHEN (0.25 IS NULL OR 0.25 > 0.0) THEN log(0.25) ELSE -1.79769313486231e+308 END AS [LogProba_3], multinomial_cte.multinomial_expr AS [Decision], CASE WHEN (multinomial_cte.multinomial_expr = 0) THEN NULL WHEN (multinomial_cte.multinomial_expr = 1) THEN NULL WHEN (multinomial_cte.multinomial_expr = 2) THEN NULL WHEN (multinomial_cte.multinomial_expr = 3) THEN NULL END AS [DecisionProba] 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [Score_1], CAST(NULL AS FLOAT(53)) AS [Score_2], CAST(NULL AS FLOAT(53)) AS [Score_3], dummy_class_reg_cte.[Proba_0] AS [Proba_0], dummy_class_reg_cte.[Proba_1] AS [Proba_1], dummy_class_reg_cte.[Proba_2] AS [Proba_2], dummy_class_reg_cte.[Proba_3] AS [Proba_3], dummy_class_reg_cte.[LogProba_0] AS [LogProba_0], dummy_class_reg_cte.[LogProba_1] AS [LogProba_1], dummy_class_reg_cte.[LogProba_2] AS [LogProba_2], dummy_class_reg_cte.[LogProba_3] AS [LogProba_3], dummy_class_reg_cte.[Decision] AS [Decision], dummy_class_reg_cte.[DecisionProba] AS [DecisionProba] 
FROM dummy_class_reg_cte