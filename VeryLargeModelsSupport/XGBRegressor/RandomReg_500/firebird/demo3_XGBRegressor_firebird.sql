-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_138" < -0.7396883368492126) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" < 0.3581446409225464) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_97" < -0.011374758556485176) THEN 5 ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -23.58962059020996 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 25.360851287841797 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 2.871410846710205 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -10.657759666442871 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 3.0990805625915527 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_138" < -0.7396883368492126) THEN 3 ELSE CASE WHEN ("ADS"."Feature_231" < 0.09465345740318298) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_306" < -0.3908025026321411) THEN 5 ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -21.387922286987305 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 24.430343627929688 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 2.5332729816436768 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -10.16661548614502 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 2.712761878967285 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_138" < -0.7396883368492126) THEN 3 ELSE CASE WHEN ("ADS"."Feature_33" < 0.31197139620780945) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_50" < 0.49829548597335815) THEN CASE WHEN ("ADS"."Feature_369" < 0.06605805456638336) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -19.3917179107666 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 24.34525489807129 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -9.324301719665527 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 2.649765968322754 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -4.607485771179199 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 10.62785530090332 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_317" < 0.6188573241233826) THEN CASE WHEN ("ADS"."Feature_138" < -0.7396883368492126) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_234" < 0.3879445195198059) THEN CASE WHEN ("ADS"."Feature_88" < -0.14963304996490479) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.593160390853882 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 21.669435501098633 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -19.82936668395996 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -7.222928524017334 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 9.492244720458984 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -5.859618663787842 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_138" < -0.7396883368492126) THEN 3 ELSE CASE WHEN ("ADS"."Feature_2" < 0.3581446409225464) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_97" < -0.011374758556485176) THEN 5 ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -16.030048370361328 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 18.9393253326416 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 0.44730931520462036 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -7.93695592880249 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 3.5465009212493896 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < -0.4093846082687378) THEN CASE WHEN ("ADS"."Feature_70" < -0.33147019147872925) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_306" < -0.363869845867157) THEN CASE WHEN ("ADS"."Feature_118" < -0.0004697553813457489) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_317" < -0.5003069639205933) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -1.5873079299926758 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -16.476242065429688 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 24.56147575378418 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 1.9773330688476562 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, -8.628637313842773 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 3.109274387359619 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" < 0.9366970658302307) THEN CASE WHEN ("ADS"."Feature_214" < -0.4093846082687378) THEN CASE WHEN ("ADS"."Feature_70" < -0.024323873221874237) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_485" < -0.595971941947937) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 12.401278495788574 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -5.420211315155029 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -16.029008865356445 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -6.076531887054443 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 5.19341516494751 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" < 0.9366970658302307) THEN CASE WHEN ("ADS"."Feature_214" < -0.4093846082687378) THEN CASE WHEN ("ADS"."Feature_70" < -0.024323873221874237) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_45" < 0.45956459641456604) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 11.226420402526855 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -4.916905879974365 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -14.532968521118164 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 4.393474578857422 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -6.582149028778076 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_2" < 0.8880929946899414) THEN CASE WHEN ("ADS"."Feature_206" < 0.24526721239089966) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_234" < 0.3879445195198059) THEN CASE WHEN ("ADS"."Feature_419" < -0.23764127492904663) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 2.9090423583984375 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 16.121292114257812 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -10.446375846862793 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -2.6358983516693115 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 6.1960649490356445 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -6.113076686859131 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" < 1.2911089658737183) THEN CASE WHEN ("ADS"."Feature_157" < -0.2712712585926056) THEN CASE WHEN ("ADS"."Feature_422" < 0.4107202887535095) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS"."Feature_326" < 0.027946362271904945) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 13.198702812194824 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -3.643941640853882 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -16.46332359313965 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 7.040873050689697 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -2.752002239227295 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"XGB_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."Estimator" AS "Estimator" 
FROM "DT_Output_9"), 
"XGB_Sum_B0" AS 
(SELECT "XGB_Sum_esu_0"."KEY" AS "KEY", "XGB_Sum_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_0"."KEY" AS "KEY", "XGB_Tree_0"."Estimator" AS "Estimator" 
FROM "XGB_Tree_0" UNION ALL SELECT "XGB_Tree_1"."KEY" AS "KEY", "XGB_Tree_1"."Estimator" AS "Estimator" 
FROM "XGB_Tree_1" UNION ALL SELECT "XGB_Tree_2"."KEY" AS "KEY", "XGB_Tree_2"."Estimator" AS "Estimator" 
FROM "XGB_Tree_2" UNION ALL SELECT "XGB_Tree_3"."KEY" AS "KEY", "XGB_Tree_3"."Estimator" AS "Estimator" 
FROM "XGB_Tree_3" UNION ALL SELECT "XGB_Tree_4"."KEY" AS "KEY", "XGB_Tree_4"."Estimator" AS "Estimator" 
FROM "XGB_Tree_4" UNION ALL SELECT "XGB_Tree_5"."KEY" AS "KEY", "XGB_Tree_5"."Estimator" AS "Estimator" 
FROM "XGB_Tree_5" UNION ALL SELECT "XGB_Tree_6"."KEY" AS "KEY", "XGB_Tree_6"."Estimator" AS "Estimator" 
FROM "XGB_Tree_6" UNION ALL SELECT "XGB_Tree_7"."KEY" AS "KEY", "XGB_Tree_7"."Estimator" AS "Estimator" 
FROM "XGB_Tree_7" UNION ALL SELECT "XGB_Tree_8"."KEY" AS "KEY", "XGB_Tree_8"."Estimator" AS "Estimator" 
FROM "XGB_Tree_8" UNION ALL SELECT "XGB_Tree_9"."KEY" AS "KEY", "XGB_Tree_9"."Estimator" AS "Estimator" 
FROM "XGB_Tree_9") AS "XGB_Sum_esu_0"), 
"DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" < 0.9366970658302307) THEN CASE WHEN ("ADS"."Feature_51" < -0.5294429063796997) THEN 3 ELSE CASE WHEN ("ADS"."Feature_214" < -0.6019164323806763) THEN 5 ELSE 6 END END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 9.116957664489746 AS "Estimator" FROM rdb$database UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -10.323904037475586 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -6.427771091461182 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 2.4171788692474365 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"XGB_Tree_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 0.10535271465778351) THEN CASE WHEN ("ADS"."Feature_323" < -0.006792124360799789) THEN CASE WHEN ("ADS"."Feature_154" < -0.319060742855072) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_157" < -0.4015471339225769) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS"."Feature_1" < 0.7427574396133423) THEN CASE WHEN ("ADS"."Feature_369" < 0.06605805456638336) THEN 11 ELSE 12 END ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 16.074369430541992 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 4.312106132507324 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -3.7680091857910156 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -12.4170560836792 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -4.235194683074951 AS "Estimator" FROM rdb$database UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -4.835856914520264 AS "Estimator" FROM rdb$database UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 6.003066539764404 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"XGB_Tree_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_263" < 0.9366970658302307) THEN CASE WHEN ("ADS"."Feature_96" < 0.883579432964325) THEN CASE WHEN ("ADS"."Feature_390" < 0.14908577501773834) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 7.97359561920166 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -9.350196838378906 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -4.48513650894165 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 3.5091798305511475 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"XGB_Tree_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_157" < -0.2299850583076477) THEN CASE WHEN ("ADS"."Feature_436" < -0.5514849424362183) THEN 3 ELSE CASE WHEN ("ADS"."Feature_290" < -0.028099942952394485) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_223" < 0.5156307220458984) THEN CASE WHEN ("ADS"."Feature_471" < -0.8260440826416016) THEN 9 ELSE 10 END ELSE 6 END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 1.1717835664749146 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 13.22297191619873 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -5.608309745788574 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -12.785053253173828 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, 4.456879615783691 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 5 AS parent_id, -2.869382381439209 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"XGB_Tree_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_214" < 1.2067259550094604) THEN CASE WHEN ("ADS"."Feature_2" < 0.9649178981781006) THEN CASE WHEN ("ADS"."Feature_17" < 0.620225191116333) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS depth, 0 AS parent_id, 10.331474304199219 AS "Estimator" FROM rdb$database UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, 6.256139278411865 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, -6.309741497039795 AS "Estimator" FROM rdb$database UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 3 AS parent_id, 0.48658832907676697 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"XGB_Tree_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_234" < -0.24851280450820923) THEN CASE WHEN ("ADS"."Feature_106" < -0.25593140721321106) THEN 3 ELSE CASE WHEN ("ADS"."Feature_473" < -0.4433881938457489) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS"."Feature_469" < -0.11130134761333466) THEN 5 ELSE CASE WHEN ("ADS"."Feature_53" < 0.10725745558738708) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "RandomReg_500" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 1 AS parent_id, -8.679123878479004 AS "Estimator" FROM rdb$database UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS depth, 2 AS parent_id, 10.656638145446777 AS "Estimator" FROM rdb$database UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, 2.7774388790130615 AS "Estimator" FROM rdb$database UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 4 AS parent_id, -4.589021682739258 AS "Estimator" FROM rdb$database UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, 2.548927068710327 AS "Estimator" FROM rdb$database UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS depth, 6 AS parent_id, -3.9375476837158203 AS "Estimator" FROM rdb$database) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".node_id AS node_id, "DT_node_data_15".feature AS feature, "DT_node_data_15".threshold AS threshold, "DT_node_data_15".depth AS depth, "DT_node_data_15".parent_id AS parent_id, "DT_node_data_15"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".node_id), 
"XGB_Tree_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."Estimator" AS "Estimator" 
FROM "DT_Output_15"), 
"XGB_Sum_B1" AS 
(SELECT "XGB_Sum_esu_1"."KEY" AS "KEY", "XGB_Sum_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Tree_10"."KEY" AS "KEY", "XGB_Tree_10"."Estimator" AS "Estimator" 
FROM "XGB_Tree_10" UNION ALL SELECT "XGB_Tree_11"."KEY" AS "KEY", "XGB_Tree_11"."Estimator" AS "Estimator" 
FROM "XGB_Tree_11" UNION ALL SELECT "XGB_Tree_12"."KEY" AS "KEY", "XGB_Tree_12"."Estimator" AS "Estimator" 
FROM "XGB_Tree_12" UNION ALL SELECT "XGB_Tree_13"."KEY" AS "KEY", "XGB_Tree_13"."Estimator" AS "Estimator" 
FROM "XGB_Tree_13" UNION ALL SELECT "XGB_Tree_14"."KEY" AS "KEY", "XGB_Tree_14"."Estimator" AS "Estimator" 
FROM "XGB_Tree_14" UNION ALL SELECT "XGB_Tree_15"."KEY" AS "KEY", "XGB_Tree_15"."Estimator" AS "Estimator" 
FROM "XGB_Tree_15") AS "XGB_Sum_esu_1"), 
"XGB_Sum_Union" AS 
(SELECT "XGB_Sum_EnsembleUnion"."KEY" AS "KEY", "XGB_Sum_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Sum_B0"."KEY" AS "KEY", "XGB_Sum_B0"."Estimator" AS "Estimator" 
FROM "XGB_Sum_B0" UNION ALL SELECT "XGB_Sum_B1"."KEY" AS "KEY", "XGB_Sum_B1"."Estimator" AS "Estimator" 
FROM "XGB_Sum_B1") AS "XGB_Sum_EnsembleUnion"), 
"XGB_Sum_sum" AS 
(SELECT "T"."KEY" AS "KEY", "T"."Estimator" AS "Estimator" 
FROM (SELECT "XGB_Sum_Union"."KEY" AS "KEY", sum(CAST("XGB_Sum_Union"."Estimator" AS FLOAT)) AS "Estimator" 
FROM "XGB_Sum_Union" GROUP BY "XGB_Sum_Union"."KEY") AS "T")
 SELECT "XGB_Sum_sum"."KEY" AS "KEY", "XGB_Sum_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_sum"