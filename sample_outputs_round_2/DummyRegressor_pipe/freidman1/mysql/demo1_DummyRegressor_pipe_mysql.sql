-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT dummy_class_reg_cte.`KEY` AS `KEY`, dummy_class_reg_cte.`Constant` AS `Estimator` 
FROM (SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 15.2624542064 AS `Constant` 
FROM (SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.00851324919785 + `CenteredDataForPCA`.impute_3 * 0.252951825818 + `CenteredDataForPCA`.impute_4 * 0.658111706268 + `CenteredDataForPCA`.impute_5 * -0.421210509211 + `CenteredDataForPCA`.impute_6 * -0.0400630908991 + `CenteredDataForPCA`.impute_7 * 0.4813447201 + `CenteredDataForPCA`.impute_8 * 0.151759732107 + `CenteredDataForPCA`.impute_9 * 0.0341509048097 + `CenteredDataForPCA`.impute_10 * 0.232502907116 + `CenteredDataForPCA`.impute_11 * 0.117732298798 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.0481330242326 + `CenteredDataForPCA`.impute_3 * 0.016054743307 + `CenteredDataForPCA`.impute_4 * 0.176378157518 + `CenteredDataForPCA`.impute_5 * 0.482838167872 + `CenteredDataForPCA`.impute_6 * -0.498570504425 + `CenteredDataForPCA`.impute_7 * 0.360242287156 + `CenteredDataForPCA`.impute_8 * -0.0295836638671 + `CenteredDataForPCA`.impute_9 * -0.476835172965 + `CenteredDataForPCA`.impute_10 * -0.259130974231 + `CenteredDataForPCA`.impute_11 * -0.243804462435 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.204399035373 + `CenteredDataForPCA`.impute_3 * -0.514189169805 + `CenteredDataForPCA`.impute_4 * 0.227039380735 + `CenteredDataForPCA`.impute_5 * 0.0474290629294 + `CenteredDataForPCA`.impute_6 * 0.32407232068 + `CenteredDataForPCA`.impute_7 * 0.0888110541031 + `CenteredDataForPCA`.impute_8 * 0.0796829633929 + `CenteredDataForPCA`.impute_9 * 0.0900052372189 + `CenteredDataForPCA`.impute_10 * 0.155828998298 + `CenteredDataForPCA`.impute_11 * -0.698849675628 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.339440112666 + `CenteredDataForPCA`.impute_3 * 0.37023857831 + `CenteredDataForPCA`.impute_4 * -0.0384991117806 + `CenteredDataForPCA`.impute_5 * -0.126587094852 + `CenteredDataForPCA`.impute_6 * -0.061439184446 + `CenteredDataForPCA`.impute_7 * 0.00783784453338 + `CenteredDataForPCA`.impute_8 * -0.6904579626 + `CenteredDataForPCA`.impute_9 * 0.18552034257 + `CenteredDataForPCA`.impute_10 * 0.113637511171 + `CenteredDataForPCA`.impute_11 * -0.449775106127 AS anoova_5, `CenteredDataForPCA`.impute_2 * -0.440658954768 + `CenteredDataForPCA`.impute_3 * 0.48222192876 + `CenteredDataForPCA`.impute_4 * -0.229717154739 + `CenteredDataForPCA`.impute_5 * -0.367902220886 + `CenteredDataForPCA`.impute_6 * -0.0525523629197 + `CenteredDataForPCA`.impute_7 * -0.164382650819 + `CenteredDataForPCA`.impute_8 * 0.291402308566 + `CenteredDataForPCA`.impute_9 * -0.271871844505 + `CenteredDataForPCA`.impute_10 * -0.168388406684 + `CenteredDataForPCA`.impute_11 * -0.410112197057 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.395822397076 + `CenteredDataForPCA`.impute_3 * -0.311009097996 + `CenteredDataForPCA`.impute_4 * 0.268199560289 + `CenteredDataForPCA`.impute_5 * -0.235054314029 + `CenteredDataForPCA`.impute_6 * -0.588606960724 + `CenteredDataForPCA`.impute_7 * -0.407390944515 + `CenteredDataForPCA`.impute_8 * -0.306152264369 + `CenteredDataForPCA`.impute_9 * 0.0827498409473 + `CenteredDataForPCA`.impute_10 * 0.0311970980552 + `CenteredDataForPCA`.impute_11 * 0.0737624313988 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.514929151368 + `CenteredDataForPCA`.impute_3 * 0.151640371288 + `CenteredDataForPCA`.impute_4 * 0.0356166966688 + `CenteredDataForPCA`.impute_5 * 0.202983007081 + `CenteredDataForPCA`.impute_6 * 0.16345144421 + `CenteredDataForPCA`.impute_7 * 0.313862486162 + `CenteredDataForPCA`.impute_8 * -0.243454085624 + `CenteredDataForPCA`.impute_9 * 0.473242589609 + `CenteredDataForPCA`.impute_10 * -0.5005988278 + `CenteredDataForPCA`.impute_11 * 0.101630974439 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.130443880222 + `CenteredDataForPCA`.impute_3 * 0.350883147665 + `CenteredDataForPCA`.impute_4 * 0.400613328907 + `CenteredDataForPCA`.impute_5 * 0.427086617515 + `CenteredDataForPCA`.impute_6 * -0.0815539324485 + `CenteredDataForPCA`.impute_7 * -0.471034100559 + `CenteredDataForPCA`.impute_8 * 0.350969833635 + `CenteredDataForPCA`.impute_9 * 0.380262906704 + `CenteredDataForPCA`.impute_10 * 0.0115392414725 + `CenteredDataForPCA`.impute_11 * -0.143298180107 AS anoova_9, `CenteredDataForPCA`.impute_2 * -0.4387460204 + `CenteredDataForPCA`.impute_3 * 0.242488119586 + `CenteredDataForPCA`.impute_4 * 0.0599931184141 + `CenteredDataForPCA`.impute_5 * 0.38188762932 + `CenteredDataForPCA`.impute_6 * 0.240672433584 + `CenteredDataForPCA`.impute_7 * -0.074463429649 + `CenteredDataForPCA`.impute_8 * -0.271454211317 + `CenteredDataForPCA`.impute_9 * -0.314381223752 + `CenteredDataForPCA`.impute_10 * 0.582224959805 + `CenteredDataForPCA`.impute_11 * 0.155843628698 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.122844573103 + `CenteredDataForPCA`.impute_3 * 0.010563642659 + `CenteredDataForPCA`.impute_4 * -0.4389657477 + `CenteredDataForPCA`.impute_5 * 0.105495904448 + `CenteredDataForPCA`.impute_6 * -0.447788135828 + `CenteredDataForPCA`.impute_7 * 0.334166568959 + `CenteredDataForPCA`.impute_8 * 0.241310170909 + `CenteredDataForPCA`.impute_9 * 0.425190988376 + `CenteredDataForPCA`.impute_10 * 0.471753343368 + `CenteredDataForPCA`.impute_11 * -0.0850094362153 AS anoova_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.535163263965 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.47927059291 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.512101779901 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.539675061926 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.566472816602 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.524634478799 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.494437125058 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.550825619203 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.523945887272 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.499194297083 AS impute_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.535163263965 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.47927059291 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.512101779901 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.539675061926 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.566472816602 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.524634478799 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.494437125058 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.550825619203 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.523945887272 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.499194297083 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`) AS `ADS_imp_1_OUT`) AS `CenteredDataForPCA`) AS `ADS_ano_2_OUT`) AS dummy_class_reg_cte