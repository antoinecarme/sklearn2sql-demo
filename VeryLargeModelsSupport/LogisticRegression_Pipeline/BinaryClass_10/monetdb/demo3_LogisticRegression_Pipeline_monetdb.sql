-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -0.9314318738821378 * "ADS_sca_2_OUT".scaler_2 + -0.1326575904739844 * "ADS_sca_2_OUT".scaler_3 + -0.5682853512619962 * "ADS_sca_2_OUT".scaler_4 + 0.4955731075646611 * "ADS_sca_2_OUT".scaler_5 + -0.37876113904349756 * "ADS_sca_2_OUT".scaler_6 + -0.6482694340632381 * "ADS_sca_2_OUT".scaler_7 + -0.3629172484072307 * "ADS_sca_2_OUT".scaler_8 + -1.053270325805898 * "ADS_sca_2_OUT".scaler_9 + 0.12349574979497674 * "ADS_sca_2_OUT".scaler_10 + 1.1305705271030866 * "ADS_sca_2_OUT".scaler_11 + 0.46261701750037687 AS lincomb 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) AS "Proba_0", 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) ELSE -1e+125 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) ELSE -1e+125 END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -linear_model_cte.lincomb) THEN -linear_model_cte.lincomb ELSE -100.0 END ELSE 100.0 END)) END AS "DecisionProba" 
FROM linear_model_cte