-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.47097043947 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.509777331271 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.51907296863 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.531414022042 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.502718920248 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.48476782508 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.512145642974 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.487329371857 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.500315916493 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.523930542924 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.47097043947 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.509777331271 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.51907296863 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.531414022042 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.502718920248 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.48476782508 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.512145642974 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.487329371857 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.500315916493 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.523930542924 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.424866273136 + `CenteredDataForPCA`.impute_3 * -0.0785608059267 + `CenteredDataForPCA`.impute_4 * 0.303030030856 + `CenteredDataForPCA`.impute_5 * 0.453666576686 + `CenteredDataForPCA`.impute_6 * -0.240869711066 + `CenteredDataForPCA`.impute_7 * -0.152459203471 + `CenteredDataForPCA`.impute_8 * -0.304527021591 + `CenteredDataForPCA`.impute_9 * 0.11256285093 + `CenteredDataForPCA`.impute_10 * 0.34915171468 + `CenteredDataForPCA`.impute_11 * 0.455082672419 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.257034168468 + `CenteredDataForPCA`.impute_3 * 0.758996394882 + `CenteredDataForPCA`.impute_4 * 0.291451346551 + `CenteredDataForPCA`.impute_5 * -0.0639867241228 + `CenteredDataForPCA`.impute_6 * 0.354093629246 + `CenteredDataForPCA`.impute_7 * -0.0235768021426 + `CenteredDataForPCA`.impute_8 * -0.162799675166 + `CenteredDataForPCA`.impute_9 * 0.280747591524 + `CenteredDataForPCA`.impute_10 * 0.138399010348 + `CenteredDataForPCA`.impute_11 * 0.135662545342 AS anoova_3, `CenteredDataForPCA`.impute_2 * 0.302417833646 + `CenteredDataForPCA`.impute_3 * 0.29129405235 + `CenteredDataForPCA`.impute_4 * -0.0128888475712 + `CenteredDataForPCA`.impute_5 * -0.0658662542701 + `CenteredDataForPCA`.impute_6 * -0.585651442444 + `CenteredDataForPCA`.impute_7 * -0.233463329512 + `CenteredDataForPCA`.impute_8 * 0.388904276516 + `CenteredDataForPCA`.impute_9 * -0.276442226045 + `CenteredDataForPCA`.impute_10 * -0.104934117298 + `CenteredDataForPCA`.impute_11 * 0.427803687742 AS anoova_4, `CenteredDataForPCA`.impute_2 * -0.349685438076 + `CenteredDataForPCA`.impute_3 * 0.306934056666 + `CenteredDataForPCA`.impute_4 * -0.334235236078 + `CenteredDataForPCA`.impute_5 * 0.358014348016 + `CenteredDataForPCA`.impute_6 * 0.103313276157 + `CenteredDataForPCA`.impute_7 * 0.583163405998 + `CenteredDataForPCA`.impute_8 * 0.348652401719 + `CenteredDataForPCA`.impute_9 * 0.0277494765364 + `CenteredDataForPCA`.impute_10 * -0.17307662393 + `CenteredDataForPCA`.impute_11 * 0.201461840767 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.0591573509522 + `CenteredDataForPCA`.impute_3 * -0.0612079016568 + `CenteredDataForPCA`.impute_4 * 0.187256838621 + `CenteredDataForPCA`.impute_5 * 0.50532269841 + `CenteredDataForPCA`.impute_6 * 0.419629206845 + `CenteredDataForPCA`.impute_7 * -0.44202393894 + `CenteredDataForPCA`.impute_8 * 0.133922810757 + `CenteredDataForPCA`.impute_9 * -0.216547098124 + `CenteredDataForPCA`.impute_10 * -0.514996563457 + `CenteredDataForPCA`.impute_11 * 0.0285409935207 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.692993663714 + `CenteredDataForPCA`.impute_3 * 0.245941356857 + `CenteredDataForPCA`.impute_4 * 0.128934731994 + `CenteredDataForPCA`.impute_5 * -0.472517782923 + `CenteredDataForPCA`.impute_6 * 0.129448027844 + `CenteredDataForPCA`.impute_7 * -0.250080055207 + `CenteredDataForPCA`.impute_8 * 0.117088811949 + `CenteredDataForPCA`.impute_9 * -0.351166796526 + `CenteredDataForPCA`.impute_10 * -0.0299370477663 + `CenteredDataForPCA`.impute_11 * -0.0464160438501 AS anoova_7, `CenteredDataForPCA`.impute_2 * 0.193624306995 + `CenteredDataForPCA`.impute_3 * -0.10785077497 + `CenteredDataForPCA`.impute_4 * 0.425634068115 + `CenteredDataForPCA`.impute_5 * 0.105939772163 + `CenteredDataForPCA`.impute_6 * 0.194157411062 + `CenteredDataForPCA`.impute_7 * 0.356777600812 + `CenteredDataForPCA`.impute_8 * 0.231045937286 + `CenteredDataForPCA`.impute_9 * -0.580966416108 + `CenteredDataForPCA`.impute_10 * 0.447377111246 + `CenteredDataForPCA`.impute_11 * -0.0495217593816 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.110949984683 + `CenteredDataForPCA`.impute_3 * -0.217494182612 + `CenteredDataForPCA`.impute_4 * -0.0853984574388 + `CenteredDataForPCA`.impute_5 * -0.323217041746 + `CenteredDataForPCA`.impute_6 * 0.264366798178 + `CenteredDataForPCA`.impute_7 * 0.229244088505 + `CenteredDataForPCA`.impute_8 * -0.397840022428 + `CenteredDataForPCA`.impute_9 * -0.230213001623 + `CenteredDataForPCA`.impute_10 * -0.261413276053 + `CenteredDataForPCA`.impute_11 * 0.653123236663 AS anoova_9, `CenteredDataForPCA`.impute_2 * -0.0766633740217 + `CenteredDataForPCA`.impute_3 * -0.056785587273 + `CenteredDataForPCA`.impute_4 * 0.672711811171 + `CenteredDataForPCA`.impute_5 * -0.11249507108 + `CenteredDataForPCA`.impute_6 * -0.292116344903 + `CenteredDataForPCA`.impute_7 * 0.361682305087 + `CenteredDataForPCA`.impute_8 * 0.00936488303423 + `CenteredDataForPCA`.impute_9 * 0.205013338586 + `CenteredDataForPCA`.impute_10 * -0.505982859505 + `CenteredDataForPCA`.impute_11 * -0.106859390499 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.0163792578128 + `CenteredDataForPCA`.impute_3 * -0.335109328371 + `CenteredDataForPCA`.impute_4 * 0.136608460494 + `CenteredDataForPCA`.impute_5 * -0.22496217987 + `CenteredDataForPCA`.impute_6 * 0.277801930504 + `CenteredDataForPCA`.impute_7 * -0.114163244426 + `CenteredDataForPCA`.impute_8 * 0.60379036646 + `CenteredDataForPCA`.impute_9 * 0.478078257408 + `CenteredDataForPCA`.impute_10 * 0.16538617073 + `CenteredDataForPCA`.impute_11 * 0.327844830412 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, -0.01168924711375475 * `ADS_ano_2_OUT`.anoova_2 + 1.3644295289106467 * `ADS_ano_2_OUT`.anoova_3 + 0.07650829427981125 * `ADS_ano_2_OUT`.anoova_4 + 0.37800792811954703 * `ADS_ano_2_OUT`.anoova_5 + 0.8041330702118449 * `ADS_ano_2_OUT`.anoova_6 + -0.6393431262272496 * `ADS_ano_2_OUT`.anoova_7 + 0.1515290827097493 * `ADS_ano_2_OUT`.anoova_8 + -0.11406314091188956 * `ADS_ano_2_OUT`.anoova_9 + -0.2841702973607497 * `ADS_ano_2_OUT`.anoova_10 + -0.3107951588651709 * `ADS_ano_2_OUT`.anoova_11 + 10.9204781877 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte