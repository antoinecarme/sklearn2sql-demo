-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor_Pipeline
-- Dataset : boston
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516115118_codegen_soeiik_ads_imp_1_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516115118_codegen_soeiik_ads_imp_1_out` STORED AS ORC AS SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.`impter_2`, `ADS_imp_1_OUT`.`impter_3`, `ADS_imp_1_OUT`.`impter_4`, `ADS_imp_1_OUT`.`impter_5`, `ADS_imp_1_OUT`.`impter_6`, `ADS_imp_1_OUT`.`impter_7`, `ADS_imp_1_OUT`.`impter_8`, `ADS_imp_1_OUT`.`impter_9`, `ADS_imp_1_OUT`.`impter_10`, `ADS_imp_1_OUT`.`impter_11`, `ADS_imp_1_OUT`.`impter_12`, `ADS_imp_1_OUT`.`impter_13`, `ADS_imp_1_OUT`.`impter_14` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 3.3688565346534656 ELSE `ADS`.`Feature_0` END AS `impter_2`, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 12.113861386138614 ELSE `ADS`.`Feature_1` END AS `impter_3`, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 10.983613861386127 ELSE `ADS`.`Feature_2` END AS `impter_4`, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.07178217821782178 ELSE `ADS`.`Feature_3` END AS `impter_5`, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.5541153465346542 ELSE `ADS`.`Feature_4` END AS `impter_6`, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 6.299148514851482 ELSE `ADS`.`Feature_5` END AS `impter_7`, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 67.85049504950491 ELSE `ADS`.`Feature_6` END AS `impter_8`, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.8198420792079233 ELSE `ADS`.`Feature_7` END AS `impter_9`, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 9.55940594059406 ELSE `ADS`.`Feature_8` END AS `impter_10`, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 405.8019801980198 ELSE `ADS`.`Feature_9` END AS `impter_11`, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 18.40915841584154 ELSE `ADS`.`Feature_10` END AS `impter_12`, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN 358.3797277227715 ELSE `ADS`.`Feature_11` END AS `impter_13`, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 12.626584158415856 ELSE `ADS`.`Feature_12` END AS `impter_14` 
FROM `boston` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180516115118_codegen_soeiik_ads_imp_1_out part 2. Populate

SELECT * FROM `tmp_20180516115118_codegen_soeiik_ads_imp_1_out`

-- Code For temporary table tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` STORED AS ORC AS SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.`scaler_2`, `ADS_sca_2_OUT`.`scaler_3`, `ADS_sca_2_OUT`.`scaler_4`, `ADS_sca_2_OUT`.`scaler_5`, `ADS_sca_2_OUT`.`scaler_6`, `ADS_sca_2_OUT`.`scaler_7`, `ADS_sca_2_OUT`.`scaler_8`, `ADS_sca_2_OUT`.`scaler_9`, `ADS_sca_2_OUT`.`scaler_10`, `ADS_sca_2_OUT`.`scaler_11`, `ADS_sca_2_OUT`.`scaler_12`, `ADS_sca_2_OUT`.`scaler_13`, `ADS_sca_2_OUT`.`scaler_14` 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.`impter_2` AS DOUBLE) - 3.3688565346534656) / 7.9935268095335426 AS `scaler_2`, (CAST(`ADS_imp_1_OUT`.`impter_3` AS DOUBLE) - 12.113861386138614) / 24.187656534977855 AS `scaler_3`, (CAST(`ADS_imp_1_OUT`.`impter_4` AS DOUBLE) - 10.983613861386127) / 6.8177472477399235 AS `scaler_4`, (CAST(`ADS_imp_1_OUT`.`impter_5` AS DOUBLE) - 0.07178217821782178) / 0.2581269011709685 AS `scaler_5`, (CAST(`ADS_imp_1_OUT`.`impter_6` AS DOUBLE) - 0.5541153465346542) / 0.11800809760824685 AS `scaler_6`, (CAST(`ADS_imp_1_OUT`.`impter_7` AS DOUBLE) - 6.299148514851482) / 0.7060417397996938 AS `scaler_7`, (CAST(`ADS_imp_1_OUT`.`impter_8` AS DOUBLE) - 67.85049504950491) / 28.107403181658597 AS `scaler_8`, (CAST(`ADS_imp_1_OUT`.`impter_9` AS DOUBLE) - 3.8198420792079233) / 2.0933726902675627 AS `scaler_9`, (CAST(`ADS_imp_1_OUT`.`impter_10` AS DOUBLE) - 9.55940594059406) / 8.728803783375893 AS `scaler_10`, (CAST(`ADS_imp_1_OUT`.`impter_11` AS DOUBLE) - 405.8019801980198) / 169.7858592930543 AS `scaler_11`, (CAST(`ADS_imp_1_OUT`.`impter_12` AS DOUBLE) - 18.40915841584154) / 2.166792648327246 AS `scaler_12`, (CAST(`ADS_imp_1_OUT`.`impter_13` AS DOUBLE) - 358.3797277227715) / 90.64691624336051 AS `scaler_13`, (CAST(`ADS_imp_1_OUT`.`impter_14` AS DOUBLE) - 12.626584158415856) / 7.167938324035357 AS `scaler_14` 
FROM `tmp_20180516115118_codegen_soeiik_ads_imp_1_out` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out part 2. Populate

SELECT * FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out`

-- Code For temporary table tmp_20180516115119_codegen_x0ns10_xgb_b0 part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516115119_codegen_x0ns10_xgb_b0` STORED AS ORC AS WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.1923537254333496) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.3439619541168213) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.3311155438423157) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.9099769592285156) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS `nid`, 3.9890244007110596 AS `Estimator` UNION ALL SELECT 5 AS `nid`, 2.002768039703369 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 2.2746479511260986 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 2.7942373752593994 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.658596396446228 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.1890000104904175 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`), 
`XGB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.7447880506515503) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.30391108989715576) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4061954617500305) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_2` < 0.30187469720840454) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN 5 ELSE 6 END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 5 AS `nid`, 2.617729902267456 AS `Estimator` UNION ALL SELECT 6 AS `nid`, 3.904390335083008 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 2.193279504776001 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.7779951095581055 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.4815603494644165 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.0168761014938354 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`nid` AS `nid`, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`nid`), 
`XGB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.7447880506515503) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.3004233241081238) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4061954617500305) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -0.8675674796104431) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN 5 ELSE 6 END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 5 AS `nid`, 2.3615264892578125 AS `Estimator` UNION ALL SELECT 6 AS `nid`, 3.528411865234375 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.9760208129882812 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.6032642126083374 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.9259337782859802 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.355223536491394 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`nid` AS `nid`, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`nid`), 
`XGB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.6642892360687256) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.1505714654922485) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.3439619541168213) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.48248404264450073) THEN 5 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.4142482876777649) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS `nid`, 2.9591987133026123 AS `Estimator` UNION ALL SELECT 5 AS `nid`, 1.5128496885299683 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.6322977542877197 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 2.125485420227051 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.2673325538635254 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.8523406982421875 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`nid` AS `nid`, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`nid`), 
`XGB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.567685604095459) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.30251598358154297) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.3439619541168213) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_2` < 0.30187469720840454) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS `nid`, 2.078160285949707 AS `Estimator` UNION ALL SELECT 4 AS `nid`, 2.9763565063476562 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.378053903579712 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.828680396080017 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.1055082082748413 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.7355231642723083 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.`node_id_2` AS `node_id_2`, `DT_node_data_4`.`nid` AS `nid`, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.`node_id_2` = `DT_node_data_4`.`nid`), 
`XGB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.1923537254333496) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.4176119565963745) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_13` < -2.4648354053497314) THEN 9 ELSE 10 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.4142482876777649) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS `nid`, 2.432462453842163 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.3629682064056396 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.7233394384384155 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.6685470938682556 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.1418527364730835 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.9621629118919373 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.5348416566848755 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.`node_id_2` AS `node_id_2`, `DT_node_data_5`.`nid` AS `nid`, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.`node_id_2` = `DT_node_data_5`.`nid`), 
`XGB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.567685604095459) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.30251598358154297) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < -2.104104518890381) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < 0.5726628303527832) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS `nid`, 1.701004981994629 AS `Estimator` UNION ALL SELECT 4 AS `nid`, 2.4600603580474854 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.866808533668518 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.170946717262268 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.9972090721130371 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.6476977467536926 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.`node_id_2` AS `node_id_2`, `DT_node_data_6`.`nid` AS `nid`, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.`node_id_2` = `DT_node_data_6`.`nid`), 
`XGB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.6894010305404663) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.32838213443756104) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.9777689576148987) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.6218611598014832) THEN 9 ELSE 10 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_2` < 0.8133034706115723) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS `nid`, 2.1833291053771973 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.1028307676315308 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.468856692314148 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.9248348474502563 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.5930813550949097 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.7281293272972107 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.2936658561229706 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.`node_id_2` AS `node_id_2`, `DT_node_data_7`.`nid` AS `nid`, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.`node_id_2` = `DT_node_data_7`.`nid`), 
`XGB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_8` < 0.7684632539749146) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -0.8386189937591553) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_2` < 1.9817527532577515) THEN 9 ELSE 10 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_13` < 0.09151190519332886) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS `nid`, 1.9730825424194336 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.0917633771896362 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.8225401639938354 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.562129020690918 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.20757992565631866 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.6087807416915894 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.869446873664856 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.`node_id_2` AS `node_id_2`, `DT_node_data_8`.`nid` AS `nid`, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.`node_id_2` = `DT_node_data_8`.`nid`), 
`XGB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.567685604095459) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.2090441882610321) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.0981667041778564) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < 0.4803605079650879) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS `nid`, 1.285546064376831 AS `Estimator` UNION ALL SELECT 4 AS `nid`, 1.8284882307052612 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 0.8580016493797302 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.2938343286514282 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.7649194598197937 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.46019265055656433 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.`node_id_2` AS `node_id_2`, `DT_node_data_9`.`nid` AS `nid`, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.`node_id_2` = `DT_node_data_9`.`nid`), 
`XGB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 SELECT `XGB_B0`.`KEY`, `XGB_B0`.`Estimator` 
FROM (SELECT `XGB_esu_0`.`KEY` AS `KEY`, `XGB_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_0`.`KEY` AS `KEY`, `XGB_Model_0`.`Estimator` AS `Estimator` 
FROM `XGB_Model_0` UNION ALL SELECT `XGB_Model_1`.`KEY` AS `KEY`, `XGB_Model_1`.`Estimator` AS `Estimator` 
FROM `XGB_Model_1` UNION ALL SELECT `XGB_Model_2`.`KEY` AS `KEY`, `XGB_Model_2`.`Estimator` AS `Estimator` 
FROM `XGB_Model_2` UNION ALL SELECT `XGB_Model_3`.`KEY` AS `KEY`, `XGB_Model_3`.`Estimator` AS `Estimator` 
FROM `XGB_Model_3` UNION ALL SELECT `XGB_Model_4`.`KEY` AS `KEY`, `XGB_Model_4`.`Estimator` AS `Estimator` 
FROM `XGB_Model_4` UNION ALL SELECT `XGB_Model_5`.`KEY` AS `KEY`, `XGB_Model_5`.`Estimator` AS `Estimator` 
FROM `XGB_Model_5` UNION ALL SELECT `XGB_Model_6`.`KEY` AS `KEY`, `XGB_Model_6`.`Estimator` AS `Estimator` 
FROM `XGB_Model_6` UNION ALL SELECT `XGB_Model_7`.`KEY` AS `KEY`, `XGB_Model_7`.`Estimator` AS `Estimator` 
FROM `XGB_Model_7` UNION ALL SELECT `XGB_Model_8`.`KEY` AS `KEY`, `XGB_Model_8`.`Estimator` AS `Estimator` 
FROM `XGB_Model_8` UNION ALL SELECT `XGB_Model_9`.`KEY` AS `KEY`, `XGB_Model_9`.`Estimator` AS `Estimator` 
FROM `XGB_Model_9`) AS `XGB_esu_0`) AS `XGB_B0`

