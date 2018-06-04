-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : boston
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602145237_guq_quantiles part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602145237_guq_quantiles (
	"KEY" BIGINT, 
	"Quantile" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602145237_guq_quantiles part 2. Populate

INSERT INTO tmp_20180602145237_guq_quantiles WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.824999809265137) THEN CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_5" <= 6.5269999504089355) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.6147900223731995) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.444999694824219) THEN CASE WHEN ("ADS"."Feature_12" <= 10.655000686645508) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 2.7422351837158203) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 21.239873417721512 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 26.69473684210526 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 18.847619047619048 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 13.593814432989692 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 31.662500000000005 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 20.266666666666666 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 47.33333333333333 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 21.9 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", 0.09156737402314616 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.604999542236328) THEN CASE WHEN ("ADS"."Feature_4" <= 0.5740000009536743) THEN CASE WHEN ("ADS"."Feature_5" <= 7.140999794006348) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 1.3684099912643433) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 14.805000305175781) THEN CASE WHEN ("ADS"."Feature_5" <= 6.923999786376953) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 25.84343434343436 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 42.544000000000004 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 39.333333333333336 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 20.889108910891103 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 29.925 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 18.241071428571438 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 13.107777777777775 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", 0.08417881330315602 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.604999542236328) THEN CASE WHEN ("ADS"."Feature_5" <= 7.433000087738037) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 8.752500534057617) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 16.31999969482422) THEN CASE WHEN ("ADS"."Feature_9" <= 281.5) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.940000057220459) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 27.253521126760557 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 46.27435897435897 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 21.9 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 23.99310344827586 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 19.357142857142875 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 10.359999999999998 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 16.58611111111111 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", 0.055261434912609445 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" <= 6.585000038146973) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= 534.5) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 9 ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6649999618530273) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 23.897058823529413 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 32.84594594594594 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 45.74 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 21.9 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 21.02447916666667 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS nid, 13.23636363636364 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", 0.0896750737608021 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.543499946594238) THEN CASE WHEN ("ADS"."Feature_7" <= 1.1333000659942627) THEN 2 ELSE CASE WHEN ("ADS"."Feature_12" <= 19.799999237060547) THEN 4 ELSE 5 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 5.184999942779541) THEN CASE WHEN ("ADS"."Feature_0" <= 0.5193799734115601) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 2 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 20.112244897959176 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS nid, 12.72258064516128 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS nid, 35.90784313725492 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS nid, 49.30833333333334 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 29.792537313432838 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS nid, 15.984615384615385 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", 0.07661634132308465 AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 9.614999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 7.444999694824219) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.100000381469727) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 14.90999984741211) THEN CASE WHEN ("ADS"."Feature_10" <= 13.850000381469727) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 25.989189189189197 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 47.066666666666656 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 21.899999999999995 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 30.8125 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 21.44852941176471 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 18.38139534883721 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 11.786842105263156 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", 0.03469236072498822 AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 6.678500175476074) THEN CASE WHEN ("ADS"."Feature_7" <= 1.1716500520706177) THEN CASE WHEN ("ADS"."Feature_12" <= 23.75) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 19.650001525878906) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.454500198364258) THEN CASE WHEN ("ADS"."Feature_5" <= 6.689499855041504) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6825000047683716) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 13.8 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 22.583035714285707 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 13.675177304964542 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 29.737931034482752 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 46.61249999999999 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 21.899999999999995 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", 0.0605295982027953 AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.670000076293945) THEN CASE WHEN ("ADS"."Feature_5" <= 7.140999794006348) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 16.049999237060547) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_9" <= 551.5) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 27.346753246753245 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 49.07000000000001 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 36.6294117647059 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 19.508629441624368 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 16.7 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 7.940384615384612 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", 0.04511738091616263 AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.579999923706055) THEN CASE WHEN ("ADS"."Feature_5" <= 7.406000137329102) THEN CASE WHEN ("ADS"."Feature_12" <= 5.494999885559082) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_11" <= 364.489990234375) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 20.200000762939453) THEN CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6030000448226929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 33.931428571428576 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 26.950000000000003 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 21.9 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 46.0483870967742 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 20.819565217391304 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 17.57 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 8.98846153846154 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", 0.036298071239969976 AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 8.005000114440918) THEN CASE WHEN ("ADS"."Feature_5" <= 6.923999786376953) THEN CASE WHEN ("ADS"."Feature_5" <= 6.130499839782715) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.440999984741211) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.3007500171661377) THEN CASE WHEN ("ADS"."Feature_5" <= 5.911999702453613) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= 4.119999885559082) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 20.561111111111103 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 28.09016393442622 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 34.17352941176472 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 44.3076923076923 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 26.61818181818182 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 15.484905660377331 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", 0.06290838203669849 AS "Weight", 9 AS est_index 
FROM "DT_Output_9"), 
"DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 6.659999847412109) THEN CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_5" <= 6.5335001945495605) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 8.367500305175781) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN CASE WHEN ("ADS"."Feature_11" <= 174.31500244140625) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.675000011920929) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 24.22000000000001 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 32.733707865168554 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 41.9923076923077 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 49.800000000000004 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 12.166666666666664 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 22.22214765100673 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 14.148000000000007 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 7.2631578947368425 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", 0.06818761345367991 AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 13.295000076293945) THEN CASE WHEN ("ADS"."Feature_10" <= 20.600000381469727) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.05408500134944916) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6069999933242798) THEN CASE WHEN ("ADS"."Feature_12" <= 18.75) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= 2.102449893951416) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 44.93541666666667 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 31.890449438202264 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 12.39714285714285 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 22.46666666666667 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 12.98235294117647 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 23.597777777777786 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 9.455882352941174 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 21.25714285714286 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", 0.0628807427865766 AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_5" <= 7.121000289916992) THEN CASE WHEN ("ADS"."Feature_7" <= 1.1716500520706177) THEN CASE WHEN ("ADS"."Feature_11" <= 381.5249938964844) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_5" <= 6.0355000495910645) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 7.437000274658203) THEN CASE WHEN ("ADS"."Feature_8" <= 16.0) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.9753000736236572) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 13.8 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 15.877241379310343 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 24.18686131386861 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 34.71515151515151 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 15.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 21.899999999999995 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 46.337288135593205 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", 0.0611629621048231 AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_5" <= 6.680500030517578) THEN CASE WHEN ("ADS"."Feature_6" <= 20.950000762939453) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_12" <= 4.725000381469727) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.1716500520706177) THEN CASE WHEN ("ADS"."Feature_11" <= 381.5249938964844) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_12" <= 19.850000381469727) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 21.5 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 26.628125 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 45.58874999999999 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 35.06730769230769 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 13.8 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 19.993333333333332 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 10.82205882352941 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", 0.030872089965387275 AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.864999771118164) THEN CASE WHEN ("ADS"."Feature_12" <= 4.494999885559082) THEN CASE WHEN ("ADS"."Feature_7" <= 3.2074499130249023) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_10" <= 13.850000381469727) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_7" <= 1.2271499633789062) THEN CASE WHEN ("ADS"."Feature_0" <= 13.865249633789062) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.6649999618530273) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 49.655102040816324 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 39.29354838709678 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 45.122727272727275 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 29.700000000000006 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 13.8 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 20.848407643312097 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 11.453030303030296 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", 0.07290815936572655 AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_12" <= 7.835000038146973) THEN CASE WHEN ("ADS"."Feature_5" <= 7.450500011444092) THEN CASE WHEN ("ADS"."Feature_7" <= 1.4849499464035034) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_8" <= 6.5) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 6.040500164031982) THEN CASE WHEN ("ADS"."Feature_7" <= 1.3155500888824463) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.659000039100647) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "BOSTON" AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE) AS "E" 
FROM (SELECT 3 AS nid, 50.0 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS nid, 29.445833333333326 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS nid, 48.48292682926829 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS nid, 37.76 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS nid, 22.579999999999995 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS nid, 12.641666666666689 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS nid, 28.69397590361445 AS "E" FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS nid, 13.28055555555555 AS "E" FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", 0.0671436018803937 AS "Weight", 15 AS est_index 
FROM "DT_Output_15"), 
"WE" AS 
(SELECT ensemble_score_union."KEY" AS "KEY", ensemble_score_union."Estimator" AS "Estimator", ensemble_score_union."Weight" AS "Weight", ensemble_score_union.est_index AS est_index 
FROM (SELECT "ADB_Model_0"."KEY" AS "KEY", "ADB_Model_0"."Estimator" AS "Estimator", "ADB_Model_0"."Weight" AS "Weight", "ADB_Model_0".est_index AS est_index 
FROM "ADB_Model_0" UNION ALL SELECT "ADB_Model_1"."KEY" AS "KEY", "ADB_Model_1"."Estimator" AS "Estimator", "ADB_Model_1"."Weight" AS "Weight", "ADB_Model_1".est_index AS est_index 
FROM "ADB_Model_1" UNION ALL SELECT "ADB_Model_2"."KEY" AS "KEY", "ADB_Model_2"."Estimator" AS "Estimator", "ADB_Model_2"."Weight" AS "Weight", "ADB_Model_2".est_index AS est_index 
FROM "ADB_Model_2" UNION ALL SELECT "ADB_Model_3"."KEY" AS "KEY", "ADB_Model_3"."Estimator" AS "Estimator", "ADB_Model_3"."Weight" AS "Weight", "ADB_Model_3".est_index AS est_index 
FROM "ADB_Model_3" UNION ALL SELECT "ADB_Model_4"."KEY" AS "KEY", "ADB_Model_4"."Estimator" AS "Estimator", "ADB_Model_4"."Weight" AS "Weight", "ADB_Model_4".est_index AS est_index 
FROM "ADB_Model_4" UNION ALL SELECT "ADB_Model_5"."KEY" AS "KEY", "ADB_Model_5"."Estimator" AS "Estimator", "ADB_Model_5"."Weight" AS "Weight", "ADB_Model_5".est_index AS est_index 
FROM "ADB_Model_5" UNION ALL SELECT "ADB_Model_6"."KEY" AS "KEY", "ADB_Model_6"."Estimator" AS "Estimator", "ADB_Model_6"."Weight" AS "Weight", "ADB_Model_6".est_index AS est_index 
FROM "ADB_Model_6" UNION ALL SELECT "ADB_Model_7"."KEY" AS "KEY", "ADB_Model_7"."Estimator" AS "Estimator", "ADB_Model_7"."Weight" AS "Weight", "ADB_Model_7".est_index AS est_index 
FROM "ADB_Model_7" UNION ALL SELECT "ADB_Model_8"."KEY" AS "KEY", "ADB_Model_8"."Estimator" AS "Estimator", "ADB_Model_8"."Weight" AS "Weight", "ADB_Model_8".est_index AS est_index 
FROM "ADB_Model_8" UNION ALL SELECT "ADB_Model_9"."KEY" AS "KEY", "ADB_Model_9"."Estimator" AS "Estimator", "ADB_Model_9"."Weight" AS "Weight", "ADB_Model_9".est_index AS est_index 
FROM "ADB_Model_9" UNION ALL SELECT "ADB_Model_10"."KEY" AS "KEY", "ADB_Model_10"."Estimator" AS "Estimator", "ADB_Model_10"."Weight" AS "Weight", "ADB_Model_10".est_index AS est_index 
FROM "ADB_Model_10" UNION ALL SELECT "ADB_Model_11"."KEY" AS "KEY", "ADB_Model_11"."Estimator" AS "Estimator", "ADB_Model_11"."Weight" AS "Weight", "ADB_Model_11".est_index AS est_index 
FROM "ADB_Model_11" UNION ALL SELECT "ADB_Model_12"."KEY" AS "KEY", "ADB_Model_12"."Estimator" AS "Estimator", "ADB_Model_12"."Weight" AS "Weight", "ADB_Model_12".est_index AS est_index 
FROM "ADB_Model_12" UNION ALL SELECT "ADB_Model_13"."KEY" AS "KEY", "ADB_Model_13"."Estimator" AS "Estimator", "ADB_Model_13"."Weight" AS "Weight", "ADB_Model_13".est_index AS est_index 
FROM "ADB_Model_13" UNION ALL SELECT "ADB_Model_14"."KEY" AS "KEY", "ADB_Model_14"."Estimator" AS "Estimator", "ADB_Model_14"."Weight" AS "Weight", "ADB_Model_14".est_index AS est_index 
FROM "ADB_Model_14" UNION ALL SELECT "ADB_Model_15"."KEY" AS "KEY", "ADB_Model_15"."Estimator" AS "Estimator", "ADB_Model_15"."Weight" AS "Weight", "ADB_Model_15".est_index AS est_index 
FROM "ADB_Model_15") AS ensemble_score_union), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WE" AS u1, "WE" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW")
 SELECT "Quantiles"."KEY", "Quantiles"."Quantile" 
FROM (SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles"

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM tmp_20180602145237_guq_quantiles AS "Quantiles"