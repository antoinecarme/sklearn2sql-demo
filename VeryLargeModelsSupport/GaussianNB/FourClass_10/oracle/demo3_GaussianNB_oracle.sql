-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "RawScores" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_0", CAST(NULL AS BINARY_DOUBLE) AS "Proba_0", -1.491654876777717 + (-0.5 * 2.2795682345573915 - (0.5 * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - 0.12197232402085767) * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - 0.12197232402085767)) / 1.5553353291646597) + (-0.5 * 2.0987268150414904 - (0.5 * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - -0.2042090641433511) * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - -0.2042090641433511)) / 1.2980326196044893) + (-0.5 * 1.950790204308714 - (0.5 * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - -0.17866802296600057) * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - -0.17866802296600057)) / 1.119534683590659) + (-0.5 * 1.6239579730545783 - (0.5 * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - -0.33848916280925834) * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - -0.33848916280925834)) / 0.807413707514524) + (-0.5 * 1.6432175720543079 - (0.5 * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - 0.692046433348698) * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - 0.692046433348698)) / 0.8231148856087814) + (-0.5 * 0.5906803285262583 - (0.5 * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - -0.2328895438714148) * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - -0.2328895438714148)) / 0.2873090716734153) + (-0.5 * 0.5992575794500339 - (0.5 * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - 0.14890501454364152) * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - 0.14890501454364152)) / 0.28978399250919723) + (-0.5 * 2.512235856273208 - (0.5 * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - 0.3442614656998575) * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - 0.3442614656998575)) / 1.9627740217881728) + (-0.5 * 1.9784045837791924 - (0.5 * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - 0.48106253993680564) * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - 0.48106253993680564)) / 1.150880748340327) + (-0.5 * 2.01066944059928 - (0.5 * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.21072572298483708) * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.21072572298483708)) / 1.1886192914192353) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_1", CAST(NULL AS BINARY_DOUBLE) AS "Proba_1", -1.3862943611198906 + (-0.5 * 1.542361750008069 - (0.5 * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - -0.05580445711365931) * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - -0.05580445711365931)) / 0.7441480169661928) + (-0.5 * 1.9047850136018802 - (0.5 * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - 1.1164241563456594) * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - 1.1164241563456594)) / 1.0691970510541402) + (-0.5 * 2.598587528449008 - (0.5 * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - 1.232091266694883) * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - 1.232091266694883)) / 2.139795924363826) + (-0.5 * 2.8790637266786736 - (0.5 * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - 2.8562011764091926) * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - 2.8562011764091926)) / 2.83257632656276) + (-0.5 * 2.900378180548634 - (0.5 * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -0.1946777354077039) * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -0.1946777354077039)) / 2.893599168042484) + (-0.5 * 1.723554939658442 - (0.5 * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - -0.30885979017841814) * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - -0.30885979017841814)) / 0.8919705820140024) + (-0.5 * 1.4610387004075989 - (0.5 * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - -1.2090009093244745) * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - -1.2090009093244745)) / 0.6860269502139601) + (-0.5 * 1.9628180595408116 - (0.5 * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - 1.2254337694197592) * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - 1.2254337694197592)) / 1.1330815914976922) + (-0.5 * 1.9522235753361836 - (0.5 * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - -0.2168859340616714) * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - -0.2168859340616714)) / 1.121140542791448) + (-0.5 * 1.6318807066510728 - (0.5 * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.046430005146285355) * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.046430005146285355)) / 0.8138360388374362) AS "Score_1", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_2", CAST(NULL AS BINARY_DOUBLE) AS "Proba_2", -1.3862943611198906 + (-0.5 * 1.731467302427601 - (0.5 * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - 0.040527414301684696) * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - 0.040527414301684696)) / 0.8990561717501684) + (-0.5 * 2.617399528512052 - (0.5 * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - -0.20169636688948053) * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - -0.20169636688948053)) / 2.1804307785140757) + (-0.5 * 2.1007420735826408 - (0.5 * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - -1.065660222353177) * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - -1.065660222353177)) / 1.3006511285278701) + (-0.5 * 3.6742536584795014 - (0.5 * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - -0.9339519751932575) * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - -0.9339519751932575)) / 6.273764618376192) + (-0.5 * 2.2711322972048067 - (0.5 * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -0.9273853948833596) * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -0.9273853948833596)) / 1.542269805220253) + (-0.5 * 2.1352374143496378 - (0.5 * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - 0.18075085383747674) * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - 0.18075085383747674)) / 1.3463003486072516) + (-0.5 * 1.9928317389436987 - (0.5 * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - 0.3367308034182364) * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - 0.3367308034182364)) / 1.1676050353285106) + (-0.5 * 3.2002384337385066 - (0.5 * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - -0.04097908155884643) * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - -0.04097908155884643)) / 3.905404516616854) + (-0.5 * 1.1156882289715433 - (0.5 * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - 0.26965800608399576) * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - 0.26965800608399576)) / 0.48568799956621594) + (-0.5 * 1.7774903574721328 - (0.5 * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.14187498063568335) * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.14187498063568335)) / 0.9414004152308103) AS "Score_2", CAST(NULL AS BINARY_DOUBLE) AS "LogProba_3", CAST(NULL AS BINARY_DOUBLE) AS "Proba_3", -1.2909841813155656 + (-0.5 * 1.4754911020960981 - (0.5 * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - -0.10010140605357654) * (CAST("ADS"."Feature_0" AS BINARY_DOUBLE) - -0.10010140605357654)) / 0.6960136795512221) + (-0.5 * 1.4943007385349765 - (0.5 * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - 1.5726847768670615) * (CAST("ADS"."Feature_1" AS BINARY_DOUBLE) - 1.5726847768670615)) / 0.7092293451100524) + (-0.5 * 2.334372261075296 - (0.5 * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - 0.1505046581680554) * (CAST("ADS"."Feature_2" AS BINARY_DOUBLE) - 0.1505046581680554)) / 1.6429529379426115) + (-0.5 * 2.91657888591792 - (0.5 * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - 1.3330171535218418) * (CAST("ADS"."Feature_3" AS BINARY_DOUBLE) - 1.3330171535218418)) / 2.9408593057393206) + (-0.5 * 1.4361016920835996 - (0.5 * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -1.120734549744089) * (CAST("ADS"."Feature_4" AS BINARY_DOUBLE) - -1.120734549744089)) / 0.6691310328199525) + (-0.5 * 1.7040389847243937 - (0.5 * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - 0.15247885409781847) * (CAST("ADS"."Feature_5" AS BINARY_DOUBLE) - 0.15247885409781847)) / 0.8747316882183717) + (-0.5 * 1.224657730722691 - (0.5 * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - -0.41282510179714293) * (CAST("ADS"."Feature_6" AS BINARY_DOUBLE) - -0.41282510179714293)) / 0.5416044528896263) + (-0.5 * 1.9019578466828024 - (0.5 * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - -0.824909406091562) * (CAST("ADS"."Feature_7" AS BINARY_DOUBLE) - -0.824909406091562)) / 1.0661785214754689) + (-0.5 * 2.5088130000211453 - (0.5 * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - -0.3780460568899708) * (CAST("ADS"."Feature_8" AS BINARY_DOUBLE) - -0.3780460568899708)) / 1.9560672132251689) + (-0.5 * 1.6549510383945059 - (0.5 * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.07485010923253889) * (CAST("ADS"."Feature_9" AS BINARY_DOUBLE) - 0.07485010923253889)) / 0.8328297595291985) AS "Score_3" 
FROM "FOURCLASS_10" "ADS"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Score_2" AS "Score_2", "RawScores"."Score_3" AS "Score_3", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."Proba_2" AS "Proba_2", "RawScores"."Proba_3" AS "Proba_3", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", "RawScores"."LogProba_2" AS "LogProba_2", "RawScores"."LogProba_3" AS "LogProba_3", CAST(NULL AS NUMBER(19)) AS "Decision", CAST(NULL AS BINARY_DOUBLE) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1", exp(score_max."Score_2" - score_max."max_Score") AS "exp_delta_Score_2", exp(score_max."Score_3" - score_max."max_Score") AS "exp_delta_Score_3" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS class, score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 3 AS class, score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_deltas) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Score_3" AS "Score_3", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."Proba_3" AS "Proba_3", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."LogProba_3" AS "LogProba_3", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score_3", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2", soft_max_comp."SoftProba_3" AS "SoftProba_3" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3" 
FROM score_soft_max) soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS BINARY_DOUBLE) AS "Score_0", CAST(NULL AS BINARY_DOUBLE) AS "Score_1", CAST(NULL AS BINARY_DOUBLE) AS "Score_2", CAST(NULL AS BINARY_DOUBLE) AS "Score_3", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -BINARY_DOUBLE_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1", arg_max_cte."SoftProba_2", arg_max_cte."SoftProba_3") AS "DecisionProba" 
FROM arg_max_cte