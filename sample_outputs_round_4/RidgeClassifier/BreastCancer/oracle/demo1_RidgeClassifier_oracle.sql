-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.35268348548720657 * "ADS"."Feature_0" + -0.005057490939022052 * "ADS"."Feature_1" + -0.005958431902186282 * "ADS"."Feature_2" + -0.0022928611077293426 * "ADS"."Feature_3" + -0.3230178138844877 * "ADS"."Feature_4" + 0.14509379957810054 * "ADS"."Feature_5" + -0.4445259879695109 * "ADS"."Feature_6" + -0.587620522630544 * "ADS"."Feature_7" + -0.2933327179974138 * "ADS"."Feature_8" + -0.01697518116247652 * "ADS"."Feature_9" + -0.5009972631562373 * "ADS"."Feature_10" + -0.034968997017464115 * "ADS"."Feature_11" + 0.006450799622654759 * "ADS"."Feature_12" + 0.001351935130658142 * "ADS"."Feature_13" + -0.1147217140940141 * "ADS"."Feature_14" + 0.20512016768248456 * "ADS"."Feature_15" + 0.5191381666622594 * "ADS"."Feature_16" + -0.06221854210309631 * "ADS"."Feature_17" + -0.07110719557968168 * "ADS"."Feature_18" + 0.01848258510599138 * "ADS"."Feature_19" + -0.5303189525529711 * "ADS"."Feature_20" + -0.016899075367340984 * "ADS"."Feature_21" + 0.009126822044942952 * "ADS"."Feature_22" + 0.00265999565824666 * "ADS"."Feature_23" + -0.7597684351887332 * "ADS"."Feature_24" + -0.05717916481472805 * "ADS"."Feature_25" + -0.638762485923805 * "ADS"."Feature_26" + -0.9791652758165446 * "ADS"."Feature_27" + -0.7256206963655998 * "ADS"."Feature_28" + -0.18483104300650846 * "ADS"."Feature_29" + 4.07924221507 AS linear_combination 
FROM "INPUT_DATA" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_0", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte