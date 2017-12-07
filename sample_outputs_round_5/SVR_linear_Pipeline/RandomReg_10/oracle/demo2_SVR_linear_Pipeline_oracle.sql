-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0191489262951 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.0708353154153 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0145977823714 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0910794486149 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0683924653502 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.0850322430116 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0737437804139 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.0350815043464 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0586885820257 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0449362429989 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "RandomReg_10" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0191489262951) / 1.00190849739 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.0708353154153) / 0.997307966587 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0145977823714) / 1.09228200743 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0910794486149) / 0.883424849402 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.0683924653502) / 0.967179966928 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.0850322430116) / 0.914052960866 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0737437804139) / 1.07037874496 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.0350815043464) / 1.0912138334 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.0586885820257) / 0.988825871243 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0449362429989) / 0.934812653403 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.937424540543 AS dual_coeff, -0.864120626638 AS sv_0, 0.664949519347 AS sv_1, 1.21025175621 AS sv_2, 0.162330127996 AS sv_3, -0.26327541793 AS sv_4, -1.42721403714 AS sv_5, 0.227440006569 AS sv_6, -1.23979534561 AS sv_7, 1.43747258045 AS sv_8, -2.25958661006 AS sv_9 FROM DUAL UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -1.32238612983 AS sv_0, -1.26009189501 AS sv_1, -0.244340868075 AS sv_2, -0.13578146262 AS sv_3, 0.217925036576 AS sv_4, -0.311264542717 AS sv_5, 0.18017078622 AS sv_6, -0.00771738756319 AS sv_7, -1.86043856797 AS sv_8, -0.464948135746 AS sv_9 FROM DUAL UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -1.11968515589 AS sv_0, 0.919124467597 AS sv_1, 1.60431354301 AS sv_2, -0.527902910215 AS sv_3, 0.0359642557045 AS sv_4, 1.034524971 AS sv_5, -0.061835043117 AS sv_6, 0.688150970421 AS sv_7, -1.62612042366 AS sv_8, -0.972093215105 AS sv_9 FROM DUAL UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -1.29537704451 AS sv_0, -1.08002478259 AS sv_1, 0.281025955339 AS sv_2, -0.430864388158 AS sv_3, 1.71505450082 AS sv_4, 0.442842245937 AS sv_5, 0.0805938808744 AS sv_6, 0.530316156662 AS sv_7, -0.88455667553 AS sv_8, -0.677924185948 AS sv_9 FROM DUAL UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.145209941497 AS sv_0, 0.0947432286956 AS sv_1, -1.40064005959 AS sv_2, -0.639155533357 AS sv_3, -0.351231720742 AS sv_4, -0.491124093455 AS sv_5, -0.213930987097 AS sv_6, -0.29921159204 AS sv_7, -1.25809396903 AS sv_8, -2.27919204239 AS sv_9 FROM DUAL UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.30640832936 AS sv_0, 2.4368359066 AS sv_1, -1.41868904473 AS sv_2, -0.700616509147 AS sv_3, -0.713709854406 AS sv_4, -0.949510133986 AS sv_5, -0.372663559924 AS sv_6, -0.75026906383 AS sv_7, -0.169713999198 AS sv_8, 1.59265435226 AS sv_9 FROM DUAL UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 1.24860496419 AS sv_0, -0.374901106163 AS sv_1, -0.071704781316 AS sv_2, 1.07043418635 AS sv_3, 1.15567579983 AS sv_4, -0.717762429935 AS sv_5, -0.59856768192 AS sv_6, -1.45322140586 AS sv_7, -1.466986959 AS sv_8, -1.35578520414 AS sv_9 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -0.267165091548 AS sv_0, -0.0473474625879 AS sv_1, 2.34463882134 AS sv_2, -1.13760358024 AS sv_3, 0.531918962585 AS sv_4, -1.71295642259 AS sv_5, -0.138407532881 AS sv_6, 1.21019821637 AS sv_7, 0.865378580023 AS sv_8, 0.27076695277 AS sv_9 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 1.36272254695 AS sv_0, -0.603066121935 AS sv_1, 0.507902940314 AS sv_2, 0.0852671510753 AS sv_3, -0.441969907161 AS sv_4, 1.78185652862 AS sv_5, -0.527659359099 AS sv_6, 2.23926646126 AS sv_7, -0.384997455013 AS sv_8, -0.846204792872 AS sv_9 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 1.29640864164 AS sv_0, -0.697544036667 AS sv_1, 2.02525163312 AS sv_2, -1.21394669834 AS sv_3, -0.710416934255 AS sv_4, 0.442022500166 AS sv_5, -2.09676399071 AS sv_6, -0.654765582084 AS sv_7, -0.171770613755 AS sv_8, 1.53025583801 AS sv_9 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -0.690235653688 AS sv_0, 0.34604335152 AS sv_1, 0.961626863697 AS sv_2, -0.241499679437 AS sv_3, 0.590687173667 AS sv_4, -0.578020634403 AS sv_5, -0.410665126868 AS sv_6, -1.63223023395 AS sv_7, 1.30133504561 AS sv_8, -1.08159181546 AS sv_9 FROM DUAL UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.648123744088 AS sv_0, 0.239747289987 AS sv_1, -0.338088849569 AS sv_2, 0.0859409462327 AS sv_3, 0.205396511646 AS sv_4, -0.613084033584 AS sv_5, 0.988525330007 AS sv_6, -1.9776879831 AS sv_7, -0.392103073018 AS sv_8, -0.109322991991 AS sv_9 FROM DUAL UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -1.00723306313 AS sv_0, 0.865137113338 AS sv_1, -1.80694574141 AS sv_2, 0.312989522803 AS sv_3, -0.497580501509 AS sv_4, -1.02516664855 AS sv_5, -0.139992247863 AS sv_6, -0.280101548991 AS sv_7, -0.054714755612 AS sv_8, 1.05580900656 AS sv_9 FROM DUAL UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.188492440871 AS sv_0, -1.16785449471 AS sv_1, -0.334744583051 AS sv_2, -0.144286463458 AS sv_3, 1.08179705047 AS sv_4, 0.86385616674 AS sv_5, -1.77215411695 AS sv_6, 0.0454181712697 AS sv_7, 0.789916531948 AS sv_8, -0.505624676818 AS sv_9 FROM DUAL UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.0717119382718 AS sv_0, -0.440395094237 AS sv_1, -2.03445818995 AS sv_2, 2.98983418423 AS sv_3, -1.03446206018 AS sv_4, -0.0585255704547 AS sv_5, 0.917779144736 AS sv_6, 1.7621869247 AS sv_7, 1.55704481826 AS sv_8, -0.827839010596 AS sv_9 FROM DUAL UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, -1.23661075122 AS sv_0, -0.7618077333 AS sv_1, -0.366081249855 AS sv_2, 0.505156582471 AS sv_3, -1.03871591997 AS sv_4, -0.892914330443 AS sv_5, 0.808094414139 AS sv_6, -1.4560879552 AS sv_7, -0.141871382978 AS sv_8, 0.801537597195 AS sv_9 FROM DUAL UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -1.00648957449 AS sv_0, 0.353741052997 AS sv_1, 1.81856920564 AS sv_2, -0.266322362442 AS sv_3, -0.0211625633101 AS sv_4, 0.371805566036 AS sv_5, 0.673023035337 AS sv_6, -1.46511782779 AS sv_7, 0.00965301973505 AS sv_8, 0.523459872332 AS sv_9 FROM DUAL UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.31111737779 AS sv_0, 0.895617997589 AS sv_1, -0.385652816502 AS sv_2, 0.354113986776 AS sv_3, -0.483326960653 AS sv_4, -1.5005590049 AS sv_5, -0.284600125453 AS sv_6, 0.48565394568 AS sv_7, -1.17605578807 AS sv_8, -0.353375767315 AS sv_9 FROM DUAL UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -1.21569817588 AS sv_0, 0.826781227099 AS sv_1, 0.826072174954 AS sv_2, -0.102711952728 AS sv_3, 0.642890681172 AS sv_4, 1.60763726643 AS sv_5, 0.414387092628 AS sv_6, 0.120214055673 AS sv_7, -0.442700260606 AS sv_8, 0.194811441337 AS sv_9 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.0609230526457 AS sv_0, 0.303934500056 AS sv_1, -1.117249246 AS sv_2, 0.135004662733 AS sv_3, 0.0446208761022 AS sv_4, -0.625280177665 AS sv_5, -0.839067208323 AS sv_6, 0.0461358048866 AS sv_7, 0.12299936865 AS sv_8, -0.8648469397 AS sv_9 FROM DUAL UNION ALL SELECT 20 AS sv_idx, 0.857916940029 AS dual_coeff, -0.128463757592 AS sv_0, -0.991501145929 AS sv_1, 0.46782725906 AS sv_2, -2.37257333642 AS sv_3, -0.324239097822 AS sv_4, 1.81305109047 AS sv_5, 1.31209186383 AS sv_6, 0.839219187403 AS sv_7, 2.05978952132 AS sv_8, -1.40400123556 AS sv_9 FROM DUAL UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.253815636828 AS sv_0, -1.80915089666 AS sv_1, 0.962149149068 AS sv_2, 0.350608056652 AS sv_3, 1.96762374405 AS sv_4, -0.0331971021191 AS sv_5, -0.102513957085 AS sv_6, 1.2069968735 AS sv_7, 0.182725690323 AS sv_8, 0.209443352461 AS sv_9 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, -0.44227266607 AS sv_0, -0.0669186434901 AS sv_1, 0.603135145392 AS sv_2, -1.16912773477 AS sv_3, 0.939764216569 AS sv_4, 0.0729523544785 AS sv_5, -0.737650581018 AS sv_6, 1.17405412378 AS sv_7, 0.0320423650722 AS sv_8, 0.975031299561 AS sv_9 FROM DUAL UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -1.02103017223 AS sv_0, -0.0755203518998 AS sv_1, 0.215241295148 AS sv_2, -0.581830271403 AS sv_3, -0.884661801886 AS sv_4, -1.16414815428 AS sv_5, -0.111413518532 AS sv_6, -0.306859524008 AS sv_7, 1.71574904387 AS sv_8, 0.844083591542 AS sv_9 FROM DUAL UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, -0.418310903093 AS sv_0, -1.05618977 AS sv_1, -0.617419580208 AS sv_2, -0.536307148401 AS sv_3, 1.36924730163 AS sv_4, -0.0582701396715 AS sv_5, -0.157433989681 AS sv_6, 1.08286760628 AS sv_7, 0.15714989751 AS sv_8, -1.90986464924 AS sv_9 FROM DUAL UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.563462880416 AS sv_0, 0.14162343053 AS sv_1, -0.489672752648 AS sv_2, -1.37065343975 AS sv_3, -1.4606029714 AS sv_4, 0.255378657281 AS sv_5, -0.793952272307 AS sv_6, -0.77729854197 AS sv_7, -0.540136782771 AS sv_8, -0.0836391644084 AS sv_9 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.874362502926 AS sv_0, 1.42054660309 AS sv_1, 0.612154486465 AS sv_2, 0.800495259207 AS sv_3, 0.747612209311 AS sv_4, 0.356638342616 AS sv_5, -1.62059328299 AS sv_6, 1.79018050033 AS sv_7, 0.148834979574 AS sv_8, -1.0723225937 AS sv_9 FROM DUAL UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, -0.553106179484 AS sv_0, 1.2929714329 AS sv_1, -1.21817200984 AS sv_2, 0.724867893284 AS sv_3, 1.7838622428 AS sv_4, -0.456094773458 AS sv_5, 1.30826115307 AS sv_6, -0.678717330554 AS sv_7, -0.0847174236513 AS sv_8, -0.615816400607 AS sv_9 FROM DUAL UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 1.68204481035 AS sv_0, -2.23192671675 AS sv_1, -0.951087987501 AS sv_2, 0.724106037201 AS sv_3, -0.950272464066 AS sv_4, -1.48426179633 AS sv_5, 0.612236427862 AS sv_6, 0.425450993151 AS sv_7, -1.64602116481 AS sv_8, -0.15769048391 AS sv_9 FROM DUAL UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.24509004004 AS sv_0, -0.0812332547173 AS sv_1, 0.385760560765 AS sv_2, -0.221233750859 AS sv_3, -0.636813967122 AS sv_4, 1.95348905667 AS sv_5, 0.938675767649 AS sv_6, 0.573782398234 AS sv_7, -0.569583932818 AS sv_8, -0.0236735064977 AS sv_9 FROM DUAL UNION ALL SELECT 30 AS sv_idx, -1.0 AS dual_coeff, 0.0347341880974 AS sv_0, 0.0426411760036 AS sv_1, 0.146220004797 AS sv_2, 1.16774296951 AS sv_3, -0.808166846488 AS sv_4, 0.0585378671846 AS sv_5, 0.6267904772 AS sv_6, -0.424358776225 AS sv_7, 1.07302946892 AS sv_8, 0.701834754062 AS sv_9 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.332837508661 AS sv_0, 0.632828017024 AS sv_1, -0.812479016542 AS sv_2, -0.865000422788 AS sv_3, 1.29914838999 AS sv_4, 0.498871898548 AS sv_5, -1.07559644027 AS sv_6, -1.72504097961 AS sv_7, -0.410083231904 AS sv_8, 0.950048692035 AS sv_9 FROM DUAL UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, -1.02467113362 AS sv_0, 0.34873659212 AS sv_1, -0.288410419231 AS sv_2, 0.872627530172 AS sv_3, -1.19328056669 AS sv_4, 0.574921205264 AS sv_5, 0.418526397775 AS sv_6, 0.481674598759 AS sv_7, -0.888909266834 AS sv_8, 0.321969957723 AS sv_9 FROM DUAL UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, -1.43620843489 AS sv_0, -0.516159872441 AS sv_1, 0.287868452122 AS sv_2, 1.76140527494 AS sv_3, 0.356617939997 AS sv_4, -1.1113161627 AS sv_5, 0.978650179494 AS sv_6, 0.571611203427 AS sv_7, 0.345486570943 AS sv_8, -0.165538615717 AS sv_9 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -1.0 AS dual_coeff, -1.20465038704 AS sv_0, -0.899333686396 AS sv_1, -2.12448794825 AS sv_2, -0.182483732028 AS sv_3, 0.489864577054 AS sv_4, -0.0985567730093 AS sv_5, 0.204734947289 AS sv_6, 0.263460269428 AS sv_7, 1.27346925236 AS sv_8, 1.96877548463 AS sv_9 FROM DUAL UNION ALL SELECT 35 AS sv_idx, -0.327671805509 AS dual_coeff, 1.10160563287 AS sv_0, 0.354970244002 AS sv_1, -0.202406295265 AS sv_2, 1.05724581493 AS sv_3, -1.18643324937 AS sv_4, 1.28006827134 AS sv_5, -0.145814052047 AS sv_6, -0.326121806 AS sv_7, 0.0370895246229 AS sv_8, -0.447553594289 AS sv_9 FROM DUAL UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 0.509893302777 AS sv_0, 0.791714947153 AS sv_1, 0.596998858483 AS sv_2, 0.903395660796 AS sv_3, 0.738896025039 AS sv_4, 1.26399683464 AS sv_5, 0.192257716793 AS sv_6, -1.17120611184 AS sv_7, 1.85348004889 AS sv_8, -0.699480171472 AS sv_9 FROM DUAL UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 1.61793514931 AS sv_0, 2.54846312762 AS sv_1, -0.35553990835 AS sv_2, -0.78483698916 AS sv_3, -0.485105152585 AS sv_4, -0.831068450579 AS sv_5, 1.5694198308 AS sv_6, 0.969688750222 AS sv_7, 1.00697346655 AS sv_8, -0.553541135516 AS sv_9 FROM DUAL UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 1.90778458586 AS sv_0, -0.221653909438 AS sv_1, 0.308489971259 AS sv_2, -0.805220746972 AS sv_3, 0.0422176609639 AS sv_4, 0.302590927052 AS sv_5, -0.842110232189 AS sv_6, 0.0334624808511 AS sv_7, -1.1019975229 AS sv_8, -1.01822652695 AS sv_9 FROM DUAL UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, -1.95851265341 AS sv_0, -0.263847729141 AS sv_1, -1.21800709616 AS sv_2, -0.334171076551 AS sv_3, 0.551149519486 AS sv_4, -0.11930148851 AS sv_5, 0.22710652473 AS sv_6, -0.28075862797 AS sv_7, 1.16241679726 AS sv_8, 0.832779113775 AS sv_9 FROM DUAL UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, 0.323621433893 AS sv_0, -1.42279591775 AS sv_1, 0.219873508479 AS sv_2, 0.734799805626 AS sv_3, 0.496744924905 AS sv_4, 0.492985023573 AS sv_5, -0.932082525858 AS sv_6, -1.59617218532 AS sv_7, -0.240528435429 AS sv_8, 2.36799313376 AS sv_9 FROM DUAL UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 1.45251733196 AS sv_0, -1.68425386262 AS sv_1, 0.629176957471 AS sv_2, -0.501150497898 AS sv_3, -0.416392880241 AS sv_4, -0.764856122229 AS sv_5, 0.835820519516 AS sv_6, -0.344531734833 AS sv_7, -1.37435429964 AS sv_8, 0.3316560636 AS sv_9 FROM DUAL UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, -0.922764217378 AS sv_0, 1.05006998934 AS sv_1, -0.282563290864 AS sv_2, -0.467435919577 AS sv_3, -0.7261654347 AS sv_4, 0.618294170299 AS sv_5, 1.50914871711 AS sv_6, 0.687459813892 AS sv_7, 0.307010051384 AS sv_8, 2.03391490736 AS sv_9 FROM DUAL UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.455505659544 AS sv_0, 1.09182415506 AS sv_1, 1.0571618036 AS sv_2, 1.45234709658 AS sv_3, 1.24204478652 AS sv_4, -0.907556574526 AS sv_5, -0.295214322645 AS sv_6, 0.0146369674582 AS sv_7, 1.12458434836 AS sv_8, 0.691837380432 AS sv_9 FROM DUAL UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -1.95226766367 AS sv_0, 0.807793182764 AS sv_1, 0.866755107303 AS sv_2, -2.12111728643 AS sv_3, -2.25053312585 AS sv_4, -0.442697466049 AS sv_5, -1.2212406876 AS sv_6, -1.06690439483 AS sv_7, -1.10329791258 AS sv_8, 1.2038525093 AS sv_9 FROM DUAL UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.330574597213 AS sv_0, 0.926974675531 AS sv_1, -0.18736553828 AS sv_2, 0.380538869679 AS sv_3, -0.466415630301 AS sv_4, 0.564014060227 AS sv_5, 0.172450552364 AS sv_6, -0.828508338257 AS sv_7, 1.21853252811 AS sv_8, -1.15866780605 AS sv_9 FROM DUAL UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, 0.908980930546 AS sv_0, 0.670352115282 AS sv_1, -0.633748140697 AS sv_2, 1.43904312252 AS sv_3, -0.0591335035634 AS sv_4, 1.237190284 AS sv_5, 1.70376172828 AS sv_6, 0.456359006117 AS sv_7, 0.711629761435 AS sv_8, -0.52837596532 AS sv_9 FROM DUAL UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, -0.80267815541 AS sv_0, 1.08730585218 AS sv_1, -0.707680931396 AS sv_2, -0.630808043676 AS sv_3, 0.540367765181 AS sv_4, -1.27817404271 AS sv_5, 0.769865073436 AS sv_6, 0.378072738753 AS sv_7, 0.198187288633 AS sv_8, -0.55471255912 AS sv_9 FROM DUAL UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 1.31532343602 AS sv_0, 0.974771322674 AS sv_1, 0.235779266321 AS sv_2, -0.330185856955 AS sv_3, -0.440636112315 AS sv_4, -1.03941364647 AS sv_5, -0.94083680712 AS sv_6, 1.34134095809 AS sv_7, 0.740269793287 AS sv_8, -0.504744453804 AS sv_9 FROM DUAL UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, -0.246904853956 AS sv_0, -0.19881809706 AS sv_1, -1.03058580854 AS sv_2, 0.992902226936 AS sv_3, 0.675264777477 AS sv_4, 2.20230079583 AS sv_5, 0.344989896087 AS sv_6, -0.423484130231 AS sv_7, 0.1598983178 AS sv_8, -0.476405066786 AS sv_9 FROM DUAL UNION ALL SELECT 50 AS sv_idx, -0.38973036259 AS dual_coeff, -0.214905971366 AS sv_0, 0.108775004296 AS sv_1, -1.35467806043 AS sv_2, 0.986529029114 AS sv_3, -0.113492594155 AS sv_4, -0.949538488342 AS sv_5, -3.58665570489 AS sv_6, 1.61397921696 AS sv_7, 0.0936677574218 AS sv_8, 1.52158108943 AS sv_9 FROM DUAL UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 1.13043939042 AS sv_0, -0.429187592558 AS sv_1, 0.284269030236 AS sv_2, 1.37744746986 AS sv_3, -0.86405559449 AS sv_4, 1.69909394756 AS sv_5, 0.277048359205 AS sv_6, -0.14891395366 AS sv_7, -1.30743549211 AS sv_8, 0.552250502548 AS sv_9 FROM DUAL UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.847214198335 AS sv_0, 1.26751321313 AS sv_1, -0.549407483416 AS sv_2, 0.280283041143 AS sv_3, 2.30027538187 AS sv_4, -1.21801208831 AS sv_5, 0.656610547554 AS sv_6, 0.315013480867 AS sv_7, 1.45258537359 AS sv_8, 0.177254049908 AS sv_9 FROM DUAL UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, 0.534737528973 AS sv_0, -0.513236660979 AS sv_1, 0.591684330236 AS sv_2, -1.10412636769 AS sv_3, -1.69792397616 AS sv_4, 1.64344038433 AS sv_5, 0.580920817572 AS sv_6, 1.2232944166 AS sv_7, -0.469254106614 AS sv_8, -0.606221130867 AS sv_9 FROM DUAL UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 1.36499411116 AS sv_0, 0.457301516026 AS sv_1, -0.455270425316 AS sv_2, -0.727470099421 AS sv_3, -1.55662750728 AS sv_4, 0.169537170322 AS sv_5, -1.60734928541 AS sv_6, 0.255376096489 AS sv_7, -2.0965555181 AS sv_8, 0.349259913458 AS sv_9 FROM DUAL UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, -0.527355912818 AS sv_0, -2.67409962607 AS sv_1, 1.79967206301 AS sv_2, -0.868177937545 AS sv_3, 1.44783350821 AS sv_4, -1.07503178492 AS sv_5, -0.356115717707 AS sv_6, -1.63445684545 AS sv_7, 1.13941335988 AS sv_8, -0.66891514014 AS sv_9 FROM DUAL UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, 0.581564297741 AS sv_0, -0.950615084746 AS sv_1, 1.35877190864 AS sv_2, -0.694000850648 AS sv_3, -0.267953392842 AS sv_4, -0.511128200983 AS sv_5, -1.37346502312 AS sv_6, -0.155867489803 AS sv_7, -1.17396785948 AS sv_8, -0.0637130489346 AS sv_9 FROM DUAL UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, -1.50282338301 AS sv_0, 0.731398412651 AS sv_1, -0.251773198809 AS sv_2, -1.94669580225 AS sv_3, 1.14601194918 AS sv_4, 0.855965076354 AS sv_5, 1.32683657809 AS sv_6, 2.14085277402 AS sv_7, -0.182344477286 AS sv_8, 1.41753579417 AS sv_9 FROM DUAL UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 1.10858711604 AS sv_0, -0.290287622446 AS sv_1, 0.0404588893945 AS sv_2, 0.48948833071 AS sv_3, 0.906891367148 AS sv_4, 0.0781915306798 AS sv_5, -0.106304208368 AS sv_6, 1.44440525418 AS sv_7, 0.327814990815 AS sv_8, 0.506661462595 AS sv_9 FROM DUAL UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.193234047977 AS sv_0, -1.44604653169 AS sv_1, -2.24841760163 AS sv_2, -0.88822552242 AS sv_3, -0.346279865261 AS sv_4, 0.211846809642 AS sv_5, 0.650279790336 AS sv_6, -0.00265637915575 AS sv_7, 0.409426515133 AS sv_8, 0.778468010235 AS sv_9 FROM DUAL UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, -1.79810761595 AS sv_0, -0.664853087526 AS sv_1, 0.141469292814 AS sv_2, 2.370068925 AS sv_3, -1.59221854018 AS sv_4, -0.690486006526 AS sv_5, 0.112152602295 AS sv_6, 0.429358738101 AS sv_7, -1.27490468843 AS sv_8, 1.05399688657 AS sv_9 FROM DUAL UNION ALL SELECT 61 AS sv_idx, -0.533649518634 AS dual_coeff, -0.0707561820625 AS sv_0, -0.234553834978 AS sv_1, 0.0497056942565 AS sv_2, 0.147334879889 AS sv_3, 1.06120171086 AS sv_4, -0.896775153086 AS sv_5, 0.296060602149 AS sv_6, -0.681917069457 AS sv_7, 0.193128311437 AS sv_8, 0.144138996837 AS sv_9 FROM DUAL UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 0.434777525091 AS sv_0, 1.22946665777 AS sv_1, 1.99902255375 AS sv_2, -0.763661919579 AS sv_3, 0.01208274457 AS sv_4, 0.113527259942 AS sv_5, 0.776302022669 AS sv_6, -0.100885289893 AS sv_7, -2.0333583635 AS sv_8, -0.753881241151 AS sv_9 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 1.0 AS dual_coeff, 0.214265185957 AS sv_0, -0.192963956369 AS sv_1, 0.15227542693 AS sv_2, 0.787248887649 AS sv_3, 1.13164775901 AS sv_4, 0.823096143792 AS sv_5, 0.793482660937 AS sv_6, -1.17866303198 AS sv_7, 0.753966573494 AS sv_8, -1.18190901174 AS sv_9 FROM DUAL UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, -0.221814692803 AS sv_0, 0.143616338671 AS sv_1, 0.653075393594 AS sv_2, -0.73550828891 AS sv_3, -0.161253526773 AS sv_4, -1.91085821734 AS sv_5, 0.604228409691 AS sv_6, -0.939214810147 AS sv_7, -0.227983404651 AS sv_8, 0.671993594033 AS sv_9 FROM DUAL UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, -0.36836042534 AS sv_0, -1.24092912057 AS sv_1, -0.676150466044 AS sv_2, 1.35184791641 AS sv_3, -2.22485748128 AS sv_4, 1.05594449676 AS sv_5, -2.2580217921 AS sv_6, 0.160364638966 AS sv_7, 0.60482482029 AS sv_8, 1.06393003878 AS sv_9 FROM DUAL UNION ALL SELECT 66 AS sv_idx, 0.330559287246 AS dual_coeff, 2.3995607337 AS sv_0, 0.520796038779 AS sv_1, -0.070729912751 AS sv_2, -0.31075086622 AS sv_3, -0.798934227472 AS sv_4, 1.20365578818 AS sv_5, 1.63194752685 AS sv_6, -0.991760515528 AS sv_7, 0.188581444008 AS sv_8, -0.392356749342 AS sv_9 FROM DUAL) "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -6.77479735626 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte