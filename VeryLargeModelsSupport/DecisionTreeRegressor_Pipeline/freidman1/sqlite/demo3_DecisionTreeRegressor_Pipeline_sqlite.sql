-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329232217_825AKG_ADS_imp_1_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232217_825AKG_ADS_imp_1_OUT" (
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


-- Code For temporary table TMP_20180329232217_825AKG_ADS_imp_1_OUT part 2/2. Populate

INSERT INTO "TMP_20180329232217_825AKG_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.5629846484809591 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.45606442423375926 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.47113817481474773 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.533968020094518 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.4780936262373869 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.5682849224172329 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.47914374714280494 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.4594152477223205 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.4901106996809651 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.5378806933707533 ELSE "ADS"."Feature_9" END AS impter_11 
FROM freidman1 AS "ADS") AS "ADS_imp_1_OUT"
-- Code For temporary table TMP_20180329232217_94VRDD_ADS_sca_2_OUT part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329232217_94VRDD_ADS_sca_2_OUT" (
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


-- Code For temporary table TMP_20180329232217_94VRDD_ADS_sca_2_OUT part 2/2. Populate

INSERT INTO "TMP_20180329232217_94VRDD_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.5629846484809591) / 0.2583714683396337 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.45606442423375926) / 0.2878721730712705 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.47113817481474773) / 0.3109216791553051 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.533968020094518) / 0.2826199867400281 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.4780936262373869) / 0.286140491317745 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.5682849224172329) / 0.29767408106451737 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.47914374714280494) / 0.2735314971431575 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.4594152477223205) / 0.28721149346998975 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.4901106996809651) / 0.2790486717322703 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.5378806933707533) / 0.2958192296543193 AS scaler_11 
FROM "TMP_20180329232217_825AKG_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.03575253114104271) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.6631695628166199) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.2676679491996765) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -1.2497459650039673) THEN 4 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.2620937824249268) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.7026577591896057) THEN 7 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.2189650535583496) THEN 9 ELSE 10 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -1.555070161819458) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.20176033675670624) THEN 13 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.6375406980514526) THEN 15 ELSE 16 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.16519685089588165) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.5709044337272644) THEN 19 ELSE 20 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.2154730260372162) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.3106381893157959) THEN 23 ELSE 24 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.07700762152671814) THEN 26 ELSE 27 END END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7284272313117981) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.1900665760040283) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 1.1886308193206787) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -1.2217068672180176) THEN 32 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.5279591083526611) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.8419815301895142) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -1.084155559539795) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.9216151833534241) THEN 37 ELSE 38 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.635647177696228) THEN 40 ELSE 41 END END ELSE 42 END ELSE 43 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.1596950888633728) THEN 45 ELSE 46 END END ELSE 47 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.08383416384458542) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.526038646697998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.19739049673080444) THEN 51 ELSE 52 END ELSE 53 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.050650060176849365) THEN 55 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.8039736747741699) THEN 57 ELSE 58 END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.4527852237224579) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.5936968326568604) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7597913146018982) THEN 62 ELSE 63 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.9912045001983643) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.6431325674057007) THEN 66 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.7875051498413086) THEN 68 ELSE 69 END END ELSE 70 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9674954414367676) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.4717315435409546) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.002283010631799698) THEN 74 ELSE 75 END ELSE 76 END ELSE 77 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.9059769511222839) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.7435633540153503) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.8188172578811646) THEN 81 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.0249632596969604) THEN 83 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.04132270812988281) THEN 85 ELSE 86 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9644910097122192) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.2968900799751282) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.22205865383148193) THEN 90 ELSE 91 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.25047481060028076) THEN 93 ELSE 94 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.44411468505859375) THEN 96 ELSE 97 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -1.2575976848602295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.3265424966812134) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.4026244282722473) THEN 101 ELSE 102 END ELSE 103 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.7374852299690247) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.1817528009414673) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.04169179126620293) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.6447691917419434) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.07324644923210144) THEN 109 ELSE 110 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.12754252552986145) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.6012462377548218) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 1.1072546243667603) THEN 114 ELSE 115 END ELSE 116 END ELSE 117 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -1.1016908884048462) THEN 119 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.6331663131713867) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.3997676372528076) THEN 122 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.1168588399887085) THEN 124 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.302760511636734) THEN 126 ELSE 127 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.5516266822814941) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.5858339071273804) THEN 130 ELSE 131 END ELSE 132 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.3602754771709442) THEN 134 ELSE 135 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.9510244131088257) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 1.2456412315368652) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1751229763031006) THEN 139 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= 0.26171770691871643) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.1428461074829102) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.017116621136665344) THEN 143 ELSE 144 END ELSE 145 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.5686390399932861) THEN 147 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.17007258534431458) THEN 149 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 1.3410024642944336) THEN 151 ELSE 152 END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.7342626452445984) THEN 154 ELSE 155 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.6845793724060059) THEN 157 ELSE 158 END END END END END END AS node_id_2 
FROM "TMP_20180329232217_94VRDD_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 3 AS parent_id, 12.760129264370008 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 6 AS parent_id, 12.071171804127433 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 8 AS parent_id, 9.735041217996262 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 8 AS parent_id, 10.045203605952587 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 12 AS parent_id, 5.293284001301807 AS "Estimator" UNION ALL SELECT 15 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 14 AS parent_id, 5.794379036456321 AS "Estimator" UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 14 AS parent_id, 6.2457102486321485 AS "Estimator" UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 18 AS parent_id, 6.980046241948142 AS "Estimator" UNION ALL SELECT 20 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 18 AS parent_id, 6.861453719338209 AS "Estimator" UNION ALL SELECT 23 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 22 AS parent_id, 8.240178848678195 AS "Estimator" UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 22 AS parent_id, 8.06285010237755 AS "Estimator" UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 25 AS parent_id, 7.732429808148176 AS "Estimator" UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 25 AS parent_id, 7.556998078346253 AS "Estimator" UNION ALL SELECT 32 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 31 AS parent_id, 10.483066772506376 AS "Estimator" UNION ALL SELECT 37 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 36 AS parent_id, 12.109886588685942 AS "Estimator" UNION ALL SELECT 38 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 36 AS parent_id, 12.123142001356333 AS "Estimator" UNION ALL SELECT 40 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 39 AS parent_id, 11.789821637076107 AS "Estimator" UNION ALL SELECT 41 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 39 AS parent_id, 11.77602304541345 AS "Estimator" UNION ALL SELECT 42 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 34 AS parent_id, 11.313518144724842 AS "Estimator" UNION ALL SELECT 43 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 33 AS parent_id, 12.830344628983799 AS "Estimator" UNION ALL SELECT 45 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 44 AS parent_id, 10.20209310032856 AS "Estimator" UNION ALL SELECT 46 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 44 AS parent_id, 10.596890487725023 AS "Estimator" UNION ALL SELECT 47 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 29 AS parent_id, 8.897074147742197 AS "Estimator" UNION ALL SELECT 51 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 50 AS parent_id, 14.772563754565986 AS "Estimator" UNION ALL SELECT 52 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 50 AS parent_id, 14.051184902745373 AS "Estimator" UNION ALL SELECT 53 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 49 AS parent_id, 13.174202057525061 AS "Estimator" UNION ALL SELECT 55 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 54 AS parent_id, 15.922558108080853 AS "Estimator" UNION ALL SELECT 57 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 56 AS parent_id, 17.31914707358036 AS "Estimator" UNION ALL SELECT 58 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 56 AS parent_id, 18.282515066510527 AS "Estimator" UNION ALL SELECT 62 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 61 AS parent_id, 11.380993151416082 AS "Estimator" UNION ALL SELECT 63 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 61 AS parent_id, 13.119756721377405 AS "Estimator" UNION ALL SELECT 66 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 65 AS parent_id, 16.08254261562184 AS "Estimator" UNION ALL SELECT 68 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 67 AS parent_id, 16.324769596540094 AS "Estimator" UNION ALL SELECT 69 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 67 AS parent_id, 16.302556715766507 AS "Estimator" UNION ALL SELECT 70 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 64 AS parent_id, 14.4669963696142 AS "Estimator" UNION ALL SELECT 74 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 73 AS parent_id, 18.332058017434036 AS "Estimator" UNION ALL SELECT 75 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 73 AS parent_id, 18.493721395486528 AS "Estimator" UNION ALL SELECT 76 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 72 AS parent_id, 18.0076175728853 AS "Estimator" UNION ALL SELECT 77 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 71 AS parent_id, 23.693970395239383 AS "Estimator" UNION ALL SELECT 81 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 80 AS parent_id, 15.541797868565153 AS "Estimator" UNION ALL SELECT 83 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 82 AS parent_id, 7.219443350314415 AS "Estimator" UNION ALL SELECT 85 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 84 AS parent_id, 10.181631174833692 AS "Estimator" UNION ALL SELECT 86 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 84 AS parent_id, 10.131789617052231 AS "Estimator" UNION ALL SELECT 90 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 89 AS parent_id, 16.009611596379663 AS "Estimator" UNION ALL SELECT 91 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 89 AS parent_id, 16.301279206146624 AS "Estimator" UNION ALL SELECT 93 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 92 AS parent_id, 15.706521981990113 AS "Estimator" UNION ALL SELECT 94 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 92 AS parent_id, 15.701003452436051 AS "Estimator" UNION ALL SELECT 96 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 95 AS parent_id, 18.2506955183825 AS "Estimator" UNION ALL SELECT 97 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 95 AS parent_id, 17.89244707919063 AS "Estimator" UNION ALL SELECT 101 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 100 AS parent_id, 15.308483991007721 AS "Estimator" UNION ALL SELECT 102 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, 100 AS parent_id, 14.536245187358322 AS "Estimator" UNION ALL SELECT 103 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, 99 AS parent_id, 12.423411759463056 AS "Estimator" UNION ALL SELECT 109 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 108 AS parent_id, 18.237613821788198 AS "Estimator" UNION ALL SELECT 110 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 108 AS parent_id, 18.10948375079814 AS "Estimator" UNION ALL SELECT 114 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 113 AS parent_id, 20.069702085916557 AS "Estimator" UNION ALL SELECT 115 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 113 AS parent_id, 19.95894272650593 AS "Estimator" UNION ALL SELECT 116 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 112 AS parent_id, 20.199033606227683 AS "Estimator" UNION ALL SELECT 117 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 8 AS depth, 111 AS parent_id, 19.36426348416223 AS "Estimator" UNION ALL SELECT 119 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 118 AS parent_id, 19.59215342592271 AS "Estimator" UNION ALL SELECT 122 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 121 AS parent_id, 16.914408313385564 AS "Estimator" UNION ALL SELECT 124 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 123 AS parent_id, 17.36059041334922 AS "Estimator" UNION ALL SELECT 126 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 125 AS parent_id, 17.51855412510629 AS "Estimator" UNION ALL SELECT 127 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 125 AS parent_id, 17.451457795201584 AS "Estimator" UNION ALL SELECT 130 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 129 AS parent_id, 17.80609748957471 AS "Estimator" UNION ALL SELECT 131 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 129 AS parent_id, 17.954676995000113 AS "Estimator" UNION ALL SELECT 132 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 128 AS parent_id, 18.250248044100616 AS "Estimator" UNION ALL SELECT 134 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 133 AS parent_id, 23.18131440832091 AS "Estimator" UNION ALL SELECT 135 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 133 AS parent_id, 20.629855906779248 AS "Estimator" UNION ALL SELECT 139 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 138 AS parent_id, 19.303788312018888 AS "Estimator" UNION ALL SELECT 143 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 142 AS parent_id, 21.340993370178953 AS "Estimator" UNION ALL SELECT 144 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 142 AS parent_id, 21.774000353025308 AS "Estimator" UNION ALL SELECT 145 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 141 AS parent_id, 20.70189537226964 AS "Estimator" UNION ALL SELECT 147 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 9 AS depth, 146 AS parent_id, 23.76092016032117 AS "Estimator" UNION ALL SELECT 149 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 10 AS depth, 148 AS parent_id, 22.309754489339827 AS "Estimator" UNION ALL SELECT 151 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 150 AS parent_id, 22.76939496981568 AS "Estimator" UNION ALL SELECT 152 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 11 AS depth, 150 AS parent_id, 23.030279372436098 AS "Estimator" UNION ALL SELECT 154 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 153 AS parent_id, 25.24805848092261 AS "Estimator" UNION ALL SELECT 155 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 7 AS depth, 153 AS parent_id, 24.713338273149652 AS "Estimator" UNION ALL SELECT 157 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 156 AS parent_id, 18.900387696177468 AS "Estimator" UNION ALL SELECT 158 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 6 AS depth, 156 AS parent_id, 17.41761147731962 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."Estimator" AS "Estimator" 
FROM "DT_Output"