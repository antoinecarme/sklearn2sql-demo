-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `RawScores` AS 
(SELECT `ADS`.`KEY` AS `KEY`, NULL AS `LogProba_0`, NULL AS `Proba_0`, -0.6931471805599453 + (-0.5 * 1.1659418918428306 - (0.5 * (`ADS`.`Feature_0` - 0.8736540997238669) * (`ADS`.`Feature_0` - 0.8736540997238669)) / 0.5107192898924603) + (-0.5 * 1.6339821388683364 - (0.5 * (`ADS`.`Feature_1` - 0.22417823322532193) * (`ADS`.`Feature_1` - 0.22417823322532193)) / 0.8155480583254483) + (-0.5 * 1.7326755778312752 - (0.5 * (`ADS`.`Feature_2` - 0.05238040173285245) * (`ADS`.`Feature_2` - 0.05238040173285245)) / 0.9001431357527093) + (-0.5 * 2.1244922499436125 - (0.5 * (`ADS`.`Feature_3` - 0.008194292112152635) * (`ADS`.`Feature_3` - 0.008194292112152635)) / 1.3319115733414975) + (-0.5 * 2.1108211504583463 - (0.5 * (`ADS`.`Feature_4` - 0.04244853351408695) * (`ADS`.`Feature_4` - 0.04244853351408695)) / 1.3138267788970095) + (-0.5 * 2.3889903842757407 - (0.5 * (`ADS`.`Feature_5` - -0.011775929294600088) * (`ADS`.`Feature_5` - -0.011775929294600088)) / 1.735183753981251) + (-0.5 * 1.7031453225200044 - (0.5 * (`ADS`.`Feature_6` - 0.3850522853640051) * (`ADS`.`Feature_6` - 0.3850522853640051)) / 0.8739503227600202) + (-0.5 * -1.024017408066938 - (0.5 * (`ADS`.`Feature_7` - 0.34626546901416927) * (`ADS`.`Feature_7` - 0.34626546901416927)) / 0.05716036876573926) + (-0.5 * 1.7950563371592299 - (0.5 * (`ADS`.`Feature_8` - -0.11404947981156924) * (`ADS`.`Feature_8` - -0.11404947981156924)) / 0.9580831309538496) + (-0.5 * 0.6647622291855276 - (0.5 * (`ADS`.`Feature_9` - -0.8981761455859457) * (`ADS`.`Feature_9` - -0.8981761455859457)) / 0.3094017028245138) AS `Score_0`, NULL AS `LogProba_1`, NULL AS `Proba_1`, -0.6931471805599453 + (-0.5 * 2.0110028741373744 - (0.5 * (`ADS`.`Feature_0` - -0.7499956892475977) * (`ADS`.`Feature_0` - -0.7499956892475977)) / 1.1890156830364773) + (-0.5 * 1.7868950922987223 - (0.5 * (`ADS`.`Feature_1` - 0.12987104211834458) * (`ADS`.`Feature_1` - 0.12987104211834458)) / 0.9502958003050084) + (-0.5 * 2.1795863220093645 - (0.5 * (`ADS`.`Feature_2` - 0.03038729836521653) * (`ADS`.`Feature_2` - 0.03038729836521653)) / 1.407351058585931) + (-0.5 * 1.8049093560434912 - (0.5 * (`ADS`.`Feature_3` - 0.2530186440047904) * (`ADS`.`Feature_3` - 0.2530186440047904)) / 0.9675698015595363) + (-0.5 * 1.9580914041838446 - (0.5 * (`ADS`.`Feature_4` - -0.16156474295374862) * (`ADS`.`Feature_4` - -0.16156474295374862)) / 1.1277385426461355) + (-0.5 * 2.560998180507674 - (0.5 * (`ADS`.`Feature_5` - -0.08608225044561162) * (`ADS`.`Feature_5` - -0.08608225044561162)) / 2.0608553480000658) + (-0.5 * 1.7826461700292138 - (0.5 * (`ADS`.`Feature_6` - -0.0030163281297424945) * (`ADS`.`Feature_6` - -0.0030163281297424945)) / 0.9462666331870782) + (-0.5 * 0.14017504405557812 - (0.5 * (`ADS`.`Feature_7` - -0.3021662755488199) * (`ADS`.`Feature_7` - -0.3021662755488199)) / 0.18310380942558865) + (-0.5 * 2.1020484871647827 - (0.5 * (`ADS`.`Feature_8` - -0.0014101482567108082) * (`ADS`.`Feature_8` - -0.0014101482567108082)) / 1.302351427232641) + (-0.5 * 2.0685056235146035 - (0.5 * (`ADS`.`Feature_9` - 0.7930769614818811) * (`ADS`.`Feature_9` - 0.7930769614818811)) / 1.2593913605868818) AS `Score_1` 
FROM `BinaryClass_10` AS `ADS`), 
orig_cte AS 
(SELECT `RawScores`.`KEY` AS `KEY`, `RawScores`.`Score_0` AS `Score_0`, `RawScores`.`Score_1` AS `Score_1`, `RawScores`.`Proba_0` AS `Proba_0`, `RawScores`.`Proba_1` AS `Proba_1`, `RawScores`.`LogProba_0` AS `LogProba_0`, `RawScores`.`LogProba_1` AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `RawScores`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
score_soft_max_deltas AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_deltas.`KEY` AS `KEY`, 0 AS class, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 1 AS class, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.`KEY` AS `KEY`, score_soft_max_deltas.`Score_0` AS `Score_0`, score_soft_max_deltas.`Score_1` AS `Score_1`, score_soft_max_deltas.`Proba_0` AS `Proba_0`, score_soft_max_deltas.`Proba_1` AS `Proba_1`, score_soft_max_deltas.`LogProba_0` AS `LogProba_0`, score_soft_max_deltas.`LogProba_1` AS `LogProba_1`, score_soft_max_deltas.`Decision` AS `Decision`, score_soft_max_deltas.`DecisionProba` AS `DecisionProba`, score_soft_max_deltas.`KEY_m` AS `KEY_m`, score_soft_max_deltas.`max_Score` AS `max_Score`, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score_1`, sum_exp_t.`KEY_sum` AS `KEY_sum`, sum_exp_t.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.`KEY` AS `KEY_sum`, sum(score_class_union_soft.`exp_delta_Score`) AS `sum_ExpDeltaScore` 
FROM score_class_union_soft GROUP BY score_class_union_soft.`KEY`) AS sum_exp_t ON score_soft_max_deltas.`KEY` = sum_exp_t.`KEY_sum`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.`KEY_u` = score_soft_max.`KEY`), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score`, soft_max_comp.`KEY_softmax` AS `KEY_softmax`, soft_max_comp.`SoftProba_0` AS `SoftProba_0`, soft_max_comp.`SoftProba_1` AS `SoftProba_1` 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` <= union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_soft_max.`KEY` = `arg_max_t_Score`.`KEY_Score` LEFT OUTER JOIN (SELECT score_soft_max.`KEY` AS `KEY_softmax`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1` 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.`KEY_softmax` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Score` AS `Decision`, greatest(arg_max_cte.`SoftProba_0`, arg_max_cte.`SoftProba_1`) AS `DecisionProba` 
FROM arg_max_cte