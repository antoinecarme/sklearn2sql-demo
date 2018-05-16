-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : RandomReg_10
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516113513_codegen_qzcc2b_quantiles part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180516113513_codegen_qzcc2b_quantiles` STORED AS ORC AS WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` <= -1.0891695022583008) THEN CASE WHEN (`ADS`.`Feature_2` <= 1.115322470664978) THEN CASE WHEN (`ADS`.`Feature_4` <= -1.2480316162109375) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.26210087537765503) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.7516303062438965) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.8153923749923706) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -258.78967128195916 AS `E` UNION ALL SELECT 4 AS `nid`, -459.030670753418 AS `E` UNION ALL SELECT 5 AS `nid`, 8.923656244969493 AS `E` UNION ALL SELECT 8 AS `nid`, -33.68318489379449 AS `E` UNION ALL SELECT 9 AS `nid`, 331.1703574482745 AS `E` UNION ALL SELECT 11 AS `nid`, -67.71218597426643 AS `E` UNION ALL SELECT 12 AS `nid`, 237.42844372247995 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`nid` AS `nid`, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`nid`), 
`ADB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator`, 0.04446208770695428 AS `Weight`, 0 AS `est_index` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.48648887872695923) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.3544403612613678) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.17893502116203308) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 1.4059425592422485) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.1578926146030426) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.07556744664907455) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= -0.6555853486061096) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -275.3140245822599 AS `E` UNION ALL SELECT 4 AS `nid`, -51.978296973080745 AS `E` UNION ALL SELECT 6 AS `nid`, -5.071250740277515 AS `E` UNION ALL SELECT 7 AS `nid`, 233.69717607109223 AS `E` UNION ALL SELECT 10 AS `nid`, -3.5129502029338977 AS `E` UNION ALL SELECT 11 AS `nid`, 188.04997667771173 AS `E` UNION ALL SELECT 13 AS `nid`, 140.41860719645143 AS `E` UNION ALL SELECT 14 AS `nid`, 315.516499408182 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`nid` AS `nid`, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`nid`), 
`ADB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator`, 0.08664409729399586 AS `Weight`, 1 AS `est_index` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= -0.46975594758987427) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.45080167055130005) THEN CASE WHEN (`ADS`.`Feature_7` <= 1.1767406463623047) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.5868625640869141) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.2579100728034973) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.23099666833877563) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.3419182002544403) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -275.71317374560243 AS `E` UNION ALL SELECT 4 AS `nid`, -67.71218597426643 AS `E` UNION ALL SELECT 6 AS `nid`, 55.116699007890816 AS `E` UNION ALL SELECT 7 AS `nid`, -155.93422584455163 AS `E` UNION ALL SELECT 10 AS `nid`, -147.53184050315582 AS `E` UNION ALL SELECT 11 AS `nid`, 58.68288409772242 AS `E` UNION ALL SELECT 13 AS `nid`, 18.952518951698984 AS `E` UNION ALL SELECT 14 AS `nid`, 306.8298344890547 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`nid` AS `nid`, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`nid`), 
`ADB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator`, 0.06582087696187752 AS `Weight`, 2 AS `est_index` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= -0.3908981680870056) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.4633442759513855) THEN CASE WHEN (`ADS`.`Feature_1` <= -1.1535027027130127) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= -0.08621718734502792) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.6248867511749268) THEN CASE WHEN (`ADS`.`Feature_3` <= 1.9320313930511475) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.163679838180542) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -372.6097926421876 AS `E` UNION ALL SELECT 4 AS `nid`, -179.49806119548728 AS `E` UNION ALL SELECT 6 AS `nid`, 0.03464252446700726 AS `E` UNION ALL SELECT 7 AS `nid`, 148.5689639947692 AS `E` UNION ALL SELECT 10 AS `nid`, -176.44474023597397 AS `E` UNION ALL SELECT 11 AS `nid`, 235.3201708856319 AS `E` UNION ALL SELECT 13 AS `nid`, 115.83390653339242 AS `E` UNION ALL SELECT 14 AS `nid`, 330.130452304522 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`nid` AS `nid`, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`nid`), 
`ADB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator`, 0.06674897688970727 AS `Weight`, 3 AS `est_index` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= -0.40658098459243774) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.07830402255058289) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.11090748757123947) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.08110732585191727) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.2370140254497528) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.3367226719856262) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.3947802186012268) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -301.15376029685405 AS `E` UNION ALL SELECT 4 AS `nid`, -93.46844419820344 AS `E` UNION ALL SELECT 6 AS `nid`, -154.42942193202822 AS `E` UNION ALL SELECT 7 AS `nid`, 17.44341606264206 AS `E` UNION ALL SELECT 10 AS `nid`, -124.78009971471862 AS `E` UNION ALL SELECT 11 AS `nid`, 156.15648867007823 AS `E` UNION ALL SELECT 13 AS `nid`, -19.539222936443657 AS `E` UNION ALL SELECT 14 AS `nid`, 291.82620425110474 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.`node_id_2` AS `node_id_2`, `DT_node_data_4`.`nid` AS `nid`, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.`node_id_2` = `DT_node_data_4`.`nid`), 
`ADB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator`, 0.05282722213445535 AS `Weight`, 4 AS `est_index` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.8179076910018921) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.519959568977356) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.7357114553451538) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.10979260504245758) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.9346989989280701) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.5757331252098083) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_9` <= -0.9260942935943604) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -362.55766377741224 AS `E` UNION ALL SELECT 4 AS `nid`, -123.46523883145976 AS `E` UNION ALL SELECT 6 AS `nid`, -83.13715970079957 AS `E` UNION ALL SELECT 7 AS `nid`, 159.17936544144126 AS `E` UNION ALL SELECT 10 AS `nid`, -9.185160907179679 AS `E` UNION ALL SELECT 11 AS `nid`, 38.71263785211542 AS `E` UNION ALL SELECT 13 AS `nid`, 447.6909835452225 AS `E` UNION ALL SELECT 14 AS `nid`, 303.7602778573214 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.`node_id_2` AS `node_id_2`, `DT_node_data_5`.`nid` AS `nid`, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.`node_id_2` = `DT_node_data_5`.`nid`), 
`ADB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator`, 0.042441299934227496 AS `Weight`, 5 AS `est_index` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` <= -0.18378067016601562) THEN CASE WHEN (`ADS`.`Feature_3` <= -1.010669469833374) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.47532063722610474) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 1.7505338191986084) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.163679838180542) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.3587886095046997) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.7519553899765015) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -417.8058837771809 AS `E` UNION ALL SELECT 4 AS `nid`, -207.36981530703343 AS `E` UNION ALL SELECT 6 AS `nid`, -29.491925297145684 AS `E` UNION ALL SELECT 7 AS `nid`, 230.62947658635767 AS `E` UNION ALL SELECT 10 AS `nid`, -9.823581784704684 AS `E` UNION ALL SELECT 11 AS `nid`, 202.84876027465583 AS `E` UNION ALL SELECT 13 AS `nid`, 290.8432010120758 AS `E` UNION ALL SELECT 14 AS `nid`, 458.36306104498453 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.`node_id_2` AS `node_id_2`, `DT_node_data_6`.`nid` AS `nid`, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.`node_id_2` = `DT_node_data_6`.`nid`), 
`ADB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator`, 0.06829976727403611 AS `Weight`, 6 AS `est_index` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= 1.25929594039917) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.5290045142173767) THEN CASE WHEN (`ADS`.`Feature_1` <= -0.25502562522888184) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.14717379212379456) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.3942183554172516) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.15244603157043457) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_9` <= -1.5512021780014038) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -301.78584225936794 AS `E` UNION ALL SELECT 4 AS `nid`, -74.26631713904239 AS `E` UNION ALL SELECT 6 AS `nid`, -22.154561867405427 AS `E` UNION ALL SELECT 7 AS `nid`, 171.3986356876689 AS `E` UNION ALL SELECT 10 AS `nid`, 116.8891961793557 AS `E` UNION ALL SELECT 11 AS `nid`, 243.63801061508232 AS `E` UNION ALL SELECT 13 AS `nid`, 447.6909835452225 AS `E` UNION ALL SELECT 14 AS `nid`, 331.09987338331797 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.`node_id_2` AS `node_id_2`, `DT_node_data_7`.`nid` AS `nid`, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.`node_id_2` = `DT_node_data_7`.`nid`), 
`ADB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator`, 0.046873421003428055 AS `Weight`, 7 AS `est_index` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.5715910196304321) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.8521277904510498) THEN CASE WHEN (`ADS`.`Feature_3` <= -1.010669469833374) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.8501834869384766) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.32709717750549316) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.3016137480735779) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.4357970356941223) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -213.20347714113592 AS `E` UNION ALL SELECT 4 AS `nid`, -63.814558671282754 AS `E` UNION ALL SELECT 6 AS `nid`, 198.97164294103214 AS `E` UNION ALL SELECT 7 AS `nid`, 376.9384086101691 AS `E` UNION ALL SELECT 10 AS `nid`, 144.424454256417 AS `E` UNION ALL SELECT 11 AS `nid`, -32.93760686572384 AS `E` UNION ALL SELECT 13 AS `nid`, 212.77017134367168 AS `E` UNION ALL SELECT 14 AS `nid`, 376.7944341234486 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.`node_id_2` AS `node_id_2`, `DT_node_data_8`.`nid` AS `nid`, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.`node_id_2` = `DT_node_data_8`.`nid`), 
`ADB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator`, 0.05534587611829534 AS `Weight`, 8 AS `est_index` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` <= -1.0583748817443848) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.6914758682250977) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.530832827091217) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.23885726928710938) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.6059607267379761) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.6670668125152588) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 1.6530184745788574) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -459.03067075341806 AS `E` UNION ALL SELECT 4 AS `nid`, -273.12284471942644 AS `E` UNION ALL SELECT 6 AS `nid`, -20.4235287408218 AS `E` UNION ALL SELECT 7 AS `nid`, 58.56592202346141 AS `E` UNION ALL SELECT 10 AS `nid`, -252.2686492152819 AS `E` UNION ALL SELECT 11 AS `nid`, 78.77562259059067 AS `E` UNION ALL SELECT 13 AS `nid`, 202.90753073398878 AS `E` UNION ALL SELECT 14 AS `nid`, 428.2582628618327 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.`node_id_2` AS `node_id_2`, `DT_node_data_9`.`nid` AS `nid`, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.`node_id_2` = `DT_node_data_9`.`nid`), 
`ADB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator`, 0.08723375290547038 AS `Weight`, 9 AS `est_index` 
FROM `DT_Output_9`), 
`DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_5` <= -0.6693825721740723) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.8371068239212036) THEN CASE WHEN (`ADS`.`Feature_4` <= -0.5533334016799927) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.14717379212379456) THEN CASE WHEN (`ADS`.`Feature_2` <= 1.10337233543396) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 1.25929594039917) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -375.1539668400623 AS `E` UNION ALL SELECT 4 AS `nid`, -189.8018001744999 AS `E` UNION ALL SELECT 5 AS `nid`, 325.0738816201826 AS `E` UNION ALL SELECT 8 AS `nid`, -74.16411287704308 AS `E` UNION ALL SELECT 9 AS `nid`, 215.34737912146102 AS `E` UNION ALL SELECT 11 AS `nid`, 153.17367712046337 AS `E` UNION ALL SELECT 12 AS `nid`, 358.7357714280424 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.`node_id_2` AS `node_id_2`, `DT_node_data_10`.`nid` AS `nid`, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.`node_id_2` = `DT_node_data_10`.`nid`), 
`ADB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator`, 0.038809907037760126 AS `Weight`, 10 AS `est_index` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_5` <= 0.2265688180923462) THEN CASE WHEN (`ADS`.`Feature_3` <= -0.4326603412628174) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.7803283929824829) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.9640567898750305) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.18978770077228546) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.4633442759513855) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.1356269121170044) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -319.80183820518755 AS `E` UNION ALL SELECT 4 AS `nid`, -446.8172118364044 AS `E` UNION ALL SELECT 6 AS `nid`, -266.8202258688374 AS `E` UNION ALL SELECT 7 AS `nid`, -154.01730507475207 AS `E` UNION ALL SELECT 10 AS `nid`, -155.09122813008221 AS `E` UNION ALL SELECT 11 AS `nid`, 101.90332661789155 AS `E` UNION ALL SELECT 13 AS `nid`, 183.70759149944826 AS `E` UNION ALL SELECT 14 AS `nid`, 409.420212416183 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.`node_id_2` AS `node_id_2`, `DT_node_data_11`.`nid` AS `nid`, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.`node_id_2` = `DT_node_data_11`.`nid`), 
`ADB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator`, 0.07764628429256809 AS `Weight`, 11 AS `est_index` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` <= -1.0482118129730225) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.4848606586456299) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.12232282757759094) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.23885726928710938) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.1701385974884033) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.7659631967544556) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.032753605395555496) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -264.3179172951439 AS `E` UNION ALL SELECT 4 AS `nid`, -459.030670753418 AS `E` UNION ALL SELECT 6 AS `nid`, -26.880271737136272 AS `E` UNION ALL SELECT 7 AS `nid`, 58.56592202346141 AS `E` UNION ALL SELECT 10 AS `nid`, -47.128289538683944 AS `E` UNION ALL SELECT 11 AS `nid`, 216.12984346020096 AS `E` UNION ALL SELECT 13 AS `nid`, 260.80290006208634 AS `E` UNION ALL SELECT 14 AS `nid`, 462.9873729049727 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.`node_id_2` AS `node_id_2`, `DT_node_data_12`.`nid` AS `nid`, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.`node_id_2` = `DT_node_data_12`.`nid`), 
`ADB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator`, 0.06110622801176306 AS `Weight`, 12 AS `est_index` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= -0.3098868131637573) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.26793915033340454) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.646928071975708) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 1.5143301486968994) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.8908569812774658) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.28035256266593933) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 1.9032750129699707) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -326.10198511368253 AS `E` UNION ALL SELECT 4 AS `nid`, -181.5117298102302 AS `E` UNION ALL SELECT 6 AS `nid`, -8.897965018937406 AS `E` UNION ALL SELECT 7 AS `nid`, 351.37130796411674 AS `E` UNION ALL SELECT 10 AS `nid`, 19.841626270219137 AS `E` UNION ALL SELECT 11 AS `nid`, 259.01559019368403 AS `E` UNION ALL SELECT 13 AS `nid`, 314.2194981103516 AS `E` UNION ALL SELECT 14 AS `nid`, 479.70721604450864 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.`node_id_2` AS `node_id_2`, `DT_node_data_13`.`nid` AS `nid`, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.`node_id_2` = `DT_node_data_13`.`nid`), 
`ADB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator`, 0.08200998648424274 AS `Weight`, 13 AS `est_index` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= -0.20833948254585266) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.4633442759513855) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.36321908235549927) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.8755080699920654) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 1.7519553899765015) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.7618715763092041) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.25780531764030457) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -353.6403522160441 AS `E` UNION ALL SELECT 4 AS `nid`, -165.23670331580712 AS `E` UNION ALL SELECT 6 AS `nid`, -9.617958070006466 AS `E` UNION ALL SELECT 7 AS `nid`, 211.2028693831088 AS `E` UNION ALL SELECT 10 AS `nid`, -111.96115355506403 AS `E` UNION ALL SELECT 11 AS `nid`, 182.9121411176754 AS `E` UNION ALL SELECT 13 AS `nid`, 459.6970707324548 AS `E` UNION ALL SELECT 14 AS `nid`, 235.3201708856319 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.`node_id_2` AS `node_id_2`, `DT_node_data_14`.`nid` AS `nid`, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.`node_id_2` = `DT_node_data_14`.`nid`), 
`ADB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator`, 0.07665120690259909 AS `Weight`, 14 AS `est_index` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= 0.6005938053131104) THEN CASE WHEN (`ADS`.`Feature_5` <= -0.6158617734909058) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.014229899272322655) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -0.1578926146030426) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -0.8022096157073975) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.1096474900841713) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.865950345993042) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.`nid` AS `nid`, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS `nid`, -350.4849793104147 AS `E` UNION ALL SELECT 4 AS `nid`, -136.46667135000865 AS `E` UNION ALL SELECT 6 AS `nid`, -85.8354336830041 AS `E` UNION ALL SELECT 7 AS `nid`, 184.7984725101791 AS `E` UNION ALL SELECT 10 AS `nid`, -24.728024071698115 AS `E` UNION ALL SELECT 11 AS `nid`, -101.20974879377152 AS `E` UNION ALL SELECT 13 AS `nid`, 60.83005801950535 AS `E` UNION ALL SELECT 14 AS `nid`, 361.888983724582 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.`node_id_2` AS `node_id_2`, `DT_node_data_15`.`nid` AS `nid`, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.`node_id_2` = `DT_node_data_15`.`nid`), 
`ADB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator`, 0.047079009048619315 AS `Weight`, 15 AS `est_index` 
FROM `DT_Output_15`), 
`WE` AS 
(SELECT `ensemble_score_union`.`KEY` AS `KEY`, `ensemble_score_union`.`Estimator` AS `Estimator`, `ensemble_score_union`.`Weight` AS `Weight`, `ensemble_score_union`.`est_index` AS `est_index` 
FROM (SELECT `ADB_Model_0`.`KEY` AS `KEY`, `ADB_Model_0`.`Estimator` AS `Estimator`, `ADB_Model_0`.`Weight` AS `Weight`, `ADB_Model_0`.`est_index` AS `est_index` 
FROM `ADB_Model_0` UNION ALL SELECT `ADB_Model_1`.`KEY` AS `KEY`, `ADB_Model_1`.`Estimator` AS `Estimator`, `ADB_Model_1`.`Weight` AS `Weight`, `ADB_Model_1`.`est_index` AS `est_index` 
FROM `ADB_Model_1` UNION ALL SELECT `ADB_Model_2`.`KEY` AS `KEY`, `ADB_Model_2`.`Estimator` AS `Estimator`, `ADB_Model_2`.`Weight` AS `Weight`, `ADB_Model_2`.`est_index` AS `est_index` 
FROM `ADB_Model_2` UNION ALL SELECT `ADB_Model_3`.`KEY` AS `KEY`, `ADB_Model_3`.`Estimator` AS `Estimator`, `ADB_Model_3`.`Weight` AS `Weight`, `ADB_Model_3`.`est_index` AS `est_index` 
FROM `ADB_Model_3` UNION ALL SELECT `ADB_Model_4`.`KEY` AS `KEY`, `ADB_Model_4`.`Estimator` AS `Estimator`, `ADB_Model_4`.`Weight` AS `Weight`, `ADB_Model_4`.`est_index` AS `est_index` 
FROM `ADB_Model_4` UNION ALL SELECT `ADB_Model_5`.`KEY` AS `KEY`, `ADB_Model_5`.`Estimator` AS `Estimator`, `ADB_Model_5`.`Weight` AS `Weight`, `ADB_Model_5`.`est_index` AS `est_index` 
FROM `ADB_Model_5` UNION ALL SELECT `ADB_Model_6`.`KEY` AS `KEY`, `ADB_Model_6`.`Estimator` AS `Estimator`, `ADB_Model_6`.`Weight` AS `Weight`, `ADB_Model_6`.`est_index` AS `est_index` 
FROM `ADB_Model_6` UNION ALL SELECT `ADB_Model_7`.`KEY` AS `KEY`, `ADB_Model_7`.`Estimator` AS `Estimator`, `ADB_Model_7`.`Weight` AS `Weight`, `ADB_Model_7`.`est_index` AS `est_index` 
FROM `ADB_Model_7` UNION ALL SELECT `ADB_Model_8`.`KEY` AS `KEY`, `ADB_Model_8`.`Estimator` AS `Estimator`, `ADB_Model_8`.`Weight` AS `Weight`, `ADB_Model_8`.`est_index` AS `est_index` 
FROM `ADB_Model_8` UNION ALL SELECT `ADB_Model_9`.`KEY` AS `KEY`, `ADB_Model_9`.`Estimator` AS `Estimator`, `ADB_Model_9`.`Weight` AS `Weight`, `ADB_Model_9`.`est_index` AS `est_index` 
FROM `ADB_Model_9` UNION ALL SELECT `ADB_Model_10`.`KEY` AS `KEY`, `ADB_Model_10`.`Estimator` AS `Estimator`, `ADB_Model_10`.`Weight` AS `Weight`, `ADB_Model_10`.`est_index` AS `est_index` 
FROM `ADB_Model_10` UNION ALL SELECT `ADB_Model_11`.`KEY` AS `KEY`, `ADB_Model_11`.`Estimator` AS `Estimator`, `ADB_Model_11`.`Weight` AS `Weight`, `ADB_Model_11`.`est_index` AS `est_index` 
FROM `ADB_Model_11` UNION ALL SELECT `ADB_Model_12`.`KEY` AS `KEY`, `ADB_Model_12`.`Estimator` AS `Estimator`, `ADB_Model_12`.`Weight` AS `Weight`, `ADB_Model_12`.`est_index` AS `est_index` 
FROM `ADB_Model_12` UNION ALL SELECT `ADB_Model_13`.`KEY` AS `KEY`, `ADB_Model_13`.`Estimator` AS `Estimator`, `ADB_Model_13`.`Weight` AS `Weight`, `ADB_Model_13`.`est_index` AS `est_index` 
FROM `ADB_Model_13` UNION ALL SELECT `ADB_Model_14`.`KEY` AS `KEY`, `ADB_Model_14`.`Estimator` AS `Estimator`, `ADB_Model_14`.`Weight` AS `Weight`, `ADB_Model_14`.`est_index` AS `est_index` 
FROM `ADB_Model_14` UNION ALL SELECT `ADB_Model_15`.`KEY` AS `KEY`, `ADB_Model_15`.`Estimator` AS `Estimator`, `ADB_Model_15`.`Weight` AS `Weight`, `ADB_Model_15`.`est_index` AS `est_index` 
FROM `ADB_Model_15`) AS `ensemble_score_union`), 
`Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.`est_index` AS `est_index`, `CW`.`cum_weight` AS `cum_weight` 
FROM (SELECT `u1`.`KEY` AS `KEY`, `u1`.`Estimator` AS `Estimator`, `u1`.`Weight` AS `Weight`, `u1`.`est_index` AS `est_index`, sum(`u2`.`Weight`) AS `cum_weight` 
FROM `WE` AS `u1`, `WE` AS `u2` 
WHERE `u1`.`Estimator` >= `u2`.`Estimator` AND `u1`.`KEY` = `u2`.`KEY` GROUP BY `u1`.`KEY`, `u1`.`est_index`, `u1`.`Estimator`, `u1`.`Weight`) AS `CW`)
 SELECT `Quantiles`.`KEY`, `Quantiles`.`Quantile` 
FROM (SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.`cum_weight` >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`) AS `Quantiles`

-- Code For temporary table tmp_20180516113513_codegen_qzcc2b_quantiles part 2. Populate

SELECT * FROM `tmp_20180516113513_codegen_qzcc2b_quantiles`

-- Model deployment code

SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM `tmp_20180516113513_codegen_qzcc2b_quantiles` AS `Quantiles`