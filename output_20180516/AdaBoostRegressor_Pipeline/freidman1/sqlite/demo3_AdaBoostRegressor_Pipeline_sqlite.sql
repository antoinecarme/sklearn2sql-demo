-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : AdaBoostRegressor_Pipeline
-- Dataset : freidman1
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT_KEY" ON "TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM "TMP_20180516120555_CODEGEN_V3W34Y_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT_KEY" ON "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" ("KEY")

-- Code For temporary table TMP_20180516120555_CODEGEN_LAKTY8_WE_B0 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516120555_CODEGEN_LAKTY8_WE_B0" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20180516120555_CODEGEN_LAKTY8_WE_B0 part 2. Populate

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.5990101099014282) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.43099722266197205) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.7714440822601318) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.5740693211555481) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.9981422424316406) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.835197925567627) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -1.5117244720458984) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 7.108390979047101 AS "E" UNION ALL SELECT 4 AS nid, 10.330887125839682 AS "E" UNION ALL SELECT 6 AS nid, 12.484302041779221 AS "E" UNION ALL SELECT 7 AS nid, 16.867007546276703 AS "E" UNION ALL SELECT 10 AS nid, 9.958336196414976 AS "E" UNION ALL SELECT 11 AS nid, 16.155086265138074 AS "E" UNION ALL SELECT 13 AS nid, 16.714568981882323 AS "E" UNION ALL SELECT 14 AS nid, 21.530772731913935 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"ADB_Model_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator", 0.05715582572854952 AS "Weight", 0 AS est_index 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.3491400480270386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.6631695628166199) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.3928508758544922) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 1.371537208557129) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7374852299690247) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.187303900718689) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9343535900115967) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 6.680372815192879 AS "E" UNION ALL SELECT 4 AS nid, 13.03309136966267 AS "E" UNION ALL SELECT 6 AS nid, 16.137564712882295 AS "E" UNION ALL SELECT 7 AS nid, 23.693970395239386 AS "E" UNION ALL SELECT 10 AS nid, 22.107190514382584 AS "E" UNION ALL SELECT 11 AS nid, 17.253474800388226 AS "E" UNION ALL SELECT 13 AS nid, 24.121309045735764 AS "E" UNION ALL SELECT 14 AS nid, 18.900387696177468 AS "E") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"ADB_Model_1" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator", 0.06562315618507639 AS "Weight", 1 AS est_index 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.2825087904930115) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.1641054153442383) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.9907792210578918) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.45797020196914673) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.720198392868042) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.5515375733375549) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7374852299690247) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 6.390535756426625 AS "E" UNION ALL SELECT 4 AS nid, 11.762807430332275 AS "E" UNION ALL SELECT 6 AS nid, 16.62135112393742 AS "E" UNION ALL SELECT 7 AS nid, 23.693970395239383 AS "E" UNION ALL SELECT 10 AS nid, 13.283041611951388 AS "E" UNION ALL SELECT 11 AS nid, 18.705200260853758 AS "E" UNION ALL SELECT 13 AS nid, 18.520728123777474 AS "E" UNION ALL SELECT 14 AS nid, 22.083801758207265 AS "E") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"ADB_Model_2" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator", 0.06854306587503002 AS "Weight", 2 AS est_index 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.05798465013504028) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.31750786304473877) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.4823174476623535) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.284710168838501) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0125129222869873) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.1928507387638092) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7092001438140869) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 8.136348380598148 AS "E" UNION ALL SELECT 4 AS nid, 15.858066789184889 AS "E" UNION ALL SELECT 6 AS nid, 14.397970646627817 AS "E" UNION ALL SELECT 7 AS nid, 18.970449127439544 AS "E" UNION ALL SELECT 10 AS nid, 14.302644720397842 AS "E" UNION ALL SELECT 11 AS nid, 11.868082094679432 AS "E" UNION ALL SELECT 13 AS nid, 13.455276821939162 AS "E" UNION ALL SELECT 14 AS nid, 20.67940396773559 AS "E") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"ADB_Model_3" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator", 0.06524321351774265 AS "Weight", 3 AS est_index 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.9054057598114014) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.03856448829174042) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0249632596969604) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.6200701594352722) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 1.4223095178604126) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.251610517501831) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.0530385822057724) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 7.164708422831759 AS "E" UNION ALL SELECT 4 AS nid, 10.131789617052231 AS "E" UNION ALL SELECT 6 AS nid, 13.911320667815804 AS "E" UNION ALL SELECT 7 AS nid, 18.377623053610236 AS "E" UNION ALL SELECT 10 AS nid, 17.591009984785604 AS "E" UNION ALL SELECT 11 AS nid, 24.891578342407303 AS "E" UNION ALL SELECT 13 AS nid, 9.735041217996262 AS "E" UNION ALL SELECT 14 AS nid, 12.760129264370008 AS "E") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"ADB_Model_4" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator", 0.06306913804804194 AS "Weight", 4 AS est_index 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.05798465013504028) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.4936526119709015) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.31750786304473877) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 1.1826142072677612) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.4788433313369751) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.5018869042396545) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.8380006551742554) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 8.338897071859385 AS "E" UNION ALL SELECT 4 AS nid, 12.585661309165012 AS "E" UNION ALL SELECT 6 AS nid, 16.866642141163844 AS "E" UNION ALL SELECT 7 AS nid, 20.014322406211242 AS "E" UNION ALL SELECT 10 AS nid, 16.54478677328689 AS "E" UNION ALL SELECT 11 AS nid, 11.278641750854856 AS "E" UNION ALL SELECT 13 AS nid, 15.993851491279953 AS "E" UNION ALL SELECT 14 AS nid, 22.826162334588 AS "E") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"ADB_Model_5" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator", 0.05711379613162026 AS "Weight", 5 AS est_index 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.18559622764587402) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.6404086947441101) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.016872774809598923) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.2107425332069397) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.1576403379440308) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -1.62337064743042) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.38098010420799255) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 12.595464262752419 AS "E" UNION ALL SELECT 4 AS nid, 17.42633590328741 AS "E" UNION ALL SELECT 6 AS nid, 13.342747497232347 AS "E" UNION ALL SELECT 7 AS nid, 8.599400184796023 AS "E" UNION ALL SELECT 10 AS nid, 15.308483991007721 AS "E" UNION ALL SELECT 11 AS nid, 11.860016705250542 AS "E" UNION ALL SELECT 13 AS nid, 16.443728602186205 AS "E" UNION ALL SELECT 14 AS nid, 19.882622968509114 AS "E") AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"ADB_Model_6" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator", 0.06722659304860933 AS "Weight", 6 AS est_index 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.13406173884868622) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.0571310818195343) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1491718292236328) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.06066661328077316) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7110370993614197) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0962872505187988) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.884007453918457) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 10.94895415393129 AS "E" UNION ALL SELECT 4 AS nid, 7.260669944487352 AS "E" UNION ALL SELECT 6 AS nid, 18.695635887820288 AS "E" UNION ALL SELECT 7 AS nid, 13.985256317059017 AS "E" UNION ALL SELECT 10 AS nid, 9.549583624035378 AS "E" UNION ALL SELECT 11 AS nid, 11.471182882103852 AS "E" UNION ALL SELECT 13 AS nid, 18.56162832703596 AS "E" UNION ALL SELECT 14 AS nid, 21.540404060617437 AS "E") AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"ADB_Model_7" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator", 0.06218707824898912 AS "Weight", 7 AS est_index 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.4936526119709015) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.1964271068572998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1048519611358643) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.8049250841140747) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.2575976848602295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.30531132221221924) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.06301438808441162) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 10.052439937241036 AS "E" UNION ALL SELECT 4 AS nid, 6.449781817277611 AS "E" UNION ALL SELECT 6 AS nid, 12.485240268478293 AS "E" UNION ALL SELECT 7 AS nid, 19.808409991600072 AS "E" UNION ALL SELECT 10 AS nid, 14.536245187358322 AS "E" UNION ALL SELECT 11 AS nid, 12.423411759463056 AS "E" UNION ALL SELECT 13 AS nid, 17.78981671222573 AS "E" UNION ALL SELECT 14 AS nid, 21.498446695430406 AS "E") AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"ADB_Model_8" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator", 0.05376152027601856 AS "Weight", 8 AS est_index 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.08507034182548523) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.6321609020233154) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.14652781188488007) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.0772407054901123) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.4788433313369751) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.44615861773490906) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.311335563659668) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 11.90948021138629 AS "E" UNION ALL SELECT 4 AS nid, 17.231922397914737 AS "E" UNION ALL SELECT 6 AS nid, 6.990506673547558 AS "E" UNION ALL SELECT 7 AS nid, 10.95573020235244 AS "E" UNION ALL SELECT 10 AS nid, 17.41278188627197 AS "E" UNION ALL SELECT 11 AS nid, 11.766125447580091 AS "E" UNION ALL SELECT 13 AS nid, 15.189044377231586 AS "E" UNION ALL SELECT 14 AS nid, 22.86966194942791 AS "E") AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"ADB_Model_9" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator", 0.059051226129531266 AS "Weight", 9 AS est_index 
FROM "DT_Output_9")
 INSERT INTO "TMP_20180516120555_CODEGEN_LAKTY8_WE_B0" ("KEY", "Estimator", "Weight", est_index) SELECT "WE_B0"."KEY", "WE_B0"."Estimator", "WE_B0"."Weight", "WE_B0".est_index 