-- Code For temporary table tmp_20180516115119_codegen_x0ns10_xgb_b0 part 2. Populate

SELECT * FROM `tmp_20180516115119_codegen_x0ns10_xgb_b0`

-- Code For temporary table tmp_20180516115119_codegen_qeme6c_xgb_b1 part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516115119_codegen_qeme6c_xgb_b1` STORED AS ORC AS WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.7136284708976746) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.92124342918396) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -1.0505735874176025) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.4142482876777649) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < 0.4803605079650879) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN 11 ELSE 12 END ELSE 6 END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS `nid`, 0.4523448050022125 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 1.338578224182129 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 0.7056286334991455 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.5824922919273376 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.27925094962120056 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 1.1679444313049316 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 1.693954348564148 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.`node_id_2` AS `node_id_2`, `DT_node_data_10`.`nid` AS `nid`, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.`node_id_2` = `DT_node_data_10`.`nid`), 
`XGB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.4048003852367401) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.0981667041778564) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_8` < 0.7026442289352417) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < -1.5272151231765747) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -0.8675674796104431) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.9777689576148987) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_13` < 0.09151190519332886) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS `nid`, 0.7656623721122742 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.329530119895935 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.521605134010315 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.1243324279785156 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.5164692401885986 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.27053627371788025 AS `Estimator` UNION ALL SELECT 13 AS `nid`, 0.41958847641944885 AS `Estimator` UNION ALL SELECT 14 AS `nid`, 0.6375863552093506 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.`node_id_2` AS `node_id_2`, `DT_node_data_11`.`nid` AS `nid`, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.`node_id_2` = `DT_node_data_11`.`nid`), 
`XGB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -1.0423617362976074) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -0.29253846406936646) THEN 3 ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.6966322660446167) THEN 7 ELSE 8 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.9777689576148987) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.6218611598014832) THEN 9 ELSE 10 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_2` < 0.8133034706115723) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 3 AS `nid`, 1.5813093185424805 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 0.6600021123886108 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 1.120700478553772 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.5910495519638062 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 1.152274489402771 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.42759519815444946 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.11005621403455734 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.`node_id_2` AS `node_id_2`, `DT_node_data_12`.`nid` AS `nid`, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.`node_id_2` = `DT_node_data_12`.`nid`), 
`XGB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.32909029722213745) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.9896034002304077) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -1.036529302597046) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < 0.5495872497558594) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.8887920379638672) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN 11 ELSE 12 END ELSE 6 END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS `nid`, 0.15702562034130096 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 0.9060226678848267 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 0.4787502884864807 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.4151773154735565 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.1562521904706955 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.8186716437339783 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 1.2834728956222534 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.`node_id_2` AS `node_id_2`, `DT_node_data_13`.`nid` AS `nid`, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.`node_id_2` = `DT_node_data_13`.`nid`), 
`XGB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < -0.6963765621185303) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.611592411994934) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.2582729458808899) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < -1.3887616395950317) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 1.0077396631240845) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_13` < -2.0305681228637695) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 1.0243759155273438) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS `nid`, 0.5241692662239075 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 0.7520281076431274 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 1.2875114679336548 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.7881900668144226 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.16284285485744476 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 0.4763443171977997 AS `Estimator` UNION ALL SELECT 13 AS `nid`, 0.34015199542045593 AS `Estimator` UNION ALL SELECT 14 AS `nid`, 0.12058860063552856 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.`node_id_2` AS `node_id_2`, `DT_node_data_14`.`nid` AS `nid`, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.`node_id_2` = `DT_node_data_14`.`nid`), 
`XGB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 0.32909029722213745) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_14` < 0.92124342918396) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_9` < -1.024849534034729) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_12` < 0.5495872497558594) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.`scaler_6` < 0.8887920379638672) THEN CASE WHEN (`ADS_sca_2_OUT`.`scaler_7` < 1.671787142753601) THEN 11 ELSE 12 END ELSE 6 END END AS `node_id_2` 
FROM `tmp_20180516115118_codegen_c6nkdo_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS `nid`, 0.11129003018140793 AS `Estimator` UNION ALL SELECT 7 AS `nid`, 0.7856180667877197 AS `Estimator` UNION ALL SELECT 8 AS `nid`, 0.38532230257987976 AS `Estimator` UNION ALL SELECT 9 AS `nid`, 0.3531283438205719 AS `Estimator` UNION ALL SELECT 10 AS `nid`, 0.13314254581928253 AS `Estimator` UNION ALL SELECT 11 AS `nid`, 0.6760657429695129 AS `Estimator` UNION ALL SELECT 12 AS `nid`, 1.0761207342147827 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.`node_id_2` AS `node_id_2`, `DT_node_data_15`.`nid` AS `nid`, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.`node_id_2` = `DT_node_data_15`.`nid`), 
`XGB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 SELECT `XGB_B1`.`KEY`, `XGB_B1`.`Estimator` 
FROM (SELECT `XGB_esu_1`.`KEY` AS `KEY`, `XGB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_10`.`KEY` AS `KEY`, `XGB_Model_10`.`Estimator` AS `Estimator` 
FROM `XGB_Model_10` UNION ALL SELECT `XGB_Model_11`.`KEY` AS `KEY`, `XGB_Model_11`.`Estimator` AS `Estimator` 
FROM `XGB_Model_11` UNION ALL SELECT `XGB_Model_12`.`KEY` AS `KEY`, `XGB_Model_12`.`Estimator` AS `Estimator` 
FROM `XGB_Model_12` UNION ALL SELECT `XGB_Model_13`.`KEY` AS `KEY`, `XGB_Model_13`.`Estimator` AS `Estimator` 
FROM `XGB_Model_13` UNION ALL SELECT `XGB_Model_14`.`KEY` AS `KEY`, `XGB_Model_14`.`Estimator` AS `Estimator` 
FROM `XGB_Model_14` UNION ALL SELECT `XGB_Model_15`.`KEY` AS `KEY`, `XGB_Model_15`.`Estimator` AS `Estimator` 
FROM `XGB_Model_15`) AS `XGB_esu_1`) AS `XGB_B1`

-- Code For temporary table tmp_20180516115119_codegen_qeme6c_xgb_b1 part 2. Populate

SELECT * FROM `tmp_20180516115119_codegen_qeme6c_xgb_b1`

-- Code For temporary table tmp_20180516115119_codegen_h5xkyc_xgb_sum part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516115119_codegen_h5xkyc_xgb_sum` STORED AS ORC AS WITH `XGB_Union` AS 
(SELECT `XGB_EnsembleUnion`.`KEY` AS `KEY`, `XGB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_B0`.`KEY` AS `KEY`, `XGB_B0`.`Estimator` AS `Estimator` 
FROM `tmp_20180516115119_codegen_x0ns10_xgb_b0` AS `XGB_B0` UNION ALL SELECT `XGB_B1`.`KEY` AS `KEY`, `XGB_B1`.`Estimator` AS `Estimator` 
FROM `tmp_20180516115119_codegen_qeme6c_xgb_b1` AS `XGB_B1`) AS `XGB_EnsembleUnion`)
 SELECT `XGB_sum`.`KEY`, `XGB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `XGB_Union`.`KEY` AS `KEY`, sum(`XGB_Union`.`Estimator`) AS `Estimator` 
FROM `XGB_Union` GROUP BY `XGB_Union`.`KEY`) AS `T`) AS `XGB_sum`

-- Code For temporary table tmp_20180516115119_codegen_h5xkyc_xgb_sum part 2. Populate

SELECT * FROM `tmp_20180516115119_codegen_h5xkyc_xgb_sum`

-- Model deployment code

SELECT `XGB_sum`.`KEY` AS `KEY`, `XGB_sum`.`Estimator` + 0.5 AS `Estimator` 
FROM `tmp_20180516115119_codegen_h5xkyc_xgb_sum` AS `XGB_sum`