-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.51004023006 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.515537758618 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.505697489377 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.480279100641 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.492366631002 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.500394711547 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.496912711723 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.52384478187 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.490857661881 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.551734786466 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.51004023006 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.515537758618 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.505697489377 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.480279100641 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.492366631002 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.500394711547 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.496912711723 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.52384478187 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.490857661881 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.551734786466 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.535906448705 + `CenteredDataForPCA`.impute_3 * -0.214174141056 + `CenteredDataForPCA`.impute_4 * 0.0411272718905 + `CenteredDataForPCA`.impute_5 * -0.204229548022 + `CenteredDataForPCA`.impute_6 * -0.476657644389 + `CenteredDataForPCA`.impute_7 * 0.00939315728632 + `CenteredDataForPCA`.impute_8 * 0.0840369143961 + `CenteredDataForPCA`.impute_9 * 0.132223171892 + `CenteredDataForPCA`.impute_10 * -0.508520144718 + `CenteredDataForPCA`.impute_11 * -0.336309241104 AS anoova_2, `CenteredDataForPCA`.impute_2 * -0.250270203574 + `CenteredDataForPCA`.impute_3 * -0.0893307030091 + `CenteredDataForPCA`.impute_4 * -0.025115101482 + `CenteredDataForPCA`.impute_5 * 0.769908003287 + `CenteredDataForPCA`.impute_6 * -0.347245266344 + `CenteredDataForPCA`.impute_7 * -0.00815417222748 + `CenteredDataForPCA`.impute_8 * -0.184278247956 + `CenteredDataForPCA`.impute_9 * -0.398001327696 + `CenteredDataForPCA`.impute_10 * 0.130579302664 + `CenteredDataForPCA`.impute_11 * 0.0770421931783 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.0884079499871 + `CenteredDataForPCA`.impute_3 * 0.370914665414 + `CenteredDataForPCA`.impute_4 * -0.537485659401 + `CenteredDataForPCA`.impute_5 * -0.0442744609755 + `CenteredDataForPCA`.impute_6 * -0.337547866946 + `CenteredDataForPCA`.impute_7 * -0.337574360685 + `CenteredDataForPCA`.impute_8 * 0.243360743719 + `CenteredDataForPCA`.impute_9 * 0.200960186986 + `CenteredDataForPCA`.impute_10 * -0.00751993357238 + `CenteredDataForPCA`.impute_11 * 0.485998224475 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.355906724194 + `CenteredDataForPCA`.impute_3 * 0.454487410181 + `CenteredDataForPCA`.impute_4 * 0.499863637104 + `CenteredDataForPCA`.impute_5 * -0.0298355811138 + `CenteredDataForPCA`.impute_6 * -0.27935716847 + `CenteredDataForPCA`.impute_7 * -0.258811692002 + `CenteredDataForPCA`.impute_8 * -0.279567096631 + `CenteredDataForPCA`.impute_9 * -0.151074765862 + `CenteredDataForPCA`.impute_10 * -0.402289633516 + `CenteredDataForPCA`.impute_11 * 0.0904188306412 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.643813847083 + `CenteredDataForPCA`.impute_3 * -0.265850533879 + `CenteredDataForPCA`.impute_4 * -0.410259056766 + `CenteredDataForPCA`.impute_5 * 0.244720030651 + `CenteredDataForPCA`.impute_6 * -0.165013581743 + `CenteredDataForPCA`.impute_7 * 0.23979516079 + `CenteredDataForPCA`.impute_8 * 0.0597735523022 + `CenteredDataForPCA`.impute_9 * 0.104060534701 + `CenteredDataForPCA`.impute_10 * -0.410167315894 + `CenteredDataForPCA`.impute_11 * -0.138769363033 AS anoova_6, `CenteredDataForPCA`.impute_2 * 0.195655124192 + `CenteredDataForPCA`.impute_3 * -0.261512175693 + `CenteredDataForPCA`.impute_4 * 0.417874454802 + `CenteredDataForPCA`.impute_5 * 0.244330167508 + `CenteredDataForPCA`.impute_6 * -0.189435664962 + `CenteredDataForPCA`.impute_7 * -0.392660537535 + `CenteredDataForPCA`.impute_8 * 0.492588079418 + `CenteredDataForPCA`.impute_9 * 0.392761717539 + `CenteredDataForPCA`.impute_10 * 0.252906362269 + `CenteredDataForPCA`.impute_11 * -0.089886505603 AS anoova_7, `CenteredDataForPCA`.impute_2 * 0.0280157450648 + `CenteredDataForPCA`.impute_3 * -0.405199574068 + `CenteredDataForPCA`.impute_4 * 0.187744373091 + `CenteredDataForPCA`.impute_5 * -0.202022268844 + `CenteredDataForPCA`.impute_6 * 0.0098297619965 + `CenteredDataForPCA`.impute_7 * 0.0927588604188 + `CenteredDataForPCA`.impute_8 * 0.385017029984 + `CenteredDataForPCA`.impute_9 * -0.475801085065 + `CenteredDataForPCA`.impute_10 * -0.210755689178 + `CenteredDataForPCA`.impute_11 * 0.575520546647 AS anoova_8, `CenteredDataForPCA`.impute_2 * -0.0175219966627 + `CenteredDataForPCA`.impute_3 * 0.00208806429951 + `CenteredDataForPCA`.impute_4 * -0.233115382789 + `CenteredDataForPCA`.impute_5 * 0.0648408930411 + `CenteredDataForPCA`.impute_6 * 0.384400142285 + `CenteredDataForPCA`.impute_7 * -0.631811539552 + `CenteredDataForPCA`.impute_8 * 0.199290429576 + `CenteredDataForPCA`.impute_9 * -0.410781891974 + `CenteredDataForPCA`.impute_10 * -0.233687921482 + `CenteredDataForPCA`.impute_11 * -0.362110097728 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.119062269313 + `CenteredDataForPCA`.impute_3 * -0.528389283541 + `CenteredDataForPCA`.impute_4 * -0.130640921779 + `CenteredDataForPCA`.impute_5 * -0.283753902608 + `CenteredDataForPCA`.impute_6 * -0.178028019423 + `CenteredDataForPCA`.impute_7 * -0.431181919353 + `CenteredDataForPCA`.impute_8 * -0.583564940809 + `CenteredDataForPCA`.impute_9 * 0.022898020839 + `CenteredDataForPCA`.impute_10 * 0.191404167589 + `CenteredDataForPCA`.impute_11 * 0.117157480468 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.218262726685 + `CenteredDataForPCA`.impute_3 * -0.139862623929 + `CenteredDataForPCA`.impute_4 * 0.0966123906383 + `CenteredDataForPCA`.impute_5 * 0.34287436252 + `CenteredDataForPCA`.impute_6 * 0.46644378264 + `CenteredDataForPCA`.impute_7 * -0.116247344112 + `CenteredDataForPCA`.impute_8 * -0.216514177058 + `CenteredDataForPCA`.impute_9 * 0.447392755871 + `CenteredDataForPCA`.impute_10 * -0.441135346412 + `CenteredDataForPCA`.impute_11 * 0.36493936204 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, -8.165486348556492 * `ADS_ano_2_OUT`.anoova_2 + 4.371775197988048 * `ADS_ano_2_OUT`.anoova_3 + -0.6407336494773644 * `ADS_ano_2_OUT`.anoova_4 + 2.0576622004336875 * `ADS_ano_2_OUT`.anoova_5 + 3.639454207051695 * `ADS_ano_2_OUT`.anoova_6 + 0.2818962500895749 * `ADS_ano_2_OUT`.anoova_7 + -4.000312659074289 * `ADS_ano_2_OUT`.anoova_8 + 2.451745526793175 * `ADS_ano_2_OUT`.anoova_9 + -5.428277877037804 * `ADS_ano_2_OUT`.anoova_10 + 2.711303277915786 * `ADS_ano_2_OUT`.anoova_11 + 13.9243105849 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte