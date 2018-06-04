-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : freidman2
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602151604_2LY_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602151604_2LY_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602151604_2LY_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180602151604_2LY_ADS_imp_1_OUT` (`KEY`, imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT `U`.`KEY`, `U`.imputer_output_2, `U`.imputer_output_3, `U`.imputer_output_4, `U`.imputer_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.imputer_output_2, `ADS_imp_1_OUT`.imputer_output_3, `ADS_imp_1_OUT`.imputer_output_4, `ADS_imp_1_OUT`.imputer_output_5 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 43.79128122207401 ELSE `ADS`.`Feature_0` END AS imputer_output_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 945.9672833084396 ELSE `ADS`.`Feature_1` END AS imputer_output_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.5310009099975209 ELSE `ADS`.`Feature_2` END AS imputer_output_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 6.139967152050499 ELSE `ADS`.`Feature_3` END AS imputer_output_5 
FROM freidman2 AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180602151604_2LY_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602151604_2LY_ADS_imp_1_OUT_KEY` ON `TMP_20180602151604_2LY_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180602151604_HZ2_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602151604_HZ2_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602151604_HZ2_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180602151604_HZ2_ADS_sca_2_OUT` (`KEY`, scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT `U`.`KEY`, `U`.scaler_output_2, `U`.scaler_output_3, `U`.scaler_output_4, `U`.scaler_output_5 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_output_2, `ADS_sca_2_OUT`.scaler_output_3, `ADS_sca_2_OUT`.scaler_output_4, `ADS_sca_2_OUT`.scaler_output_5 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.imputer_output_2 AS DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST(`ADS_imp_1_OUT`.imputer_output_3 AS DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST(`ADS_imp_1_OUT`.imputer_output_4 AS DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST(`ADS_imp_1_OUT`.imputer_output_5 AS DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM `TMP_20180602151604_2LY_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180602151604_HZ2_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602151604_HZ2_ADS_sca_2_OUT_KEY` ON `TMP_20180602151604_HZ2_ADS_sca_2_OUT` (`KEY`)

-- Code For temporary table TMP_20180602151604_MVS_WE_B0 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602151604_MVS_WE_B0` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE, 
	`Weight` DOUBLE, 
	est_index BIGINT
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602151604_MVS_WE_B0 part 2. Populate

INSERT INTO `TMP_20180602151604_MVS_WE_B0` (`KEY`, `Estimator`, `Weight`, est_index) SELECT `U`.`KEY`, `U`.`Estimator`, `U`.`Weight`, `U`.est_index 
FROM (WITH `DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.1482173353433609) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.128638505935669) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 1.0598863363265991) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.09475763142108917) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.4582001566886902) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.33256804943084717) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 64.45369065255933 AS `E` UNION ALL SELECT 4 AS nid, 202.28209039774268 AS `E` UNION ALL SELECT 6 AS nid, 299.2743124225056 AS `E` UNION ALL SELECT 7 AS nid, 623.5052580108661 AS `E` UNION ALL SELECT 10 AS nid, 154.48498448216702 AS `E` UNION ALL SELECT 11 AS nid, 587.5278729144649 AS `E` UNION ALL SELECT 13 AS nid, 672.6347380054439 AS `E` UNION ALL SELECT 14 AS nid, 1069.6801245266563 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`ADB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator`, 0.09863580901774902 AS `Weight`, 0 AS est_index 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.13761106133460999) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.11010892689228058) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.27896609902381897) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.7437447309494019) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.5718052387237549) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 1.5346832275390625) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 1.5360115766525269) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 216.82967879019387 AS `E` UNION ALL SELECT 4 AS nid, 81.00036759616331 AS `E` UNION ALL SELECT 6 AS nid, 264.5753460987517 AS `E` UNION ALL SELECT 7 AS nid, 546.1890496395341 AS `E` UNION ALL SELECT 10 AS nid, 229.15913713796215 AS `E` UNION ALL SELECT 11 AS nid, 520.6117294724178 AS `E` UNION ALL SELECT 13 AS nid, 852.044079581605 AS `E` UNION ALL SELECT 14 AS nid, 1375.101694218316 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`ADB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator`, 0.0651975686996047 AS `Weight`, 1 AS est_index 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.45993202924728394) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.893553614616394) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.9191882014274597) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.030537530779838562) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.6325141787528992) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 1.211948037147522) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.8745283484458923) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 87.95940899385482 AS `E` UNION ALL SELECT 4 AS nid, 217.97307207934023 AS `E` UNION ALL SELECT 6 AS nid, 456.84183869251734 AS `E` UNION ALL SELECT 7 AS nid, 262.27001215911247 AS `E` UNION ALL SELECT 10 AS nid, 254.19291276653803 AS `E` UNION ALL SELECT 11 AS nid, 17.512631595279426 AS `E` UNION ALL SELECT 13 AS nid, 749.325459238228 AS `E` UNION ALL SELECT 14 AS nid, 1106.961558761814 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`ADB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator`, 0.059817484971670054 AS `Weight`, 2 AS est_index 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.9173357486724854) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.7634240388870239) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.4348924160003662) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.357338547706604) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.675052285194397) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.5515946745872498) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.06669343262910843) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 51.02105150973193 AS `E` UNION ALL SELECT 4 AS nid, 219.73160142888457 AS `E` UNION ALL SELECT 6 AS nid, 257.1949901310189 AS `E` UNION ALL SELECT 7 AS nid, 709.5225260605212 AS `E` UNION ALL SELECT 10 AS nid, 451.9899115058162 AS `E` UNION ALL SELECT 11 AS nid, 891.9116137909689 AS `E` UNION ALL SELECT 13 AS nid, 1450.4501202950794 AS `E` UNION ALL SELECT 14 AS nid, 1310.3597486879787 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`ADB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator`, 0.059124358840727746 AS `Weight`, 3 AS est_index 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 1.3361353874206543) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 1.0628046989440918) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.5528823733329773) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.047109298408031464) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.8996042013168335) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.33256804943084717) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 155.86413425452147 AS `E` UNION ALL SELECT 4 AS nid, 425.5784183390785 AS `E` UNION ALL SELECT 6 AS nid, 520.6117294724178 AS `E` UNION ALL SELECT 7 AS nid, 707.7479790727192 AS `E` UNION ALL SELECT 10 AS nid, 499.1644167800006 AS `E` UNION ALL SELECT 11 AS nid, 734.9946824938178 AS `E` UNION ALL SELECT 13 AS nid, 831.1973540757444 AS `E` UNION ALL SELECT 14 AS nid, 1088.3403372174653 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`ADB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator`, 0.050833936678549796 AS `Weight`, 4 AS est_index 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.12743204832077026) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.0188437700271606) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.398949384689331) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.3253766596317291) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.5610593557357788) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.5335928797721863) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.4050225615501404) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 34.67160970132683 AS `E` UNION ALL SELECT 4 AS nid, 190.92031563242725 AS `E` UNION ALL SELECT 6 AS nid, 128.34121885489947 AS `E` UNION ALL SELECT 7 AS nid, 408.73723070783757 AS `E` UNION ALL SELECT 10 AS nid, 287.3354915422355 AS `E` UNION ALL SELECT 11 AS nid, 710.4815953254918 AS `E` UNION ALL SELECT 13 AS nid, 922.4315498533327 AS `E` UNION ALL SELECT 14 AS nid, 1216.6116492531403 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`ADB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator`, 0.062481945448974306 AS `Weight`, 5 AS est_index 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.27021658420562744) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.9878436923027039) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7126317620277405) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.2513507008552551) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.5216202735900879) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.30220365524292) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.33256804943084717) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 103.08496892585457 AS `E` UNION ALL SELECT 4 AS nid, 206.4339813139544 AS `E` UNION ALL SELECT 6 AS nid, 141.71965100339767 AS `E` UNION ALL SELECT 7 AS nid, 451.2453583498489 AS `E` UNION ALL SELECT 10 AS nid, 45.82339983475852 AS `E` UNION ALL SELECT 11 AS nid, 392.0284073241287 AS `E` UNION ALL SELECT 13 AS nid, 733.6578944500621 AS `E` UNION ALL SELECT 14 AS nid, 1039.27782753731 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`ADB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator`, 0.05215399646667793 AS `Weight`, 6 AS est_index 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.40340161323547363) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.9489604234695435) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.98158860206604) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.492695689201355) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.24330484867095947) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.5216202735900879) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 1.5360115766525269) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 101.98811435823718 AS `E` UNION ALL SELECT 4 AS nid, 304.30169985482513 AS `E` UNION ALL SELECT 6 AS nid, 482.08342747565075 AS `E` UNION ALL SELECT 7 AS nid, 174.68142016985658 AS `E` UNION ALL SELECT 10 AS nid, 308.1785576779389 AS `E` UNION ALL SELECT 11 AS nid, 585.8361263876723 AS `E` UNION ALL SELECT 13 AS nid, 865.298605321905 AS `E` UNION ALL SELECT 14 AS nid, 1412.7759072566978 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`ADB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator`, 0.04390254973069685 AS `Weight`, 7 AS est_index 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.2115982472896576) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -1.2996203899383545) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.0041062235832214355) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.10599114000797272) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.5887481570243835) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.8755245804786682) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.8798036575317383) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 337.38826235560066 AS `E` UNION ALL SELECT 4 AS nid, 469.1399521591432 AS `E` UNION ALL SELECT 6 AS nid, 50.25592994946368 AS `E` UNION ALL SELECT 7 AS nid, 218.19541099086553 AS `E` UNION ALL SELECT 10 AS nid, 226.17766893389216 AS `E` UNION ALL SELECT 11 AS nid, 687.7938219652534 AS `E` UNION ALL SELECT 13 AS nid, 1038.6171767754681 AS `E` UNION ALL SELECT 14 AS nid, 1403.5311168873582 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`ADB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator`, 0.06306650077091593 AS `Weight`, 8 AS est_index 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.13761106133460999) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.6627639532089233) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 1.249009132385254) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= 0.6816338896751404) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.7479667663574219) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.24330484867095947) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.8874835968017578) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 102.8618729507805 AS `E` UNION ALL SELECT 4 AS nid, 367.21643390195726 AS `E` UNION ALL SELECT 6 AS nid, 548.7265850609318 AS `E` UNION ALL SELECT 7 AS nid, 168.83377965051633 AS `E` UNION ALL SELECT 10 AS nid, 465.4086896270376 AS `E` UNION ALL SELECT 11 AS nid, 816.4340443185264 AS `E` UNION ALL SELECT 13 AS nid, 988.5486054899013 AS `E` UNION ALL SELECT 14 AS nid, 1325.023688024338 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`ADB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator`, 0.0534266143774247 AS `Weight`, 9 AS est_index 
FROM `DT_Output_9`)
 SELECT `WE_B0`.`KEY`, `WE_B0`.`Estimator`, `WE_B0`.`Weight`, `WE_B0`.est_index 
FROM (SELECT `WE_esu_0`.`KEY` AS `KEY`, `WE_esu_0`.`Estimator` AS `Estimator`, `WE_esu_0`.`Weight` AS `Weight`, `WE_esu_0`.est_index AS est_index 
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
FROM `ADB_Model_9`) AS `WE_esu_0`) AS `WE_B0`) AS `U`

-- Code For temporary table TMP_20180602151604_CBU_WE_B1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602151604_CBU_WE_B1` (
	`KEY` BIGINT, 
	`Estimator` DOUBLE, 
	`Weight` DOUBLE, 
	est_index BIGINT
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602151604_CBU_WE_B1 part 2. Populate

INSERT INTO `TMP_20180602151604_CBU_WE_B1` (`KEY`, `Estimator`, `Weight`, est_index) SELECT `U`.`KEY`, `U`.`Estimator`, `U`.`Weight`, `U`.est_index 
FROM (WITH `DT_node_lookup_10` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.9173357486724854) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.044583942741155624) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.017436565831303596) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.5702117681503296) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.0871841236948967) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -0.8746432065963745) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.14283053576946259) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 146.54121637251208 AS `E` UNION ALL SELECT 4 AS nid, 577.7748008826669 AS `E` UNION ALL SELECT 6 AS nid, 495.2617662035648 AS `E` UNION ALL SELECT 7 AS nid, 1061.8958792004942 AS `E` UNION ALL SELECT 10 AS nid, 659.7758612015352 AS `E` UNION ALL SELECT 11 AS nid, 325.18474620624465 AS `E` UNION ALL SELECT 13 AS nid, 992.9410727608938 AS `E` UNION ALL SELECT 14 AS nid, 1354.557715619784 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`ADB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator`, 0.07802190731194611 AS `Weight`, 10 AS est_index 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.38784921169281006) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.5868843793869019) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.12692344188690186) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_2 <= -1.506455421447754) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.21366584300994873) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.8362234830856323) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.3805099129676819) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 43.137171961132545 AS `E` UNION ALL SELECT 4 AS nid, 112.58681242540413 AS `E` UNION ALL SELECT 6 AS nid, 557.4241818513145 AS `E` UNION ALL SELECT 7 AS nid, 326.8821022881904 AS `E` UNION ALL SELECT 10 AS nid, 146.31092095251188 AS `E` UNION ALL SELECT 11 AS nid, 603.2108522484475 AS `E` UNION ALL SELECT 13 AS nid, 809.2922079953273 AS `E` UNION ALL SELECT 14 AS nid, 1185.390656992793 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`ADB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator`, 0.05239000953713652 AS `Weight`, 11 AS est_index 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.5106022953987122) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.5280934572219849) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.4309000968933105) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.7967112064361572) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.3805099129676819) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.2163339853286743) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.6851865649223328) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 53.054280498612464 AS `E` UNION ALL SELECT 4 AS nid, 304.1700685925706 AS `E` UNION ALL SELECT 6 AS nid, 484.792969389061 AS `E` UNION ALL SELECT 7 AS nid, 851.9783173152701 AS `E` UNION ALL SELECT 10 AS nid, 150.56975190493722 AS `E` UNION ALL SELECT 11 AS nid, 823.6201075117707 AS `E` UNION ALL SELECT 13 AS nid, 1130.405610046803 AS `E` UNION ALL SELECT 14 AS nid, 1379.6738576453718 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`ADB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator`, 0.05875405071191933 AS `Weight`, 12 AS est_index 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.006271638907492161) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.9878436923027039) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.938457727432251) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.31077393889427185) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.33256804943084717) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -1.2008795738220215) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.7321457862854004) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 103.39331111467051 AS `E` UNION ALL SELECT 4 AS nid, 335.89186437482795 AS `E` UNION ALL SELECT 6 AS nid, 210.09469328709034 AS `E` UNION ALL SELECT 7 AS nid, 499.4283444640839 AS `E` UNION ALL SELECT 10 AS nid, 81.61991678616678 AS `E` UNION ALL SELECT 11 AS nid, 677.8662431235205 AS `E` UNION ALL SELECT 13 AS nid, 927.0324406650154 AS `E` UNION ALL SELECT 14 AS nid, 1294.940659100632 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`ADB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator`, 0.06482667808508517 AS `Weight`, 13 AS est_index 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.8996042013168335) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.8009169697761536) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -1.4571969509124756) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.4965199828147888) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.16699986159801483) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 0.7981606721878052) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 1.1606311798095703) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 100.20671590376186 AS `E` UNION ALL SELECT 4 AS nid, 250.27451930774032 AS `E` UNION ALL SELECT 6 AS nid, 281.88082896832327 AS `E` UNION ALL SELECT 7 AS nid, 715.1454469695965 AS `E` UNION ALL SELECT 10 AS nid, 462.32030787663587 AS `E` UNION ALL SELECT 11 AS nid, 758.4196888228367 AS `E` UNION ALL SELECT 13 AS nid, 1137.298252654149 AS `E` UNION ALL SELECT 14 AS nid, 1397.3679233077987 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`ADB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator`, 0.05085826988825819 AS `Weight`, 14 AS est_index 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= 0.047109298408031464) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_3 <= -0.8755245804786682) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.2796420753002167) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= -0.5764809846878052) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= 0.22938552498817444) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_output_4 <= -0.8422532081604004) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_output_5 <= 1.1606311798095703) THEN 13 ELSE 14 END END END AS node_id_2 
FROM `TMP_20180602151604_HZ2_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 50.914367760531015 AS `E` UNION ALL SELECT 4 AS nid, 246.0020070366336 AS `E` UNION ALL SELECT 6 AS nid, 238.91298804636327 AS `E` UNION ALL SELECT 7 AS nid, 573.8622354080331 AS `E` UNION ALL SELECT 10 AS nid, 199.9602859265179 AS `E` UNION ALL SELECT 11 AS nid, 651.0931705212914 AS `E` UNION ALL SELECT 13 AS nid, 1038.3561959729345 AS `E` UNION ALL SELECT 14 AS nid, 1432.7560546326524 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`ADB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator`, 0.08650831946266381 AS `Weight`, 15 AS est_index 
FROM `DT_Output_15`)
 SELECT `WE_B1`.`KEY`, `WE_B1`.`Estimator`, `WE_B1`.`Weight`, `WE_B1`.est_index 
FROM (SELECT `WE_esu_1`.`KEY` AS `KEY`, `WE_esu_1`.`Estimator` AS `Estimator`, `WE_esu_1`.`Weight` AS `Weight`, `WE_esu_1`.est_index AS est_index 
FROM (SELECT `ADB_Model_10`.`KEY` AS `KEY`, `ADB_Model_10`.`Estimator` AS `Estimator`, `ADB_Model_10`.`Weight` AS `Weight`, `ADB_Model_10`.est_index AS est_index 
FROM `ADB_Model_10` UNION ALL SELECT `ADB_Model_11`.`KEY` AS `KEY`, `ADB_Model_11`.`Estimator` AS `Estimator`, `ADB_Model_11`.`Weight` AS `Weight`, `ADB_Model_11`.est_index AS est_index 
FROM `ADB_Model_11` UNION ALL SELECT `ADB_Model_12`.`KEY` AS `KEY`, `ADB_Model_12`.`Estimator` AS `Estimator`, `ADB_Model_12`.`Weight` AS `Weight`, `ADB_Model_12`.est_index AS est_index 
FROM `ADB_Model_12` UNION ALL SELECT `ADB_Model_13`.`KEY` AS `KEY`, `ADB_Model_13`.`Estimator` AS `Estimator`, `ADB_Model_13`.`Weight` AS `Weight`, `ADB_Model_13`.est_index AS est_index 
FROM `ADB_Model_13` UNION ALL SELECT `ADB_Model_14`.`KEY` AS `KEY`, `ADB_Model_14`.`Estimator` AS `Estimator`, `ADB_Model_14`.`Weight` AS `Weight`, `ADB_Model_14`.est_index AS est_index 
FROM `ADB_Model_14` UNION ALL SELECT `ADB_Model_15`.`KEY` AS `KEY`, `ADB_Model_15`.`Estimator` AS `Estimator`, `ADB_Model_15`.`Weight` AS `Weight`, `ADB_Model_15`.est_index AS est_index 
FROM `ADB_Model_15`) AS `WE_esu_1`) AS `WE_B1`) AS `U`

