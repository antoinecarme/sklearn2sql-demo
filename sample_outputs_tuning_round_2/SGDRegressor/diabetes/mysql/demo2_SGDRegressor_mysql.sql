-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 2.42632149303962 * `ADS`.`Feature_0` + 0.5412894877375858 * `ADS`.`Feature_1` + 7.475875424993012 * `ADS`.`Feature_2` + 5.429683092908794 * `ADS`.`Feature_3` + 2.397110905151659 * `ADS`.`Feature_4` + 1.9531355954394596 * `ADS`.`Feature_5` + -5.218355482248351 * `ADS`.`Feature_6` + 5.482394584909029 * `ADS`.`Feature_7` + 7.323670087251858 * `ADS`.`Feature_8` + 4.871747408405437 * `ADS`.`Feature_9` + 149.759826768 AS `Estimator` 
FROM diabetes AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte