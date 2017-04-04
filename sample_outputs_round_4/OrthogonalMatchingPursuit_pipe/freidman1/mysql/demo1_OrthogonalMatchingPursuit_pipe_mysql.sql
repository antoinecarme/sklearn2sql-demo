-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.470012924269 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.514199577004 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.466053389431 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.477394859799 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.472067876769 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.51082359666 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.503684993302 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.529991834786 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.53088584122 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.513597519468 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.470012924269 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.514199577004 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.466053389431 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.477394859799 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.472067876769 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.51082359666 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.503684993302 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.529991834786 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.53088584122 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.513597519468 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * 0.189580783382 + `CenteredDataForPCA`.impute_3 * 0.354470256653 + `CenteredDataForPCA`.impute_4 * 0.327231658218 + `CenteredDataForPCA`.impute_5 * 0.384817836649 + `CenteredDataForPCA`.impute_6 * -0.430035649785 + `CenteredDataForPCA`.impute_7 * -0.17948274081 + `CenteredDataForPCA`.impute_8 * -0.497230397224 + `CenteredDataForPCA`.impute_9 * -0.150711126474 + `CenteredDataForPCA`.impute_10 * -0.231421035487 + `CenteredDataForPCA`.impute_11 * -0.206379060496 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.225892490893 + `CenteredDataForPCA`.impute_3 * 0.069807032757 + `CenteredDataForPCA`.impute_4 * 0.143072289474 + `CenteredDataForPCA`.impute_5 * 0.228568641943 + `CenteredDataForPCA`.impute_6 * -0.0573877872891 + `CenteredDataForPCA`.impute_7 * -0.367649205582 + `CenteredDataForPCA`.impute_8 * 0.498911151968 + `CenteredDataForPCA`.impute_9 * 0.484210598622 + `CenteredDataForPCA`.impute_10 * -0.394486652439 + `CenteredDataForPCA`.impute_11 * 0.306488172395 AS anoova_3, `CenteredDataForPCA`.impute_2 * 0.574136710152 + `CenteredDataForPCA`.impute_3 * -0.0449845149422 + `CenteredDataForPCA`.impute_4 * 0.371281337008 + `CenteredDataForPCA`.impute_5 * -0.198975866891 + `CenteredDataForPCA`.impute_6 * -0.0418479121946 + `CenteredDataForPCA`.impute_7 * 0.174285443059 + `CenteredDataForPCA`.impute_8 * -0.122044909957 + `CenteredDataForPCA`.impute_9 * -0.0826047571043 + `CenteredDataForPCA`.impute_10 * 0.359258569931 + `CenteredDataForPCA`.impute_11 * 0.554968751577 AS anoova_4, `CenteredDataForPCA`.impute_2 * -0.0975342274349 + `CenteredDataForPCA`.impute_3 * -0.706000635385 + `CenteredDataForPCA`.impute_4 * -0.00773166070754 + `CenteredDataForPCA`.impute_5 * 0.470534813532 + `CenteredDataForPCA`.impute_6 * -0.432606769456 + `CenteredDataForPCA`.impute_7 * 0.258682768068 + `CenteredDataForPCA`.impute_8 * 0.0123149894925 + `CenteredDataForPCA`.impute_9 * 0.0770833469324 + `CenteredDataForPCA`.impute_10 * 0.0749629491651 + `CenteredDataForPCA`.impute_11 * 0.0693473245962 AS anoova_5, `CenteredDataForPCA`.impute_2 * -0.523395515681 + `CenteredDataForPCA`.impute_3 * 0.0548452104913 + `CenteredDataForPCA`.impute_4 * -0.133154970472 + `CenteredDataForPCA`.impute_5 * -0.0529128060724 + `CenteredDataForPCA`.impute_6 * -0.219887258756 + `CenteredDataForPCA`.impute_7 * -0.442939260363 + `CenteredDataForPCA`.impute_8 * -0.171185798315 + `CenteredDataForPCA`.impute_9 * -0.206368017548 + `CenteredDataForPCA`.impute_10 * 0.0843165270525 + `CenteredDataForPCA`.impute_11 * 0.615606950873 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.144805455301 + `CenteredDataForPCA`.impute_3 * 0.261584794711 + `CenteredDataForPCA`.impute_4 * 0.107823543171 + `CenteredDataForPCA`.impute_5 * 0.632671880938 + `CenteredDataForPCA`.impute_6 * 0.45580777943 + `CenteredDataForPCA`.impute_7 * 0.293579663817 + `CenteredDataForPCA`.impute_8 * 0.181418751535 + `CenteredDataForPCA`.impute_9 * -0.337766763597 + `CenteredDataForPCA`.impute_10 * 0.0293090323184 + `CenteredDataForPCA`.impute_11 * 0.238531401975 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.369458413805 + `CenteredDataForPCA`.impute_3 * 0.0978172584599 + `CenteredDataForPCA`.impute_4 * 0.34350847737 + `CenteredDataForPCA`.impute_5 * 0.0523768724272 + `CenteredDataForPCA`.impute_6 * 0.214003447864 + `CenteredDataForPCA`.impute_7 * 0.138064310578 + `CenteredDataForPCA`.impute_8 * -0.366260206856 + `CenteredDataForPCA`.impute_9 * 0.696591564567 + `CenteredDataForPCA`.impute_10 * 0.218690248604 + `CenteredDataForPCA`.impute_11 * 0.0334641940944 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.0176304176418 + `CenteredDataForPCA`.impute_3 * -0.0763547546109 + `CenteredDataForPCA`.impute_4 * 0.237474055632 + `CenteredDataForPCA`.impute_5 * 0.185786348813 + `CenteredDataForPCA`.impute_6 * 0.0516926794984 + `CenteredDataForPCA`.impute_7 * -0.538690621609 + `CenteredDataForPCA`.impute_8 * 0.254240104792 + `CenteredDataForPCA`.impute_9 * -0.0775071463302 + `CenteredDataForPCA`.impute_10 * 0.65841651558 + `CenteredDataForPCA`.impute_11 * -0.325470751052 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.332754305048 + `CenteredDataForPCA`.impute_3 * 0.196970629424 + `CenteredDataForPCA`.impute_4 * -0.728390232491 + `CenteredDataForPCA`.impute_5 * 0.301770861893 + `CenteredDataForPCA`.impute_6 * 0.0162267903764 + `CenteredDataForPCA`.impute_7 * -0.0607926442461 + `CenteredDataForPCA`.impute_8 * -0.228323319273 + `CenteredDataForPCA`.impute_9 * 0.273635792611 + `CenteredDataForPCA`.impute_10 * 0.301745100914 + `CenteredDataForPCA`.impute_11 * 0.0827158653044 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.177309213691 + `CenteredDataForPCA`.impute_3 * 0.493342696489 + `CenteredDataForPCA`.impute_4 * -0.0154808760267 + `CenteredDataForPCA`.impute_5 * -0.0853121968553 + `CenteredDataForPCA`.impute_6 * -0.563943313783 + `CenteredDataForPCA`.impute_7 * 0.374163767075 + `CenteredDataForPCA`.impute_8 * 0.419129486458 + `CenteredDataForPCA`.impute_9 * 0.0852232741369 + `CenteredDataForPCA`.impute_10 * 0.27528582729 + `CenteredDataForPCA`.impute_11 * -0.0301859698187 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 0.0 * `ADS_ano_2_OUT`.anoova_2 + 0.0 * `ADS_ano_2_OUT`.anoova_3 + 0.0 * `ADS_ano_2_OUT`.anoova_4 + 0.0 * `ADS_ano_2_OUT`.anoova_5 + 0.0 * `ADS_ano_2_OUT`.anoova_6 + 8.88436162705539 * `ADS_ano_2_OUT`.anoova_7 + 0.0 * `ADS_ano_2_OUT`.anoova_8 + 0.0 * `ADS_ano_2_OUT`.anoova_9 + 0.0 * `ADS_ano_2_OUT`.anoova_10 + 0.0 * `ADS_ano_2_OUT`.anoova_11 + 13.8325597368 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte