-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_LAV56K_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_LAV56K_ADS" (
	"KEY" BIGINT NOT NULL, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_LAV56K_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_LAV56K_ADS" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_LAV56K_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_b922" ON "TMP_20180516_CODEGEN_LAV56K_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_J3QJ1M_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_J3QJ1M_ADS" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_J3QJ1M_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_J3QJ1M_ADS" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM "TMP_20180516_CODEGEN_LAV56K_ADS" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_J3QJ1M_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_4efa" ON "TMP_20180516_CODEGEN_J3QJ1M_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_JUJWP5_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_JUJWP5_GB_" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_JUJWP5_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_JUJWP5_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9403623342514038) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1683640480041504) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.07141511887311935) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.0221788883209229) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.463795930147171) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -208.7780451708557 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -437.3409386784606 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -113.60421644601387 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 122.45884789399581 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -309.90060671962567 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -32.15578897857857 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 61.439924831450156 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 231.09071528701512 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid), 
"GB_Model_0_0" AS 
(SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.4446154236793518) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.9983952641487122) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.04722323268651962) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.0221788883209229) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.463795930147171) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -326.5091064084041 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -98.85523416498395 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -87.44714659587862 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 173.77310999517758 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -278.9105460476631 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -28.94021008072071 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 55.29593234830514 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 207.98164375831354 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".nid AS nid, "DT_node_data_1"."E" AS "E" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".nid), 
"GB_Model_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS "KEY", "DT_Output_1"."E" AS "Estimator" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9403623342514038) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1683640480041504) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.0062407031655311584) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.0221788883209229) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.11237061023712158) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.031761933118104935) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -176.11170265107646 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -368.5443965778881 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -96.0390013850018 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 99.38716020637538 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -251.0194914428968 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -26.04618907264864 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 75.1277990616216 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 204.70712521807272 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".nid AS nid, "DT_node_data_2"."E" AS "E" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".nid), 
"GB_Model_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS "KEY", "DT_Output_2"."E" AS "Estimator" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3744688034057617) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9428368806838989) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.08440186083316803) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.6898996829986572) THEN 9 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.8215601444244385) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -219.68151785911093 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 1.5378845252896032 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -63.12781904445371 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 105.11332453399308 AS "E" FROM rdb$database UNION ALL SELECT 9 AS nid, 50.921431639148395 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 228.02920133836216 AS "E" FROM rdb$database UNION ALL SELECT 12 AS nid, 332.2565374483745 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".nid AS nid, "DT_node_data_3"."E" AS "E" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".nid), 
"GB_Model_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS "KEY", "DT_Output_3"."E" AS "Estimator" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.6720361113548279) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.7831640839576721) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7743398547172546) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.6365488171577454) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.08869194984436035) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.38173192739486694) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -252.20320059466073 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -121.33851568899895 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -48.95960236182337 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 137.19688391460684 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -37.606554662855785 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 125.61672398567936 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 137.2470332453415 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 245.25440849319094 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".nid AS nid, "DT_node_data_4"."E" AS "E" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".nid), 
"GB_Model_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS "KEY", "DT_Output_4"."E" AS "Estimator" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3744688034057617) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.13297277688980103) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.7928295135498047) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.31049853563308716) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.6283681988716125) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -1.5198869705200195) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -1.9842617511749268) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -185.9188938422119 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -36.723747937807836 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -15.39934960835867 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 144.6291018939822 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 141.14763754957812 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 50.72524871141589 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 312.1140204097185 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 212.21841759685003 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".nid AS nid, "DT_node_data_5"."E" AS "E" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".nid), 
"GB_Model_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS "KEY", "DT_Output_5"."E" AS "Estimator" 
FROM "DT_Output_5"), 
"DT_node_lookup_6" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.17482367157936096) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.0149085521697998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.26581016182899475) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.24797630310058594) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.41629236936569214) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.5733436346054077) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5722590684890747) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_6" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -231.3428255443808 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -137.20816742292942 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -119.32161195024396 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -15.759752657500488 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -119.82952352424819 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 63.4853201369002 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -16.828482683273812 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 145.22505636206762 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_6" AS 
(SELECT "DT_node_lookup_6"."KEY" AS "KEY", "DT_node_lookup_6".node_id_2 AS node_id_2, "DT_node_data_6".nid AS nid, "DT_node_data_6"."E" AS "E" 
FROM "DT_node_lookup_6" LEFT OUTER JOIN "DT_node_data_6" ON "DT_node_lookup_6".node_id_2 = "DT_node_data_6".nid), 
"GB_Model_6_0" AS 
(SELECT "DT_Output_6"."KEY" AS "KEY", "DT_Output_6"."E" AS "Estimator" 
FROM "DT_Output_6"), 
"DT_node_lookup_7" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.17482367157936096) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.0149085521697998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.2281089574098587) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.24797630310058594) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.9471391439437866) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.5923108458518982) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5722590684890747) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_7" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -216.47369625379196 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -149.3176403075912 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -107.38945075521956 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -14.183777391750445 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -201.38345810104735 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, -39.495759263462226 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -25.622143688906046 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 105.45885917644819 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_7" AS 
(SELECT "DT_node_lookup_7"."KEY" AS "KEY", "DT_node_lookup_7".node_id_2 AS node_id_2, "DT_node_data_7".nid AS nid, "DT_node_data_7"."E" AS "E" 
FROM "DT_node_lookup_7" LEFT OUTER JOIN "DT_node_data_7" ON "DT_node_lookup_7".node_id_2 = "DT_node_data_7".nid), 
"GB_Model_7_0" AS 
(SELECT "DT_Output_7"."KEY" AS "KEY", "DT_Output_7"."E" AS "Estimator" 
FROM "DT_Output_7"), 
"DT_node_lookup_8" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3744688034057617) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.9782909154891968) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.055861689150333405) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.1163204088807106) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -1.1664267778396606) THEN 9 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.8215601444244385) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_8" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -80.37727898797863 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 19.67833565380183 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 47.48681743313715 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 148.22745338219823 AS "E" FROM rdb$database UNION ALL SELECT 9 AS nid, 49.89778647749229 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 153.53608940557658 AS "E" FROM rdb$database UNION ALL SELECT 12 AS nid, 228.62330562896713 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_8" AS 
(SELECT "DT_node_lookup_8"."KEY" AS "KEY", "DT_node_lookup_8".node_id_2 AS node_id_2, "DT_node_data_8".nid AS nid, "DT_node_data_8"."E" AS "E" 
FROM "DT_node_lookup_8" LEFT OUTER JOIN "DT_node_data_8" ON "DT_node_lookup_8".node_id_2 = "DT_node_data_8".nid), 
"GB_Model_8_0" AS 
(SELECT "DT_Output_8"."KEY" AS "KEY", "DT_Output_8"."E" AS "Estimator" 
FROM "DT_Output_8"), 
"DT_node_lookup_9" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3744688034057617) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9428368806838989) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1683640480041504) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.6898996829986572) THEN 9 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.4935331344604492) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_9" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -73.44849390585631 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -203.34660361054483 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -41.48806981131387 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 67.6964481257827 AS "E" FROM rdb$database UNION ALL SELECT 9 AS nid, 44.908007829743056 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 185.20439923785938 AS "E" FROM rdb$database UNION ALL SELECT 12 AS nid, 120.53891850193266 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_9" AS 
(SELECT "DT_node_lookup_9"."KEY" AS "KEY", "DT_node_lookup_9".node_id_2 AS node_id_2, "DT_node_data_9".nid AS nid, "DT_node_data_9"."E" AS "E" 
FROM "DT_node_lookup_9" LEFT OUTER JOIN "DT_node_data_9" ON "DT_node_lookup_9".node_id_2 = "DT_node_data_9".nid), 
"GB_Model_9_0" AS 
(SELECT "DT_Output_9"."KEY" AS "KEY", "DT_Output_9"."E" AS "Estimator" 
FROM "DT_Output_9")
 SELECT "GB_B0"."KEY", "GB_B0"."Estimator" 
