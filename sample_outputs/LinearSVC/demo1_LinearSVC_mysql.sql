-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.linear_combination AS `Score_-1`, linear_model_cte.linear_combination AS `Score_1`, NULL AS `Proba_-1`, NULL AS `Proba_1`, NULL AS `LogProba_-1`, NULL AS `LogProba_1`, CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE -1 END AS `Decision` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, -0.019624930823166062 * `ADS`.`Feature_0` + -0.060218368862028894 * `ADS`.`Feature_1` + -0.31567726222721426 * `ADS`.`Feature_2` + -0.1214755792978763 * `ADS`.`Feature_3` + -0.05859470534833411 * `ADS`.`Feature_4` + 0.0394278567438 AS linear_combination 
FROM `INPUT_DATA` AS `ADS`) AS linear_model_cte