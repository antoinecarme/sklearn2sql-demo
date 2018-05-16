-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor
-- Dataset : boston
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS DOUBLE) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS DOUBLE) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS DOUBLE) AS `Feature_12` 
FROM boston AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 355046766975.1075 * linear_input.`Feature_0` + 821220403978.2709 * linear_input.`Feature_1` + 239474749991.02386 * linear_input.`Feature_2` + -33074286693.18603 * linear_input.`Feature_3` + 1787918630.138487 * linear_input.`Feature_4` + 113731610619.75824 * linear_input.`Feature_5` + 360443634204.94446 * linear_input.`Feature_6` + -78207889363.07033 * linear_input.`Feature_7` + -60844781814.561844 * linear_input.`Feature_8` + -133023120809.31116 * linear_input.`Feature_9` + -223202290279.69043 * linear_input.`Feature_10` + -764012383214.3966 * linear_input.`Feature_11` + -146819670404.68082 * linear_input.`Feature_12` + 1563784267.8946922 AS `Estimator` 
FROM linear_input)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte