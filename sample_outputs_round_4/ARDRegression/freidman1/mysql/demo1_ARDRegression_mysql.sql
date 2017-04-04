-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 9.318518036166004 * `ADS`.`Feature_0` + 7.4242293568239015 * `ADS`.`Feature_1` + -0.665398746210511 * `ADS`.`Feature_2` + 10.19071100124151 * `ADS`.`Feature_3` + 4.993048401449567 * `ADS`.`Feature_4` + -0.0011770700479564148 * `ADS`.`Feature_5` + -0.18571097013051754 * `ADS`.`Feature_6` + -0.6410445506883109 * `ADS`.`Feature_7` + 0.001738793069837917 * `ADS`.`Feature_8` + 1.5590079102904937 * `ADS`.`Feature_9` + -1.69743951747 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte