-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.455160074592 ELSE "ADS"."Feature_0" END AS impute_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.522442372162 ELSE "ADS"."Feature_1" END AS impute_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.540768166714 ELSE "ADS"."Feature_2" END AS impute_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.495247506175 ELSE "ADS"."Feature_3" END AS impute_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.486828312205 ELSE "ADS"."Feature_4" END AS impute_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.498885855465 ELSE "ADS"."Feature_5" END AS impute_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.457750959021 ELSE "ADS"."Feature_6" END AS impute_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.537775692225 ELSE "ADS"."Feature_7" END AS impute_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.482134032865 ELSE "ADS"."Feature_8" END AS impute_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.465664929544 ELSE "ADS"."Feature_9" END AS impute_11 
FROM "INPUT_DATA" "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_2 - 0.455160074592 AS impute_2, "ADS_imp_1_OUT".impute_3 - 0.522442372162 AS impute_3, "ADS_imp_1_OUT".impute_4 - 0.540768166714 AS impute_4, "ADS_imp_1_OUT".impute_5 - 0.495247506175 AS impute_5, "ADS_imp_1_OUT".impute_6 - 0.486828312205 AS impute_6, "ADS_imp_1_OUT".impute_7 - 0.498885855465 AS impute_7, "ADS_imp_1_OUT".impute_8 - 0.457750959021 AS impute_8, "ADS_imp_1_OUT".impute_9 - 0.537775692225 AS impute_9, "ADS_imp_1_OUT".impute_10 - 0.482134032865 AS impute_10, "ADS_imp_1_OUT".impute_11 - 0.465664929544 AS impute_11 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_2 * -0.232480248798 + "CenteredDataForPCA".impute_3 * -0.522315171087 + "CenteredDataForPCA".impute_4 * 0.131161114065 + "CenteredDataForPCA".impute_5 * 0.554032472905 + "CenteredDataForPCA".impute_6 * 0.329087840924 + "CenteredDataForPCA".impute_7 * 0.134679021848 + "CenteredDataForPCA".impute_8 * -0.254642938617 + "CenteredDataForPCA".impute_9 * -0.0801445869026 + "CenteredDataForPCA".impute_10 * 0.171182832367 + "CenteredDataForPCA".impute_11 * -0.349252899818 AS anoova_2, "CenteredDataForPCA".impute_2 * 0.579381757148 + "CenteredDataForPCA".impute_3 * -0.429947089671 + "CenteredDataForPCA".impute_4 * 0.113764301319 + "CenteredDataForPCA".impute_5 * -0.129423929727 + "CenteredDataForPCA".impute_6 * -0.0766259551594 + "CenteredDataForPCA".impute_7 * -0.201623726277 + "CenteredDataForPCA".impute_8 * -0.309407660363 + "CenteredDataForPCA".impute_9 * -0.218299039676 + "CenteredDataForPCA".impute_10 * -0.508938771166 + "CenteredDataForPCA".impute_11 * -0.0289741594145 AS anoova_3, "CenteredDataForPCA".impute_2 * -0.482685286157 + "CenteredDataForPCA".impute_3 * -0.0255404088481 + "CenteredDataForPCA".impute_4 * 0.085748701264 + "CenteredDataForPCA".impute_5 * -0.129599450621 + "CenteredDataForPCA".impute_6 * 0.237019384297 + "CenteredDataForPCA".impute_7 * -0.438080406685 + "CenteredDataForPCA".impute_8 * -0.458784761169 + "CenteredDataForPCA".impute_9 * 0.0183873751 + "CenteredDataForPCA".impute_10 * -0.0966945548292 + "CenteredDataForPCA".impute_11 * 0.523402067098 AS anoova_4, "CenteredDataForPCA".impute_2 * -0.0754702330954 + "CenteredDataForPCA".impute_3 * 0.395875913706 + "CenteredDataForPCA".impute_4 * 0.299350462747 + "CenteredDataForPCA".impute_5 * 0.498090551057 + "CenteredDataForPCA".impute_6 * -0.188953413442 + "CenteredDataForPCA".impute_7 * 0.202149815375 + "CenteredDataForPCA".impute_8 * -0.153012372996 + "CenteredDataForPCA".impute_9 * 0.286057135344 + "CenteredDataForPCA".impute_10 * -0.563150217413 + "CenteredDataForPCA".impute_11 * 0.0305618980745 AS anoova_5, "CenteredDataForPCA".impute_2 * -0.148472783713 + "CenteredDataForPCA".impute_3 * -0.0706124361895 + "CenteredDataForPCA".impute_4 * -0.482974130087 + "CenteredDataForPCA".impute_5 * 0.214564564411 + "CenteredDataForPCA".impute_6 * 0.153162678886 + "CenteredDataForPCA".impute_7 * 0.268130141584 + "CenteredDataForPCA".impute_8 * 0.280825460701 + "CenteredDataForPCA".impute_9 * -0.514330102361 + "CenteredDataForPCA".impute_10 * -0.370802534182 + "CenteredDataForPCA".impute_11 * 0.342669318381 AS anoova_6, "CenteredDataForPCA".impute_2 * 0.493675332177 + "CenteredDataForPCA".impute_3 * 0.281269594246 + "CenteredDataForPCA".impute_4 * 0.204775552637 + "CenteredDataForPCA".impute_5 * 0.115926099042 + "CenteredDataForPCA".impute_6 * 0.718572078636 + "CenteredDataForPCA".impute_7 * 0.0903167814891 + "CenteredDataForPCA".impute_8 * 0.0317805988328 + "CenteredDataForPCA".impute_9 * 0.0232662783069 + "CenteredDataForPCA".impute_10 * 0.152074449428 + "CenteredDataForPCA".impute_11 * 0.269479640798 AS anoova_7, "CenteredDataForPCA".impute_2 * -0.087116931866 + "CenteredDataForPCA".impute_3 * -0.00823968964172 + "CenteredDataForPCA".impute_4 * -0.447322757733 + "CenteredDataForPCA".impute_5 * -0.352941045236 + "CenteredDataForPCA".impute_6 * 0.397045041482 + "CenteredDataForPCA".impute_7 * 0.241118834944 + "CenteredDataForPCA".impute_8 * -0.190298040648 + "CenteredDataForPCA".impute_9 * 0.4611286626 + "CenteredDataForPCA".impute_10 * -0.321903904153 + "CenteredDataForPCA".impute_11 * -0.315308654995 AS anoova_8, "CenteredDataForPCA".impute_2 * 0.0748509837158 + "CenteredDataForPCA".impute_3 * 0.318539586124 + "CenteredDataForPCA".impute_4 * -0.360805758324 + "CenteredDataForPCA".impute_5 * 0.322499452623 + "CenteredDataForPCA".impute_6 * 0.115487399987 + "CenteredDataForPCA".impute_7 * -0.701850589957 + "CenteredDataForPCA".impute_8 * 0.0631723273268 + "CenteredDataForPCA".impute_9 * -0.088232459573 + "CenteredDataForPCA".impute_10 * -0.0653977687143 + "CenteredDataForPCA".impute_11 * -0.369809412986 AS anoova_9, "CenteredDataForPCA".impute_2 * 0.281164449548 + "CenteredDataForPCA".impute_3 * 0.0800776614245 + "CenteredDataForPCA".impute_4 * -0.498402307875 + "CenteredDataForPCA".impute_5 * 0.247082248256 + "CenteredDataForPCA".impute_6 * -0.285499961145 + "CenteredDataForPCA".impute_7 * 0.16628016189 + "CenteredDataForPCA".impute_8 * -0.557933781807 + "CenteredDataForPCA".impute_9 * 0.0938809815676 + "CenteredDataForPCA".impute_10 * 0.34027737742 + "CenteredDataForPCA".impute_11 * 0.245005847556 AS anoova_10, "CenteredDataForPCA".impute_2 * -0.116549961272 + "CenteredDataForPCA".impute_3 * 0.439221831806 + "CenteredDataForPCA".impute_4 * 0.137878801763 + "CenteredDataForPCA".impute_5 * -0.249614747621 + "CenteredDataForPCA".impute_6 * 0.0406337819389 + "CenteredDataForPCA".impute_7 * 0.223602133774 + "CenteredDataForPCA".impute_8 * -0.41732540327 + "CenteredDataForPCA".impute_9 * -0.607816231462 + "CenteredDataForPCA".impute_10 * 0.0296802633242 + "CenteredDataForPCA".impute_11 * -0.340662887398 AS anoova_11 
FROM "CenteredDataForPCA"), 
"DT_node_lookup" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.12047699093818665) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= 0.02428387477993965) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.12047699093818665 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.627166069337159 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_5' AS feature, 0.02428387477993965 AS threshold, 43 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.65563618869376 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.426410019330818 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.007199295301133 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.629969160340405 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0, "DT_Output"."Estimator" AS "Estimator_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.04184429347515106) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.03550577908754349) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.04184429347515106 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.885332948415146 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_9' AS feature, 0.03550577908754349 AS threshold, 43 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.26966705551322 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 27 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.903258126333442 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.368080768182166 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.840928755175035 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1, "DT_Output_1"."Estimator" AS "Estimator_1" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -0.2062334418296814) THEN 1 ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= 0.23259420692920685) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.02947702258825302) THEN 4 ELSE 5 END ELSE 6 END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -0.2062334418296814 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.725965455106502 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.3396251410475 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anoova_5' AS feature, 0.23259420692920685 AS threshold, 49 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.036171003461794 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, 'anoova_9' AS feature, 0.02947702258825302 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.575588048314966 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.901496425853965 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.630155039517113 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.59219117496873 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2, "DT_Output_2"."Estimator" AS "Estimator_2" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.15059182047843933) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= -0.04919803515076637) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.15059182047843933 AS threshold, 61 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.343185545518052 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_5' AS feature, -0.04919803515076637 AS threshold, 42 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.129329457811503 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.188842708334159 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.944623513774193 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 19 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.66396967707785 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3, "DT_Output_3"."Estimator" AS "Estimator_3" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.10199016332626343) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.028804056346416473) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.10199016332626343 AS threshold, 65 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.937692000176284 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_9' AS feature, 0.028804056346416473 AS threshold, 42 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.855497408368919 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.212884580372863 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 20 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.220859880683237 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.194457900182677 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".count AS count, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"RF_Tree_4" AS 
(SELECT "DT_Output_4"."KEY" AS join_key_4, "DT_Output_4"."Estimator" AS "Estimator_4" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.12047699093818665) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.03519650176167488) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -0.1363629698753357) THEN 3 ELSE 4 END ELSE 5 END ELSE 6 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.12047699093818665 AS threshold, 63 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.83281114502929 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_9' AS feature, 0.03519650176167488 AS threshold, 46 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.764138030687938 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anoova_7' AS feature, -0.1363629698753357 AS threshold, 30 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.654717646014916 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.182738748587663 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.059788411740938 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.392341092325537 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.22874151300466 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".count AS count, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"RF_Tree_5" AS 
(SELECT "DT_Output_5"."KEY" AS join_key_5, "DT_Output_5"."Estimator" AS "Estimator_5" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.061079077422618866) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= 0.01614506170153618) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.061079077422618866 AS threshold, 58 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.256775209671673 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_5' AS feature, 0.01614506170153618 AS threshold, 43 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.445030288859632 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.366024074778451 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 21 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.464636325395649 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.289368743092016 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".node_id AS node_id, "DT_node_data_6".feature AS feature, "DT_node_data_6".threshold AS threshold, "DT_node_data_6".count AS count, "DT_node_data_6".depth AS depth, "DT_node_data_6".parent_id AS parent_id, "DT_node_data_6"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".node_id), 
"RF_Tree_6" AS 
(SELECT "DT_Output_6"."KEY" AS join_key_6, "DT_Output_6"."Estimator" AS "Estimator_6" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -0.06332531571388245) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= 0.021686753258109093) THEN 2 ELSE 3 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_5 <= -0.05498979985713959) THEN 5 ELSE 6 END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -0.06332531571388245 AS threshold, 64 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.074036564275481 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_5' AS feature, 0.021686753258109093 AS threshold, 32 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.723075935907177 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.208053598977504 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.354638452600673 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, 'anoova_5' AS feature, -0.05498979985713959 AS threshold, 32 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.833859910620902 AS "Estimator" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.594946999347103 AS "Estimator" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.594420363483653 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".node_id AS node_id, "DT_node_data_7".feature AS feature, "DT_node_data_7".threshold AS threshold, "DT_node_data_7".count AS count, "DT_node_data_7".depth AS depth, "DT_node_data_7".parent_id AS parent_id, "DT_node_data_7"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".node_id), 
"RF_Tree_7" AS 
(SELECT "DT_Output_7"."KEY" AS join_key_7, "DT_Output_7"."Estimator" AS "Estimator_7" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.043660469353199005) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_11 <= 0.047301068902015686) THEN 2 ELSE 3 END ELSE 4 END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.043660469353199005 AS threshold, 65 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.727024938984039 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, 'anoova_11' AS feature, 0.047301068902015686 AS threshold, 39 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.26621635061346 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.569649052588014 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.365376993567235 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.26818851737097 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".node_id AS node_id, "DT_node_data_8".feature AS feature, "DT_node_data_8".threshold AS threshold, "DT_node_data_8".count AS count, "DT_node_data_8".depth AS depth, "DT_node_data_8".parent_id AS parent_id, "DT_node_data_8"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".node_id), 
"RF_Tree_8" AS 
(SELECT "DT_Output_8"."KEY" AS join_key_8, "DT_Output_8"."Estimator" AS "Estimator_8" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -0.2062334418296814) THEN 1 ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.04184429347515106) THEN 3 ELSE 4 END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -0.2062334418296814 AS threshold, 61 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.242839021759488 AS "Estimator" FROM DUAL UNION ALL SELECT 1 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.867922627370458 AS "Estimator" FROM DUAL UNION ALL SELECT 2 AS node_id, 'anoova_7' AS feature, 0.04184429347515106 AS threshold, 45 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.944195397355218 AS "Estimator" FROM DUAL UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.109712070060436 AS "Estimator" FROM DUAL UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 23 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 17.883506343352565 AS "Estimator" FROM DUAL) "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".node_id AS node_id, "DT_node_data_9".feature AS feature, "DT_node_data_9".threshold AS threshold, "DT_node_data_9".count AS count, "DT_node_data_9".depth AS depth, "DT_node_data_9".parent_id AS parent_id, "DT_node_data_9"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".node_id), 
"RF_Tree_9" AS 
(SELECT "DT_Output_9"."KEY" AS join_key_9, "DT_Output_9"."Estimator" AS "Estimator_9" 
FROM "DT_Output_9"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0".join_key_0 AS join_key_0, "RF_Tree_0"."Estimator_0" AS "Estimator_0", "RF_Tree_1".join_key_1 AS join_key_1, "RF_Tree_1"."Estimator_1" AS "Estimator_1", "RF_Tree_2".join_key_2 AS join_key_2, "RF_Tree_2"."Estimator_2" AS "Estimator_2", "RF_Tree_3".join_key_3 AS join_key_3, "RF_Tree_3"."Estimator_3" AS "Estimator_3", "RF_Tree_4".join_key_4 AS join_key_4, "RF_Tree_4"."Estimator_4" AS "Estimator_4", "RF_Tree_5".join_key_5 AS join_key_5, "RF_Tree_5"."Estimator_5" AS "Estimator_5", "RF_Tree_6".join_key_6 AS join_key_6, "RF_Tree_6"."Estimator_6" AS "Estimator_6", "RF_Tree_7".join_key_7 AS join_key_7, "RF_Tree_7"."Estimator_7" AS "Estimator_7", "RF_Tree_8".join_key_8 AS join_key_8, "RF_Tree_8"."Estimator_8" AS "Estimator_8", "RF_Tree_9".join_key_9 AS join_key_9, "RF_Tree_9"."Estimator_9" AS "Estimator_9" 
FROM "RF_Tree_0" LEFT OUTER JOIN "RF_Tree_1" ON "RF_Tree_0".join_key_0 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_2" ON "RF_Tree_2".join_key_2 = "RF_Tree_1".join_key_1 LEFT OUTER JOIN "RF_Tree_3" ON "RF_Tree_3".join_key_3 = "RF_Tree_2".join_key_2 LEFT OUTER JOIN "RF_Tree_4" ON "RF_Tree_4".join_key_4 = "RF_Tree_3".join_key_3 LEFT OUTER JOIN "RF_Tree_5" ON "RF_Tree_5".join_key_5 = "RF_Tree_4".join_key_4 LEFT OUTER JOIN "RF_Tree_6" ON "RF_Tree_6".join_key_6 = "RF_Tree_5".join_key_5 LEFT OUTER JOIN "RF_Tree_7" ON "RF_Tree_7".join_key_7 = "RF_Tree_6".join_key_6 LEFT OUTER JOIN "RF_Tree_8" ON "RF_Tree_8".join_key_8 = "RF_Tree_7".join_key_7 LEFT OUTER JOIN "RF_Tree_9" ON "RF_Tree_9".join_key_9 = "RF_Tree_8".join_key_8), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0 AS "KEY", "RF_Join_CTE"."Estimator_0" / 10 + "RF_Join_CTE"."Estimator_1" / 10 + "RF_Join_CTE"."Estimator_2" / 10 + "RF_Join_CTE"."Estimator_3" / 10 + "RF_Join_CTE"."Estimator_4" / 10 + "RF_Join_CTE"."Estimator_5" / 10 + "RF_Join_CTE"."Estimator_6" / 10 + "RF_Join_CTE"."Estimator_7" / 10 + "RF_Join_CTE"."Estimator_8" / 10 + "RF_Join_CTE"."Estimator_9" / 10 AS "Estimator" 
FROM "RF_Join_CTE")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"