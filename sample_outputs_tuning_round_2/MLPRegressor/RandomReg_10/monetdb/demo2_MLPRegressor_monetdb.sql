-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9" 
FROM "RandomReg_10" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -61.0102393877 * "IL"."Feature_0" + -3.5564441027 * "IL"."Feature_1" + -13.069116379 * "IL"."Feature_2" + -11.5371001513 * "IL"."Feature_3" + -9.35639706977 * "IL"."Feature_4" + -43.2371025575 * "IL"."Feature_5" + 2.61360794666 * "IL"."Feature_6" + 29.3733375434 * "IL"."Feature_7" + 5.4223576354 * "IL"."Feature_8" + -10.3832810256 * "IL"."Feature_9" + 59.9658461934 AS "NEUR_1_1", -40.0510112995 * "IL"."Feature_0" + -15.7123646835 * "IL"."Feature_1" + -30.4150597738 * "IL"."Feature_2" + -17.6965177689 * "IL"."Feature_3" + -6.68870556705 * "IL"."Feature_4" + -24.6713230486 * "IL"."Feature_5" + 12.689280105 * "IL"."Feature_6" + 13.9899983369 * "IL"."Feature_7" + -10.0068337708 * "IL"."Feature_8" + -8.62491588544 * "IL"."Feature_9" + 26.0112822409 AS "NEUR_1_2", 0.751147289664 * "IL"."Feature_0" + 1.64377196706 * "IL"."Feature_1" + 2.06980971729 * "IL"."Feature_2" + 0.753231533748 * "IL"."Feature_3" + 1.17000556955 * "IL"."Feature_4" + 1.85662244362 * "IL"."Feature_5" + 0.741459536037 * "IL"."Feature_6" + 0.886585403158 * "IL"."Feature_7" + 1.79608248557 * "IL"."Feature_8" + 1.32752379414 * "IL"."Feature_9" + 17.1337744092 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.228944228247 * "HL_1_relu"."NEUR_1_1" + -3.55764373058 * "HL_1_relu"."NEUR_1_2" + -4.88723322939 * "HL_1_relu"."NEUR_1_3" + -0.141419769921 AS "NEUR_2_1", -17.3321174146 * "HL_1_relu"."NEUR_1_1" + -33.0504205088 * "HL_1_relu"."NEUR_1_2" + -10.8706499065 * "HL_1_relu"."NEUR_1_3" + 38.1314868068 AS "NEUR_2_2", -1.36917498785e-06 * "HL_1_relu"."NEUR_1_1" + -1.73782593611e-07 * "HL_1_relu"."NEUR_1_2" + 15.9989808142 * "HL_1_relu"."NEUR_1_3" + -113.441225696 AS "NEUR_2_3", -5.52834721771 * "HL_1_relu"."NEUR_1_1" + -0.504740657507 * "HL_1_relu"."NEUR_1_2" + -0.406630072197 * "HL_1_relu"."NEUR_1_3" + -1.49641474583 AS "NEUR_2_4", -0.606242203771 * "HL_1_relu"."NEUR_1_1" + -0.649141117625 * "HL_1_relu"."NEUR_1_2" + -0.800371521032 * "HL_1_relu"."NEUR_1_3" + -1.24352819475 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.726823488456 * "HL_2_relu"."NEUR_2_1" + -34.0595976775 * "HL_2_relu"."NEUR_2_2" + 2.85760314303 * "HL_2_relu"."NEUR_2_3" + 0.602392088106 * "HL_2_relu"."NEUR_2_4" + -9.00774355996 * "HL_2_relu"."NEUR_2_5" + -459.164222797 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"