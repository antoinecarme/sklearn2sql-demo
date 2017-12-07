-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_95` <= -0.30009958148002625) THEN CASE WHEN (`ADS`.`Feature_41` <= -0.9126613140106201) THEN CASE WHEN (`ADS`.`Feature_13` <= -0.06840983033180237) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_3` <= 0.5127218961715698) THEN CASE WHEN (`ADS`.`Feature_28` <= -1.2904977798461914) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_57` <= 0.48375165462493896) THEN 9 ELSE 10 END END ELSE CASE WHEN (`ADS`.`Feature_5` <= -0.6160389184951782) THEN 12 ELSE CASE WHEN (`ADS`.`Feature_82` <= -0.36400195956230164) THEN 14 ELSE 15 END END END END ELSE CASE WHEN (`ADS`.`Feature_60` <= -0.8583354949951172) THEN CASE WHEN (`ADS`.`Feature_53` <= 0.6827864646911621) THEN CASE WHEN (`ADS`.`Feature_6` <= -0.5503982901573181) THEN 19 ELSE 20 END ELSE 21 END ELSE CASE WHEN (`ADS`.`Feature_23` <= 0.1831723004579544) THEN CASE WHEN (`ADS`.`Feature_32` <= -1.0851130485534668) THEN 24 ELSE CASE WHEN (`ADS`.`Feature_28` <= 0.43662652373313904) THEN 26 ELSE 27 END END ELSE CASE WHEN (`ADS`.`Feature_13` <= 1.0805500745773315) THEN CASE WHEN (`ADS`.`Feature_40` <= -0.9972289800643921) THEN 30 ELSE 31 END ELSE 32 END END END END AS node_id_2 
FROM `RandomReg_100` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_95' AS feature, -0.30009958148002625 AS threshold, 25 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -7.75913288320206 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_41' AS feature, -0.9126613140106201 AS threshold, 9 AS count, 1 AS depth, 0 AS parent_id, -277.96903302925284 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_13' AS feature, -0.06840983033180237 AS threshold, 2 AS count, 2 AS depth, 1 AS parent_id, -442.776914694759 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -454.8215873712685 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 2 AS parent_id, -430.7322420182495 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_3' AS feature, 0.5127218961715698 AS threshold, 7 AS count, 2 AS depth, 1 AS parent_id, -230.8810668391082 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_28' AS feature, -1.2904977798461914 AS threshold, 4 AS count, 3 AS depth, 5 AS parent_id, -191.66495455914537 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 6 AS parent_id, -167.53786194153668 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_57' AS feature, 0.48375165462493896 AS threshold, 3 AS count, 4 AS depth, 6 AS parent_id, -199.70731876501495 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 8 AS parent_id, -201.47286615820826 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 8 AS parent_id, -196.1762239786283 AS `Estimator` UNION ALL SELECT 11 AS node_id, 'Feature_5' AS feature, -0.6160389184951782 AS threshold, 3 AS count, 3 AS depth, 5 AS parent_id, -283.1692165457253 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 11 AS parent_id, -310.56333873263117 AS `Estimator` UNION ALL SELECT 13 AS node_id, 'Feature_82' AS feature, -0.36400195956230164 AS threshold, 2 AS count, 4 AS depth, 11 AS parent_id, -269.47215545227243 AS `Estimator` UNION ALL SELECT 14 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 13 AS parent_id, -257.9792248911822 AS `Estimator` UNION ALL SELECT 15 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 13 AS parent_id, -280.96508601336274 AS `Estimator` UNION ALL SELECT 16 AS node_id, 'Feature_60' AS feature, -0.8583354949951172 AS threshold, 16 AS count, 1 AS depth, 0 AS parent_id, 144.23393594895148 AS `Estimator` UNION ALL SELECT 17 AS node_id, 'Feature_53' AS feature, 0.6827864646911621 AS threshold, 3 AS count, 2 AS depth, 16 AS parent_id, -88.15439277773955 AS `Estimator` UNION ALL SELECT 18 AS node_id, 'Feature_6' AS feature, -0.5503982901573181 AS threshold, 2 AS count, 3 AS depth, 17 AS parent_id, -61.9448326078177 AS `Estimator` UNION ALL SELECT 19 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -42.10296471792358 AS `Estimator` UNION ALL SELECT 20 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 18 AS parent_id, -81.78670049771183 AS `Estimator` UNION ALL SELECT 21 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 3 AS depth, 17 AS parent_id, -140.57351311758325 AS `Estimator` UNION ALL SELECT 22 AS node_id, 'Feature_23' AS feature, 0.1831723004579544 AS threshold, 13 AS count, 2 AS depth, 16 AS parent_id, 197.8620118089571 AS `Estimator` UNION ALL SELECT 23 AS node_id, 'Feature_32' AS feature, -1.0851130485534668 AS threshold, 7 AS count, 3 AS depth, 22 AS parent_id, 285.46671388612197 AS `Estimator` UNION ALL SELECT 24 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 23 AS parent_id, 419.8117904787066 AS `Estimator` UNION ALL SELECT 25 AS node_id, 'Feature_28' AS feature, 0.43662652373313904 AS threshold, 6 AS count, 4 AS depth, 23 AS parent_id, 263.0758677873579 AS `Estimator` UNION ALL SELECT 26 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 2 AS count, 5 AS depth, 25 AS parent_id, 214.3655675098842 AS `Estimator` UNION ALL SELECT 27 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 25 AS parent_id, 287.43101792609474 AS `Estimator` UNION ALL SELECT 28 AS node_id, 'Feature_13' AS feature, 1.0805500745773315 AS threshold, 6 AS count, 3 AS depth, 22 AS parent_id, 95.65652605226478 AS `Estimator` UNION ALL SELECT 29 AS node_id, 'Feature_40' AS feature, -0.9972289800643921 AS threshold, 5 AS count, 4 AS depth, 28 AS parent_id, 125.75140452667374 AS `Estimator` UNION ALL SELECT 30 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 5 AS depth, 29 AS parent_id, 242.60253144460478 AS `Estimator` UNION ALL SELECT 31 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 4 AS count, 5 AS depth, 29 AS parent_id, 96.538622797191 AS `Estimator` UNION ALL SELECT 32 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 1 AS count, 4 AS depth, 28 AS parent_id, -54.81786631978007 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id)
 SELECT `DT_Output`.`KEY` AS `KEY`, `DT_Output`.`Estimator` AS `Estimator` 
FROM `DT_Output`