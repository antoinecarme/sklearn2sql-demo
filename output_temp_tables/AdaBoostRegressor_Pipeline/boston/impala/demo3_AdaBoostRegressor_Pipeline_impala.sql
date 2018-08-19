-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : boston
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145242_3lv_ads_imp_1_out part 1. Create 


CREATE TABLE tmp_20180602145242_3lv_ads_imp_1_out (
	`KEY` BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	impter_12 DOUBLE, 
	impter_13 DOUBLE, 
	impter_14 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180602145242_3lv_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602145242_3lv_ads_imp_1_out (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11, `ADS_imp_1_OUT`.impter_12, `ADS_imp_1_OUT`.impter_13, `ADS_imp_1_OUT`.impter_14 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.3688565346534656 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 12.113861386138614 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 10.983613861386127 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.07178217821782178 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.5541153465346542 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.299148514851482 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 67.85049504950491 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.8198420792079233 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.55940594059406 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 405.8019801980198 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.40915841584154 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 358.3797277227715 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.626584158415856 ELSE `ADS`.`Feature_12` END AS impter_14 
FROM boston AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180602145242_172_ads_sca_2_out part 1. Create 


CREATE TABLE tmp_20180602145242_172_ads_sca_2_out (
	`KEY` BIGINT, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	scaler_12 DOUBLE, 
	scaler_13 DOUBLE, 
	scaler_14 DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180602145242_172_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602145242_172_ads_sca_2_out (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11, `ADS_sca_2_OUT`.scaler_12, `ADS_sca_2_OUT`.scaler_13, `ADS_sca_2_OUT`.scaler_14 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 3.3688565346534656) / 7.9935268095335426 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - 12.113861386138614) / 24.187656534977855 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 10.983613861386127) / 6.8177472477399235 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.07178217821782178) / 0.2581269011709685 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.5541153465346542) / 0.11800809760824685 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 6.299148514851482) / 0.7060417397996938 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 67.85049504950491) / 28.107403181658597 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 3.8198420792079233) / 2.0933726902675627 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 9.55940594059406) / 8.728803783375893 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 405.8019801980198) / 169.7858592930543 AS scaler_11, (CAST(`ADS_imp_1_OUT`.impter_12 AS DOUBLE) - 18.40915841584154) / 2.166792648327246 AS scaler_12, (CAST(`ADS_imp_1_OUT`.impter_13 AS DOUBLE) - 358.3797277227715) / 90.64691624336051 AS scaler_13, (CAST(`ADS_imp_1_OUT`.impter_14 AS DOUBLE) - 12.626584158415856) / 7.167938324035357 AS scaler_14 
FROM tmp_20180602145242_3lv_ads_imp_1_out AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180602145242_ed4_quantiles part 1. Create 


