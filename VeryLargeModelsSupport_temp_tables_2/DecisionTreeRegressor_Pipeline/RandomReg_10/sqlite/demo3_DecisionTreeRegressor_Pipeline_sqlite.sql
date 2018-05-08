-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor_Pipeline
-- Dataset : RandomReg_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.16680947298137394 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.16351271994443456 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.19149292241003152 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.058384844753055345 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.09933205162122274 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.21293121660488037 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.047865568690029614 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.05078698959084227 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.1913199225908187 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.19940405677473352 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT_KEY" ON "TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM "TMP_20180508182153_CODEGEN_MDDAPW_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT_KEY" ON "TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.3164803087711334) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.9403623342514038) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.1683640480041504) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.7177466154098511) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.33083289861679077) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.9630460739135742) THEN 7 ELSE 8 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.7692941427230835) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.6605803966522217) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.3978204131126404) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.334725260734558) THEN 13 ELSE 14 END ELSE 15 END ELSE 16 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.3202183246612549) THEN 18 ELSE 19 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.0613932609558105) THEN 21 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.48439231514930725) THEN 23 ELSE 24 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.07141511887311935) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.12918776273727417) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 1.1587400436401367) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 1.3175334930419922) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.5817909240722656) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -2.201444387435913) THEN 31 ELSE 32 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -1.243882179260254) THEN 34 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.8021413683891296) THEN 36 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.3380957245826721) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= -0.5696532726287842) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= 0.4668318033218384) THEN 40 ELSE 41 END ELSE 42 END ELSE 43 END END END END ELSE 44 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 1.257279396057129) THEN 46 ELSE 47 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.3587186932563782) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.607516348361969) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.47537729144096375) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.13938242197036743) THEN 52 ELSE 53 END ELSE 54 END ELSE 55 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.30659937858581543) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.8341267108917236) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.010669440031051636) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= 0.9184818863868713) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.5493690967559814) THEN 61 ELSE 62 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.2857745885848999) THEN 64 ELSE 65 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -1.0824105739593506) THEN 67 ELSE 68 END END ELSE 69 END ELSE 70 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.569673478603363) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_3 <= -0.2970263957977295) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.4948740005493164) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -1.2403600215911865) THEN 75 ELSE 76 END ELSE 77 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.7899761199951172) THEN 79 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.956656813621521) THEN 81 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.4537719786167145) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.9088812470436096) THEN 84 ELSE 85 END ELSE 86 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.3365010619163513) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.4103095531463623) THEN 89 ELSE 90 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 1.155539631843567) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.79535973072052) THEN 93 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.2210365533828735) THEN 95 ELSE 96 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 0.9776389002799988) THEN 98 ELSE 99 END END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.0221788883209229) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.11237061023712158) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -1.746016025543213) THEN 103 ELSE 104 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_5 <= -0.1518235206604004) THEN 106 ELSE 107 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= -0.463795930147171) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 0.9777694940567017) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.041269391775131226) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.15888750553131104) THEN 112 ELSE 113 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.0898318886756897) THEN 115 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.18972326815128326) THEN 117 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 0.798079252243042) THEN 119 ELSE 120 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.2217497825622559) THEN 122 ELSE 123 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= -0.21233266592025757) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_8 <= -0.6547759175300598) THEN 126 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.25074687600135803) THEN 128 ELSE 129 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= 0.3357412815093994) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 0.48072102665901184) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 1.5352041721343994) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_4 <= 1.493337869644165) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= -0.3097866177558899) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_10 <= 1.3090230226516724) THEN 136 ELSE 137 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -1.165637493133545) THEN 139 ELSE 140 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= -0.46967995166778564) THEN 142 ELSE 143 END END ELSE 144 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_7 <= -0.22929173707962036) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 1.1373027563095093) THEN 147 ELSE 148 END ELSE 149 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_2 <= 0.8268659710884094) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= -0.394866406917572) THEN 152 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_6 <= 1.2129582166671753) THEN 154 ELSE 155 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_9 <= 0.7151849269866943) THEN 157 ELSE 158 END END END END END END END AS node_id_2 
FROM "TMP_20180508182153_CODEGEN_VWNKRQ_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 5 AS nid, -230.736136275325 AS "E" UNION ALL SELECT 7 AS nid, -284.890410429711 AS "E" UNION ALL SELECT 8 AS nid, -305.6750972104841 AS "E" UNION ALL SELECT 13 AS nid, -103.03861456879999 AS "E" UNION ALL SELECT 14 AS nid, -101.20974879377152 AS "E" UNION ALL SELECT 15 AS nid, -53.55855810403281 AS "E" UNION ALL SELECT 16 AS nid, -165.64587304935068 AS "E" UNION ALL SELECT 18 AS nid, -186.24037602901686 AS "E" UNION ALL SELECT 19 AS nid, -210.35491750133752 AS "E" UNION ALL SELECT 21 AS nid, -351.3842930876292 AS "E" UNION ALL SELECT 23 AS nid, -422.39029400237723 AS "E" UNION ALL SELECT 24 AS nid, -459.030670753418 AS "E" UNION ALL SELECT 31 AS nid, -251.2683418956458 AS "E" UNION ALL SELECT 32 AS nid, -237.15037500402434 AS "E" UNION ALL SELECT 34 AS nid, -223.26828856161853 AS "E" UNION ALL SELECT 36 AS nid, -140.8312353487667 AS "E" UNION ALL SELECT 40 AS nid, -182.332005662268 AS "E" UNION ALL SELECT 41 AS nid, -182.68535868074787 AS "E" UNION ALL SELECT 42 AS nid, -181.5117298102302 AS "E" UNION ALL SELECT 43 AS nid, -168.02760851528973 AS "E" UNION ALL SELECT 44 AS nid, -80.36713172562187 AS "E" UNION ALL SELECT 46 AS nid, 11.979848483268036 AS "E" UNION ALL SELECT 47 AS nid, -49.96946031186734 AS "E" UNION ALL SELECT 52 AS nid, -154.40083699334056 AS "E" UNION ALL SELECT 53 AS nid, -130.2085667212895 AS "E" UNION ALL SELECT 54 AS nid, -97.81389433706303 AS "E" UNION ALL SELECT 55 AS nid, 44.29871810773541 AS "E" UNION ALL SELECT 61 AS nid, -9.617958070006466 AS "E" UNION ALL SELECT 62 AS nid, -6.190722744000084 AS "E" UNION ALL SELECT 64 AS nid, 3.0760888121936603 AS "E" UNION ALL SELECT 65 AS nid, -1.7789086303776003 AS "E" UNION ALL SELECT 67 AS nid, -33.10367734893197 AS "E" UNION ALL SELECT 68 AS nid, -20.27001010137917 AS "E" UNION ALL SELECT 69 AS nid, 26.98702515915835 AS "E" UNION ALL SELECT 70 AS nid, 58.89206444679999 AS "E" UNION ALL SELECT 75 AS nid, -32.3700606387813 AS "E" UNION ALL SELECT 76 AS nid, -33.337014733450744 AS "E" UNION ALL SELECT 77 AS nid, 23.511748777975313 AS "E" UNION ALL SELECT 79 AS nid, -8.541514583322922 AS "E" UNION ALL SELECT 81 AS nid, 60.83005801950535 AS "E" UNION ALL SELECT 84 AS nid, 133.8707138905623 AS "E" UNION ALL SELECT 85 AS nid, 116.8891961793557 AS "E" UNION ALL SELECT 86 AS nid, 156.74808220262196 AS "E" UNION ALL SELECT 89 AS nid, 198.97164294103214 AS "E" UNION ALL SELECT 90 AS nid, 58.56592202346141 AS "E" UNION ALL SELECT 93 AS nid, 320.6826523308587 AS "E" UNION ALL SELECT 95 AS nid, 393.261092787257 AS "E" UNION ALL SELECT 96 AS nid, 360.61572443308125 AS "E" UNION ALL SELECT 98 AS nid, 239.63425512448524 AS "E" UNION ALL SELECT 99 AS nid, 243.63801061508232 AS "E" UNION ALL SELECT 103 AS nid, -298.79907558939374 AS "E" UNION ALL SELECT 104 AS nid, -268.1904323885528 AS "E" UNION ALL SELECT 106 AS nid, 8.923656244969493 AS "E" UNION ALL SELECT 107 AS nid, -20.4235287408218 AS "E" UNION ALL SELECT 112 AS nid, -67.71218597426643 AS "E" UNION ALL SELECT 113 AS nid, -27.42654029072463 AS "E" UNION ALL SELECT 115 AS nid, 131.0368050808161 AS "E" UNION ALL SELECT 117 AS nid, 62.64480580928396 AS "E" UNION ALL SELECT 119 AS nid, 37.34665341388054 AS "E" UNION ALL SELECT 120 AS nid, 38.71263785211542 AS "E" UNION ALL SELECT 122 AS nid, 277.9812845098006 AS "E" UNION ALL SELECT 123 AS nid, 250.182760095915 AS "E" UNION ALL SELECT 126 AS nid, -9.185160907179679 AS "E" UNION ALL SELECT 128 AS nid, 144.424454256417 AS "E" UNION ALL SELECT 129 AS nid, 156.85798347147366 AS "E" UNION ALL SELECT 136 AS nid, 259.87552025822583 AS "E" UNION ALL SELECT 137 AS nid, 290.70915409731754 AS "E" UNION ALL SELECT 139 AS nid, 235.3201708856319 AS "E" UNION ALL SELECT 140 AS nid, 228.58868551702315 AS "E" UNION ALL SELECT 142 AS nid, 194.4087167101487 AS "E" UNION ALL SELECT 143 AS nid, 191.5521549407964 AS "E" UNION ALL SELECT 144 AS nid, 113.4408795258052 AS "E" UNION ALL SELECT 147 AS nid, 325.0738816201826 AS "E" UNION ALL SELECT 148 AS nid, 316.51213779149236 AS "E" UNION ALL SELECT 149 AS nid, 349.42168234218923 AS "E" UNION ALL SELECT 152 AS nid, 248.55956547532833 AS "E" UNION ALL SELECT 154 AS nid, 310.60889077931495 AS "E" UNION ALL SELECT 155 AS nid, 351.37130796411674 AS "E" UNION ALL SELECT 157 AS nid, 447.6909835452225 AS "E" UNION ALL SELECT 158 AS nid, 479.70721604450864 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"