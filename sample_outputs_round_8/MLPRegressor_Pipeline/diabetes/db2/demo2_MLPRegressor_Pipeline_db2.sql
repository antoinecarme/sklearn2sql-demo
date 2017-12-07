-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0047225988377 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0073794958196 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -6.24253146871e-05 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.00643221528123 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.00213184962584 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.000838461125138 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.000444113651192 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.0032531275266 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0029539764781 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.000211620600092 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.0047225988377) / 0.0488123078699 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.0073794958196) / 0.0465126383467 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - -6.24253146871e-05) / 0.046971645538 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - -0.00643221528123) / 0.0474148680367 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.00213184962584) / 0.0460146493101 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.000838461125138) / 0.0459634748503 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.000444113651192) / 0.0423673337055 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - -0.0032531275266) / 0.0441563504693 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.0029539764781) / 0.044965109506 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.000211620600092) / 0.0487263122756 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.823135566694 * "IL".scaler_2 + 2.6283968038 * "IL".scaler_3 + -5.05520588882 * "IL".scaler_4 + -1.87810978863 * "IL".scaler_5 + 2.09954615525 * "IL".scaler_6 + 2.71680447698 * "IL".scaler_7 + 2.04926854209 * "IL".scaler_8 + 2.40578851059 * "IL".scaler_9 + -2.40860619691 * "IL".scaler_10 + 8.39601724486 * "IL".scaler_11 + -3.42641918415 AS "NEUR_1_1", -2.91593213712 * "IL".scaler_2 + -2.28389324649 * "IL".scaler_3 + -1.95992737638 * "IL".scaler_4 + 0.499115082458 * "IL".scaler_5 + -0.783739398876 * "IL".scaler_6 + 1.30316685756 * "IL".scaler_7 + -2.23821102457 * "IL".scaler_8 + -8.62466474303 * "IL".scaler_9 + 1.51835542237 * "IL".scaler_10 + -0.829054146781 * "IL".scaler_11 + -3.9463572632 AS "NEUR_1_2", 0.773286081887 * "IL".scaler_2 + 0.260277064381 * "IL".scaler_3 + 3.76726969321 * "IL".scaler_4 + 0.679025746971 * "IL".scaler_5 + -6.86605787171 * "IL".scaler_6 + 3.75558585035 * "IL".scaler_7 + 2.99169952909 * "IL".scaler_8 + 2.0195363771 * "IL".scaler_9 + 5.20977114375 * "IL".scaler_10 + -0.174246904975 * "IL".scaler_11 + 4.64997169743 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -1.81293240735 * "HL_1_relu"."NEUR_1_1" + 0.959966843989 * "HL_1_relu"."NEUR_1_2" + -0.291290941751 * "HL_1_relu"."NEUR_1_3" + -0.959808812896 AS "NEUR_2_1", -1.35030196055 * "HL_1_relu"."NEUR_1_1" + -0.954822844597 * "HL_1_relu"."NEUR_1_2" + -1.0395606319 * "HL_1_relu"."NEUR_1_3" + -5.27848326584 AS "NEUR_2_2", 0.766644141344 * "HL_1_relu"."NEUR_1_1" + 4.10738993633 * "HL_1_relu"."NEUR_1_2" + 1.81957899531 * "HL_1_relu"."NEUR_1_3" + 3.54403074965 AS "NEUR_2_3", -0.0972216852639 * "HL_1_relu"."NEUR_1_1" + -0.48885605189 * "HL_1_relu"."NEUR_1_2" + -0.645378870911 * "HL_1_relu"."NEUR_1_3" + -0.849347695127 AS "NEUR_2_4", -5.70463843572 * "HL_1_relu"."NEUR_1_1" + 3.49316701023 * "HL_1_relu"."NEUR_1_2" + -1.06749209091 * "HL_1_relu"."NEUR_1_3" + -3.44836089234 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -2.34405636809 * "HL_2_relu"."NEUR_2_1" + 1.76140023868 * "HL_2_relu"."NEUR_2_2" + 7.32645522988 * "HL_2_relu"."NEUR_2_3" + 0.735606974414 * "HL_2_relu"."NEUR_2_4" + -7.39189604153 * "HL_2_relu"."NEUR_2_5" + 17.1154112246 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"