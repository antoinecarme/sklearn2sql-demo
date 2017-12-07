-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.000268693206665 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.000723958058064 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.000728071982559 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.00101356522108 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.000976358073288 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.00176438082423 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.00165128154506 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.00139055019834 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.00127264825481 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.00103442500568 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.000268693206665) / 0.0472420958365 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.000723958058064) / 0.047605576685 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.000728071982559) / 0.0469359114394 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.00101356522108) / 0.048335271949 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.000976358073288) / 0.0480507620097 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.00176438082423) / 0.0480608087315 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.00165128154506) / 0.0462024037804 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.00139055019834) / 0.0473630930405 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.00127264825481) / 0.0458928613136 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.00103442500568) / 0.0477615851957 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -3.64152592792 * "IL".scaler_2 + -2.14672265049 * "IL".scaler_3 + -1.12052734572 * "IL".scaler_4 + 0.292041609366 * "IL".scaler_5 + 2.63732553404 * "IL".scaler_6 + 3.23264722244 * "IL".scaler_7 + -3.05518356878 * "IL".scaler_8 + -4.76854973894 * "IL".scaler_9 + -3.3635585191 * "IL".scaler_10 + -1.03387008474 * "IL".scaler_11 + -1.48472223471 AS "NEUR_1_1", -0.226554126985 * "IL".scaler_2 + 1.07596216091 * "IL".scaler_3 + -3.26270642603 * "IL".scaler_4 + -3.35286133961 * "IL".scaler_5 + -2.37966427102 * "IL".scaler_6 + -6.21829131628 * "IL".scaler_7 + 6.00356890142 * "IL".scaler_8 + 2.85053685337 * "IL".scaler_9 + 0.140965884919 * "IL".scaler_10 + -2.65432178622 * "IL".scaler_11 + -7.89649192417 AS "NEUR_1_2", 0.498034542761 * "IL".scaler_2 + -0.277369048627 * "IL".scaler_3 + 1.41565935672 * "IL".scaler_4 + 0.8888772514 * "IL".scaler_5 + -5.26206547949 * "IL".scaler_6 + 4.19877804886 * "IL".scaler_7 + 1.05167430443 * "IL".scaler_8 + 0.271883513745 * "IL".scaler_9 + 3.59351394453 * "IL".scaler_10 + 0.307743954272 * "IL".scaler_11 + 4.7342449143 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -1.28936638781 * "HL_1_relu"."NEUR_1_1" + 1.7766911954 * "HL_1_relu"."NEUR_1_2" + -2.0687291673 * "HL_1_relu"."NEUR_1_3" + -0.162320286271 AS "NEUR_2_1", -1.64652742676 * "HL_1_relu"."NEUR_1_1" + -0.870130042232 * "HL_1_relu"."NEUR_1_2" + -1.0558606355 * "HL_1_relu"."NEUR_1_3" + -4.9018743019 AS "NEUR_2_2", 1.03815394341 * "HL_1_relu"."NEUR_1_1" + 7.23397747699 * "HL_1_relu"."NEUR_1_2" + 3.0368435326 * "HL_1_relu"."NEUR_1_3" + 1.19169078127 AS "NEUR_2_3", -0.195653539623 * "HL_1_relu"."NEUR_1_1" + -0.505140404923 * "HL_1_relu"."NEUR_1_2" + -0.406629619252 * "HL_1_relu"."NEUR_1_3" + -0.847125616898 AS "NEUR_2_4", 0.0795582396792 * "HL_1_relu"."NEUR_1_1" + 6.45378314062 * "HL_1_relu"."NEUR_1_2" + -1.02797025155 * "HL_1_relu"."NEUR_1_3" + -5.10813009343 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 2.48630241108 * "HL_2_relu"."NEUR_2_1" + 1.50299444427 * "HL_2_relu"."NEUR_2_2" + 6.95152324465 * "HL_2_relu"."NEUR_2_3" + 0.702089206306 * "HL_2_relu"."NEUR_2_4" + -8.50187886083 * "HL_2_relu"."NEUR_2_5" + 14.5798468678 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"