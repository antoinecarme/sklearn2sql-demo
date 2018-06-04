-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf_Pipeline
-- Dataset : RandomReg_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180602144656_VHD_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144656_VHD_ADS_imp_1_OUT` (
	`KEY` BIGINT NOT NULL, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144656_VHD_ADS_imp_1_OUT part 2. Populate

INSERT INTO `TMP_20180602144656_VHD_ADS_imp_1_OUT` (`KEY`, impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT `U`.`KEY`, `U`.impter_2, `U`.impter_3, `U`.impter_4, `U`.impter_5, `U`.impter_6, `U`.impter_7, `U`.impter_8, `U`.impter_9, `U`.impter_10, `U`.impter_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.impter_2, `ADS_imp_1_OUT`.impter_3, `ADS_imp_1_OUT`.impter_4, `ADS_imp_1_OUT`.impter_5, `ADS_imp_1_OUT`.impter_6, `ADS_imp_1_OUT`.impter_7, `ADS_imp_1_OUT`.impter_8, `ADS_imp_1_OUT`.impter_9, `ADS_imp_1_OUT`.impter_10, `ADS_imp_1_OUT`.impter_11 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.16680947298137394 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.16351271994443456 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.19149292241003152 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.058384844753055345 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.09933205162122274 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.21293121660488037 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.047865568690029614 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.05078698959084227 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.1913199225908187 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.19940405677473352 ELSE `ADS`.`Feature_9` END AS impter_11 
FROM `RandomReg_10` AS `ADS`) AS `ADS_imp_1_OUT`) AS `U`

-- Code For temporary table TMP_20180602144656_VHD_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602144656_VHD_ADS_imp_1_OUT_KEY` ON `TMP_20180602144656_VHD_ADS_imp_1_OUT` (`KEY`)

-- Code For temporary table TMP_20180602144656_CPJ_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180602144656_CPJ_ADS_sca_2_OUT` (
	`KEY` BIGINT NOT NULL, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180602144656_CPJ_ADS_sca_2_OUT part 2. Populate

INSERT INTO `TMP_20180602144656_CPJ_ADS_sca_2_OUT` (`KEY`, scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT `U`.`KEY`, `U`.scaler_2, `U`.scaler_3, `U`.scaler_4, `U`.scaler_5, `U`.scaler_6, `U`.scaler_7, `U`.scaler_8, `U`.scaler_9, `U`.scaler_10, `U`.scaler_11 
FROM (SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.scaler_2, `ADS_sca_2_OUT`.scaler_3, `ADS_sca_2_OUT`.scaler_4, `ADS_sca_2_OUT`.scaler_5, `ADS_sca_2_OUT`.scaler_6, `ADS_sca_2_OUT`.scaler_7, `ADS_sca_2_OUT`.scaler_8, `ADS_sca_2_OUT`.scaler_9, `ADS_sca_2_OUT`.scaler_10, `ADS_sca_2_OUT`.scaler_11 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.16680947298137394) / 1.0289835997047314 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.16351271994443456) / 0.9915812535046814 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - 0.19149292241003152) / 0.9321147629147756 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.058384844753055345) / 1.0855729329506805 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - -0.09933205162122274) / 1.0743904412882828 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - 0.21293121660488037) / 0.9358074381886248 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - 0.047865568690029614) / 1.1363574090613386 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - 0.05078698959084227) / 0.9725457460098452 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - -0.1913199225908187) / 1.1415974677936562 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.19940405677473352) / 0.882245682091319 AS scaler_11 
FROM `TMP_20180602144656_VHD_ADS_imp_1_OUT` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`) AS `U`

-- Code For temporary table TMP_20180602144656_CPJ_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX `ix_TMP_20180602144656_CPJ_ADS_sca_2_OUT_KEY` ON `TMP_20180602144656_CPJ_ADS_sca_2_OUT` (`KEY`)

-- Model deployment code

WITH kernel_input AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.scaler_2 AS DOUBLE) AS scaler_2, CAST(`ADS_sca_2_OUT`.scaler_3 AS DOUBLE) AS scaler_3, CAST(`ADS_sca_2_OUT`.scaler_4 AS DOUBLE) AS scaler_4, CAST(`ADS_sca_2_OUT`.scaler_5 AS DOUBLE) AS scaler_5, CAST(`ADS_sca_2_OUT`.scaler_6 AS DOUBLE) AS scaler_6, CAST(`ADS_sca_2_OUT`.scaler_7 AS DOUBLE) AS scaler_7, CAST(`ADS_sca_2_OUT`.scaler_8 AS DOUBLE) AS scaler_8, CAST(`ADS_sca_2_OUT`.scaler_9 AS DOUBLE) AS scaler_9, CAST(`ADS_sca_2_OUT`.scaler_10 AS DOUBLE) AS scaler_10, CAST(`ADS_sca_2_OUT`.scaler_11 AS DOUBLE) AS scaler_11 
FROM `TMP_20180602144656_CPJ_ADS_sca_2_OUT` AS `ADS_sca_2_OUT`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, CAST(`Values`.dual_coeff AS DOUBLE) AS dual_coeff, CAST(`Values`.sv_0 AS DOUBLE) AS sv_0, CAST(`Values`.sv_1 AS DOUBLE) AS sv_1, CAST(`Values`.sv_2 AS DOUBLE) AS sv_2, CAST(`Values`.sv_3 AS DOUBLE) AS sv_3, CAST(`Values`.sv_4 AS DOUBLE) AS sv_4, CAST(`Values`.sv_5 AS DOUBLE) AS sv_5, CAST(`Values`.sv_6 AS DOUBLE) AS sv_6, CAST(`Values`.sv_7 AS DOUBLE) AS sv_7, CAST(`Values`.sv_8 AS DOUBLE) AS sv_8, CAST(`Values`.sv_9 AS DOUBLE) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, -1.8946065859541215 AS sv_0, 0.7295564613868584 AS sv_1, -0.06263085515616755 AS sv_2, 0.10936247309357386 AS sv_3, -1.246384586989803 AS sv_4, 0.36881875806614833 AS sv_5, 0.24844368632138902 AS sv_6, 0.9836203209109128 AS sv_7, -0.47644881521942245 AS sv_8, 0.37491669402628397 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.1 AS dual_coeff, 0.48156298526867447 AS sv_0, 0.01901092445345577 AS sv_1, -0.6596084304936646 AS sv_2, -1.2048609414944542 AS sv_3, -0.4181375097915614 AS sv_4, -1.4427356822982043 AS sv_5, -0.027486056832966083 AS sv_6, -0.08547432104106395 AS sv_7, 0.09713739508390715 AS sv_8, 0.49849833314153924 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.682864510743063 AS sv_0, 0.48995352363373956 AS sv_1, -0.6753306719635662 AS sv_2, -0.189486155032714 AS sv_3, -0.2835625302517897 AS sv_4, 1.7945366807980723 AS sv_5, 0.02506632554015826 AS sv_6, -0.9081185599708572 AS sv_7, 0.08044307863057724 AS sv_8, 0.6983624319857181 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, 0.2697611754365801 AS sv_0, -0.4490048255433816 AS sv_1, -2.068829771066232 AS sv_2, 1.3007714145540241 AS sv_3, -1.2755691642444629 AS sv_4, 0.2551711599154615 AS sv_5, -0.33921398537671993 AS sv_6, -0.14410363152727151 AS sv_7, -0.049905751043687725 AS sv_8, 0.4697527272574276 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.39293412568576674 AS sv_0, 0.14979279098563744 AS sv_1, -1.839627789435509 AS sv_2, 1.690555684856671 AS sv_3, 0.5075510874481638 AS sv_4, -1.425863862337372 AS sv_5, -0.3403724106530401 AS sv_6, -0.13029419871854905 AS sv_7, 0.03566273253945489 AS sv_8, 0.8137072739139833 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, -0.44547168786327174 AS sv_0, 1.235902031753094 AS sv_1, 1.6535576057239503 AS sv_2, 0.4548929735471705 AS sv_3, 0.5313263322770495 AS sv_4, 0.42801711232889267 AS sv_5, 0.15516367387302196 AS sv_6, -0.6443049831943541 AS sv_7, 0.20128519434766792 AS sv_8, -0.3546931920427553 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 2.2035589791749093 AS sv_0, 0.01612248193001029 AS sv_1, 0.1367873131636802 AS sv_2, -3.730447987257122 AS sv_3, -1.8880126096926744 AS sv_4, 1.9595565233998102 AS sv_5, -1.1807919775455515 AS sv_6, -2.1737611429577957 AS sv_7, -1.2806441207957213 AS sv_8, -0.20834159346965395 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, 0.45121620602693113 AS sv_0, 0.6927829112820847 AS sv_1, 0.21026593709769814 AS sv_2, -1.7410845982371301 AS sv_3, -2.5148760435119613 AS sv_4, 1.034835737300006 AS sv_5, -0.25373023727523497 AS sv_6, -1.2929198183473178 AS sv_7, -0.18501983392613078 AS sv_8, -2.9560855675389575 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 0.49877322829420395 AS sv_0, -0.7835870228285015 AS sv_1, 1.9365729631216244 AS sv_2, 1.7643886683161254 AS sv_3, 0.23213750788530227 AS sv_4, -0.7878853783191307 AS sv_5, -0.14002848577239804 AS sv_6, -0.04933178780372324 AS sv_7, 0.18600501061726604 AS sv_8, 0.15470184454539293 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, -0.48212018871001516 AS sv_0, -0.22539505776166552 AS sv_1, 0.7246618959659455 AS sv_2, -0.8349126721072422 AS sv_3, 0.8917255976445392 AS sv_4, 1.2498524929223416 AS sv_5, 0.06559231915237737 AS sv_6, -0.2252325698071774 AS sv_7, -1.1377213058461033 AS sv_8, -0.44991944441900134 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -1.5336712174642664 AS sv_0, 0.6918761122143567 AS sv_1, -0.2405985416559094 AS sv_2, -1.2245999981363067 AS sv_3, 1.0228097024986083 AS sv_4, 0.2621871895314313 AS sv_5, 0.5237275402039153 AS sv_6, -0.5619287253465259 AS sv_7, 0.8393183459123674 AS sv_8, -0.9757215224017777 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, -0.9329987564419168 AS sv_0, -0.2983326039436585 AS sv_1, 0.43254788820144385 AS sv_2, 0.3092647240065373 AS sv_3, 0.2632662085737163 AS sv_4, 1.082467850830824 AS sv_5, -0.24525609573439805 AS sv_6, -0.6805015562309291 AS sv_7, 0.13403740190107027 AS sv_8, 0.6108979939787691 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 0.1 AS dual_coeff, 0.8080418243884951 AS sv_0, 0.40277896630205867 AS sv_1, 1.5848483872143049 AS sv_2, 0.07545169189663384 AS sv_3, -0.23291185514685916 AS sv_4, 0.2367375801052967 AS sv_5, -0.14641984263394023 AS sv_6, 0.0356480979150275 AS sv_7, -1.8511424584889067 AS sv_8, 1.8977445906691717 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, 1.2844484871662494 AS sv_0, -1.2823910352518806 AS sv_1, -0.14631531479237733 AS sv_2, -0.4533988342683957 AS sv_3, -1.170840656578141 AS sv_4, -1.9284147280088961 AS sv_5, 0.3825160796407274 AS sv_6, -0.14909706065332395 AS sv_7, 0.1605008351277196 AS sv_8, -1.0362167216942462 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 0.2184693806162413 AS sv_0, 0.90273876993466 AS sv_1, -0.34356622170579343 AS sv_2, 0.4027247309048386 AS sv_3, 1.4591970671664045 AS sv_4, 0.04910085497154053 AS sv_5, -0.20243346113790775 AS sv_6, -0.11427189504944531 AS sv_7, -0.13674998553708606 AS sv_8, -1.678836397130642 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 1.935338564084159 AS sv_0, 0.4348241756158384 AS sv_1, 0.8157970085598074 AS sv_2, 1.7613478060887786 AS sv_3, 0.07565003385459268 AS sv_4, -1.5627204688837792 AS sv_5, 1.0637437347041272 AS sv_6, 0.5748809426953353 AS sv_7, 0.020088650364001277 AS sv_8, 0.45910030418381365 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, -0.5052473494120033 AS sv_0, 1.2639344918130762 AS sv_1, -2.4574662722704272 AS sv_2, -0.1831354782024557 AS sv_3, -1.2135498102245217 AS sv_4, 0.194110617239443 AS sv_5, -0.008278593069782592 AS sv_6, 0.9050339402369554 AS sv_7, 1.157617689964029 AS sv_8, 1.6786337165612546 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -2.029565760890454 AS sv_0, -0.49573441498307236 AS sv_1, -0.079653017563974 AS sv_2, -0.4757746477976455 AS sv_3, 1.0310372145566618 AS sv_4, -1.3393322940886465 AS sv_5, -0.3953045725808925 AS sv_6, 0.2527860003210711 AS sv_7, -0.9269650889596994 AS sv_8, 1.1227354265585692 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.9110739830088622 AS sv_0, -0.06235487707426319 AS sv_1, 0.5862948156468858 AS sv_2, -0.2515799006775241 AS sv_3, 0.24001263835718953 AS sv_4, -0.49333956244132915 AS sv_5, 0.24073781774388228 AS sv_6, 1.2336336494056315 AS sv_7, 0.10524619459152489 AS sv_8, -0.21672955143725528 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -1.7390315178894131 AS sv_0, 0.9771056176554836 AS sv_1, -1.2078095290763295 AS sv_2, 0.7431087904084137 AS sv_3, -0.8177905665989258 AS sv_4, 0.5068503316137839 AS sv_5, -0.1581718905456467 AS sv_6, -0.5519282603318068 AS sv_7, 0.37028000680404305 AS sv_8, 0.6036795297477495 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 1.3692908871099043 AS sv_0, 0.3082426645883509 AS sv_1, -0.369549983106112 AS sv_2, 0.491251818883714 AS sv_3, 0.71673052666001 AS sv_4, 0.48050773330587226 AS sv_5, 0.03378864714210537 AS sv_6, 0.7823485912627165 AS sv_7, 0.14492660001979332 AS sv_8, 0.5792422651059 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.33890431770012647 AS sv_0, -1.6827081862333182 AS sv_1, -1.8783339550688016 AS sv_2, -0.9872248194308109 AS sv_3, -0.9674872950377205 AS sv_4, -1.02964494320945 AS sv_5, -0.6793008151880745 AS sv_6, -0.6344669770630017 AS sv_7, 0.38897962813182946 AS sv_8, 0.12367703077837762 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, -0.11272019569782508 AS sv_0, 1.5197817796147324 AS sv_1, 1.0672007445263756 AS sv_2, -0.6642795191992296 AS sv_3, -0.268581886550541 AS sv_4, -0.10126734252976785 AS sv_5, 0.31128873526831147 AS sv_6, -0.23719971613561 AS sv_7, -0.44475396474172313 AS sv_8, 0.037007610123586665 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, -0.7493847601719262 AS sv_0, -0.31935395402743993 AS sv_1, -1.0146556295868745 AS sv_2, 0.345630131791216 AS sv_3, 1.2180427511082064 AS sv_4, -2.10091388465659 AS sv_5, 0.411617882005597 AS sv_6, 0.06391720896365843 AS sv_7, 0.286528426467517 AS sv_8, -1.0880070380116635 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.42177758794895065 AS sv_0, 0.9754930930709454 AS sv_1, 1.618251864395043 AS sv_2, -0.1336813695727553 AS sv_3, -0.926790985248289 AS sv_4, 0.30829467884557626 AS sv_5, -1.5563234269254405 AS sv_6, -0.8900281139453707 AS sv_7, 0.5995908076914787 AS sv_8, 0.19178772103019662 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, 1.5276547702692265 AS sv_0, 0.4075216652400821 AS sv_1, -1.3583594477918808 AS sv_2, 0.4448772525337184 AS sv_3, -0.6562966564230347 AS sv_4, -0.6869980508117421 AS sv_5, -0.4803674248435924 AS sv_6, 0.36214311251477693 AS sv_7, -0.7194977365024273 AS sv_8, 0.48896258517287516 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 0.7244417490436866 AS sv_0, 0.7102393556630693 AS sv_1, 0.8849019951974334 AS sv_2, -0.12928860964478442 AS sv_3, 1.7775050679921218 AS sv_4, -1.7466279803498763 AS sv_5, -0.9022312777841832 AS sv_6, 0.8097251772260402 AS sv_7, 1.7049817939162109 AS sv_8, 0.4952147780105905 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, 0.19106956948475337 AS sv_0, 3.2615917244742128 AS sv_1, -0.5417415529669369 AS sv_2, -0.06857744456710373 AS sv_3, 0.6650282835465393 AS sv_4, -0.89732037206021 AS sv_5, -0.2370699799058338 AS sv_6, 0.2891434016615764 AS sv_7, -0.8692926604382335 AS sv_8, -2.499676845938167 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 0.8488374861266474 AS sv_0, -1.276911228095106 AS sv_1, 0.6463222288324869 AS sv_2, 1.2344327468456537 AS sv_3, 1.4845318072055462 AS sv_4, -0.6207509106883249 AS sv_5, 0.3109435814870959 AS sv_6, 1.9064499836842108 AS sv_7, 0.18959664247399724 AS sv_8, -1.7158385258020774 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.9925681902970069 AS sv_0, 0.811928022141507 AS sv_1, -0.4849096992993376 AS sv_2, -0.2823986566766817 AS sv_3, 0.17023014660976457 AS sv_4, 1.4645015676871775 AS sv_5, 0.6279113406369113 AS sv_6, 0.9890176011754906 AS sv_7, 0.74993126070507 AS sv_8, 1.2142172144694727 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, 0.2199997851874381 AS sv_0, 0.0008833748301826923 AS sv_1, 2.4444854344400393 AS sv_2, 0.6489839413890875 AS sv_3, 0.667834392074085 AS sv_4, -0.6132206134884751 AS sv_5, -0.4677862855561717 AS sv_6, -0.7043164657524464 AS sv_7, 0.03438583189132576 AS sv_8, 1.7793908420266655 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -1.4587613799390977 AS sv_0, -0.34961236666878454 AS sv_1, -0.6615523280647982 AS sv_2, 0.6984141548242172 AS sv_3, -0.6960033132995534 AS sv_4, -1.243586688534552 AS sv_5, 0.34560960969357785 AS sv_6, 0.13673421558077894 AS sv_7, 1.3692900218481296 AS sv_8, -0.4865447825832154 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -1.9390369628996735 AS sv_0, 0.0002512735836344932 AS sv_1, -1.253921223817939 AS sv_2, -0.6887136729723051 AS sv_3, -0.36955845443487284 AS sv_4, 0.9022700163914414 AS sv_5, -1.4306221741297926 AS sv_6, 0.4962991500714161 AS sv_7, 1.7074435369572298 AS sv_8, 2.248293584582692 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, -0.5246257556158707 AS sv_0, -0.7957491382668226 AS sv_1, -0.34966058610810347 AS sv_2, -0.7910556460851272 AS sv_3, 0.06345466740872843 AS sv_4, 0.6241582100609643 AS sv_5, 0.6832948369612996 AS sv_6, -1.1620548949909832 AS sv_7, 1.3198596599391819 AS sv_8, -0.4128638028458789 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, -1.0298643215084546 AS sv_0, -0.48874273787808153 AS sv_1, -1.1443584867491154 AS sv_2, 1.0884858384929614 AS sv_3, -0.8751155207563746 AS sv_4, 0.8946996982274239 AS sv_5, 2.26856746424297 AS sv_6, 0.3105110297985413 AS sv_7, -0.6282429396474761 AS sv_8, 0.8098342823715869 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 0.10988841613486348 AS sv_0, 0.84864921478315 AS sv_1, 1.368423715903943 AS sv_2, -0.19725887705914136 AS sv_3, -0.6952232421067527 AS sv_4, -0.9022695092157306 AS sv_5, 1.982582883361999 AS sv_6, -0.8133889287720607 AS sv_7, 1.0174000517090092 AS sv_8, 0.4662272666619447 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, 1.3185110526263706 AS sv_0, 0.9094450899090752 AS sv_1, -1.7858527649151772 AS sv_2, -0.47834443988118 AS sv_3, -0.09882397249755238 AS sv_4, 0.9735922979679523 AS sv_5, -0.16263173952531307 AS sv_6, 1.4204043923109697 AS sv_7, 1.8103512698489652 AS sv_8, -0.23937756952011832 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, 0.9697003372461587 AS sv_0, -1.0930266530942698 AS sv_1, 0.29763185756784677 AS sv_2, -0.4586025772945359 AS sv_3, -1.1762857014255539 AS sv_4, 0.33034639430497553 AS sv_5, 0.7917688894862281 AS sv_6, 1.1445628408447885 AS sv_7, -0.6222893588814495 AS sv_8, 0.4879679006917281 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.7461420694271036 AS sv_0, -1.751409551741113 AS sv_1, -0.01303945156553798 AS sv_2, 0.11902040816285027 AS sv_3, -0.4090050747839768 AS sv_4, 1.1479021291209732 AS sv_5, -2.3006598219812444 AS sv_6, 0.5886114845396557 AS sv_7, -0.05048012218277837 AS sv_8, -0.39026804175953095 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -0.1 AS dual_coeff, -1.236068358467277 AS sv_0, -0.462357334927412 AS sv_1, 0.5003649841783561 AS sv_2, 0.12798408192377392 AS sv_3, -2.374465239282156 AS sv_4, -1.0026923974154467 AS sv_5, 0.01010369956701393 AS sv_6, -0.8873592425537252 AS sv_7, 0.1578695400284867 AS sv_8, -1.122209677169762 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, -0.3188455607344977 AS sv_0, -1.525743086183012 AS sv_1, -0.3956728253267135 AS sv_2, -0.18462445186022164 AS sv_3, -0.8912436705968825 AS sv_4, -0.1864567888758982 AS sv_5, 0.6788418147797204 AS sv_6, -1.8640990005897746 AS sv_7, -0.21249498218094015 AS sv_8, 0.9408106672266372 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, -0.1651015449598925 AS sv_0, -0.452362102488713 AS sv_1, 0.38301291099193346 AS sv_2, 0.6421162751346802 AS sv_3, -1.833596125587433 AS sv_4, 0.5730324135070591 AS sv_5, 0.040787432476984666 AS sv_6, -0.9056729790169366 AS sv_7, 1.1617314785305253 AS sv_8, -1.4937934918714986 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.3099292725467472 AS sv_0, -0.0011689871221093873 AS sv_1, 0.33532876681438073 AS sv_2, 0.5732041741400951 AS sv_3, 1.0619146242897295 AS sv_4, -0.7685544922802201 AS sv_5, -0.7563735870996438 AS sv_6, 1.1639583630294696 AS sv_7, 1.320636251783545 AS sv_8, 0.4050625392734363 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, 0.9575680702482104 AS sv_0, 1.7980848306797708 AS sv_1, -0.3095072159708213 AS sv_2, -0.401334589651027 AS sv_3, -0.18391222999768128 AS sv_4, 0.4853895781411927 AS sv_5, -0.990253925477097 AS sv_6, 0.09463456947013928 AS sv_7, -1.494334945903461 AS sv_8, 0.726070088855913 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, -1.1820712312057244 AS sv_0, -2.219933741468195 AS sv_1, 0.8008893301411906 AS sv_2, -1.9330793760863076 AS sv_3, -0.15747386485106943 AS sv_4, 1.6132302374264693 AS sv_5, -0.11280888022694743 AS sv_6, 0.6379213852042154 AS sv_7, 0.02417649899476313 AS sv_8, 0.23950927283181553 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, -0.8576892587084674 AS sv_0, -0.5943040763269904 AS sv_1, -0.9619891141611235 AS sv_2, -1.074688165264292 AS sv_3, 1.0144178255550846 AS sv_4, 1.8212345334096511 AS sv_5, 0.9498082044565003 AS sv_6, -2.0140590827773495 AS sv_7, 0.12351384170041484 AS sv_8, -0.5768842287999798 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 0.4787242004458327 AS sv_0, -0.9620211095056173 AS sv_1, -0.17421894106808392 AS sv_2, 0.8636483559574344 AS sv_3, 1.0701060954689445 AS sv_4, 0.8345972182127014 AS sv_5, -2.4924283016522217 AS sv_6, -0.8989099713294649 AS sv_7, -2.1052777396883364 AS sv_8, 1.3375343404365319 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.1 AS dual_coeff, 0.49656853461540396 AS sv_0, 0.09271245119372402 AS sv_1, 0.1502517068777876 AS sv_2, 0.7423861784779975 AS sv_3, 0.08052653161298018 AS sv_4, -0.23398600746610115 AS sv_5, 1.317374527554107 AS sv_6, 1.7581595225278215 AS sv_7, 0.5008538036709074 AS sv_8, -0.8580146028199153 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.22467945232396108 AS sv_0, 0.999043785077239 AS sv_1, 0.11108983993162179 AS sv_2, 1.0677311584675313 AS sv_3, -0.7621616518303761 AS sv_4, -0.009030578502803855 AS sv_5, 1.640146634430812 AS sv_6, -2.3140616112365793 AS sv_7, 0.35028228959571206 AS sv_8, 0.2817866631666624 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 0.5546711360831659 AS sv_0, -1.0347694314840132 AS sv_1, -0.7711457739986982 AS sv_2, -1.0994454559735634 AS sv_3, -0.42699546065870386 AS sv_4, -0.9834043119468336 AS sv_5, -0.2300329480183366 AS sv_6, -0.046490652106054846 AS sv_7, -1.3577642436360429 AS sv_8, -0.7757538499750842 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.1 AS dual_coeff, -1.3239955003219972 AS sv_0, -0.38357993111632643 AS sv_1, 1.288849906819348 AS sv_2, 0.22004439251770863 AS sv_3, 0.0002710304451144837 AS sv_4, 1.694003119375268 AS sv_5, -0.3046147541805158 AS sv_6, -0.7987270318272205 AS sv_7, 0.0905197659735593 AS sv_8, 1.4454089161099974 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 0.5847545429818218 AS sv_0, -0.9397587710725342 AS sv_1, 0.24595197352055104 AS sv_2, -1.084053703624585 AS sv_3, 0.9693594119795907 AS sv_4, -1.9976775338194026 AS sv_5, -1.0235204115865892 AS sv_6, 1.0791370432770195 AS sv_7, -1.3367826484787766 AS sv_8, -0.33477727114493105 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 0.1 AS dual_coeff, 1.7117026937169204 AS sv_0, -0.3635854917618158 AS sv_1, 2.0430560723159465 AS sv_2, 1.2405047716574131 AS sv_3, 0.5938395464927543 AS sv_4, 0.7479055504564399 AS sv_5, -0.7335588357297746 AS sv_6, -1.2060428023919187 AS sv_7, 2.7863729198547196 AS sv_8, -2.196746514670861 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 0.1 AS dual_coeff, 1.6073565979523265 AS sv_0, 1.0157469316301286 AS sv_1, 0.44151305472526003 AS sv_2, 0.9209755863571708 AS sv_3, -0.8081293153407708 AS sv_4, 0.02547662212172918 AS sv_5, 0.8995608502648103 AS sv_6, -1.5211302812910872 AS sv_7, 1.6006459801280781 AS sv_8, -0.4085584870115411 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 0.1 AS dual_coeff, -1.1774816893031017 AS sv_0, 1.2937797424233286 AS sv_1, -0.7730322855841777 AS sv_2, -1.0751399739314846 AS sv_3, 1.2473740306627124 AS sv_4, 0.8134026066586144 AS sv_5, 0.5635554538736672 AS sv_6, -1.3747164798800862 AS sv_7, 0.06238715822054158 AS sv_8, -1.3168743063044366 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -0.1 AS dual_coeff, -1.3534109706317643 AS sv_0, -0.23348345260579006 AS sv_1, -1.0161656555091672 AS sv_2, 1.6989984464007217 AS sv_3, 0.3449760319678672 AS sv_4, 0.42102030183118366 AS sv_5, -1.0337201192626606 AS sv_6, -1.4468577042918944 AS sv_7, -1.0150653713490854 AS sv_8, 0.6657457682446057 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -0.1 AS dual_coeff, -0.9522287275943353 AS sv_0, -0.6089209094706058 AS sv_1, 0.4912496427030447 AS sv_2, -0.4512758663532366 AS sv_3, -0.7184593223709619 AS sv_4, -1.2954552424698746 AS sv_5, -0.32710238940044223 AS sv_6, 1.236339944234982 AS sv_7, 0.5836824731809765 AS sv_8, 0.22012696650219857 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -0.1 AS dual_coeff, 0.2688694630064186 AS sv_0, -0.8063142098577751 AS sv_1, -0.16575853265495538 AS sv_2, 1.3698224959662701 AS sv_3, 1.5395581011130948 AS sv_4, -0.5120254434003136 AS sv_5, 0.4521341527989669 AS sv_6, 0.3929317411503545 AS sv_7, -1.2955285574239503 AS sv_8, -0.08929858878220348 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -0.1 AS dual_coeff, 0.4401676817595216 AS sv_0, 0.30125472734533865 AS sv_1, 0.04041073995735689 AS sv_2, 0.12141948091971905 AS sv_3, -0.6436894076231423 AS sv_4, 0.5776000071197956 AS sv_5, 1.0451948709403518 AS sv_6, 0.2610381914446733 AS sv_7, -1.617715438982375 AS sv_8, 0.4252626430650974 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 0.1 AS dual_coeff, 0.1774628884804514 AS sv_0, -1.0302059883050136 AS sv_1, 0.21600978890510436 AS sv_2, 0.9919831835205855 AS sv_3, -0.35305930340358876 AS sv_4, 0.9456554261693497 AS sv_5, 0.4526885446153252 AS sv_6, 0.6300498434140098 AS sv_7, -1.3667737226298737 AS sv_8, 0.8584190503416232 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 0.1 AS dual_coeff, -1.055928326735167 AS sv_0, -0.7973510782925367 AS sv_1, 0.404603591503204 AS sv_2, 1.25601013721405 AS sv_3, 0.7044328691290371 AS sv_4, 0.11389302229055125 AS sv_5, 1.1292410298786804 AS sv_6, -0.40407267750720927 AS sv_7, -0.2714541644079437 AS sv_8, -0.49725437940228545 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, 0.07691126791379829 AS sv_0, -1.6792653155013806 AS sv_1, -1.5396254586629692 AS sv_2, 0.07674780545321072 AS sv_3, 1.9451621584646028 AS sv_4, -1.642053503840161 AS sv_5, -2.3164001627967017 AS sv_6, -0.028687487447806137 AS sv_7, 0.5940939508353231 AS sv_8, 0.9622541046477675 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 0.1 AS dual_coeff, -1.4407625270209472 AS sv_0, -0.09164299949446876 AS sv_1, 0.18717650509557807 AS sv_2, 1.6321874183913576 AS sv_3, 0.6908999833002666 AS sv_4, 0.4788915043871517 AS sv_5, 0.011819747748235607 AS sv_6, 0.6430478152822474 AS sv_7, 1.4784340573521688 AS sv_8, 0.6041289408228382 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -0.1 AS dual_coeff, 0.18983048103736264 AS sv_0, -0.246875398197096 AS sv_1, 0.8893811184873143 AS sv_2, -0.44004927634986835 AS sv_3, 0.6016547519248223 AS sv_4, 0.3092458987864741 AS sv_5, -1.1631320103380758 AS sv_6, 0.8094270919561265 AS sv_7, -1.520878104165293 AS sv_8, 0.19469585674678758 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 0.1 AS dual_coeff, 2.5694877507556573 AS sv_0, 0.4149660816256841 AS sv_1, 0.4567585368947843 AS sv_2, -0.27014166639901066 AS sv_3, 1.9503893769558978 AS sv_4, 0.3631879149550631 AS sv_5, 0.7228761835212618 AS sv_6, 2.6364126309527713 AS sv_7, 0.1106151269992339 AS sv_8, 0.3419067093880125 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 0.1 AS dual_coeff, 0.3824653983801872 AS sv_0, 1.633643493539936 AS sv_1, 1.4648697009678788 AS sv_2, -1.1772141244372516 AS sv_3, 1.1979091898914433 AS sv_4, 0.15463715296475683 AS sv_5, -0.11621631901867421 AS sv_6, -1.3582180244805635 AS sv_7, 0.05316447447661942 AS sv_8, 1.3907803566716266 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -0.1 AS dual_coeff, -0.6506196645071746 AS sv_0, 0.3096943924259181 AS sv_1, -1.141763231255856 AS sv_2, -0.3671077062588396 AS sv_3, 0.782114014947217 AS sv_4, -0.24793942520980317 AS sv_5, -1.015222977491259 AS sv_6, -0.3018994835027699 AS sv_7, -0.3562144026886143 AS sv_8, -0.6582143355445299 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -0.1 AS dual_coeff, -0.6774944457081212 AS sv_0, -0.20359067425064875 AS sv_1, -1.2370356721259264 AS sv_2, -1.7239437942421747 AS sv_3, -0.40663462752757373 AS sv_4, -1.0931414711777963 AS sv_5, -0.44650499202424304 AS sv_6, -0.5975185687898396 AS sv_7, -0.9518893661528354 AS sv_8, 1.4019776727928481 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, -1.2488899791580803 AS sv_0, 1.0366405639594345 AS sv_1, 0.2856683538856065 AS sv_2, -1.7302819504479852 AS sv_3, 0.40004614670141464 AS sv_4, 0.10832155379615818 AS sv_5, -0.4862880394348233 AS sv_6, -0.069549523481364 AS sv_7, -1.1627106862211642 AS sv_8, -1.4111861407471773 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 0.1 AS dual_coeff, 0.831681931313952 AS sv_0, 0.27682690077990807 AS sv_1, -0.002815168306877287 AS sv_2, 0.8837246425890761 AS sv_3, -0.6124178041593997 AS sv_4, 1.1118279513960854 AS sv_5, 1.6631600565064986 AS sv_6, 1.4530555458284353 AS sv_7, 1.8327690610187775 AS sv_8, -1.7717767592104228 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, -0.9493767950637803 AS sv_0, 2.3179595191934133 AS sv_1, 1.1546497729341056 AS sv_2, 0.4950088516309006 AS sv_3, 0.3717945873788518 AS sv_4, 0.33060377587954826 AS sv_5, -2.0768036834951404 AS sv_6, 0.8500024260989983 AS sv_7, -0.16462750293066986 AS sv_8, 0.11837085054234289 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 0.1 AS dual_coeff, -0.05797075971926178 AS sv_0, 0.3797984351165208 AS sv_1, 0.48477538147543003 AS sv_2, 0.15703226026085773 AS sv_3, 0.4023142786378172 AS sv_4, 0.5588844552505101 AS sv_5, 0.18801803682684404 AS sv_6, 1.068682450395403 AS sv_7, 0.572619108157167 AS sv_8, -0.43503964434897463 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -0.1 AS dual_coeff, 0.945014547167269 AS sv_0, 0.4629686541775312 AS sv_1, 0.0236306067105391 AS sv_2, 0.1453472225784261 AS sv_3, 1.2671846890314977 AS sv_4, -0.7285484455378758 AS sv_5, -2.589858887888251 AS sv_6, -1.0740122128454666 AS sv_7, -0.1033670710118521 AS sv_8, -0.27918928447598307 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -0.1 AS dual_coeff, -0.6612126959196323 AS sv_0, -0.6422616231917786 AS sv_1, 0.0024566813198814413 AS sv_2, 0.9563155790221323 AS sv_3, -0.2059313160824677 AS sv_4, 0.0036695317683986435 AS sv_5, 1.2506333807158803 AS sv_6, -0.2587529016207301 AS sv_7, -1.6010520668757786 AS sv_8, -0.9152061626566956 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -0.1 AS dual_coeff, 0.5205629036384851 AS sv_0, 1.2336761488074413 AS sv_1, -1.1952263533980352 AS sv_2, -0.982342155705656 AS sv_3, -0.242553744139015 AS sv_4, -2.114089793009969 AS sv_5, 0.9909196767669729 AS sv_6, 0.6589066446938882 AS sv_7, 0.6374469773486616 AS sv_8, 0.1835081189588227 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -0.1 AS dual_coeff, 0.8904889358875075 AS sv_0, -0.8285675486179637 AS sv_1, -0.7877622450436069 AS sv_2, 0.9031153926928042 AS sv_3, -1.132084889118538 AS sv_4, 0.549094689121613 AS sv_5, 0.6814894934723551 AS sv_6, -0.466661061595243 AS sv_7, 0.7956420926735931 AS sv_8, -1.0222863711223251 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, -0.4314117183868256 AS sv_0, -1.1787786990650588 AS sv_1, 0.6977499576529038 AS sv_2, -1.3552553185778635 AS sv_3, 1.894590153032949 AS sv_4, 1.0647793401064134 AS sv_5, -0.026655602481820476 AS sv_6, 1.8651531507343553 AS sv_7, 1.3796475152851155 AS sv_8, 0.408593346727794 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, 0.23085239279949565 AS sv_0, -1.4926919331597743 AS sv_1, 1.4818576740731857 AS sv_2, -0.9457632956502574 AS sv_3, -1.4923925347846743 AS sv_4, 0.8929298435093171 AS sv_5, 1.994258922697419 AS sv_6, 1.1113429050727168 AS sv_7, -0.9210826020850861 AS sv_8, -0.5454180359849039 AS sv_9 UNION ALL SELECT 78 AS sv_idx, -0.1 AS dual_coeff, -0.12477718155662479 AS sv_0, -1.7719552525833226 AS sv_1, 0.5064149987717698 AS sv_2, -0.27427372360210606 AS sv_3, -1.1175666479112436 AS sv_4, -0.7977736412239658 AS sv_5, 1.3565659125713745 AS sv_6, 0.7130944168578508 AS sv_7, -1.6572459062331752 AS sv_8, 0.18722365454824377 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -0.1 AS dual_coeff, -0.004321288878417237 AS sv_0, 0.5785996246066984 AS sv_1, -0.38743325592499506 AS sv_2, 0.9694482981402766 AS sv_3, -0.585331870990316 AS sv_4, -0.6053085154783696 AS sv_5, 1.3844337086718668 AS sv_6, -0.35854443454233426 AS sv_7, -1.0365787680361593 AS sv_8, -0.22612774685843456 AS sv_9) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 6.029403180542097 AS dot_product 
FROM (SELECT kernel_input.`KEY` AS `KEY`, `SV_data`.dual_coeff * exp(least(greatest(-100.0, -0.1 * (power(kernel_input.scaler_2 - `SV_data`.sv_0, 2) + power(kernel_input.scaler_3 - `SV_data`.sv_1, 2) + power(kernel_input.scaler_4 - `SV_data`.sv_2, 2) + power(kernel_input.scaler_5 - `SV_data`.sv_3, 2) + power(kernel_input.scaler_6 - `SV_data`.sv_4, 2) + power(kernel_input.scaler_7 - `SV_data`.sv_5, 2) + power(kernel_input.scaler_8 - `SV_data`.sv_6, 2) + power(kernel_input.scaler_9 - `SV_data`.sv_7, 2) + power(kernel_input.scaler_10 - `SV_data`.sv_8, 2) + power(kernel_input.scaler_11 - `SV_data`.sv_9, 2))), 100.0)) AS dot_prod1 
FROM kernel_input, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, kernel_dp.dot_product AS `Estimator` 
FROM kernel_dp