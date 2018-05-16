-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : XGBRegressor
-- Dataset : diabetes
-- Database : impala


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516115627_codegen_mda22v_xgb_b0 part 1. Create 


CREATE TABLE tmp_20180516115627_codegen_mda22v_xgb_b0 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516115627_codegen_mda22v_xgb_b0 part 2. Populate

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 0.0007076415931805968) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_6` < 0.021027816459536552) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.047145746648311615) THEN CASE WHEN (`ADS`.`Feature_2` < -0.021834230050444603) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS nid, 15.776923179626465 AS `Estimator` UNION ALL SELECT 6 AS nid, 24.05500030517578 AS `Estimator` UNION ALL SELECT 7 AS nid, 10.930405616760254 AS `Estimator` UNION ALL SELECT 8 AS nid, 8.347762107849121 AS `Estimator` UNION ALL SELECT 9 AS nid, 13.62121295928955 AS `Estimator` UNION ALL SELECT 10 AS nid, 18.598438262939453 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.nid AS nid, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.nid), 
`XGB_Model_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_6` < 0.021027816459536552) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.06870198249816895) THEN CASE WHEN (`ADS`.`Feature_3` < 0.037365272641181946) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS nid, 14.003450393676758 AS `Estimator` UNION ALL SELECT 6 AS nid, 23.286762237548828 AS `Estimator` UNION ALL SELECT 7 AS nid, 9.415186882019043 AS `Estimator` UNION ALL SELECT 8 AS nid, 7.198849678039551 AS `Estimator` UNION ALL SELECT 9 AS nid, 14.533350944519043 AS `Estimator` UNION ALL SELECT 10 AS nid, 19.064584732055664 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.nid AS nid, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.nid), 
`XGB_Model_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 0.0007076415931805968) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_8` < -0.04327875375747681) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_9` < -0.019717179238796234) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.05576823651790619) THEN CASE WHEN (`ADS`.`Feature_2` < -0.021834230050444603) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS nid, 20.29665184020996 AS `Estimator` UNION ALL SELECT 7 AS nid, 6.414662837982178 AS `Estimator` UNION ALL SELECT 8 AS nid, 8.630793571472168 AS `Estimator` UNION ALL SELECT 9 AS nid, 9.850298881530762 AS `Estimator` UNION ALL SELECT 10 AS nid, 14.109347343444824 AS `Estimator` UNION ALL SELECT 11 AS nid, 10.822417259216309 AS `Estimator` UNION ALL SELECT 12 AS nid, 15.3329439163208 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.nid AS nid, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.nid), 
`XGB_Model_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.00016888421669136733) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_6` < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_9` < -0.019717179238796234) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.047145746648311615) THEN CASE WHEN (`ADS`.`Feature_0` < -0.012779632583260536) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_4` < 0.038333673030138016) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 8.028899192810059 AS `Estimator` UNION ALL SELECT 8 AS nid, 5.990607738494873 AS `Estimator` UNION ALL SELECT 9 AS nid, 8.930937767028809 AS `Estimator` UNION ALL SELECT 10 AS nid, 12.754850387573242 AS `Estimator` UNION ALL SELECT 11 AS nid, 9.25925064086914 AS `Estimator` UNION ALL SELECT 12 AS nid, 13.668062210083008 AS `Estimator` UNION ALL SELECT 13 AS nid, 19.54034996032715 AS `Estimator` UNION ALL SELECT 14 AS nid, 13.672558784484863 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.nid AS nid, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.nid), 
`XGB_Model_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_6` < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_0` < 0.02536202222108841) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.03679146245121956) THEN CASE WHEN (`ADS`.`Feature_9` < 0.029988106340169907) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.01319466345012188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 6.921077728271484 AS `Estimator` UNION ALL SELECT 8 AS nid, 5.144952297210693 AS `Estimator` UNION ALL SELECT 9 AS nid, 11.345939636230469 AS `Estimator` UNION ALL SELECT 10 AS nid, 7.35351037979126 AS `Estimator` UNION ALL SELECT 11 AS nid, 9.932232856750488 AS `Estimator` UNION ALL SELECT 12 AS nid, 13.648144721984863 AS `Estimator` UNION ALL SELECT 13 AS nid, 11.720587730407715 AS `Estimator` UNION ALL SELECT 14 AS nid, 16.95893669128418 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.nid AS nid, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.nid), 
`XGB_Model_4` AS 
(SELECT `DT_Output_4`.`KEY` AS `KEY`, `DT_Output_4`.`Estimator` AS `Estimator` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_2` < -0.011595014482736588) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_6` < 0.01182372123003006) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.06870198249816895) THEN CASE WHEN (`ADS`.`Feature_3` < -0.04813268035650253) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS nid, 15.905003547668457 AS `Estimator` UNION ALL SELECT 7 AS nid, 5.828351974487305 AS `Estimator` UNION ALL SELECT 8 AS nid, 3.6082522869110107 AS `Estimator` UNION ALL SELECT 9 AS nid, 10.483193397521973 AS `Estimator` UNION ALL SELECT 10 AS nid, 6.575033664703369 AS `Estimator` UNION ALL SELECT 11 AS nid, 5.92445707321167 AS `Estimator` UNION ALL SELECT 12 AS nid, 11.060623168945312 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.nid AS nid, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.nid), 
`XGB_Model_5` AS 
(SELECT `DT_Output_5`.`KEY` AS `KEY`, `DT_Output_5`.`Estimator` AS `Estimator` 
FROM `DT_Output_5`), 
`DT_node_lookup_6` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 0.021657448261976242) THEN CASE WHEN (`ADS`.`Feature_2` < 0.005111072678118944) THEN CASE WHEN (`ADS`.`Feature_7` < 0.03135676681995392) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.016708049923181534) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.06089155748486519) THEN CASE WHEN (`ADS`.`Feature_6` < -0.045241665095090866) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_6` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS nid, 14.899293899536133 AS `Estimator` UNION ALL SELECT 7 AS nid, 5.037124156951904 AS `Estimator` UNION ALL SELECT 8 AS nid, 8.110381126403809 AS `Estimator` UNION ALL SELECT 9 AS nid, 7.3873162269592285 AS `Estimator` UNION ALL SELECT 10 AS nid, 11.648924827575684 AS `Estimator` UNION ALL SELECT 11 AS nid, 13.217264175415039 AS `Estimator` UNION ALL SELECT 12 AS nid, 8.917932510375977 AS `Estimator`) AS `Values`), 
`DT_Output_6` AS 
(SELECT `DT_node_lookup_6`.`KEY` AS `KEY`, `DT_node_lookup_6`.node_id_2 AS node_id_2, `DT_node_data_6`.nid AS nid, `DT_node_data_6`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_6` LEFT OUTER JOIN `DT_node_data_6` ON `DT_node_lookup_6`.node_id_2 = `DT_node_data_6`.nid), 
`XGB_Model_6` AS 
(SELECT `DT_Output_6`.`KEY` AS `KEY`, `DT_Output_6`.`Estimator` AS `Estimator` 
FROM `DT_Output_6`), 
`DT_node_lookup_7` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < 0.0061888848431408405) THEN CASE WHEN (`ADS`.`Feature_6` < 0.021027816459536552) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_0` < 0.014464406296610832) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.03851289674639702) THEN CASE WHEN (`ADS`.`Feature_2` < -0.023450948297977448) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.01319466345012188) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_7` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 5.168146133422852 AS `Estimator` UNION ALL SELECT 8 AS nid, 3.6053311824798584 AS `Estimator` UNION ALL SELECT 9 AS nid, 8.7820405960083 AS `Estimator` UNION ALL SELECT 10 AS nid, 5.390221118927002 AS `Estimator` UNION ALL SELECT 11 AS nid, 5.32416296005249 AS `Estimator` UNION ALL SELECT 12 AS nid, 8.763245582580566 AS `Estimator` UNION ALL SELECT 13 AS nid, 8.623435974121094 AS `Estimator` UNION ALL SELECT 14 AS nid, 12.895909309387207 AS `Estimator`) AS `Values`), 
`DT_Output_7` AS 
(SELECT `DT_node_lookup_7`.`KEY` AS `KEY`, `DT_node_lookup_7`.node_id_2 AS node_id_2, `DT_node_data_7`.nid AS nid, `DT_node_data_7`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_7` LEFT OUTER JOIN `DT_node_data_7` ON `DT_node_lookup_7`.node_id_2 = `DT_node_data_7`.nid), 
`XGB_Model_7` AS 
(SELECT `DT_Output_7`.`KEY` AS `KEY`, `DT_Output_7`.`Estimator` AS `Estimator` 
FROM `DT_Output_7`), 
`DT_node_lookup_8` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 0.021657448261976242) THEN CASE WHEN (`ADS`.`Feature_2` < 0.005111072678118944) THEN CASE WHEN (`ADS`.`Feature_7` < 0.03135676681995392) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.06261299550533295) THEN CASE WHEN (`ADS`.`Feature_6` < 0.032072730362415314) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_8` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 6 AS nid, 12.363444328308105 AS `Estimator` UNION ALL SELECT 7 AS nid, 4.04940938949585 AS `Estimator` UNION ALL SELECT 8 AS nid, 6.651192665100098 AS `Estimator` UNION ALL SELECT 9 AS nid, 6.120324611663818 AS `Estimator` UNION ALL SELECT 10 AS nid, 10.08482551574707 AS `Estimator` UNION ALL SELECT 11 AS nid, 8.969040870666504 AS `Estimator` UNION ALL SELECT 12 AS nid, 3.548654317855835 AS `Estimator`) AS `Values`), 
`DT_Output_8` AS 
(SELECT `DT_node_lookup_8`.`KEY` AS `KEY`, `DT_node_lookup_8`.node_id_2 AS node_id_2, `DT_node_data_8`.nid AS nid, `DT_node_data_8`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_8` LEFT OUTER JOIN `DT_node_data_8` ON `DT_node_lookup_8`.node_id_2 = `DT_node_data_8`.nid), 
`XGB_Model_8` AS 
(SELECT `DT_Output_8`.`KEY` AS `KEY`, `DT_Output_8`.`Estimator` AS `Estimator` 
FROM `DT_Output_8`), 
`DT_node_lookup_9` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < 0.044451214373111725) THEN CASE WHEN (`ADS`.`Feature_8` < -0.04327875375747681) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.06870198249816895) THEN CASE WHEN (`ADS`.`Feature_8` < 0.044254668056964874) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_9` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 4 AS nid, 7.961431980133057 AS `Estimator` UNION ALL SELECT 6 AS nid, 11.157633781433105 AS `Estimator` UNION ALL SELECT 7 AS nid, 2.6931638717651367 AS `Estimator` UNION ALL SELECT 8 AS nid, 4.346072673797607 AS `Estimator` UNION ALL SELECT 9 AS nid, 6.031167030334473 AS `Estimator` UNION ALL SELECT 10 AS nid, 8.75991439819336 AS `Estimator`) AS `Values`), 
`DT_Output_9` AS 
(SELECT `DT_node_lookup_9`.`KEY` AS `KEY`, `DT_node_lookup_9`.node_id_2 AS node_id_2, `DT_node_data_9`.nid AS nid, `DT_node_data_9`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_9` LEFT OUTER JOIN `DT_node_data_9` ON `DT_node_lookup_9`.node_id_2 = `DT_node_data_9`.nid), 
`XGB_Model_9` AS 
(SELECT `DT_Output_9`.`KEY` AS `KEY`, `DT_Output_9`.`Estimator` AS `Estimator` 
FROM `DT_Output_9`)
 INSERT INTO tmp_20180516115627_codegen_mda22v_xgb_b0 (`KEY`, `Estimator`) SELECT `XGB_B0`.`KEY`, `XGB_B0`.`Estimator` 
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

-- Code For temporary table tmp_20180516115627_codegen_hj6y63_xgb_b1 part 1. Create 


CREATE TABLE tmp_20180516115627_codegen_hj6y63_xgb_b1 (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516115627_codegen_hj6y63_xgb_b1 part 2. Populate

WITH `DT_node_lookup_10` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.009422320872545242) THEN CASE WHEN (`ADS`.`Feature_7` < 0.03061874583363533) THEN CASE WHEN (`ADS`.`Feature_5` < -0.047346703708171844) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_6` < -0.05260493978857994) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN CASE WHEN (`ADS`.`Feature_9` < 0.029988106340169907) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.04660683870315552) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_10` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 5.3822102546691895 AS `Estimator` UNION ALL SELECT 8 AS nid, 2.910175323486328 AS `Estimator` UNION ALL SELECT 9 AS nid, 4.021858215332031 AS `Estimator` UNION ALL SELECT 10 AS nid, 7.552056312561035 AS `Estimator` UNION ALL SELECT 11 AS nid, 4.675178050994873 AS `Estimator` UNION ALL SELECT 12 AS nid, 8.340153694152832 AS `Estimator` UNION ALL SELECT 13 AS nid, 7.252984523773193 AS `Estimator` UNION ALL SELECT 14 AS nid, 10.570660591125488 AS `Estimator`) AS `Values`), 
`DT_Output_10` AS 
(SELECT `DT_node_lookup_10`.`KEY` AS `KEY`, `DT_node_lookup_10`.node_id_2 AS node_id_2, `DT_node_data_10`.nid AS nid, `DT_node_data_10`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_10` LEFT OUTER JOIN `DT_node_data_10` ON `DT_node_lookup_10`.node_id_2 = `DT_node_data_10`.nid), 
`XGB_Model_10` AS 
(SELECT `DT_Output_10`.`KEY` AS `KEY`, `DT_Output_10`.`Estimator` AS `Estimator` 
FROM `DT_Output_10`), 
`DT_node_lookup_11` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN CASE WHEN (`ADS`.`Feature_0` < -0.036391131579875946) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_8` < -0.030139416456222534) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.07247433066368103) THEN CASE WHEN (`ADS`.`Feature_3` < 0.03851289674639702) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_5` < 0.01951049454510212) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_11` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 3.94830584526062 AS `Estimator` UNION ALL SELECT 8 AS nid, 2.2174837589263916 AS `Estimator` UNION ALL SELECT 9 AS nid, 2.6256496906280518 AS `Estimator` UNION ALL SELECT 10 AS nid, 7.762805938720703 AS `Estimator` UNION ALL SELECT 11 AS nid, 4.909304141998291 AS `Estimator` UNION ALL SELECT 12 AS nid, 7.3871750831604 AS `Estimator` UNION ALL SELECT 13 AS nid, 10.758736610412598 AS `Estimator` UNION ALL SELECT 14 AS nid, 6.986988067626953 AS `Estimator`) AS `Values`), 
`DT_Output_11` AS 
(SELECT `DT_node_lookup_11`.`KEY` AS `KEY`, `DT_node_lookup_11`.node_id_2 AS node_id_2, `DT_node_data_11`.nid AS nid, `DT_node_data_11`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_11` LEFT OUTER JOIN `DT_node_data_11` ON `DT_node_lookup_11`.node_id_2 = `DT_node_data_11`.nid), 
`XGB_Model_11` AS 
(SELECT `DT_Output_11`.`KEY` AS `KEY`, `DT_Output_11`.`Estimator` AS `Estimator` 
FROM `DT_Output_11`), 
`DT_node_lookup_12` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.009422320872545242) THEN CASE WHEN (`ADS`.`Feature_7` < 0.03061874583363533) THEN CASE WHEN (`ADS`.`Feature_8` < 0.027040982618927956) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_6` < -0.05260493978857994) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN CASE WHEN (`ADS`.`Feature_9` < 0.029988106340169907) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.04660683870315552) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_12` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 2.458796739578247 AS `Estimator` UNION ALL SELECT 8 AS nid, 5.796570777893066 AS `Estimator` UNION ALL SELECT 9 AS nid, 3.137352466583252 AS `Estimator` UNION ALL SELECT 10 AS nid, 6.299558639526367 AS `Estimator` UNION ALL SELECT 11 AS nid, 3.8004708290100098 AS `Estimator` UNION ALL SELECT 12 AS nid, 6.960630893707275 AS `Estimator` UNION ALL SELECT 13 AS nid, 5.935761451721191 AS `Estimator` UNION ALL SELECT 14 AS nid, 8.735002517700195 AS `Estimator`) AS `Values`), 
`DT_Output_12` AS 
(SELECT `DT_node_lookup_12`.`KEY` AS `KEY`, `DT_node_lookup_12`.node_id_2 AS node_id_2, `DT_node_data_12`.nid AS nid, `DT_node_data_12`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_12` LEFT OUTER JOIN `DT_node_data_12` ON `DT_node_lookup_12`.node_id_2 = `DT_node_data_12`.nid), 
`XGB_Model_12` AS 
(SELECT `DT_Output_12`.`KEY` AS `KEY`, `DT_Output_12`.`Estimator` AS `Estimator` 
FROM `DT_Output_12`), 
`DT_node_lookup_13` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.009422320872545242) THEN CASE WHEN (`ADS`.`Feature_7` < 0.03061874583363533) THEN CASE WHEN (`ADS`.`Feature_5` < -0.047346703708171844) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_6` < -0.06364984810352325) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN CASE WHEN (`ADS`.`Feature_2` < 0.029361844062805176) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_2` < 0.04660683870315552) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_13` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 4.188769817352295 AS `Estimator` UNION ALL SELECT 8 AS nid, 1.9906542301177979 AS `Estimator` UNION ALL SELECT 9 AS nid, 2.0451626777648926 AS `Estimator` UNION ALL SELECT 10 AS nid, 5.4328932762146 AS `Estimator` UNION ALL SELECT 11 AS nid, 6.339311122894287 AS `Estimator` UNION ALL SELECT 12 AS nid, 3.2873058319091797 AS `Estimator` UNION ALL SELECT 13 AS nid, 5.36133337020874 AS `Estimator` UNION ALL SELECT 14 AS nid, 7.887193202972412 AS `Estimator`) AS `Values`), 
`DT_Output_13` AS 
(SELECT `DT_node_lookup_13`.`KEY` AS `KEY`, `DT_node_lookup_13`.node_id_2 AS node_id_2, `DT_node_data_13`.nid AS nid, `DT_node_data_13`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_13` LEFT OUTER JOIN `DT_node_data_13` ON `DT_node_lookup_13`.node_id_2 = `DT_node_data_13`.nid), 
`XGB_Model_13` AS 
(SELECT `DT_Output_13`.`KEY` AS `KEY`, `DT_Output_13`.`Estimator` AS `Estimator` 
FROM `DT_Output_13`), 
`DT_node_lookup_14` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` < 0.026385173201560974) THEN CASE WHEN (`ADS`.`Feature_8` < -0.04327875375747681) THEN CASE WHEN (`ADS`.`Feature_0` < -0.03820740059018135) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_3` < 0.02359379082918167) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_5` < 0.0491030253469944) THEN CASE WHEN (`ADS`.`Feature_0` < -0.0036982859019190073) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_7` < 0.09999285638332367) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_14` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 2.65255069732666 AS `Estimator` UNION ALL SELECT 8 AS nid, 0.41457176208496094 AS `Estimator` UNION ALL SELECT 9 AS nid, 2.761002779006958 AS `Estimator` UNION ALL SELECT 10 AS nid, 4.807448863983154 AS `Estimator` UNION ALL SELECT 11 AS nid, 4.043216228485107 AS `Estimator` UNION ALL SELECT 12 AS nid, 6.891916751861572 AS `Estimator` UNION ALL SELECT 13 AS nid, 0.9939157366752625 AS `Estimator` UNION ALL SELECT 14 AS nid, 7.210835933685303 AS `Estimator`) AS `Values`), 
`DT_Output_14` AS 
(SELECT `DT_node_lookup_14`.`KEY` AS `KEY`, `DT_node_lookup_14`.node_id_2 AS node_id_2, `DT_node_data_14`.nid AS nid, `DT_node_data_14`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_14` LEFT OUTER JOIN `DT_node_data_14` ON `DT_node_lookup_14`.node_id_2 = `DT_node_data_14`.nid), 
`XGB_Model_14` AS 
(SELECT `DT_Output_14`.`KEY` AS `KEY`, `DT_Output_14`.`Estimator` AS `Estimator` 
FROM `DT_Output_14`), 
`DT_node_lookup_15` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_2` < 0.047145746648311615) THEN CASE WHEN (`ADS`.`Feature_8` < -0.009431487880647182) THEN CASE WHEN (`ADS`.`Feature_2` < -0.05901874601840973) THEN 7 ELSE 8 END ELSE CASE WHEN (`ADS`.`Feature_5` < 0.050825342535972595) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_5` < 0.022485405206680298) THEN CASE WHEN (`ADS`.`Feature_6` < -0.012106924317777157) THEN 11 ELSE 12 END ELSE CASE WHEN (`ADS`.`Feature_9` < 0.04448547959327698) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS `ADS`), 
`DT_node_data_15` AS 
(SELECT `Values`.nid AS nid, CAST(`Values`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT 7 AS nid, 0.42818233370780945 AS `Estimator` UNION ALL SELECT 8 AS nid, 2.249375343322754 AS `Estimator` UNION ALL SELECT 9 AS nid, 4.159715175628662 AS `Estimator` UNION ALL SELECT 10 AS nid, 1.6386209726333618 AS `Estimator` UNION ALL SELECT 11 AS nid, 7.7528204917907715 AS `Estimator` UNION ALL SELECT 12 AS nid, 3.6319217681884766 AS `Estimator` UNION ALL SELECT 13 AS nid, 1.6937063932418823 AS `Estimator` UNION ALL SELECT 14 AS nid, 5.325215816497803 AS `Estimator`) AS `Values`), 
`DT_Output_15` AS 
(SELECT `DT_node_lookup_15`.`KEY` AS `KEY`, `DT_node_lookup_15`.node_id_2 AS node_id_2, `DT_node_data_15`.nid AS nid, `DT_node_data_15`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_15` LEFT OUTER JOIN `DT_node_data_15` ON `DT_node_lookup_15`.node_id_2 = `DT_node_data_15`.nid), 
`XGB_Model_15` AS 
(SELECT `DT_Output_15`.`KEY` AS `KEY`, `DT_Output_15`.`Estimator` AS `Estimator` 
FROM `DT_Output_15`)
 INSERT INTO tmp_20180516115627_codegen_hj6y63_xgb_b1 (`KEY`, `Estimator`) SELECT `XGB_B1`.`KEY`, `XGB_B1`.`Estimator` 
FROM (SELECT `XGB_esu_1`.`KEY` AS `KEY`, `XGB_esu_1`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_Model_10`.`KEY` AS `KEY`, `XGB_Model_10`.`Estimator` AS `Estimator` 
FROM `XGB_Model_10` UNION ALL SELECT `XGB_Model_11`.`KEY` AS `KEY`, `XGB_Model_11`.`Estimator` AS `Estimator` 
FROM `XGB_Model_11` UNION ALL SELECT `XGB_Model_12`.`KEY` AS `KEY`, `XGB_Model_12`.`Estimator` AS `Estimator` 
FROM `XGB_Model_12` UNION ALL SELECT `XGB_Model_13`.`KEY` AS `KEY`, `XGB_Model_13`.`Estimator` AS `Estimator` 
FROM `XGB_Model_13` UNION ALL SELECT `XGB_Model_14`.`KEY` AS `KEY`, `XGB_Model_14`.`Estimator` AS `Estimator` 
FROM `XGB_Model_14` UNION ALL SELECT `XGB_Model_15`.`KEY` AS `KEY`, `XGB_Model_15`.`Estimator` AS `Estimator` 
FROM `XGB_Model_15`) AS `XGB_esu_1`) AS `XGB_B1`

-- Code For temporary table tmp_20180516115627_codegen_wn25ft_xgb_sum part 1. Create 


CREATE TABLE tmp_20180516115627_codegen_wn25ft_xgb_sum (
	`KEY` BIGINT, 
	`Estimator` DOUBLE
)

 CACHED IN 'one_gig_pool'

-- Code For temporary table tmp_20180516115627_codegen_wn25ft_xgb_sum part 2. Populate

WITH `XGB_Union` AS 
(SELECT `XGB_EnsembleUnion`.`KEY` AS `KEY`, `XGB_EnsembleUnion`.`Estimator` AS `Estimator` 
FROM (SELECT `XGB_B0`.`KEY` AS `KEY`, `XGB_B0`.`Estimator` AS `Estimator` 
FROM tmp_20180516115627_codegen_mda22v_xgb_b0 AS `XGB_B0` UNION ALL SELECT `XGB_B1`.`KEY` AS `KEY`, `XGB_B1`.`Estimator` AS `Estimator` 
FROM tmp_20180516115627_codegen_hj6y63_xgb_b1 AS `XGB_B1`) AS `XGB_EnsembleUnion`)
 INSERT INTO tmp_20180516115627_codegen_wn25ft_xgb_sum (`KEY`, `Estimator`) SELECT `XGB_sum`.`KEY`, `XGB_sum`.`Estimator` 
FROM (SELECT `T`.`KEY` AS `KEY`, CAST(`T`.`Estimator` AS DOUBLE) AS `Estimator` 
FROM (SELECT `XGB_Union`.`KEY` AS `KEY`, sum(`XGB_Union`.`Estimator`) AS `Estimator` 
FROM `XGB_Union` GROUP BY `XGB_Union`.`KEY`) AS `T`) AS `XGB_sum`

-- Model deployment code

SELECT `XGB_sum`.`KEY` AS `KEY`, `XGB_sum`.`Estimator` + 0.5 AS `Estimator` 
FROM tmp_20180516115627_codegen_wn25ft_xgb_sum AS `XGB_sum`