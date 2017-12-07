-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_5` <= 0.31690624356269836) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.9420807361602783) THEN CASE WHEN (`ADS`.`Feature_2` <= -1.1025904417037964) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -1.844684362411499) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= -0.14866304397583008) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.27879077196121216) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_0` <= 0.3337593078613281) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.`node_id` AS `node_id`, `Values`.`feature` AS `feature`, `Values`.`threshold` AS `threshold`, `Values`.`count` AS `count`, `Values`.`depth` AS `depth`, `Values`.`parent_id` AS `parent_id`, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS `node_id`, 'Feature_5' AS `feature`, 0.31690624356269836 AS `threshold`, 25 AS `count`, 0 AS `depth`, CAST(NULL AS INT) AS `parent_id`, 0.08660148320018152 AS `Estimator` UNION ALL SELECT 1 AS `node_id`, 'Feature_2' AS `feature`, -0.9420807361602783 AS `threshold`, 14 AS `count`, 1 AS `depth`, 0 AS `parent_id`, -162.0228058124299 AS `Estimator` UNION ALL SELECT 2 AS `node_id`, 'Feature_2' AS `feature`, -1.1025904417037964 AS `threshold`, 4 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -260.898175478401 AS `Estimator` UNION ALL SELECT 3 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -230.73613627532504 AS `Estimator` UNION ALL SELECT 4 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -351.3842930876292 AS `Estimator` UNION ALL SELECT 5 AS `node_id`, 'Feature_8' AS `feature`, -1.844684362411499 AS `threshold`, 10 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -122.47265794604148 AS `Estimator` UNION ALL SELECT 6 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 5 AS `parent_id`, -210.40463066967106 AS `Estimator` UNION ALL SELECT 7 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 7 AS `count`, 3 AS `depth`, 5 AS `parent_id`, -84.78752677877165 AS `Estimator` UNION ALL SELECT 8 AS `node_id`, 'Feature_1' AS `feature`, -0.14866304397583008 AS `threshold`, 11 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 206.40766531400214 AS `Estimator` UNION ALL SELECT 9 AS `node_id`, 'Feature_0' AS `feature`, -0.27879077196121216 AS `threshold`, 4 AS `count`, 2 AS `depth`, 8 AS `parent_id`, -3.5901707834823906 AS `Estimator` UNION ALL SELECT 10 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 3 AS `depth`, 9 AS `parent_id`, 37.34665341388054 AS `Estimator` UNION ALL SELECT 11 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 9 AS `parent_id`, -17.235778849270034 AS `Estimator` UNION ALL SELECT 12 AS `node_id`, 'Feature_0' AS `feature`, 0.3337593078613281 AS `threshold`, 7 AS `count`, 2 AS `depth`, 8 AS `parent_id`, 326.4064287982791 AS `Estimator` UNION ALL SELECT 13 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 12 AS `parent_id`, 248.55956547532833 AS `Estimator` UNION ALL SELECT 14 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 4 AS `count`, 3 AS `depth`, 12 AS `parent_id`, 384.7915762904921 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.`node_id_2` AS `node_id_2`, `DT_node_data`.`node_id` AS `node_id`, `DT_node_data`.`feature` AS `feature`, `DT_node_data`.`threshold` AS `threshold`, `DT_node_data`.`count` AS `count`, `DT_node_data`.`depth` AS `depth`, `DT_node_data`.`parent_id` AS `parent_id`, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.`node_id_2` = `DT_node_data`.`node_id`), 
`AdaBoost_Estim_0` AS 
(SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator`, 0.250188539972 AS `Weight`, 0 AS `est_index` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_7` <= 1.3585671186447144) THEN CASE WHEN (`ADS`.`Feature_0` <= -1.2707698345184326) THEN 2 ELSE CASE WHEN (`ADS`.`Feature_2` <= -0.35935157537460327) THEN 4 ELSE 5 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= 0.8810824155807495) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.9776925444602966) THEN 9 ELSE 10 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.`node_id` AS `node_id`, `Values`.`feature` AS `feature`, `Values`.`threshold` AS `threshold`, `Values`.`count` AS `count`, `Values`.`depth` AS `depth`, `Values`.`parent_id` AS `parent_id`, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS `node_id`, 'Feature_7' AS `feature`, 1.3585671186447144 AS `threshold`, 25 AS `count`, 0 AS `depth`, CAST(NULL AS INT) AS `parent_id`, 50.1107645291096 AS `Estimator` UNION ALL SELECT 1 AS `node_id`, 'Feature_0' AS `feature`, -1.2707698345184326 AS `threshold`, 21 AS `count`, 1 AS `depth`, 0 AS `parent_id`, -13.823640151337305 AS `Estimator` UNION ALL SELECT 2 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 2 AS `depth`, 1 AS `parent_id`, 320.6826523308587 AS `Estimator` UNION ALL SELECT 3 AS `node_id`, 'Feature_2' AS `feature`, -0.35935157537460327 AS `threshold`, 19 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -49.03482883367371 AS `Estimator` UNION ALL SELECT 4 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 6 AS `count`, 3 AS `depth`, 3 AS `parent_id`, -165.19883818925345 AS `Estimator` UNION ALL SELECT 5 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 13 AS `count`, 3 AS `depth`, 3 AS `parent_id`, 4.579329330439985 AS `Estimator` UNION ALL SELECT 6 AS `node_id`, 'Feature_5' AS `feature`, 0.8810824155807495 AS `threshold`, 4 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 385.76638910145584 AS `Estimator` UNION ALL SELECT 7 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 2 AS `depth`, 6 AS `parent_id`, 479.70721604450864 AS `Estimator` UNION ALL SELECT 8 AS `node_id`, 'Feature_6' AS `feature`, 0.9776925444602966 AS `threshold`, 3 AS `count`, 2 AS `depth`, 6 AS `parent_id`, 354.45278012043826 AS `Estimator` UNION ALL SELECT 9 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 8 AS `parent_id`, 351.37130796411674 AS `Estimator` UNION ALL SELECT 10 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 3 AS `depth`, 8 AS `parent_id`, 360.61572443308125 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.`node_id_2` AS `node_id_2`, `DT_node_data_1`.`node_id` AS `node_id`, `DT_node_data_1`.`feature` AS `feature`, `DT_node_data_1`.`threshold` AS `threshold`, `DT_node_data_1`.`count` AS `count`, `DT_node_data_1`.`depth` AS `depth`, `DT_node_data_1`.`parent_id` AS `parent_id`, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.`node_id_2` = `DT_node_data_1`.`node_id`), 
`AdaBoost_Estim_1` AS 
(SELECT `DT_Output_1`.`KEY` AS `KEY`, `DT_Output_1`.`Estimator` AS `Estimator`, 0.243510918623 AS `Weight`, 1 AS `est_index` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_8` <= -0.21997550129890442) THEN CASE WHEN (`ADS`.`Feature_0` <= 0.2409437596797943) THEN CASE WHEN (`ADS`.`Feature_0` <= -0.23212584853172302) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.8986160755157471) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_4` <= -1.0364705324172974) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_3` <= -0.4953560531139374) THEN 11 ELSE 12 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.`node_id` AS `node_id`, `Values`.`feature` AS `feature`, `Values`.`threshold` AS `threshold`, `Values`.`count` AS `count`, `Values`.`depth` AS `depth`, `Values`.`parent_id` AS `parent_id`, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS `node_id`, 'Feature_8' AS `feature`, -0.21997550129890442 AS `threshold`, 25 AS `count`, 0 AS `depth`, CAST(NULL AS INT) AS `parent_id`, 15.66223300291376 AS `Estimator` UNION ALL SELECT 1 AS `node_id`, 'Feature_0' AS `feature`, 0.2409437596797943 AS `threshold`, 16 AS `count`, 1 AS `depth`, 0 AS `parent_id`, -141.1201494381064 AS `Estimator` UNION ALL SELECT 2 AS `node_id`, 'Feature_0' AS `feature`, -0.23212584853172302 AS `threshold`, 11 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -193.73017915103847 AS `Estimator` UNION ALL SELECT 3 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 9 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -177.18345620936861 AS `Estimator` UNION ALL SELECT 4 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -268.1904323885528 AS `Estimator` UNION ALL SELECT 5 AS `node_id`, 'Feature_6' AS `feature`, 0.8986160755157471 AS `threshold`, 5 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -25.378084069655863 AS `Estimator` UNION ALL SELECT 6 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 5 AS `parent_id`, -44.34753265755555 AS `Estimator` UNION ALL SELECT 7 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 5 AS `parent_id`, 3.0760888121936603 AS `Estimator` UNION ALL SELECT 8 AS `node_id`, 'Feature_4' AS `feature`, -1.0364705324172974 AS `threshold`, 9 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 294.38646845361626 AS `Estimator` UNION ALL SELECT 9 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 2 AS `depth`, 8 AS `parent_id`, -33.337014733450744 AS `Estimator` UNION ALL SELECT 10 AS `node_id`, 'Feature_3' AS `feature`, -0.4953560531139374 AS `threshold`, 8 AS `count`, 2 AS `depth`, 8 AS `parent_id`, 335.3519038519996 AS `Estimator` UNION ALL SELECT 11 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 5 AS `count`, 3 AS `depth`, 10 AS `parent_id`, 350.59145771534577 AS `Estimator` UNION ALL SELECT 12 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 10 AS `parent_id`, 309.95264741308944 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.`node_id_2` AS `node_id_2`, `DT_node_data_2`.`node_id` AS `node_id`, `DT_node_data_2`.`feature` AS `feature`, `DT_node_data_2`.`threshold` AS `threshold`, `DT_node_data_2`.`count` AS `count`, `DT_node_data_2`.`depth` AS `depth`, `DT_node_data_2`.`parent_id` AS `parent_id`, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.`node_id_2` = `DT_node_data_2`.`node_id`), 
`AdaBoost_Estim_2` AS 
(SELECT `DT_Output_2`.`KEY` AS `KEY`, `DT_Output_2`.`Estimator` AS `Estimator`, 0.277300541384 AS `Weight`, 2 AS `est_index` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_5` <= 0.41830602288246155) THEN CASE WHEN (`ADS`.`Feature_2` <= -0.9420807361602783) THEN CASE WHEN (`ADS`.`Feature_7` <= -0.2537200152873993) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_8` <= -1.844684362411499) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.43921321630477905) THEN CASE WHEN (`ADS`.`Feature_2` <= 0.9555590748786926) THEN 10 ELSE 11 END ELSE CASE WHEN (`ADS`.`Feature_9` <= 0.6806727647781372) THEN 13 ELSE 14 END END END AS `node_id_2` 
FROM `RandomReg_10` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.`node_id` AS `node_id`, `Values`.`feature` AS `feature`, `Values`.`threshold` AS `threshold`, `Values`.`count` AS `count`, `Values`.`depth` AS `depth`, `Values`.`parent_id` AS `parent_id`, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS `node_id`, 'Feature_5' AS `feature`, 0.41830602288246155 AS `threshold`, 25 AS `count`, 0 AS `depth`, CAST(NULL AS INT) AS `parent_id`, -24.864854988133384 AS `Estimator` UNION ALL SELECT 1 AS `node_id`, 'Feature_2' AS `feature`, -0.9420807361602783 AS `threshold`, 15 AS `count`, 1 AS `depth`, 0 AS `parent_id`, -156.45143315413944 AS `Estimator` UNION ALL SELECT 2 AS `node_id`, 'Feature_7' AS `feature`, -0.2537200152873993 AS `threshold`, 4 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -291.0602146814771 AS `Estimator` UNION ALL SELECT 3 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -351.3842930876292 AS `Estimator` UNION ALL SELECT 4 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 2 AS `parent_id`, -230.736136275325 AS `Estimator` UNION ALL SELECT 5 AS `node_id`, 'Feature_8' AS `feature`, -1.844684362411499 AS `threshold`, 11 AS `count`, 2 AS `depth`, 1 AS `parent_id`, -107.50278532601668 AS `Estimator` UNION ALL SELECT 6 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 3 AS `count`, 3 AS `depth`, 5 AS `parent_id`, -210.40463066967106 AS `Estimator` UNION ALL SELECT 7 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 8 AS `count`, 3 AS `depth`, 5 AS `parent_id`, -68.91459332214629 AS `Estimator` UNION ALL SELECT 8 AS `node_id`, 'Feature_9' AS `feature`, 0.43921321630477905 AS `threshold`, 10 AS `count`, 1 AS `depth`, 0 AS `parent_id`, 172.51501226087572 AS `Estimator` UNION ALL SELECT 9 AS `node_id`, 'Feature_2' AS `feature`, 0.9555590748786926 AS `threshold`, 7 AS `count`, 2 AS `depth`, 8 AS `parent_id`, 269.57507907137995 AS `Estimator` UNION ALL SELECT 10 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 9 AS `parent_id`, 248.55956547532833 AS `Estimator` UNION ALL SELECT 11 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 5 AS `count`, 3 AS `depth`, 9 AS `parent_id`, 277.9812845098006 AS `Estimator` UNION ALL SELECT 12 AS `node_id`, 'Feature_9' AS `feature`, 0.6806727647781372 AS `threshold`, 3 AS `count`, 2 AS `depth`, 8 AS `parent_id`, -53.95847696363413 AS `Estimator` UNION ALL SELECT 13 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 2 AS `count`, 3 AS `depth`, 12 AS `parent_id`, 3.0760888121936603 AS `Estimator` UNION ALL SELECT 14 AS `node_id`, CAST(NULL AS STRING) AS `feature`, CAST(NULL AS FLOAT) AS `threshold`, 1 AS `count`, 3 AS `depth`, 12 AS `parent_id`, -168.02760851528973 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.`node_id_2` AS `node_id_2`, `DT_node_data_3`.`node_id` AS `node_id`, `DT_node_data_3`.`feature` AS `feature`, `DT_node_data_3`.`threshold` AS `threshold`, `DT_node_data_3`.`count` AS `count`, `DT_node_data_3`.`depth` AS `depth`, `DT_node_data_3`.`parent_id` AS `parent_id`, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.`node_id_2` = `DT_node_data_3`.`node_id`), 
`AdaBoost_Estim_3` AS 
(SELECT `DT_Output_3`.`KEY` AS `KEY`, `DT_Output_3`.`Estimator` AS `Estimator`, 0.229000000021 AS `Weight`, 3 AS `est_index` 
FROM `DT_Output_3`), 
`WeightedEstimators` AS 
(SELECT `ensemble_score_union`.`KEY` AS `KEY`, `ensemble_score_union`.`Estimator` AS `Estimator`, `ensemble_score_union`.`Weight` AS `Weight`, `ensemble_score_union`.`est_index` AS `est_index` 
FROM (SELECT `AdaBoost_Estim_0`.`KEY` AS `KEY`, `AdaBoost_Estim_0`.`Estimator` AS `Estimator`, `AdaBoost_Estim_0`.`Weight` AS `Weight`, `AdaBoost_Estim_0`.`est_index` AS `est_index` 
FROM `AdaBoost_Estim_0` UNION ALL SELECT `AdaBoost_Estim_1`.`KEY` AS `KEY`, `AdaBoost_Estim_1`.`Estimator` AS `Estimator`, `AdaBoost_Estim_1`.`Weight` AS `Weight`, `AdaBoost_Estim_1`.`est_index` AS `est_index` 
FROM `AdaBoost_Estim_1` UNION ALL SELECT `AdaBoost_Estim_2`.`KEY` AS `KEY`, `AdaBoost_Estim_2`.`Estimator` AS `Estimator`, `AdaBoost_Estim_2`.`Weight` AS `Weight`, `AdaBoost_Estim_2`.`est_index` AS `est_index` 
FROM `AdaBoost_Estim_2` UNION ALL SELECT `AdaBoost_Estim_3`.`KEY` AS `KEY`, `AdaBoost_Estim_3`.`Estimator` AS `Estimator`, `AdaBoost_Estim_3`.`Weight` AS `Weight`, `AdaBoost_Estim_3`.`est_index` AS `est_index` 
FROM `AdaBoost_Estim_3`) AS `ensemble_score_union`), 
`Cumulative_Frequencies` AS 
(SELECT `CW`.`KEY` AS `KEY`, `CW`.`Estimator` AS `Estimator`, `CW`.`Weight` AS `Weight`, `CW`.`est_index` AS `est_index`, `CW`.`cum_weight` AS `cum_weight` 
FROM (SELECT `u1`.`KEY` AS `KEY`, `u1`.`Estimator` AS `Estimator`, `u1`.`Weight` AS `Weight`, `u1`.`est_index` AS `est_index`, sum(`u2`.`Weight`) AS `cum_weight` 
FROM `WeightedEstimators` AS u1, `WeightedEstimators` AS u2 
WHERE `u1`.`Estimator` >= `u2`.`Estimator` AND `u1`.`KEY` = `u2`.`KEY` GROUP BY `u1`.`KEY`, `u1`.`est_index`, `u1`.`Estimator`, `u1`.`Weight`) AS `CW`), 
`Quantiles` AS 
(SELECT `CW2`.`KEY` AS `KEY`, `CW2`.`Quantile` AS `Quantile` 
FROM (SELECT `Cumulative_Frequencies`.`KEY` AS `KEY`, min(`Cumulative_Frequencies`.`Estimator`) AS `Quantile` 
FROM `Cumulative_Frequencies` 
WHERE `Cumulative_Frequencies`.`cum_weight` >= 0.5 GROUP BY `Cumulative_Frequencies`.`KEY`) AS `CW2`)
 SELECT `Quantiles`.`KEY` AS `KEY`, `Quantiles`.`Quantile` AS `Estimator` 
FROM `Quantiles`