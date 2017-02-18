-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT mahalanobis_cte.`KEY` AS `KEY`, mahalanobis_cte.mahalanobis AS `AnomalyScore`, CASE WHEN (mahalanobis_cte.mahalanobis <= 11.8735721686) THEN 1 ELSE -1 END AS `OutlierIndicator` 
FROM (SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 0.878061667207 * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) + 0.0668978314618 * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) + -0.221515739545 * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) + 0.025298430386 * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) + -0.0122886994408 * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) + 0.0668978314618 * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) + 1.16605192379 * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) + -0.323733900608 * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) + 0.246475481429 * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) + 0.0159865699438 * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) + -0.221515739545 * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) + -0.323733900608 * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) + 1.48494961361 * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) + -0.211506654615 * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) + 0.0228713817266 * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) + 0.025298430386 * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) + 0.246475481429 * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) + -0.211506654615 * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) + 1.3242926966 * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) + 0.0268631658717 * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) + -0.0122886994408 * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) * (`ADS_ano_2_OUT`.anova_output_2 - 0.0789627083685) + 0.0159865699438 * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) * (`ADS_ano_2_OUT`.anova_output_3 - -0.0575536750235) + 0.0228713817266 * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) * (`ADS_ano_2_OUT`.anova_output_4 - -0.0250741748778) + 0.0268631658717 * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) * (`ADS_ano_2_OUT`.anova_output_5 - -0.0387240292934) + 1.30461937542 * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) * (`ADS_ano_2_OUT`.anova_output_6 - 0.00871824674873) AS mahalanobis 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impute_output_2 - -0.0694906390703) * -0.053647534364 + (`ADS_imp_1_OUT`.impute_output_3 - -0.119163503916) * -0.452838029092 + (`ADS_imp_1_OUT`.impute_output_4 - -0.127896899745) * 0.689918784888 + (`ADS_imp_1_OUT`.impute_output_5 - -0.114287346209) * -0.33402126184 + (`ADS_imp_1_OUT`.impute_output_6 - 0.0413271968547) * -0.452218452037 AS anova_output_2, (`ADS_imp_1_OUT`.impute_output_2 - -0.0694906390703) * -0.620732053756 + (`ADS_imp_1_OUT`.impute_output_3 - -0.119163503916) * 0.179006433042 + (`ADS_imp_1_OUT`.impute_output_4 - -0.127896899745) * 0.520498333383 + (`ADS_imp_1_OUT`.impute_output_5 - -0.114287346209) * 0.386172344142 + (`ADS_imp_1_OUT`.impute_output_6 - 0.0413271968547) * 0.403237919763 AS anova_output_3, (`ADS_imp_1_OUT`.impute_output_2 - -0.0694906390703) * 0.534948377585 + (`ADS_imp_1_OUT`.impute_output_3 - -0.119163503916) * -0.502789475991 + (`ADS_imp_1_OUT`.impute_output_4 - -0.127896899745) * 0.167923582168 + (`ADS_imp_1_OUT`.impute_output_5 - -0.114287346209) * 0.610459612885 + (`ADS_imp_1_OUT`.impute_output_6 - 0.0413271968547) * 0.245303297449 AS anova_output_4, (`ADS_imp_1_OUT`.impute_output_2 - -0.0694906390703) * 0.119525555247 + (`ADS_imp_1_OUT`.impute_output_3 - -0.119163503916) * -0.210071806412 + (`ADS_imp_1_OUT`.impute_output_4 - -0.127896899745) * 0.0756568397014 + (`ADS_imp_1_OUT`.impute_output_5 - -0.114287346209) * -0.602658142322 + (`ADS_imp_1_OUT`.impute_output_6 - 0.0413271968547) * 0.756744794427 AS anova_output_5, (`ADS_imp_1_OUT`.impute_output_2 - -0.0694906390703) * -0.557994206474 + (`ADS_imp_1_OUT`.impute_output_3 - -0.119163503916) * -0.682617751982 + (`ADS_imp_1_OUT`.impute_output_4 - -0.127896899745) * -0.468157311555 + (`ADS_imp_1_OUT`.impute_output_5 - -0.114287346209) * 0.0586765863683 + (`ADS_imp_1_OUT`.impute_output_6 - 0.0413271968547) * -0.0078268813005 AS anova_output_6 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.0694906390703 ELSE `ADS`.`Feature_0` END AS impute_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.119163503916 ELSE `ADS`.`Feature_1` END AS impute_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -0.127896899745 ELSE `ADS`.`Feature_2` END AS impute_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN -0.114287346209 ELSE `ADS`.`Feature_3` END AS impute_output_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.0413271968547 ELSE `ADS`.`Feature_4` END AS impute_output_6 
FROM `INPUT_DATA` AS `ADS`) AS `ADS_imp_1_OUT`) AS `ADS_ano_2_OUT`) AS mahalanobis_cte