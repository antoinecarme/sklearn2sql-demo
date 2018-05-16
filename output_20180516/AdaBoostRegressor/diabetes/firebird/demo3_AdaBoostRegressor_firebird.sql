-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor
-- Dataset : diabetes
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_8DYW3R_QUA part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_8DYW3R_QUA" (
	"KEY" BIGINT NOT NULL, 
	"Quantile" DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_8DYW3R_QUA part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_8DYW3R_QUA" ("KEY", "Quantile") SELECT "U"."KEY", "U"."Quantile" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.005612778477370739) THEN CASE WHEN ("ADS"."Feature_2" <= 0.0061888848431408405) THEN CASE WHEN ("ADS"."Feature_8" <= -0.04327875375747681) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.061809033155441284) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06654636561870575) THEN CASE WHEN ("ADS"."Feature_2" <= -0.00782267190515995) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.02671290934085846) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 76.73333333333333 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 106.52808988764045 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 244.0 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 155.5185185185185 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 155.5 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 198.71428571428572 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 297.3157894736842 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 223.5 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", 0.1150198392581745 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.03679146245121956) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03135676681995392) THEN CASE WHEN ("ADS"."Feature_2" <= 0.07247433066368103) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.04182075336575508) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN CASE WHEN ("ADS"."Feature_2" <= 0.07894119620323181) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.03883656859397888) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 106.35754189944134 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 219.66666666666666 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 131.06666666666666 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 197.14285714285714 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 218.5064935064935 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 291.26666666666665 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 103.8 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 201.0 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", 0.10008342787417404 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.019742898643016815) THEN CASE WHEN ("ADS"."Feature_3" <= 0.06835110485553741) THEN CASE WHEN ("ADS"."Feature_2" <= 0.00996122695505619) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.003019241616129875) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.06977979838848114) THEN CASE WHEN ("ADS"."Feature_3" <= 0.03679146245121956) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.020136792212724686) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 95.83333333333333 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 136.88888888888889 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 235.25 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 150.5 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 162.04516129032257 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 221.15686274509804 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 298.1666666666667 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 217.54545454545453 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", 0.0656540990304207 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.00026727162185125053) THEN CASE WHEN ("ADS"."Feature_2" <= 0.004033260513097048) THEN CASE WHEN ("ADS"."Feature_5" <= 0.11267216503620148) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.07634904980659485) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_5" <= 0.06663933396339417) THEN CASE WHEN ("ADS"."Feature_0" <= -0.029126055538654327) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_8" <= 0.05185259133577347) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 100.7 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 253.0 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 302.0 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 158.17777777777778 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 162.41176470588235 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 232.24528301886792 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 110.70833333333333 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 246.66666666666666 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", 0.07733009241708044 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.04552902653813362) THEN CASE WHEN ("ADS"."Feature_8" <= -0.009924227371811867) THEN CASE WHEN ("ADS"."Feature_5" <= 0.10531317442655563) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.0009933558758348227) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.025930337607860565) THEN CASE WHEN ("ADS"."Feature_3" <= -0.010834917426109314) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.059035107493400574) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 104.24166666666666 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 253.0 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 192.66666666666666 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 146.61855670103094 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 68.0 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 221.0 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 146.4 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 276.9848484848485 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", 0.07374464329551364 AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= 0.01293455995619297) THEN CASE WHEN ("ADS"."Feature_6" <= -0.024992655962705612) THEN CASE WHEN ("ADS"."Feature_6" <= -0.04156002774834633) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= -0.02291204035282135) THEN CASE WHEN ("ADS"."Feature_2" <= -0.033151254057884216) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.09349165856838226) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 141.0 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 218.10526315789474 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 183.91666666666666 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 113.04580152671755 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 176.88888888888889 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 87.84615384615384 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 216.8230769230769 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 301.4 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", 0.053981577575733124 AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_8" <= 0.02200143411755562) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.026550274342298508) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= 0.03413021191954613) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1376819610595703) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.05092128366231918) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 124.71111111111111 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 78.91489361702128 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 230.82142857142858 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 120.27272727272727 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 173.36111111111111 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 346.0 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 128.0 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 265.68333333333334 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", 0.07001474719339128 AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= -0.015575071796774864) THEN CASE WHEN ("ADS"."Feature_3" <= 0.05917011946439743) THEN CASE WHEN ("ADS"."Feature_8" <= -0.04914000630378723) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.07179398089647293) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.005111072678118944) THEN CASE WHEN ("ADS"."Feature_7" <= 0.03061874583363533) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.05553308129310608) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 77.53333333333333 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 119.72058823529412 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 262.6666666666667 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 204.75 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 118.73417721518987 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 192.41666666666666 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 252.05494505494505 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 142.40740740740742 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", 0.06066527207490734 AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.047145746648311615) THEN CASE WHEN ("ADS"."Feature_8" <= -0.009431487880647182) THEN CASE WHEN ("ADS"."Feature_6" <= 0.021027816459536552) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03625963628292084) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.05042792856693268) THEN CASE WHEN ("ADS"."Feature_8" <= 0.01786671206355095) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.052737556397914886) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 130.54098360655738 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 78.84210526315789 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 149.10687022900763 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 216.78181818181818 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 85.9 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 192.0 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 98.0 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 272.33962264150944 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", 0.050221228613875284 AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03827231749892235) THEN CASE WHEN ("ADS"."Feature_2" <= 0.06924089789390564) THEN CASE WHEN ("ADS"."Feature_0" <= -0.08906293660402298) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.03820740059018135) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= -0.007283765822649002) THEN CASE WHEN ("ADS"."Feature_0" <= 0.012648137286305428) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_4" <= 0.038333673030138016) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 226.05 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 134.34939759036143 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 346.0 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 275.90909090909093 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 86.5 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 183.375 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 275.0833333333333 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 213.27272727272728 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", 0.04220668596379268 AS "Weight", 9 AS est_index 
