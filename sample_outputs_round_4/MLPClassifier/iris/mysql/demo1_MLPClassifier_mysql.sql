-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3` 
FROM `INPUT_DATA` AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, 0.205864622109 * `IL`.`Feature_0` + 0.82911944314 * `IL`.`Feature_1` + -0.708479623354 * `IL`.`Feature_2` + -0.634464455892 * `IL`.`Feature_3` + 0.0922206387925 AS `NEUR_1_1`, 0.243095788712 * `IL`.`Feature_0` + -0.227823981407 * `IL`.`Feature_1` + 0.40970633542 * `IL`.`Feature_2` + 0.1358619318 * `IL`.`Feature_3` + 0.0304490804729 AS `NEUR_1_2`, 0.0659084802787 * `IL`.`Feature_0` + 0.350629539329 * `IL`.`Feature_1` + 0.311392040838 * `IL`.`Feature_2` + -0.572312615672 * `IL`.`Feature_3` + -0.75947865535 AS `NEUR_1_3`, 0.0722607303148 * `IL`.`Feature_0` + 0.0106385599931 * `IL`.`Feature_1` + 0.603323697536 * `IL`.`Feature_2` + 0.725631073985 * `IL`.`Feature_3` + 0.152777597127 AS `NEUR_1_4`, -0.189505818061 * `IL`.`Feature_0` + -0.010680335652 * `IL`.`Feature_1` + 0.621132570805 * `IL`.`Feature_2` + -0.0130935470896 * `IL`.`Feature_3` + 0.0617086001178 AS `NEUR_1_5`, 0.251706756092 * `IL`.`Feature_0` + 0.629707079338 * `IL`.`Feature_1` + 0.446651622837 * `IL`.`Feature_2` + -0.142529500113 * `IL`.`Feature_3` + 0.221851951827 AS `NEUR_1_6`, -0.0142554236308 * `IL`.`Feature_0` + -0.438099519511 * `IL`.`Feature_1` + -0.00454854340152 * `IL`.`Feature_2` + -0.185929339962 * `IL`.`Feature_3` + 0.627554550912 AS `NEUR_1_7`, 0.643875338978 * `IL`.`Feature_0` + -0.477289665829 * `IL`.`Feature_1` + 0.359622583354 * `IL`.`Feature_2` + 0.303353436827 * `IL`.`Feature_3` + 0.354022372511 AS `NEUR_1_8` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3`, CASE WHEN (`HL_BA_1`.`NEUR_1_4` >= 0.0) THEN `HL_BA_1`.`NEUR_1_4` ELSE 0.0 END AS `NEUR_1_4`, CASE WHEN (`HL_BA_1`.`NEUR_1_5` >= 0.0) THEN `HL_BA_1`.`NEUR_1_5` ELSE 0.0 END AS `NEUR_1_5`, CASE WHEN (`HL_BA_1`.`NEUR_1_6` >= 0.0) THEN `HL_BA_1`.`NEUR_1_6` ELSE 0.0 END AS `NEUR_1_6`, CASE WHEN (`HL_BA_1`.`NEUR_1_7` >= 0.0) THEN `HL_BA_1`.`NEUR_1_7` ELSE 0.0 END AS `NEUR_1_7`, CASE WHEN (`HL_BA_1`.`NEUR_1_8` >= 0.0) THEN `HL_BA_1`.`NEUR_1_8` ELSE 0.0 END AS `NEUR_1_8` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, -0.0971671154854 * `HL_1_relu`.`NEUR_1_1` + 0.488762991649 * `HL_1_relu`.`NEUR_1_2` + -0.362270056756 * `HL_1_relu`.`NEUR_1_3` + -0.29195765543 * `HL_1_relu`.`NEUR_1_4` + 0.0296861069566 * `HL_1_relu`.`NEUR_1_5` + 0.159591042926 * `HL_1_relu`.`NEUR_1_6` + 0.0921177558074 * `HL_1_relu`.`NEUR_1_7` + -0.127223711102 * `HL_1_relu`.`NEUR_1_8` + 0.0680790296627 AS `NEUR_2_1`, -0.00800338766977 * `HL_1_relu`.`NEUR_1_1` + -0.278097720321 * `HL_1_relu`.`NEUR_1_2` + -0.0413296827098 * `HL_1_relu`.`NEUR_1_3` + -0.259947487277 * `HL_1_relu`.`NEUR_1_4` + 0.309734506637 * `HL_1_relu`.`NEUR_1_5` + -0.118087967826 * `HL_1_relu`.`NEUR_1_6` + -0.094671234296 * `HL_1_relu`.`NEUR_1_7` + 0.0265445877154 * `HL_1_relu`.`NEUR_1_8` + 0.167823089728 AS `NEUR_2_2`, 0.158187554394 * `HL_1_relu`.`NEUR_1_1` + -0.358248617929 * `HL_1_relu`.`NEUR_1_2` + 0.308300379699 * `HL_1_relu`.`NEUR_1_3` + -0.273685510464 * `HL_1_relu`.`NEUR_1_4` + -0.229690794574 * `HL_1_relu`.`NEUR_1_5` + 0.210532091854 * `HL_1_relu`.`NEUR_1_6` + 0.1953312767 * `HL_1_relu`.`NEUR_1_7` + -0.574691587141 * `HL_1_relu`.`NEUR_1_8` + 0.119741330527 AS `NEUR_2_3`, -0.320386194884 * `HL_1_relu`.`NEUR_1_1` + -0.21940888355 * `HL_1_relu`.`NEUR_1_2` + -0.283064017908 * `HL_1_relu`.`NEUR_1_3` + -0.261410997464 * `HL_1_relu`.`NEUR_1_4` + 0.0667222702509 * `HL_1_relu`.`NEUR_1_5` + 0.343281294436 * `HL_1_relu`.`NEUR_1_6` + -0.024997097569 * `HL_1_relu`.`NEUR_1_7` + -0.0912489740918 * `HL_1_relu`.`NEUR_1_8` + -0.0751273398836 AS `NEUR_2_4`, 0.411495628646 * `HL_1_relu`.`NEUR_1_1` + 0.112140626498 * `HL_1_relu`.`NEUR_1_2` + 0.519315206658 * `HL_1_relu`.`NEUR_1_3` + -0.245370792009 * `HL_1_relu`.`NEUR_1_4` + -0.543339004303 * `HL_1_relu`.`NEUR_1_5` + -0.111864185061 * `HL_1_relu`.`NEUR_1_6` + 0.261242478886 * `HL_1_relu`.`NEUR_1_7` + 0.162305050061 * `HL_1_relu`.`NEUR_1_8` + 0.60791835029 AS `NEUR_2_5`, 0.0691720442595 * `HL_1_relu`.`NEUR_1_1` + -0.132897444055 * `HL_1_relu`.`NEUR_1_2` + -0.284072653253 * `HL_1_relu`.`NEUR_1_3` + -0.0164306585347 * `HL_1_relu`.`NEUR_1_4` + 0.106271849727 * `HL_1_relu`.`NEUR_1_5` + 0.0125143669332 * `HL_1_relu`.`NEUR_1_6` + 0.0145409034973 * `HL_1_relu`.`NEUR_1_7` + -0.10083379003 * `HL_1_relu`.`NEUR_1_8` + -0.145078702497 AS `NEUR_2_6`, -0.330207533217 * `HL_1_relu`.`NEUR_1_1` + -0.0497275841298 * `HL_1_relu`.`NEUR_1_2` + 0.509074081969 * `HL_1_relu`.`NEUR_1_3` + -0.490307752751 * `HL_1_relu`.`NEUR_1_4` + -0.243411769029 * `HL_1_relu`.`NEUR_1_5` + 0.0879888543336 * `HL_1_relu`.`NEUR_1_6` + 0.261872594149 * `HL_1_relu`.`NEUR_1_7` + 0.116346073248 * `HL_1_relu`.`NEUR_1_8` + -0.0830712814137 AS `NEUR_2_7`, -0.573212121757 * `HL_1_relu`.`NEUR_1_1` + -0.169445939309 * `HL_1_relu`.`NEUR_1_2` + 0.0708046557517 * `HL_1_relu`.`NEUR_1_3` + 0.235469643753 * `HL_1_relu`.`NEUR_1_4` + -0.282527140868 * `HL_1_relu`.`NEUR_1_5` + 0.162086473582 * `HL_1_relu`.`NEUR_1_6` + 0.0864306928047 * `HL_1_relu`.`NEUR_1_7` + 0.0384424502899 * `HL_1_relu`.`NEUR_1_8` + 0.564121616991 AS `NEUR_2_8`, -0.0800338885662 * `HL_1_relu`.`NEUR_1_1` + -0.221691988891 * `HL_1_relu`.`NEUR_1_2` + 0.358240246664 * `HL_1_relu`.`NEUR_1_3` + 0.00914109689626 * `HL_1_relu`.`NEUR_1_4` + 0.0167703966942 * `HL_1_relu`.`NEUR_1_5` + -0.16049213809 * `HL_1_relu`.`NEUR_1_6` + 0.113959725946 * `HL_1_relu`.`NEUR_1_7` + -0.244783947508 * `HL_1_relu`.`NEUR_1_8` + 0.335418709546 AS `NEUR_2_9`, -0.220744226583 * `HL_1_relu`.`NEUR_1_1` + -0.470174257365 * `HL_1_relu`.`NEUR_1_2` + 0.0665340148214 * `HL_1_relu`.`NEUR_1_3` + -0.31582246536 * `HL_1_relu`.`NEUR_1_4` + -0.555447507371 * `HL_1_relu`.`NEUR_1_5` + 0.440643336761 * `HL_1_relu`.`NEUR_1_6` + 7.82267785284e-06 * `HL_1_relu`.`NEUR_1_7` + -0.277960924231 * `HL_1_relu`.`NEUR_1_8` + 0.168971977394 AS `NEUR_2_10`, 0.145896095483 * `HL_1_relu`.`NEUR_1_1` + 0.102933766474 * `HL_1_relu`.`NEUR_1_2` + 0.196965324841 * `HL_1_relu`.`NEUR_1_3` + -0.0489149093417 * `HL_1_relu`.`NEUR_1_4` + 0.294222514514 * `HL_1_relu`.`NEUR_1_5` + -0.129935357571 * `HL_1_relu`.`NEUR_1_6` + 0.337031216421 * `HL_1_relu`.`NEUR_1_7` + 0.003921863193 * `HL_1_relu`.`NEUR_1_8` + -0.510962719482 AS `NEUR_2_11`, 0.15407706005 * `HL_1_relu`.`NEUR_1_1` + -0.298177629452 * `HL_1_relu`.`NEUR_1_2` + -0.3086041082 * `HL_1_relu`.`NEUR_1_3` + -0.342783141095 * `HL_1_relu`.`NEUR_1_4` + -0.525013032883 * `HL_1_relu`.`NEUR_1_5` + 0.464490866182 * `HL_1_relu`.`NEUR_1_6` + 0.049799554914 * `HL_1_relu`.`NEUR_1_7` + 0.149406061796 * `HL_1_relu`.`NEUR_1_8` + 0.61047155573 AS `NEUR_2_12` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5`, CASE WHEN (`HL_BA_2`.`NEUR_2_6` >= 0.0) THEN `HL_BA_2`.`NEUR_2_6` ELSE 0.0 END AS `NEUR_2_6`, CASE WHEN (`HL_BA_2`.`NEUR_2_7` >= 0.0) THEN `HL_BA_2`.`NEUR_2_7` ELSE 0.0 END AS `NEUR_2_7`, CASE WHEN (`HL_BA_2`.`NEUR_2_8` >= 0.0) THEN `HL_BA_2`.`NEUR_2_8` ELSE 0.0 END AS `NEUR_2_8`, CASE WHEN (`HL_BA_2`.`NEUR_2_9` >= 0.0) THEN `HL_BA_2`.`NEUR_2_9` ELSE 0.0 END AS `NEUR_2_9`, CASE WHEN (`HL_BA_2`.`NEUR_2_10` >= 0.0) THEN `HL_BA_2`.`NEUR_2_10` ELSE 0.0 END AS `NEUR_2_10`, CASE WHEN (`HL_BA_2`.`NEUR_2_11` >= 0.0) THEN `HL_BA_2`.`NEUR_2_11` ELSE 0.0 END AS `NEUR_2_11`, CASE WHEN (`HL_BA_2`.`NEUR_2_12` >= 0.0) THEN `HL_BA_2`.`NEUR_2_12` ELSE 0.0 END AS `NEUR_2_12` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, 0.235187602449 * `HL_2_relu`.`NEUR_2_1` + 0.30545380507 * `HL_2_relu`.`NEUR_2_2` + -0.440499933212 * `HL_2_relu`.`NEUR_2_3` + 0.0139382575597 * `HL_2_relu`.`NEUR_2_4` + 0.464217030319 * `HL_2_relu`.`NEUR_2_5` + 0.303413847054 * `HL_2_relu`.`NEUR_2_6` + -0.606694177082 * `HL_2_relu`.`NEUR_2_7` + -0.620651101328 * `HL_2_relu`.`NEUR_2_8` + -0.226956923631 * `HL_2_relu`.`NEUR_2_9` + -0.316839799765 * `HL_2_relu`.`NEUR_2_10` + 0.207574717788 * `HL_2_relu`.`NEUR_2_11` + 0.32751740434 * `HL_2_relu`.`NEUR_2_12` + 0.421977192359 AS `NEUR_3_1`, 0.670634441591 * `HL_2_relu`.`NEUR_2_1` + -0.269845763279 * `HL_2_relu`.`NEUR_2_2` + 0.407274317514 * `HL_2_relu`.`NEUR_2_3` + -0.026968912299 * `HL_2_relu`.`NEUR_2_4` + -0.278915373865 * `HL_2_relu`.`NEUR_2_5` + 0.433188859138 * `HL_2_relu`.`NEUR_2_6` + -0.187946164567 * `HL_2_relu`.`NEUR_2_7` + 0.0986017534446 * `HL_2_relu`.`NEUR_2_8` + -0.440368771843 * `HL_2_relu`.`NEUR_2_9` + -0.225823364579 * `HL_2_relu`.`NEUR_2_10` + -0.545047593074 * `HL_2_relu`.`NEUR_2_11` + -0.0940143733374 * `HL_2_relu`.`NEUR_2_12` + 0.176053405525 AS `NEUR_3_2`, -0.409964115011 * `HL_2_relu`.`NEUR_2_1` + 0.0427298962579 * `HL_2_relu`.`NEUR_2_2` + 0.350909592082 * `HL_2_relu`.`NEUR_2_3` + -0.379601497852 * `HL_2_relu`.`NEUR_2_4` + 0.0722089046665 * `HL_2_relu`.`NEUR_2_5` + 0.291067669664 * `HL_2_relu`.`NEUR_2_6` + 0.279935710079 * `HL_2_relu`.`NEUR_2_7` + -0.296328936681 * `HL_2_relu`.`NEUR_2_8` + 0.219840307904 * `HL_2_relu`.`NEUR_2_9` + 0.506802494204 * `HL_2_relu`.`NEUR_2_10` + -0.371221329781 * `HL_2_relu`.`NEUR_2_11` + -0.514169871543 * `HL_2_relu`.`NEUR_2_12` + 0.220614308305 AS `NEUR_3_3` 
FROM `HL_2_relu`), 
`OL_softmax` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1`, `OL_BA`.`NEUR_3_2` AS `NEUR_3_2`, `OL_BA`.`NEUR_3_3` AS `NEUR_3_3` 
FROM `OL_BA`), 
orig_cte AS 
(SELECT `OL_softmax`.`KEY` AS `KEY`, `OL_softmax`.`NEUR_3_1` AS `Score_0`, `OL_softmax`.`NEUR_3_2` AS `Score_1`, `OL_softmax`.`NEUR_3_3` AS `Score_2`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `Decision` 
FROM `OL_softmax`), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1`, exp(score_max.`Score_2` - score_max.`max_Score`) AS `exp_delta_Score_2` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`LogProba` AS `LogProba`, soft_scu.`Proba` AS `Proba`, soft_scu.`Score` AS `Score`, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_comp.`KEY` AS `KEY`, 0 AS class, score_soft_max_comp.`LogProba_0` AS `LogProba`, score_soft_max_comp.`Proba_0` AS `Proba`, score_soft_max_comp.`Score_0` AS `Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.`KEY` AS `KEY`, 1 AS class, score_soft_max_comp.`LogProba_1` AS `LogProba`, score_soft_max_comp.`Proba_1` AS `Proba`, score_soft_max_comp.`Score_1` AS `Score`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.`KEY` AS `KEY`, 2 AS class, score_soft_max_comp.`LogProba_2` AS `LogProba`, score_soft_max_comp.`Proba_2` AS `Proba`, score_soft_max_comp.`Score_2` AS `Score`, score_soft_max_comp.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp.`KEY` AS `KEY`, score_soft_max_comp.`Score_0` AS `Score_0`, score_soft_max_comp.`Score_1` AS `Score_1`, score_soft_max_comp.`Score_2` AS `Score_2`, score_soft_max_comp.`Proba_0` AS `Proba_0`, score_soft_max_comp.`Proba_1` AS `Proba_1`, score_soft_max_comp.`Proba_2` AS `Proba_2`, score_soft_max_comp.`LogProba_0` AS `LogProba_0`, score_soft_max_comp.`LogProba_1` AS `LogProba_1`, score_soft_max_comp.`LogProba_2` AS `LogProba_2`, score_soft_max_comp.`Decision` AS `Decision`, score_soft_max_comp.`max_LogProba` AS `max_LogProba`, score_soft_max_comp.`max_Proba` AS `max_Proba`, score_soft_max_comp.`max_Score` AS `max_Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_comp.`exp_delta_Score_2` AS `exp_delta_Score_2`, (SELECT sum(score_class_union_soft.`exp_delta_Score`) AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp.`KEY` = score_class_union_soft.`KEY`) AS `sum_ExpDeltaScore` 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`max_LogProba` AS `max_LogProba`, score_soft_max.`max_Proba` AS `max_Proba`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max.`max_LogProba` = score_class_union.`LogProba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max.`max_Proba` = score_class_union.`Proba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max.`max_Score` = score_class_union.`Score` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2` 
FROM score_soft_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte