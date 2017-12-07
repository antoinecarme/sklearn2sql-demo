-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.0810083160112 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.269250048034 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.240487763101 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.142604128589 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.183572350866 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.173548954209 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.126298254061 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.360628810671 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.51115301513 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.203356397123 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.0810083160112) / 0.90949713658 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.269250048034) / 0.992426738719 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.240487763101) / 0.759956724432 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.142604128589) / 1.0926864622 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.183572350866) / 1.05658801775 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.173548954209) / 0.786365993461 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.126298254061) / 1.3847124245 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.360628810671) / 0.940597350833 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.51115301513) / 1.18193438252 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.203356397123) / 0.6906744839 AS scaler_11 
FROM `ADS_imp_1_OUT`), 
`DT_node_lookup` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.1823035180568695) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_11 <= 0.7494455575942993) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.021309636533260345) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= -1.1954323053359985) THEN 4 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= -0.3442937135696411) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_6 <= -0.6886701583862305) THEN 9 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= 0.6755774617195129) THEN 11 ELSE 12 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_5 <= -0.895311713218689) THEN 14 ELSE 15 END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_10 <= 0.060001831501722336) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.6628701686859131) THEN 18 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.3021126389503479) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 0.6805341243743896) THEN 21 ELSE 22 END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_2 <= 0.33231446146965027) THEN 24 ELSE 25 END END END ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_4 <= -0.5493066310882568) THEN 27 ELSE CASE WHEN (`ADS_sca_2_OUT`.scaler_9 <= 1.9978234767913818) THEN CASE WHEN (`ADS_sca_2_OUT`.scaler_7 <= 1.016194224357605) THEN 30 ELSE 31 END ELSE 32 END END END END AS node_id_2 
FROM `ADS_sca_2_OUT`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'scaler_7' AS feature, 0.1823035180568695 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 24.034264995683962 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'scaler_11' AS feature, 0.7494455575942993 AS threshold, 11 AS count, 1 AS depth, 0 AS parent_id, -150.29694978927876 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'scaler_2' AS feature, 0.021309636533260345 AS threshold, 9 AS count, 2 AS depth, 1 AS parent_id, -119.01622425767911 AS `Estimator` UNION ALL SELECT 3 AS node_id, 'scaler_7' AS feature, -1.1954323053359985 AS threshold, 5 AS count, 3 AS depth, 2 AS parent_id, -170.82943816573157 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, -67.71218597426643 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'scaler_2' AS feature, -0.3442937135696411 AS threshold, 4 AS count, 4 AS depth, 3 AS parent_id, -196.60875121359788 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 3 AS count, 5 AS depth, 5 AS parent_id, -172.74819082194628 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 5 AS parent_id, -268.1904323885528 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'scaler_6' AS feature, -0.6886701583862305 AS threshold, 4 AS count, 3 AS depth, 2 AS parent_id, -54.249706872613494 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 8 AS parent_id, -80.36713172562187 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'scaler_5' AS feature, 0.6755774617195129 AS threshold, 3 AS count, 4 AS depth, 8 AS parent_id, -45.543898588277365 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 10 AS parent_id, -51.764009207950075 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 10 AS parent_id, -33.10367734893197 AS `Estimator` UNION ALL SELECT 13 AS node_id, 'scaler_5' AS feature, -0.895311713218689 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -291.0602146814771 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -351.3842930876292 AS `Estimator` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 13 AS parent_id, -230.736136275325 AS `Estimator` UNION ALL SELECT 16 AS node_id, 'scaler_10' AS feature, 0.060001831501722336 AS threshold, 14 AS count, 1 AS depth, 0 AS parent_id, 161.00879089815467 AS `Estimator` UNION ALL SELECT 17 AS node_id, 'scaler_4' AS feature, -0.6628701686859131 AS threshold, 6 AS count, 2 AS depth, 16 AS parent_id, -16.81322429871123 AS `Estimator` UNION ALL SELECT 18 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 17 AS parent_id, -168.02760851528973 AS `Estimator` UNION ALL SELECT 19 AS node_id, 'scaler_2' AS feature, 0.3021126389503479 AS threshold, 5 AS count, 3 AS depth, 17 AS parent_id, 13.42965254460447 AS `Estimator` UNION ALL SELECT 20 AS node_id, 'scaler_7' AS feature, 0.6805341243743896 AS threshold, 2 AS count, 4 AS depth, 19 AS parent_id, 32.16683928651945 AS `Estimator` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 20 AS parent_id, 37.34665341388054 AS `Estimator` UNION ALL SELECT 22 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 20 AS parent_id, 26.98702515915835 AS `Estimator` UNION ALL SELECT 23 AS node_id, 'scaler_2' AS feature, 0.33231446146965027 AS threshold, 3 AS count, 4 AS depth, 19 AS parent_id, 0.9381947166611582 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 23 AS parent_id, -9.185160907179679 AS `Estimator` UNION ALL SELECT 25 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 23 AS parent_id, 5.999872528581577 AS `Estimator` UNION ALL SELECT 26 AS node_id, 'scaler_4' AS feature, -0.5493066310882568 AS threshold, 8 AS count, 2 AS depth, 16 AS parent_id, 294.3753022958041 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 26 AS parent_id, -33.337014733450744 AS `Estimator` UNION ALL SELECT 28 AS node_id, 'scaler_9' AS feature, 1.9978234767913818 AS threshold, 7 AS count, 3 AS depth, 26 AS parent_id, 341.19134758569766 AS `Estimator` UNION ALL SELECT 29 AS node_id, 'scaler_7' AS feature, 1.016194224357605 AS threshold, 6 AS count, 4 AS depth, 28 AS parent_id, 318.10536950922915 AS `Estimator` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 29 AS parent_id, 299.1612961645442 AS `Estimator` UNION ALL SELECT 31 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 29 AS parent_id, 355.99351619859897 AS `Estimator` UNION ALL SELECT 32 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, 479.70721604450864 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`