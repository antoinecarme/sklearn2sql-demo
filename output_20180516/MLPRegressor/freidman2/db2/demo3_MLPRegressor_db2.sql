-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : freidman2
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516121335_codegen_cjici6_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121335_codegen_cjici6_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121335_codegen_cjici6_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516121335_codegen_cjici6_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3" 
FROM "FREIDMAN2" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.1345791424000196 * "IL"."Feature_0" + -0.5913161645541046 * "IL"."Feature_1" + -0.732365520630762 * "IL"."Feature_2" + -0.8190423234782215 * "IL"."Feature_3" + 0.34759387273386655 AS "NEUR_1_1", 26.152964990392334 * "IL"."Feature_0" + 8.8534344554003 * "IL"."Feature_1" + 203.65729157944153 * "IL"."Feature_2" + 304.2225976498114 * "IL"."Feature_3" + -10.47284763857305 AS "NEUR_1_2", 0.8773243720710311 * "IL"."Feature_0" + -0.6009044049857927 * "IL"."Feature_1" + 0.4905838058866114 * "IL"."Feature_2" + 0.13171467797234887 * "IL"."Feature_3" + -0.5925122750607899 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180516121335_codegen_taczvx_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121335_codegen_taczvx_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121335_codegen_taczvx_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180516121335_codegen_taczvx_ol_identity_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.6727958594557811 * "HL_1_relu_1"."NEUR_1_1" + 0.023476229435074755 * "HL_1_relu_1"."NEUR_1_2" + 0.7300232355511441 * "HL_1_relu_1"."NEUR_1_3" + -12.55396818056757 AS "NEUR_2_1", 0.6488387114830861 * "HL_1_relu_1"."NEUR_1_1" + -0.06939528240991638 * "HL_1_relu_1"."NEUR_1_2" + -0.6459347965595353 * "HL_1_relu_1"."NEUR_1_3" + -0.5292904296119374 AS "NEUR_2_2", -0.30072136618639334 * "HL_1_relu_1"."NEUR_1_1" + -0.8273495895730408 * "HL_1_relu_1"."NEUR_1_2" + -0.30104783738138674 * "HL_1_relu_1"."NEUR_1_3" + -0.010394282503777497 AS "NEUR_2_3", -0.3413332152504927 * "HL_1_relu_1"."NEUR_1_1" + -0.518902488312479 * "HL_1_relu_1"."NEUR_1_2" + -0.12233037976817565 * "HL_1_relu_1"."NEUR_1_3" + -0.7406283496068888 AS "NEUR_2_4", -0.38677033457144616 * "HL_1_relu_1"."NEUR_1_1" + -0.027592386878403426 * "HL_1_relu_1"."NEUR_1_2" + 0.7252808719540558 * "HL_1_relu_1"."NEUR_1_3" + -0.14939322656497145 AS "NEUR_2_5" 
FROM tmp_20180516121335_codegen_cjici6_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 2.0318492821944636 * "HL_2_relu"."NEUR_2_1" + 0.12827543281474066 * "HL_2_relu"."NEUR_2_2" + -0.7183993428626272 * "HL_2_relu"."NEUR_2_3" + 0.6829634029479624 * "HL_2_relu"."NEUR_2_4" + 0.768085048883114 * "HL_2_relu"."NEUR_2_5" + -10.664159374857553 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180516121335_codegen_taczvx_ol_identity_1 AS "OL_identity_1"