FROM "DT_Output_9"), 
"DT_node_lookup_10" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= -0.02237313613295555) THEN CASE WHEN ("ADS"."Feature_6" <= -0.019470199942588806) THEN CASE WHEN ("ADS"."Feature_3" <= 0.035643838346004486) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= -0.07280658930540085) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_9" <= -0.011432964354753494) THEN CASE WHEN ("ADS"."Feature_5" <= -0.022607972845435143) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_6" <= 0.05968501418828964) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 140.2 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 252.66666666666666 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 148.875 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 88.66071428571429 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 90.72222222222223 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 175.05555555555554 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 207.4468085106383 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 75.76923076923077 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", 0.02380284469479391 AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= -0.02291204035282135) THEN CASE WHEN ("ADS"."Feature_4" <= -0.05247921496629715) THEN CASE WHEN ("ADS"."Feature_5" <= -0.06942366808652878) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.09451174736022949) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.045241665095090866) THEN CASE WHEN ("ADS"."Feature_1" <= 0.003019241616129875) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.08361412584781647) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 104.5 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 205.75 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 189.5 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 93.21428571428571 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 304.28 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 190.65625 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 285.0 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 160.20673076923077 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", 0.06835178949640038 AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_3" <= 0.02359379082918167) THEN CASE WHEN ("ADS"."Feature_9" <= -0.007290857844054699) THEN CASE WHEN ("ADS"."Feature_2" <= 0.026128407567739487) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_2" <= -0.006744860205799341) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.047684650868177414) THEN CASE WHEN ("ADS"."Feature_9" <= 0.05069863796234131) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.05442233011126518) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 136.22727272727272 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 63.851851851851855 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 119.93939393939394 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 200.98924731182797 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 158.18 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 271.3333333333333 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 277.23333333333335 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 321.125 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", 0.055774703092207105 AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_9" <= 0.03413021191954613) THEN CASE WHEN ("ADS"."Feature_2" <= 0.06870198249816895) THEN CASE WHEN ("ADS"."Feature_0" <= -0.09087920188903809) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_6" <= -0.0029028295539319515) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 0.03262709826231003) THEN CASE WHEN ("ADS"."Feature_9" <= 0.09626181423664093) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= -0.010517202317714691) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 246.84615384615384 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 146.9453781512605 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 315.6666666666667 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 211.0 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 178.8780487804878 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 287.1111111111111 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 206.75 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 305.07142857142856 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", 0.038685900415162254 AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_8" <= -0.02772444486618042) THEN CASE WHEN ("ADS"."Feature_8" <= -0.04327875375747681) THEN CASE WHEN ("ADS"."Feature_9" <= -0.007290857844054699) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_1" <= 0.003019241616129875) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.016708049923181534) THEN CASE WHEN ("ADS"."Feature_8" <= -0.018657658249139786) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.012116851285099983) THEN 13 ELSE 14 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 59.41379310344828 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 121.0 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 164.83333333333334 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 84.81818181818181 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 40.75 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 161.78523489932886 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 182.04166666666666 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 269.74074074074076 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", 0.0579441216436929 AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.06924089789390564) THEN CASE WHEN ("ADS"."Feature_9" <= 0.03413021191954613) THEN CASE WHEN ("ADS"."Feature_9" <= 0.0009933558758348227) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS"."Feature_3" <= 0.018429484218358994) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS"."Feature_0" <= -0.052737556397914886) THEN 9 ELSE CASE WHEN ("ADS"."Feature_6" <= -0.012106924317777157) THEN 11 ELSE 12 END END END AS node_id_2 
FROM diabetes AS "ADS"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 154.99382716049382 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 100.74444444444444 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 158.30434782608697 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 263.34375 AS "E" FROM rdb$database UNION ALL SELECT 9 AS nid, 128.0 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 310.6060606060606 AS "E" FROM rdb$database UNION ALL SELECT 12 AS nid, 180.2 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", 0.046519027360680365 AS "Weight", 15 AS est_index 
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
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_8DYW3R_QUA part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_30fc" ON "TMP_20180516_CODEGEN_8DYW3R_QUA" ("KEY")

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_8DYW3R_QUA" AS "Quantiles"