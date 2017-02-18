-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT dummy_class_reg_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, dummy_class_reg_cte.`Proba_0` AS `Proba_0`, dummy_class_reg_cte.`Proba_1` AS `Proba_1`, dummy_class_reg_cte.`Proba_2` AS `Proba_2`, dummy_class_reg_cte.`LogProba_0` AS `LogProba_0`, dummy_class_reg_cte.`LogProba_1` AS `LogProba_1`, dummy_class_reg_cte.`LogProba_2` AS `LogProba_2`, dummy_class_reg_cte.`Decision` AS `Decision` 
FROM (SELECT multinomial_cte.`KEY` AS `KEY`, 0.333333333333 AS `Proba_0`, CASE WHEN (0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_0`, 0.333333333333 AS `Proba_1`, CASE WHEN (0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_1`, 0.333333333333 AS `Proba_2`, CASE WHEN (0.333333333333 > 0.0) THEN ln(0.333333333333) ELSE -1.79769313486231e+308 END AS `LogProba_2`, multinomial_cte.multinomial_expr AS `Decision` 
FROM (SELECT random_number_cte.`KEY` AS `KEY`, CASE WHEN (random_number_cte.uniform <= 0.333333333333) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.666666666667) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 2 END END END AS multinomial_expr 
FROM (SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, rand() AS uniform 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (`ADS_imp_1_OUT`.impute_output_2 - 5.84333333333) * 0.361589677381 + (`ADS_imp_1_OUT`.impute_output_3 - 3.054) * -0.0822688898922 + (`ADS_imp_1_OUT`.impute_output_4 - 3.75866666667) * 0.856572105291 + (`ADS_imp_1_OUT`.impute_output_5 - 1.19866666667) * 0.358843926248 AS anova_output_2, (`ADS_imp_1_OUT`.impute_output_2 - 5.84333333333) * 0.656539883286 + (`ADS_imp_1_OUT`.impute_output_3 - 3.054) * 0.729712371326 + (`ADS_imp_1_OUT`.impute_output_4 - 3.75866666667) * -0.175767403429 + (`ADS_imp_1_OUT`.impute_output_5 - 1.19866666667) * -0.074706470135 AS anova_output_3, (`ADS_imp_1_OUT`.impute_output_2 - 5.84333333333) * -0.580997279828 + (`ADS_imp_1_OUT`.impute_output_3 - 3.054) * 0.596418087938 + (`ADS_imp_1_OUT`.impute_output_4 - 3.75866666667) * 0.072524075487 + (`ADS_imp_1_OUT`.impute_output_5 - 1.19866666667) * 0.549060910727 AS anova_output_4, (`ADS_imp_1_OUT`.impute_output_2 - 5.84333333333) * 0.317254547169 + (`ADS_imp_1_OUT`.impute_output_3 - 3.054) * -0.324094352418 + (`ADS_imp_1_OUT`.impute_output_4 - 3.75866666667) * -0.47971898733 + (`ADS_imp_1_OUT`.impute_output_5 - 1.19866666667) * 0.751120560381 AS anova_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 5.84333333333 ELSE `ADS`.`Feature_0` END AS impute_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 3.054 ELSE `ADS`.`Feature_1` END AS impute_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 3.75866666667 ELSE `ADS`.`Feature_2` END AS impute_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.19866666667 ELSE `ADS`.`Feature_3` END AS impute_output_5 
FROM `INPUT_DATA` AS `ADS`) AS `ADS_imp_1_OUT`) AS `ADS_ano_2_OUT`) AS random_number_cte) AS multinomial_cte) AS dummy_class_reg_cte