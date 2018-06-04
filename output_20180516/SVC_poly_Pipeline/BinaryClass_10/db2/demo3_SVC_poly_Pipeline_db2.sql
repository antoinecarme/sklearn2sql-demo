-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_poly_Pipeline
-- Dataset : BinaryClass_10
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602141552_ly1_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602141552_ly1_ads_imp_1_out (
	"KEY" BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602141552_ly1_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602141552_ly1_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.061829205238134496 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.17702463767183324 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.04138385004903454 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.13060646805847148 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.05955810471983082 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.04892908987010584 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.19101797861713127 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.02204959673267471 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.057729814034140035 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.05254959205203237 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BINARYCLASS_10" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602141552_n4i_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602141552_n4i_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602141552_n4i_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602141552_n4i_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS scaler_11 
FROM tmp_20180602141552_ly1_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11 
FROM tmp_20180602141552_n4i_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3, CAST("Values".sv_4 AS DOUBLE) AS sv_4, CAST("Values".sv_5 AS DOUBLE) AS sv_5, CAST("Values".sv_6 AS DOUBLE) AS sv_6, CAST("Values".sv_7 AS DOUBLE) AS sv_7, CAST("Values".sv_8 AS DOUBLE) AS sv_8, CAST("Values".sv_9 AS DOUBLE) AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 1.0787364458302908 AS sv_0, 1.196110699825428 AS sv_1, -0.1583847034287778 AS sv_2, -0.3014494989562921 AS sv_3, -0.0829627941412826 AS sv_4, -1.1705807981292933 AS sv_5, 0.06970744212893715 AS sv_6, 0.9349437250805358 AS sv_7, 0.6963455805470735 AS sv_8, -0.8141122720340666 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 1.2481076235129152 AS sv_0, 0.5890216231659828 AS sv_1, 0.07722360122477424 AS sv_2, 0.2523861125901889 AS sv_3, 0.27049312513195944 AS sv_4, -0.7835634926557127 AS sv_5, 0.5228705634036954 AS sv_6, 1.1663772766714096 AS sv_7, 0.45429842565184525 AS sv_8, -1.0890677480757078 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.9591453713163024 AS dual_coeff, 0.3412109075882581 AS sv_0, 1.861244182638373 AS sv_1, 0.46295637462729033 AS sv_2, 0.7247985545514732 AS sv_3, 1.9425332463985066 AS sv_4, -0.16103130060036325 AS sv_5, -1.0032961574104244 AS sv_6, 0.3267529393083514 AS sv_7, 1.3740021819907098 AS sv_8, -0.3114402792346285 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.2262874800843781 AS sv_0, -0.7518383887828721 AS sv_1, -0.5377114825101402 AS sv_2, -0.8715936392729726 AS sv_3, -0.8129208998395101 AS sv_4, 1.1623246605419595 AS sv_5, -0.6682307188109922 AS sv_6, -0.06018586098747406 AS sv_7, -1.6488255260390994 AS sv_8, -0.06553135177181463 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.5471944167734375 AS sv_0, 1.1799493795947327 AS sv_1, 0.1361093946212456 AS sv_2, 0.15383868469300854 AS sv_3, -0.5366991777536146 AS sv_4, -0.37572239930033613 AS sv_5, 0.7637777713157753 AS sv_6, 0.5065886940833276 AS sv_7, 0.22268156631255032 AS sv_8, -0.4691701323704692 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.0927747360333782 AS sv_0, -0.03405189668360506 AS sv_1, 0.4586514681836684 AS sv_2, 1.2060408413504422 AS sv_3, 0.7190356081570217 AS sv_4, 1.0761044273374492 AS sv_5, -0.16169625927089976 AS sv_6, 0.06422802868511858 AS sv_7, -0.7730178166581789 AS sv_8, -0.18141243368019236 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.08070616633436524 AS sv_0, 0.1514511442142756 AS sv_1, 1.28515556478042 AS sv_2, 0.8890857570813501 AS sv_3, 0.24571833705487778 AS sv_4, 1.223838683163338 AS sv_5, -1.140943904783567 AS sv_6, 0.26440405087058444 AS sv_7, 0.5883480086301834 AS sv_8, -0.39894100641416785 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -0.06646024647191281 AS dual_coeff, 1.0994756123888796 AS sv_0, 0.19676129453302088 AS sv_1, 0.47077309301530285 AS sv_2, 0.3444319286898073 AS sv_3, 0.9733840022272995 AS sv_4, 1.059463480258316 AS sv_5, -1.5047181983162197 AS sv_6, 1.2869247010790799 AS sv_7, -0.3396471623069843 AS sv_8, -1.410384739106866 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -0.31272087775862756 AS dual_coeff, -0.6689776681395252 AS sv_0, 0.39941739083734373 AS sv_1, -0.2571792868162356 AS sv_2, -1.2979215144515341 AS sv_3, 1.3662135125985067 AS sv_4, 1.1554604771558676 AS sv_5, 2.6909866359887236 AS sv_6, -0.5161149811316904 AS sv_7, 0.6340121556742192 AS sv_8, 0.3941559383036558 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.5891735853340253 AS sv_0, 0.9526974548471818 AS sv_1, 0.08112958993880352 AS sv_2, -0.6456948221580435 AS sv_3, -1.281876178034183 AS sv_4, -0.5729954971356158 AS sv_5, 0.07706524365932575 AS sv_6, 0.5204752542486365 AS sv_7, 1.248656036807721 AS sv_8, -0.46174387127544436 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -0.39580594875583025 AS dual_coeff, 0.7834068311261477 AS sv_0, -1.303697748720344 AS sv_1, -0.2885024844724163 AS sv_2, 1.475131142024615 AS sv_3, 0.8990461226483143 AS sv_4, 0.12996334868287296 AS sv_5, -0.27872179388266427 AS sv_6, 0.8243048000063509 AS sv_7, -1.8620796329935712 AS sv_8, -0.8438542427143298 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.6384636866460071 AS sv_0, 0.5252537269647394 AS sv_1, 0.5604032539749431 AS sv_2, 0.25954157074797884 AS sv_3, -0.0938743775061122 AS sv_4, 0.3802583913353784 AS sv_5, 0.5597385741790132 AS sv_6, 0.7124738451217373 AS sv_7, -2.167021680894273 AS sv_8, -0.758441769120109 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.877924339111812 AS sv_0, 0.5305530179952413 AS sv_1, -1.4099193292437011 AS sv_2, 0.5576112873024616 AS sv_3, 1.402334189824453 AS sv_4, -1.0299238526983405 AS sv_5, 0.9583778272378892 AS sv_6, 0.7494444088794106 AS sv_7, -0.18472007912343283 AS sv_8, -0.6426485426474337 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.5545332080533678 AS sv_0, -0.44250800056712297 AS sv_1, -0.9267838211801835 AS sv_2, 1.1123548071077702 AS sv_3, 0.6462410111172768 AS sv_4, 0.18743173847308767 AS sv_5, -0.5477088129669442 AS sv_6, 0.5976341519322539 AS sv_7, -0.4165680637409086 AS sv_8, -0.6219209092556941 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -0.4972888925408583 AS dual_coeff, 0.3871162286961366 AS sv_0, -0.23801973531257498 AS sv_1, 0.2366213106992756 AS sv_2, -2.803630160803415 AS sv_3, 1.191141069832706 AS sv_4, -0.5246035170829476 AS sv_5, -1.2169720432605273 AS sv_6, 0.32001533208160726 AS sv_7, -0.23632530224200482 AS sv_8, -0.2652096871373981 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 1.0176741240878735 AS sv_0, -1.3635052006872008 AS sv_1, -0.5952035518720489 AS sv_2, -0.5867861462879944 AS sv_3, -0.2528676922853553 AS sv_4, 0.2663854174928389 AS sv_5, -0.587882802390915 AS sv_6, 1.0852679483263246 AS sv_7, 0.7502235006176854 AS sv_8, -1.1213443049368739 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.2813727235623661 AS sv_0, 1.2722149446366666 AS sv_1, -0.3430237474039699 AS sv_2, -0.5803434738691453 AS sv_3, 0.5246056917832819 AS sv_4, 1.3644987532766129 AS sv_5, -0.8588467758987737 AS sv_6, 0.4914672731610403 AS sv_7, 0.31611985117810315 AS sv_8, -0.6427669198015342 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.6128501800572096 AS sv_0, 0.4952932349410706 AS sv_1, 0.6753600372708614 AS sv_2, -1.4287292292652183 AS sv_3, -1.0918002361375585 AS sv_4, 0.24399019266636163 AS sv_5, -0.8756189473016546 AS sv_6, 0.6659474947300513 AS sv_7, 0.9931309946289237 AS sv_8, -0.6968224853723832 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.4218202332215111 AS sv_0, -0.4390374507048122 AS sv_1, 0.366485163991133 AS sv_2, 1.1200482166113581 AS sv_3, -1.6461835050541598 AS sv_4, 0.05022817973524025 AS sv_5, -0.8425794856688906 AS sv_6, 0.440912999884602 AS sv_7, -1.3085990344289498 AS sv_8, -0.44927702036508393 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, -0.060028629154815 AS sv_0, -1.1349985043580169 AS sv_1, -0.5099175931370743 AS sv_2, -0.3460174895073262 AS sv_3, 0.18307005280858077 AS sv_4, 1.0834531774590934 AS sv_5, 0.4682414709491233 AS sv_6, 0.09896780728108398 AS sv_7, -1.216980616151226 AS sv_8, -0.21717917615158083 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.32608481064287065 AS sv_0, 0.680668642514019 AS sv_1, -0.4401031754900238 AS sv_2, -0.2944976656140466 AS sv_3, 0.9466533167644965 AS sv_4, 0.21083956139501814 AS sv_5, 1.0693832266200975 AS sv_6, 0.36634999348202324 AS sv_7, -0.14111075891397457 AS sv_8, -0.39164792032527934 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, -0.041342985612652525 AS dual_coeff, 0.8621461145401196 AS sv_0, -0.3421826798279283 AS sv_1, -1.807478216044399 AS sv_2, -2.4991212151266384 AS sv_3, -0.43187616159901365 AS sv_4, -0.5182236648023827 AS sv_5, 0.4439732328124855 AS sv_6, 0.8091051188661192 AS sv_7, -0.17961369213794715 AS sv_8, -0.7582242628244037 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, -0.2565754189836403 AS dual_coeff, -0.7693896372895379 AS sv_0, 0.34440654609078875 AS sv_1, 0.1923099841275786 AS sv_2, 0.6844774537134392 AS sv_3, 1.852672959021776 AS sv_4, 1.7626816212444087 AS sv_5, 2.4897071206556025 AS sv_6, -0.5292606802544281 AS sv_7, -0.006868408783579396 AS sv_8, 0.3415035775359892 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.5409200037488626 AS sv_0, -0.3337155868307675 AS sv_1, 1.7073343419953193 AS sv_2, 1.2906761391434058 AS sv_3, -0.36169679406454075 AS sv_4, -0.6689172763354456 AS sv_5, -0.20831824010297756 AS sv_6, 0.45666635264333894 AS sv_7, -0.13880962285206658 AS sv_8, -0.3871054929573432 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.10153776337949867 AS sv_0, 0.5578442140641966 AS sv_1, -0.19899885742658244 AS sv_2, -1.0719303123600283 AS sv_3, -1.2216822584468687 AS sv_4, 0.09734420862822078 AS sv_5, 2.1308232793400004 AS sv_6, 0.11877498865803038 AS sv_7, 0.03474479767432919 AS sv_8, -0.13012209180648887 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.5059073239798881 AS sv_0, 0.08981151702501398 AS sv_1, 0.39192293264912725 AS sv_2, -0.021726672297741202 AS sv_3, 0.25992767580386894 AS sv_4, 1.6115522417737307 AS sv_5, -0.3856340724586212 AS sv_6, 0.7588333865890258 AS sv_7, 0.3669336996595865 AS sv_8, -0.938706039731074 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, -0.3004330163888925 AS sv_0, -0.27765341326849974 AS sv_1, -0.16013232852076337 AS sv_2, 0.39820597553365067 AS sv_3, -1.0454399925043851 AS sv_4, 0.9915538165828423 AS sv_5, 1.2689880278933663 AS sv_6, -0.16170006549647628 AS sv_7, 1.1698395103399282 AS sv_8, 0.0551828388157289 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, -0.31502559935949015 AS dual_coeff, 1.170849937530188 AS sv_0, 0.5843333532911709 AS sv_1, 0.9285187858362384 AS sv_2, -0.8760110367047577 AS sv_3, 0.7780592238741197 AS sv_4, -1.3260694046748829 AS sv_5, 0.9163470638415657 AS sv_6, 1.0065444130637726 AS sv_7, -0.4556252614319159 AS sv_8, -0.869315308024707 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.7450581496480191 AS sv_0, 0.9509173342195831 AS sv_1, -0.18093194083768352 AS sv_2, 1.0164845003188008 AS sv_3, -1.2372001430255133 AS sv_4, 0.7514409663838336 AS sv_5, 0.4843986971019801 AS sv_6, 0.8770496763292983 AS sv_7, 0.600063192130185 AS sv_8, -0.9643795334425515 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.9850847483184834 AS sv_0, 0.1534883183051616 AS sv_1, -0.1047819942740713 AS sv_2, -0.8351156024332327 AS sv_3, -0.13984039543375237 AS sv_4, 0.7155288399751636 AS sv_5, -0.18779381204975798 AS sv_6, -0.906181393403399 AS sv_7, 0.20314063333776786 AS sv_8, 0.8345340645707866 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.4797899856638262 AS sv_0, -0.283140827084127 AS sv_1, 1.8201910206010106 AS sv_2, 0.4477612616310742 AS sv_3, -0.1700936803095665 AS sv_4, -1.488510524532206 AS sv_5, -0.7348482775633208 AS sv_6, 0.27232008497486215 AS sv_7, -0.5175688324528581 AS sv_8, -0.11261299377672843 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.08786168190825536 AS sv_0, 0.4225727023115306 AS sv_1, 0.08734267328222607 AS sv_2, 1.0238593371579374 AS sv_3, -0.6591157763297443 AS sv_4, -0.68948849010222 AS sv_5, 0.11673062548679242 AS sv_6, -0.011949596994102614 AS sv_7, -1.8601878261251854 AS sv_8, 0.086839723685646 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.6540401371479553 AS sv_0, -1.5162266409202294 AS sv_1, 1.7958517463037313 AS sv_2, -0.09949223368530669 AS sv_3, -0.6253190991929047 AS sv_4, -0.8393198316815396 AS sv_5, 2.020714428917183 AS sv_6, 0.547642172665861 AS sv_7, 0.9483674951627784 AS sv_8, -0.4601935187216024 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.03267981416396033 AS sv_0, 1.0538942602743027 AS sv_1, 1.0456844050102068 AS sv_2, -1.3468045097961472 AS sv_3, -0.6838217714677974 AS sv_4, -1.134940635504217 AS sv_5, -0.845285506301488 AS sv_6, -0.13470614791084454 AS sv_7, -1.5799483394430354 AS sv_8, 0.25874023570953636 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS sv_idx, 0.5746479743160698 AS dual_coeff, 0.14172476720193772 AS sv_0, -0.17158305301791102 AS sv_1, -0.1758638044346375 AS sv_2, -1.3199688014183233 AS sv_3, -1.8639662306315696 AS sv_4, 2.1768033546242793 AS sv_5, -2.315610775048862 AS sv_6, 0.46841203896536254 AS sv_7, -1.4987402932746305 AS sv_8, -0.7076962949091757 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.4343866706952755 AS sv_0, 0.9492378944772654 AS sv_1, 1.4844680876983811 AS sv_2, 1.5660751326920754 AS sv_3, 1.0073360478577547 AS sv_4, -1.0507045571725846 AS sv_5, -0.3616359192184754 AS sv_6, 0.290580881235907 AS sv_7, -0.8546329309952236 AS sv_8, -0.178497474809226 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 0.6261140787260275 AS sv_0, 0.1832347671370099 AS sv_1, -0.48412578666837824 AS sv_2, 0.8962696545332757 AS sv_3, 0.407715732368945 AS sv_4, -1.457540867756144 AS sv_5, 0.38135869915542325 AS sv_6, 0.4272758278602515 AS sv_7, 1.120586436713441 AS sv_8, -0.2719531732557108 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -0.5841456217618298 AS sv_0, -0.39812015966145275 AS sv_1, -0.39880940932928266 AS sv_2, -0.007602293922001621 AS sv_3, 0.827592390456679 AS sv_4, 1.2567081319193358 AS sv_5, -0.36904924464494215 AS sv_6, -0.41392809542367653 AS sv_7, -1.3454816323790464 AS sv_8, 0.28030805259808733 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS sv_idx, 0.16392378382015682 AS dual_coeff, -1.3526165520737832 AS sv_0, 0.5898812743788899 AS sv_1, 0.7112227680825335 AS sv_2, -0.24321233422985167 AS sv_3, -0.8276940525666326 AS sv_4, 0.10025272367913643 AS sv_5, -0.6954151353414965 AS sv_6, -1.3750921310298307 AS sv_7, 0.2715748318881522 AS sv_8, 1.3733029197152158 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, -0.812477992520955 AS sv_0, -0.3088227360563988 AS sv_1, 0.950118556600478 AS sv_2, 0.08671086958453104 AS sv_3, 0.47862580533967186 AS sv_4, 0.6426110711251192 AS sv_5, -0.7876986037528778 AS sv_6, -0.739621764751007 AS sv_7, 0.09035870719529294 AS sv_8, 0.6747853390995598 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -0.10827512486888799 AS sv_0, -1.2110980267559703 AS sv_1, 1.0035456544078072 AS sv_2, 0.5167224602549059 AS sv_3, 1.1719588503772211 AS sv_4, -1.0407178422838106 AS sv_5, -1.5173727488511308 AS sv_6, -0.26558107181535767 AS sv_7, -0.05858411222352325 AS sv_8, 0.380256758135746 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, -0.09954374731611668 AS sv_0, -0.30641458382064385 AS sv_1, -0.018954808640995614 AS sv_2, 0.5090993571989407 AS sv_3, 1.8324941152461451 AS sv_4, -1.0608914320155864 AS sv_5, 0.14881034181751351 AS sv_6, -0.25959997627907844 AS sv_7, 0.19519313653216247 AS sv_8, 0.3764250141808097 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.6784275144204127 AS sv_0, 1.373275615567766 AS sv_1, -1.9181664003266556 AS sv_2, -0.5968860430557571 AS sv_3, 1.0419111341028107 AS sv_4, 1.1992646238286133 AS sv_5, -0.8207778065599642 AS sv_6, -0.5193304587263646 AS sv_7, -0.24690119975187094 AS sv_8, 0.392639813552325 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -0.6629414695953076 AS sv_0, 1.281356387108932 AS sv_1, -0.8279390259279739 AS sv_2, -0.30713584219847534 AS sv_3, -0.6676428129186932 AS sv_4, 1.0872264326045709 AS sv_5, -0.534449951635971 AS sv_6, -0.520029836786576 AS sv_7, 0.8685743489689621 AS sv_8, 0.4055002253484424 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 44 AS sv_idx, 0.24871135172969594 AS dual_coeff, -0.9791689085229283 AS sv_0, -0.5562996602729775 AS sv_1, 0.6484960727403403 AS sv_2, -0.38973405220847024 AS sv_3, -1.5582146008164344 AS sv_4, 1.3174117769559048 AS sv_5, -0.4517151608521773 AS sv_6, -0.8108554927442709 AS sv_7, 1.314776081081343 AS sv_8, 0.6732723867786758 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, -0.9016982368933829 AS sv_0, -0.06810561595446128 AS sv_1, 0.398010696635967 AS sv_2, -0.8256780299245522 AS sv_3, 0.17604562344873267 AS sv_4, 1.1063006950214826 AS sv_5, 0.34005562506024056 AS sv_6, -0.7625495199580522 AS sv_7, -0.39681130378988316 AS sv_8, 0.6475532000440688 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, -0.9404255152479981 AS sv_0, 0.8190429819282843 AS sv_1, -0.8779771954355704 AS sv_2, 0.9581035185537486 AS sv_3, -0.3423822286077114 AS sv_4, 0.7204163150257421 AS sv_5, 0.4508277266027788 AS sv_6, -0.859564565180365 AS sv_7, -1.2261723883816165 AS sv_8, 0.7870788272604287 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.821849213196117 AS sv_0, -0.8622437900413957 AS sv_1, -0.839886647537644 AS sv_2, 1.5183657734749747 AS sv_3, -0.08337053569433552 AS sv_4, -1.2823569303281672 AS sv_5, 1.8743511698652495 AS sv_6, 0.6543906610466925 AS sv_7, -0.09854050956908234 AS sv_8, -0.5195769607041587 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, -0.040511895919603594 AS sv_0, 0.28418208581458765 AS sv_1, -1.4068142374119657 AS sv_2, 0.29754312574106323 AS sv_3, -1.5116728486607989 AS sv_4, -1.02448838758812 AS sv_5, -0.5429946037460954 AS sv_6, -0.1935406476599708 AS sv_7, 1.435455661100924 AS sv_8, 0.30597925987768143 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, -0.8940369814483777 AS sv_0, 0.6126867488912908 AS sv_1, 0.1385339067278885 AS sv_2, -0.8069474483979687 AS sv_3, 0.6647055421620988 AS sv_4, -0.8215329818326607 AS sv_5, 0.4403741741184615 AS sv_6, -1.0405344796049179 AS sv_7, 0.26947976324110795 AS sv_8, 1.1365500140997753 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 50 AS sv_idx, 0.03569598456501553 AS dual_coeff, -0.8258043481611503 AS sv_0, -0.5171800601707865 AS sv_1, -0.7393504913564236 AS sv_2, 0.9234230056935755 AS sv_3, 0.9463925432557774 AS sv_4, -0.47320047142213695 AS sv_5, -2.1560699343565153 AS sv_6, -0.9187677033077681 AS sv_7, 0.006963110999137138 AS sv_8, 0.976183530781652 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, -0.4410138435116335 AS sv_0, -1.0984381054071022 AS sv_1, 0.5228626555577417 AS sv_2, 0.741737941657605 AS sv_3, -0.8398005957924142 AS sv_4, -0.7116729221229572 AS sv_5, 0.046998572010572094 AS sv_6, -0.5587150028233494 AS sv_7, 1.6237504087203205 AS sv_8, 0.6396259507210129 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.6937771485761223 AS sv_0, 0.45430361561875215 AS sv_1, 0.21064105350805334 AS sv_2, 1.0433901573232613 AS sv_3, 0.03740459026006079 AS sv_4, -1.036931473969185 AS sv_5, 0.4302565519723686 AS sv_6, 0.5591744785264072 AS sv_7, -0.1039415499024544 AS sv_8, -0.4503607103778977 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, -0.648135226450511 AS sv_0, -1.704481068021942 AS sv_1, -0.7652762598491197 AS sv_2, 1.2354645078360993 AS sv_3, 0.1536981096213723 AS sv_4, 1.0822402351628564 AS sv_5, 0.8857076298279853 AS sv_6, -0.5055541950160398 AS sv_7, 1.0120573530947856 AS sv_8, 0.39146992349937304 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 54 AS sv_idx, 0.19343119361246583 AS dual_coeff, 0.2812003983913316 AS sv_0, 1.9872779676508556 AS sv_1, -3.7541780933732216 AS sv_2, 0.6557257799003048 AS sv_3, 0.5410159536042183 AS sv_4, 1.8997492897735913 AS sv_5, 2.3042134751718173 AS sv_6, 0.5706567342681115 AS sv_7, 0.3538620586773582 AS sv_8, -0.7805557322795593 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 55 AS sv_idx, 0.4716431845829021 AS dual_coeff, -0.8515880169543086 AS sv_0, 1.8715398097687233 AS sv_1, 1.731159058836162 AS sv_2, 0.8265102476863448 AS sv_3, 0.9708913715472081 AS sv_4, 0.3459960029680656 AS sv_5, -1.5970321135438057 AS sv_6, -0.8237933364731713 AS sv_7, -0.6571229830030352 AS sv_8, 0.7916966724373024 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 56 AS sv_idx, 0.1563118681730087 AS dual_coeff, -0.8885433471329603 AS sv_0, -1.2270298610063357 AS sv_1, 1.5953519478000178 AS sv_2, 0.7242623898151819 AS sv_3, -0.02019600346792144 AS sv_4, 0.9231050628128051 AS sv_5, 0.457395100913295 AS sv_6, -0.7761955794368778 AS sv_7, 1.7547614244835674 AS sv_8, 0.681166614532056 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, 0.22373787920969282 AS sv_0, -0.7816753739672916 AS sv_1, -1.561197607479468 AS sv_2, -0.5896890596297178 AS sv_3, -0.1470691637205739 AS sv_4, 2.142736815978169 AS sv_5, 0.3084830333061339 AS sv_6, 0.5476378834944492 AS sv_7, 0.9413429637671645 AS sv_8, -0.7837494690214598 AS sv_9 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + -0.002262763725736596 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * (kernel_input.scaler_2 * "SV_data".sv_0 + kernel_input.scaler_3 * "SV_data".sv_1 + kernel_input.scaler_4 * "SV_data".sv_2 + kernel_input.scaler_5 * "SV_data".sv_3 + kernel_input.scaler_6 * "SV_data".sv_4 + kernel_input.scaler_7 * "SV_data".sv_5 + kernel_input.scaler_8 * "SV_data".sv_6 + kernel_input.scaler_9 * "SV_data".sv_7 + kernel_input.scaler_10 * "SV_data".sv_8 + kernel_input.scaler_11 * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.8613815875967848 + 0.060712503290454994))), 100.0)))) AS "DecisionProba" 
FROM kernel_dp