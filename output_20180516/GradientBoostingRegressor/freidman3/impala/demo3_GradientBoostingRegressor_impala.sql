-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : freidman3
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516121810_codegen_yr37w2_gb_b0 part 1. Create 


CREATE TABLE tmp_20180516121810_codegen_yr37w2_gb_b0 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516121810_codegen_yr37w2_gb_b0 part 2. Populate

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN CASE WHEN (`ADS`.`Feature_0` <= 28.497106552124023) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.025156566873192787) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.07712984085083008) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 61.53804397583008) THEN CASE WHEN (`ADS`.`Feature_1` <= 254.32003784179688) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 851.9430541992188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.7512173648954344 AS `E` UNION ALL SELECT 4 AS nid, -0.04397825777744524 AS `E` UNION ALL SELECT 6 AS nid, -0.9467477966127676 AS `E` UNION ALL SELECT 7 AS nid, -0.6047430077367832 AS `E` UNION ALL SELECT 10 AS nid, -0.045121720400358556 AS `E` UNION ALL SELECT 11 AS nid, 0.14262055593240103 AS `E` UNION ALL SELECT 13 AS nid, -0.19694188530234608 AS `E` UNION ALL SELECT 14 AS nid, 0.06444004718035715 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`GB_Model_0_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN CASE WHEN (`ADS`.`Feature_0` <= 28.497106552124023) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.025156566873192787) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 3.7317280769348145) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 46.87671661376953) THEN CASE WHEN (`ADS`.`Feature_3` <= 2.1877188682556152) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 736.03857421875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.6760956284058911 AS `E` UNION ALL SELECT 4 AS nid, -0.03958043199970063 AS `E` UNION ALL SELECT 6 AS nid, -0.5442687069631049 AS `E` UNION ALL SELECT 7 AS nid, -0.8520730169514907 AS `E` UNION ALL SELECT 10 AS nid, 0.04472921196963671 AS `E` UNION ALL SELECT 11 AS nid, 0.15500737102597714 AS `E` UNION ALL SELECT 13 AS nid, -0.16907931503946738 AS `E` UNION ALL SELECT 14 AS nid, 0.05696398804200197 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`GB_Model_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.1157732754945755) THEN CASE WHEN (`ADS`.`Feature_0` <= 28.497106552124023) THEN CASE WHEN (`ADS`.`Feature_1` <= 1685.821044921875) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.07712984085083008) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 90.57643127441406) THEN CASE WHEN (`ADS`.`Feature_1` <= 821.2744140625) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 93.90718078613281) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.035622388799730675 AS `E` UNION ALL SELECT 4 AS nid, -0.608486065565302 AS `E` UNION ALL SELECT 6 AS nid, -0.7668657152563417 AS `E` UNION ALL SELECT 7 AS nid, -0.48984183626679445 AS `E` UNION ALL SELECT 10 AS nid, -0.010844035822423577 AS `E` UNION ALL SELECT 11 AS nid, 0.11630419540480391 AS `E` UNION ALL SELECT 13 AS nid, -0.2480849985099589 AS `E` UNION ALL SELECT 14 AS nid, -0.29431516815941705 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`GB_Model_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.20348544418811798) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.041584230959415436) THEN CASE WHEN (`ADS`.`Feature_3` <= 5.679426193237305) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 527.4906005859375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_0` <= 36.62077331542969) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.3796338438987732) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.5837180438730809 AS `E` UNION ALL SELECT 4 AS nid, -0.7212408182879382 AS `E` UNION ALL SELECT 6 AS nid, -0.5370710964823415 AS `E` UNION ALL SELECT 7 AS nid, -0.08369919116678645 AS `E` UNION ALL SELECT 10 AS nid, 0.12099107127809502 AS `E` UNION ALL SELECT 11 AS nid, -0.12422849021054856 AS `E` UNION ALL SELECT 13 AS nid, 0.056308546735722116 AS `E` UNION ALL SELECT 14 AS nid, 0.12293341997528301 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`GB_Model_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.20348544418811798) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.041584230959415436) THEN CASE WHEN (`ADS`.`Feature_3` <= 5.679426193237305) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 527.4906005859375) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 65.67565155029297) THEN CASE WHEN (`ADS`.`Feature_1` <= 254.32003784179688) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 797.660888671875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.5253462394857729 AS `E` UNION ALL SELECT 4 AS nid, -0.6491167364591444 AS `E` UNION ALL SELECT 6 AS nid, -0.4833639868341073 AS `E` UNION ALL SELECT 7 AS nid, -0.07532927205010784 AS `E` UNION ALL SELECT 10 AS nid, -0.04400488980601075 AS `E` UNION ALL SELECT 11 AS nid, 0.1063273489523565 AS `E` UNION ALL SELECT 13 AS nid, -0.14466173228065554 AS `E` UNION ALL SELECT 14 AS nid, 0.061345238686680924 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`GB_Model_4_0` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.041584230959415436) THEN CASE WHEN (`ADS`.`Feature_3` <= 5.679426193237305) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 516.2426147460938) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 329.4079284667969) THEN CASE WHEN (`ADS`.`Feature_0` <= 29.003992080688477) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.3796338438987732) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.4728116155371956 AS `E` UNION ALL SELECT 4 AS nid, -0.5842050628132299 AS `E` UNION ALL SELECT 6 AS nid, -0.43502758815069664 AS `E` UNION ALL SELECT 7 AS nid, -0.07302121121319395 AS `E` UNION ALL SELECT 10 AS nid, 0.09907899735873943 AS `E` UNION ALL SELECT 11 AS nid, -0.16602827119606337 AS `E` UNION ALL SELECT 13 AS nid, 0.002774285449626185 AS `E` UNION ALL SELECT 14 AS nid, 0.09368452746287224 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`GB_Model_5_0` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.041584230959415436) THEN CASE WHEN (`ADS`.`Feature_0` <= 26.66070556640625) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 516.2426147460938) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 329.4079284667969) THEN CASE WHEN (`ADS`.`Feature_0` <= 29.003992080688477) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 42.91398620605469) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.389449869119167 AS `E` UNION ALL SELECT 4 AS nid, -0.493697797689846 AS `E` UNION ALL SELECT 6 AS nid, -0.391524829335627 AS `E` UNION ALL SELECT 7 AS nid, -0.06571909009187461 AS `E` UNION ALL SELECT 10 AS nid, 0.08917109762286551 AS `E` UNION ALL SELECT 11 AS nid, -0.149425444076457 AS `E` UNION ALL SELECT 13 AS nid, 0.10306011756717133 AS `E` UNION ALL SELECT 14 AS nid, 0.042023524471747474 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`GB_Model_6_0` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.2454954981803894) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.041584230959415436) THEN CASE WHEN (`ADS`.`Feature_3` <= 5.679426193237305) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 765.29931640625) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 90.57643127441406) THEN CASE WHEN (`ADS`.`Feature_0` <= 36.726707458496094) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 95.66354370117188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.3813730706430254 AS `E` UNION ALL SELECT 4 AS nid, -0.4764147767629223 AS `E` UNION ALL SELECT 6 AS nid, -0.2644457892441805 AS `E` UNION ALL SELECT 7 AS nid, -0.015132661956333698 AS `E` UNION ALL SELECT 10 AS nid, 0.09260739042076056 AS `E` UNION ALL SELECT 11 AS nid, 0.026092249245275007 AS `E` UNION ALL SELECT 13 AS nid, -0.16484210488259055 AS `E` UNION ALL SELECT 14 AS nid, -0.20928182047709054 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`GB_Model_7_0` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.20348544418811798) THEN CASE WHEN (`ADS`.`Feature_1` <= 574.9090576171875) THEN CASE WHEN (`ADS`.`Feature_3` <= 3.7317280769348145) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.029011880978941917) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_0` <= 36.62077331542969) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 20.670433044433594) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.22971432363541977 AS `E` UNION ALL SELECT 4 AS nid, -0.4462293035882985 AS `E` UNION ALL SELECT 6 AS nid, -0.37057043711478893 AS `E` UNION ALL SELECT 7 AS nid, -0.04929263442785878 AS `E` UNION ALL SELECT 10 AS nid, 0.07304227768453034 AS `E` UNION ALL SELECT 11 AS nid, -0.0890212497020312 AS `E` UNION ALL SELECT 13 AS nid, 0.10782022097044969 AS `E` UNION ALL SELECT 14 AS nid, 0.06193835917745575 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`GB_Model_8_0` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.20348544418811798) THEN CASE WHEN (`ADS`.`Feature_1` <= 574.9090576171875) THEN CASE WHEN (`ADS`.`Feature_0` <= 56.766082763671875) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.029011880978941917) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_0` <= 36.62077331542969) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 42.91398620605469) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.2476556013998079 AS `E` UNION ALL SELECT 4 AS nid, -0.4737317248032692 AS `E` UNION ALL SELECT 6 AS nid, -0.33351339340331004 AS `E` UNION ALL SELECT 7 AS nid, -0.04436337098507301 AS `E` UNION ALL SELECT 10 AS nid, 0.06573804991607737 AS `E` UNION ALL SELECT 11 AS nid, -0.08011912473182815 AS `E` UNION ALL SELECT 13 AS nid, 0.08211232013800537 AS `E` UNION ALL SELECT 14 AS nid, 0.04746812989966707 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`GB_Model_9_0` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator` 
FROM `DT_Output_9`)
 INSERT INTO tmp_20180516121810_codegen_yr37w2_gb_b0 (`KEY`, `Estimator`) SELECT `GB_B0`.`KEY`, `GB_B0`.`Estimator` 
FROM (SELECT `GB_esu_0`.`KEY` AS `KEY`, `GB_esu_0`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Model_0_0`.`KEY` AS `KEY`, `GB_Model_0_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_0_0` UNION ALL SELECT `GB_Model_1_0`.`KEY` AS `KEY`, `GB_Model_1_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_1_0` UNION ALL SELECT `GB_Model_2_0`.`KEY` AS `KEY`, `GB_Model_2_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_2_0` UNION ALL SELECT `GB_Model_3_0`.`KEY` AS `KEY`, `GB_Model_3_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_3_0` UNION ALL SELECT `GB_Model_4_0`.`KEY` AS `KEY`, `GB_Model_4_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_4_0` UNION ALL SELECT `GB_Model_5_0`.`KEY` AS `KEY`, `GB_Model_5_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_5_0` UNION ALL SELECT `GB_Model_6_0`.`KEY` AS `KEY`, `GB_Model_6_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_6_0` UNION ALL SELECT `GB_Model_7_0`.`KEY` AS `KEY`, `GB_Model_7_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_7_0` UNION ALL SELECT `GB_Model_8_0`.`KEY` AS `KEY`, `GB_Model_8_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_8_0` UNION ALL SELECT `GB_Model_9_0`.`KEY` AS `KEY`, `GB_Model_9_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_9_0`) AS `GB_esu_0`) AS `GB_B0`

-- Code For temporary table tmp_20180516121810_codegen_2xcbt1_gb_b1 part 1. Create 


CREATE TABLE tmp_20180516121810_codegen_2xcbt1_gb_b1 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516121810_codegen_2xcbt1_gb_b1 part 2. Populate

WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.25638625025749207) THEN CASE WHEN (`ADS`.`Feature_1` <= 1165.001953125) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.056316666305065155) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1685.821044921875) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 329.4079284667969) THEN CASE WHEN (`ADS`.`Feature_3` <= 7.732187747955322) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.3796338438987732) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.36314630995781655 AS `E` UNION ALL SELECT 4 AS nid, -0.1301241036586016 AS `E` UNION ALL SELECT 6 AS nid, 0.02319668110899324 AS `E` UNION ALL SELECT 7 AS nid, -0.24195919209113792 AS `E` UNION ALL SELECT 10 AS nid, -0.1016105919339825 AS `E` UNION ALL SELECT 11 AS nid, 0.08709910908565018 AS `E` UNION ALL SELECT 13 AS nid, -0.004988910498695732 AS `E` UNION ALL SELECT 14 AS nid, 0.06040244565224962 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`GB_Model_10_0` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.25638625025749207) THEN CASE WHEN (`ADS`.`Feature_1` <= 1165.001953125) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.056316666305065155) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.025156566873192787) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 245.38916015625) THEN CASE WHEN (`ADS`.`Feature_3` <= 8.161828994750977) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 80.80235290527344) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.3268316789620349 AS `E` UNION ALL SELECT 4 AS nid, -0.1171116932927414 AS `E` UNION ALL SELECT 6 AS nid, -0.21776327288202413 AS `E` UNION ALL SELECT 7 AS nid, 0.020877012998094007 AS `E` UNION ALL SELECT 10 AS nid, -0.13360467573881218 AS `E` UNION ALL SELECT 11 AS nid, 0.0644033404580161 AS `E` UNION ALL SELECT 13 AS nid, 0.0505661251084247 AS `E` UNION ALL SELECT 14 AS nid, -0.05348417636934455 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`GB_Model_11_0` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.25638625025749207) THEN CASE WHEN (`ADS`.`Feature_0` <= 28.497106552124023) THEN CASE WHEN (`ADS`.`Feature_1` <= 1685.821044921875) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.07712984085083008) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 72.4854736328125) THEN CASE WHEN (`ADS`.`Feature_1` <= 245.38916015625) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.8193143606185913) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 0.04195060097076144 AS `E` UNION ALL SELECT 4 AS nid, -0.19598694559382168 AS `E` UNION ALL SELECT 6 AS nid, -0.29414851106583145 AS `E` UNION ALL SELECT 7 AS nid, -0.10446903626353755 AS `E` UNION ALL SELECT 10 AS nid, -0.033475558546046835 AS `E` UNION ALL SELECT 11 AS nid, 0.049586228286156414 AS `E` UNION ALL SELECT 13 AS nid, -0.08524648075331427 AS `E` UNION ALL SELECT 14 AS nid, 0.052243917579344434 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`GB_Model_12_0` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.25638625025749207) THEN CASE WHEN (`ADS`.`Feature_1` <= 1165.001953125) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.056316666305065155) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 1685.821044921875) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 90.57643127441406) THEN CASE WHEN (`ADS`.`Feature_0` <= 12.58546257019043) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 2.7337615489959717) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.26473365995924825 AS `E` UNION ALL SELECT 4 AS nid, -0.09861411126797096 AS `E` UNION ALL SELECT 6 AS nid, 0.021915233462923272 AS `E` UNION ALL SELECT 7 AS nid, -0.17638825103443956 AS `E` UNION ALL SELECT 10 AS nid, 0.08103313914749644 AS `E` UNION ALL SELECT 11 AS nid, 0.02128964973984225 AS `E` UNION ALL SELECT 13 AS nid, -0.1393934261433849 AS `E` UNION ALL SELECT 14 AS nid, -0.10740973204528159 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`GB_Model_13_0` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.25638625025749207) THEN CASE WHEN (`ADS`.`Feature_0` <= 13.137228965759277) THEN CASE WHEN (`ADS`.`Feature_3` <= 6.251045227050781) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 10.075586318969727) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 245.38916015625) THEN CASE WHEN (`ADS`.`Feature_3` <= 8.161828994750977) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 72.4854736328125) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 0.08984553851889143 AS `E` UNION ALL SELECT 4 AS nid, 0.10342031503534321 AS `E` UNION ALL SELECT 6 AS nid, -0.09046686436509042 AS `E` UNION ALL SELECT 7 AS nid, -0.30147253632844906 AS `E` UNION ALL SELECT 10 AS nid, -0.11241999427686644 AS `E` UNION ALL SELECT 11 AS nid, 0.05619442282245224 AS `E` UNION ALL SELECT 13 AS nid, 0.04135461621830367 AS `E` UNION ALL SELECT 14 AS nid, -0.015685131394126736 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`GB_Model_14_0` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` <= 0.20348544418811798) THEN CASE WHEN (`ADS`.`Feature_0` <= 28.497106552124023) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.025156566873192787) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` <= 0.07712984085083008) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 784.8369140625) THEN CASE WHEN (`ADS`.`Feature_0` <= 36.62077331542969) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 12.852156639099121) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman3 AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, -0.14970273949448654 AS `E` UNION ALL SELECT 4 AS nid, 0.029165286751359654 AS `E` UNION ALL SELECT 6 AS nid, -0.2221800851280357 AS `E` UNION ALL SELECT 7 AS nid, -0.08343015016861066 AS `E` UNION ALL SELECT 10 AS nid, 0.03630787863966464 AS `E` UNION ALL SELECT 11 AS nid, -0.05308837224951895 AS `E` UNION ALL SELECT 13 AS nid, 0.067833638470957 AS `E` UNION ALL SELECT 14 AS nid, 0.031716488425677966 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`GB_Model_15_0` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator` 
FROM `DT_Output_15`)
 INSERT INTO tmp_20180516121810_codegen_2xcbt1_gb_b1 (`KEY`, `Estimator`) SELECT `GB_B1`.`KEY`, `GB_B1`.`Estimator` 
FROM (SELECT `GB_esu_1`.`KEY` AS `KEY`, `GB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_Model_10_0`.`KEY` AS `KEY`, `GB_Model_10_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_10_0` UNION ALL SELECT `GB_Model_11_0`.`KEY` AS `KEY`, `GB_Model_11_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_11_0` UNION ALL SELECT `GB_Model_12_0`.`KEY` AS `KEY`, `GB_Model_12_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_12_0` UNION ALL SELECT `GB_Model_13_0`.`KEY` AS `KEY`, `GB_Model_13_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_13_0` UNION ALL SELECT `GB_Model_14_0`.`KEY` AS `KEY`, `GB_Model_14_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_14_0` UNION ALL SELECT `GB_Model_15_0`.`KEY` AS `KEY`, `GB_Model_15_0`.`Estimator` AS `Estimator` 
FROM `GB_Model_15_0`) AS `GB_esu_1`) AS `GB_B1`

-- Code For temporary table tmp_20180516121810_codegen_4ghcjm_gb_sum part 1. Create 


CREATE TABLE tmp_20180516121810_codegen_4ghcjm_gb_sum (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516121810_codegen_4ghcjm_gb_sum part 2. Populate

WITH `GB_Union` AS 
(SELECT `GB_EnsembleUnion`.`KEY` AS `KEY`, `GB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `GB_B0`.`KEY` AS `KEY`, `GB_B0`.`Estimator` AS `Estimator` 
FROM tmp_20180516121810_codegen_yr37w2_gb_b0 AS `GB_B0` UNION ALL SELECT `GB_B1`.`KEY` AS `KEY`, `GB_B1`.`Estimator` AS `Estimator` 
FROM tmp_20180516121810_codegen_2xcbt1_gb_b1 AS `GB_B1`) AS `GB_EnsembleUnion`)
 INSERT INTO tmp_20180516121810_codegen_4ghcjm_gb_sum (`KEY`, `Estimator`) SELECT `GB_sum`.`KEY`, `GB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `GB_Union`.`KEY` AS `KEY`, sum(`GB_Union`.`Estimator`) AS `Estimator` 
FROM `GB_Union` GROUP BY `GB_Union`.`KEY`) AS `T`) AS `GB_sum`

-- Model deployment code

SELECT `GB_sum`.`KEY` AS `KEY`, 1.3612342030259192 + 0.1 * `GB_sum`.`Estimator` AS `Estimator` 
FROM tmp_20180516121810_codegen_4ghcjm_gb_sum AS `GB_sum`