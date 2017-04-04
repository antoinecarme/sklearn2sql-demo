-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH random_number_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, rand() AS uniform 
FROM `INPUT_DATA` AS `ADS`), 
multinomial_cte AS 
(SELECT random_number_cte.`KEY` AS `KEY`, CASE WHEN (random_number_cte.uniform <= 0.333333333333) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.666666666667) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 2 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte.`KEY` AS `KEY`, 0.333333333333 AS `Proba_0`, CASE WHEN (0.333333333333 IS NULL OR 0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_0`, 0.333333333333 AS `Proba_1`, CASE WHEN (0.333333333333 IS NULL OR 0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_1`, 0.333333333333 AS `Proba_2`, CASE WHEN (0.333333333333 IS NULL OR 0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_2`, multinomial_cte.multinomial_expr AS `Decision` 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, dummy_class_reg_cte.`Proba_0` AS `Proba_0`, dummy_class_reg_cte.`Proba_1` AS `Proba_1`, dummy_class_reg_cte.`Proba_2` AS `Proba_2`, dummy_class_reg_cte.`LogProba_0` AS `LogProba_0`, dummy_class_reg_cte.`LogProba_1` AS `LogProba_1`, dummy_class_reg_cte.`LogProba_2` AS `LogProba_2`, dummy_class_reg_cte.`Decision` AS `Decision` 
FROM dummy_class_reg_cte