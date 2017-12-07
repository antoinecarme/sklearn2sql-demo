-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 1.8677344761122225 * "ADS"."Feature_0" + 0.11846706415994021 * "ADS"."Feature_1" + 0.03582985547705383 * "ADS"."Feature_2" + -0.007729827334257059 * "ADS"."Feature_3" + -0.13348593146544122 * "ADS"."Feature_4" + -0.38636479577926797 * "ADS"."Feature_5" + -0.5737615145855843 * "ADS"."Feature_6" + -0.3132583264417675 * "ADS"."Feature_7" + -0.2047242459029569 * "ADS"."Feature_8" + -0.02768930162977015 * "ADS"."Feature_9" + -0.036940963733305104 * "ADS"."Feature_10" + 1.0202492015498312 * "ADS"."Feature_11" + -0.009633585710444712 * "ADS"."Feature_12" + -0.10035644730130544 * "ADS"."Feature_13" + -0.00924831756243455 * "ADS"."Feature_14" + 0.012542593515701148 * "ADS"."Feature_15" + -0.007819277270791812 * "ADS"."Feature_16" + -0.028770927359456907 * "ADS"."Feature_17" + -0.04556490487881816 * "ADS"."Feature_18" + 0.00846740180208767 * "ADS"."Feature_19" + 1.0133835184691553 * "ADS"."Feature_20" + -0.2933304258155087 * "ADS"."Feature_21" + -0.16157501831282578 * "ADS"."Feature_22" + -0.018696511352502734 * "ADS"."Feature_23" + -0.24075825263496323 * "ADS"."Feature_24" + -1.1399643700070425 * "ADS"."Feature_25" + -1.4156856426718467 * "ADS"."Feature_26" + -0.6124960099385571 * "ADS"."Feature_27" + -0.6850027867349076 * "ADS"."Feature_28" + -0.10359866276919873 * "ADS"."Feature_29" + 0.334976487421 AS lincomb 
FROM "BreastCancer" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) AS "Proba_0", 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) IS NULL OR 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) > 0.0) THEN ln(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END))) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END >= 100.0) THEN 100.0 ELSE CASE WHEN (-linear_model_cte.lincomb <= -100.0) THEN -100.0 ELSE -linear_model_cte.lincomb END END)) END AS "DecisionProba" 
FROM linear_model_cte