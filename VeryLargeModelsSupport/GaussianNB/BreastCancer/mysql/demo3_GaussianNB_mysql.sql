-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH `RawScores` AS 
(SELECT `ADS`.`KEY` AS `KEY`, NULL AS `LogProba_0`, NULL AS `Proba_0`, -1.0451236037171234 + (-0.5 * 4.172570201510648 - (0.5 * (`ADS`.`Feature_0` - 17.640437500000008) * (`ADS`.`Feature_0` - 17.640437500000008)) / 10.326290666987266) + (-0.5 * 4.452423362655724 - (0.5 * (`ADS`.`Feature_1` - 21.23356249999999) * (`ADS`.`Feature_1` - 21.23356249999999)) / 13.661016916987258) + (-0.5 * 8.015373857751564 - (0.5 * (`ADS`.`Feature_2` - 116.71625000000002) * (`ADS`.`Feature_2` - 116.71625000000002)) / 481.78443867089345) + (-0.5 * 13.695371221206408 - (0.5 * (`ADS`.`Feature_3` - 997.9731250000001) * (`ADS`.`Feature_3` - 997.9731250000001)) / 141138.1045367178) + (-0.5 * -5.781553259650073 - (0.5 * (`ADS`.`Feature_4` - 0.10367662500000004) * (`ADS`.`Feature_4` - 0.10367662500000004)) / 0.0004908213596233952) + (-0.5 * -3.8729872051781618 - (0.5 * (`ADS`.`Feature_5` - 0.14956893750000003) * (`ADS`.`Feature_5` - 0.14956893750000003)) / 0.0033098107330101125) + (-0.5 * -3.217293468649047 - (0.5 * (`ADS`.`Feature_6` - 0.16609156250000007) * (`ADS`.`Feature_6` - 0.16609156250000007)) / 0.006376279290447614) + (-0.5 * -4.667117616083856 - (0.5 * (`ADS`.`Feature_7` - 0.09101468749999998) * (`ADS`.`Feature_7` - 0.09101468749999998)) / 0.0014959487134163644) + (-0.5 * -4.96836689783642 - (0.5 * (`ADS`.`Feature_8` - 0.19494124999999993) * (`ADS`.`Feature_8` - 0.19494124999999993)) / 0.0011068424419515208) + (-0.5 * -6.0319855385011225 - (0.5 * (`ADS`.`Feature_9` - 0.06299824999999996) * (`ADS`.`Feature_9` - 0.06299824999999996)) / 0.0003820868554515203) + (-0.5 * -0.17494389131516314 - (0.5 * (`ADS`.`Feature_10` - 0.6418068749999999) * (`ADS`.`Feature_10` - 0.6418068749999999)) / 0.13361123090874846) + (-0.5 * 0.5216471040484074 - (0.5 * (`ADS`.`Feature_11` - 1.23094) * (`ADS`.`Feature_11` - 1.23094)) / 0.26814431291851415) + (-0.5 * 3.8601648854864283 - (0.5 * (`ADS`.`Feature_12` - 4.582681250000002) * (`ADS`.`Feature_12` - 4.582681250000002)) / 7.555591000541953) + (-0.5 * 10.234061575615794 - (0.5 * (`ADS`.`Feature_13` - 77.180875) * (`ADS`.`Feature_13` - 77.180875)) / 4430.131334467768) + (-0.5 * -6.185041885151993 - (0.5 * (`ADS`.`Feature_14` - 0.0068303437500000005) * (`ADS`.`Feature_14` - 0.0068303437500000005)) / 0.00032786161255210614) + (-0.5 * -5.530032132344976 - (0.5 * (`ADS`.`Feature_15` - 0.033086856250000005) * (`ADS`.`Feature_15` - 0.033086856250000005)) / 0.000631186485949606) + (-0.5 * -5.347943126320397 - (0.5 * (`ADS`.`Feature_16` - 0.042250062500000005) * (`ADS`.`Feature_16` - 0.042250062500000005)) / 0.0007572476641351138) + (-0.5 * -6.112545891822505 - (0.5 * (`ADS`.`Feature_17` - 0.015666206250000002) * (`ADS`.`Feature_17` - 0.015666206250000002)) / 0.00035251303480273116) + (-0.5 * -5.89704573381262 - (0.5 * (`ADS`.`Feature_18` - 0.0213653875) * (`ADS`.`Feature_18` - 0.0213653875)) / 0.0004372861375138639) + (-0.5 * -6.192682980938167 - (0.5 * (`ADS`.`Feature_19` - 0.0041392562500000025) * (`ADS`.`Feature_19` - 0.0041392562500000025)) / 0.00032536593755460615) + (-0.5 * 4.706163810435783 - (0.5 * (`ADS`.`Feature_20` - 21.339374999999993) * (`ADS`.`Feature_20` - 21.339374999999993)) / 17.606827342768515) + (-0.5 * 5.158822580111128 - (0.5 * (`ADS`.`Feature_21` - 28.707562499999995) * (`ADS`.`Feature_21` - 28.707562499999995)) / 27.686516166987257) + (-0.5 * 8.577149859442487 - (0.5 * (`ADS`.`Feature_22` - 143.08187499999994) * (`ADS`.`Feature_22` - 143.08187499999994)) / 844.9460617177685) + (-0.5 * 14.620602684679373 - (0.5 * (`ADS`.`Feature_23` - 1445.1737500000002) * (`ADS`.`Feature_23` - 1445.1737500000002)) / 356014.1008824211) + (-0.5 * -5.264825005222549 - (0.5 * (`ADS`.`Feature_24` - 0.14505743749999986) * (`ADS`.`Feature_24` - 0.14505743749999986)) / 0.0008228784400726135) + (-0.5 * -1.7616770996391198 - (0.5 * (`ADS`.`Feature_25` - 0.37679406249999975) * (`ADS`.`Feature_25` - 0.37679406249999975)) / 0.027335907006385118) + (-0.5 * -1.5698382196783103 - (0.5 * (`ADS`.`Feature_26` - 0.44977674999999967) * (`ADS`.`Feature_26` - 0.44977674999999967)) / 0.0331167763679515) + (-0.5 * -4.198949608958731 - (0.5 * (`ADS`.`Feature_27` - 0.18633093750000013) * (`ADS`.`Feature_27` - 0.18633093750000013)) / 0.002389128377010113) + (-0.5 * -3.2488521824643195 - (0.5 * (`ADS`.`Feature_28` - 0.32580749999999986) * (`ADS`.`Feature_28` - 0.32580749999999986)) / 0.0061781942122640186) + (-0.5 * -5.388172426262818 - (0.5 * (`ADS`.`Feature_29` - 0.09126924999999997) * (`ADS`.`Feature_29` - 0.09126924999999997)) / 0.0007273887492015202) AS `Score_0`, NULL AS `LogProba_1`, NULL AS `Proba_1`, -0.43332206261113054 + (-0.5 * 2.9904215044750164 - (0.5 * (`ADS`.`Feature_0` - 12.145386440677964) * (`ADS`.`Feature_0` - 12.145386440677964)) / 3.1662389679554206) + (-0.5 * 4.564659847014308 - (0.5 * (`ADS`.`Feature_1` - 17.84881355932203) * (`ADS`.`Feature_1` - 17.84881355932203)) / 15.28363702490457) + (-0.5 * 6.777260904754837 - (0.5 * (`ADS`.`Feature_2` - 78.0729152542372) * (`ADS`.`Feature_2` - 78.0729152542372)) / 139.68415501858448) + (-0.5 * 11.62865656487327 - (0.5 * (`ADS`.`Feature_3` - 462.7613559322033) * (`ADS`.`Feature_3` - 462.7613559322033)) / 17868.228997610935) + (-0.5 * -5.77001182544145 - (0.5 * (`ADS`.`Feature_4` - 0.09248705084745759) * (`ADS`.`Feature_4` - 0.09248705084745759)) / 0.0004965189580368584) + (-0.5 * -4.737734563179293 - (0.5 * (`ADS`.`Feature_5` - 0.07992647457627115) * (`ADS`.`Feature_5` - 0.07992647457627115)) / 0.0013939530746447297) + (-0.5 * -4.228768891278335 - (0.5 * (`ADS`.`Feature_6` - 0.04604985999999998) * (`ADS`.`Feature_6` - 0.04604985999999998)) / 0.0023189379977747223) + (-0.5 * -5.6414163854194275 - (0.5 * (`ADS`.`Feature_7` - 0.025466481355932213) * (`ADS`.`Feature_7` - 0.025466481355932213)) / 0.0005646562314924864) + (-0.5 * -5.134383993548121 - (0.5 * (`ADS`.`Feature_8` - 0.1743464406779661) * (`ADS`.`Feature_8` - 0.1743464406779661)) / 0.0009375306944045692) + (-0.5 * -6.078817030098811 - (0.5 * (`ADS`.`Feature_9` - 0.06290888135593216) * (`ADS`.`Feature_9` - 0.06290888135593216)) / 0.00036460568751689297) + (-0.5 * -2.4424241701633846 - (0.5 * (`ADS`.`Feature_10` - 0.284146779661017) * (`ADS`.`Feature_10` - 0.284146779661017)) / 0.013838492798397668) + (-0.5 * 0.6294367395246522 - (0.5 * (`ADS`.`Feature_11` - 1.2095464406779655) * (`ADS`.`Feature_11` - 1.2095464406779655)) / 0.2986627325927097) + (-0.5 * 1.3736697138309029 - (0.5 * (`ADS`.`Feature_12` - 1.9954552542372879) * (`ADS`.`Feature_12` - 1.9954552542372879)) / 0.628633192238788) + (-0.5 * 6.242633932627197 - (0.5 * (`ADS`.`Feature_13` - 21.19121355932202) * (`ADS`.`Feature_13` - 21.19121355932202)) / 81.83924253948085) + (-0.5 * -6.1766345823500615 - (0.5 * (`ADS`.`Feature_14` - 0.007178345762711861) * (`ADS`.`Feature_14` - 0.007178345762711861)) / 0.00033062966402497686) + (-0.5 * -5.575707327126337 - (0.5 * (`ADS`.`Feature_15` - 0.021489715254237294) * (`ADS`.`Feature_15` - 0.021489715254237294)) / 0.0006030054075481944) + (-0.5 * -4.635681829545936 - (0.5 * (`ADS`.`Feature_16` - 0.026439496949152534) * (`ADS`.`Feature_16` - 0.026439496949152534)) / 0.0015437219991494353) + (-0.5 * -6.1019797329933265 - (0.5 * (`ADS`.`Feature_17` - 0.00996893220338983) * (`ADS`.`Feature_17` - 0.00996893220338983)) / 0.00035625749093993233) + (-0.5 * -6.0584387539077 - (0.5 * (`ADS`.`Feature_18` - 0.020641725423728836) * (`ADS`.`Feature_18` - 0.020641725423728836)) / 0.0003721119454555773) + (-0.5 * -6.1757690266447876 - (0.5 * (`ADS`.`Feature_19` - 0.0036877969491525436) * (`ADS`.`Feature_19` - 0.0036877969491525436)) / 0.0003309159663044177) + (-0.5 * 3.2138598030801484 - (0.5 * (`ADS`.`Feature_20` - 13.378247457627124) * (`ADS`.`Feature_20` - 13.378247457627124)) / 3.9589654323277315) + (-0.5 * 5.211555485583606 - (0.5 * (`ADS`.`Feature_21` - 23.397932203389832) * (`ADS`.`Feature_21` - 23.397932203389832)) / 29.185687038119188) + (-0.5 * 7.06028716211734 - (0.5 * (`ADS`.`Feature_22` - 86.93901694915259) * (`ADS`.`Feature_22` - 86.93901694915259)) / 185.38043068649608) + (-0.5 * 12.035414914018736 - (0.5 * (`ADS`.`Feature_23` - 559.3738983050844) * (`ADS`.`Feature_23` - 559.3738983050844)) / 26837.02780967645) + (-0.5 * -5.424741399865948 - (0.5 * (`ADS`.`Feature_24` - 0.12465203389830506) * (`ADS`.`Feature_24` - 0.12465203389830506)) / 0.0007012693792077864) + (-0.5 * -2.983144254489076 - (0.5 * (`ADS`.`Feature_25` - 0.18110396610169477) * (`ADS`.`Feature_25` - 0.18110396610169477)) / 0.008058552566597618) + (-0.5 * -2.0663337838174827 - (0.5 * (`ADS`.`Feature_26` - 0.16549405084745772) * (`ADS`.`Feature_26` - 0.16549405084745772)) / 0.020156854994070727) + (-0.5 * -4.6266459246011795 - (0.5 * (`ADS`.`Feature_27` - 0.07397993559322037) * (`ADS`.`Feature_27` - 0.07397993559322037)) / 0.0015577341352217375) + (-0.5 * -4.362958819109133 - (0.5 * (`ADS`.`Feature_28` - 0.27025220338983036) * (`ADS`.`Feature_28` - 0.27025220338983036)) / 0.002027734973404855) + (-0.5 * -5.759377683054396 - (0.5 * (`ADS`.`Feature_29` - 0.07950433898305088) * (`ADS`.`Feature_29` - 0.07950433898305088)) / 0.000501827185534704) AS `Score_1` 
FROM `BreastCancer` AS `ADS`), 
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