-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, -0.07391858603467077 * `ADS`.`Feature_0` + 0.049445764480110295 * `ADS`.`Feature_1` + -0.0 * `ADS`.`Feature_2` + 0.0 * `ADS`.`Feature_3` + -0.0 * `ADS`.`Feature_4` + 1.8009239592280346 * `ADS`.`Feature_5` + 0.011357020202584405 * `ADS`.`Feature_6` + -0.8133365400674983 * `ADS`.`Feature_7` + 0.27206587585723724 * `ADS`.`Feature_8` + -0.015420273564793396 * `ADS`.`Feature_9` + -0.7431453754302643 * `ADS`.`Feature_10` + 0.008980363110753294 * `ADS`.`Feature_11` + -0.7040998821105778 * `ADS`.`Feature_12` + 36.3444233045 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte