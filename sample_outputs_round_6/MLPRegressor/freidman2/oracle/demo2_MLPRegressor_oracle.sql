-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3" 
FROM freidman2 "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.134579167728 * "IL"."Feature_0" + -0.591316275828 * "IL"."Feature_1" + -0.732365658468 * "IL"."Feature_2" + -0.819042477636 * "IL"."Feature_3" + 0.347593872734 AS "NEUR_1_1", -26.923325279 * "IL"."Feature_0" + 12.9920958317 * "IL"."Feature_1" + 17.9304427575 * "IL"."Feature_2" + -4.60103936029 * "IL"."Feature_3" + -1.11376200936 AS "NEUR_1_2", 0.877324537193 * "IL"."Feature_0" + -0.600904518083 * "IL"."Feature_1" + 0.490583898217 * "IL"."Feature_2" + 0.131714702764 * "IL"."Feature_3" + -0.592512275061 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.672795986084 * "HL_1_relu"."NEUR_1_1" + 0.0596408027614 * "HL_1_relu"."NEUR_1_2" + 0.730023372957 * "HL_1_relu"."NEUR_1_3" + -3.28738578543 AS "NEUR_2_1", 0.648838833611 * "HL_1_relu"."NEUR_1_1" + -0.0693952954698 * "HL_1_relu"."NEUR_1_2" + -0.645934918134 * "HL_1_relu"."NEUR_1_3" + -0.529290429612 AS "NEUR_2_2", -0.300721422784 * "HL_1_relu"."NEUR_1_1" + -0.82734974529 * "HL_1_relu"."NEUR_1_2" + -0.301047894042 * "HL_1_relu"."NEUR_1_3" + -0.0103942825038 AS "NEUR_2_3", -0.341333279495 * "HL_1_relu"."NEUR_1_1" + -0.518902585981 * "HL_1_relu"."NEUR_1_2" + -0.122330402791 * "HL_1_relu"."NEUR_1_3" + -0.740628349607 AS "NEUR_2_4", -0.386770407364 * "HL_1_relu"."NEUR_1_1" + -0.0275923920717 * "HL_1_relu"."NEUR_1_2" + 0.725281008458 * "HL_1_relu"."NEUR_1_3" + -0.149393226565 AS "NEUR_2_5" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.654970121355 * "HL_2_relu"."NEUR_2_1" + 0.128275456958 * "HL_2_relu"."NEUR_2_2" + -0.718399478071 * "HL_2_relu"."NEUR_2_3" + 0.682963531504 * "HL_2_relu"."NEUR_2_4" + 0.768085193434 * "HL_2_relu"."NEUR_2_5" + -2.08182360433 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"