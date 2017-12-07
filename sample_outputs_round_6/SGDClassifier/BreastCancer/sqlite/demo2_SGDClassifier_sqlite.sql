-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 4088.443526170791 * "ADS"."Feature_0" + 7390.4614325068615 * "ADS"."Feature_1" + 24438.05096418722 * "ADS"."Feature_2" + 14726.92837465559 * "ADS"."Feature_3" + 41.21728650137724 * "ADS"."Feature_4" + 1.5301308539944485 * "ADS"."Feature_5" + -44.948564049586665 * "ADS"."Feature_6" + -20.552141873278185 * "ADS"."Feature_7" + 75.66391184572977 * "ADS"."Feature_8" + 31.136776859504057 * "ADS"."Feature_9" + 4.620523415977944 * "ADS"."Feature_10" + 507.1522038567479 * "ADS"."Feature_11" + -168.80819559228627 * "ADS"."Feature_12" + -11388.271349862216 * "ADS"."Feature_13" + 3.114449035812663 * "ADS"."Feature_14" + 2.607541322314036 * "ADS"."Feature_15" + 1.461965909090896 * "ADS"."Feature_16" + 1.477052341597786 * "ADS"."Feature_17" + 8.051615013774068 * "ADS"."Feature_18" + 1.3843044077134956 * "ADS"."Feature_19" + 4164.820936639111 * "ADS"."Feature_20" + 9440.943526170775 * "ADS"."Feature_21" + 24124.414600550892 * "ADS"."Feature_22" + -17159.090909090843 * "ADS"."Feature_23" + 53.47524104683172 * "ADS"."Feature_24" + -14.819421487603348 * "ADS"."Feature_25" + -72.90450757575752 * "ADS"."Feature_26" + -17.44838154269969 * "ADS"."Feature_27" + 108.75585399449008 * "ADS"."Feature_28" + 33.18991046831947 * "ADS"."Feature_29" + 967.170851609 AS linear_combination 
FROM "BreastCancer" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_0", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte