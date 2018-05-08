-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor_Pipeline
-- Dataset : diabetes
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180417025021_7o33q9_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025021_7o33q9_ads_  (
	"KEY" BIGINT, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025021_7o33q9_ads_ part 2/2. Populate

INSERT INTO tmp_20180417025021_7o33q9_ads_ ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0002686932066652995 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0007239580580639441 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0007280719825586765 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.001013565221084393 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0009763580732882109 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0017643808242337245 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0016512815450565026 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0013905501983388136 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0012726482548090939 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.001034425005681627 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180417025021_2blwo6_ads_ part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025021_2blwo6_ads_  (
	"KEY" BIGINT, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025021_2blwo6_ads_ part 2/2. Populate

INSERT INTO tmp_20180417025021_2blwo6_ads_ ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.000268693206665) / 0.047242095836538 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.000723958058064) / 0.047605576685039 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.000728071982559) / 0.046935911439369 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.001013565221084) / 0.048335271948972 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.000976358073288) / 0.048050762009702 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.001764380824234) / 0.048060808731544 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.001651281545057) / 0.04620240378043 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.001390550198339) / 0.047363093040532 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.001272648254809) / 0.045892861313648 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.001034425005682) / 0.047761585195706 AS scaler_11 
FROM tmp_20180417025021_7o33q9_ads_ AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table tmp_20180417025021_h5qv4k_hl_1 part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025021_h5qv4k_hl_1  (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025021_h5qv4k_hl_1 part 2/2. Populate

INSERT INTO tmp_20180417025021_h5qv4k_hl_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM tmp_20180417025021_2blwo6_ads_ AS "ADS_sca_2_OUT"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -3.641525927922719 * "IL".scaler_2 + -2.146722650485676 * "IL".scaler_3 + -1.12052734571788 * "IL".scaler_4 + 0.292041609365844 * "IL".scaler_5 + 2.637325534039227 * "IL".scaler_6 + 3.232647222436184 * "IL".scaler_7 + -3.055183568780576 * "IL".scaler_8 + -4.768549738940989 * "IL".scaler_9 + -3.363558519095022 * "IL".scaler_10 + -1.033870084735456 * "IL".scaler_11 + -1.484722234709689 AS "NEUR_1_1", -0.226554126985304 * "IL".scaler_2 + 1.075962160913151 * "IL".scaler_3 + -3.262706426029706 * "IL".scaler_4 + -3.352861339614166 * "IL".scaler_5 + -2.37966427101974 * "IL".scaler_6 + -6.218291316277157 * "IL".scaler_7 + 6.003568901416862 * "IL".scaler_8 + 2.850536853365166 * "IL".scaler_9 + 0.140965884918942 * "IL".scaler_10 + -2.654321786222787 * "IL".scaler_11 + -7.896491924173303 AS "NEUR_1_2", 0.498034542761239 * "IL".scaler_2 + -0.277369048627235 * "IL".scaler_3 + 1.415659356724306 * "IL".scaler_4 + 0.888877251400475 * "IL".scaler_5 + -5.262065479489379 * "IL".scaler_6 + 4.198778048858764 * "IL".scaler_7 + 1.051674304432772 * "IL".scaler_8 + 0.271883513744853 * "IL".scaler_9 + 3.593513944531302 * "IL".scaler_10 + 0.307743954272464 * "IL".scaler_11 + 4.734244914297272 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(greatest("HL_BA_1"."NEUR_1_1", 0.0) AS FLOAT) AS "NEUR_1_1", CAST(greatest("HL_BA_1"."NEUR_1_2", 0.0) AS FLOAT) AS "NEUR_1_2", CAST(greatest("HL_BA_1"."NEUR_1_3", 0.0) AS FLOAT) AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180417025021_x7tkoa_ol_i part 1/2. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180417025021_x7tkoa_ol_i  (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180417025021_x7tkoa_ol_i part 2/2. Populate

INSERT INTO tmp_20180417025021_x7tkoa_ol_i ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -1.289366387812844 * "HL_1_relu_1"."NEUR_1_1" + 1.776691195396982 * "HL_1_relu_1"."NEUR_1_2" + -2.068729167297351 * "HL_1_relu_1"."NEUR_1_3" + -0.162320286271135 AS "NEUR_2_1", -1.646527426755918 * "HL_1_relu_1"."NEUR_1_1" + -0.870130042231849 * "HL_1_relu_1"."NEUR_1_2" + -1.055860635497358 * "HL_1_relu_1"."NEUR_1_3" + -4.901874301898457 AS "NEUR_2_2", 1.038153943414217 * "HL_1_relu_1"."NEUR_1_1" + 7.233977476988104 * "HL_1_relu_1"."NEUR_1_2" + 3.036843532597604 * "HL_1_relu_1"."NEUR_1_3" + 1.191690781274045 AS "NEUR_2_3", -0.19565353962266 * "HL_1_relu_1"."NEUR_1_1" + -0.505140404923012 * "HL_1_relu_1"."NEUR_1_2" + -0.406629619252232 * "HL_1_relu_1"."NEUR_1_3" + -0.8471256168976 AS "NEUR_2_4", 0.079558239679197 * "HL_1_relu_1"."NEUR_1_1" + 6.453783140615478 * "HL_1_relu_1"."NEUR_1_2" + -1.027970251552537 * "HL_1_relu_1"."NEUR_1_3" + -5.108130093428866 AS "NEUR_2_5" 
FROM tmp_20180417025021_h5qv4k_hl_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(greatest("HL_BA_2"."NEUR_2_1", 0.0) AS FLOAT) AS "NEUR_2_1", CAST(greatest("HL_BA_2"."NEUR_2_2", 0.0) AS FLOAT) AS "NEUR_2_2", CAST(greatest("HL_BA_2"."NEUR_2_3", 0.0) AS FLOAT) AS "NEUR_2_3", CAST(greatest("HL_BA_2"."NEUR_2_4", 0.0) AS FLOAT) AS "NEUR_2_4", CAST(greatest("HL_BA_2"."NEUR_2_5", 0.0) AS FLOAT) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 2.486302411075944 * "HL_2_relu"."NEUR_2_1" + 1.502994444268018 * "HL_2_relu"."NEUR_2_2" + 6.951523244650881 * "HL_2_relu"."NEUR_2_3" + 0.702089206306155 * "HL_2_relu"."NEUR_2_4" + -8.501878860831729 * "HL_2_relu"."NEUR_2_5" + 14.579846867784326 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS FLOAT) AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180417025021_x7tkoa_ol_i AS "OL_identity_1"