CREATE TABLE tmp_20180602145242_ed4_quantiles (
	`KEY` BIGINT, 
	`Quantile` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180602145242_ed4_quantiles part 2. Populate

WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.7447880506515503) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.30391108989715576) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.32271674275398254) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.3445371091365814) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.6229231357574463) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.2750559449195862) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.07839112728834152) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 21.239873417721512 AS `E` UNION ALL SELECT 4 AS nid, 26.69473684210526 AS `E` UNION ALL SELECT 6 AS nid, 18.847619047619048 AS `E` UNION ALL SELECT 7 AS nid, 13.593814432989692 AS `E` UNION ALL SELECT 10 AS nid, 31.662500000000005 AS `E` UNION ALL SELECT 11 AS nid, 20.266666666666666 AS `E` UNION ALL SELECT 13 AS nid, 47.33333333333333 AS `E` UNION ALL SELECT 14 AS nid, 21.9 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`ADB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator`, 0.09156737402314616 AS `Weight`, 0 AS est_index 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.42154160141944885) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.16850244998931885) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1923537254333496) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.25025832653045654) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.30391108989715576) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.8850064277648926) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 25.84343434343436 AS `E` UNION ALL SELECT 4 AS nid, 42.544000000000004 AS `E` UNION ALL SELECT 6 AS nid, 39.333333333333336 AS `E` UNION ALL SELECT 7 AS nid, 50.0 AS `E` UNION ALL SELECT 10 AS nid, 20.889108910891103 AS `E` UNION ALL SELECT 11 AS nid, 29.925 AS `E` UNION ALL SELECT 13 AS nid, 18.241071428571438 AS `E` UNION ALL SELECT 14 AS nid, 13.107777777777775 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`ADB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator`, 0.08417881330315602 AS `Weight`, 1 AS est_index 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.42154160141944885) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.6059269905090332) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 3.474796772003174) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.5152689218521118) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= -0.732110321521759) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8979969024658203) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 27.253521126760557 AS `E` UNION ALL SELECT 6 AS nid, 46.27435897435897 AS `E` UNION ALL SELECT 7 AS nid, 21.9 AS `E` UNION ALL SELECT 10 AS nid, 23.99310344827586 AS `E` UNION ALL SELECT 11 AS nid, 19.357142857142875 AS `E` UNION ALL SELECT 13 AS nid, 10.359999999999998 AS `E` UNION ALL SELECT 14 AS nid, 16.58611111111111 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`ADB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator`, 0.055261434912609445 AS `Weight`, 2 AS est_index 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.4048648476600647) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.7580020427703857) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 9 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.9396359920501709) THEN 11 ELSE 12 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 23.897058823529413 AS `E` UNION ALL SELECT 4 AS nid, 32.84594594594594 AS `E` UNION ALL SELECT 6 AS nid, 45.74 AS `E` UNION ALL SELECT 7 AS nid, 21.9 AS `E` UNION ALL SELECT 9 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 21.02447916666667 AS `E` UNION ALL SELECT 12 AS nid, 13.23636363636364 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`ADB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator`, 0.0896750737608021 AS `Weight`, 3 AS est_index 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.34608644247055054) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2833558320999146) THEN 2 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0007641315460205) THEN 4 ELSE 5 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.0381762981414795) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.35647302865982056) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN 11 ELSE 12 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 2 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 20.112244897959176 AS `E` UNION ALL SELECT 5 AS nid, 12.72258064516128 AS `E` UNION ALL SELECT 8 AS nid, 35.90784313725492 AS `E` UNION ALL SELECT 9 AS nid, 49.30833333333334 AS `E` UNION ALL SELECT 11 AS nid, 29.792537313432838 AS `E` UNION ALL SELECT 12 AS nid, 15.984615384615385 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`ADB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator`, 0.07661634132308465 AS `Weight`, 4 AS est_index 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.42014649510383606) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.6229231357574463) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.3188314437866211) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.3185596466064453) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -2.104104518890381) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 25.989189189189197 AS `E` UNION ALL SELECT 6 AS nid, 47.066666666666656 AS `E` UNION ALL SELECT 7 AS nid, 21.899999999999995 AS `E` UNION ALL SELECT 10 AS nid, 30.8125 AS `E` UNION ALL SELECT 11 AS nid, 21.44852941176471 AS `E` UNION ALL SELECT 13 AS nid, 18.38139534883721 AS `E` UNION ALL SELECT 14 AS nid, 11.786842105263156 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`ADB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator`, 0.03469236072498822 AS `Weight`, 5 AS est_index 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.5372933149337769) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2650361061096191) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.5518290996551514) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 0.5726628303527832) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.636378526687622) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.5528731346130371) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 1.0879309177398682) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 13.8 AS `E` UNION ALL SELECT 6 AS nid, 22.583035714285707 AS `E` UNION ALL SELECT 7 AS nid, 13.675177304964542 AS `E` UNION ALL SELECT 10 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 29.737931034482752 AS `E` UNION ALL SELECT 13 AS nid, 46.61249999999999 AS `E` UNION ALL SELECT 14 AS nid, 21.899999999999995 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`ADB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator`, 0.0605295982027953 AS `Weight`, 6 AS est_index 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6914936900138855) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1923537254333496) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -1.088779091835022) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.8581281304359436) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 27.346753246753245 AS `E` UNION ALL SELECT 6 AS nid, 49.07000000000001 AS `E` UNION ALL SELECT 7 AS nid, 36.6294117647059 AS `E` UNION ALL SELECT 10 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 19.508629441624368 AS `E` UNION ALL SELECT 13 AS nid, 16.7 AS `E` UNION ALL SELECT 14 AS nid, 7.940384615384612 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`ADB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator`, 0.04511738091616263 AS `Weight`, 7 AS est_index 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.7040495872497559) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.567685604095459) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.994928240776062) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= 0.06740739196538925) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0565681457519531) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.4142482876777649) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 33.931428571428576 AS `E` UNION ALL SELECT 4 AS nid, 26.950000000000003 AS `E` UNION ALL SELECT 6 AS nid, 21.9 AS `E` UNION ALL SELECT 7 AS nid, 46.0483870967742 AS `E` UNION ALL SELECT 10 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 20.819565217391304 AS `E` UNION ALL SELECT 13 AS nid, 17.57 AS `E` UNION ALL SELECT 14 AS nid, 8.98846153846154 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`ADB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator`, 0.036298071239969976 AS `Weight`, 8 AS est_index 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.43689119815826416) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.8850064277648926) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.23886480927467346) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.617257833480835) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2033653259277344) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.5483365654945374) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.1867547035217285) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 20.561111111111103 AS `E` UNION ALL SELECT 4 AS nid, 28.09016393442622 AS `E` UNION ALL SELECT 6 AS nid, 34.17352941176472 AS `E` UNION ALL SELECT 7 AS nid, 44.3076923076923 AS `E` UNION ALL SELECT 10 AS nid, 26.61818181818182 AS `E` UNION ALL SELECT 11 AS nid, 50.0 AS `E` UNION ALL SELECT 13 AS nid, 50.0 AS `E` UNION ALL SELECT 14 AS nid, 15.484905660377331 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`ADB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator`, 0.06290838203669849 AS `Weight`, 9 AS est_index 
FROM `DT_Output_9`), 
`DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.634170413017273) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.3319229781627655) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 2.9295032024383545) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= -2.0305681228637695) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 1.0243759155273438) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 24.22000000000001 AS `E` UNION ALL SELECT 4 AS nid, 32.733707865168554 AS `E` UNION ALL SELECT 6 AS nid, 41.9923076923077 AS `E` UNION ALL SELECT 7 AS nid, 49.800000000000004 AS `E` UNION ALL SELECT 10 AS nid, 12.166666666666664 AS `E` UNION ALL SELECT 11 AS nid, 22.22214765100673 AS `E` UNION ALL SELECT 13 AS nid, 14.148000000000007 AS `E` UNION ALL SELECT 14 AS nid, 7.2631578947368425 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`ADB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator`, 0.06818761345367991 AS `Weight`, 10 AS est_index 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.09325078129768372) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= 1.011098861694336) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.41468197107315063) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.44814425706863403) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 0.854278564453125) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8203948140144348) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 44.93541666666667 AS `E` UNION ALL SELECT 4 AS nid, 31.890449438202264 AS `E` UNION ALL SELECT 6 AS nid, 12.39714285714285 AS `E` UNION ALL SELECT 7 AS nid, 22.46666666666667 AS `E` UNION ALL SELECT 10 AS nid, 12.98235294117647 AS `E` UNION ALL SELECT 11 AS nid, 23.597777777777786 AS `E` UNION ALL SELECT 13 AS nid, 9.455882352941174 AS `E` UNION ALL SELECT 14 AS nid, 21.25714285714286 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`ADB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator`, 0.0628807427865766 AS `Weight`, 11 AS est_index 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.1640267372131348) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2650361061096191) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= 0.25533434748649597) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.3734177350997925) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.7378552556037903) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.8811341524124146) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 13.8 AS `E` UNION ALL SELECT 6 AS nid, 15.877241379310343 AS `E` UNION ALL SELECT 7 AS nid, 24.18686131386861 AS `E` UNION ALL SELECT 10 AS nid, 34.71515151515151 AS `E` UNION ALL SELECT 11 AS nid, 15.0 AS `E` UNION ALL SELECT 13 AS nid, 21.899999999999995 AS `E` UNION ALL SELECT 14 AS nid, 46.337288135593205 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`ADB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator`, 0.0611629621048231 AS `Weight`, 12 AS est_index 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.5401259660720825) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_8 <= -1.6686171293258667) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.1023510694503784) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2650361061096191) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_13 <= 0.25533434748649597) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= 1.0077396631240845) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 21.5 AS `E` UNION ALL SELECT 4 AS nid, 26.628125 AS `E` UNION ALL SELECT 6 AS nid, 45.58874999999999 AS `E` UNION ALL SELECT 7 AS nid, 35.06730769230769 AS `E` UNION ALL SELECT 10 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 13.8 AS `E` UNION ALL SELECT 13 AS nid, 19.993333333333332 AS `E` UNION ALL SELECT 14 AS nid, 10.82205882352941 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`ADB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator`, 0.030872089965387275 AS `Weight`, 13 AS est_index 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -1.1344382762908936) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -0.29253846406936646) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_12 <= -2.104104518890381) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.2385239601135254) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 1.313111662864685) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.9396359920501709) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 49.655102040816324 AS `E` UNION ALL SELECT 4 AS nid, 39.29354838709678 AS `E` UNION ALL SELECT 6 AS nid, 45.122727272727275 AS `E` UNION ALL SELECT 7 AS nid, 29.700000000000006 AS `E` UNION ALL SELECT 10 AS nid, 50.0 AS `E` UNION ALL SELECT 11 AS nid, 13.8 AS `E` UNION ALL SELECT 13 AS nid, 20.848407643312097 AS `E` UNION ALL SELECT 14 AS nid, 11.453030303030296 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`ADB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator`, 0.07290815936572655 AS `Weight`, 14 AS est_index 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_14 <= -0.668474555015564) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.6307129859924316) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1153733730316162) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= -0.35049545764923096) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -0.36633598804473877) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= -1.1962953805923462) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= 0.8887920379638672) THEN 13 ELSE 14 END END END AS node_id_2 
FROM tmp_20180602145242_172_ads_sca_2_out AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.0 AS `E` UNION ALL SELECT 4 AS nid, 29.445833333333326 AS `E` UNION ALL SELECT 6 AS nid, 48.48292682926829 AS `E` UNION ALL SELECT 7 AS nid, 37.76 AS `E` UNION ALL SELECT 10 AS nid, 22.579999999999995 AS `E` UNION ALL SELECT 11 AS nid, 12.641666666666689 AS `E` UNION ALL SELECT 13 AS nid, 28.69397590361445 AS `E` UNION ALL SELECT 14 AS nid, 13.28055555555555 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`ADB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator`, 0.0671436018803937 AS `Weight`, 15 AS est_index 
FROM `DT_Output_15`), 
`WE` AS 
(SELECT ensemble_score_union.`KEY` AS `KEY`, ensemble_score_union.`Estimator` AS `Estimator`, ensemble_score_union.`Weight` AS `Weight`, ensemble_score_union.est_index AS est_index 
FROM (SELECT `ADB_Model_0`.`KEY` AS `KEY`, `ADB_Model_0`.`Estimator` AS `Estimator`, `ADB_Model_0`.`Weight` AS `Weight`, `ADB_Model_0`.est_index AS est_index 
FROM `ADB_Model_0` UNION ALL SELECT `ADB_Model_1`.`KEY` AS `KEY`, `ADB_Model_1`.`Estimator` AS `Estimator`, `ADB_Model_1`.`Weight` AS `Weight`, `ADB_Model_1`.est_index AS est_index 
FROM `ADB_Model_1` UNION ALL SELECT `ADB_Model_2`.`KEY` AS `KEY`, `ADB_Model_2`.`Estimator` AS `Estimator`, `ADB_Model_2`.`Weight` AS `Weight`, `ADB_Model_2`.est_index AS est_index 
FROM `ADB_Model_2` UNION ALL SELECT `ADB_Model_3`.`KEY` AS `KEY`, `ADB_Model_3`.`Estimator` AS `Estimator`, `ADB_Model_3`.`Weight` AS `Weight`, `ADB_Model_3`.est_index AS est_index 
FROM `ADB_Model_3` UNION ALL SELECT `ADB_Model_4`.`KEY` AS `KEY`, `ADB_Model_4`.`Estimator` AS `Estimator`, `ADB_Model_4`.`Weight` AS `Weight`, `ADB_Model_4`.est_index AS est_index 
FROM `ADB_Model_4` UNION ALL SELECT `ADB_Model_5`.`KEY` AS `KEY`, `ADB_Model_5`.`Estimator` AS `Estimator`, `ADB_Model_5`.`Weight` AS `Weight`, `ADB_Model_5`.est_index AS est_index 
FROM `ADB_Model_5` UNION ALL SELECT `ADB_Model_6`.`KEY` AS `KEY`, `ADB_Model_6`.`Estimator` AS `Estimator`, `ADB_Model_6`.`Weight` AS `Weight`, `ADB_Model_6`.est_index AS est_index 
FROM `ADB_Model_6` UNION ALL SELECT `ADB_Model_7`.`KEY` AS `KEY`, `ADB_Model_7`.`Estimator` AS `Estimator`, `ADB_Model_7`.`Weight` AS `Weight`, `ADB_Model_7`.est_index AS est_index 
FROM `ADB_Model_7` UNION ALL SELECT `ADB_Model_8`.`KEY` AS `KEY`, `ADB_Model_8`.`Estimator` AS `Estimator`, `ADB_Model_8`.`Weight` AS `Weight`, `ADB_Model_8`.est_index AS est_index 
FROM `ADB_Model_8` UNION ALL SELECT `ADB_Model_9`.`KEY` AS `KEY`, `ADB_Model_9`.`Estimator` AS `Estimator`, `ADB_Model_9`.`Weight` AS `Weight`, `ADB_Model_9`.est_index AS est_index 
FROM `ADB_Model_9` UNION ALL SELECT `ADB_Model_10`.`KEY` AS `KEY`, `ADB_Model_10`.`Estimator` AS `Estimator`, `ADB_Model_10`.`Weight` AS `Weight`, `ADB_Model_10`.est_index AS est_index 
FROM `ADB_Model_10` UNION ALL SELECT `ADB_Model_11`.`KEY` AS `KEY`, `ADB_Model_11`.`Estimator` AS `Estimator`, `ADB_Model_11`.`Weight` AS `Weight`, `ADB_Model_11`.est_index AS est_index 
FROM `ADB_Model_11` UNION ALL SELECT `ADB_Model_12`.`KEY` AS `KEY`, `ADB_Model_12`.`Estimator` AS `Estimator`, `ADB_Model_12`.`Weight` AS `Weight`, `ADB_Model_12`.est_index AS est_index 
FROM `ADB_Model_12` UNION ALL SELECT `ADB_Model_13`.`KEY` AS `KEY`, `ADB_Model_13`.`Estimator` AS `Estimator`, `ADB_Model_13`.`Weight` AS `Weight`, `ADB_Model_13`.est_index AS est_index 
FROM `ADB_Model_13` UNION ALL SELECT `ADB_Model_14`.`KEY` AS `KEY`, `ADB_Model_14`.`Estimator` AS `Estimator`, `ADB_Model_14`.`Weight` AS `Weight`, `ADB_Model_14`.est_index AS est_index 
FROM `ADB_Model_14` UNION ALL SELECT `ADB_Model_15`.`KEY` AS `KEY`, `ADB_Model_15`.`Estimator` AS `Estimator`, `ADB_Model_15`.`Weight` AS `Weight`, `ADB_Model_15`.est_index AS est_index 
FROM `ADB_Model_15`) AS ensemble_score_union), 
`Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.est_index AS est_index, `CW`.cum_weight AS cum_weight 
FROM (SELECT u1.`KEY` AS `KEY`, u1.`Estimator` AS `Estimator`, u1.`Weight` AS `Weight`, u1.est_index AS est_index, sum(u2.`Weight`) AS cum_weight 
FROM `WE` AS u1, `WE` AS u2 
WHERE u1.`Estimator` >= u2.`Estimator` AND u1.`KEY` = u2.`KEY` GROUP BY u1.`KEY`, u1.est_index, u1.`Estimator`, u1.`Weight`) AS `CW`)
 INSERT INTO tmp_20180602145242_ed4_quantiles (`KEY`, `Quantile`) SELECT `Quantiles`.`KEY`, `Quantiles`.`Quantile` 
FROM (SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.cum_weight >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`) AS `Quantiles`

-- Model deployment code

SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM tmp_20180602145242_ed4_quantiles AS `Quantiles`