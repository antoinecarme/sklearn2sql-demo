-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : boston
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516114830_codegen_yu6tcz_hl_1_relu_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114830_codegen_yu6tcz_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114830_codegen_yu6tcz_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516114830_codegen_yu6tcz_hl_1_relu_1 WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12" 
FROM "BOSTON" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.08901576170646097 * "IL"."Feature_0" + -0.3911189940540165 * "IL"."Feature_1" + -0.4844144011058116 * "IL"."Feature_2" + -0.541745734109603 * "IL"."Feature_3" + 0.22991173427306233 * "IL"."Feature_4" + 0.4757386540417703 * "IL"."Feature_5" + -0.24135910190557885 * "IL"."Feature_6" + -0.04906988915887183 * "IL"."Feature_7" + -0.019510769590622905 * "IL"."Feature_8" + -0.21287302967897706 * "IL"."Feature_9" + -0.28660594347008056 * "IL"."Feature_10" + -0.5237033241255554 * "IL"."Feature_11" + 0.07855236226096149 * "IL"."Feature_12" + 0.47035425387784957 AS "NEUR_1_1", 0.11860455308459306 * "IL"."Feature_0" + 0.0075970487340282925 * "IL"."Feature_1" + -0.3814614662357399 * "IL"."Feature_2" + 0.32477203483355493 * "IL"."Feature_3" + 0.17102166609262542 * "IL"."Feature_4" + 0.4587983872928085 * "IL"."Feature_5" + -0.2734880065111179 * "IL"."Feature_6" + -0.5850246767040455 * "IL"."Feature_7" + 0.5162045316154593 * "IL"."Feature_8" + -0.08650066643661607 * "IL"."Feature_9" + -0.37426484897960893 * "IL"."Feature_10" + -0.10563696271612098 * "IL"."Feature_11" + -0.439928084358646 * "IL"."Feature_12" + 0.3236916488602323 AS "NEUR_1_2", 0.5524020000906302 * "IL"."Feature_0" + -0.4017883050322518 * "IL"."Feature_1" + 0.2604613625752202 * "IL"."Feature_2" + 0.08705346108292955 * "IL"."Feature_3" + -0.3944736510230866 * "IL"."Feature_4" + -0.2350477072684491 * "IL"."Feature_5" + 0.08142342771045065 * "IL"."Feature_6" + -0.37497333789489345 * "IL"."Feature_7" + -0.5254107411268572 * "IL"."Feature_8" + -1.6471381763978266 * "IL"."Feature_9" + -0.07786357642346918 * "IL"."Feature_10" + -0.48739462562628344 * "IL"."Feature_11" + 0.3427390076234745 * "IL"."Feature_12" + -0.36059335302137313 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", greatest("HL_BA_1"."NEUR_1_1", 0) AS "NEUR_1_1", greatest("HL_BA_1"."NEUR_1_2", 0) AS "NEUR_1_2", greatest("HL_BA_1"."NEUR_1_3", 0) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"

-- Code For temporary table tmp_20180516114830_codegen_ss1759_ol_identity_1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516114830_codegen_ss1759_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114830_codegen_ss1759_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180516114830_codegen_ss1759_ol_identity_1 WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", 0.43321272389572346 * "HL_1_relu_1"."NEUR_1_1" + -0.6588762098426684 * "HL_1_relu_1"."NEUR_1_2" + -0.5537916236290644 * "HL_1_relu_1"."NEUR_1_3" + -0.21561857065747114 AS "NEUR_2_1", 0.07954500660649882 * "HL_1_relu_1"."NEUR_1_1" + -0.21492932515021912 * "HL_1_relu_1"."NEUR_1_2" + -0.0017650222691343496 * "HL_1_relu_1"."NEUR_1_3" + 4.751909669961521 AS "NEUR_2_2", -0.7697981404774923 * "HL_1_relu_1"."NEUR_1_1" + 0.2506968917522613 * "HL_1_relu_1"."NEUR_1_2" + -0.6890786412312941 * "HL_1_relu_1"."NEUR_1_3" + -0.09944490271087558 AS "NEUR_2_3", 0.3492452169799102 * "HL_1_relu_1"."NEUR_1_1" + 0.17346783016086403 * "HL_1_relu_1"."NEUR_1_2" + -0.25225169609888437 * "HL_1_relu_1"."NEUR_1_3" + -0.8413045237458209 AS "NEUR_2_4", -0.4066297038953739 * "HL_1_relu_1"."NEUR_1_1" + -0.796433036015429 * "HL_1_relu_1"."NEUR_1_2" + 0.1719758522353797 * "HL_1_relu_1"."NEUR_1_3" + -0.8668203436931581 AS "NEUR_2_5" 
FROM tmp_20180516114830_codegen_yu6tcz_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", greatest("HL_BA_2"."NEUR_2_1", 0) AS "NEUR_2_1", greatest("HL_BA_2"."NEUR_2_2", 0) AS "NEUR_2_2", greatest("HL_BA_2"."NEUR_2_3", 0) AS "NEUR_2_3", greatest("HL_BA_2"."NEUR_2_4", 0) AS "NEUR_2_4", greatest("HL_BA_2"."NEUR_2_5", 0) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.3191945764528494 * "HL_2_relu"."NEUR_2_1" + 3.7239448095986583 * "HL_2_relu"."NEUR_2_2" + -0.018690679681519003 * "HL_2_relu"."NEUR_2_3" + 0.3446177345724955 * "HL_2_relu"."NEUR_2_4" + 0.2894500537324957 * "HL_2_relu"."NEUR_2_5" + 4.883111029767 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180516114830_codegen_ss1759_ol_identity_1 AS "OL_identity_1"