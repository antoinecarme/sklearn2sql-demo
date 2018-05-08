-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : RidgeClassifier
-- Dataset : BinaryClass_100
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9`, `ADS`.`Feature_10` AS `Feature_10`, `ADS`.`Feature_11` AS `Feature_11`, `ADS`.`Feature_12` AS `Feature_12`, `ADS`.`Feature_13` AS `Feature_13`, `ADS`.`Feature_14` AS `Feature_14`, `ADS`.`Feature_15` AS `Feature_15`, `ADS`.`Feature_16` AS `Feature_16`, `ADS`.`Feature_17` AS `Feature_17`, `ADS`.`Feature_18` AS `Feature_18`, `ADS`.`Feature_19` AS `Feature_19`, `ADS`.`Feature_20` AS `Feature_20`, `ADS`.`Feature_21` AS `Feature_21`, `ADS`.`Feature_22` AS `Feature_22`, `ADS`.`Feature_23` AS `Feature_23`, `ADS`.`Feature_24` AS `Feature_24`, `ADS`.`Feature_25` AS `Feature_25`, `ADS`.`Feature_26` AS `Feature_26`, `ADS`.`Feature_27` AS `Feature_27`, `ADS`.`Feature_28` AS `Feature_28`, `ADS`.`Feature_29` AS `Feature_29`, `ADS`.`Feature_30` AS `Feature_30`, `ADS`.`Feature_31` AS `Feature_31`, `ADS`.`Feature_32` AS `Feature_32`, `ADS`.`Feature_33` AS `Feature_33`, `ADS`.`Feature_34` AS `Feature_34`, `ADS`.`Feature_35` AS `Feature_35`, `ADS`.`Feature_36` AS `Feature_36`, `ADS`.`Feature_37` AS `Feature_37`, `ADS`.`Feature_38` AS `Feature_38`, `ADS`.`Feature_39` AS `Feature_39`, `ADS`.`Feature_40` AS `Feature_40`, `ADS`.`Feature_41` AS `Feature_41`, `ADS`.`Feature_42` AS `Feature_42`, `ADS`.`Feature_43` AS `Feature_43`, `ADS`.`Feature_44` AS `Feature_44`, `ADS`.`Feature_45` AS `Feature_45`, `ADS`.`Feature_46` AS `Feature_46`, `ADS`.`Feature_47` AS `Feature_47`, `ADS`.`Feature_48` AS `Feature_48`, `ADS`.`Feature_49` AS `Feature_49`, `ADS`.`Feature_50` AS `Feature_50`, `ADS`.`Feature_51` AS `Feature_51`, `ADS`.`Feature_52` AS `Feature_52`, `ADS`.`Feature_53` AS `Feature_53`, `ADS`.`Feature_54` AS `Feature_54`, `ADS`.`Feature_55` AS `Feature_55`, `ADS`.`Feature_56` AS `Feature_56`, `ADS`.`Feature_57` AS `Feature_57`, `ADS`.`Feature_58` AS `Feature_58`, `ADS`.`Feature_59` AS `Feature_59`, `ADS`.`Feature_60` AS `Feature_60`, `ADS`.`Feature_61` AS `Feature_61`, `ADS`.`Feature_62` AS `Feature_62`, `ADS`.`Feature_63` AS `Feature_63`, `ADS`.`Feature_64` AS `Feature_64`, `ADS`.`Feature_65` AS `Feature_65`, `ADS`.`Feature_66` AS `Feature_66`, `ADS`.`Feature_67` AS `Feature_67`, `ADS`.`Feature_68` AS `Feature_68`, `ADS`.`Feature_69` AS `Feature_69`, `ADS`.`Feature_70` AS `Feature_70`, `ADS`.`Feature_71` AS `Feature_71`, `ADS`.`Feature_72` AS `Feature_72`, `ADS`.`Feature_73` AS `Feature_73`, `ADS`.`Feature_74` AS `Feature_74`, `ADS`.`Feature_75` AS `Feature_75`, `ADS`.`Feature_76` AS `Feature_76`, `ADS`.`Feature_77` AS `Feature_77`, `ADS`.`Feature_78` AS `Feature_78`, `ADS`.`Feature_79` AS `Feature_79`, `ADS`.`Feature_80` AS `Feature_80`, `ADS`.`Feature_81` AS `Feature_81`, `ADS`.`Feature_82` AS `Feature_82`, `ADS`.`Feature_83` AS `Feature_83`, `ADS`.`Feature_84` AS `Feature_84`, `ADS`.`Feature_85` AS `Feature_85`, `ADS`.`Feature_86` AS `Feature_86`, `ADS`.`Feature_87` AS `Feature_87`, `ADS`.`Feature_88` AS `Feature_88`, `ADS`.`Feature_89` AS `Feature_89`, `ADS`.`Feature_90` AS `Feature_90`, `ADS`.`Feature_91` AS `Feature_91`, `ADS`.`Feature_92` AS `Feature_92`, `ADS`.`Feature_93` AS `Feature_93`, `ADS`.`Feature_94` AS `Feature_94`, `ADS`.`Feature_95` AS `Feature_95`, `ADS`.`Feature_96` AS `Feature_96`, `ADS`.`Feature_97` AS `Feature_97`, `ADS`.`Feature_98` AS `Feature_98`, `ADS`.`Feature_99` AS `Feature_99` 
FROM `BinaryClass_100` AS `ADS`), 
linear_model_cte AS 
(SELECT linear_input.`KEY` AS `KEY`, 0.17517914364732629 * linear_input.`Feature_0` + -0.03060410221865563 * linear_input.`Feature_1` + 0.013048292812404966 * linear_input.`Feature_2` + -0.03301782295862629 * linear_input.`Feature_3` + -0.1978338562802537 * linear_input.`Feature_4` + 0.26075160577498996 * linear_input.`Feature_5` + -0.16393092642086216 * linear_input.`Feature_6` + 0.018133655929212122 * linear_input.`Feature_7` + 0.05680272960127944 * linear_input.`Feature_8` + 0.1088709173963052 * linear_input.`Feature_9` + -0.10863250138799074 * linear_input.`Feature_10` + -0.13483180030118463 * linear_input.`Feature_11` + 0.16885874534964745 * linear_input.`Feature_12` + 0.016636427773116053 * linear_input.`Feature_13` + -0.035954315123402816 * linear_input.`Feature_14` + -0.1399281740973628 * linear_input.`Feature_15` + 0.07061416540312666 * linear_input.`Feature_16` + 0.06705942477471367 * linear_input.`Feature_17` + -0.05006658752683313 * linear_input.`Feature_18` + -0.08649448245305041 * linear_input.`Feature_19` + 0.058638285421078976 * linear_input.`Feature_20` + 0.002209268868587272 * linear_input.`Feature_21` + -0.052715249226658656 * linear_input.`Feature_22` + -0.019959419499078382 * linear_input.`Feature_23` + 0.013894270036757982 * linear_input.`Feature_24` + -0.15587524661446087 * linear_input.`Feature_25` + -0.079039154172239 * linear_input.`Feature_26` + 0.1005187923330789 * linear_input.`Feature_27` + -0.158388505689969 * linear_input.`Feature_28` + 0.054444497520092505 * linear_input.`Feature_29` + -0.022012884693679957 * linear_input.`Feature_30` + -0.09503588254002517 * linear_input.`Feature_31` + 0.08039722271611854 * linear_input.`Feature_32` + -0.22832516555127472 * linear_input.`Feature_33` + -0.2115237028529116 * linear_input.`Feature_34` + -0.0049932486234527396 * linear_input.`Feature_35` + -0.08377775569338941 * linear_input.`Feature_36` + 0.01905042013142154 * linear_input.`Feature_37` + 0.023183402118698918 * linear_input.`Feature_38` + -0.023556992352540884 * linear_input.`Feature_39` + -0.03713078806363746 * linear_input.`Feature_40` + -0.08232887056972922 * linear_input.`Feature_41` + 0.010889567700114823 * linear_input.`Feature_42` + -0.07259789630813399 * linear_input.`Feature_43` + -0.1153652926086786 * linear_input.`Feature_44` + -0.05955624884505714 * linear_input.`Feature_45` + 0.023252326075353033 * linear_input.`Feature_46` + -0.018787486050584667 * linear_input.`Feature_47` + -0.17556939257975096 * linear_input.`Feature_48` + -0.040662307946067795 * linear_input.`Feature_49` + 0.008276776444444897 * linear_input.`Feature_50` + -0.05430258300000745 * linear_input.`Feature_51` + -0.11007797513159956 * linear_input.`Feature_52` + 0.21801060590377003 * linear_input.`Feature_53` + -0.006469700824778615 * linear_input.`Feature_54` + 0.26061853242534044 * linear_input.`Feature_55` + -0.026621111713788143 * linear_input.`Feature_56` + 0.21546388130051092 * linear_input.`Feature_57` + -0.03521819534250017 * linear_input.`Feature_58` + -0.009733329940215862 * linear_input.`Feature_59` + -0.22620736018314386 * linear_input.`Feature_60` + -0.09730745489651765 * linear_input.`Feature_61` + 0.03668041999367015 * linear_input.`Feature_62` + -0.027999614028931766 * linear_input.`Feature_63` + 0.012142117502516016 * linear_input.`Feature_64` + -0.028644305210258167 * linear_input.`Feature_65` + -0.15309086287563092 * linear_input.`Feature_66` + 0.34590290222500053 * linear_input.`Feature_67` + -0.0735581632935357 * linear_input.`Feature_68` + 0.07479850410571236 * linear_input.`Feature_69` + 0.10414765290461955 * linear_input.`Feature_70` + -0.1787859985056931 * linear_input.`Feature_71` + -0.1122861785550361 * linear_input.`Feature_72` + -0.18211094393494298 * linear_input.`Feature_73` + 0.13729203283251432 * linear_input.`Feature_74` + 0.03035603791340891 * linear_input.`Feature_75` + -0.02384004189144398 * linear_input.`Feature_76` + -0.08110247972758597 * linear_input.`Feature_77` + 0.0506367209327199 * linear_input.`Feature_78` + -0.07336828949202984 * linear_input.`Feature_79` + -0.08059751596378945 * linear_input.`Feature_80` + 0.013416092941177262 * linear_input.`Feature_81` + 0.13607703384455588 * linear_input.`Feature_82` + 0.12217638451363276 * linear_input.`Feature_83` + 0.04357259110471222 * linear_input.`Feature_84` + -0.146785152993407 * linear_input.`Feature_85` + -0.05243703507246893 * linear_input.`Feature_86` + 0.06260449268656576 * linear_input.`Feature_87` + 0.152207185099365 * linear_input.`Feature_88` + 0.021645701398735312 * linear_input.`Feature_89` + -0.18309611823490307 * linear_input.`Feature_90` + -0.09346012959015018 * linear_input.`Feature_91` + 0.13691293584013992 * linear_input.`Feature_92` + 0.001669235918754286 * linear_input.`Feature_93` + -0.08081628401068522 * linear_input.`Feature_94` + -0.13082798522838276 * linear_input.`Feature_95` + -0.112394124600519 * linear_input.`Feature_96` + 0.1445867231644381 * linear_input.`Feature_97` + -0.14488381075885792 * linear_input.`Feature_98` + 0.025262310241567443 * linear_input.`Feature_99` + 0.03480304043219827 AS lincomb 
FROM linear_input)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.lincomb AS `Score_0`, linear_model_cte.lincomb AS `Score_1`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS `Decision`, NULL AS `DecisionProba` 
FROM linear_model_cte