FROM (SELECT "GB_esu_0"."KEY" AS "KEY", "GB_esu_0"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_0_0"."KEY" AS "KEY", "GB_Model_0_0"."Estimator" AS "Estimator" 
FROM "GB_Model_0_0" UNION ALL SELECT "GB_Model_1_0"."KEY" AS "KEY", "GB_Model_1_0"."Estimator" AS "Estimator" 
FROM "GB_Model_1_0" UNION ALL SELECT "GB_Model_2_0"."KEY" AS "KEY", "GB_Model_2_0"."Estimator" AS "Estimator" 
FROM "GB_Model_2_0" UNION ALL SELECT "GB_Model_3_0"."KEY" AS "KEY", "GB_Model_3_0"."Estimator" AS "Estimator" 
FROM "GB_Model_3_0" UNION ALL SELECT "GB_Model_4_0"."KEY" AS "KEY", "GB_Model_4_0"."Estimator" AS "Estimator" 
FROM "GB_Model_4_0" UNION ALL SELECT "GB_Model_5_0"."KEY" AS "KEY", "GB_Model_5_0"."Estimator" AS "Estimator" 
FROM "GB_Model_5_0" UNION ALL SELECT "GB_Model_6_0"."KEY" AS "KEY", "GB_Model_6_0"."Estimator" AS "Estimator" 
FROM "GB_Model_6_0" UNION ALL SELECT "GB_Model_7_0"."KEY" AS "KEY", "GB_Model_7_0"."Estimator" AS "Estimator" 
FROM "GB_Model_7_0" UNION ALL SELECT "GB_Model_8_0"."KEY" AS "KEY", "GB_Model_8_0"."Estimator" AS "Estimator" 
FROM "GB_Model_8_0" UNION ALL SELECT "GB_Model_9_0"."KEY" AS "KEY", "GB_Model_9_0"."Estimator" AS "Estimator" 
FROM "GB_Model_9_0") AS "GB_esu_0") AS "GB_B0") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_HFZUJC_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_HFZUJC_GB_" (
	"KEY" BIGINT, 
	"Estimator" DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_HFZUJC_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_HFZUJC_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "DT_node_lookup_10" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.07927589118480682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.3863314986228943) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.42385512590408325) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.41797101497650146) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.03733181953430176) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 2.252413272857666) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_10" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -118.29201989231404 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -25.077426497521834 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -30.264161198717826 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 86.31775180053027 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -66.09975993050688 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 62.45645261241293 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 83.88369798046719 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 316.42361392144784 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_10" AS 
