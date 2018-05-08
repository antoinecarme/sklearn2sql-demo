-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : BinaryClass_10
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180416222740_s91mjd_ads_imp_1_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222740_s91mjd_ads_imp_1_out (
	"KEY" BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222740_s91mjd_ads_imp_1_out part 2/2. Populate

INSERT INTO tmp_20180416222740_s91mjd_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BINARYCLASS_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180416222740_hwm58f_ads_sca_2_out part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180416222740_hwm58f_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180416222740_hwm58f_ads_sca_2_out part 2/2. Populate

INSERT INTO tmp_20180416222740_hwm58f_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM tmp_20180416222740_s91mjd_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH "RawScores" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "Proba_0", -0.6931471805599453 + (-0.5 * 0.7545429935238454 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - 0.6608885522985145) * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - 0.6608885522985145)) / 0.33846517479399624) + (-0.5 * 1.755985503747587 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - 0.05011958986810387) * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - 0.05011958986810387)) / 0.9213718643920022) + (-0.5 * 1.5895557833789096 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - 0.010237135493869304) * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - 0.010237135493869304)) / 0.7801092671417778) + (-0.5 * 1.9720068756709808 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - -0.1134260581927905) * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - -0.1134260581927905)) / 1.1435412522560795) + (-0.5 * 1.9028415823903153 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - 0.091931902073065) * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - 0.091931902073065)) / 1.0671211579648936) + (-0.5 * 1.7474523867108946 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - 0.026957993139275754) * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - 0.026957993139275754)) / 0.9135431396544423) + (-0.5 * 1.7568016284099544 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - 0.19931034565274267) * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - 0.19931034565274267)) / 0.9221241256214605) + (-0.5 * 0.46653573969166034 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - 0.6831306672271085) * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - 0.6831306672271085)) / 0.2537663475858361) + (-0.5 * 1.6698439164311882 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - -0.05290181072678812) * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - -0.05290181072678812)) / 0.8453258116879874) + (-0.5 * 0.259643314471311 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - -0.6905707153132041) * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - -0.6905707153132041)) / 0.20633922279541594) AS "Score_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "Proba_1", -0.6931471805599453 + (-0.5 * 1.599603976254543 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - -0.6608885522985144) * (CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) - -0.6608885522985144)) / 0.7879874700875505) + (-0.5 * 1.9088984573543164 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - -0.05011958986810381) * (CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) - -0.05011958986810381)) / 1.0736041910309042) + (-0.5 * 2.0364665278554943 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - -0.010237135493869402) * (CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) - -0.010237135493869402)) / 1.2196811369719827) + (-0.5 * 1.6524239815631545 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - 0.11342605819279053) * (CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) - 0.11342605819279053)) / 0.8307278083896118) + (-0.5 * 1.7501118360318897 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - -0.09193190207306502) * (CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) - -0.09193190207306502)) / 0.9159758947975633) + (-0.5 * 1.9194601829428275 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - -0.02695799313927582) * (CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) - -0.02695799313927582)) / 1.0850033955573626) + (-0.5 * 1.8363024760023794 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - -0.19931034565274264) * (CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) - -0.19931034565274264)) / 0.9984266486101087) + (-0.5 * 1.6307282119596742 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - -0.6831306672271085) * (CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) - -0.6831306672271085)) / 0.8128986374018546) + (-0.5 * 1.9768360666480904 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - 0.05290181072678807) * (CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) - 0.05290181072678807)) / 1.149076987155667) + (-0.5 * 1.6633867097753936 - (0.5 * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - 0.6905707153132041) * (CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) - 0.6905707153132041)) / 0.8398849535082032) AS "Score_1" 
FROM tmp_20180416222740_hwm58f_ads_sca_2_out AS "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1") AS "DecisionProba" 
FROM arg_max_cte