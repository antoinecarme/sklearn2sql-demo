-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, -4.235242502041814 * `ADS`.`Feature_0` + -226.3309356715224 * `ADS`.`Feature_1` + 513.4681668548203 * `ADS`.`Feature_2` + 314.9100390394959 * `ADS`.`Feature_3` + -182.28443825078693 * `ADS`.`Feature_4` + -4.3697338415833755 * `ADS`.`Feature_5` + -159.2026442578495 * `ADS`.`Feature_6` + 114.63609758315306 * `ADS`.`Feature_7` + 506.82486599772363 * `ADS`.`Feature_8` + 76.25520654882439 * `ADS`.`Feature_9` + 152.133484163 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte