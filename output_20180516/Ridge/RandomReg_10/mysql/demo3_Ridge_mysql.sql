-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : Ridge
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9` 
FROM `RandomReg_10` AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 33.995127705742 * linear_input.`Feature_0` + 74.27149691595135 * linear_input.`Feature_1` + 93.46619498786532 * linear_input.`Feature_2` + 34.27298880225485 * linear_input.`Feature_3` + 53.03396721690206 * linear_input.`Feature_4` + 83.71233951181253 * linear_input.`Feature_5` + 33.4484690010958 * linear_input.`Feature_6` + 40.102710378726684 * linear_input.`Feature_7` + 81.37088972564806 * linear_input.`Feature_8` + 59.42534354923733 * linear_input.`Feature_9` + 0.5038342055460987 AS `Estimator` 
FROM linear_input)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte