-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0694906390703 ELSE "ADS"."Feature_0" END AS impute_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.119163503916 ELSE "ADS"."Feature_1" END AS impute_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.127896899745 ELSE "ADS"."Feature_2" END AS impute_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.114287346209 ELSE "ADS"."Feature_3" END AS impute_output_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0413271968547 ELSE "ADS"."Feature_4" END AS impute_output_6 
FROM "INPUT_DATA" "ADS"), 
"ADS_ano_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.053647534364 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.452838029092 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.689918784888 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * -0.33402126184 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * -0.452218452037 AS anova_output_2, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.620732053756 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * 0.179006433042 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.520498333383 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.386172344142 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.403237919763 AS anova_output_3, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * 0.534948377585 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.502789475991 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.167923582168 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.610459612885 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.245303297449 AS anova_output_4, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * 0.119525555247 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.210071806412 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * 0.0756568397014 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * -0.602658142322 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * 0.756744794427 AS anova_output_5, ("ADS_imp_1_OUT".impute_output_2 - -0.0694906390703) * -0.557994206474 + ("ADS_imp_1_OUT".impute_output_3 - -0.119163503916) * -0.682617751982 + ("ADS_imp_1_OUT".impute_output_4 - -0.127896899745) * -0.468157311555 + ("ADS_imp_1_OUT".impute_output_5 - -0.114287346209) * 0.0586765863683 + ("ADS_imp_1_OUT".impute_output_6 - 0.0413271968547) * -0.0078268813005 AS anova_output_6 
FROM "ADS_imp_1_OUT"), 
random_number_cte AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", dbms_random.value AS uniform 
FROM "ADS_ano_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.45) THEN -1 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 1 END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.45 AS "Proba_-1", CASE WHEN (0.45 > 0.0) THEN ln(0.45) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_-1", 0.55 AS "Proba_1", CASE WHEN (0.55 > 0.0) THEN ln(0.55) ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_-1", CAST(NULL AS FLOAT) AS "Score_1", dummy_class_reg_cte."Proba_-1" AS "Proba_-1", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."LogProba_-1" AS "LogProba_-1", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."Decision" AS "Decision" 
FROM dummy_class_reg_cte