-- Code For temporary table TMP_20180602151604_SAC_Quantiles part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602151604_SAC_Quantiles` (
	`KEY` BIGINT, 
	`Quantile` DOUBLE
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602151604_SAC_Quantiles part 2. Populate

INSERT INTO `TMP_20180602151604_SAC_Quantiles` (`KEY`, `Quantile`) SELECT `U`.`KEY`, `U`.`Quantile` 
FROM (WITH `WE_Union` AS 
(SELECT `WE_EnsembleUnion`.`KEY` AS `KEY`, `WE_EnsembleUnion`.`Estimator` AS `Estimator`, `WE_EnsembleUnion`.`Weight` AS `Weight`, `WE_EnsembleUnion`.est_index AS est_index 
FROM (SELECT `WE_B0`.`KEY` AS `KEY`, `WE_B0`.`Estimator` AS `Estimator`, `WE_B0`.`Weight` AS `Weight`, `WE_B0`.est_index AS est_index 
FROM `TMP_20180602151604_MVS_WE_B0` AS `WE_B0` UNION ALL SELECT `WE_B1`.`KEY` AS `KEY`, `WE_B1`.`Estimator` AS `Estimator`, `WE_B1`.`Weight` AS `Weight`, `WE_B1`.est_index AS est_index 
FROM `TMP_20180602151604_CBU_WE_B1` AS `WE_B1`) AS `WE_EnsembleUnion`), 
`Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.est_index AS est_index, `CW`.cum_weight AS cum_weight 
FROM (SELECT u1.`KEY` AS `KEY`, u1.`Estimator` AS `Estimator`, u1.`Weight` AS `Weight`, u1.est_index AS est_index, sum(u2.`Weight`) AS cum_weight 
FROM `WE_Union` AS u1, `WE_Union` AS u2 
WHERE u1.`Estimator` >= u2.`Estimator` AND u1.`KEY` = u2.`KEY` GROUP BY u1.`KEY`, u1.est_index, u1.`Estimator`, u1.`Weight`) AS `CW`)
 SELECT `Quantiles`.`KEY`, `Quantiles`.`Quantile` 
FROM (SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.cum_weight >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`) AS `Quantiles`) AS `U`

-- Model deployment code

SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM `TMP_20180602151604_SAC_Quantiles` AS `Quantiles`