-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 64.08693004536427 * `ADS`.`Feature_0` + 66.31307750176211 * `ADS`.`Feature_1` + 6.461268100497804 * `ADS`.`Feature_2` + 14.63529297594336 * `ADS`.`Feature_3` + 98.55477929477787 * `ADS`.`Feature_4` + 46.932111962560455 * `ADS`.`Feature_5` + 90.48446551705085 * `ADS`.`Feature_6` + 19.858156830606312 * `ADS`.`Feature_7` + 34.61316319902654 * `ADS`.`Feature_8` + 7.431289436309161 * `ADS`.`Feature_9` + 0.147554382146 AS `Estimator` 
FROM `RandomReg_10` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte