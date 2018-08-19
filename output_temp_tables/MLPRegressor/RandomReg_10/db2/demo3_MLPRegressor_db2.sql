-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : RandomReg_10
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602144449_qmh_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602144449_qmh_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602144449_qmh_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180602144449_qmh_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9" 
FROM "RANDOMREG_10" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -61.01023938770739 * "IL"."Feature_0" + -3.556444102699086 * "IL"."Feature_1" + -13.069116378991023 * "IL"."Feature_2" + -11.537100151341352 * "IL"."Feature_3" + -9.356397069766182 * "IL"."Feature_4" + -43.23710255746317 * "IL"."Feature_5" + 2.613607946656676 * "IL"."Feature_6" + 29.373337543354836 * "IL"."Feature_7" + 5.42235763539709 * "IL"."Feature_8" + -10.38328102564133 * "IL"."Feature_9" + 59.96584619339344 AS "NEUR_1_1", -40.05101129951885 * "IL"."Feature_0" + -15.712364683530703 * "IL"."Feature_1" + -30.41505977381026 * "IL"."Feature_2" + -17.696517768850182 * "IL"."Feature_3" + -6.688705567051923 * "IL"."Feature_4" + -24.67132304856418 * "IL"."Feature_5" + 12.689280104954342 * "IL"."Feature_6" + 13.989998336910398 * "IL"."Feature_7" + -10.006833770834085 * "IL"."Feature_8" + -8.62491588544266 * "IL"."Feature_9" + 26.011282240908532 AS "NEUR_1_2", 0.7511472896637609 * "IL"."Feature_0" + 1.6437719670634972 * "IL"."Feature_1" + 2.0698097172927734 * "IL"."Feature_2" + 0.7532315337483612 * "IL"."Feature_3" + 1.1700055695465632 * "IL"."Feature_4" + 1.8566224436152015 * "IL"."Feature_5" + 0.7414595360369532 * "IL"."Feature_6" + 0.8865854031582098 * "IL"."Feature_7" + 1.7960824855704987 * "IL"."Feature_8" + 1.3275237941389493 * "IL"."Feature_9" + 17.1337744091958 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180602144449_roq_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602144449_roq_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602144449_roq_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180602144449_roq_ol_identity_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.22894422824685728 * "HL_1_relu_1"."NEUR_1_1" + -3.557643730582295 * "HL_1_relu_1"."NEUR_1_2" + -4.88723322938756 * "HL_1_relu_1"."NEUR_1_3" + -0.14141976992143357 AS "NEUR_2_1", -17.332117414597715 * "HL_1_relu_1"."NEUR_1_1" + -33.050420508846344 * "HL_1_relu_1"."NEUR_1_2" + -10.870649906457865 * "HL_1_relu_1"."NEUR_1_3" + 38.13148680676716 AS "NEUR_2_2", -1.3691749878524247e-06 * "HL_1_relu_1"."NEUR_1_1" + -1.7378259361112855e-07 * "HL_1_relu_1"."NEUR_1_2" + 15.998980814223467 * "HL_1_relu_1"."NEUR_1_3" + -113.4412256958844 AS "NEUR_2_3", -5.5283472177126765 * "HL_1_relu_1"."NEUR_1_1" + -0.5047406575065106 * "HL_1_relu_1"."NEUR_1_2" + -0.40663007219724384 * "HL_1_relu_1"."NEUR_1_3" + -1.49641474582629 AS "NEUR_2_4", -0.606242203771098 * "HL_1_relu_1"."NEUR_1_1" + -0.6491411176250613 * "HL_1_relu_1"."NEUR_1_2" + -0.800371521031674 * "HL_1_relu_1"."NEUR_1_3" + -1.2435281947513717 AS "NEUR_2_5" 
FROM tmp_20180602144449_qmh_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.726823488455932 * "HL_2_relu"."NEUR_2_1" + -34.05959767753824 * "HL_2_relu"."NEUR_2_2" + 2.8576031430251447 * "HL_2_relu"."NEUR_2_3" + 0.6023920881057533 * "HL_2_relu"."NEUR_2_4" + -9.007743559955502 * "HL_2_relu"."NEUR_2_5" + -459.1642227971724 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180602144449_roq_ol_identity_1 AS "OL_identity_1"