(SELECT "DT_node_lookup_10"."KEY" AS "KEY", "DT_node_lookup_10".node_id_2 AS node_id_2, "DT_node_data_10".nid AS nid, "DT_node_data_10"."E" AS "E" 
FROM "DT_node_lookup_10" LEFT OUTER JOIN "DT_node_data_10" ON "DT_node_lookup_10".node_id_2 = "DT_node_data_10".nid), 
"GB_Model_10_0" AS 
(SELECT "DT_Output_10"."KEY" AS "KEY", "DT_Output_10"."E" AS "Estimator" 
FROM "DT_Output_10"), 
"DT_node_lookup_11" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.17482367157936096) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.0149085521697998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.35011762380599976) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.058781277388334274) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.41629236936569214) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3497536182403564) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5722590684890747) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_11" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -136.61832829293897 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -184.6992014939845 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -70.42234415250664 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 1.3244360712172127 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -65.27062830258585 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 147.9811246230092 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -10.649087022495026 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 99.43300470478421 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_11" AS 
(SELECT "DT_node_lookup_11"."KEY" AS "KEY", "DT_node_lookup_11".node_id_2 AS node_id_2, "DT_node_data_11".nid AS nid, "DT_node_data_11"."E" AS "E" 
FROM "DT_node_lookup_11" LEFT OUTER JOIN "DT_node_data_11" ON "DT_node_lookup_11".node_id_2 = "DT_node_data_11".nid), 
"GB_Model_11_0" AS 
(SELECT "DT_Output_11"."KEY" AS "KEY", "DT_Output_11"."E" AS "Estimator" 
FROM "DT_Output_11"), 
"DT_node_lookup_12" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.07927589118480682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.21623320877552032) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.3062019348144531) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 1.659529685974121) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.031761933118104935) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.4005035161972046) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_12" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -115.61454240203253 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -34.726895341995366 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 14.5657363339971 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 252.22129678068407 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -3.8267988085527085 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 81.075001073378 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 235.47886905925594 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 79.33495269097298 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_12" AS 
(SELECT "DT_node_lookup_12"."KEY" AS "KEY", "DT_node_lookup_12".node_id_2 AS node_id_2, "DT_node_data_12".nid AS nid, "DT_node_data_12"."E" AS "E" 
FROM "DT_node_lookup_12" LEFT OUTER JOIN "DT_node_data_12" ON "DT_node_lookup_12".node_id_2 = "DT_node_data_12".nid), 
"GB_Model_12_0" AS 
(SELECT "DT_Output_12"."KEY" AS "KEY", "DT_Output_12"."E" AS "Estimator" 
FROM "DT_Output_12"), 
"DT_node_lookup_13" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.8831796050071716) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.003826916217803955) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.27474021911621094) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.9638828039169312) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.3138342797756195) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.18822640180587769) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9687913656234741) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_13" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -123.89772888428931 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -216.00531260592163 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -17.928916698609747 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, -140.25547950272522 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -77.24167356823313 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 4.27756278838997 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 27.77869135277366 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 142.3041369154385 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_13" AS 
(SELECT "DT_node_lookup_13"."KEY" AS "KEY", "DT_node_lookup_13".node_id_2 AS node_id_2, "DT_node_data_13".nid AS nid, "DT_node_data_13"."E" AS "E" 
FROM "DT_node_lookup_13" LEFT OUTER JOIN "DT_node_data_13" ON "DT_node_lookup_13".node_id_2 = "DT_node_data_13".nid), 
"GB_Model_13_0" AS 
(SELECT "DT_Output_13"."KEY" AS "KEY", "DT_Output_13"."E" AS "Estimator" 
FROM "DT_Output_13"), 
"DT_node_lookup_14" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9428368806838989) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.6580809950828552) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.486331045627594) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.9265775680541992) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 1.2782111167907715) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9415285587310791) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_14" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -108.59838640298976 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, -34.77991094519852 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, 57.17104373033183 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 84.0469458646069 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, -40.715945135748996 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 62.26102820987035 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 40.54914463720606 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 139.89083647282177 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_14" AS 
(SELECT "DT_node_lookup_14"."KEY" AS "KEY", "DT_node_lookup_14".node_id_2 AS node_id_2, "DT_node_data_14".nid AS nid, "DT_node_data_14"."E" AS "E" 
FROM "DT_node_lookup_14" LEFT OUTER JOIN "DT_node_data_14" ON "DT_node_lookup_14".node_id_2 = "DT_node_data_14".nid), 
"GB_Model_14_0" AS 
(SELECT "DT_Output_14"."KEY" AS "KEY", "DT_Output_14"."E" AS "Estimator" 
FROM "DT_Output_14"), 
"DT_node_lookup_15" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.6720361113548279) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.014573076739907265) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.5090407133102417) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.9863189458847046) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.029281165450811386) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 1.9188706874847412) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -1.2292773723602295) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_J3QJ1M_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data_15" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, -83.28721962706736 AS "E" FROM rdb$database UNION ALL SELECT 4 AS nid, 0.5306474709200918 AS "E" FROM rdb$database UNION ALL SELECT 6 AS nid, -5.689858717217801 AS "E" FROM rdb$database UNION ALL SELECT 7 AS nid, 114.3467321860319 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 5.642558422999436 AS "E" FROM rdb$database UNION ALL SELECT 11 AS nid, 127.53386061277723 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, -0.3619416936416542 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 98.24968541797496 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output_15" AS 
(SELECT "DT_node_lookup_15"."KEY" AS "KEY", "DT_node_lookup_15".node_id_2 AS node_id_2, "DT_node_data_15".nid AS nid, "DT_node_data_15"."E" AS "E" 
FROM "DT_node_lookup_15" LEFT OUTER JOIN "DT_node_data_15" ON "DT_node_lookup_15".node_id_2 = "DT_node_data_15".nid), 
"GB_Model_15_0" AS 
(SELECT "DT_Output_15"."KEY" AS "KEY", "DT_Output_15"."E" AS "Estimator" 
FROM "DT_Output_15")
 SELECT "GB_B1"."KEY", "GB_B1"."Estimator" 
FROM (SELECT "GB_esu_1"."KEY" AS "KEY", "GB_esu_1"."Estimator" AS "Estimator" 
FROM (SELECT "GB_Model_10_0"."KEY" AS "KEY", "GB_Model_10_0"."Estimator" AS "Estimator" 
FROM "GB_Model_10_0" UNION ALL SELECT "GB_Model_11_0"."KEY" AS "KEY", "GB_Model_11_0"."Estimator" AS "Estimator" 
FROM "GB_Model_11_0" UNION ALL SELECT "GB_Model_12_0"."KEY" AS "KEY", "GB_Model_12_0"."Estimator" AS "Estimator" 
FROM "GB_Model_12_0" UNION ALL SELECT "GB_Model_13_0"."KEY" AS "KEY", "GB_Model_13_0"."Estimator" AS "Estimator" 
FROM "GB_Model_13_0" UNION ALL SELECT "GB_Model_14_0"."KEY" AS "KEY", "GB_Model_14_0"."Estimator" AS "Estimator" 
FROM "GB_Model_14_0" UNION ALL SELECT "GB_Model_15_0"."KEY" AS "KEY", "GB_Model_15_0"."Estimator" AS "Estimator" 
FROM "GB_Model_15_0") AS "GB_esu_1") AS "GB_B1") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_JTGMCI_GB_ part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_JTGMCI_GB_" (
	"KEY" BIGINT NOT NULL, 
	"Estimator" DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_JTGMCI_GB_ part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_JTGMCI_GB_" ("KEY", "Estimator") SELECT "U"."KEY", "U"."Estimator" 
FROM (WITH "GB_Union" AS 
(SELECT "GB_EnsembleUnion"."KEY" AS "KEY", "GB_EnsembleUnion"."Estimator" AS "Estimator" 
FROM (SELECT "GB_B0"."KEY" AS "KEY", "GB_B0"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_JUJWP5_GB_" AS "GB_B0" UNION ALL SELECT "GB_B1"."KEY" AS "KEY", "GB_B1"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_HFZUJC_GB_" AS "GB_B1") AS "GB_EnsembleUnion")
 SELECT "GB_sum"."KEY", "GB_sum"."Estimator" 
FROM (SELECT "T"."KEY" AS "KEY", CAST("T"."Estimator" AS DOUBLE PRECISION) AS "Estimator" 
FROM (SELECT "GB_Union"."KEY" AS "KEY", sum("GB_Union"."Estimator") AS "Estimator" 
FROM "GB_Union" GROUP BY "GB_Union"."KEY") AS "T") AS "GB_sum") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_JTGMCI_GB_ part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_42dd" ON "TMP_20180516_CODEGEN_JTGMCI_GB_" ("KEY")

-- Model deployment code

SELECT "GB_sum"."KEY" AS "KEY", 26.405852730652413 + 0.1 * "GB_sum"."Estimator" AS "Estimator" 
FROM "TMP_20180516_CODEGEN_JTGMCI_GB_" AS "GB_sum"