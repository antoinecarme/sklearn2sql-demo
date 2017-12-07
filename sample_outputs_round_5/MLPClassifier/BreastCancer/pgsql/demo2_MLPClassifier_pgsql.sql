-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9", "ADS"."Feature_10" AS "Feature_10", "ADS"."Feature_11" AS "Feature_11", "ADS"."Feature_12" AS "Feature_12", "ADS"."Feature_13" AS "Feature_13", "ADS"."Feature_14" AS "Feature_14", "ADS"."Feature_15" AS "Feature_15", "ADS"."Feature_16" AS "Feature_16", "ADS"."Feature_17" AS "Feature_17", "ADS"."Feature_18" AS "Feature_18", "ADS"."Feature_19" AS "Feature_19", "ADS"."Feature_20" AS "Feature_20", "ADS"."Feature_21" AS "Feature_21", "ADS"."Feature_22" AS "Feature_22", "ADS"."Feature_23" AS "Feature_23", "ADS"."Feature_24" AS "Feature_24", "ADS"."Feature_25" AS "Feature_25", "ADS"."Feature_26" AS "Feature_26", "ADS"."Feature_27" AS "Feature_27", "ADS"."Feature_28" AS "Feature_28", "ADS"."Feature_29" AS "Feature_29" 
FROM "BreastCancer" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.078044932087 * "IL"."Feature_0" + -0.177281005444 * "IL"."Feature_1" + -0.31572733519 * "IL"."Feature_2" + -0.378978131101 * "IL"."Feature_3" + -0.252086835831 * "IL"."Feature_4" + 0.145313774502 * "IL"."Feature_5" + -0.306746520662 * "IL"."Feature_6" + 0.399297352606 * "IL"."Feature_7" + 0.32090582918 * "IL"."Feature_8" + -0.393121399828 * "IL"."Feature_9" + -0.342795828485 * "IL"."Feature_10" + 0.0277793495222 * "IL"."Feature_11" + 0.157153458971 * "IL"."Feature_12" + 0.18140914157 * "IL"."Feature_13" + -0.187240777286 * "IL"."Feature_14" + -0.0444500631013 * "IL"."Feature_15" + -0.181002946207 * "IL"."Feature_16" + 0.152505026206 * "IL"."Feature_17" + -0.00719513956494 * "IL"."Feature_18" + -0.301272567373 * "IL"."Feature_19" + -0.347929251555 * "IL"."Feature_20" + -0.0849681910046 * "IL"."Feature_21" + 0.0806965560342 * "IL"."Feature_22" + -0.521472354403 * "IL"."Feature_23" + -0.307686175207 * "IL"."Feature_24" + -0.285541830613 * "IL"."Feature_25" + 0.213709831663 * "IL"."Feature_26" + 0.105391383109 * "IL"."Feature_27" + -0.196338948151 * "IL"."Feature_28" + 0.396379220531 * "IL"."Feature_29" + -0.328958972473 AS "NEUR_1_1", 0.18288560059 * "IL"."Feature_0" + -0.30723786551 * "IL"."Feature_1" + -0.164835840516 * "IL"."Feature_2" + -0.352330668712 * "IL"."Feature_3" + 0.322430107061 * "IL"."Feature_4" + -0.0705649207582 * "IL"."Feature_5" + -0.257506316395 * "IL"."Feature_6" + -0.159138122686 * "IL"."Feature_7" + 0.33646671737 * "IL"."Feature_8" + -0.281587444216 * "IL"."Feature_9" + -0.0674618206301 * "IL"."Feature_10" + 0.163286631861 * "IL"."Feature_11" + 0.284066335314 * "IL"."Feature_12" + 0.394951985804 * "IL"."Feature_13" + 0.246696292544 * "IL"."Feature_14" + 0.348442089183 * "IL"."Feature_15" + -0.315524470478 * "IL"."Feature_16" + -0.245928760151 * "IL"."Feature_17" + -0.38089965634 * "IL"."Feature_18" + 0.0761588351873 * "IL"."Feature_19" + -0.0793449948632 * "IL"."Feature_20" + -0.391902970189 * "IL"."Feature_21" + -0.0278730369116 * "IL"."Feature_22" + -0.0654016494198 * "IL"."Feature_23" + 0.262102857036 * "IL"."Feature_24" + 0.364473935995 * "IL"."Feature_25" + 0.192605554013 * "IL"."Feature_26" + 0.213951710664 * "IL"."Feature_27" + 0.337521527162 * "IL"."Feature_28" + 0.13935745754 * "IL"."Feature_29" + 0.383041515174 AS "NEUR_1_2", -0.426303856654 * "IL"."Feature_0" + -0.347654784423 * "IL"."Feature_1" + -0.0880369861637 * "IL"."Feature_2" + 0.157955707004 * "IL"."Feature_3" + -0.403045179882 * "IL"."Feature_4" + 0.0500508495391 * "IL"."Feature_5" + 0.256475807736 * "IL"."Feature_6" + 0.164013263537 * "IL"."Feature_7" + -0.353875454949 * "IL"."Feature_8" + 0.322480982561 * "IL"."Feature_9" + 0.390489469573 * "IL"."Feature_10" + -0.157328784891 * "IL"."Feature_11" + -0.410805101844 * "IL"."Feature_12" + 0.211636362843 * "IL"."Feature_13" + -0.338369969239 * "IL"."Feature_14" + -0.176006430421 * "IL"."Feature_15" + -0.40988520008 * "IL"."Feature_16" + -0.199942463396 * "IL"."Feature_17" + 0.0632077008729 * "IL"."Feature_18" + 0.170354487078 * "IL"."Feature_19" + 0.165784997205 * "IL"."Feature_20" + 0.0306125551744 * "IL"."Feature_21" + 0.379151649055 * "IL"."Feature_22" + -0.309162584343 * "IL"."Feature_23" + -0.0872614790677 * "IL"."Feature_24" + -0.129825699791 * "IL"."Feature_25" + 0.326884504631 * "IL"."Feature_26" + -0.128859915782 * "IL"."Feature_27" + -0.0613240340209 * "IL"."Feature_28" + 0.103782449924 * "IL"."Feature_29" + -0.0427150760912 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.135774783157 * "HL_1_relu"."NEUR_1_1" + -0.861053777031 * "HL_1_relu"."NEUR_1_2" + -0.247216006062 * "HL_1_relu"."NEUR_1_3" + 0.369235152989 AS "NEUR_2_1", -0.0811307394712 * "HL_1_relu"."NEUR_1_1" + 0.460949584145 * "HL_1_relu"."NEUR_1_2" + 0.707603576847 * "HL_1_relu"."NEUR_1_3" + 0.7837819219 AS "NEUR_2_2", -0.455482591829 * "HL_1_relu"."NEUR_1_1" + -0.300259811902 * "HL_1_relu"."NEUR_1_2" + 0.213665969692 * "HL_1_relu"."NEUR_1_3" + -0.567522887128 AS "NEUR_2_3", 0.653057358934 * "HL_1_relu"."NEUR_1_1" + -0.104084309953 * "HL_1_relu"."NEUR_1_2" + -0.838622134775 * "HL_1_relu"."NEUR_1_3" + -0.628848534724 AS "NEUR_2_4", 0.0516076690785 * "HL_1_relu"."NEUR_1_1" + 0.416948322799 * "HL_1_relu"."NEUR_1_2" + 0.74380704315 * "HL_1_relu"."NEUR_1_3" + 0.812510457009 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.42686737583 * "HL_2_relu"."NEUR_2_1" + -0.841630421739 * "HL_2_relu"."NEUR_2_2" + 0.510926060998 * "HL_2_relu"."NEUR_2_3" + 0.431482982144 * "HL_2_relu"."NEUR_2_4" + 0.708786503866 * "HL_2_relu"."NEUR_2_5" + 0.514478332359 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", 1.0 / (1.0 + exp(-"OL_BA"."NEUR_3_1")) AS "NEUR_3_1" 
FROM "OL_BA"), 
orig_cte AS 
(SELECT "OL_logistic"."KEY" AS "KEY", CAST(NULL AS FLOAT(53)) AS "Score_0", CAST(NULL AS FLOAT(53)) AS "Score_1", 1.0 - "OL_logistic"."NEUR_3_1" AS "Proba_0", "OL_logistic"."NEUR_3_1" AS "Proba_1", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "OL_logistic"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision" 
FROM arg_max_cte