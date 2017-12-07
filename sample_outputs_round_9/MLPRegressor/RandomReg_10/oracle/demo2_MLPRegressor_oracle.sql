-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9" 
FROM "RandomReg_10" "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.449003699556 * "IL"."Feature_0" + 5.96780667893 * "IL"."Feature_1" + 3.15996122982 * "IL"."Feature_2" + 4.08509684916 * "IL"."Feature_3" + 4.30313986328 * "IL"."Feature_4" + 7.07365321143 * "IL"."Feature_5" + 1.95426707152 * "IL"."Feature_6" + 5.29326995113 * "IL"."Feature_7" + 5.06382652111 * "IL"."Feature_8" + 4.62093639174 * "IL"."Feature_9" + 0.701236691878 AS "NEUR_1_1", -5.57910030679 * "IL"."Feature_0" + -17.5899532882 * "IL"."Feature_1" + -23.9943633211 * "IL"."Feature_2" + -16.2236340279 * "IL"."Feature_3" + 9.89289904834 * "IL"."Feature_4" + -21.2802648135 * "IL"."Feature_5" + -29.2883175941 * "IL"."Feature_6" + -23.1836584693 * "IL"."Feature_7" + -33.0153396708 * "IL"."Feature_8" + 8.79512878323 * "IL"."Feature_9" + -2.01255160689 AS "NEUR_1_2", 8.44819566523 * "IL"."Feature_0" + 4.82103807778 * "IL"."Feature_1" + 7.59839459188 * "IL"."Feature_2" + -8.27262727287 * "IL"."Feature_3" + 4.45319484742 * "IL"."Feature_4" + 0.745185585219 * "IL"."Feature_5" + 1.53747955357 * "IL"."Feature_6" + 3.58075399897 * "IL"."Feature_7" + 8.10037521596 * "IL"."Feature_8" + -2.02828297495 * "IL"."Feature_9" + -7.74744857093 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -3.85637716857 * "HL_1_relu"."NEUR_1_1" + 0.045469285465 * "HL_1_relu"."NEUR_1_2" + -4.0609122456 * "HL_1_relu"."NEUR_1_3" + -0.897457649962 AS "NEUR_2_1", 3.66296597126 * "HL_1_relu"."NEUR_1_1" + 8.46850969237 * "HL_1_relu"."NEUR_1_2" + 0.795112363417 * "HL_1_relu"."NEUR_1_3" + -21.6225741951 AS "NEUR_2_2", -2.08513229302 * "HL_1_relu"."NEUR_1_1" + 1.49074930502 * "HL_1_relu"."NEUR_1_2" + -9.28294675696 * "HL_1_relu"."NEUR_1_3" + 4.45999568348 AS "NEUR_2_3", 0.575266714028 * "HL_1_relu"."NEUR_1_1" + -0.572127389561 * "HL_1_relu"."NEUR_1_2" + -1.11482159308 * "HL_1_relu"."NEUR_1_3" + -0.790398693152 AS "NEUR_2_4", -0.50596133165 * "HL_1_relu"."NEUR_1_1" + 0.516579399269 * "HL_1_relu"."NEUR_1_2" + -1.16112980275 * "HL_1_relu"."NEUR_1_3" + -0.513466231633 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.345441473977 * "HL_2_relu"."NEUR_2_1" + 3.41982703402 * "HL_2_relu"."NEUR_2_2" + -19.5396787206 * "HL_2_relu"."NEUR_2_3" + 1.16804352362 * "HL_2_relu"."NEUR_2_4" + -0.652987428535 * "HL_2_relu"."NEUR_2_5" + 28.4017736142 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"