-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `DT_node_lookup` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_20` <= 16.795000076293945) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.13580000400543213) THEN CASE WHEN (`ADS`.`Feature_13` <= 38.084999084472656) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_21` <= 25.670000076293945) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_1` <= 16.110000610351562) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_26` <= 0.2454500049352646) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_20' AS feature, 16.795000076293945 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.7482598067911076e-16 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.13580000400543213 AS threshold, 379 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.2855122396835613 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_13' AS feature, 38.084999084472656 AS threshold, 333 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.35756846477408755 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 318 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.5669331337613956 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.7382775751810159 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_21' AS feature, 25.670000076293945 AS threshold, 46 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.23611217238480936 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.6932481036108588 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 27 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.208651175354838 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 16.110000610351562 AS threshold, 190 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.5695217833687918 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.4192447234165582 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_26' AS feature, 0.2454500049352646 AS threshold, 173 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.6158558265692785 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.1135889575956153 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 158 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.6839622641509426 AS `Estimator`) AS `Values`), 
`DT_Output` AS 
(SELECT `DT_node_lookup`.`KEY` AS `KEY`, `DT_node_lookup`.node_id_2 AS node_id_2, `DT_node_data`.node_id AS node_id, `DT_node_data`.feature AS feature, `DT_node_data`.threshold AS threshold, `DT_node_data`.count AS count, `DT_node_data`.depth AS depth, `DT_node_data`.parent_id AS parent_id, `DT_node_data`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup` LEFT OUTER JOIN `DT_node_data` ON `DT_node_lookup`.node_id_2 = `DT_node_data`.node_id), 
`RF_Tree_0_0` AS 
(SELECT `DT_Output`.`KEY` AS join_key_0_0, `DT_Output`.`Estimator` AS `Estimator_0_0` 
FROM `DT_Output`), 
`DT_node_lookup_1` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_20` <= 16.795000076293945) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.16029998660087585) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.13580000400543213) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.07214000076055527) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_13` <= 32.53499984741211) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data_1` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_20' AS feature, 16.795000076293945 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0010488058331076353 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.16029998660087585 AS threshold, 379 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.2577277757609759 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_27' AS feature, 0.13580000400543213 AS threshold, 359 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.29928945815078944 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 333 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.4425864850558965 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.004609681313983192 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.0224551572453793 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_6' AS feature, 0.07214000076055527 AS threshold, 190 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.5109581920756424 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.5513431385645032 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_13' AS feature, 32.53499984741211 AS threshold, 168 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.5604151192402419 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.0368886811514413 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 153 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.3074697498963816 AS `Estimator`) AS `Values`), 
`DT_Output_1` AS 
(SELECT `DT_node_lookup_1`.`KEY` AS `KEY`, `DT_node_lookup_1`.node_id_2 AS node_id_2, `DT_node_data_1`.node_id AS node_id, `DT_node_data_1`.feature AS feature, `DT_node_data_1`.threshold AS threshold, `DT_node_data_1`.count AS count, `DT_node_data_1`.depth AS depth, `DT_node_data_1`.parent_id AS parent_id, `DT_node_data_1`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_1` LEFT OUTER JOIN `DT_node_data_1` ON `DT_node_lookup_1`.node_id_2 = `DT_node_data_1`.node_id), 
`RF_Tree_1_0` AS 
(SELECT `DT_Output_1`.`KEY` AS join_key_1_0, `DT_Output_1`.`Estimator` AS `Estimator_1_0` 
FROM `DT_Output_1`), 
`DT_node_lookup_2` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_22` <= 114.44999694824219) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.14559999108314514) THEN CASE WHEN (`ADS`.`Feature_13` <= 35.435001373291016) THEN 3 ELSE 4 END ELSE CASE WHEN (`ADS`.`Feature_21` <= 26.900001525878906) THEN 6 ELSE 7 END END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.052239999175071716) THEN 9 ELSE CASE WHEN (`ADS`.`Feature_21` <= 22.770000457763672) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data_2` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_22' AS feature, 114.44999694824219 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0016151913724254626 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.14559999108314514 AS threshold, 393 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.22030089317329954 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_13' AS feature, 35.435001373291016 AS threshold, 360 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.26668253985565765 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 334 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.3421516760478311 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.039857901596563085 AS `Estimator` UNION ALL SELECT 5 AS node_id, 'Feature_21' AS feature, 26.900001525878906 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.2856807069978809 AS `Estimator` UNION ALL SELECT 6 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.028213093366363965 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.1287048254746814 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_7' AS feature, 0.052239999175071716 AS threshold, 176 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.48670004048975496 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.9567728690869217 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_21' AS feature, 22.770000457763672 AS threshold, 161 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.5103163024710293 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.159833957152044 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 146 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -2.0319371262079957 AS `Estimator`) AS `Values`), 
`DT_Output_2` AS 
(SELECT `DT_node_lookup_2`.`KEY` AS `KEY`, `DT_node_lookup_2`.node_id_2 AS node_id_2, `DT_node_data_2`.node_id AS node_id, `DT_node_data_2`.feature AS feature, `DT_node_data_2`.threshold AS threshold, `DT_node_data_2`.count AS count, `DT_node_data_2`.depth AS depth, `DT_node_data_2`.parent_id AS parent_id, `DT_node_data_2`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_2` LEFT OUTER JOIN `DT_node_data_2` ON `DT_node_lookup_2`.node_id_2 = `DT_node_data_2`.node_id), 
`RF_Tree_2_0` AS 
(SELECT `DT_Output_2`.`KEY` AS join_key_2_0, `DT_Output_2`.`Estimator` AS `Estimator_2_0` 
FROM `DT_Output_2`), 
`DT_node_lookup_3` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_22` <= 105.94999694824219) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.1350499987602234) THEN CASE WHEN (`ADS`.`Feature_28` <= 0.19874998927116394) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_7` <= 0.048864997923374176) THEN CASE WHEN (`ADS`.`Feature_21` <= 26.375) THEN 8 ELSE 9 END ELSE CASE WHEN (`ADS`.`Feature_21` <= 20.645000457763672) THEN 11 ELSE 12 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data_3` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_22' AS feature, 105.94999694824219 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.001881711913406159 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.1350499987602234 AS threshold, 345 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.24033876354004943 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_28' AS feature, 0.19874998927116394 AS threshold, 320 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.26682013092946566 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.7403608802206861 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 305 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.3549994915600139 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 25 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.4136988396119637 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_7' AS feature, 0.048864997923374176 AS threshold, 224 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.36538472920798865 AS `Estimator` UNION ALL SELECT 7 AS node_id, 'Feature_21' AS feature, 26.375 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.007839771267057274 AS `Estimator` UNION ALL SELECT 8 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.3359991433237435 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.0954140033347033 AS `Estimator` UNION ALL SELECT 10 AS node_id, 'Feature_21' AS feature, 20.645000457763672 AS threshold, 190 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.4321722713982601 AS `Estimator` UNION ALL SELECT 11 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.42349947071100874 AS `Estimator` UNION ALL SELECT 12 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 175 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.8603084910305694 AS `Estimator`) AS `Values`), 
`DT_Output_3` AS 
(SELECT `DT_node_lookup_3`.`KEY` AS `KEY`, `DT_node_lookup_3`.node_id_2 AS node_id_2, `DT_node_data_3`.node_id AS node_id, `DT_node_data_3`.feature AS feature, `DT_node_data_3`.threshold AS threshold, `DT_node_data_3`.count AS count, `DT_node_data_3`.depth AS depth, `DT_node_data_3`.parent_id AS parent_id, `DT_node_data_3`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_3` LEFT OUTER JOIN `DT_node_data_3` ON `DT_node_lookup_3`.node_id_2 = `DT_node_data_3`.node_id), 
`RF_Tree_3_0` AS 
(SELECT `DT_Output_3`.`KEY` AS join_key_3_0, `DT_Output_3`.`Estimator` AS `Estimator_3_0` 
FROM `DT_Output_3`), 
`DT_node_lookup_4` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_20` <= 16.795000076293945) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.16029998660087585) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.13580000400543213) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_21` <= 19.90999984741211) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_29` <= 0.06549499928951263) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data_4` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_20' AS feature, 16.795000076293945 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0020405564259030765 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.16029998660087585 AS threshold, 379 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.1918058211701709 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_27' AS feature, 0.13580000400543213 AS threshold, 359 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.22357073110623107 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 333 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.2649130952377141 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.0433115951485053 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.5360464124957227 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_21' AS feature, 19.90999984741211 AS threshold, 190 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.37649120851134676 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.14838073885540037 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_29' AS feature, 0.06549499928951263 AS threshold, 173 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.40999970210348613 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.3034413158872464 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 158 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.7255475694994047 AS `Estimator`) AS `Values`), 
`DT_Output_4` AS 
(SELECT `DT_node_lookup_4`.`KEY` AS `KEY`, `DT_node_lookup_4`.node_id_2 AS node_id_2, `DT_node_data_4`.node_id AS node_id, `DT_node_data_4`.feature AS feature, `DT_node_data_4`.threshold AS threshold, `DT_node_data_4`.count AS count, `DT_node_data_4`.depth AS depth, `DT_node_data_4`.parent_id AS parent_id, `DT_node_data_4`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_4` LEFT OUTER JOIN `DT_node_data_4` ON `DT_node_lookup_4`.node_id_2 = `DT_node_data_4`.node_id), 
`RF_Tree_4_0` AS 
(SELECT `DT_Output_4`.`KEY` AS join_key_4_0, `DT_Output_4`.`Estimator` AS `Estimator_4_0` 
FROM `DT_Output_4`), 
`DT_node_lookup_5` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_23` <= 884.5499877929688) THEN CASE WHEN (`ADS`.`Feature_27` <= 0.16029998660087585) THEN CASE WHEN (`ADS`.`Feature_1` <= 21.315000534057617) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN (`ADS`.`Feature_6` <= 0.07214000076055527) THEN 7 ELSE CASE WHEN (`ADS`.`Feature_21` <= 22.34000015258789) THEN 9 ELSE 10 END END END AS node_id_2 
FROM `INPUT_DATA` AS `ADS`), 
`DT_node_data_5` AS 
(SELECT `Values`.node_id AS node_id, `Values`.feature AS feature, `Values`.threshold AS threshold, `Values`.count AS count, `Values`.depth AS depth, `Values`.parent_id AS parent_id, `Values`.`Estimator` AS `Estimator` 
FROM (SELECT 0 AS node_id, 'Feature_23' AS feature, 884.5499877929688 AS threshold, 569 AS count, 0 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.002074320035408934 AS `Estimator` UNION ALL SELECT 1 AS node_id, 'Feature_27' AS feature, 0.16029998660087585 AS threshold, 386 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.16864411704163512 AS `Estimator` UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 21.315000534057617 AS threshold, 364 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.19961030804147148 AS `Estimator` UNION ALL SELECT 3 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 292 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 1.2549466528140367 AS `Estimator` UNION ALL SELECT 4 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 72 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, 0.4510112298087533 AS `Estimator` UNION ALL SELECT 5 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.4175430862336211 AS `Estimator` UNION ALL SELECT 6 AS node_id, 'Feature_6' AS feature, 0.07214000076055527 AS threshold, 183 AS count, 1 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.34926962337663076 AS `Estimator` UNION ALL SELECT 7 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 19 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.43210242928588066 AS `Estimator` UNION ALL SELECT 8 AS node_id, 'Feature_21' AS feature, 22.34000015258789 AS threshold, 164 AS count, 2 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -0.37758475821262816 AS `Estimator` UNION ALL SELECT 9 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.809739002706804 AS `Estimator` UNION ALL SELECT 10 AS node_id, CAST(NULL AS CHAR(256)) AS feature, NULL AS threshold, 149 AS count, 3 AS depth, CAST(NULL AS SIGNED INTEGER) AS parent_id, -1.590952770196649 AS `Estimator`) AS `Values`), 
`DT_Output_5` AS 
(SELECT `DT_node_lookup_5`.`KEY` AS `KEY`, `DT_node_lookup_5`.node_id_2 AS node_id_2, `DT_node_data_5`.node_id AS node_id, `DT_node_data_5`.feature AS feature, `DT_node_data_5`.threshold AS threshold, `DT_node_data_5`.count AS count, `DT_node_data_5`.depth AS depth, `DT_node_data_5`.parent_id AS parent_id, `DT_node_data_5`.`Estimator` AS `Estimator` 
FROM `DT_node_lookup_5` LEFT OUTER JOIN `DT_node_data_5` ON `DT_node_lookup_5`.node_id_2 = `DT_node_data_5`.node_id), 
`RF_Tree_5_0` AS 
(SELECT `DT_Output_5`.`KEY` AS join_key_5_0, `DT_Output_5`.`Estimator` AS `Estimator_5_0` 
FROM `DT_Output_5`), 
`RF_Join_CTE` AS 
(SELECT `RF_Tree_0_0`.join_key_0_0 AS join_key_0_0, `RF_Tree_0_0`.`Estimator_0_0` AS `Estimator_0_0`, `RF_Tree_1_0`.join_key_1_0 AS join_key_1_0, `RF_Tree_1_0`.`Estimator_1_0` AS `Estimator_1_0`, `RF_Tree_2_0`.join_key_2_0 AS join_key_2_0, `RF_Tree_2_0`.`Estimator_2_0` AS `Estimator_2_0`, `RF_Tree_3_0`.join_key_3_0 AS join_key_3_0, `RF_Tree_3_0`.`Estimator_3_0` AS `Estimator_3_0`, `RF_Tree_4_0`.join_key_4_0 AS join_key_4_0, `RF_Tree_4_0`.`Estimator_4_0` AS `Estimator_4_0`, `RF_Tree_5_0`.join_key_5_0 AS join_key_5_0, `RF_Tree_5_0`.`Estimator_5_0` AS `Estimator_5_0` 
FROM `RF_Tree_0_0` LEFT OUTER JOIN `RF_Tree_1_0` ON `RF_Tree_0_0`.join_key_0_0 = `RF_Tree_1_0`.join_key_1_0 LEFT OUTER JOIN `RF_Tree_2_0` ON `RF_Tree_2_0`.join_key_2_0 = `RF_Tree_1_0`.join_key_1_0 LEFT OUTER JOIN `RF_Tree_3_0` ON `RF_Tree_3_0`.join_key_3_0 = `RF_Tree_2_0`.join_key_2_0 LEFT OUTER JOIN `RF_Tree_4_0` ON `RF_Tree_4_0`.join_key_4_0 = `RF_Tree_3_0`.join_key_3_0 LEFT OUTER JOIN `RF_Tree_5_0` ON `RF_Tree_5_0`.join_key_5_0 = `RF_Tree_4_0`.join_key_4_0), 
`RF_AVG_Scores` AS 
(SELECT `RF_Join_CTE`.join_key_0_0 AS `KEY`, 0.478850492892 + 0.1 * `RF_Join_CTE`.`Estimator_0_0` + 0.1 * `RF_Join_CTE`.`Estimator_1_0` + 0.1 * `RF_Join_CTE`.`Estimator_2_0` + 0.1 * `RF_Join_CTE`.`Estimator_3_0` + 0.1 * `RF_Join_CTE`.`Estimator_4_0` + 0.1 * `RF_Join_CTE`.`Estimator_5_0` AS `Score_0`, NULL AS `Proba_0`, NULL AS `LogProba_0`, 0.521149507108 AS `Score_1`, NULL AS `Proba_1`, NULL AS `LogProba_1` 
FROM `RF_Join_CTE`), 
orig_cte AS 
(SELECT `RF_AVG_Scores`.`KEY` AS `KEY`, `RF_AVG_Scores`.`Score_0` AS `Score_0`, `RF_AVG_Scores`.`Score_1` AS `Score_1`, `RF_AVG_Scores`.`Proba_0` AS `Proba_0`, `RF_AVG_Scores`.`Proba_1` AS `Proba_1`, `RF_AVG_Scores`.`LogProba_0` AS `LogProba_0`, `RF_AVG_Scores`.`LogProba_1` AS `LogProba_1`, NULL AS `Decision` 
FROM `RF_AVG_Scores`), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`LogProba` AS `LogProba`, soft_scu.`Proba` AS `Proba`, soft_scu.`Score` AS `Score`, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_comp.`KEY` AS `KEY`, 0 AS class, score_soft_max_comp.`LogProba_0` AS `LogProba`, score_soft_max_comp.`Proba_0` AS `Proba`, score_soft_max_comp.`Score_0` AS `Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.`KEY` AS `KEY`, 1 AS class, score_soft_max_comp.`LogProba_1` AS `LogProba`, score_soft_max_comp.`Proba_1` AS `Proba`, score_soft_max_comp.`Score_1` AS `Score`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp.`KEY` AS `KEY`, score_soft_max_comp.`Score_0` AS `Score_0`, score_soft_max_comp.`Score_1` AS `Score_1`, score_soft_max_comp.`Proba_0` AS `Proba_0`, score_soft_max_comp.`Proba_1` AS `Proba_1`, score_soft_max_comp.`LogProba_0` AS `LogProba_0`, score_soft_max_comp.`LogProba_1` AS `LogProba_1`, score_soft_max_comp.`Decision` AS `Decision`, score_soft_max_comp.`max_LogProba` AS `max_LogProba`, score_soft_max_comp.`max_Proba` AS `max_Proba`, score_soft_max_comp.`max_Score` AS `max_Score`, score_soft_max_comp.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_comp.`exp_delta_Score_1` AS `exp_delta_Score_1`, (SELECT sum(score_class_union_soft.`exp_delta_Score`) AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp.`KEY` = score_class_union_soft.`KEY`) AS `sum_ExpDeltaScore` 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`max_LogProba` AS `max_LogProba`, score_soft_max.`max_Proba` AS `max_Proba`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max.`max_LogProba` = score_class_union.`LogProba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max.`max_Proba` = score_class_union.`Proba` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max.`max_Score` = score_class_union.`Score` AND score_soft_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1` 
FROM score_soft_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte