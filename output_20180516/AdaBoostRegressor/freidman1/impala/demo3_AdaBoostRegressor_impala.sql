-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : freidman1
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516120544_codegen_k3s8l1_quantiles part 1. Create 


CREATE TABLE tmp_20180516120544_codegen_k3s8l1_quantiles (
	`KEY` BIGINT, 
	`Quantile` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516120544_codegen_k3s8l1_quantiles part 2. Populate

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.28362607955932617) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.6014193892478943) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.3159424662590027) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.6361697912216187) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.8160629272460938) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.02199404314160347) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.09068352729082108) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 7.108390979047101 AS `E` UNION ALL SELECT 4 AS nid, 10.330887125839682 AS `E` UNION ALL SELECT 6 AS nid, 12.484302041779221 AS `E` UNION ALL SELECT 7 AS nid, 16.867007546276703 AS `E` UNION ALL SELECT 10 AS nid, 9.958336196414976 AS `E` UNION ALL SELECT 11 AS nid, 16.155086265138074 AS `E` UNION ALL SELECT 13 AS nid, 16.714568981882323 AS `E` UNION ALL SELECT 14 AS nid, 21.530772731913935 AS `E`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`E` AS `E` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`ADB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`E` AS `Estimator`, 0.05715582572854952 AS `Weight`, 0 AS est_index 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.5565721392631531) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.6678532958030701) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.14032050967216492) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.917350709438324) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.7423961162567139) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.11840790510177612) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.8043949604034424) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 6.680372815192879 AS `E` UNION ALL SELECT 4 AS nid, 13.03309136966267 AS `E` UNION ALL SELECT 6 AS nid, 16.137564712882295 AS `E` UNION ALL SELECT 7 AS nid, 23.693970395239386 AS `E` UNION ALL SELECT 10 AS nid, 22.107190514382584 AS `E` UNION ALL SELECT 11 AS nid, 17.253474800388226 AS `E` UNION ALL SELECT 13 AS nid, 24.121309045735764 AS `E` UNION ALL SELECT 14 AS nid, 18.900387696177468 AS `E`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`E` AS `E` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`ADB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`E` AS `Estimator`, 0.06562315618507639 AS `Weight`, 1 AS est_index 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.37473800778388977) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.8330837488174438) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.2539539933204651) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.7046108245849609) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.3769059479236603) THEN CASE WHEN (`ADS`.`Feature_6` <= 0.6300066709518433) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.7423961162567139) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 6.390535756426625 AS `E` UNION ALL SELECT 4 AS nid, 11.762807430332275 AS `E` UNION ALL SELECT 6 AS nid, 16.62135112393742 AS `E` UNION ALL SELECT 7 AS nid, 23.693970395239383 AS `E` UNION ALL SELECT 10 AS nid, 13.283041611951388 AS `E` UNION ALL SELECT 11 AS nid, 18.705200260853758 AS `E` UNION ALL SELECT 13 AS nid, 18.520728123777474 AS `E` UNION ALL SELECT 14 AS nid, 22.083801758207265 AS `E`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`E` AS `E` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`ADB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`E` AS `Estimator`, 0.06854306587503002 AS `Weight`, 2 AS est_index 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5503556728363037) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.5689454674720764) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.594910204410553) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.8305523991584778) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.3013801872730255) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.5949296355247498) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.2519054412841797) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 8.136348380598148 AS `E` UNION ALL SELECT 4 AS nid, 15.858066789184889 AS `E` UNION ALL SELECT 6 AS nid, 14.397970646627817 AS `E` UNION ALL SELECT 7 AS nid, 18.970449127439544 AS `E` UNION ALL SELECT 10 AS nid, 14.302644720397842 AS `E` UNION ALL SELECT 11 AS nid, 11.868082094679432 AS `E` UNION ALL SELECT 13 AS nid, 13.455276821939162 AS `E` UNION ALL SELECT 14 AS nid, 20.67940396773559 AS `E`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`E` AS `E` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`ADB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`E` AS `Estimator`, 0.06524321351774265 AS `Weight`, 3 AS est_index 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` <= 0.3290536403656006) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.5448670983314514) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.29816341400146484) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.6487524509429932) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.9586272239685059) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.94085693359375) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.4932700991630554) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 7.164708422831759 AS `E` UNION ALL SELECT 4 AS nid, 10.131789617052231 AS `E` UNION ALL SELECT 6 AS nid, 13.911320667815804 AS `E` UNION ALL SELECT 7 AS nid, 18.377623053610236 AS `E` UNION ALL SELECT 10 AS nid, 17.591009984785604 AS `E` UNION ALL SELECT 11 AS nid, 24.891578342407303 AS `E` UNION ALL SELECT 13 AS nid, 9.735041217996262 AS `E` UNION ALL SELECT 14 AS nid, 12.760129264370008 AS `E`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`E` AS `E` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`ADB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`E` AS `Estimator`, 0.06306913804804194 AS `Weight`, 4 AS est_index 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5503556728363037) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.5981732606887817) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.5689454674720764) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.8164874315261841) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.31821876764297485) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.7176836729049683) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.3464691936969757) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 8.338897071859385 AS `E` UNION ALL SELECT 4 AS nid, 12.585661309165012 AS `E` UNION ALL SELECT 6 AS nid, 16.866642141163844 AS `E` UNION ALL SELECT 7 AS nid, 20.014322406211242 AS `E` UNION ALL SELECT 10 AS nid, 16.54478677328689 AS `E` UNION ALL SELECT 11 AS nid, 11.278641750854856 AS `E` UNION ALL SELECT 13 AS nid, 15.993851491279953 AS `E` UNION ALL SELECT 14 AS nid, 22.826162334588 AS `E`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`E` AS `E` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`ADB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`E` AS `Estimator`, 0.05711379613162026 AS `Weight`, 5 AS est_index 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.4815148115158081) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.27202123403549194) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.4512072205543518) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.47553902864456177) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.26388341188430786) THEN CASE WHEN (`ADS`.`Feature_9` <= 0.057656459510326385) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.34639084339141846) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 12.595464262752419 AS `E` UNION ALL SELECT 4 AS nid, 17.42633590328741 AS `E` UNION ALL SELECT 6 AS nid, 13.342747497232347 AS `E` UNION ALL SELECT 7 AS nid, 8.599400184796023 AS `E` UNION ALL SELECT 10 AS nid, 15.308483991007721 AS `E` UNION ALL SELECT 11 AS nid, 11.860016705250542 AS `E` UNION ALL SELECT 13 AS nid, 16.443728602186205 AS `E` UNION ALL SELECT 14 AS nid, 19.882622968509114 AS `E`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`E` AS `E` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`ADB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`E` AS `Estimator`, 0.06722659304860933 AS `Weight`, 6 AS est_index 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.4960795044898987) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.46174609661102295) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.22620628774166107) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.5199342966079712) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.2513766288757324) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.2797352969646454) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.7838062047958374) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 10.94895415393129 AS `E` UNION ALL SELECT 4 AS nid, 7.260669944487352 AS `E` UNION ALL SELECT 6 AS nid, 18.695635887820288 AS `E` UNION ALL SELECT 7 AS nid, 13.985256317059017 AS `E` UNION ALL SELECT 10 AS nid, 9.549583624035378 AS `E` UNION ALL SELECT 11 AS nid, 11.471182882103852 AS `E` UNION ALL SELECT 13 AS nid, 18.56162832703596 AS `E` UNION ALL SELECT 14 AS nid, 21.540404060617437 AS `E`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`E` AS `E` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`ADB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`E` AS `Estimator`, 0.06218707824898912 AS `Weight`, 7 AS est_index 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.5981732606887817) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.19583378732204437) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.23939915001392365) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.7709543704986572) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.23805725574493408) THEN CASE WHEN (`ADS`.`Feature_8` <= 0.5753074288368225) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.516158938407898) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 10.052439937241036 AS `E` UNION ALL SELECT 4 AS nid, 6.449781817277611 AS `E` UNION ALL SELECT 6 AS nid, 12.485240268478293 AS `E` UNION ALL SELECT 7 AS nid, 19.808409991600072 AS `E` UNION ALL SELECT 10 AS nid, 14.536245187358322 AS `E` UNION ALL SELECT 11 AS nid, 12.423411759463056 AS `E` UNION ALL SELECT 13 AS nid, 17.78981671222573 AS `E` UNION ALL SELECT 14 AS nid, 21.498446695430406 AS `E`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`E` AS `E` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`ADB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`E` AS `Estimator`, 0.05376152027601856 AS `Weight`, 8 AS est_index 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.5099254250526428) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.27458563446998596) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.5246673822402954) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.22951826453208923) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.31821876764297485) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.7010948061943054) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.08278460800647736) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 11.90948021138629 AS `E` UNION ALL SELECT 4 AS nid, 17.231922397914737 AS `E` UNION ALL SELECT 6 AS nid, 6.990506673547558 AS `E` UNION ALL SELECT 7 AS nid, 10.95573020235244 AS `E` UNION ALL SELECT 10 AS nid, 17.41278188627197 AS `E` UNION ALL SELECT 11 AS nid, 11.766125447580091 AS `E` UNION ALL SELECT 13 AS nid, 15.189044377231586 AS `E` UNION ALL SELECT 14 AS nid, 22.86966194942791 AS `E`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`E` AS `E` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`ADB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`E` AS `Estimator`, 0.059051226129531266 AS `Weight`, 9 AS est_index 
FROM `DT_Output_9`), 
`DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_4` <= 0.7056353688240051) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.37473800778388977) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.24764415621757507) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.39444440603256226) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.7234399914741516) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.7185869812965393) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_8` <= 0.8085499405860901) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 6.7384031095263905 AS `E` UNION ALL SELECT 4 AS nid, 11.752927183529824 AS `E` UNION ALL SELECT 6 AS nid, 10.763360117743344 AS `E` UNION ALL SELECT 7 AS nid, 18.074528428073364 AS `E` UNION ALL SELECT 10 AS nid, 17.078177502322482 AS `E` UNION ALL SELECT 11 AS nid, 23.693970395239383 AS `E` UNION ALL SELECT 13 AS nid, 20.134116626100056 AS `E` UNION ALL SELECT 14 AS nid, 23.18131440832091 AS `E`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`E` AS `E` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`ADB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`E` AS `Estimator`, 0.08820185865364961 AS `Weight`, 10 AS est_index 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.7541447877883911) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.4244970679283142) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.40951651334762573) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.31855589151382446) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.7046108245849609) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.2518146336078644) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.9195832014083862) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 7.8366307170001175 AS `E` UNION ALL SELECT 4 AS nid, 12.882177460158417 AS `E` UNION ALL SELECT 6 AS nid, 12.810220702138997 AS `E` UNION ALL SELECT 7 AS nid, 18.954608923364916 AS `E` UNION ALL SELECT 10 AS nid, 23.06101058117155 AS `E` UNION ALL SELECT 11 AS nid, 18.037378593929937 AS `E` UNION ALL SELECT 13 AS nid, 23.23168268252753 AS `E` UNION ALL SELECT 14 AS nid, 25.15083662496389 AS `E`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`E` AS `E` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`ADB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`E` AS `Estimator`, 0.07418226802212737 AS `Weight`, 11 AS est_index 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.6323357820510864) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.2929445505142212) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.5925323963165283) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.17888179421424866) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= 0.29455873370170593) THEN CASE WHEN (`ADS`.`Feature_7` <= 0.25732529163360596) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_1` <= 0.8677014112472534) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 6.392901461382325 AS `E` UNION ALL SELECT 4 AS nid, 9.549583624035378 AS `E` UNION ALL SELECT 6 AS nid, 11.079712881100889 AS `E` UNION ALL SELECT 7 AS nid, 16.694311753230085 AS `E` UNION ALL SELECT 10 AS nid, 12.423411759463056 AS `E` UNION ALL SELECT 11 AS nid, 16.9994398670528 AS `E` UNION ALL SELECT 13 AS nid, 24.01582078608117 AS `E` UNION ALL SELECT 14 AS nid, 18.306954978921546 AS `E`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`E` AS `E` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`ADB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`E` AS `Estimator`, 0.045152645391912744 AS `Weight`, 12 AS est_index 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.4512072205543518) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.42580723762512207) THEN CASE WHEN (`ADS`.`Feature_4` <= 0.2844715118408203) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.8902387619018555) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.4881957471370697) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.09389085322618484) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.3688608705997467) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 6.357795525185893 AS `E` UNION ALL SELECT 4 AS nid, 10.038408168333754 AS `E` UNION ALL SELECT 6 AS nid, 16.404095381550448 AS `E` UNION ALL SELECT 7 AS nid, 11.12897125170135 AS `E` UNION ALL SELECT 10 AS nid, 10.181631174833692 AS `E` UNION ALL SELECT 11 AS nid, 16.995769642220143 AS `E` UNION ALL SELECT 13 AS nid, 19.613868253758056 AS `E` UNION ALL SELECT 14 AS nid, 23.250448269296612 AS `E`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`E` AS `E` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`ADB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`E` AS `Estimator`, 0.053325961677074776 AS `Weight`, 13 AS est_index 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_3` <= 0.12761953473091125) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.8992074728012085) THEN CASE WHEN (`ADS`.`Feature_5` <= 0.23939915001392365) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.7772546410560608) THEN CASE WHEN (`ADS`.`Feature_1` <= 0.22298091650009155) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.3076259195804596) THEN 11 ELSE 12 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 9.933415417524246 AS `E` UNION ALL SELECT 4 AS nid, 7.064840674234973 AS `E` UNION ALL SELECT 5 AS nid, 17.89244707919063 AS `E` UNION ALL SELECT 8 AS nid, 9.60822446553016 AS `E` UNION ALL SELECT 9 AS nid, 16.4174377999376 AS `E` UNION ALL SELECT 11 AS nid, 15.422782995512641 AS `E` UNION ALL SELECT 12 AS nid, 22.159414410239958 AS `E`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`E` AS `E` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`ADB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`E` AS `Estimator`, 0.05296075963522889 AS `Weight`, 14 AS est_index 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_1` <= 0.6323357820510864) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.28466007113456726) THEN CASE WHEN (`ADS`.`Feature_3` <= 0.7666172981262207) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.8589968681335449) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.7538962364196777) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.25316235423088074) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.267169326543808) THEN 13 ELSE 14 END END END AS node_id_2 
FROM freidman1 AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`E` AS DOUBLE) AS `E` 
FROM (SELECT 3 AS nid, 16.128071583870984 AS `E` UNION ALL SELECT 4 AS nid, 22.088070107878004 AS `E` UNION ALL SELECT 6 AS nid, 10.055721967905004 AS `E` UNION ALL SELECT 7 AS nid, 21.021444371224298 AS `E` UNION ALL SELECT 10 AS nid, 12.951620116436871 AS `E` UNION ALL SELECT 11 AS nid, 18.78950979027687 AS `E` UNION ALL SELECT 13 AS nid, 19.303788312018888 AS `E` UNION ALL SELECT 14 AS nid, 24.739343229309082 AS `E`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`E` AS `E` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`ADB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`E` AS `Estimator`, 0.06720189343079747 AS `Weight`, 15 AS est_index 
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
 INSERT INTO tmp_20180516120544_codegen_k3s8l1_quantiles (`KEY`, `Quantile`) SELECT `Quantiles`.`KEY`, `Quantiles`.`Quantile` 
FROM (SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.cum_weight >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`) AS `Quantiles`

-- Model deployment code

SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM tmp_20180516120544_codegen_k3s8l1_quantiles AS `Quantiles`