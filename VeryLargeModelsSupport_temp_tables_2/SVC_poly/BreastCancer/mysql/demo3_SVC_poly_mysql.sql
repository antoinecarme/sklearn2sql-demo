-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_poly
-- Dataset : BreastCancer
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9`, `ADS`.`Feature_10` AS `Feature_10`, `ADS`.`Feature_11` AS `Feature_11`, `ADS`.`Feature_12` AS `Feature_12`, `ADS`.`Feature_13` AS `Feature_13`, `ADS`.`Feature_14` AS `Feature_14`, `ADS`.`Feature_15` AS `Feature_15`, `ADS`.`Feature_16` AS `Feature_16`, `ADS`.`Feature_17` AS `Feature_17`, `ADS`.`Feature_18` AS `Feature_18`, `ADS`.`Feature_19` AS `Feature_19`, `ADS`.`Feature_20` AS `Feature_20`, `ADS`.`Feature_21` AS `Feature_21`, `ADS`.`Feature_22` AS `Feature_22`, `ADS`.`Feature_23` AS `Feature_23`, `ADS`.`Feature_24` AS `Feature_24`, `ADS`.`Feature_25` AS `Feature_25`, `ADS`.`Feature_26` AS `Feature_26`, `ADS`.`Feature_27` AS `Feature_27`, `ADS`.`Feature_28` AS `Feature_28`, `ADS`.`Feature_29` AS `Feature_29`, `ADS`.`TGT` AS `TGT` 
FROM `BreastCancer` AS `ADS`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9, `Values`.sv_10 AS sv_10, `Values`.sv_11 AS sv_11, `Values`.sv_12 AS sv_12, `Values`.sv_13 AS sv_13, `Values`.sv_14 AS sv_14, `Values`.sv_15 AS sv_15, `Values`.sv_16 AS sv_16, `Values`.sv_17 AS sv_17, `Values`.sv_18 AS sv_18, `Values`.sv_19 AS sv_19, `Values`.sv_20 AS sv_20, `Values`.sv_21 AS sv_21, `Values`.sv_22 AS sv_22, `Values`.sv_23 AS sv_23, `Values`.sv_24 AS sv_24, `Values`.sv_25 AS sv_25, `Values`.sv_26 AS sv_26, `Values`.sv_27 AS sv_27, `Values`.sv_28 AS sv_28, `Values`.sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.4766595800457906e-11 AS dual_coeff, 13.82 AS sv_0, 24.49 AS sv_1, 92.33 AS sv_2, 595.9 AS sv_3, 0.1162 AS sv_4, 0.1681 AS sv_5, 0.1357 AS sv_6, 0.06759 AS sv_7, 0.2275 AS sv_8, 0.07237 AS sv_9, 0.4751 AS sv_10, 1.528 AS sv_11, 2.974 AS sv_12, 39.05 AS sv_13, 0.00968 AS sv_14, 0.03856 AS sv_15, 0.03476 AS sv_16, 0.01616 AS sv_17, 0.02434 AS sv_18, 0.006995 AS sv_19, 16.01 AS sv_20, 32.94 AS sv_21, 106.0 AS sv_22, 788.0 AS sv_23, 0.1794 AS sv_24, 0.3966 AS sv_25, 0.3381 AS sv_26, 0.1521 AS sv_27, 0.3651 AS sv_28, 0.1183 AS sv_29 UNION ALL SELECT 1 AS sv_idx, 6.613043777164426e-12 AS dual_coeff, 14.44 AS sv_0, 15.18 AS sv_1, 93.97 AS sv_2, 640.1 AS sv_3, 0.0997 AS sv_4, 0.1021 AS sv_5, 0.08487 AS sv_6, 0.05532 AS sv_7, 0.1724 AS sv_8, 0.06081 AS sv_9, 0.2406 AS sv_10, 0.7394 AS sv_11, 2.12 AS sv_12, 21.2 AS sv_13, 0.005706 AS sv_14, 0.02297 AS sv_15, 0.03114 AS sv_16, 0.01493 AS sv_17, 0.01454 AS sv_18, 0.002528 AS sv_19, 15.85 AS sv_20, 19.85 AS sv_21, 108.6 AS sv_22, 766.9 AS sv_23, 0.1316 AS sv_24, 0.2735 AS sv_25, 0.3103 AS sv_26, 0.1599 AS sv_27, 0.2691 AS sv_28, 0.07683 AS sv_29 UNION ALL SELECT 2 AS sv_idx, 8.15355202329348e-12 AS dual_coeff, 13.68 AS sv_0, 16.33 AS sv_1, 87.76 AS sv_2, 575.5 AS sv_3, 0.09277 AS sv_4, 0.07255 AS sv_5, 0.01752 AS sv_6, 0.0188 AS sv_7, 0.1631 AS sv_8, 0.06155 AS sv_9, 0.2047 AS sv_10, 0.4801 AS sv_11, 1.373 AS sv_12, 17.25 AS sv_13, 0.003828 AS sv_14, 0.007228 AS sv_15, 0.007078 AS sv_16, 0.005077 AS sv_17, 0.01054 AS sv_18, 0.001697 AS sv_19, 15.85 AS sv_20, 20.2 AS sv_21, 101.6 AS sv_22, 773.4 AS sv_23, 0.1264 AS sv_24, 0.1564 AS sv_25, 0.1206 AS sv_26, 0.08704 AS sv_27, 0.2806 AS sv_28, 0.07782 AS sv_29) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 15.445583788587655 AS dot_product 
FROM (SELECT kernel_input.`KEY` AS `KEY`, `SV_data`.dual_coeff * power(0.03333333333333333 * (kernel_input.`Feature_0` * `SV_data`.sv_0 + kernel_input.`Feature_1` * `SV_data`.sv_1 + kernel_input.`Feature_2` * `SV_data`.sv_2 + kernel_input.`Feature_3` * `SV_data`.sv_3 + kernel_input.`Feature_4` * `SV_data`.sv_4 + kernel_input.`Feature_5` * `SV_data`.sv_5 + kernel_input.`Feature_6` * `SV_data`.sv_6 + kernel_input.`Feature_7` * `SV_data`.sv_7 + kernel_input.`Feature_8` * `SV_data`.sv_8 + kernel_input.`Feature_9` * `SV_data`.sv_9 + kernel_input.`Feature_10` * `SV_data`.sv_10 + kernel_input.`Feature_11` * `SV_data`.sv_11 + kernel_input.`Feature_12` * `SV_data`.sv_12 + kernel_input.`Feature_13` * `SV_data`.sv_13 + kernel_input.`Feature_14` * `SV_data`.sv_14 + kernel_input.`Feature_15` * `SV_data`.sv_15 + kernel_input.`Feature_16` * `SV_data`.sv_16 + kernel_input.`Feature_17` * `SV_data`.sv_17 + kernel_input.`Feature_18` * `SV_data`.sv_18 + kernel_input.`Feature_19` * `SV_data`.sv_19 + kernel_input.`Feature_20` * `SV_data`.sv_20 + kernel_input.`Feature_21` * `SV_data`.sv_21 + kernel_input.`Feature_22` * `SV_data`.sv_22 + kernel_input.`Feature_23` * `SV_data`.sv_23 + kernel_input.`Feature_24` * `SV_data`.sv_24 + kernel_input.`Feature_25` * `SV_data`.sv_25 + kernel_input.`Feature_26` * `SV_data`.sv_26 + kernel_input.`Feature_27` * `SV_data`.sv_27 + kernel_input.`Feature_28` * `SV_data`.sv_28 + kernel_input.`Feature_29` * `SV_data`.sv_29) + 0.0, 3) AS dot_prod1 
FROM kernel_input, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, -kernel_dp.dot_product AS `Score_0`, kernel_dp.dot_product AS `Score_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) AS `Proba_1`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0)))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0)))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS `Decision`, greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.10096948323378371 + 1.1962481391302013))), 100.0)))) AS `DecisionProba` 
FROM kernel_dp