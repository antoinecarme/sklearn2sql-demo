-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.17517914364732629 * "ADS"."Feature_0" + -0.03060410221865563 * "ADS"."Feature_1" + 0.013048292812404966 * "ADS"."Feature_2" + -0.03301782295862629 * "ADS"."Feature_3" + -0.1978338562802537 * "ADS"."Feature_4" + 0.26075160577498996 * "ADS"."Feature_5" + -0.16393092642086216 * "ADS"."Feature_6" + 0.018133655929212122 * "ADS"."Feature_7" + 0.05680272960127944 * "ADS"."Feature_8" + 0.1088709173963052 * "ADS"."Feature_9" + -0.10863250138799074 * "ADS"."Feature_10" + -0.13483180030118463 * "ADS"."Feature_11" + 0.16885874534964745 * "ADS"."Feature_12" + 0.016636427773116053 * "ADS"."Feature_13" + -0.035954315123402816 * "ADS"."Feature_14" + -0.1399281740973628 * "ADS"."Feature_15" + 0.07061416540312666 * "ADS"."Feature_16" + 0.06705942477471367 * "ADS"."Feature_17" + -0.05006658752683313 * "ADS"."Feature_18" + -0.08649448245305041 * "ADS"."Feature_19" + 0.058638285421078976 * "ADS"."Feature_20" + 0.002209268868587272 * "ADS"."Feature_21" + -0.052715249226658656 * "ADS"."Feature_22" + -0.019959419499078382 * "ADS"."Feature_23" + 0.013894270036757982 * "ADS"."Feature_24" + -0.15587524661446087 * "ADS"."Feature_25" + -0.079039154172239 * "ADS"."Feature_26" + 0.1005187923330789 * "ADS"."Feature_27" + -0.158388505689969 * "ADS"."Feature_28" + 0.054444497520092505 * "ADS"."Feature_29" + -0.022012884693679957 * "ADS"."Feature_30" + -0.09503588254002517 * "ADS"."Feature_31" + 0.08039722271611854 * "ADS"."Feature_32" + -0.22832516555127472 * "ADS"."Feature_33" + -0.2115237028529116 * "ADS"."Feature_34" + -0.0049932486234527396 * "ADS"."Feature_35" + -0.08377775569338941 * "ADS"."Feature_36" + 0.01905042013142154 * "ADS"."Feature_37" + 0.023183402118698918 * "ADS"."Feature_38" + -0.023556992352540884 * "ADS"."Feature_39" + -0.03713078806363746 * "ADS"."Feature_40" + -0.08232887056972922 * "ADS"."Feature_41" + 0.010889567700114823 * "ADS"."Feature_42" + -0.07259789630813399 * "ADS"."Feature_43" + -0.1153652926086786 * "ADS"."Feature_44" + -0.05955624884505714 * "ADS"."Feature_45" + 0.023252326075353033 * "ADS"."Feature_46" + -0.018787486050584667 * "ADS"."Feature_47" + -0.17556939257975096 * "ADS"."Feature_48" + -0.040662307946067795 * "ADS"."Feature_49" + 0.008276776444444897 * "ADS"."Feature_50" + -0.05430258300000745 * "ADS"."Feature_51" + -0.11007797513159956 * "ADS"."Feature_52" + 0.21801060590377003 * "ADS"."Feature_53" + -0.006469700824778615 * "ADS"."Feature_54" + 0.26061853242534044 * "ADS"."Feature_55" + -0.026621111713788143 * "ADS"."Feature_56" + 0.21546388130051092 * "ADS"."Feature_57" + -0.03521819534250017 * "ADS"."Feature_58" + -0.009733329940215862 * "ADS"."Feature_59" + -0.22620736018314386 * "ADS"."Feature_60" + -0.09730745489651765 * "ADS"."Feature_61" + 0.03668041999367015 * "ADS"."Feature_62" + -0.027999614028931766 * "ADS"."Feature_63" + 0.012142117502516016 * "ADS"."Feature_64" + -0.028644305210258167 * "ADS"."Feature_65" + -0.15309086287563092 * "ADS"."Feature_66" + 0.34590290222500053 * "ADS"."Feature_67" + -0.0735581632935357 * "ADS"."Feature_68" + 0.07479850410571236 * "ADS"."Feature_69" + 0.10414765290461955 * "ADS"."Feature_70" + -0.1787859985056931 * "ADS"."Feature_71" + -0.1122861785550361 * "ADS"."Feature_72" + -0.18211094393494298 * "ADS"."Feature_73" + 0.13729203283251432 * "ADS"."Feature_74" + 0.03035603791340891 * "ADS"."Feature_75" + -0.02384004189144398 * "ADS"."Feature_76" + -0.08110247972758597 * "ADS"."Feature_77" + 0.0506367209327199 * "ADS"."Feature_78" + -0.07336828949202984 * "ADS"."Feature_79" + -0.08059751596378945 * "ADS"."Feature_80" + 0.013416092941177262 * "ADS"."Feature_81" + 0.13607703384455588 * "ADS"."Feature_82" + 0.12217638451363276 * "ADS"."Feature_83" + 0.04357259110471222 * "ADS"."Feature_84" + -0.146785152993407 * "ADS"."Feature_85" + -0.05243703507246893 * "ADS"."Feature_86" + 0.06260449268656576 * "ADS"."Feature_87" + 0.152207185099365 * "ADS"."Feature_88" + 0.021645701398735312 * "ADS"."Feature_89" + -0.18309611823490307 * "ADS"."Feature_90" + -0.09346012959015018 * "ADS"."Feature_91" + 0.13691293584013992 * "ADS"."Feature_92" + 0.001669235918754286 * "ADS"."Feature_93" + -0.08081628401068522 * "ADS"."Feature_94" + -0.13082798522838276 * "ADS"."Feature_95" + -0.112394124600519 * "ADS"."Feature_96" + 0.1445867231644381 * "ADS"."Feature_97" + -0.14488381075885792 * "ADS"."Feature_98" + 0.025262310241567443 * "ADS"."Feature_99" + 0.03480304043219827 AS lincomb 
FROM "BinaryClass_100" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM linear_model_cte