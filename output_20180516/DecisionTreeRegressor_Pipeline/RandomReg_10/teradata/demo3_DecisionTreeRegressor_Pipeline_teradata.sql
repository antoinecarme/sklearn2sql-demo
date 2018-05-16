-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516113623_codegen_i5d91e_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516113623_codegen_i5d91e_ads_imp_1_out  (
	"KEY" BIGINT, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516113623_codegen_i5d91e_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516113623_codegen_i5d91e_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516113623_codegen_p8e8rq_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516113623_codegen_p8e8rq_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516113623_codegen_p8e8rq_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516113623_codegen_p8e8rq_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - CAST(0.166809472981374 AS DOUBLE PRECISION)) / CAST(1.028983599704731 AS DOUBLE PRECISION) AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - CAST(-0.163512719944435 AS DOUBLE PRECISION)) / CAST(0.991581253504681 AS DOUBLE PRECISION) AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - CAST(0.191492922410032 AS DOUBLE PRECISION)) / CAST(0.932114762914776 AS DOUBLE PRECISION) AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - CAST(0.058384844753055 AS DOUBLE PRECISION)) / CAST(1.08557293295068 AS DOUBLE PRECISION) AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - CAST(-0.099332051621223 AS DOUBLE PRECISION)) / CAST(1.074390441288283 AS DOUBLE PRECISION) AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - CAST(0.21293121660488 AS DOUBLE PRECISION)) / CAST(0.935807438188625 AS DOUBLE PRECISION) AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - CAST(0.04786556869003 AS DOUBLE PRECISION)) / CAST(1.136357409061339 AS DOUBLE PRECISION) AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - CAST(0.050786989590842 AS DOUBLE PRECISION)) / CAST(0.972545746009845 AS DOUBLE PRECISION) AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - CAST(-0.191319922590819 AS DOUBLE PRECISION)) / CAST(1.141597467793656 AS DOUBLE PRECISION) AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - CAST(0.199404056774734 AS DOUBLE PRECISION)) / CAST(0.882245682091319 AS DOUBLE PRECISION) AS scaler_11 
FROM tmp_20180516113623_codegen_i5d91e_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(0.316480308771133 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-0.940362334251404 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-1.16836404800415 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= CAST(-0.717746615409851 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.330832898616791 AS DOUBLE PRECISION)) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-1.963046073913574 AS DOUBLE PRECISION)) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.769294142723084 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(-0.660580396652222 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.39782041311264 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-1.334725260734558 AS DOUBLE PRECISION)) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-0.320218324661255 AS DOUBLE PRECISION)) THEN 18 ELSE 19 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-1.06139326095581 AS DOUBLE PRECISION)) THEN 21 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-0.484392315149307 AS DOUBLE PRECISION)) THEN 23 ELSE 24 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(0.071415118873119 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(-0.129187762737274 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(1.158740043640137 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(1.317533493041992 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-1.581790924072266 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-2.201444387435913 AS DOUBLE PRECISION)) THEN 31 ELSE 32 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= CAST(-1.243882179260254 AS DOUBLE PRECISION)) THEN 34 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= CAST(-0.80214136838913 AS DOUBLE PRECISION)) THEN 36 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(0.338095724582672 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(-0.569653272628784 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(0.466831803321838 AS DOUBLE PRECISION)) THEN 40 ELSE 41 END ELSE 42 END ELSE 43 END END END END ELSE 44 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(1.257279396057129 AS DOUBLE PRECISION)) THEN 46 ELSE 47 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(-0.358718693256378 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(0.607516348361969 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.475377291440964 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.139382421970367 AS DOUBLE PRECISION)) THEN 52 ELSE 53 END ELSE 54 END ELSE 55 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-0.306599378585815 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(0.834126710891724 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.010669440031052 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(0.918481886386871 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-0.549369096755981 AS DOUBLE PRECISION)) THEN 61 ELSE 62 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.2857745885849 AS DOUBLE PRECISION)) THEN 64 ELSE 65 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-1.082410573959351 AS DOUBLE PRECISION)) THEN 67 ELSE 68 END END ELSE 69 END ELSE 70 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.569673478603363 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= CAST(-0.29702639579773 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(-0.494874000549316 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(-1.240360021591186 AS DOUBLE PRECISION)) THEN 75 ELSE 76 END ELSE 77 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-0.789976119995117 AS DOUBLE PRECISION)) THEN 79 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(-0.956656813621521 AS DOUBLE PRECISION)) THEN 81 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.453771978616714 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(-0.90888124704361 AS DOUBLE PRECISION)) THEN 84 ELSE 85 END ELSE 86 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(0.336501061916351 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(0.410309553146362 AS DOUBLE PRECISION)) THEN 89 ELSE 90 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(1.155539631843567 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(0.79535973072052 AS DOUBLE PRECISION)) THEN 93 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(1.221036553382874 AS DOUBLE PRECISION)) THEN 95 ELSE 96 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(0.977638900279999 AS DOUBLE PRECISION)) THEN 98 ELSE 99 END END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-1.022178888320923 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-0.112370610237122 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-1.746016025543213 AS DOUBLE PRECISION)) THEN 103 ELSE 104 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= CAST(-0.1518235206604 AS DOUBLE PRECISION)) THEN 106 ELSE 107 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(-0.463795930147171 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(0.977769494056702 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.041269391775131 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(0.158887505531311 AS DOUBLE PRECISION)) THEN 112 ELSE 113 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(-0.08983188867569 AS DOUBLE PRECISION)) THEN 115 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-0.189723268151283 AS DOUBLE PRECISION)) THEN 117 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(0.798079252243042 AS DOUBLE PRECISION)) THEN 119 ELSE 120 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(1.221749782562256 AS DOUBLE PRECISION)) THEN 122 ELSE 123 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(-0.212332665920258 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= CAST(-0.65477591753006 AS DOUBLE PRECISION)) THEN 126 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-0.250746876001358 AS DOUBLE PRECISION)) THEN 128 ELSE 129 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(0.335741281509399 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(0.480721026659012 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(1.5352041721344 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= CAST(1.493337869644165 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(-0.30978661775589 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= CAST(1.309023022651672 AS DOUBLE PRECISION)) THEN 136 ELSE 137 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-1.165637493133545 AS DOUBLE PRECISION)) THEN 139 ELSE 140 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(-0.469679951667786 AS DOUBLE PRECISION)) THEN 142 ELSE 143 END END ELSE 144 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= CAST(-0.22929173707962 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(1.137302756309509 AS DOUBLE PRECISION)) THEN 147 ELSE 148 END ELSE 149 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= CAST(0.826865971088409 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= CAST(-0.394866406917572 AS DOUBLE PRECISION)) THEN 152 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= CAST(1.212958216667175 AS DOUBLE PRECISION)) THEN 154 ELSE 155 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= CAST(0.715184926986694 AS DOUBLE PRECISION)) THEN 157 ELSE 158 END END END END END END END AS node_id_2 
FROM tmp_20180516113623_codegen_p8e8rq_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 5 AS nid, CAST(-230.73613627532504 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 7 AS nid, CAST(-284.890410429711 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 8 AS nid, CAST(-305.67509721048407 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 13 AS nid, CAST(-103.03861456879999 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(-101.20974879377152 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 15 AS nid, CAST(-53.55855810403282 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 16 AS nid, CAST(-165.64587304935068 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 18 AS nid, CAST(-186.24037602901686 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 19 AS nid, CAST(-210.35491750133752 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 21 AS nid, CAST(-351.3842930876292 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 23 AS nid, CAST(-422.39029400237723 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 24 AS nid, CAST(-459.030670753418 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 31 AS nid, CAST(-251.2683418956458 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 32 AS nid, CAST(-237.15037500402434 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 34 AS nid, CAST(-223.26828856161853 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 36 AS nid, CAST(-140.8312353487667 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 40 AS nid, CAST(-182.332005662268 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 41 AS nid, CAST(-182.68535868074787 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 42 AS nid, CAST(-181.5117298102302 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 43 AS nid, CAST(-168.02760851528973 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 44 AS nid, CAST(-80.36713172562187 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 46 AS nid, CAST(11.979848483268036 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 47 AS nid, CAST(-49.96946031186734 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 52 AS nid, CAST(-154.4008369933406 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 53 AS nid, CAST(-130.2085667212895 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 54 AS nid, CAST(-97.81389433706303 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 55 AS nid, CAST(44.29871810773541 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 61 AS nid, CAST(-9.617958070006466 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 62 AS nid, CAST(-6.190722744000084 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 64 AS nid, CAST(3.07608881219366 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 65 AS nid, CAST(-1.7789086303776 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 67 AS nid, CAST(-33.10367734893197 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 68 AS nid, CAST(-20.27001010137917 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 69 AS nid, CAST(26.98702515915835 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 70 AS nid, CAST(58.89206444679999 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 75 AS nid, CAST(-32.3700606387813 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 76 AS nid, CAST(-33.337014733450744 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 77 AS nid, CAST(23.511748777975313 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 79 AS nid, CAST(-8.541514583322922 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 81 AS nid, CAST(60.83005801950535 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 84 AS nid, CAST(133.8707138905623 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 85 AS nid, CAST(116.8891961793557 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 86 AS nid, CAST(156.74808220262196 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 89 AS nid, CAST(198.97164294103212 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 90 AS nid, CAST(58.56592202346141 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 93 AS nid, CAST(320.6826523308587 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 95 AS nid, CAST(393.261092787257 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 96 AS nid, CAST(360.61572443308125 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 98 AS nid, CAST(239.63425512448524 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 99 AS nid, CAST(243.63801061508232 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 103 AS nid, CAST(-298.79907558939374 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 104 AS nid, CAST(-268.1904323885528 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 106 AS nid, CAST(8.923656244969493 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 107 AS nid, CAST(-20.4235287408218 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 112 AS nid, CAST(-67.71218597426643 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 113 AS nid, CAST(-27.42654029072463 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 115 AS nid, CAST(131.0368050808161 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 117 AS nid, CAST(62.64480580928396 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 119 AS nid, CAST(37.34665341388054 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 120 AS nid, CAST(38.71263785211542 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 122 AS nid, CAST(277.9812845098006 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 123 AS nid, CAST(250.182760095915 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 126 AS nid, CAST(-9.185160907179679 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 128 AS nid, CAST(144.424454256417 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 129 AS nid, CAST(156.85798347147366 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 136 AS nid, CAST(259.87552025822583 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 137 AS nid, CAST(290.7091540973176 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 139 AS nid, CAST(235.3201708856319 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 140 AS nid, CAST(228.58868551702312 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 142 AS nid, CAST(194.4087167101487 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 143 AS nid, CAST(191.5521549407964 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 144 AS nid, CAST(113.4408795258052 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 147 AS nid, CAST(325.0738816201826 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 148 AS nid, CAST(316.51213779149236 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 149 AS nid, CAST(349.42168234218923 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 152 AS nid, CAST(248.55956547532833 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 154 AS nid, CAST(310.60889077931495 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 155 AS nid, CAST(351.37130796411674 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 157 AS nid, CAST(447.6909835452225 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 158 AS nid, CAST(479.7072160445087 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"