FROM (SELECT "WE_esu_0"."KEY" AS "KEY", "WE_esu_0"."Estimator" AS "Estimator", "WE_esu_0"."Weight" AS "Weight", "WE_esu_0".est_index AS est_index 
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
FROM "ADB_Model_9") AS "WE_esu_0") AS "WE_B0"

-- Code For temporary table TMP_20180516120555_CODEGEN_DTXT6W_WE_B1 part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516120555_CODEGEN_DTXT6W_WE_B1" (
	"KEY" BIGINT, 
	"Estimator" FLOAT, 
	"Weight" FLOAT, 
	est_index BIGINT
)



-- Code For temporary table TMP_20180516120555_CODEGEN_DTXT6W_WE_B1 part 2. Populate

WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.7952097654342651) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.2825087904930115) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.0131055116653442) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.6523176431655884) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.9287996292114258) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.902372419834137) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.141160249710083) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 6.7384031095263905 AS "E" UNION ALL SELECT 4 AS nid, 11.752927183529824 AS "E" UNION ALL SELECT 6 AS nid, 10.763360117743344 AS "E" UNION ALL SELECT 7 AS nid, 18.074528428073364 AS "E" UNION ALL SELECT 10 AS nid, 17.078177502322482 AS "E" UNION ALL SELECT 11 AS nid, 23.693970395239383 AS "E" UNION ALL SELECT 13 AS nid, 20.134116626100056 AS "E" UNION ALL SELECT 14 AS nid, 23.18131440832091 AS "E") AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"ADB_Model_10" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator", 0.08820185865364961 AS "Weight", 10 AS est_index 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7790558338165283) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.10965748876333237) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.44034916162490845) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.9460362792015076) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.45797020196914673) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.7053980231285095) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.1801438331604004) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 7.8366307170001175 AS "E" UNION ALL SELECT 4 AS nid, 12.882177460158417 AS "E" UNION ALL SELECT 6 AS nid, 12.810220702138997 AS "E" UNION ALL SELECT 7 AS nid, 18.954608923364916 AS "E" UNION ALL SELECT 10 AS nid, 23.06101058117155 AS "E" UNION ALL SELECT 11 AS nid, 18.037378593929937 AS "E" UNION ALL SELECT 13 AS nid, 23.23168268252753 AS "E" UNION ALL SELECT 14 AS nid, 25.15083662496389 AS "E") AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"ADB_Model_11" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator", 0.07418226802212737 AS "Weight", 11 AS est_index 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.6123250126838684) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0451622009277344) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.20721951127052307) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.962867021560669) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.6414153575897217) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.7036277055740356) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 1.4299299716949463) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 6.392901461382325 AS "E" UNION ALL SELECT 4 AS nid, 9.549583624035378 AS "E" UNION ALL SELECT 6 AS nid, 11.079712881100889 AS "E" UNION ALL SELECT 7 AS nid, 16.694311753230085 AS "E" UNION ALL SELECT 10 AS nid, 12.423411759463056 AS "E" UNION ALL SELECT 11 AS nid, 16.9994398670528 AS "E" UNION ALL SELECT 13 AS nid, 24.01582078608117 AS "E" UNION ALL SELECT 14 AS nid, 18.306954978921546 AS "E") AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"ADB_Model_12" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator", 0.045152645391912744 AS "Weight", 12 AS est_index 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.016872774809598923) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.38270747661590576) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.6766680479049683) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.081565022468567) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.1619569957256317) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.5936694145202637) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.7513359785079956) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 6.357795525185893 AS "E" UNION ALL SELECT 4 AS nid, 10.038408168333754 AS "E" UNION ALL SELECT 6 AS nid, 16.404095381550448 AS "E" UNION ALL SELECT 7 AS nid, 11.12897125170135 AS "E" UNION ALL SELECT 10 AS nid, 10.181631174833692 AS "E" UNION ALL SELECT 11 AS nid, 16.995769642220143 AS "E" UNION ALL SELECT 13 AS nid, 19.613868253758056 AS "E" UNION ALL SELECT 14 AS nid, 23.250448269296612 AS "E") AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"ADB_Model_13" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator", 0.053325961677074776 AS "Weight", 13 AS est_index 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.437791109085083) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.3767752647399902) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1048519611358643) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.8608260154724121) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.8096771240234375) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.778363049030304) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 9.933415417524246 AS "E" UNION ALL SELECT 4 AS nid, 7.064840674234973 AS "E" UNION ALL SELECT 5 AS nid, 17.89244707919063 AS "E" UNION ALL SELECT 8 AS nid, 9.60822446553016 AS "E" UNION ALL SELECT 9 AS nid, 16.4174377999376 AS "E" UNION ALL SELECT 11 AS nid, 15.422782995512641 AS "E" UNION ALL SELECT 12 AS nid, 22.159414410239958 AS "E") AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"ADB_Model_14" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator", 0.05296075963522889 AS "Weight", 14 AS est_index 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.6123250126838684) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5997591018676758) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.823187530040741) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.150056004524231) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7781765460968018) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.1991350650787354) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0115612745285034) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516120555_CODEGEN_VK96SL_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 3 AS nid, 16.128071583870984 AS "E" UNION ALL SELECT 4 AS nid, 22.088070107878004 AS "E" UNION ALL SELECT 6 AS nid, 10.055721967905004 AS "E" UNION ALL SELECT 7 AS nid, 21.021444371224298 AS "E" UNION ALL SELECT 10 AS nid, 12.951620116436871 AS "E" UNION ALL SELECT 11 AS nid, 18.78950979027687 AS "E" UNION ALL SELECT 13 AS nid, 19.303788312018888 AS "E" UNION ALL SELECT 14 AS nid, 24.739343229309082 AS "E") AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"ADB_Model_15" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator", 0.06720189343079747 AS "Weight", 15 AS est_index 
FROM "DT_Output_15")
 INSERT INTO "TMP_20180516120555_CODEGEN_DTXT6W_WE_B1" ("KEY", "Estimator", "Weight", est_index) SELECT "WE_B1"."KEY", "WE_B1"."Estimator", "WE_B1"."Weight", "WE_B1".est_index 
