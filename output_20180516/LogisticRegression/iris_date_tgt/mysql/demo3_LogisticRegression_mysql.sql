-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression
-- Dataset : iris_date_tgt
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3` 
FROM iris_date_tgt AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 0.36740789160002096 * linear_input.`Feature_0` + 1.4174752050213284 * linear_input.`Feature_1` + -2.142257483278976 * linear_input.`Feature_2` + -0.958993964927167 * linear_input.`Feature_3` + 0.2528418193675541 AS `Score_1789-07-14T00:00:00.000000000`, 0.48631034730401246 * linear_input.`Feature_0` + -1.5447846073777547 * linear_input.`Feature_1` + 0.48075822032724924 * linear_input.`Feature_2` + -1.320608335038882 * linear_input.`Feature_3` + 0.8072726503723099 AS `Score_1789-08-14T00:00:00.000000000`, -1.6247202690006342 * linear_input.`Feature_0` + -1.4558712213663199 * linear_input.`Feature_1` + 2.382068725371414 * linear_input.`Feature_2` + 2.356508663538953 * linear_input.`Feature_3` + -1.116572480612141 AS `Score_1789-09-14T00:00:00.000000000` 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_1789-07-14T00:00:00.000000000`), 100.0))) AS `Logistic_1789-07-14T00:00:00.000000000`, linear_model_cte.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_1789-08-14T00:00:00.000000000`), 100.0))) AS `Logistic_1789-08-14T00:00:00.000000000`, linear_model_cte.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.`Score_1789-09-14T00:00:00.000000000`), 100.0))) AS `Logistic_1789-09-14T00:00:00.000000000` 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic.`KEY` AS `KEY`, linear_model_cte_logistic.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, linear_model_cte_logistic.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, linear_model_cte_logistic.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, linear_model_cte_logistic.`Logistic_1789-07-14T00:00:00.000000000` / (linear_model_cte_logistic.`Logistic_1789-07-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-08-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-09-14T00:00:00.000000000`) AS `Proba_1789-07-14T00:00:00.000000000`, linear_model_cte_logistic.`Logistic_1789-08-14T00:00:00.000000000` / (linear_model_cte_logistic.`Logistic_1789-07-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-08-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-09-14T00:00:00.000000000`) AS `Proba_1789-08-14T00:00:00.000000000`, linear_model_cte_logistic.`Logistic_1789-09-14T00:00:00.000000000` / (linear_model_cte_logistic.`Logistic_1789-07-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-08-14T00:00:00.000000000` + linear_model_cte_logistic.`Logistic_1789-09-14T00:00:00.000000000`) AS `Proba_1789-09-14T00:00:00.000000000`, NULL AS `LogProba_1789-07-14T00:00:00.000000000`, NULL AS `LogProba_1789-08-14T00:00:00.000000000`, NULL AS `LogProba_1789-09-14T00:00:00.000000000`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, '1789-07-14T00:00:00.000000000' AS class, orig_cte.`LogProba_1789-07-14T00:00:00.000000000` AS `LogProba`, orig_cte.`Proba_1789-07-14T00:00:00.000000000` AS `Proba`, orig_cte.`Score_1789-07-14T00:00:00.000000000` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, '1789-08-14T00:00:00.000000000' AS class, orig_cte.`LogProba_1789-08-14T00:00:00.000000000` AS `LogProba`, orig_cte.`Proba_1789-08-14T00:00:00.000000000` AS `Proba`, orig_cte.`Score_1789-08-14T00:00:00.000000000` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, '1789-09-14T00:00:00.000000000' AS class, orig_cte.`LogProba_1789-09-14T00:00:00.000000000` AS `LogProba`, orig_cte.`Proba_1789-09-14T00:00:00.000000000` AS `Proba`, orig_cte.`Score_1789-09-14T00:00:00.000000000` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, orig_cte.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, orig_cte.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, orig_cte.`Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, orig_cte.`Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, orig_cte.`Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, orig_cte.`LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, orig_cte.`LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, orig_cte.`LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, score_max.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, score_max.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, score_max.`Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, score_max.`Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, score_max.`Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, score_max.`LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, score_max.`LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, score_max.`LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, score_max.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, score_max.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, score_max.`Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, score_max.`Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, score_max.`Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, score_max.`LogProba_1789-07-14T00:00:00.000000000` AS `LogProba_1789-07-14T00:00:00.000000000`, score_max.`LogProba_1789-08-14T00:00:00.000000000` AS `LogProba_1789-08-14T00:00:00.000000000`, score_max.`LogProba_1789-09-14T00:00:00.000000000` AS `LogProba_1789-09-14T00:00:00.000000000`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_1789-07-14T00:00:00.000000000` AS `Score_1789-07-14T00:00:00.000000000`, arg_max_cte.`Score_1789-08-14T00:00:00.000000000` AS `Score_1789-08-14T00:00:00.000000000`, arg_max_cte.`Score_1789-09-14T00:00:00.000000000` AS `Score_1789-09-14T00:00:00.000000000`, arg_max_cte.`Proba_1789-07-14T00:00:00.000000000` AS `Proba_1789-07-14T00:00:00.000000000`, arg_max_cte.`Proba_1789-08-14T00:00:00.000000000` AS `Proba_1789-08-14T00:00:00.000000000`, arg_max_cte.`Proba_1789-09-14T00:00:00.000000000` AS `Proba_1789-09-14T00:00:00.000000000`, CASE WHEN (arg_max_cte.`Proba_1789-07-14T00:00:00.000000000` IS NULL OR arg_max_cte.`Proba_1789-07-14T00:00:00.000000000` > 0.0) THEN ln(arg_max_cte.`Proba_1789-07-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-07-14T00:00:00.000000000`, CASE WHEN (arg_max_cte.`Proba_1789-08-14T00:00:00.000000000` IS NULL OR arg_max_cte.`Proba_1789-08-14T00:00:00.000000000` > 0.0) THEN ln(arg_max_cte.`Proba_1789-08-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-08-14T00:00:00.000000000`, CASE WHEN (arg_max_cte.`Proba_1789-09-14T00:00:00.000000000` IS NULL OR arg_max_cte.`Proba_1789-09-14T00:00:00.000000000` > 0.0) THEN ln(arg_max_cte.`Proba_1789-09-14T00:00:00.000000000`) ELSE -1.79769313486231e+308 END AS `LogProba_1789-09-14T00:00:00.000000000`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte