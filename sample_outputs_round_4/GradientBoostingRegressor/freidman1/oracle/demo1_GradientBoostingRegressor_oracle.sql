-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.42930352687835693) THEN CASE WHEN ("ADS"."Feature_1" <= 0.36142027378082275) THEN 2 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.4666977524757385) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.6462945938110352) THEN CASE WHEN ("ADS"."Feature_1" <= 0.5262073874473572) THEN 8 ELSE 9 END ELSE 10 END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.42930352687835693 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.646771690706373e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.36142027378082275 AS threshold, 49 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.527413851457682 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.643899627106192 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_0' AS feature, 0.4666977524757385 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.1524936563186334 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.922842666264133 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.42114990807736546 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.6462945938110352 AS threshold, 51 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.4282995827730733 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, 'Feature_1' AS feature, 0.5262073874473572 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5733184438379886 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.353542517630436 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.8855515976000983 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.829098337487391 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0_0, "DT_Output"."Estimator" AS "Estimator_0_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.4023663103580475) THEN CASE WHEN ("ADS"."Feature_0" <= 0.3700975775718689) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.5143864154815674) THEN CASE WHEN ("ADS"."Feature_1" <= 0.5244010090827942) THEN 6 ELSE 7 END ELSE 8 END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4023663103580475 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.7000623958883807e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.3700975775718689 AS threshold, 45 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.467111271057326 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.94819131346368 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.9607412453106117 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_0' AS feature, 0.5143864154815674 AS threshold, 55 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.018545585410545 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_1' AS feature, 0.5244010090827942 AS threshold, 32 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1996099967124496 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.6525211299140243 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.833843343735809 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.549238578381807 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1_0, "DT_Output_1"."Estimator" AS "Estimator_1_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.4498259425163269) THEN CASE WHEN ("ADS"."Feature_1" <= 0.36142027378082275) THEN 2 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.5103632807731628) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.2817780375480652) THEN 7 ELSE CASE WHEN ("ADS"."Feature_1" <= 0.5300049185752869) THEN 9 ELSE 10 END END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.4498259425163269 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.291500322826323e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_1' AS feature, 0.36142027378082275 AS threshold, 50 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.0305516883306978 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.834087735508651 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_4' AS feature, 0.5103632807731628 AS threshold, 35 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.8290362395401464 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.2590178179675093 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.521501917863474 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_0' AS feature, 0.2817780375480652 AS threshold, 50 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.0305516883307027 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.152859499353056 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, 'Feature_1' AS feature, 0.5300049185752869 AS threshold, 35 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.3948707687665998 AS "Estimator" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8747827957758535 AS "Estimator" FROM DUAL UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.284936748509658 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2_0, "DT_Output_2"."Estimator" AS "Estimator_2_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.7688162922859192) THEN CASE WHEN ("ADS"."Feature_0" <= 0.5196253061294556) THEN CASE WHEN ("ADS"."Feature_0" <= 0.23490126430988312) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.30610334873199463) THEN 6 ELSE 7 END END ELSE 8 END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.7688162922859192 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.971756091734278e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'Feature_0' AS feature, 0.5196253061294556 AS threshold, 79 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.9563822172954254 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.23490126430988312 AS threshold, 45 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.4850713575685393 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.035130361424354 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.4516986883313299 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, 'Feature_3' AS feature, 0.30610334873199463 AS threshold, 34 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.066882821301343 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.8441607808850807 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.9779264234877663 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.5978188174447063 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3_0, "DT_Output_3"."Estimator" AS "Estimator_3_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.2145853042602539) THEN 1 ELSE CASE WHEN ("ADS"."Feature_0" <= 0.5196253061294556) THEN CASE WHEN ("ADS"."Feature_1" <= 0.5693883895874023) THEN 4 ELSE 5 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.4869059920310974) THEN 7 ELSE 8 END END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_3' AS feature, 0.2145853042602539 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.4210854715202005e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 29 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.668263583717703 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_0' AS feature, 0.5196253061294556 AS threshold, 71 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0898541398283599 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'Feature_1' AS feature, 0.5693883895874023 AS threshold, 39 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.4074647457576386 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.7478893873698667 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.003508561202601 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, 'Feature_4' AS feature, 0.4869059920310974 AS threshold, 32 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.9147115316362955 AS "Estimator" FROM DUAL UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3779862195670929 AS "Estimator" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.65633355198139 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".count AS count, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"RF_Tree_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS join_key_4_0, "DT_Output_4"."Estimator" AS "Estimator_4_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" <= 0.23490126430988312) THEN 1 ELSE CASE WHEN ("ADS"."Feature_1" <= 0.20582570135593414) THEN 3 ELSE CASE WHEN ("ADS"."Feature_3" <= 0.5817486047744751) THEN 5 ELSE 6 END END END AS node_id_2 
FROM "INPUT_DATA" "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'Feature_0' AS feature, 0.23490126430988312 AS threshold, 100 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.1546319456101628e-15 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.0102443626475814 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'Feature_1' AS feature, 0.20582570135593414 AS threshold, 78 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.8490432817723967 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.341732444115071 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'Feature_3' AS feature, 0.5817486047744751 AS threshold, 60 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.8062759995386368 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 41 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5048118425453817 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.6146986541030275 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".count AS count, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"RF_Tree_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS join_key_5_0, "DT_Output_5"."Estimator" AS "Estimator_5_0" 
FROM "DT_Output_5"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0_0".join_key_0_0 AS join_key_0_0, "RF_Tree_0_0"."Estimator_0_0" AS "Estimator_0_0", "RF_Tree_1_0".join_key_1_0 AS join_key_1_0, "RF_Tree_1_0"."Estimator_1_0" AS "Estimator_1_0", "RF_Tree_2_0".join_key_2_0 AS join_key_2_0, "RF_Tree_2_0"."Estimator_2_0" AS "Estimator_2_0", "RF_Tree_3_0".join_key_3_0 AS join_key_3_0, "RF_Tree_3_0"."Estimator_3_0" AS "Estimator_3_0", "RF_Tree_4_0".join_key_4_0 AS join_key_4_0, "RF_Tree_4_0"."Estimator_4_0" AS "Estimator_4_0", "RF_Tree_5_0".join_key_5_0 AS join_key_5_0, "RF_Tree_5_0"."Estimator_5_0" AS "Estimator_5_0" 
FROM "RF_Tree_0_0" LEFT OUTER JOIN "RF_Tree_1_0" ON "RF_Tree_0_0".join_key_0_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_2_0" ON "RF_Tree_2_0".join_key_2_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_3_0" ON "RF_Tree_3_0".join_key_3_0 = "RF_Tree_2_0".join_key_2_0 LEFT OUTER JOIN "RF_Tree_4_0" ON "RF_Tree_4_0".join_key_4_0 = "RF_Tree_3_0".join_key_3_0 LEFT OUTER JOIN "RF_Tree_5_0" ON "RF_Tree_5_0".join_key_5_0 = "RF_Tree_4_0".join_key_4_0), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0_0 AS "KEY", 13.9977077913 + 0.1 * "RF_Join_CTE"."Estimator_0_0" + 0.1 * "RF_Join_CTE"."Estimator_1_0" + 0.1 * "RF_Join_CTE"."Estimator_2_0" + 0.1 * "RF_Join_CTE"."Estimator_3_0" + 0.1 * "RF_Join_CTE"."Estimator_4_0" + 0.1 * "RF_Join_CTE"."Estimator_5_0" AS "Estimator" 
FROM "RF_Join_CTE")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"