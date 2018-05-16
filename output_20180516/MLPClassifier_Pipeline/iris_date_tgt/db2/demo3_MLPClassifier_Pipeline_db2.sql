-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : iris_date_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516123816_codegen_4qltqy_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123816_codegen_4qltqy_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123816_codegen_4qltqy_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516123816_codegen_4qltqy_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_DATE_TGT" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180516123816_codegen_m0mida_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123816_codegen_m0mida_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123816_codegen_m0mida_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516123816_codegen_m0mida_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM tmp_20180516123816_codegen_4qltqy_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180516123816_codegen_7myqy6_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123816_codegen_7myqy6_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123816_codegen_7myqy6_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516123816_codegen_7myqy6_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM tmp_20180516123816_codegen_m0mida_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.8412927868586152 * "IL".scaler_output_2 + 14.861456730567545 * "IL".scaler_output_3 + -10.78251730397132 * "IL".scaler_output_4 + -10.377612998045162 * "IL".scaler_output_5 + 2.2458919699269635 AS "NEUR_1_1", -4.437051894114933 * "IL".scaler_output_2 + 4.594423237258979 * "IL".scaler_output_3 + -6.780366830439968 * "IL".scaler_output_4 + -5.859673816074868 * "IL".scaler_output_5 + -2.414376384413553 AS "NEUR_1_2", -3.7305606056502087 * "IL".scaler_output_2 + -1.7080294254555426 * "IL".scaler_output_3 + 16.075961222502848 * "IL".scaler_output_4 + 4.701510840147061 * "IL".scaler_output_5 + -10.982039769110065 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180516123816_codegen_sw7rad_ol_softmax_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516123816_codegen_sw7rad_ol_softmax_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE, 
	"NEUR_3_2" DOUBLE, 
	"NEUR_3_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516123816_codegen_sw7rad_ol_softmax_1 part 2. Populate

INSERT INTO tmp_20180516123816_codegen_sw7rad_ol_softmax_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 4.802628275790061 * "HL_1_relu_1"."NEUR_1_1" + 2.3851914239639287 * "HL_1_relu_1"."NEUR_1_2" + -6.137068795883637 * "HL_1_relu_1"."NEUR_1_3" + -4.129195176965002 AS "NEUR_2_1", -0.7655227813323693 * "HL_1_relu_1"."NEUR_1_1" + 3.8344749498325346 * "HL_1_relu_1"."NEUR_1_2" + -0.8018355893091124 * "HL_1_relu_1"."NEUR_1_3" + -2.2742241059247816 AS "NEUR_2_2", -0.3006648413996373 * "HL_1_relu_1"."NEUR_1_1" + -0.8271940776500805 * "HL_1_relu_1"."NEUR_1_2" + -0.30099125123031406 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.3412690569018916 * "HL_1_relu_1"."NEUR_1_1" + -0.5188049533386252 * "HL_1_relu_1"."NEUR_1_2" + -0.12230738606148228 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -4.065295719003371 * "HL_1_relu_1"."NEUR_1_1" + -0.6828001427858248 * "HL_1_relu_1"."NEUR_1_2" + 11.962556576412146 * "HL_1_relu_1"."NEUR_1_3" + 1.6925518630263647 AS "NEUR_2_5" 
FROM tmp_20180516123816_codegen_7myqy6_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 4.932910621886575 * "HL_2_relu"."NEUR_2_1" + 7.160161889687136 * "HL_2_relu"."NEUR_2_2" + -0.5046451794227751 * "HL_2_relu"."NEUR_2_3" + -0.7696532205231054 * "HL_2_relu"."NEUR_2_4" + -11.87866204118191 * "HL_2_relu"."NEUR_2_5" + -21.607792454821034 AS "NEUR_3_1", 2.908187208764973 * "HL_2_relu"."NEUR_2_1" + 1.412214590183448 * "HL_2_relu"."NEUR_2_2" + 0.4331311685310179 * "HL_2_relu"."NEUR_2_3" + 0.3491794690933266 * "HL_2_relu"."NEUR_2_4" + 3.560939998511619 * "HL_2_relu"."NEUR_2_5" + 32.9669934591267 AS "NEUR_3_2", -8.348719571042205 * "HL_2_relu"."NEUR_2_1" + -6.8582849245493485 * "HL_2_relu"."NEUR_2_2" + 0.07953003169538005 * "HL_2_relu"."NEUR_2_3" + -0.4065531529725015 * "HL_2_relu"."NEUR_2_4" + 7.694730704047067 * "HL_2_relu"."NEUR_2_5" + -12.535957843272707 AS "NEUR_3_3" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1", "OL_BA"."NEUR_3_2" AS "NEUR_3_2", "OL_BA"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_BA")
 SELECT "OL_softmax_1"."KEY", "OL_softmax_1"."NEUR_3_1", "OL_softmax_1"."NEUR_3_2", "OL_softmax_1"."NEUR_3_3" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3" 
FROM "OL_softmax") AS "OL_softmax_1"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_1789-07-14T00:00:00.000000000", "OL_softmax_1"."NEUR_3_2" AS "Score_1789-08-14T00:00:00.000000000", "OL_softmax_1"."NEUR_3_3" AS "Score_1789-09-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Proba_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Proba_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Proba_1789-09-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "LogProba_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "LogProba_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "LogProba_1789-09-14T00:00:00.000000000", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180516123816_codegen_sw7rad_ol_softmax_1 AS "OL_softmax_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", '1789-07-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-07-14T00:00:00.000000000" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", '1789-08-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-08-14T00:00:00.000000000" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", '1789-09-14T00:00:00.000000000' AS class, orig_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba", orig_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba", orig_cte."Score_1789-09-14T00:00:00.000000000" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", orig_cte."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", orig_cte."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", orig_cte."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", orig_cte."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", orig_cte."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", orig_cte."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", orig_cte."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", orig_cte."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(greatest(-100.0, score_max."Score_1789-07-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-07-14T00:00:00.000000000", exp(greatest(-100.0, score_max."Score_1789-08-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-08-14T00:00:00.000000000", exp(greatest(-100.0, score_max."Score_1789-09-14T00:00:00.000000000" - score_max."max_Score")) AS "exp_delta_Score_1789-09-14T00:00:00.000000000" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-07-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-08-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", '1789-09-14T00:00:00.000000000' AS class, score_soft_max_deltas."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max_deltas."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max_deltas."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max_deltas."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max_deltas."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max_deltas."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max_deltas."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_1789-07-14T00:00:00.000000000" AS "Score_1789-07-14T00:00:00.000000000", score_soft_max."Score_1789-08-14T00:00:00.000000000" AS "Score_1789-08-14T00:00:00.000000000", score_soft_max."Score_1789-09-14T00:00:00.000000000" AS "Score_1789-09-14T00:00:00.000000000", score_soft_max."Proba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", score_soft_max."Proba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", score_soft_max."Proba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", score_soft_max."LogProba_1789-07-14T00:00:00.000000000" AS "LogProba_1789-07-14T00:00:00.000000000", score_soft_max."LogProba_1789-08-14T00:00:00.000000000" AS "LogProba_1789-08-14T00:00:00.000000000", score_soft_max."LogProba_1789-09-14T00:00:00.000000000" AS "LogProba_1789-09-14T00:00:00.000000000", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" AS "exp_delta_Score_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" AS "exp_delta_Score_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" AS "exp_delta_Score_1789-09-14T00:00:00.000000000", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_1789-07-14T00:00:00.000000000" AS "SoftProba_1789-07-14T00:00:00.000000000", soft_max_comp."SoftProba_1789-08-14T00:00:00.000000000" AS "SoftProba_1789-08-14T00:00:00.000000000", soft_max_comp."SoftProba_1789-09-14T00:00:00.000000000" AS "SoftProba_1789-09-14T00:00:00.000000000" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_1789-07-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-07-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-08-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-08-14T00:00:00.000000000", score_soft_max."exp_delta_Score_1789-09-14T00:00:00.000000000" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1789-09-14T00:00:00.000000000" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_1789-07-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-08-14T00:00:00.000000000", CAST(NULL AS DOUBLE) AS "Score_1789-09-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" AS "Proba_1789-07-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" AS "Proba_1789-08-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" AS "Proba_1789-09-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-07-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-08-14T00:00:00.000000000", CASE WHEN (arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" IS NULL OR arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000" > 0.0) THEN ln(arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000") ELSE -1.79769313486231e+308 END AS "LogProba_1789-09-14T00:00:00.000000000", arg_max_cte."arg_max_Score" AS "Decision", greatest(arg_max_cte."SoftProba_1789-07-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-08-14T00:00:00.000000000", arg_max_cte."SoftProba_1789-09-14T00:00:00.000000000") AS "DecisionProba" 
FROM arg_max_cte