FROM (SELECT "WE_esu_1"."KEY" AS "KEY", "WE_esu_1"."Estimator" AS "Estimator", "WE_esu_1"."Weight" AS "Weight", "WE_esu_1".est_index AS est_index 
FROM (SELECT "ADB_Model_10"."KEY" AS "KEY", "ADB_Model_10"."Estimator" AS "Estimator", "ADB_Model_10"."Weight" AS "Weight", "ADB_Model_10".est_index AS est_index 
FROM "ADB_Model_10" UNION ALL SELECT "ADB_Model_11"."KEY" AS "KEY", "ADB_Model_11"."Estimator" AS "Estimator", "ADB_Model_11"."Weight" AS "Weight", "ADB_Model_11".est_index AS est_index 
FROM "ADB_Model_11" UNION ALL SELECT "ADB_Model_12"."KEY" AS "KEY", "ADB_Model_12"."Estimator" AS "Estimator", "ADB_Model_12"."Weight" AS "Weight", "ADB_Model_12".est_index AS est_index 
FROM "ADB_Model_12" UNION ALL SELECT "ADB_Model_13"."KEY" AS "KEY", "ADB_Model_13"."Estimator" AS "Estimator", "ADB_Model_13"."Weight" AS "Weight", "ADB_Model_13".est_index AS est_index 
FROM "ADB_Model_13" UNION ALL SELECT "ADB_Model_14"."KEY" AS "KEY", "ADB_Model_14"."Estimator" AS "Estimator", "ADB_Model_14"."Weight" AS "Weight", "ADB_Model_14".est_index AS est_index 
FROM "ADB_Model_14" UNION ALL SELECT "ADB_Model_15"."KEY" AS "KEY", "ADB_Model_15"."Estimator" AS "Estimator", "ADB_Model_15"."Weight" AS "Weight", "ADB_Model_15".est_index AS est_index 
FROM "ADB_Model_15") AS "WE_esu_1") AS "WE_B1"

