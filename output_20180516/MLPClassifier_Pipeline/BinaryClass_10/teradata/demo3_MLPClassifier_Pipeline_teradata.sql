-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier_Pipeline
-- Dataset : BinaryClass_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516110442_codegen_ubt7w1_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110442_codegen_ubt7w1_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110442_codegen_ubt7w1_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516110442_codegen_ubt7w1_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516110442_codegen_vb5gsj_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110442_codegen_vb5gsj_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110442_codegen_vb5gsj_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516110442_codegen_vb5gsj_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.061829205238134 AS DOUBLE PRECISION)) / CAST(1.228383956209067 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(0.177024637671833 AS DOUBLE PRECISION)) / CAST(0.940821656314017 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.041383850049035 AS DOUBLE PRECISION)) / CAST(1.074182488881128 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.130606468058471 AS DOUBLE PRECISION)) / CAST(1.079224455973376 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.059558104719831 AS DOUBLE PRECISION)) / CAST(1.109589119050812 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(-0.048929089870106 AS DOUBLE PRECISION)) / CAST(1.378187181202905 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.191017978617131 AS DOUBLE PRECISION)) / CAST(0.973528524630321 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.022049596732675 AS DOUBLE PRECISION)) / CAST(0.474603012037971 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(-0.05772981403414 AS DOUBLE PRECISION)) / CAST(1.064607524840552 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(-0.052549592052032 AS DOUBLE PRECISION)) / CAST(1.224532889655456 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516110442_codegen_ubt7w1_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180516110442_codegen_1yow1m_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110442_codegen_1yow1m_hl_1_relu_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE PRECISION, 
	"NEUR_1_2" DOUBLE PRECISION, 
	"NEUR_1_3" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110442_codegen_1yow1m_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516110442_codegen_1yow1m_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516110442_codegen_vb5gsj_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", CAST(-1.22917382064654 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-0.44317169637692 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-6.22006154247899 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(4.736890804741012 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(-4.518618649149406 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(1.838425156179419 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-4.958425781258579 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-1.021716428556402 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(3.991183151986695 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(0.5953588139039 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-11.514274132947653 AS DOUBLE PRECISION) AS "NEUR_1_1", CAST(4.849740316809067 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(-1.957909966616575 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(1.741947506893146 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(2.68835537857985 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(2.721006623935798 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(0.443008373854024 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-2.535093716134214 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(4.189809604990259 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(1.582964093890921 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(-4.959454448260075 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-5.617857660142282 AS DOUBLE PRECISION) AS "NEUR_1_2", CAST(-9.879395022080123 AS DOUBLE PRECISION) * "IL".scaler_2 + CAST(0.602722282631242 AS DOUBLE PRECISION) * "IL".scaler_3 + CAST(-1.983704165079194 AS DOUBLE PRECISION) * "IL".scaler_4 + CAST(2.179908038951964 AS DOUBLE PRECISION) * "IL".scaler_5 + CAST(0.965532149473441 AS DOUBLE PRECISION) * "IL".scaler_6 + CAST(-5.646786773738612 AS DOUBLE PRECISION) * "IL".scaler_7 + CAST(-6.956947908156915 AS DOUBLE PRECISION) * "IL".scaler_8 + CAST(-12.022815223121045 AS DOUBLE PRECISION) * "IL".scaler_9 + CAST(-1.751672293400061 AS DOUBLE PRECISION) * "IL".scaler_10 + CAST(12.848545488308751 AS DOUBLE PRECISION) * "IL".scaler_11 + CAST(-1.270721019926238 AS DOUBLE PRECISION) AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180516110442_codegen_2pubst_ol_logistic_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516110442_codegen_2pubst_ol_logistic_1  (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516110442_codegen_2pubst_ol_logistic_1 part 2. Populate

INSERT INTO tmp_20180516110442_codegen_2pubst_ol_logistic_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", CAST(-0.852049713989488 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(1.786786807030832 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.466283693210204 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-4.635185927964297 AS DOUBLE PRECISION) AS "NEUR_2_1", CAST(-7.055592272867236 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-3.400038606270866 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-3.341167104148396 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(11.460390990477046 AS DOUBLE PRECISION) AS "NEUR_2_2", CAST(9.857210563102226 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(0.073248443543515 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(10.042939813588413 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(1.913026598049786 AS DOUBLE PRECISION) AS "NEUR_2_3", CAST(0.111062949241421 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(-0.504618130048927 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.406531361407504 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-0.796433042433614 AS DOUBLE PRECISION) AS "NEUR_2_4", CAST(-0.567505816852204 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_1" + CAST(3.045018623131223 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_2" + CAST(-0.52891752187316 AS DOUBLE PRECISION) * "HL_1_relu_1"."NEUR_1_3" + CAST(-8.406420164162995 AS DOUBLE PRECISION) AS "NEUR_2_5" 
FROM tmp_20180516110442_codegen_1yow1m_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", CAST(0 AS DOUBLE PRECISION)) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", CAST(-5.682117314664924 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_1" + CAST(-4.437932858922238 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_2" + CAST(15.14687632439836 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_3" + CAST(0.700668966129116 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_4" + CAST(-10.615556034015501 AS DOUBLE PRECISION) * "HL_2_relu"."NEUR_2_5" + CAST(-4.83459169720706 AS DOUBLE PRECISION) AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_logistic" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST(1.0 AS DOUBLE PRECISION) / (CAST(1.0 AS DOUBLE PRECISION) + exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), -"OL_BA"."NEUR_3_1"), CAST(100.0 AS DOUBLE PRECISION)))) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_logistic_1"."KEY", "OL_logistic_1"."NEUR_3_1" 
FROM (SELECT "OL_logistic"."KEY" AS "KEY", "OL_logistic"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_logistic") AS "OL_logistic_1") AS "U"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_logistic_1"."KEY" AS "KEY", CAST(NULL AS DOUBLE PRECISION) AS "Score_0", CAST(NULL AS DOUBLE PRECISION) AS "Score_1", CAST(1.0 AS DOUBLE PRECISION) - "OL_logistic_1"."NEUR_3_1" AS "Proba_0", "OL_logistic_1"."NEUR_3_1" AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM tmp_20180516110442_codegen_2pubst_ol_logistic_1 AS "OL_logistic_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu."class" AS "class", scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS "class", orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS "class", orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union."class" AS "class", score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max."class") AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > CAST(0.0 AS DOUBLE PRECISION)) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte