-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly_Pipeline
-- Dataset : boston
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_ZUNTX3_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_ZUNTX3_ADS" (
	"KEY" BIGINT NOT NULL, 
	impter_2 DOUBLE PRECISION, 
	impter_3 DOUBLE PRECISION, 
	impter_4 DOUBLE PRECISION, 
	impter_5 DOUBLE PRECISION, 
	impter_6 DOUBLE PRECISION, 
	impter_7 DOUBLE PRECISION, 
	impter_8 DOUBLE PRECISION, 
	impter_9 DOUBLE PRECISION, 
	impter_10 DOUBLE PRECISION, 
	impter_11 DOUBLE PRECISION, 
	impter_12 DOUBLE PRECISION, 
	impter_13 DOUBLE PRECISION, 
	impter_14 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_ZUNTX3_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_ZUNTX3_ADS" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.1614581999999998 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 11.2 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 10.962 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.04 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.555502 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.3834800000000005 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 66.40599999999999 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.960708000000001 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 10.72 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 422.3 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.780000000000012 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 334.1333999999999 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.793999999999997 ELSE "ADS"."Feature_12" END AS impter_14 
FROM boston AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_ZUNTX3_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_1a79" ON "TMP_20180516_CODEGEN_ZUNTX3_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_KPLRWS_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_KPLRWS_ADS" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 DOUBLE PRECISION, 
	scaler_3 DOUBLE PRECISION, 
	scaler_4 DOUBLE PRECISION, 
	scaler_5 DOUBLE PRECISION, 
	scaler_6 DOUBLE PRECISION, 
	scaler_7 DOUBLE PRECISION, 
	scaler_8 DOUBLE PRECISION, 
	scaler_9 DOUBLE PRECISION, 
	scaler_10 DOUBLE PRECISION, 
	scaler_11 DOUBLE PRECISION, 
	scaler_12 DOUBLE PRECISION, 
	scaler_13 DOUBLE PRECISION, 
	scaler_14 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_KPLRWS_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_KPLRWS_ADS" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE PRECISION) - 3.1614581999999998) / 4.6006170533252115 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE PRECISION) - 11.2) / 22.99304242591657 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE PRECISION) - 10.962) / 6.318784693277657 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE PRECISION) - 0.04) / 0.19595917942265434 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE PRECISION) - 0.555502) / 0.12705342260639813 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE PRECISION) - 6.3834800000000005) / 0.6326183443435704 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE PRECISION) - 66.40599999999999) / 29.712572490445858 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE PRECISION) - 3.960708000000001) / 2.041379549112805 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE PRECISION) - 10.72) / 8.820521526531186 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE PRECISION) - 422.3) / 168.69039688138736 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE PRECISION) - 18.780000000000012) / 1.9765626729248942 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE PRECISION) - 334.1333999999999) / 124.02705565496588 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE PRECISION) - 12.793999999999997) / 6.8750941811730835 AS scaler_14 
FROM "TMP_20180516_CODEGEN_ZUNTX3_ADS" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_KPLRWS_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_c823" ON "TMP_20180516_CODEGEN_KPLRWS_ADS" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE PRECISION) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE PRECISION) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE PRECISION) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE PRECISION) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE PRECISION) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE PRECISION) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE PRECISION) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE PRECISION) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE PRECISION) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE PRECISION) AS scaler_11, CAST("ADS_sca_2_OUT".scaler_12 AS DOUBLE PRECISION) AS scaler_12, CAST("ADS_sca_2_OUT".scaler_13 AS DOUBLE PRECISION) AS scaler_13, CAST("ADS_sca_2_OUT".scaler_14 AS DOUBLE PRECISION) AS scaler_14 
FROM "TMP_20180516_CODEGEN_KPLRWS_ADS" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3, CAST("Values".sv_4 AS DOUBLE PRECISION) AS sv_4, CAST("Values".sv_5 AS DOUBLE PRECISION) AS sv_5, CAST("Values".sv_6 AS DOUBLE PRECISION) AS sv_6, CAST("Values".sv_7 AS DOUBLE PRECISION) AS sv_7, CAST("Values".sv_8 AS DOUBLE PRECISION) AS sv_8, CAST("Values".sv_9 AS DOUBLE PRECISION) AS sv_9, CAST("Values".sv_10 AS DOUBLE PRECISION) AS sv_10, CAST("Values".sv_11 AS DOUBLE PRECISION) AS sv_11, CAST("Values".sv_12 AS DOUBLE PRECISION) AS sv_12 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, 2.095554072041671 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.4521293186375683 AS sv_4, -0.8369659285637845 AS sv_5, 1.0162028215399037 AS sv_6, -1.01162373302775 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -0.7547820877117768 AS sv_11, 1.5993962715611523 AS sv_12 FROM rdb$database UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, -0.6564245980476139 AS sv_0, -0.4871038722294505 AS sv_1, -0.6412625523244663 AS sv_2, -0.20412414523193143 AS sv_3, -0.8461165216543052 AS sv_4, -0.3390353787836389 AS sv_5, -2.0128179752604973 AS sv_6, 0.8622561153632546 AS sv_7, -0.8752316942687647 AS sv_8, -1.1221741337955595 AS sv_9, -0.4452173523533153 AS sv_10, 0.39698273687132196 AS sv_11, -1.0158406293727793 AS sv_12 FROM rdb$database UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 1.050081270404425 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.1373011213373114 AS sv_4, -1.364930384521147 AS sv_5, 1.1306324960856968 AS sv_6, -1.1891997257712574 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.5060718378626365 AS sv_11, 1.7113947372852416 AS sv_12 FROM rdb$database UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, -0.6444544646151439 AS sv_0, 0.46970730536411304 AS sv_1, -0.8074337467816947 AS sv_2, -0.20412414523193143 AS sv_3, -0.9799185055069144 AS sv_4, -0.24893366025199273 AS sv_5, 0.430592134158493 AS sv_6, 2.0058944951121997 AS sv_7, -0.4217437697771768 AS sv_8, -0.5471562205458539 AS sv_9, 0.1618972190375615 AS sv_10, 0.33868900441254823 AS sv_11, -0.38457654983700257 AS sv_12 FROM rdb$database UNION ALL SELECT 4 AS sv_idx, 0.1 AS dual_coeff, -0.6596850302518458 AS sv_0, 0.6001815568541444 AS sv_1, -0.9229622914995773 AS sv_2, -0.20412414523193143 AS sv_3, -0.806762996991773 AS sv_4, 0.5983386403262875 AS sv_5, -0.7742850272354446 AS sv_6, 1.9693505804676046 AS sv_7, -0.30837178865427983 AS sv_8, -0.8198451278601473 AS sv_9, 0.4654545047329981 AS sv_10, 0.49542899874153273 AS sv_11, -0.47912070921448063 AS sv_12 FROM rdb$database UNION ALL SELECT 5 AS sv_idx, -0.1 AS dual_coeff, 1.7386671629664465 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.4521293186375683 AS sv_4, 0.3881012970857812 AS sv_5, 0.9488912482776725 AS sv_6, -0.8993957056138533 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -1.8083425331319625 AS sv_11, 1.5237609440591697 AS sv_12 FROM rdb$database UNION ALL SELECT 6 AS sv_idx, 0.1 AS dual_coeff, -0.6794932427032894 AS sv_0, 0.9916043113242385 AS sv_1, -0.7710343422815399 AS sv_2, -0.20412414523193143 AS sv_3, -0.9641770956419015 AS sv_4, 0.32645275282728736 AS sv_5, -0.8752523871287913 AS sv_6, 0.7499791014686008 AS sv_7, -0.4217437697771768 AS sv_8, -0.5530842402700777 AS sv_9, -1.3558892094396269 AS sv_10, 0.4967996674162205 AS sv_11, -0.47912070921448063 AS sv_12 FROM rdb$database UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, -0.6761849908267287 AS sv_0, -0.4871038722294505 AS sv_1, -1.024247590978269 AS sv_2, -0.20412414523193143 AS sv_3, -0.8382458167217988 AS sv_4, 0.008725640110432642 AS sv_5, -0.6194684087323129 AS sv_6, 0.4010483990377033 AS sv_7, -0.8752316942687647 AS sv_8, -1.0391818576564267 AS sv_9, -0.14166006665787687 AS sv_10, 0.5060718378626365 AS sv_11, -0.4616664028678694 AS sv_12 FROM rdb$database UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, 1.6677636306317503 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 0.9720163177546775 AS sv_4, 0.6299532784075673 AS sv_5, 0.8209992590794334 AS sv_6, -1.0489024448836972 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -2.5201227131403345 AS sv_11, 1.8903013773380077 AS sv_12 FROM rdb$database UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, -0.6594807098337139 AS sv_0, -0.4871038722294505 AS sv_1, -0.6412625523244663 AS sv_2, -0.20412414523193143 AS sv_3, -0.8461165216543052 AS sv_4, 0.6109844955587992 AS sv_5, -2.1373443857956254 AS sv_6, 0.8622561153632546 AS sv_7, -0.8752316942687647 AS sv_8, -1.1221741337955595 AS sv_9, -0.4452173523533153 AS sv_10, 0.4134307609675736 AS sv_11, -1.1569296056745542 AS sv_12 FROM rdb$database UNION ALL SELECT 10 AS sv_idx, 0.016151564010793124 AS dual_coeff, -0.5985606209083755 AS sv_0, -0.4871038722294505 AS sv_1, -0.7536259314336398 AS sv_2, 4.898979485566354 AS sv_3, -0.38174493063642656 AS sv_4, -0.3469390383039585 AS sv_5, 0.8378271523949912 AS sv_6, -0.4471035287860451 AS sv_7, -0.30837178865427983 AS sv_8, -0.6835006742030006 AS sv_9, -0.6981817570995132 AS sv_10, 0.4926876613921577 AS sv_11, 1.2604918233311158 AS sv_12 FROM rdb$database UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, 1.9748963442703955 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 0.22429934916656719 AS sv_4, -0.8638383709328723 AS sv_5, -0.22569570514826065 AS sv_6, -0.9616575226557836 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -2.495289421857759 AS sv_11, 0.4212305931648872 AS sv_12 FROM rdb$database UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 2.6358511607122868 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 0.909050678294626 AS sv_4, 0.41971593516706107 AS sv_5, 0.9051387256572223 AS sv_6, -1.2813922825556108 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.2329056337543035 AS sv_11, 1.5193973674725167 AS sv_12 FROM rdb$database UNION ALL SELECT 13 AS sv_idx, 0.1 AS dual_coeff, -0.6803344342119811 AS sv_0, 3.64458075828821 AS sv_1, -1.502187597893345 AS sv_2, -0.20412414523193143 AS sv_3, -1.2002982436170937 AS sv_4, 0.9350345358919104 AS sv_5, -1.7200126315697921 AS sv_6, 1.8089198559889876 AS sv_7, -0.8752316942687647 AS sv_8, -0.12033880040174258 AS sv_9, -0.900553280896471 AS sv_10, 0.5060718378626365 AS sv_11, -1.1976563204833142 AS sv_12 FROM rdb$database UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, -0.6498580875882908 AS sv_0, 0.6001815568541444 AS sv_1, -0.9229622914995773 AS sv_2, -0.20412414523193143 AS sv_3, -0.806762996991773 AS sv_4, -0.6599239553086211 AS sv_5, 0.9085043043203342 AS sv_6, 1.3999317281502168 AS sv_7, -0.30837178865427983 AS sv_8, -0.8198451278601473 AS sv_9, 0.4654545047329981 AS sv_10, 0.35433075281780696 AS sv_11, 0.2394149020543525 AS sv_12 FROM rdb$database UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, -0.6598393573761795 AS sv_0, 1.4700099001210203 AS sv_1, -1.1904187854354975 AS sv_2, -0.20412414523193143 AS sv_3, -0.9326942759118758 AS sv_4, 0.2727078680891131 AS sv_5, -1.2555627760603971 AS sv_6, 0.2968541544679267 AS sv_7, -0.6484877320229707 AS sv_8, -0.14405087929863766 AS sv_9, -1.8112251379827844 AS sv_10, 0.39270947570906034 AS sv_11, -1.1976563204833142 AS sv_12 FROM rdb$database UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, 0.9978600145999774 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.239620285459895 AS sv_4, -0.13037876744719568 AS sv_5, 0.582043173998513 AS sv_6, -0.5768687163108868 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -0.4992733212361844 AS sv_11, 0.49977497172463836 AS sv_12 FROM rdb$database UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -0.6132651701494615 AS sv_0, -0.4871038722294505 AS sv_1, 1.7294464885986596 AS sv_2, -0.20412414523193143 AS sv_3, 0.5391275464668241 AS sv_4, 0.11779614149084558 AS sv_5, 1.0936111307914698 AS sv_6, -0.9024328674207766 AS sv_7, -0.7618597131458678 AS sv_8, 0.08714188994608933 AS sv_9, 1.2243477189715921 AS sv_10, 0.49107511001017234 AS sv_11, -0.028217795260354596 AS sv_12 FROM rdb$database UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.6828145363086668 AS sv_0, 3.64458075828821 AS sv_1, -1.3106950785664437 AS sv_2, -0.20412414523193143 AS sv_3, -1.0971920090012597 AS sv_4, 2.609029622295642 AS sv_5, -1.1613265734932736 AS sv_6, 0.5669166228803287 AS sv_7, -0.7618597131458678 AS sv_8, -1.1755263113135734 AS sv_9, -2.0641895427289825 AS sv_10, 0.45487333148459924 AS sv_11, -1.4420166093358726 AS sv_12 FROM rdb$database UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -0.5167259462036243 AS sv_0, -0.4871038722294505 AS sv_1, -0.44660486738885574 AS sv_2, -0.20412414523193143 AS sv_3, -0.13775307772872744 AS sv_4, -0.6219863896110862 AS sv_5, 0.5147316007362819 AS sv_6, 0.1455839018908369 AS sv_7, -0.7618597131458678 AS sv_8, -0.6835006742030006 AS sv_9, 1.1231619570731133 AS sv_10, 0.4242348552268758 AS sv_11, 0.27286898921869096 AS sv_12 FROM rdb$database UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, -0.6153540203816393 AS sv_0, -0.4871038722294505 AS sv_1, -0.7536259314336398 AS sv_2, -0.20412414523193143 AS sv_3, -0.38174493063642656 AS sv_4, -0.4702361268209462 AS sv_5, -0.1651152892122527 AS sv_6, -0.15127417149555092 AS sv_7, -0.30837178865427983 AS sv_8, -0.6835006742030006 AS sv_9, -0.6981817570995132 AS sv_10, 0.34360728612760394 AS sv_11, -0.2783961862284502 AS sv_12 FROM rdb$database UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.658669949025595 AS sv_0, -0.4871038722294505 AS sv_1, -0.38013638960596435 AS sv_2, -0.20412414523193143 AS sv_3, -0.27942576651384304 AS sv_4, -0.40542611875432477 AS sv_5, 0.6325268539451864 AS sv_6, -0.9005223946712604 AS sv_7, -0.6484877320229707 AS sv_8, -0.22704315543777043 AS sv_9, 1.072569076123873 AS sv_10, 0.43181384672220735 AS sv_11, 0.18850650854340284 AS sv_12 FROM rdb$database UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, -0.6519447641989992 AS sv_0, 0.3827244710374254 AS sv_1, -0.6333496383026935 AS sv_2, -0.20412414523193143 AS sv_3, -0.7201852427342024 AS sv_4, -0.22680341359509695 AS sv_5, -1.6863568449386765 AS sv_6, 0.22939977046577242 AS sv_7, -0.8752316942687647 AS sv_8, -1.1814543310377972 AS sv_9, -0.09106718570863655 AS sv_10, 0.5060718378626365 AS sv_11, -0.9023876381198055 AS sv_12 FROM rdb$database UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, -0.4150895799118379 AS sv_0, -0.4871038722294505 AS sv_1, -0.44660486738885574 AS sv_2, -0.20412414523193143 AS sv_3, -0.13775307772872744 AS sv_4, -1.2858937893179478 AS sv_5, 1.066686501486577 AS sv_6, -0.07975390959057967 AS sv_7, -0.7618597131458678 AS sv_8, -0.6835006742030006 AS sv_9, 1.1231619570731133 AS sv_10, 0.342155989883817 AS sv_11, 1.1964927000602072 AS sv_12 FROM rdb$database UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, -0.651449178503956 AS sv_0, 0.46970730536411304 AS sv_1, -0.8074337467816947 AS sv_2, -0.20412414523193143 AS sv_3, -0.9799185055069144 AS sv_4, 0.07827784388924611 AS sv_5, -0.5824470434380857 AS sv_6, 1.8937154541790595 AS sv_7, -0.4217437697771768 AS sv_8, -0.5471562205458539 AS sv_9, 0.1618972190375615 AS sv_10, 0.3271592620313523 AS sv_11, -0.4762116581567122 AS sv_12 FROM rdb$database UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, -0.6622716398005365 AS sv_0, 0.3827244710374254 AS sv_1, -0.6333496383026935 AS sv_2, -0.20412414523193143 AS sv_3, -0.7201852427342024 AS sv_4, 0.24425469381596224 AS sv_5, -0.2593514917793762 AS sv_6, -0.021166078605411344 AS sv_7, -0.8752316942687647 AS sv_8, -1.1814543310377972 AS sv_9, -0.09106718570863655 AS sv_10, 0.49043008945737787 AS sv_11, -0.7365717278269978 AS sv_12 FROM rdb$database UNION ALL SELECT 26 AS sv_idx, -0.1 AS dual_coeff, 1.0953143331844688 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.239620285459895 AS sv_4, -0.7073459124305402 AS sv_5, 0.4676134994527199 AS sv_6, -0.5787791890604033 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -2.6658167305027187 AS sv_11, 0.6030462842754222 AS sv_12 FROM rdb$database UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 0.5585559002661792 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, -0.184977307323766 AS sv_4, 1.070977479641411 AS sv_5, 0.3565494035700386 AS sv_6, -0.26947854956178074 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.4930101716685545 AS sv_11, -0.8412975659066658 AS sv_12 FROM rdb$database UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, -0.08297108748142892 AS sv_0, -0.4871038722294505 AS sv_1, 1.3638698607927566 AS sv_2, -0.20412414523193143 AS sv_3, 2.483191664795909 AS sv_4, -2.3402419693286083 AS sv_5, 1.0565897654972425 AS sv_6, -1.2809024177480426 AS sv_7, -0.6484877320229707 AS sv_8, -0.11441078067751881 AS sv_9, -2.0641895427289825 AS sv_10, 0.5060718378626365 AS sv_11, 2.399385312447505 AS sv_12 FROM rdb$database UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, 0.19061612601860897 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, -0.184977307323766 AS sv_4, -0.24419146453980067 AS sv_5, 0.8176336804163221 AS sv_6, -0.4219734641577915 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.49341330951405094 AS sv_11, 0.011054394019520844 AS sv_12 FROM rdb$database UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, -0.15536572414419403 AS sv_0, -0.4871038722294505 AS sv_1, 1.3638698607927566 AS sv_2, -0.20412414523193143 AS sv_3, 2.483191664795909 AS sv_4, -1.7569518967290072 AS sv_5, 0.9286977762990034 AS sv_6, -1.0896102103926226 AS sv_7, -0.6484877320229707 AS sv_8, -0.11441078067751881 AS sv_9, -2.0641895427289825 AS sv_10, -1.9794342347606173 AS sv_11, 0.48668424196467985 AS sv_12 FROM rdb$database UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, -0.3570038933827118 AS sv_0, -0.4871038722294505 AS sv_1, 1.3638698607927566 AS sv_2, 4.898979485566354 AS sv_3, 0.38958415274920205 AS sv_4, 3.1480592015814506 AS sv_5, 0.925332197635892 AS sv_6, -0.8811237482915558 AS sv_7, -0.6484877320229707 AS sv_8, -0.11441078067751881 AS sv_9, -2.0641895427289825 AS sv_10, 0.43794154197375196 AS sv_11, -1.3780174860649643 AS sv_12 FROM rdb$database UNION ALL SELECT 32 AS sv_idx, 0.08384843598920688 AS dual_coeff, 0.7911355711228577 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.239620285459895 AS sv_4, -0.4781397863412658 AS sv_5, 0.605602224640294 AS sv_6, -0.6090038476873672 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.5060718378626365 AS sv_11, 0.27723256580534367 AS sv_12 FROM rdb$database UNION ALL SELECT 33 AS sv_idx, -0.1 AS dual_coeff, 1.4264873002756506 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.4521293186375683 AS sv_4, 0.03559808247951905 AS sv_5, 1.0363962935185733 AS sv_6, -0.9285916481449236 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.4178652772680332 AS sv_11, 0.9783138707275656 AS sv_12 FROM rdb$database UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, -0.6485278312489642 AS sv_0, -0.4871038722294505 AS sv_1, -0.20130453271389961 AS sv_2, -0.20412414523193143 AS sv_3, 0.2321700540990736 AS sv_4, -1.2874745212220124 AS sv_5, 0.23875415036113415 AS sv_6, -0.7645849105710579 AS sv_7, -0.5351157509000738 AS sv_8, -0.18554701736820403 AS sv_9, 0.21249009998680005 AS sv_10, 0.4969609225544189 AS sv_11, 0.3354135869607148 AS sv_12 FROM rdb$database UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, -0.6770392240642374 AS sv_0, 2.992209500838053 AS sv_1, -1.4942746838715724 AS sv_2, -0.20412414523193143 AS sv_3, -1.1924275386845873 AS sv_4, 1.1436911472283535 AS sv_5, -1.0031443763270305 AS sv_6, 1.6402104162624662 AS sv_7, -0.9886036753916616 AS sv_8, -0.5530842402700777 AS sv_9, -3.126640042663014 AS sv_10, 0.16267902106883786 AS sv_11, -0.6085734812851815 AS sv_12 FROM rdb$database UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, -0.6652625429425518 AS sv_0, -0.4871038722294505 AS sv_1, -0.15066188297455377 AS sv_2, -0.20412414523193143 AS sv_3, -0.06691673333616963 AS sv_4, 0.524044240835282 AS sv_5, 0.5113660220731701 AS sv_6, -0.6285984399900988 AS sv_7, -0.5351157509000738 AS sv_8, 0.05750179132497049 AS sv_9, -0.4958102333025538 AS sv_10, 0.49550962631063195 AS sv_11, -0.3831220243081183 AS sv_12 FROM rdb$database UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, -0.6447109519485433 AS sv_0, -0.4871038722294505 AS sv_1, -0.024055258626189138 AS sv_2, -0.20412414523193143 AS sv_3, -1.12159119429203 AS sv_4, -0.21889975407477735 AS sv_5, -2.0262802899129437 AS sv_6, 0.6498507348016411 AS sv_7, -0.7618597131458678 AS sv_8, -0.6953567136514481 AS sv_9, 0.21249009998680005 AS sv_10, 0.3469936440297735 AS sv_11, -0.7642077128757991 AS sv_12 FROM rdb$database UNION ALL SELECT 38 AS sv_idx, 0.1 AS dual_coeff, -0.6609174736250454 AS sv_0, -0.4871038722294505 AS sv_1, -1.2774608396749978 AS sv_2, -0.20412414523193143 AS sv_3, -0.8697286364518244 AS sv_4, 2.664355238937881 AS sv_5, 0.32289361693892304 AS sv_6, -0.2280359868415029 AS sv_7, -0.9886036753916616 AS sv_8, -0.8672692856539375 AS sv_9, -0.3946244714040749 AS sv_10, 0.5060718378626365 AS sv_11, -1.2485647139942635 AS sv_12 FROM rdb$database UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, -0.6457238595533248 AS sv_0, 0.46970730536411304 AS sv_1, -0.8074337467816947 AS sv_2, -0.20412414523193143 AS sv_3, -0.9799185055069144 AS sv_4, 0.528786436547474 AS sv_5, -1.6459699009813378 AS sv_6, 1.8937154541790595 AS sv_7, -0.4217437697771768 AS sv_8, -0.5471562205458539 AS sv_9, 0.1618972190375615 AS sv_10, 0.48059352602726696 AS sv_11, -0.9067512147064584 AS sv_12 FROM rdb$database UNION ALL SELECT 40 AS sv_idx, 0.1 AS dual_coeff, -0.6133151634432596 AS sv_0, 0.46970730536411304 AS sv_1, -0.8074337467816947 AS sv_2, -0.20412414523193143 AS sv_3, -0.9799185055069144 AS sv_4, -0.4354600249315401 AS sv_5, -1.060359213599927 AS sv_6, 2.0058944951121997 AS sv_7, -0.4217437697771768 AS sv_8, -0.5471562205458539 AS sv_9, 0.1618972190375615 AS sv_10, 0.4518901114279261 AS sv_11, -0.5285745771965461 AS sv_12 FROM rdb$database UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 0.7729966999599809 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.239620285459895 AS sv_4, 0.5777891255734562 AS sv_5, 0.8815796750154413 AS sv_6, -0.8019615953885191 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -2.6914562974762872 AS sv_11, 0.6757725607196361 AS sv_12 FROM rdb$database UNION ALL SELECT 42 AS sv_idx, -0.1 AS dual_coeff, 1.3985627852571392 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.0822061868097665 AS sv_4, 0.03243661867139149 AS sv_5, 1.1306324960856968 AS sv_6, -1.137323042649775 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, 0.33844712170525065 AS sv_11, 1.0932213875094234 AS sv_12 FROM rdb$database UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, -0.6764610407533537 AS sv_0, 0.9481128941608947 AS sv_1, -1.3898242187841716 AS sv_2, -0.20412414523193143 AS sv_3, -0.6572196032741514 AS sv_4, 0.7358623159798527 AS sv_5, 0.1310556331415642 AS sv_6, -0.3811187392065955 AS sv_7, -0.4217437697771768 AS sv_8, -1.187382350762021 AS sv_9, -0.1922529476071172 AS sv_10, 0.5060718378626365 AS sv_11, -0.7656622384046834 AS sv_12 FROM rdb$database UNION ALL SELECT 44 AS sv_idx, 0.1 AS dual_coeff, -0.580026150638052 AS sv_0, -0.4871038722294505 AS sv_1, -0.1680702938224538 AS sv_2, -0.20412414523193143 AS sv_3, -0.0905288481336889 AS sv_4, 0.3975856885101653 AS sv_5, 0.5416562300411742 AS sv_6, -0.31508496314638923 AS sv_7, -0.7618597131458678 AS sv_8, -0.7012847333756719 AS sv_9, -0.1922529476071172 AS sv_10, 0.5060718378626365 AS sv_11, -1.2005653715410827 AS sv_12 FROM rdb$database UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, 2.6117674348303606 AS sv_0, -0.4871038722294505 AS sv_1, 1.1296476057482827 AS sv_2, -0.20412414523193143 AS sv_3, 1.4521293186375683 AS sv_4, -0.3659078211527253 AS sv_5, 1.1306324960856968 AS sv_6, -1.0025122476069797 AS sv_7, 1.5055799093120716 AS sv_8, 1.4446584067933324 AS sv_9, 0.7184189094791962 AS sv_10, -2.6188914852869427 AS sv_11, 1.98630006224437 AS sv_12 FROM rdb$database UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, -0.550295356178396 AS sv_0, -0.4871038722294505 AS sv_1, -0.44660486738885574 AS sv_2, -0.20412414523193143 AS sv_3, -0.13775307772872744 AS sv_4, -0.686796397677709 AS sv_5, -0.15501855322291813 AS sv_6, 0.3658271193735426 AS sv_7, -0.7618597131458678 AS sv_8, -0.6835006742030006 AS sv_9, 1.1231619570731133 AS sv_10, 0.5060718378626365 AS sv_11, -0.6594818747961312 AS sv_12 FROM rdb$database) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + 20.817949862656143 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.07692307692307693 * (kernel_input.scaler_2 * "SV_data".sv_0 + kernel_input.scaler_3 * "SV_data".sv_1 + kernel_input.scaler_4 * "SV_data".sv_2 + kernel_input.scaler_5 * "SV_data".sv_3 + kernel_input.scaler_6 * "SV_data".sv_4 + kernel_input.scaler_7 * "SV_data".sv_5 + kernel_input.scaler_8 * "SV_data".sv_6 + kernel_input.scaler_9 * "SV_data".sv_7 + kernel_input.scaler_10 * "SV_data".sv_8 + kernel_input.scaler_11 * "SV_data".sv_9 + kernel_input.scaler_12 * "SV_data".sv_10 + kernel_input.scaler_13 * "SV_data".sv_11 + kernel_input.scaler_14 * "SV_data".sv_12) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp