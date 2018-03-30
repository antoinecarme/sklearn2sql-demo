-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RANDOMREG_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.9403623342514038) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.07141511887311935) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.41797101497650146) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.10793066024780273) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -22.155038833618164 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.1371171921491623 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -8.404426574707031 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 13.90919017791748 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 16.5261173248291 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 26.465993881225586 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"XGB_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.4446154236793518) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.9403623342514038) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.41797101497650146) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.10793066024780273) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 9.778855323791504 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 0.12465210258960724 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -21.083234786987305 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -5.810722351074219 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 15.023741722106934 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 24.059995651245117 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"XGB_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."Estimator" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.6163085699081421) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.14761683344841003) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.058781277388334274) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.10793066024780273) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 16.941801071166992 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -20.199092864990234 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -3.550792694091797 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -4.642592906951904 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 17.064096450805664 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"XGB_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."Estimator" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.17482367157936096) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -0.18822640180587769) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.9524809122085571) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.41629236936569214) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -14.395660400390625 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -2.301922082901001 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -8.532238006591797 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 2.0144879817962646 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 16.57676124572754 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"XGB_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."Estimator" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.6163085699081421) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.14761683344841003) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.654899537563324) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.10793066024780273) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 14.832307815551758 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -19.02397918701172 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -4.534415245056152 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -3.971592426300049 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 14.045598030090332 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"XGB_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."Estimator" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.014908550307154655) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < -0.1266009509563446) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.9524809122085571) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < -0.4753594994544983) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -11.284990310668945 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -1.6324472427368164 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -6.995410442352295 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 3.276987075805664 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 17.257299423217773 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"XGB_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."Estimator" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.6163085699081421) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.14761683344841003) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.058781277388334274) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.10793066024780273) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 12.925868034362793 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -15.253242492675781 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -2.887866973876953 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -3.274099826812744 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 11.653290748596191 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"XGB_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."Estimator" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.07927589118480682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < -0.21623320877552032) THEN 7 ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < 0.42385512590408325) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 < -0.0786014124751091) THEN 5 ELSE 6 END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -0.29980388283729553 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, 13.997415542602539 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -14.787727355957031 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -3.8101868629455566 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -2.2124812602996826 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.032784461975098 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"XGB_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."Estimator" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 1.3202478885650635) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.055861689150333405) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.7928295135498047) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.371213436126709) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 15.438780784606934 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -15.28858470916748 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -1.8839603662490845 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.824749767780304 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 13.91795825958252 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"XGB_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."Estimator" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_6 < -0.38809654116630554) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 < 0.7366291880607605) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < -0.15840843319892883) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.3138342797756195) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.08694115281105042) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 3.2215232849121094 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -3.3912010192871094 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -14.086405754089355 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -5.727645397186279 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 2.9069461822509766 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 13.076863288879395 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
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
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_6 < -0.8129599094390869) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.3138342797756195) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < -0.0054212771356105804) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.5722590684890747) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, -8.471076011657715 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -8.676445007324219 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -0.826964795589447 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -0.7917702794075012 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.364592552185059 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".node_id AS node_id, "DT_node_data_10".feature AS feature, "DT_node_data_10".threshold AS threshold, "DT_node_data_10".depth AS depth, "DT_node_data_10".parent_id AS parent_id, "DT_node_data_10"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".node_id), 
"XGB_Tree_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."Estimator" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 < -0.14761683344841003) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.7928295135498047) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.05734813213348389) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < -0.17482367157936096) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 < 0.6017136573791504) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 3 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, -12.34475326538086 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 2 AS parent_id, -2.3250603675842285 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, -4.43468713760376 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 6.317233562469482 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 4.707091808319092 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 6 AS parent_id, 14.158080101013184 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".node_id AS node_id, "DT_node_data_11".feature AS feature, "DT_node_data_11".threshold AS threshold, "DT_node_data_11".depth AS depth, "DT_node_data_11".parent_id AS parent_id, "DT_node_data_11"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".node_id), 
"XGB_Tree_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."Estimator" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.8083431720733643) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 < 0.7477214932441711) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 < -0.8831796050071716) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 9.931203842163086 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 2 AS depth, 1 AS parent_id, 7.431036472320557 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -12.575167655944824 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -2.1470630168914795 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".node_id AS node_id, "DT_node_data_12".feature AS feature, "DT_node_data_12".threshold AS threshold, "DT_node_data_12".depth AS depth, "DT_node_data_12".parent_id AS parent_id, "DT_node_data_12"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".node_id), 
"XGB_Tree_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."Estimator" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 1.3202478885650635) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.055861689150333405) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.7928295135498047) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.371213436126709) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 11.724964141845703 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -11.475015640258789 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -1.759722113609314 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.4656667709350586 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 10.198412895202637 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".node_id AS node_id, "DT_node_data_13".feature AS feature, "DT_node_data_13".threshold AS threshold, "DT_node_data_13".depth AS depth, "DT_node_data_13".parent_id AS parent_id, "DT_node_data_13"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".node_id), 
"XGB_Tree_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."Estimator" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 1.3202478885650635) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.055861689150333405) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 < 0.17401424050331116) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 < 0.371213436126709) THEN 7 ELSE 8 END END ELSE 2 END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 2 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, 10.659058570861816 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -8.06911563873291 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 0.42630884051322937 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.421124666929245 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 9.271284103393555 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".node_id AS node_id, "DT_node_data_14".feature AS feature, "DT_node_data_14".threshold AS threshold, "DT_node_data_14".depth AS depth, "DT_node_data_14".parent_id AS parent_id, "DT_node_data_14"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".node_id), 
"XGB_Tree_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."Estimator" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 < -0.7232382297515869) THEN 1 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 < 0.029281165450811386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 < 0.15868860483169556) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 < -0.6169857978820801) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 1 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 1 AS depth, 0 AS parent_id, -6.133334159851074 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, -4.635502338409424 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 3 AS parent_id, 1.3295211791992188 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 0.3705681562423706 AS "Estimator" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS node_id, NULL AS feature, CAST(NULL AS DOUBLE) AS threshold, 3 AS depth, 4 AS parent_id, 9.8074369430542 AS "Estimator" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
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
FROM (SELECT "XGB_Sum_Union"."KEY" AS "KEY", sum(CAST("XGB_Sum_Union"."Estimator" AS DOUBLE)) AS "Estimator" 
FROM "XGB_Sum_Union" GROUP BY "XGB_Sum_Union"."KEY") AS "T")
 SELECT "XGB_Sum_sum"."KEY" AS "KEY", "XGB_Sum_sum"."Estimator" + 0.5 AS "Estimator" 
FROM "XGB_Sum_sum"