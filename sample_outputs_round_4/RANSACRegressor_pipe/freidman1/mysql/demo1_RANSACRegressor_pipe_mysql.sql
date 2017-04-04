-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.520646235378 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.489662774847 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.536609911589 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.542113196161 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.493284553415 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.525514077615 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.546989834582 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.505728540584 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.551176161979 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.514079095949 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.520646235378 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.489662774847 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.536609911589 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.542113196161 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.493284553415 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.525514077615 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.546989834582 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.505728540584 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.551176161979 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.514079095949 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.349904326118 + `CenteredDataForPCA`.impute_3 * 0.51073839649 + `CenteredDataForPCA`.impute_4 * -0.0577656891626 + `CenteredDataForPCA`.impute_5 * -0.070270892043 + `CenteredDataForPCA`.impute_6 * 0.26223393438 + `CenteredDataForPCA`.impute_7 * 0.448327432152 + `CenteredDataForPCA`.impute_8 * -0.359101345311 + `CenteredDataForPCA`.impute_9 * 0.0919343713363 + `CenteredDataForPCA`.impute_10 * 0.0245601385544 + `CenteredDataForPCA`.impute_11 * -0.44795686377 AS anoova_2, `CenteredDataForPCA`.impute_2 * -0.191854095013 + `CenteredDataForPCA`.impute_3 * 0.141264394457 + `CenteredDataForPCA`.impute_4 * -0.123330923398 + `CenteredDataForPCA`.impute_5 * -0.396686395803 + `CenteredDataForPCA`.impute_6 * 0.236472079201 + `CenteredDataForPCA`.impute_7 * -0.486345166125 + `CenteredDataForPCA`.impute_8 * -0.158458701234 + `CenteredDataForPCA`.impute_9 * -0.632337869716 + `CenteredDataForPCA`.impute_10 * -0.229366230715 + `CenteredDataForPCA`.impute_11 * 0.0254143597871 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.186738185849 + `CenteredDataForPCA`.impute_3 * 0.210111568776 + `CenteredDataForPCA`.impute_4 * -0.374168039306 + `CenteredDataForPCA`.impute_5 * 0.178325528097 + `CenteredDataForPCA`.impute_6 * -0.229859811239 + `CenteredDataForPCA`.impute_7 * -0.562587133854 + `CenteredDataForPCA`.impute_8 * -0.29659405402 + `CenteredDataForPCA`.impute_9 * 0.527056606775 + `CenteredDataForPCA`.impute_10 * -0.108504542427 + `CenteredDataForPCA`.impute_11 * 0.0480677818315 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.0255026888253 + `CenteredDataForPCA`.impute_3 * -0.498617155746 + `CenteredDataForPCA`.impute_4 * -0.494062728767 + `CenteredDataForPCA`.impute_5 * 0.179458622576 + `CenteredDataForPCA`.impute_6 * 0.536528969064 + `CenteredDataForPCA`.impute_7 * 0.00402697907353 + `CenteredDataForPCA`.impute_8 * 0.133278575764 + `CenteredDataForPCA`.impute_9 * 0.0949457889622 + `CenteredDataForPCA`.impute_10 * -0.219379536084 + `CenteredDataForPCA`.impute_11 * -0.334129247489 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.531284842371 + `CenteredDataForPCA`.impute_3 * 0.24043539057 + `CenteredDataForPCA`.impute_4 * -0.567620471811 + `CenteredDataForPCA`.impute_5 * 0.197619170896 + `CenteredDataForPCA`.impute_6 * -0.2851753397 + `CenteredDataForPCA`.impute_7 * 0.135581717724 + `CenteredDataForPCA`.impute_8 * -0.115659063803 + `CenteredDataForPCA`.impute_9 * -0.374383510216 + `CenteredDataForPCA`.impute_10 * 0.186156668955 + `CenteredDataForPCA`.impute_11 * -0.103822872197 AS anoova_6, `CenteredDataForPCA`.impute_2 * 0.0318561729212 + `CenteredDataForPCA`.impute_3 * -0.0710619187573 + `CenteredDataForPCA`.impute_4 * 0.377165507701 + `CenteredDataForPCA`.impute_5 * 0.731068849405 + `CenteredDataForPCA`.impute_6 * 0.160221518705 + `CenteredDataForPCA`.impute_7 * -0.112526407588 + `CenteredDataForPCA`.impute_8 * -0.447058961399 + `CenteredDataForPCA`.impute_9 * -0.263066436935 + `CenteredDataForPCA`.impute_10 * -0.0984955817911 + `CenteredDataForPCA`.impute_11 * 0.0109422519504 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.26550704177 + `CenteredDataForPCA`.impute_3 * -0.205429904289 + `CenteredDataForPCA`.impute_4 * 0.135090958947 + `CenteredDataForPCA`.impute_5 * 0.0690177535013 + `CenteredDataForPCA`.impute_6 * -0.462453927559 + `CenteredDataForPCA`.impute_7 * -0.219558876635 + `CenteredDataForPCA`.impute_8 * 0.177464091847 + `CenteredDataForPCA`.impute_9 * -0.175026062796 + `CenteredDataForPCA`.impute_10 * 0.173113975273 + `CenteredDataForPCA`.impute_11 * -0.714230871144 AS anoova_8, `CenteredDataForPCA`.impute_2 * -0.149615441593 + `CenteredDataForPCA`.impute_3 * -0.0516519486718 + `CenteredDataForPCA`.impute_4 * -0.0770519965793 + `CenteredDataForPCA`.impute_5 * 0.0372056338411 + `CenteredDataForPCA`.impute_6 * 0.328394961703 + `CenteredDataForPCA`.impute_7 * -0.200123299215 + `CenteredDataForPCA`.impute_8 * -0.0263704128593 + `CenteredDataForPCA`.impute_9 * -0.0114681418338 + `CenteredDataForPCA`.impute_10 * 0.896676197571 + `CenteredDataForPCA`.impute_11 * 0.121976721005 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.332316009547 + `CenteredDataForPCA`.impute_3 * 0.531916795161 + `CenteredDataForPCA`.impute_4 * 0.213784146106 + `CenteredDataForPCA`.impute_5 * 0.163850379139 + `CenteredDataForPCA`.impute_6 * 0.31362854376 + `CenteredDataForPCA`.impute_7 * -0.314842599888 + `CenteredDataForPCA`.impute_8 * 0.518538056591 + `CenteredDataForPCA`.impute_9 * 0.107797819616 + `CenteredDataForPCA`.impute_10 * -0.0390646567204 + `CenteredDataForPCA`.impute_11 * -0.23358751109 AS anoova_10, `CenteredDataForPCA`.impute_2 * 0.564487672424 + `CenteredDataForPCA`.impute_3 * -0.189105531869 + `CenteredDataForPCA`.impute_4 * 0.251029576312 + `CenteredDataForPCA`.impute_5 * -0.408884896298 + `CenteredDataForPCA`.impute_6 * 0.0868895452474 + `CenteredDataForPCA`.impute_7 * -0.165905095587 + `CenteredDataForPCA`.impute_8 * -0.475285702975 + `CenteredDataForPCA`.impute_9 * 0.23052233404 + `CenteredDataForPCA`.impute_10 * 0.0837193589534 + `CenteredDataForPCA`.impute_11 * -0.307033854928 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 0.9789755196740851 * `ADS_ano_2_OUT`.anoova_2 + -5.286751998124406 * `ADS_ano_2_OUT`.anoova_3 + 1.505094178014325 * `ADS_ano_2_OUT`.anoova_4 + 2.45046547664283 * `ADS_ano_2_OUT`.anoova_5 + 6.45169960950196 * `ADS_ano_2_OUT`.anoova_6 + 6.431379520206341 * `ADS_ano_2_OUT`.anoova_7 + -3.7115463853448096 * `ADS_ano_2_OUT`.anoova_8 + 5.982652939712742 * `ADS_ano_2_OUT`.anoova_9 + 16.648908966015444 * `ADS_ano_2_OUT`.anoova_10 + -0.33205811147762027 * `ADS_ano_2_OUT`.anoova_11 + 15.4038164922 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte