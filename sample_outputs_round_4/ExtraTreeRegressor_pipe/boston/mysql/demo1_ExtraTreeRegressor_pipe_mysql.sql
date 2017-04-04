-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.59376071146 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 11.3636363636 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 11.1367786561 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.0691699604743 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.554695059289 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.28463438735 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 68.5749011858 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.79504268775 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.54940711462 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 408.23715415 ELSE `ADS`.`Feature_9` END AS impute_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.4555335968 ELSE `ADS`.`Feature_10` END AS impute_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 356.674031621 ELSE `ADS`.`Feature_11` END AS impute_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.6530632411 ELSE `ADS`.`Feature_12` END AS impute_14 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 3.59376071146 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 11.3636363636 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 11.1367786561 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.0691699604743 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.554695059289 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 6.28463438735 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 68.5749011858 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 3.79504268775 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 9.54940711462 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 408.23715415 AS impute_11, `ADS_imp_1_OUT`.impute_12 - 18.4555335968 AS impute_12, `ADS_imp_1_OUT`.impute_13 - 356.674031621 AS impute_13, `ADS_imp_1_OUT`.impute_14 - 12.6530632411 AS impute_14 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * 0.0290793418705 + `CenteredDataForPCA`.impute_3 * -0.0435901379884 + `CenteredDataForPCA`.impute_4 * 0.0283311854744 + `CenteredDataForPCA`.impute_5 * -5.55834284791e-05 + `CenteredDataForPCA`.impute_6 * 0.000449723983032 + `CenteredDataForPCA`.impute_7 * -0.00116817520949 + `CenteredDataForPCA`.impute_8 * 0.0836340850971 + `CenteredDataForPCA`.impute_9 * -0.00656167700943 + `CenteredDataForPCA`.impute_10 * 0.0450056440522 + `CenteredDataForPCA`.impute_11 * 0.949748861684 + `CenteredDataForPCA`.impute_12 * 0.00560015635568 + `CenteredDataForPCA`.impute_13 * -0.291215007119 + `CenteredDataForPCA`.impute_14 * 0.0229433981219 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.00595358533578 + `CenteredDataForPCA`.impute_3 * 0.00117454545239 + `CenteredDataForPCA`.impute_4 * -0.00494881025195 + `CenteredDataForPCA`.impute_5 * -0.00010267276141 + `CenteredDataForPCA`.impute_6 * 1.83085404137e-06 + `CenteredDataForPCA`.impute_7 * 0.000365743217289 + `CenteredDataForPCA`.impute_8 * -0.00572142591607 + `CenteredDataForPCA`.impute_9 * 0.000353613792575 + `CenteredDataForPCA`.impute_10 * -0.00861821318903 + `CenteredDataForPCA`.impute_11 * -0.292380996231 + `CenteredDataForPCA`.impute_12 * -0.00252890004647 + `CenteredDataForPCA`.impute_13 * -0.95619302773 + `CenteredDataForPCA`.impute_14 * 0.00576700106093 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.0115545557501 + `CenteredDataForPCA`.impute_3 * 0.632896918644 + `CenteredDataForPCA`.impute_4 * -0.088340421489 + `CenteredDataForPCA`.impute_5 * -0.000975318528256 + `CenteredDataForPCA`.impute_6 * -0.00180719024026 + `CenteredDataForPCA`.impute_7 * 0.00473411946642 + `CenteredDataForPCA`.impute_8 * -0.7558624017 + `CenteredDataForPCA`.impute_9 * 0.0450884909145 + `CenteredDataForPCA`.impute_10 * 0.00284762033646 + `CenteredDataForPCA`.impute_11 * 0.0938666635186 + `CenteredDataForPCA`.impute_12 * -0.0111591438347 + `CenteredDataForPCA`.impute_13 * -0.023554219456 + `CenteredDataForPCA`.impute_14 * -0.0928331511404 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.0270010188326 + `CenteredDataForPCA`.impute_3 * 0.768061561807 + `CenteredDataForPCA`.impute_4 * -0.0127967831999 + `CenteredDataForPCA`.impute_5 * 0.000854486449613 + `CenteredDataForPCA`.impute_6 * 0.000679594076936 + `CenteredDataForPCA`.impute_7 * 0.00570054720395 + `CenteredDataForPCA`.impute_8 * 0.636611733776 + `CenteredDataForPCA`.impute_9 * 0.00257396992201 + `CenteredDataForPCA`.impute_10 * -0.0195657921452 + `CenteredDataForPCA`.impute_11 * -0.0199759769684 + `CenteredDataForPCA`.impute_12 * -0.0320122564453 + `CenteredDataForPCA`.impute_13 * 0.0040139802958 + `CenteredDataForPCA`.impute_14 * 0.0452885745068 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.953871800695 + `CenteredDataForPCA`.impute_3 * -0.00565379160917 + `CenteredDataForPCA`.impute_4 * -0.0562384399835 + `CenteredDataForPCA`.impute_5 * -0.00213578787488 + `CenteredDataForPCA`.impute_6 * -0.000179163492751 + `CenteredDataForPCA`.impute_7 * -0.0132180033155 + `CenteredDataForPCA`.impute_8 * -0.0459165992573 + `CenteredDataForPCA`.impute_9 * -0.00667171091971 + `CenteredDataForPCA`.impute_10 * 0.17058785538 + `CenteredDataForPCA`.impute_11 * -0.0326258446098 + `CenteredDataForPCA`.impute_12 * 0.0213376088824 + `CenteredDataForPCA`.impute_13 * 0.0162708060102 + `CenteredDataForPCA`.impute_14 * 0.231769304291 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.166034349246 + `CenteredDataForPCA`.impute_3 * 0.0467338831346 + `CenteredDataForPCA`.impute_4 * 0.341930158111 + `CenteredDataForPCA`.impute_5 * -0.00351936887193 + `CenteredDataForPCA`.impute_6 * 0.00187779954519 + `CenteredDataForPCA`.impute_7 * -0.0726614168834 + `CenteredDataForPCA`.impute_8 * -0.109563953631 + `CenteredDataForPCA`.impute_9 * 0.0073890536197 + `CenteredDataForPCA`.impute_10 * -0.207176649927 + `CenteredDataForPCA`.impute_11 * -0.00342146728837 + `CenteredDataForPCA`.impute_12 * 0.0412943586628 + `CenteredDataForPCA`.impute_13 * 0.0060542050517 + `CenteredDataForPCA`.impute_14 * 0.889551632117 AS anoova_7, `CenteredDataForPCA`.impute_2 * 0.212852802248 + `CenteredDataForPCA`.impute_3 * 0.035176546336 + `CenteredDataForPCA`.impute_4 * 0.785689931958 + `CenteredDataForPCA`.impute_5 * 0.00509255441973 + `CenteredDataForPCA`.impute_6 * 0.00385766581269 + `CenteredDataForPCA`.impute_7 * 0.00787523138869 + `CenteredDataForPCA`.impute_8 * -0.0263745768272 + `CenteredDataForPCA`.impute_9 * -0.0889173024929 + `CenteredDataForPCA`.impute_10 * -0.435623734582 + `CenteredDataForPCA`.impute_11 * 0.00277590025712 + `CenteredDataForPCA`.impute_12 * -0.0713658865352 + `CenteredDataForPCA`.impute_13 * -0.00150020771634 + `CenteredDataForPCA`.impute_14 * -0.364104108592 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.122652780398 + `CenteredDataForPCA`.impute_3 * -0.0514137942919 + `CenteredDataForPCA`.impute_4 * -0.492499395662 + `CenteredDataForPCA`.impute_5 * -0.0113553130638 + `CenteredDataForPCA`.impute_6 * -0.0044543901623 + `CenteredDataForPCA`.impute_7 * -0.0151387973731 + `CenteredDataForPCA`.impute_8 * 0.0176803007577 + `CenteredDataForPCA`.impute_9 * 0.0657533681177 + `CenteredDataForPCA`.impute_10 * -0.853570768015 + `CenteredDataForPCA`.impute_11 * 0.0468119918264 + `CenteredDataForPCA`.impute_12 * -0.0598374746853 + `CenteredDataForPCA`.impute_13 * -0.00318176205366 + `CenteredDataForPCA`.impute_14 * 0.0194455791662 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.0137295009078 + `CenteredDataForPCA`.impute_3 * 0.0235097341661 + `CenteredDataForPCA`.impute_4 * 0.0352709234238 + `CenteredDataForPCA`.impute_5 * -0.0178059044254 + `CenteredDataForPCA`.impute_6 * -0.0139018168355 + `CenteredDataForPCA`.impute_7 * -0.0529937903518 + `CenteredDataForPCA`.impute_8 * 0.0231883052927 + `CenteredDataForPCA`.impute_9 * 0.224532665334 + `CenteredDataForPCA`.impute_10 * -0.070331864193 + `CenteredDataForPCA`.impute_11 * -0.00203423468159 + `CenteredDataForPCA`.impute_12 * 0.96586112087 + `CenteredDataForPCA`.impute_13 * -0.0019041485606 + `CenteredDataForPCA`.impute_14 * -0.0768208791925 AS anoova_10, `CenteredDataForPCA`.impute_2 * 0.0164239950024 + `CenteredDataForPCA`.impute_3 * -0.0306822646896 + `CenteredDataForPCA`.impute_4 * 0.0980506613801 + `CenteredDataForPCA`.impute_5 * -0.00156368116258 + `CenteredDataForPCA`.impute_6 * -0.0106223819107 + `CenteredDataForPCA`.impute_7 * -0.0512068200773 + `CenteredDataForPCA`.impute_8 * 0.0260681878414 + `CenteredDataForPCA`.impute_9 * 0.964823647455 + `CenteredDataForPCA`.impute_10 * 0.0390661641493 + `CenteredDataForPCA`.impute_11 * -0.000480480028877 + `CenteredDataForPCA`.impute_12 * -0.229898826892 + `CenteredDataForPCA`.impute_13 * 7.36484057084e-06 + `CenteredDataForPCA`.impute_14 * -0.0222128903555 AS anoova_11, `CenteredDataForPCA`.impute_2 * -0.00226717797688 + `CenteredDataForPCA`.impute_3 * 0.00552239680166 + `CenteredDataForPCA`.impute_4 * -0.0178836079801 + `CenteredDataForPCA`.impute_5 * -0.0157986253619 + `CenteredDataForPCA`.impute_6 * 0.0115661438829 + `CenteredDataForPCA`.impute_7 * -0.994165624979 + `CenteredDataForPCA`.impute_8 * 0.00551780566759 + `CenteredDataForPCA`.impute_9 * -0.0635307633029 + `CenteredDataForPCA`.impute_10 * 0.0241265968226 + `CenteredDataForPCA`.impute_11 * -0.000774619844149 + `CenteredDataForPCA`.impute_12 * -0.0430041587914 + `CenteredDataForPCA`.impute_13 * -0.000616615255131 + `CenteredDataForPCA`.impute_14 * -0.0663086932677 AS anoova_12, `CenteredDataForPCA`.impute_2 * 0.00196895828586 + `CenteredDataForPCA`.impute_3 * -0.000193077157234 + `CenteredDataForPCA`.impute_4 * -0.00812264862898 + `CenteredDataForPCA`.impute_5 * 0.999597129178 + `CenteredDataForPCA`.impute_6 * 0.00778846475673 + `CenteredDataForPCA`.impute_7 * -0.0171507849184 + `CenteredDataForPCA`.impute_8 * -0.000892510155887 + `CenteredDataForPCA`.impute_9 * 0.005875198507 + `CenteredDataForPCA`.impute_10 * -0.0086510290719 + `CenteredDataForPCA`.impute_11 * 0.00051750984589 + `CenteredDataForPCA`.impute_12 * 0.0161466468914 + `CenteredDataForPCA`.impute_13 * -0.000156477757414 + `CenteredDataForPCA`.impute_14 * 0.00311719313324 AS anoova_13, `CenteredDataForPCA`.impute_2 * 0.000531945671707 + `CenteredDataForPCA`.impute_3 * 0.000126484701586 + `CenteredDataForPCA`.impute_4 * -0.00423973116962 + `CenteredDataForPCA`.impute_5 * -0.00793521441916 + `CenteredDataForPCA`.impute_6 * 0.999728591757 + `CenteredDataForPCA`.impute_7 * 0.0103958814617 + `CenteredDataForPCA`.impute_8 * -0.000916065930923 + `CenteredDataForPCA`.impute_9 * 0.0147667106543 + `CenteredDataForPCA`.impute_10 * -0.00247893969767 + `CenteredDataForPCA`.impute_11 * -7.34637920241e-05 + `CenteredDataForPCA`.impute_12 * 0.0112939726501 + `CenteredDataForPCA`.impute_13 * 5.25551852109e-05 + `CenteredDataForPCA`.impute_14 * -0.000908030955549 AS anoova_14 
FROM `CenteredDataForPCA`), 
`DT_node_lookup` AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_ano_2_OUT`.anoova_7 <= -8.021782196997556) THEN 1 ELSE CASE WHEN (`ADS_ano_2_OUT`.anoova_2 <= 147.52432018200318) THEN CASE WHEN (`ADS_ano_2_OUT`.anoova_4 <= 1.870989204480935) THEN 4 ELSE 5 END ELSE CASE WHEN (`ADS_ano_2_OUT`.anoova_5 <= -9.990697872689555) THEN 7 ELSE 8 END END END AS node_id_2 
FROM `ADS_ano_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -8.021782196997556 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 22.532806324110698 AS `Estimator` UNION ALL SELECT 1 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 30 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 35.92333333333334 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'anoova_2' AS feature, 147.52432018200318 AS threshold, 476 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 21.68886554621849 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'anoova_4' AS feature, 1.870989204480935 AS threshold, 352 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 24.116761363636364 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 216 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 22.1337962962963 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 136 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 27.26617647058823 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'anoova_5' AS feature, -9.990697872689555 AS threshold, 124 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 14.79677419354839 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 20.16 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 109 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 14.058715596330275 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`