-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_rbf_Pipeline
-- Dataset : BinaryClass_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT" (
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



-- Code For temporary table TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT_KEY" ON "TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT" (
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



-- Code For temporary table TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM "TMP_20180508180012_CODEGEN_87C2O4_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT_KEY" ON "TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS FLOAT) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS FLOAT) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS FLOAT) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS FLOAT) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS FLOAT) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS FLOAT) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS FLOAT) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS FLOAT) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS FLOAT) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS FLOAT) AS scaler_11 
FROM "TMP_20180508180012_CODEGEN_U47PP9_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3, CAST("Values".sv_4 AS FLOAT) AS sv_4, CAST("Values".sv_5 AS FLOAT) AS sv_5, CAST("Values".sv_6 AS FLOAT) AS sv_6, CAST("Values".sv_7 AS FLOAT) AS sv_7, CAST("Values".sv_8 AS FLOAT) AS sv_8, CAST("Values".sv_9 AS FLOAT) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.6449550957165304 AS dual_coeff, 1.12041156548379 AS sv_0, 0.5171167602705458 AS sv_1, 1.5439699887544067 AS sv_2, 0.7654886661736935 AS sv_3, -1.524949379568199 AS sv_4, -0.5761937958336263 AS sv_5, 0.3188583423616559 AS sv_6, 1.0659046017998663 AS sv_7, -1.058902764500607 AS sv_8, -1.0104311226717706 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 1.6755678844336959 AS sv_0, -1.5866303311006371 AS sv_1, 0.5600356014929934 AS sv_2, 0.4915335058440637 AS sv_3, 0.38349421735881056 AS sv_4, -1.8141534866469373 AS sv_5, -0.13324822921795448 AS sv_6, 1.452823106537375 AS sv_7, 1.7733982689801724 AS sv_8, -1.2655853197044382 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 0.3412109075882581 AS sv_0, 1.861244182638373 AS sv_1, 0.46295637462729033 AS sv_2, 0.7247985545514732 AS sv_3, 1.9425332463985066 AS sv_4, -0.16103130060036325 AS sv_5, -1.0032961574104244 AS sv_6, 0.3267529393083514 AS sv_7, 1.3740021819907098 AS sv_8, -0.3114402792346285 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.2262874800843781 AS sv_0, -0.7518383887828721 AS sv_1, -0.5377114825101402 AS sv_2, -0.8715936392729726 AS sv_3, -0.8129208998395101 AS sv_4, 1.1623246605419595 AS sv_5, -0.6682307188109922 AS sv_6, -0.06018586098747406 AS sv_7, -1.6488255260390994 AS sv_8, -0.06553135177181463 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.5614640491687449 AS dual_coeff, 0.5471944167734375 AS sv_0, 1.1799493795947327 AS sv_1, 0.1361093946212456 AS sv_2, 0.15383868469300854 AS sv_3, -0.5366991777536146 AS sv_4, -0.37572239930033613 AS sv_5, 0.7637777713157753 AS sv_6, 0.5065886940833276 AS sv_7, 0.22268156631255032 AS sv_8, -0.4691701323704692 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.0927747360333782 AS sv_0, -0.03405189668360506 AS sv_1, 0.4586514681836684 AS sv_2, 1.2060408413504422 AS sv_3, 0.7190356081570217 AS sv_4, 1.0761044273374492 AS sv_5, -0.16169625927089976 AS sv_6, 0.06422802868511858 AS sv_7, -0.7730178166581789 AS sv_8, -0.18141243368019236 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.9941930232742301 AS dual_coeff, 0.08070616633436524 AS sv_0, 0.1514511442142756 AS sv_1, 1.28515556478042 AS sv_2, 0.8890857570813501 AS sv_3, 0.24571833705487778 AS sv_4, 1.223838683163338 AS sv_5, -1.140943904783567 AS sv_6, 0.26440405087058444 AS sv_7, 0.5883480086301834 AS sv_8, -0.39894100641416785 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.6689776681395252 AS sv_0, 0.39941739083734373 AS sv_1, -0.2571792868162356 AS sv_2, -1.2979215144515341 AS sv_3, 1.3662135125985067 AS sv_4, 1.1554604771558676 AS sv_5, 2.6909866359887236 AS sv_6, -0.5161149811316904 AS sv_7, 0.6340121556742192 AS sv_8, 0.3941559383036558 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.5891735853340253 AS sv_0, 0.9526974548471818 AS sv_1, 0.08112958993880352 AS sv_2, -0.6456948221580435 AS sv_3, -1.281876178034183 AS sv_4, -0.5729954971356158 AS sv_5, 0.07706524365932575 AS sv_6, 0.5204752542486365 AS sv_7, 1.248656036807721 AS sv_8, -0.46174387127544436 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.19053744694905858 AS dual_coeff, 0.7834068311261477 AS sv_0, -1.303697748720344 AS sv_1, -0.2885024844724163 AS sv_2, 1.475131142024615 AS sv_3, 0.8990461226483143 AS sv_4, 0.12996334868287296 AS sv_5, -0.27872179388266427 AS sv_6, 0.8243048000063509 AS sv_7, -1.8620796329935712 AS sv_8, -0.8438542427143298 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.877924339111812 AS sv_0, 0.5305530179952413 AS sv_1, -1.4099193292437011 AS sv_2, 0.5576112873024616 AS sv_3, 1.402334189824453 AS sv_4, -1.0299238526983405 AS sv_5, 0.9583778272378892 AS sv_6, 0.7494444088794106 AS sv_7, -0.18472007912343283 AS sv_8, -0.6426485426474337 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.36462218112783523 AS dual_coeff, 0.5545332080533678 AS sv_0, -0.44250800056712297 AS sv_1, -0.9267838211801835 AS sv_2, 1.1123548071077702 AS sv_3, 0.6462410111172768 AS sv_4, 0.18743173847308767 AS sv_5, -0.5477088129669442 AS sv_6, 0.5976341519322539 AS sv_7, -0.4165680637409086 AS sv_8, -0.6219209092556941 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.3871162286961366 AS sv_0, -0.23801973531257498 AS sv_1, 0.2366213106992756 AS sv_2, -2.803630160803415 AS sv_3, 1.191141069832706 AS sv_4, -0.5246035170829476 AS sv_5, -1.2169720432605273 AS sv_6, 0.32001533208160726 AS sv_7, -0.23632530224200482 AS sv_8, -0.2652096871373981 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.8581943265343465 AS dual_coeff, 1.1469388869008093 AS sv_0, 0.48264079401748655 AS sv_1, -2.646361035735504 AS sv_2, 0.973598886681535 AS sv_3, 0.4028905867598586 AS sv_4, 0.0028481812588325014 AS sv_5, -0.4432131509670485 AS sv_6, 1.179024154251703 AS sv_7, -1.6663038853703689 AS sv_8, -1.187125757819712 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.8943216018931861 AS dual_coeff, 0.2813727235623661 AS sv_0, 1.2722149446366666 AS sv_1, -0.3430237474039699 AS sv_2, -0.5803434738691453 AS sv_3, 0.5246056917832819 AS sv_4, 1.3644987532766129 AS sv_5, -0.8588467758987737 AS sv_6, 0.4914672731610403 AS sv_7, 0.31611985117810315 AS sv_8, -0.6427669198015342 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.4745933372196024 AS dual_coeff, 1.1964165268729143 AS sv_0, -1.3808881166096603 AS sv_1, -1.0389648256443333 AS sv_2, -1.7320516859630668 AS sv_3, 2.748003201736826 AS sv_4, -0.7106354266984642 AS sv_5, -0.6378700081939286 AS sv_6, 1.1240728893021357 AS sv_7, -0.43800879921211483 AS sv_8, -1.0543966260313828 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.4218202332215111 AS sv_0, -0.4390374507048122 AS sv_1, 0.366485163991133 AS sv_2, 1.1200482166113581 AS sv_3, -1.6461835050541598 AS sv_4, 0.05022817973524025 AS sv_5, -0.8425794856688906 AS sv_6, 0.440912999884602 AS sv_7, -1.3085990344289498 AS sv_8, -0.44927702036508393 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, -0.060028629154815 AS sv_0, -1.1349985043580169 AS sv_1, -0.5099175931370743 AS sv_2, -0.3460174895073262 AS sv_3, 0.18307005280858077 AS sv_4, 1.0834531774590934 AS sv_5, 0.4682414709491233 AS sv_6, 0.09896780728108398 AS sv_7, -1.216980616151226 AS sv_8, -0.21717917615158083 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -0.21899904764462574 AS dual_coeff, 0.8621461145401196 AS sv_0, -0.3421826798279283 AS sv_1, -1.807478216044399 AS sv_2, -2.4991212151266384 AS sv_3, -0.43187616159901365 AS sv_4, -0.5182236648023827 AS sv_5, 0.4439732328124855 AS sv_6, 0.8091051188661192 AS sv_7, -0.17961369213794715 AS sv_8, -0.7582242628244037 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -0.7693896372895379 AS sv_0, 0.34440654609078875 AS sv_1, 0.1923099841275786 AS sv_2, 0.6844774537134392 AS sv_3, 1.852672959021776 AS sv_4, 1.7626816212444087 AS sv_5, 2.4897071206556025 AS sv_6, -0.5292606802544281 AS sv_7, -0.006868408783579396 AS sv_8, 0.3415035775359892 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.5409200037488626 AS sv_0, -0.3337155868307675 AS sv_1, 1.7073343419953193 AS sv_2, 1.2906761391434058 AS sv_3, -0.36169679406454075 AS sv_4, -0.6689172763354456 AS sv_5, -0.20831824010297756 AS sv_6, 0.45666635264333894 AS sv_7, -0.13880962285206658 AS sv_8, -0.3871054929573432 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.7436618461472428 AS dual_coeff, 0.10153776337949867 AS sv_0, 0.5578442140641966 AS sv_1, -0.19899885742658244 AS sv_2, -1.0719303123600283 AS sv_3, -1.2216822584468687 AS sv_4, 0.09734420862822078 AS sv_5, 2.1308232793400004 AS sv_6, 0.11877498865803038 AS sv_7, 0.03474479767432919 AS sv_8, -0.13012209180648887 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -0.3004330163888925 AS sv_0, -0.27765341326849974 AS sv_1, -0.16013232852076337 AS sv_2, 0.39820597553365067 AS sv_3, -1.0454399925043851 AS sv_4, 0.9915538165828423 AS sv_5, 1.2689880278933663 AS sv_6, -0.16170006549647628 AS sv_7, 1.1698395103399282 AS sv_8, 0.0551828388157289 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.49895048987178253 AS dual_coeff, 1.170849937530188 AS sv_0, 0.5843333532911709 AS sv_1, 0.9285187858362384 AS sv_2, -0.8760110367047577 AS sv_3, 0.7780592238741197 AS sv_4, -1.3260694046748829 AS sv_5, 0.9163470638415657 AS sv_6, 1.0065444130637726 AS sv_7, -0.4556252614319159 AS sv_8, -0.869315308024707 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 1.3414207309364703 AS sv_0, -2.0170653102301337 AS sv_1, 0.42058735811610115 AS sv_2, 0.4356880749346106 AS sv_3, -0.024493685553011537 AS sv_4, -1.552322360631559 AS sv_5, 0.1824188633631091 AS sv_6, 1.1482754483366708 AS sv_7, -0.9743850095041908 AS sv_8, -0.987434105565764 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -0.2156311158265991 AS dual_coeff, 1.3666847649242637 AS sv_0, -2.0700204028992424 AS sv_1, -0.10801016928306885 AS sv_2, -0.12453509284093582 AS sv_3, -1.0597016227958291 AS sv_4, -1.5478832996008758 AS sv_5, 0.04711721636886123 AS sv_6, 1.1748951538825292 AS sv_7, 0.34508059701793464 AS sv_8, -1.014711398464895 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.4797899856638262 AS sv_0, -0.283140827084127 AS sv_1, 1.8201910206010106 AS sv_2, 0.4477612616310742 AS sv_3, -0.1700936803095665 AS sv_4, -1.488510524532206 AS sv_5, -0.7348482775633208 AS sv_6, 0.27232008497486215 AS sv_7, -0.5175688324528581 AS sv_8, -0.11261299377672843 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.08786168190825536 AS sv_0, 0.4225727023115306 AS sv_1, 0.08734267328222607 AS sv_2, 1.0238593371579374 AS sv_3, -0.6591157763297443 AS sv_4, -0.68948849010222 AS sv_5, 0.11673062548679242 AS sv_6, -0.011949596994102614 AS sv_7, -1.8601878261251854 AS sv_8, 0.086839723685646 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.6540401371479553 AS sv_0, -1.5162266409202294 AS sv_1, 1.7958517463037313 AS sv_2, -0.09949223368530669 AS sv_3, -0.6253190991929047 AS sv_4, -0.8393198316815396 AS sv_5, 2.020714428917183 AS sv_6, 0.547642172665861 AS sv_7, 0.9483674951627784 AS sv_8, -0.4601935187216024 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.03267981416396033 AS sv_0, 1.0538942602743027 AS sv_1, 1.0456844050102068 AS sv_2, -1.3468045097961472 AS sv_3, -0.6838217714677974 AS sv_4, -1.134940635504217 AS sv_5, -0.845285506301488 AS sv_6, -0.13470614791084454 AS sv_7, -1.5799483394430354 AS sv_8, 0.25874023570953636 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.14172476720193772 AS sv_0, -0.17158305301791102 AS sv_1, -0.1758638044346375 AS sv_2, -1.3199688014183233 AS sv_3, -1.8639662306315696 AS sv_4, 2.1768033546242793 AS sv_5, -2.315610775048862 AS sv_6, 0.46841203896536254 AS sv_7, -1.4987402932746305 AS sv_8, -0.7076962949091757 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.4343866706952755 AS sv_0, 0.9492378944772654 AS sv_1, 1.4844680876983811 AS sv_2, 1.5660751326920754 AS sv_3, 1.0073360478577547 AS sv_4, -1.0507045571725846 AS sv_5, -0.3616359192184754 AS sv_6, 0.290580881235907 AS sv_7, -0.8546329309952236 AS sv_8, -0.178497474809226 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.6261140787260275 AS sv_0, 0.1832347671370099 AS sv_1, -0.48412578666837824 AS sv_2, 0.8962696545332757 AS sv_3, 0.407715732368945 AS sv_4, -1.457540867756144 AS sv_5, 0.38135869915542325 AS sv_6, 0.4272758278602515 AS sv_7, 1.120586436713441 AS sv_8, -0.2719531732557108 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, -0.5841456217618298 AS sv_0, -0.39812015966145275 AS sv_1, -0.39880940932928266 AS sv_2, -0.007602293922001621 AS sv_3, 0.827592390456679 AS sv_4, 1.2567081319193358 AS sv_5, -0.36904924464494215 AS sv_6, -0.41392809542367653 AS sv_7, -1.3454816323790464 AS sv_8, 0.28030805259808733 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.21330512736329563 AS dual_coeff, -0.10827512486888799 AS sv_0, -1.2110980267559703 AS sv_1, 1.0035456544078072 AS sv_2, 0.5167224602549059 AS sv_3, 1.1719588503772211 AS sv_4, -1.0407178422838106 AS sv_5, -1.5173727488511308 AS sv_6, -0.26558107181535767 AS sv_7, -0.05858411222352325 AS sv_8, 0.380256758135746 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.8183073134085932 AS dual_coeff, -0.09954374731611668 AS sv_0, -0.30641458382064385 AS sv_1, -0.018954808640995614 AS sv_2, 0.5090993571989407 AS sv_3, 1.8324941152461451 AS sv_4, -1.0608914320155864 AS sv_5, 0.14881034181751351 AS sv_6, -0.25959997627907844 AS sv_7, 0.19519313653216247 AS sv_8, 0.3764250141808097 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.3463547639192771 AS dual_coeff, -1.6510800750704286 AS sv_0, -1.0633989024688952 AS sv_1, 0.13729977350095113 AS sv_2, 1.157156399026284 AS sv_3, -2.2847570429225263 AS sv_4, 0.35535686140023787 AS sv_5, 1.0912572955103104 AS sv_6, -1.6439685321522992 AS sv_7, -0.9953949966026707 AS sv_8, 1.6162770076770054 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 0.8204534019496802 AS dual_coeff, -0.6784275144204127 AS sv_0, 1.373275615567766 AS sv_1, -1.9181664003266556 AS sv_2, -0.5968860430557571 AS sv_3, 1.0419111341028107 AS sv_4, 1.1992646238286133 AS sv_5, -0.8207778065599642 AS sv_6, -0.5193304587263646 AS sv_7, -0.24690119975187094 AS sv_8, 0.392639813552325 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -0.6629414695953076 AS sv_0, 1.281356387108932 AS sv_1, -0.8279390259279739 AS sv_2, -0.30713584219847534 AS sv_3, -0.6676428129186932 AS sv_4, 1.0872264326045709 AS sv_5, -0.534449951635971 AS sv_6, -0.520029836786576 AS sv_7, 0.8685743489689621 AS sv_8, 0.4055002253484424 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.30902624351762487 AS dual_coeff, -0.9791689085229283 AS sv_0, -0.5562996602729775 AS sv_1, 0.6484960727403403 AS sv_2, -0.38973405220847024 AS sv_3, -1.5582146008164344 AS sv_4, 1.3174117769559048 AS sv_5, -0.4517151608521773 AS sv_6, -0.8108554927442709 AS sv_7, 1.314776081081343 AS sv_8, 0.6732723867786758 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -0.9016982368933829 AS sv_0, -0.06810561595446128 AS sv_1, 0.398010696635967 AS sv_2, -0.8256780299245522 AS sv_3, 0.17604562344873267 AS sv_4, 1.1063006950214826 AS sv_5, 0.34005562506024056 AS sv_6, -0.7625495199580522 AS sv_7, -0.39681130378988316 AS sv_8, 0.6475532000440688 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 0.06127391281991532 AS dual_coeff, -0.9404255152479981 AS sv_0, 0.8190429819282843 AS sv_1, -0.8779771954355704 AS sv_2, 0.9581035185537486 AS sv_3, -0.3423822286077114 AS sv_4, 0.7204163150257421 AS sv_5, 0.4508277266027788 AS sv_6, -0.859564565180365 AS sv_7, -1.2261723883816165 AS sv_8, 0.7870788272604287 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 0.821849213196117 AS sv_0, -0.8622437900413957 AS sv_1, -0.839886647537644 AS sv_2, 1.5183657734749747 AS sv_3, -0.08337053569433552 AS sv_4, -1.2823569303281672 AS sv_5, 1.8743511698652495 AS sv_6, 0.6543906610466925 AS sv_7, -0.09854050956908234 AS sv_8, -0.5195769607041587 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.7158506763036945 AS dual_coeff, -0.040511895919603594 AS sv_0, 0.28418208581458765 AS sv_1, -1.4068142374119657 AS sv_2, 0.29754312574106323 AS sv_3, -1.5116728486607989 AS sv_4, -1.02448838758812 AS sv_5, -0.5429946037460954 AS sv_6, -0.1935406476599708 AS sv_7, 1.435455661100924 AS sv_8, 0.30597925987768143 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 0.8965191164846688 AS dual_coeff, -0.14144070589193528 AS sv_0, -3.327873773764086 AS sv_1, -0.508496926483442 AS sv_2, -0.23873342257316324 AS sv_3, 1.539338794849393 AS sv_4, -1.4110545127448177 AS sv_5, -0.7317128164507386 AS sv_6, -0.3545754782635465 AS sv_7, -1.7764691341564471 AS sv_8, 0.5100217718511395 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.6937771485761223 AS sv_0, 0.45430361561875215 AS sv_1, 0.21064105350805334 AS sv_2, 1.0433901573232613 AS sv_3, 0.03740459026006079 AS sv_4, -1.036931473969185 AS sv_5, 0.4302565519723686 AS sv_6, 0.5591744785264072 AS sv_7, -0.1039415499024544 AS sv_8, -0.4503607103778977 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.7883551162016813 AS dual_coeff, -0.648135226450511 AS sv_0, -1.704481068021942 AS sv_1, -0.7652762598491197 AS sv_2, 1.2354645078360993 AS sv_3, 0.1536981096213723 AS sv_4, 1.0822402351628564 AS sv_5, 0.8857076298279853 AS sv_6, -0.5055541950160398 AS sv_7, 1.0120573530947856 AS sv_8, 0.39146992349937304 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.9456410203183404 AS dual_coeff, 0.2812003983913316 AS sv_0, 1.9872779676508556 AS sv_1, -3.7541780933732216 AS sv_2, 0.6557257799003048 AS sv_3, 0.5410159536042183 AS sv_4, 1.8997492897735913 AS sv_5, 2.3042134751718173 AS sv_6, 0.5706567342681115 AS sv_7, 0.3538620586773582 AS sv_8, -0.7805557322795593 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.384277416051352 AS dual_coeff, -0.8515880169543086 AS sv_0, 1.8715398097687233 AS sv_1, 1.731159058836162 AS sv_2, 0.8265102476863448 AS sv_3, 0.9708913715472081 AS sv_4, 0.3459960029680656 AS sv_5, -1.5970321135438057 AS sv_6, -0.8237933364731713 AS sv_7, -0.6571229830030352 AS sv_8, 0.7916966724373024 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.29264119333636257 AS dual_coeff, -0.9877038846032079 AS sv_0, 0.1647151042408274 AS sv_1, -0.40964062602399576 AS sv_2, -1.979691530719945 AS sv_3, -1.0131174670859466 AS sv_4, -0.9369727098712723 AS sv_5, -1.106577030247841 AS sv_6, -1.153904511214936 AS sv_7, 2.9385010265946403 AS sv_8, 1.2631948327409968 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.638450238405017 AS dual_coeff, -0.8885433471329603 AS sv_0, -1.2270298610063357 AS sv_1, 1.5953519478000178 AS sv_2, 0.7242623898151819 AS sv_3, -0.02019600346792144 AS sv_4, 0.9231050628128051 AS sv_5, 0.457395100913295 AS sv_6, -0.7761955794368778 AS sv_7, 1.7547614244835674 AS sv_8, 0.681166614532056 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 0.22373787920969282 AS sv_0, -0.7816753739672916 AS sv_1, -1.561197607479468 AS sv_2, -0.5896890596297178 AS sv_3, -0.1470691637205739 AS sv_4, 2.142736815978169 AS sv_5, 0.3084830333061339 AS sv_6, 0.5476378834944492 AS sv_7, 0.9413429637671645 AS sv_8, -0.7837494690214598 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 0.42966802129428144 AS dual_coeff, -3.0777239342908467 AS sv_0, 0.46390107348545995 AS sv_1, 0.475543494204929 AS sv_2, 1.0377319316641274 AS sv_3, -0.14941074993403938 AS sv_4, -1.010599007504073 AS sv_5, -0.49571384337516383 AS sv_6, -3.3125399014304615 AS sv_7, 1.6818669324525446 AS sv_8, 3.444086002907526 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 0.32717232678931774 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(min(max(-100.0, -0.1 * (power(kernel_input.scaler_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_11 - "SV_data".sv_9, 2))), 100.0)) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", max(1.0 - 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0))), 1.0 / (1.0 + exp(min(max(-100.0, -(-(kernel_dp.dot_product * -3.0378477168022613 + 0.15062826007046645))), 100.0)))) AS "DecisionProba" 
FROM kernel_dp