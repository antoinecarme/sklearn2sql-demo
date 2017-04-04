-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 3644.024453694064 * `ADS`.`Feature_0` + 6239.672216441197 * `ADS`.`Feature_1` + 21606.685744016577 * `ADS`.`Feature_2` + 11091.050988553561 * `ADS`.`Feature_3` + 36.786238293444214 * `ADS`.`Feature_4` + -2.4739854318418493 * `ADS`.`Feature_5` + -46.699084287200755 * `ADS`.`Feature_6` + -20.722161810613912 * `ADS`.`Feature_7` + 67.94406867845971 * `ADS`.`Feature_8` + 27.893262226847014 * `ADS`.`Feature_9` + 14.58402705515085 * `ADS`.`Feature_10` + 459.00650364203847 * `ADS`.`Feature_11` + -82.78121748178994 * `ADS`.`Feature_12` + -10087.258064516112 * `ADS`.`Feature_13` + 2.6304864724245514 * `ADS`.`Feature_14` + -0.2525416233090575 * `ADS`.`Feature_15` + -3.077807232049954 * `ADS`.`Feature_16` + 0.3292585848074876 * `ADS`.`Feature_17` + 6.804453694068654 * `ADS`.`Feature_18` + 0.7285502081165439 * `ADS`.`Feature_19` + 3767.8954214360015 * `ADS`.`Feature_20` + 8095.655567117565 * `ADS`.`Feature_21` + 21588.00728407901 * `ADS`.`Feature_22` + -16096.514047866744 * `ADS`.`Feature_23` + 47.763995837668936 * `ADS`.`Feature_24` + -28.744380853277836 * `ADS`.`Feature_25` + -88.89462018730481 * `ADS`.`Feature_26` + -19.74765088449529 * `ADS`.`Feature_27` + 96.70421436004146 * `ADS`.`Feature_28` + 28.00015608740888 * `ADS`.`Feature_29` + 1031.76586479 AS linear_combination 
FROM `INPUT_DATA` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.linear_combination AS `Score_0`, linear_model_cte.linear_combination AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS `Decision` 
FROM linear_model_cte