-- Code For temporary table TMP_20180516120555_CODEGEN_G005HF_Quantiles part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516120555_CODEGEN_G005HF_Quantiles" (
	"KEY" BIGINT, 
	"Quantile" FLOAT
)



-- Code For temporary table TMP_20180516120555_CODEGEN_G005HF_Quantiles part 2. Populate

WITH "WE_Union" AS 
(SELECT "WE_EnsembleUnion"."KEY" AS "KEY", "WE_EnsembleUnion"."Estimator" AS "Estimator", "WE_EnsembleUnion"."Weight" AS "Weight", "WE_EnsembleUnion".est_index AS est_index 
FROM (SELECT "WE_B0"."KEY" AS "KEY", "WE_B0"."Estimator" AS "Estimator", "WE_B0"."Weight" AS "Weight", "WE_B0".est_index AS est_index 
FROM "TMP_20180516120555_CODEGEN_LAKTY8_WE_B0" AS "WE_B0" UNION ALL SELECT "WE_B1"."KEY" AS "KEY", "WE_B1"."Estimator" AS "Estimator", "WE_B1"."Weight" AS "Weight", "WE_B1".est_index AS est_index 
FROM "TMP_20180516120555_CODEGEN_DTXT6W_WE_B1" AS "WE_B1") AS "WE_EnsembleUnion"), 
"Cumulative_Frequencies" AS 
(SELECT "CW"."KEY" AS "KEY", "CW"."Estimator" AS "Estimator", "CW"."Weight" AS "Weight", "CW".est_index AS est_index, "CW".cum_weight AS cum_weight 
FROM (SELECT u1."KEY" AS "KEY", u1."Estimator" AS "Estimator", u1."Weight" AS "Weight", u1.est_index AS est_index, sum(u2."Weight") AS cum_weight 
FROM "WE_Union" AS u1, "WE_Union" AS u2 
WHERE u1."Estimator" >= u2."Estimator" AND u1."KEY" = u2."KEY" GROUP BY u1."KEY", u1.est_index, u1."Estimator", u1."Weight") AS "CW")
 INSERT INTO "TMP_20180516120555_CODEGEN_G005HF_Quantiles" ("KEY", "Quantile") SELECT "Quantiles"."KEY", "Quantiles"."Quantile" 
FROM (SELECT "CW2"."KEY" AS "KEY", "CW2"."Quantile" AS "Quantile" 
FROM (SELECT "Cumulative_Frequencies"."KEY" AS "KEY", min("Cumulative_Frequencies"."Estimator") AS "Quantile" 
FROM "Cumulative_Frequencies" 
WHERE "Cumulative_Frequencies".cum_weight >= 0.5 GROUP BY "Cumulative_Frequencies"."KEY") AS "CW2") AS "Quantiles"

-- Model deployment code

SELECT "Quantiles"."KEY" AS "KEY", "Quantiles"."Quantile" AS "Estimator" 
FROM "TMP_20180516120555_CODEGEN_G005HF_Quantiles" AS "Quantiles"