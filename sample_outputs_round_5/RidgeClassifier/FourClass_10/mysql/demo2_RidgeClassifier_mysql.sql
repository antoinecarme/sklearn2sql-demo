-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 6.109932186795444e-05 * `ADS`.`Feature_0` + -0.09686920471309635 * `ADS`.`Feature_1` + -0.07675325569331896 * `ADS`.`Feature_2` + 0.04930233348888463 * `ADS`.`Feature_3` + -0.15995124556722765 * `ADS`.`Feature_4` + -0.002625258626829123 * `ADS`.`Feature_5` + -0.26807287711606537 * `ADS`.`Feature_6` + 0.19724150821314151 * `ADS`.`Feature_7` + -0.08568332233115437 * `ADS`.`Feature_8` + 0.027398602289324607 * `ADS`.`Feature_9` + -0.372442819628 AS `Score_0`, -0.04196458116606218 * `ADS`.`Feature_0` + -0.029182546885372425 * `ADS`.`Feature_1` + -0.02996607115282734 * `ADS`.`Feature_2` + -0.03358151142198855 * `ADS`.`Feature_3` + 0.08321501721025686 * `ADS`.`Feature_4` + 0.11520997765633834 * `ADS`.`Feature_5` + 0.1813280741542974 * `ADS`.`Feature_6` + -0.11865228867973734 * `ADS`.`Feature_7` + -0.11230263439456765 * `ADS`.`Feature_8` + -0.04009611540944647 * `ADS`.`Feature_9` + -0.500141206801 AS `Score_1`, -0.004676641657094381 * `ADS`.`Feature_0` + -0.039687950437172465 * `ADS`.`Feature_1` + 0.14421167766121637 * `ADS`.`Feature_2` + 0.056613320169483485 * `ADS`.`Feature_3` + 0.1364945467183208 * `ADS`.`Feature_4` + -0.021487544130208355 * `ADS`.`Feature_5` + -0.16230793693118772 * `ADS`.`Feature_6` + 0.040532234853437946 * `ADS`.`Feature_7` + 0.08155129187382462 * `ADS`.`Feature_8` + -0.06085671048995805 * `ADS`.`Feature_9` + -0.62775147463 AS `Score_2`, 0.0465801235012887 * `ADS`.`Feature_0` + 0.16573970203563673 * `ADS`.`Feature_1` + -0.03749235081507004 * `ADS`.`Feature_2` + -0.07233414223637948 * `ADS`.`Feature_3` + -0.059758318361339074 * `ADS`.`Feature_4` + -0.09109717489930083 * `ADS`.`Feature_5` + 0.24905273989296334 * `ADS`.`Feature_6` + -0.11912145438682743 * `ADS`.`Feature_7` + 0.11643466485189735 * `ADS`.`Feature_8` + 0.07355422361009674 * `ADS`.`Feature_9` + -0.499664498941 AS `Score_3` 
FROM `FourClass_10` AS `ADS`), 
orig_cte AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_0` AS `Score_0`, linear_model_cte.`Score_1` AS `Score_1`, linear_model_cte.`Score_2` AS `Score_2`, linear_model_cte.`Score_3` AS `Score_3`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, NULL AS `Decision` 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.`max_LogProba` = score_class_union.`LogProba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.`max_Proba` = score_class_union.`Proba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.`max_Score` = score_class_union.`Score` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score` 
FROM score_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte