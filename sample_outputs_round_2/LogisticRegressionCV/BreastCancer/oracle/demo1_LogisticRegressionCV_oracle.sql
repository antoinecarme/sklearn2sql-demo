-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 4.579977111353727 * "ADS"."Feature_0" + 0.17692907566766763 * "ADS"."Feature_1" + -0.4112788450467507 * "ADS"."Feature_2" + -0.012170654920046238 * "ADS"."Feature_3" + -1.585470070561366 * "ADS"."Feature_4" + -0.5835571975498083 * "ADS"."Feature_5" + -2.748239876560535 * "ADS"."Feature_6" + -2.669874594778326 * "ADS"."Feature_7" + -2.3759033168958696 * "ADS"."Feature_8" + 0.07156986531030714 * "ADS"."Feature_9" + -0.1674870182009661 * "ADS"."Feature_10" + 2.906273779746685 * "ADS"."Feature_11" + -0.3760568967401537 * "ADS"."Feature_12" + -0.11445056356353209 * "ADS"."Feature_13" + -0.31912700522268833 * "ADS"."Feature_14" + 1.4302742219327949 * "ADS"."Feature_15" + 1.1229073513107743 * "ADS"."Feature_16" + -0.3870671040286047 * "ADS"."Feature_17" + -0.24461940636657772 * "ADS"."Feature_18" + 0.2576900526440803 * "ADS"."Feature_19" + -1.6940147512055033 * "ADS"."Feature_20" + -0.5366655201177158 * "ADS"."Feature_21" + 0.11027992198945462 * "ADS"."Feature_22" + -0.0053261244417368075 * "ADS"."Feature_23" + -3.314217152136991 * "ADS"."Feature_24" + 0.03493010765411947 * "ADS"."Feature_25" + -4.876052123989801 * "ADS"."Feature_26" + -5.336343502257707 * "ADS"."Feature_27" + -5.2323819439315695 * "ADS"."Feature_28" + -0.03133072605936213 * "ADS"."Feature_29" + 17.8759018671 AS linear_combination 
FROM "INPUT_DATA" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_0", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte