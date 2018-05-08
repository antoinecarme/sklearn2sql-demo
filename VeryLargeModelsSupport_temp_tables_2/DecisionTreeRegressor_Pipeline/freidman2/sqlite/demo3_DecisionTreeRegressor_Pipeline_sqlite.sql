-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor_Pipeline
-- Dataset : freidman2
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 FLOAT, 
	imputer_output_3 FLOAT, 
	imputer_output_4 FLOAT, 
	imputer_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT_KEY" ON "TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 FLOAT, 
	scaler_output_3 FLOAT, 
	scaler_output_4 FLOAT, 
	scaler_output_5 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "TMP_20180508184756_CODEGEN_R448HZ_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT_KEY" ON "TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.017649224027991295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9838693141937256) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.6865601539611816) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.0818819999694824) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.15695497393608093) THEN 6 ELSE 7 END ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.4679744839668274) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5759087800979614) THEN 11 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -1.1247649192810059) THEN 13 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.1088578701019287) THEN 15 ELSE 16 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.49332666397094727) THEN 18 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.6441354751586914) THEN 20 ELSE 21 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.08898759633302689) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.0379496812820435) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.3915177583694458) THEN 25 ELSE 26 END ELSE 27 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5878596305847168) THEN 29 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.5445553064346313) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.7902272343635559) THEN 32 ELSE 33 END ELSE 34 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.1041902303695679) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.9536197185516357) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.2171605825424194) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.0228291749954224) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.34222930669784546) THEN 40 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.468196153640747) THEN 42 ELSE 43 END END ELSE 44 END ELSE 45 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.5195379257202148) THEN 47 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.21462327241897583) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.38024553656578064) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.778099536895752) THEN 51 ELSE 52 END ELSE 53 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.022104963660240173) THEN 55 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.9463390111923218) THEN 57 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.04505529999732971) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.6926804780960083) THEN 60 ELSE 61 END ELSE 62 END END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5779826641082764) THEN 64 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.5602400302886963) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.374273419380188) THEN 67 ELSE 68 END ELSE 69 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.047109298408031464) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.8755245804786682) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.3361194133758545) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.6273767948150635) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.5106252431869507) THEN 75 ELSE 76 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.1435799598693848) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.30970025062561035) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.494538426399231) THEN 80 ELSE 81 END ELSE 82 END ELSE 83 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.7943957448005676) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.2677711248397827) THEN 86 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.4229040741920471) THEN 88 ELSE 89 END END ELSE 90 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.8996042013168335) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.4353671967983246) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.588553786277771) THEN 94 ELSE 95 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.6764185428619385) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.2857843339443207) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.231494665145874) THEN 99 ELSE 100 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.43903884291648865) THEN 102 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.5409430265426636) THEN 104 ELSE 105 END END END ELSE 106 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.4812145233154297) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.06744769215583801) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.0209310054779053) THEN 110 ELSE 111 END ELSE 112 END ELSE 113 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.9779741168022156) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.5316546559333801) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.6911941170692444) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.013490259647369385) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.4673061966896057) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.14088141918182373) THEN 120 ELSE 121 END ELSE 122 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6658321619033813) THEN 124 ELSE 125 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7820532917976379) THEN 127 ELSE 128 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.13054856657981873) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7521138191223145) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.5260942578315735) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.12999559938907623) THEN 133 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.4345567524433136) THEN 135 ELSE 136 END END ELSE 137 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.6779933571815491) THEN 139 ELSE 140 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.4838908016681671) THEN 142 ELSE 143 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.5907565951347351) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.26137250661849976) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.4676707684993744) THEN 147 ELSE 148 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.5297801494598389) THEN 150 ELSE 151 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.5615323781967163) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.4191389083862305) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6991206407546997) THEN 155 ELSE 156 END ELSE 157 END ELSE 158 END END END END END AS node_id_2 
FROM "TMP_20180508184756_CODEGEN_LT2J7K_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 6 AS nid, 42.018391850884555 AS "E" UNION ALL SELECT 7 AS nid, 45.711134119636455 AS "E" UNION ALL SELECT 8 AS nid, 17.512631595279426 AS "E" UNION ALL SELECT 11 AS nid, 38.41875351252209 AS "E" UNION ALL SELECT 13 AS nid, 60.176849293467896 AS "E" UNION ALL SELECT 15 AS nid, 66.46875935932795 AS "E" UNION ALL SELECT 16 AS nid, 67.61473197876893 AS "E" UNION ALL SELECT 18 AS nid, 89.81697752732039 AS "E" UNION ALL SELECT 20 AS nid, 74.13416807423762 AS "E" UNION ALL SELECT 21 AS nid, 81.61991678616678 AS "E" UNION ALL SELECT 25 AS nid, 174.68142016985658 AS "E" UNION ALL SELECT 26 AS nid, 168.83377965051633 AS "E" UNION ALL SELECT 27 AS nid, 154.5046147319957 AS "E" UNION ALL SELECT 29 AS nid, 251.33228305881974 AS "E" UNION ALL SELECT 32 AS nid, 205.3701341514766 AS "E" UNION ALL SELECT 33 AS nid, 212.830158263888 AS "E" UNION ALL SELECT 34 AS nid, 222.68097150025514 AS "E" UNION ALL SELECT 40 AS nid, 112.36813458423964 AS "E" UNION ALL SELECT 42 AS nid, 131.7476052576105 AS "E" UNION ALL SELECT 43 AS nid, 123.9800647564113 AS "E" UNION ALL SELECT 44 AS nid, 43.137171961132545 AS "E" UNION ALL SELECT 45 AS nid, 210.24199264146273 AS "E" UNION ALL SELECT 47 AS nid, 469.13995215914326 AS "E" UNION ALL SELECT 51 AS nid, 217.90641984715455 AS "E" UNION ALL SELECT 52 AS nid, 238.91298804636327 AS "E" UNION ALL SELECT 53 AS nid, 287.2624276861204 AS "E" UNION ALL SELECT 55 AS nid, 297.00533496279684 AS "E" UNION ALL SELECT 57 AS nid, 310.5792772981182 AS "E" UNION ALL SELECT 60 AS nid, 331.0359431254546 AS "E" UNION ALL SELECT 61 AS nid, 337.38826235560066 AS "E" UNION ALL SELECT 62 AS nid, 345.51744455608434 AS "E" UNION ALL SELECT 64 AS nid, 520.6117294724178 AS "E" UNION ALL SELECT 67 AS nid, 692.100943703165 AS "E" UNION ALL SELECT 68 AS nid, 707.7479790727192 AS "E" UNION ALL SELECT 69 AS nid, 816.8126591641881 AS "E" UNION ALL SELECT 75 AS nid, 96.00340236716809 AS "E" UNION ALL SELECT 76 AS nid, 129.17022248364017 AS "E" UNION ALL SELECT 80 AS nid, 193.36881074753134 AS "E" UNION ALL SELECT 81 AS nid, 192.5928874201031 AS "E" UNION ALL SELECT 82 AS nid, 184.8117623795125 AS "E" UNION ALL SELECT 83 AS nid, 241.12137081481941 AS "E" UNION ALL SELECT 86 AS nid, 304.56729484769863 AS "E" UNION ALL SELECT 88 AS nid, 340.8943254832582 AS "E" UNION ALL SELECT 89 AS nid, 367.21643390195726 AS "E" UNION ALL SELECT 90 AS nid, 242.6439856433348 AS "E" UNION ALL SELECT 94 AS nid, 419.3634674915536 AS "E" UNION ALL SELECT 95 AS nid, 456.84183869251734 AS "E" UNION ALL SELECT 99 AS nid, 501.63259525741347 AS "E" UNION ALL SELECT 100 AS nid, 543.1057724695256 AS "E" UNION ALL SELECT 102 AS nid, 616.9050653403907 AS "E" UNION ALL SELECT 104 AS nid, 565.7152101690104 AS "E" UNION ALL SELECT 105 AS nid, 577.3486508054865 AS "E" UNION ALL SELECT 106 AS nid, 670.1311858368937 AS "E" UNION ALL SELECT 110 AS nid, 760.2182410358755 AS "E" UNION ALL SELECT 111 AS nid, 762.1275405517559 AS "E" UNION ALL SELECT 112 AS nid, 753.5866338204527 AS "E" UNION ALL SELECT 113 AS nid, 557.4241818513145 AS "E" UNION ALL SELECT 120 AS nid, 630.473085951346 AS "E" UNION ALL SELECT 121 AS nid, 651.5124225081717 AS "E" UNION ALL SELECT 122 AS nid, 680.9611485933566 AS "E" UNION ALL SELECT 124 AS nid, 695.9918006634392 AS "E" UNION ALL SELECT 125 AS nid, 737.4086577418452 AS "E" UNION ALL SELECT 127 AS nid, 784.5912586165624 AS "E" UNION ALL SELECT 128 AS nid, 859.3972652126482 AS "E" UNION ALL SELECT 133 AS nid, 921.1463304331277 AS "E" UNION ALL SELECT 135 AS nid, 936.0898420199726 AS "E" UNION ALL SELECT 136 AS nid, 936.6644927377602 AS "E" UNION ALL SELECT 137 AS nid, 897.110753642675 AS "E" UNION ALL SELECT 139 AS nid, 964.5628691682748 AS "E" UNION ALL SELECT 140 AS nid, 991.6542322177195 AS "E" UNION ALL SELECT 142 AS nid, 1054.1627757923247 AS "E" UNION ALL SELECT 143 AS nid, 1161.775898155192 AS "E" UNION ALL SELECT 147 AS nid, 954.0167507361758 AS "E" UNION ALL SELECT 148 AS nid, 1006.9476600275759 AS "E" UNION ALL SELECT 150 AS nid, 1072.7024657572488 AS "E" UNION ALL SELECT 151 AS nid, 1066.496728091284 AS "E" UNION ALL SELECT 155 AS nid, 1344.2857263205178 AS "E" UNION ALL SELECT 156 AS nid, 1299.7532681415528 AS "E" UNION ALL SELECT 157 AS nid, 1450.4501202950794 AS "E" UNION ALL SELECT 158 AS nid, 1185.2623187042484 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"