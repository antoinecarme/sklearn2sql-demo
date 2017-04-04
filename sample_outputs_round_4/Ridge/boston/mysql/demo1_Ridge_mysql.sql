-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, -0.10362151636344472 * `ADS`.`Feature_0` + 0.04741437607803746 * `ADS`.`Feature_1` + -0.008546603323128428 * `ADS`.`Feature_2` + 2.5542212398970947 * `ADS`.`Feature_3` + -10.79343637509153 * `ADS`.`Feature_4` + 3.849255737867707 * `ADS`.`Feature_5` + -0.00536782075702396 * `ADS`.`Feature_6` + -1.3725704224909923 * `ADS`.`Feature_7` + 0.2896497989933949 * `ADS`.`Feature_8` + -0.012907154380369719 * `ADS`.`Feature_9` + -0.876632533744922 * `ADS`.`Feature_10` + 0.009753518526097474 * `ADS`.`Feature_11` + -0.5340721059193169 * `ADS`.`Feature_12` + 31.6186044111 AS `Estimator` 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte