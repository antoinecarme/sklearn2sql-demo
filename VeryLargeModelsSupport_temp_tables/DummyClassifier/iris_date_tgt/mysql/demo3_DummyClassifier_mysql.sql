-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier
-- Dataset : iris_date_tgt
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH random_number_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, rand() AS uniform 
FROM iris_date_tgt AS `ADS`), 
multinomial_cte AS 
(SELECT random_number_cte.`KEY` AS `KEY`, CASE WHEN (random_number_cte.uniform <= 0.30833333333333335) THEN 1789-07-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= 0.6416666666666666) THEN 1789-08-14T00:00:00.000000000 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1789-09-14T00:00:00.000000000 END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte.`KEY` AS `KEY`, 0.30833333333333335 AS `Proba_1789-07-14T00:00:00.000000000`, CASE WHEN (0.30833333333333335 IS NULL OR 0.30833333333333335 > 0.0) THEN ln(0.30833333333333335) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, 0.3333333333333333 AS `Proba_1789-08-14T00:00:00.000000000`, CASE WHEN (0.3333333333333333 IS NULL OR 0.3333333333333333 > 0.0) THEN ln(0.3333333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, 0.35833333333333334 AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (0.35833333333333334 IS NULL OR 0.35833333333333334 > 0.0) THEN ln(0.35833333333333334) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, multinomial_cte.multinomial_expr AS `Decision` 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte.`KEY` AS `KEY`, NULL AS `Score_1789-07-14T00:00:00.000000000`, NULL AS `Score_1789-08-14T00:00:00.000000000`, NULL AS `Score_1789-09-14T00:00:00.000000000`, dummy_class_reg_cte.`Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, dummy_class_reg_cte.`Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, dummy_class_reg_cte.`Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, dummy_class_reg_cte.`LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, dummy_class_reg_cte.`LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, dummy_class_reg_cte.`LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM dummy_class_reg_cte