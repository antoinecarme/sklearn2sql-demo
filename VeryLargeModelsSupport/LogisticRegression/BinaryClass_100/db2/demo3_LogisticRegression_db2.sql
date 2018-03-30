-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.3310762052879447 * "ADS"."Feature_0" + 0.14325253176522348 * "ADS"."Feature_1" + -0.08611287237220629 * "ADS"."Feature_2" + 0.0002207421196659975 * "ADS"."Feature_3" + -1.0561475720862195 * "ADS"."Feature_4" + 0.579859388616776 * "ADS"."Feature_5" + -0.09356294406553792 * "ADS"."Feature_6" + -0.08970233298463333 * "ADS"."Feature_7" + 0.23229704750351354 * "ADS"."Feature_8" + 0.21286610424016242 * "ADS"."Feature_9" + -0.15147281948897193 * "ADS"."Feature_10" + 0.07562311925461199 * "ADS"."Feature_11" + 0.18273876119325042 * "ADS"."Feature_12" + 0.09384710816605847 * "ADS"."Feature_13" + -0.232646294284842 * "ADS"."Feature_14" + -0.38006271543508435 * "ADS"."Feature_15" + 0.09413917977737316 * "ADS"."Feature_16" + 0.18384376367314006 * "ADS"."Feature_17" + -0.32180082257866277 * "ADS"."Feature_18" + -0.11353339059155566 * "ADS"."Feature_19" + 0.0685314663620175 * "ADS"."Feature_20" + -0.07487395525407797 * "ADS"."Feature_21" + -0.13152143228721622 * "ADS"."Feature_22" + -0.05851036519956997 * "ADS"."Feature_23" + -0.061044801479436056 * "ADS"."Feature_24" + -0.36510907174668406 * "ADS"."Feature_25" + -0.1382954882207629 * "ADS"."Feature_26" + 0.24459331068399295 * "ADS"."Feature_27" + -0.28970888091701447 * "ADS"."Feature_28" + 0.08986354957703128 * "ADS"."Feature_29" + 0.03289129048454436 * "ADS"."Feature_30" + -0.26613048149410795 * "ADS"."Feature_31" + 0.14375433819173525 * "ADS"."Feature_32" + -0.45820552877175835 * "ADS"."Feature_33" + -0.4363421197624709 * "ADS"."Feature_34" + 0.02492693173520409 * "ADS"."Feature_35" + -0.0951628807304622 * "ADS"."Feature_36" + 0.1335366903045361 * "ADS"."Feature_37" + -0.02654650735484618 * "ADS"."Feature_38" + -0.19453886616038318 * "ADS"."Feature_39" + -0.06932516660642397 * "ADS"."Feature_40" + -0.18433885051577165 * "ADS"."Feature_41" + -0.050274447460075054 * "ADS"."Feature_42" + 0.002963533019776128 * "ADS"."Feature_43" + -0.48455832174931823 * "ADS"."Feature_44" + -0.20259518865145165 * "ADS"."Feature_45" + 0.14438343478219176 * "ADS"."Feature_46" + -0.0068745985240159 * "ADS"."Feature_47" + -0.33147327297235046 * "ADS"."Feature_48" + -0.19074531061387548 * "ADS"."Feature_49" + 0.005225071149984537 * "ADS"."Feature_50" + 0.0704284182514753 * "ADS"."Feature_51" + -0.1712898732127352 * "ADS"."Feature_52" + 0.2702297208270306 * "ADS"."Feature_53" + 0.0008746664367837815 * "ADS"."Feature_54" + 0.036896908963382054 * "ADS"."Feature_55" + 0.2506480278494163 * "ADS"."Feature_56" + 1.1627522749763588 * "ADS"."Feature_57" + 0.0017363078699938364 * "ADS"."Feature_58" + 0.21017045091113135 * "ADS"."Feature_59" + -0.49832825402355335 * "ADS"."Feature_60" + -0.014571354992441983 * "ADS"."Feature_61" + 0.1369285953448335 * "ADS"."Feature_62" + 0.23154438455294937 * "ADS"."Feature_63" + 0.15508557547218085 * "ADS"."Feature_64" + 0.12882964628436927 * "ADS"."Feature_65" + -0.133171278100268 * "ADS"."Feature_66" + 0.7526238147004157 * "ADS"."Feature_67" + -0.3638816258681595 * "ADS"."Feature_68" + -0.16007422483902378 * "ADS"."Feature_69" + 0.07985297867566696 * "ADS"."Feature_70" + -0.33688978363318733 * "ADS"."Feature_71" + -0.1428356861932474 * "ADS"."Feature_72" + -0.382765956613322 * "ADS"."Feature_73" + 0.13650937247756098 * "ADS"."Feature_74" + 0.15985432708487063 * "ADS"."Feature_75" + 0.13826945240993707 * "ADS"."Feature_76" + -0.4357541146604896 * "ADS"."Feature_77" + 0.07884377624250666 * "ADS"."Feature_78" + 0.0846755668812626 * "ADS"."Feature_79" + -0.2578234046118747 * "ADS"."Feature_80" + 0.012393807582453523 * "ADS"."Feature_81" + 0.25706717260037154 * "ADS"."Feature_82" + 0.07078576998152182 * "ADS"."Feature_83" + 0.17827318098103676 * "ADS"."Feature_84" + -0.31319200470107406 * "ADS"."Feature_85" + -0.16661923512341945 * "ADS"."Feature_86" + 0.12641284968247413 * "ADS"."Feature_87" + 0.24969316049153273 * "ADS"."Feature_88" + -0.1592382197996888 * "ADS"."Feature_89" + -0.4180580132814978 * "ADS"."Feature_90" + -0.2632247958422403 * "ADS"."Feature_91" + 0.37889774452311786 * "ADS"."Feature_92" + -0.12634879610630753 * "ADS"."Feature_93" + -0.19303290840917162 * "ADS"."Feature_94" + -0.5477676184326586 * "ADS"."Feature_95" + -0.2043982335238068 * "ADS"."Feature_96" + 0.05139355477438413 * "ADS"."Feature_97" + -0.006482931473948919 * "ADS"."Feature_98" + -0.13573238176030297 * "ADS"."Feature_99" + 0.14566180319115182 AS lincomb 
FROM "BINARYCLASS_100" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) AS "DecisionProba" 
FROM linear_model_cte