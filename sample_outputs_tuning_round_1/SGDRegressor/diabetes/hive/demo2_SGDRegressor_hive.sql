-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `linear_model_cte` AS 
(SELECT `ADS`.`KEY` AS `KEY`, 1.745953021400841 * `ADS`.`Feature_0` + -0.4803366620107743 * `ADS`.`Feature_1` + 2.806004032341777 * `ADS`.`Feature_2` + 1.380712727868456 * `ADS`.`Feature_3` + 0.5371902932959284 * `ADS`.`Feature_4` + 0.42595914095832454 * `ADS`.`Feature_5` + -1.7073950777337976 * `ADS`.`Feature_6` + 1.6410504756659718 * `ADS`.`Feature_7` + 2.4071734967964535 * `ADS`.`Feature_8` + 2.3400177236554502 * `ADS`.`Feature_9` + 116.125401778 AS `Estimator` 
FROM `diabetes` AS `ADS`)
 SELECT `linear_model_cte`.`KEY` AS `KEY`, `linear_model_cte`.`Estimator` AS `Estimator` 
FROM `linear_model_cte`