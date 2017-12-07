-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.00390337446303 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.61522322157 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.0427962369143 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.77098195589 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.433007336249 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0424956965794 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.298090801198 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.146722415073 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.0174694238466 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.115073314156 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `FourClass_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - -0.00390337446303) / 0.979506064018 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 0.61522322157) / 1.39008072362 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.0427962369143) / 1.49626851359 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.77098195589) / 2.33335610601 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.433007336249) / 1.40297577726 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0424956965794) / 0.955809107687 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.298090801198) / 1.01701318072 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.146722415073) / 1.60079853993 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.0174694238466) / 1.14872963617 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.115073314156) / 0.969091185734 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`IL` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_2 AS DOUBLE) AS scaler_2, CAST(`ADS_sca_2_OUT`.scaler_3 AS DOUBLE) AS scaler_3, CAST(`ADS_sca_2_OUT`.scaler_4 AS DOUBLE) AS scaler_4, CAST(`ADS_sca_2_OUT`.scaler_5 AS DOUBLE) AS scaler_5, CAST(`ADS_sca_2_OUT`.scaler_6 AS DOUBLE) AS scaler_6, CAST(`ADS_sca_2_OUT`.scaler_7 AS DOUBLE) AS scaler_7, CAST(`ADS_sca_2_OUT`.scaler_8 AS DOUBLE) AS scaler_8, CAST(`ADS_sca_2_OUT`.scaler_9 AS DOUBLE) AS scaler_9, CAST(`ADS_sca_2_OUT`.scaler_10 AS DOUBLE) AS scaler_10, CAST(`ADS_sca_2_OUT`.scaler_11 AS DOUBLE) AS scaler_11 
FROM `ADS_sca_2_OUT`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.891420621552 * `IL`.scaler_2 + -3.62138350853 * `IL`.scaler_3 + -2.43829278092 * `IL`.scaler_4 + -2.77439886625 * `IL`.scaler_5 + -0.698323406269 * `IL`.scaler_6 + 0.673492868317 * `IL`.scaler_7 + 1.21080759185 * `IL`.scaler_8 + 1.06462668126 * `IL`.scaler_9 + 1.93448211985 * `IL`.scaler_10 + -0.788605608762 * `IL`.scaler_11 + 0.268828284603 AS `NEUR_1_1`, -0.991432065808 * `IL`.scaler_2 + 2.43440680294 * `IL`.scaler_3 + 1.0312587027 * `IL`.scaler_4 + 1.67080460864 * `IL`.scaler_5 + 0.826562754963 * `IL`.scaler_6 + 1.9693539539 * `IL`.scaler_7 + -1.00431502712 * `IL`.scaler_8 + -2.43440299951 * `IL`.scaler_9 + 1.79231941932 * `IL`.scaler_10 + -1.60337851254 * `IL`.scaler_11 + -0.47608020426 AS `NEUR_1_2`, -1.98590577288 * `IL`.scaler_2 + -0.640499778438 * `IL`.scaler_3 + -2.80946934801 * `IL`.scaler_4 + -2.02400838862 * `IL`.scaler_5 + -4.45593779477 * `IL`.scaler_6 + 1.02290212818 * `IL`.scaler_7 + 2.40788363081 * `IL`.scaler_8 + -2.44299864305 * `IL`.scaler_9 + -0.247861666652 * `IL`.scaler_10 + 0.33213735224 * `IL`.scaler_11 + -1.4050078348 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, 1.54207380077 * `HL_1_relu`.`NEUR_1_1` + 0.989218739771 * `HL_1_relu`.`NEUR_1_2` + 3.06772475044 * `HL_1_relu`.`NEUR_1_3` + -1.27459254877 AS `NEUR_2_1`, -1.08794693327 * `HL_1_relu`.`NEUR_1_1` + 1.40688261247 * `HL_1_relu`.`NEUR_1_2` + -2.23917490627 * `HL_1_relu`.`NEUR_1_3` + 1.38883844721 AS `NEUR_2_2`, 4.30153504617 * `HL_1_relu`.`NEUR_1_1` + 0.533707787305 * `HL_1_relu`.`NEUR_1_2` + 1.0085490511 * `HL_1_relu`.`NEUR_1_3` + -3.33055482303 AS `NEUR_2_3`, 0.36761402595 * `HL_1_relu`.`NEUR_1_1` + -0.504711594962 * `HL_1_relu`.`NEUR_1_2` + -1.45002865152 * `HL_1_relu`.`NEUR_1_3` + -0.288248661162 AS `NEUR_2_4`, -0.941460348095 * `HL_1_relu`.`NEUR_1_1` + 0.882893361586 * `HL_1_relu`.`NEUR_1_2` + -1.2962466875 * `HL_1_relu`.`NEUR_1_3` + 1.18323972998 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -0.811976803596 * `HL_2_relu`.`NEUR_2_1` + -2.31812938601 * `HL_2_relu`.`NEUR_2_2` + 2.17719505374 * `HL_2_relu`.`NEUR_2_3` + 0.451040317526 * `HL_2_relu`.`NEUR_2_4` + -1.28377515438 * `HL_2_relu`.`NEUR_2_5` + 4.69877921883 AS `NEUR_3_1`, -0.553657295361 * `HL_2_relu`.`NEUR_2_1` + 0.732455213941 * `HL_2_relu`.`NEUR_2_2` + -3.77965190906 * `HL_2_relu`.`NEUR_2_3` + 0.410631827129 * `HL_2_relu`.`NEUR_2_4` + 1.06170309425 * `HL_2_relu`.`NEUR_2_5` + -0.947457962065 AS `NEUR_3_2`, -0.66443662568 * `HL_2_relu`.`NEUR_2_1` + 1.29868466977 * `HL_2_relu`.`NEUR_2_2` + 2.24943245244 * `HL_2_relu`.`NEUR_2_3` + -0.677492266907 * `HL_2_relu`.`NEUR_2_4` + -0.282557411773 * `HL_2_relu`.`NEUR_2_5` + -1.45853022737 AS `NEUR_3_3`, 2.00186815939 * `HL_2_relu`.`NEUR_2_1` + -0.297245147757 * `HL_2_relu`.`NEUR_2_2` + -1.11567573419 * `HL_2_relu`.`NEUR_2_3` + -0.814046809488 * `HL_2_relu`.`NEUR_2_4` + 0.748164478176 * `HL_2_relu`.`NEUR_2_5` + -1.26804190116 AS `NEUR_3_4` 
FROM `HL_2_relu`), 
`OL_softmax` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1`, `OL_BA`.`NEUR_3_2` AS `NEUR_3_2`, `OL_BA`.`NEUR_3_3` AS `NEUR_3_3`, `OL_BA`.`NEUR_3_4` AS `NEUR_3_4` 
FROM `OL_BA`), 
orig_cte AS 
(SELECT `OL_softmax`.`KEY` AS `KEY`, `OL_softmax`.`NEUR_3_1` AS `Score_0`, `OL_softmax`.`NEUR_3_2` AS `Score_1`, `OL_softmax`.`NEUR_3_3` AS `Score_2`, `OL_softmax`.`NEUR_3_4` AS `Score_3`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `OL_softmax`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
score_soft_max_deltas AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1`, exp(score_max.`Score_2` - score_max.`max_Score`) AS `exp_delta_Score_2`, exp(score_max.`Score_3` - score_max.`max_Score`) AS `exp_delta_Score_3` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_deltas.`KEY` AS `KEY`, 0 AS class, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 1 AS class, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 2 AS class, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 3 AS class, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score` 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.`KEY` AS `KEY`, score_soft_max_deltas.`Score_0` AS `Score_0`, score_soft_max_deltas.`Score_1` AS `Score_1`, score_soft_max_deltas.`Score_2` AS `Score_2`, score_soft_max_deltas.`Score_3` AS `Score_3`, score_soft_max_deltas.`Proba_0` AS `Proba_0`, score_soft_max_deltas.`Proba_1` AS `Proba_1`, score_soft_max_deltas.`Proba_2` AS `Proba_2`, score_soft_max_deltas.`Proba_3` AS `Proba_3`, score_soft_max_deltas.`LogProba_0` AS `LogProba_0`, score_soft_max_deltas.`LogProba_1` AS `LogProba_1`, score_soft_max_deltas.`LogProba_2` AS `LogProba_2`, score_soft_max_deltas.`LogProba_3` AS `LogProba_3`, score_soft_max_deltas.`Decision` AS `Decision`, score_soft_max_deltas.`DecisionProba` AS `DecisionProba`, score_soft_max_deltas.`KEY_m` AS `KEY_m`, score_soft_max_deltas.`max_Score` AS `max_Score`, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score_3`, sum_exp_t.`KEY_sum` AS `KEY_sum`, sum_exp_t.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.`KEY` AS `KEY_sum`, sum(score_class_union_soft.`exp_delta_Score`) AS `sum_ExpDeltaScore` 
FROM score_class_union_soft GROUP BY score_class_union_soft.`KEY`) AS sum_exp_t ON score_soft_max_deltas.`KEY` = sum_exp_t.`KEY_sum`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.`KEY_u` = score_soft_max.`KEY`), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score`, soft_max_comp.`KEY_softmax` AS `KEY_softmax`, soft_max_comp.`SoftProba_0` AS `SoftProba_0`, soft_max_comp.`SoftProba_1` AS `SoftProba_1`, soft_max_comp.`SoftProba_2` AS `SoftProba_2`, soft_max_comp.`SoftProba_3` AS `SoftProba_3` 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` <= union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_soft_max.`KEY` = `arg_max_t_Score`.`KEY_Score` LEFT OUTER JOIN (SELECT score_soft_max.`KEY` AS `KEY_softmax`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2`, score_soft_max.`exp_delta_Score_3` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_3` 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.`KEY_softmax` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, arg_max_cte.`SoftProba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`SoftProba_3` IS NULL OR arg_max_cte.`SoftProba_3` > 0.0) THEN ln(arg_max_cte.`SoftProba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision`, CASE WHEN (arg_max_cte.`SoftProba_0` <= CASE WHEN (arg_max_cte.`SoftProba_1` <= CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END) THEN CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END ELSE arg_max_cte.`SoftProba_1` END) THEN CASE WHEN (arg_max_cte.`SoftProba_1` <= CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END) THEN CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END ELSE arg_max_cte.`SoftProba_1` END ELSE arg_max_cte.`SoftProba_0` END AS `DecisionProba` 
FROM arg_max_cte