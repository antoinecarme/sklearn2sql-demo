-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.503100060912 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.493706534671 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.535762705458 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.563208072066 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.550823515018 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.438526856872 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.498782025742 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.501490767156 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.448073499051 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.538382974035 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.503100060912 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.493706534671 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.535762705458 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.563208072066 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.550823515018 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.438526856872 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.498782025742 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.501490767156 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.448073499051 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.538382974035 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * 0.155542184592 + `CenteredDataForPCA`.impute_3 * -0.540829247133 + `CenteredDataForPCA`.impute_4 * 0.311813711565 + `CenteredDataForPCA`.impute_5 * 0.418266868698 + `CenteredDataForPCA`.impute_6 * 0.0548688923226 + `CenteredDataForPCA`.impute_7 * 0.301757038076 + `CenteredDataForPCA`.impute_8 * -0.424339264461 + `CenteredDataForPCA`.impute_9 * -0.156198181807 + `CenteredDataForPCA`.impute_10 * 0.156850174302 + `CenteredDataForPCA`.impute_11 * 0.296654385055 AS anoova_2, `CenteredDataForPCA`.impute_2 * -0.165633822452 + `CenteredDataForPCA`.impute_3 * 0.167627245869 + `CenteredDataForPCA`.impute_4 * -0.152435295168 + `CenteredDataForPCA`.impute_5 * 0.454854545897 + `CenteredDataForPCA`.impute_6 * -0.80434359607 + `CenteredDataForPCA`.impute_7 * -0.00361387205603 + `CenteredDataForPCA`.impute_8 * -0.121471662182 + `CenteredDataForPCA`.impute_9 * -0.117093883034 + `CenteredDataForPCA`.impute_10 * 0.0404654655853 + `CenteredDataForPCA`.impute_11 * -0.193007485594 AS anoova_3, `CenteredDataForPCA`.impute_2 * 0.288778926545 + `CenteredDataForPCA`.impute_3 * 0.267923918104 + `CenteredDataForPCA`.impute_4 * -0.179889684181 + `CenteredDataForPCA`.impute_5 * -0.0983842519642 + `CenteredDataForPCA`.impute_6 * -0.190003510905 + `CenteredDataForPCA`.impute_7 * 0.253018435834 + `CenteredDataForPCA`.impute_8 * -0.255287408833 + `CenteredDataForPCA`.impute_9 * 0.669651283004 + `CenteredDataForPCA`.impute_10 * -0.00886004582697 + `CenteredDataForPCA`.impute_11 * 0.434719542698 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.471521386704 + `CenteredDataForPCA`.impute_3 * -0.186222680178 + `CenteredDataForPCA`.impute_4 * -0.554138704715 + `CenteredDataForPCA`.impute_5 * -0.132308307736 + `CenteredDataForPCA`.impute_6 * -0.057457745014 + `CenteredDataForPCA`.impute_7 * 0.483464830115 + `CenteredDataForPCA`.impute_8 * 0.240374283221 + `CenteredDataForPCA`.impute_9 * -0.298798627647 + `CenteredDataForPCA`.impute_10 * 0.091783781295 + `CenteredDataForPCA`.impute_11 * -0.160901181044 AS anoova_5, `CenteredDataForPCA`.impute_2 * -0.414758345734 + `CenteredDataForPCA`.impute_3 * -0.141529446718 + `CenteredDataForPCA`.impute_4 * -0.134346646962 + `CenteredDataForPCA`.impute_5 * -0.0661279341584 + `CenteredDataForPCA`.impute_6 * 0.0885691212699 + `CenteredDataForPCA`.impute_7 * 0.156003471735 + `CenteredDataForPCA`.impute_8 * 0.00769225952811 + `CenteredDataForPCA`.impute_9 * 0.311162995352 + `CenteredDataForPCA`.impute_10 * 0.780117752236 + `CenteredDataForPCA`.impute_11 * -0.218806180915 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.51641439831 + `CenteredDataForPCA`.impute_3 * -0.169936494176 + `CenteredDataForPCA`.impute_4 * -0.503158776984 + `CenteredDataForPCA`.impute_5 * -0.282248668377 + `CenteredDataForPCA`.impute_6 * 0.0099384140365 + `CenteredDataForPCA`.impute_7 * -0.019208755359 + `CenteredDataForPCA`.impute_8 * -0.389659589852 + `CenteredDataForPCA`.impute_9 * -0.244530014712 + `CenteredDataForPCA`.impute_10 * -0.218017506457 + `CenteredDataForPCA`.impute_11 * 0.334627832034 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.358595195138 + `CenteredDataForPCA`.impute_3 * 0.319292376536 + `CenteredDataForPCA`.impute_4 * 0.141406234954 + `CenteredDataForPCA`.impute_5 * 0.168447869659 + `CenteredDataForPCA`.impute_6 * 0.237731274315 + `CenteredDataForPCA`.impute_7 * 0.714896481816 + `CenteredDataForPCA`.impute_8 * -0.00482736010391 + `CenteredDataForPCA`.impute_9 * 0.0173887450528 + `CenteredDataForPCA`.impute_10 * -0.329964737088 + `CenteredDataForPCA`.impute_11 * -0.210465954853 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.171508487507 + `CenteredDataForPCA`.impute_3 * -0.210521599149 + `CenteredDataForPCA`.impute_4 * -0.201369096271 + `CenteredDataForPCA`.impute_5 * 0.0647188950326 + `CenteredDataForPCA`.impute_6 * 0.170438472002 + `CenteredDataForPCA`.impute_7 * -0.170050756416 + `CenteredDataForPCA`.impute_8 * -0.505764825657 + `CenteredDataForPCA`.impute_9 * 0.299139984671 + `CenteredDataForPCA`.impute_10 * -0.256061994321 + `CenteredDataForPCA`.impute_11 * -0.642425388636 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.120780062736 + `CenteredDataForPCA`.impute_3 * 0.190539406851 + `CenteredDataForPCA`.impute_4 * 0.399517737325 + `CenteredDataForPCA`.impute_5 * -0.622087861394 + `CenteredDataForPCA`.impute_6 * -0.255672719547 + `CenteredDataForPCA`.impute_7 * 0.153502491655 + `CenteredDataForPCA`.impute_8 * -0.414875912657 + `CenteredDataForPCA`.impute_9 * -0.272271543993 + `CenteredDataForPCA`.impute_10 * 0.17119339986 + `CenteredDataForPCA`.impute_11 * -0.19495289164 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.177043961154 + `CenteredDataForPCA`.impute_3 * -0.584347064728 + `CenteredDataForPCA`.impute_4 * 0.220744767703 + `CenteredDataForPCA`.impute_5 * -0.295603581437 + `CenteredDataForPCA`.impute_6 * -0.389539247235 + `CenteredDataForPCA`.impute_7 * 0.15135965506 + `CenteredDataForPCA`.impute_8 * 0.319987835363 + `CenteredDataForPCA`.impute_9 * 0.321933936576 + `CenteredDataForPCA`.impute_10 * -0.324639511931 + `CenteredDataForPCA`.impute_11 * -0.0707753955331 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 2.066185467179216 * `ADS_ano_2_OUT`.anoova_2 + 0.0 * `ADS_ano_2_OUT`.anoova_3 + 2.764685040314526 * `ADS_ano_2_OUT`.anoova_4 + -0.6866089197120161 * `ADS_ano_2_OUT`.anoova_5 + -4.081110850001747 * `ADS_ano_2_OUT`.anoova_6 + -8.25800055531207 * `ADS_ano_2_OUT`.anoova_7 + 2.5952848471364556 * `ADS_ano_2_OUT`.anoova_8 + 0.23193614926943945 * `ADS_ano_2_OUT`.anoova_9 + -3.6064934031432716 * `ADS_ano_2_OUT`.anoova_10 + -11.467648691265934 * `ADS_ano_2_OUT`.anoova_11 + 15.3686197103 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte