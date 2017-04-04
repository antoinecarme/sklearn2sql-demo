-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.516910132652 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.488304160039 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.480103727805 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.468495895729 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.497959120602 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.481360322133 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.485591231104 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.43365326188 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.441954753747 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.491715443425 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.516910132652 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.488304160039 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.480103727805 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.468495895729 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.497959120602 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.481360322133 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.485591231104 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.43365326188 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.441954753747 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.491715443425 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.1187129075 + `CenteredDataForPCA`.impute_3 * -0.587623712749 + `CenteredDataForPCA`.impute_4 * -0.101045293975 + `CenteredDataForPCA`.impute_5 * 0.412075766428 + `CenteredDataForPCA`.impute_6 * 0.597056935682 + `CenteredDataForPCA`.impute_7 * -0.019008141838 + `CenteredDataForPCA`.impute_8 * 0.215474549131 + `CenteredDataForPCA`.impute_9 * -0.233574638506 + `CenteredDataForPCA`.impute_10 * -0.0515473825984 + `CenteredDataForPCA`.impute_11 * -0.0103542003015 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.0328811738858 + `CenteredDataForPCA`.impute_3 * 0.00536324970464 + `CenteredDataForPCA`.impute_4 * -0.178550090585 + `CenteredDataForPCA`.impute_5 * -0.194184569987 + `CenteredDataForPCA`.impute_6 * 0.274956523616 + `CenteredDataForPCA`.impute_7 * 0.476888932395 + `CenteredDataForPCA`.impute_8 * 0.135717167496 + `CenteredDataForPCA`.impute_9 * 0.488180292296 + `CenteredDataForPCA`.impute_10 * 0.143578422195 + `CenteredDataForPCA`.impute_11 * -0.590698084903 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.482533855214 + `CenteredDataForPCA`.impute_3 * 0.0192238525771 + `CenteredDataForPCA`.impute_4 * 0.0301722700415 + `CenteredDataForPCA`.impute_5 * -0.286236707646 + `CenteredDataForPCA`.impute_6 * 0.102810664372 + `CenteredDataForPCA`.impute_7 * -0.565337518483 + `CenteredDataForPCA`.impute_8 * -0.1081145576 + `CenteredDataForPCA`.impute_9 * -0.171779067199 + `CenteredDataForPCA`.impute_10 * 0.356939964961 + `CenteredDataForPCA`.impute_11 * -0.430314090854 AS anoova_4, `CenteredDataForPCA`.impute_2 * -0.570038931291 + `CenteredDataForPCA`.impute_3 * 0.195529202892 + `CenteredDataForPCA`.impute_4 * -0.374537924359 + `CenteredDataForPCA`.impute_5 * -0.0511982758446 + `CenteredDataForPCA`.impute_6 * 0.279686711433 + `CenteredDataForPCA`.impute_7 * 0.150732389089 + `CenteredDataForPCA`.impute_8 * -0.371276872703 + `CenteredDataForPCA`.impute_9 * 0.234443885378 + `CenteredDataForPCA`.impute_10 * -0.108819905784 + `CenteredDataForPCA`.impute_11 * 0.433966466716 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.102208750858 + `CenteredDataForPCA`.impute_3 * -0.263397442541 + `CenteredDataForPCA`.impute_4 * -0.570452811382 + `CenteredDataForPCA`.impute_5 * -0.467291905229 + `CenteredDataForPCA`.impute_6 * -0.175414265037 + `CenteredDataForPCA`.impute_7 * -0.00548524963964 + `CenteredDataForPCA`.impute_8 * 0.395933047078 + `CenteredDataForPCA`.impute_9 * -0.126475573241 + `CenteredDataForPCA`.impute_10 * 0.288092729417 + `CenteredDataForPCA`.impute_11 * 0.299733719033 AS anoova_6, `CenteredDataForPCA`.impute_2 * 0.0502418898708 + `CenteredDataForPCA`.impute_3 * 0.2340854948 + `CenteredDataForPCA`.impute_4 * -0.498884270681 + `CenteredDataForPCA`.impute_5 * 0.675323496251 + `CenteredDataForPCA`.impute_6 * -0.246321121099 + `CenteredDataForPCA`.impute_7 * -0.195756586007 + `CenteredDataForPCA`.impute_8 * 0.0304569551659 + `CenteredDataForPCA`.impute_9 * 0.14402089369 + `CenteredDataForPCA`.impute_10 * 0.313648364799 + `CenteredDataForPCA`.impute_11 * -0.136721312023 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.010462619119 + `CenteredDataForPCA`.impute_3 * 0.634345098437 + `CenteredDataForPCA`.impute_4 * -0.0813382807101 + `CenteredDataForPCA`.impute_5 * -0.0419912386868 + `CenteredDataForPCA`.impute_6 * 0.321597429177 + `CenteredDataForPCA`.impute_7 * -0.130089294574 + `CenteredDataForPCA`.impute_8 * 0.576608959182 + `CenteredDataForPCA`.impute_9 * -0.195073009068 + `CenteredDataForPCA`.impute_10 * -0.312991019345 + `CenteredDataForPCA`.impute_11 * -0.0165761808904 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.248347266723 + `CenteredDataForPCA`.impute_3 * 0.17781246475 + `CenteredDataForPCA`.impute_4 * 0.336365782001 + `CenteredDataForPCA`.impute_5 * 0.015670026539 + `CenteredDataForPCA`.impute_6 * 0.404306952287 + `CenteredDataForPCA`.impute_7 * -0.0930549291115 + `CenteredDataForPCA`.impute_8 * 0.0513114812712 + `CenteredDataForPCA`.impute_9 * 0.238073119511 + `CenteredDataForPCA`.impute_10 * 0.642347042894 + `CenteredDataForPCA`.impute_11 * 0.386360117118 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.420535019924 + `CenteredDataForPCA`.impute_3 * -0.132431322995 + `CenteredDataForPCA`.impute_4 * -0.213630213807 + `CenteredDataForPCA`.impute_5 * -0.151265391551 + `CenteredDataForPCA`.impute_6 * 0.208401947173 + `CenteredDataForPCA`.impute_7 * -0.580413767199 + `CenteredDataForPCA`.impute_8 * -0.187284951142 + `CenteredDataForPCA`.impute_9 * 0.433303644951 + `CenteredDataForPCA`.impute_10 * -0.365888100409 + `CenteredDataForPCA`.impute_11 * -0.00893523156301 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.41885123715 + `CenteredDataForPCA`.impute_3 * -0.200860943493 + `CenteredDataForPCA`.impute_4 * 0.277530254292 + `CenteredDataForPCA`.impute_5 * 0.0928418947854 + `CenteredDataForPCA`.impute_6 * -0.278141308744 + `CenteredDataForPCA`.impute_7 * -0.170515569084 + `CenteredDataForPCA`.impute_8 * 0.507680291744 + `CenteredDataForPCA`.impute_9 * 0.550843426817 + `CenteredDataForPCA`.impute_10 * -0.107982740914 + `CenteredDataForPCA`.impute_11 * 0.138959290024 AS anoova_11 
FROM `CenteredDataForPCA`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 13.5209412887 AS dual_coeff, 0.336717592762 AS sv_0, 0.548258714937 AS sv_1, 0.175481161222 AS sv_2, -0.162552411269 AS sv_3, -0.222652347561 AS sv_4, 0.201519909991 AS sv_5, 0.0949431422545 AS sv_6, 0.255767065529 AS sv_7, -0.4160393901 AS sv_8, 0.0510296071165 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 17.1809902731 AS dual_coeff, 0.0219206173728 AS sv_0, 0.638739767805 AS sv_1, -0.0422991373699 AS sv_2, 0.143438656908 AS sv_3, -0.0071047558006 AS sv_4, -0.122205722092 AS sv_5, 0.334288493222 AS sv_6, -0.254148608185 AS sv_7, 0.405387233918 AS sv_8, 0.00914402833946 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 13.725627002 AS dual_coeff, -0.508823120007 AS sv_0, 0.0261779657102 AS sv_1, 0.169284594223 AS sv_2, -0.0829969638252 AS sv_3, -0.250805303313 AS sv_4, 0.529612587129 AS sv_5, -0.0729953770959 AS sv_6, 0.237472016392 AS sv_7, -0.313900269423 AS sv_8, 0.159803278237 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 8.25928445293 AS dual_coeff, -0.485549790429 AS sv_0, -0.0325586302401 AS sv_1, -0.641105749217 AS sv_2, -0.155842954423 AS sv_3, 0.206668858759 AS sv_4, 0.0440862889964 AS sv_5, 0.185354100857 AS sv_6, 0.424633611242 AS sv_7, -0.163217509065 AS sv_8, 0.191335406974 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 14.9772887609 AS dual_coeff, -0.12666414666 AS sv_0, -0.582102462423 AS sv_1, -0.012088682464 AS sv_2, 0.40648517515 AS sv_3, -0.282306433224 AS sv_4, 0.0926685130787 AS sv_5, 0.26510451928 AS sv_6, 0.084371806635 AS sv_7, 0.328546729001 AS sv_8, -0.401754709928 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 14.0009919819 AS dual_coeff, 0.192849526103 AS sv_0, 0.528058219686 AS sv_1, 0.240005137101 AS sv_2, -0.0088067586935 AS sv_3, -0.192924711466 AS sv_4, -0.445509171634 AS sv_5, -0.276883297608 AS sv_6, 0.0159373252615 AS sv_7, -0.323533840676 AS sv_8, 0.0318810890948 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 8.85042508317 AS dual_coeff, -0.347275199834 AS sv_0, 0.110189910482 AS sv_1, 0.353401115111 AS sv_2, 0.568812420488 AS sv_3, -0.160368780466 AS sv_4, 0.00292875414245 AS sv_5, -0.00125992733623 AS sv_6, -0.0913450755307 AS sv_7, -0.0834737633437 AS sv_8, -0.0833171435799 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 12.2167616748 AS dual_coeff, -0.651560993739 AS sv_0, -0.564774387549 AS sv_1, -0.196626603772 AS sv_2, -0.361413464534 AS sv_3, 0.0339426332121 AS sv_4, -0.220442168979 AS sv_5, 0.228885873593 AS sv_6, 0.207108143954 AS sv_7, 0.311454706372 AS sv_8, 0.239899801977 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 13.7000135299 AS dual_coeff, -0.301125004145 AS sv_0, -0.554982667826 AS sv_1, -0.126529824364 AS sv_2, 0.222387488235 AS sv_3, -0.415055374675 AS sv_4, 0.308209085966 AS sv_5, 0.140451941581 AS sv_6, -0.342209138744 AS sv_7, -0.0561964693117 AS sv_8, 0.147333333089 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 16.8503805246 AS dual_coeff, 0.116556502887 AS sv_0, 0.373709967318 AS sv_1, -0.393010462383 AS sv_2, -0.185280732701 AS sv_3, 0.459545198648 AS sv_4, -0.240283034707 AS sv_5, 0.465072110832 AS sv_6, -0.167114859458 AS sv_7, 0.0391426880904 AS sv_8, -0.37667331985 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 17.6979556096 AS dual_coeff, -0.44066764265 AS sv_0, -0.266258147343 AS sv_1, 0.175490867938 AS sv_2, -0.0877646348296 AS sv_3, -0.141507548238 AS sv_4, -0.541781578625 AS sv_5, 0.0234938425532 AS sv_6, -0.159359392736 AS sv_7, -0.179269446787 AS sv_8, 0.131126662152 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 16.9387991607 AS dual_coeff, -0.252587584304 AS sv_0, -0.0720221448654 AS sv_1, 0.108744481676 AS sv_2, -0.064959960276 AS sv_3, 0.289393638809 AS sv_4, -0.392821426424 AS sv_5, 0.351787213485 AS sv_6, 0.621060980148 AS sv_7, -0.368809578205 AS sv_8, 0.0317717919515 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 16.0903003682 AS dual_coeff, -0.528174045943 AS sv_0, 0.45100643296 AS sv_1, -0.00853064613118 AS sv_2, -0.391094348172 AS sv_3, -0.134189635908 AS sv_4, -0.119430262971 AS sv_5, -0.238158133703 AS sv_6, 0.298005089315 AS sv_7, -0.0102543887431 AS sv_8, 0.0660396174522 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 14.7464145102 AS dual_coeff, 0.113744418286 AS sv_0, -0.316682659399 AS sv_1, 0.505508213797 AS sv_2, -0.473013952921 AS sv_3, -0.304044792823 AS sv_4, 0.0404743198358 AS sv_5, -0.497668903224 AS sv_6, -0.202505405872 AS sv_7, -0.259629494877 AS sv_8, 0.149333382668 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 15.1132289669 AS dual_coeff, 0.376503578657 AS sv_0, 0.289661083639 AS sv_1, 0.4240241108 AS sv_2, 0.470596572044 AS sv_3, 0.277806586182 AS sv_4, -0.16155294206 AS sv_5, 0.0248410359319 AS sv_6, -0.103739664909 AS sv_7, 0.0970499946025 AS sv_8, 0.0650856884162 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 14.8575002735 AS dual_coeff, -0.426661436877 AS sv_0, 0.227964355963 AS sv_1, 0.0113058986693 AS sv_2, -0.0723479751258 AS sv_3, -0.0122093822496 AS sv_4, 0.579708903594 AS sv_5, 0.122440689741 AS sv_6, -0.289485602332 AS sv_7, -0.399796816068 AS sv_8, -0.0550009265578 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 13.0117292424 AS dual_coeff, 0.154934073299 AS sv_0, -0.635949982761 AS sv_1, -0.202130310426 AS sv_2, -0.107112593958 AS sv_3, 0.0275940532187 AS sv_4, 0.113643125103 AS sv_5, -0.172254468597 AS sv_6, -0.218665678035 AS sv_7, -0.405196531454 AS sv_8, 0.178923597527 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 12.6376691247 AS dual_coeff, 0.14223895189 AS sv_0, -0.232732080033 AS sv_1, -0.0134470354115 AS sv_2, 0.178960483774 AS sv_3, 0.141272859854 AS sv_4, -0.57983724336 AS sv_5, -0.296100880968 AS sv_6, 0.0523266517555 AS sv_7, 0.246601925482 AS sv_8, 0.215521413987 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 12.1950379901 AS dual_coeff, -0.383807474138 AS sv_0, 0.347641927827 AS sv_1, 0.460760180411 AS sv_2, 0.324319001637 AS sv_3, -0.0227184902578 AS sv_4, 0.163554918773 AS sv_5, -0.493888436822 AS sv_6, -0.467880834044 AS sv_7, 0.140970019755 AS sv_8, 0.142646502427 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 15.0651492749 AS dual_coeff, 0.106282006147 AS sv_0, -0.649963944381 AS sv_1, 0.123772827552 AS sv_2, -0.00988278042961 AS sv_3, 0.0111028398986 AS sv_4, 0.393727062422 AS sv_5, 0.0763174446472 AS sv_6, 0.422521319667 AS sv_7, -0.0421882473063 AS sv_8, -0.289416752172 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 16.8504140438 AS dual_coeff, -0.231105548328 AS sv_0, 0.104401946472 AS sv_1, -0.375430914167 AS sv_2, 0.185000086341 AS sv_3, -0.604662157536 AS sv_4, 0.0453695821057 AS sv_5, -0.156902554761 AS sv_6, 0.216394599625 AS sv_7, 0.244834163363 AS sv_8, -0.0181822900287 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 12.4130631115 AS dual_coeff, -0.380042592484 AS sv_0, 0.446509597716 AS sv_1, -0.371945260008 AS sv_2, -0.0568242375908 AS sv_3, -0.462164999111 AS sv_4, 0.391526798218 AS sv_5, 0.0496738241048 AS sv_6, -0.30131863971 AS sv_7, 0.2534671621 AS sv_8, 0.0255579435746 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 18.782470629 AS dual_coeff, 0.0585260876096 AS sv_0, -0.340530730469 AS sv_1, 0.268583609826 AS sv_2, -0.137528321432 AS sv_3, -0.696627100374 AS sv_4, 0.183415629305 AS sv_5, -0.048635068897 AS sv_6, 0.155899609178 AS sv_7, -0.274800686782 AS sv_8, -0.167216104275 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 13.0741926393 AS dual_coeff, -0.131144111947 AS sv_0, 0.204465386122 AS sv_1, -0.300836248078 AS sv_2, -0.00348671455779 AS sv_3, 0.0241609353204 AS sv_4, 0.143420410429 AS sv_5, -0.0912408755343 AS sv_6, -0.0807719292679 AS sv_7, -0.362051102484 AS sv_8, 0.533479124386 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 12.7507337929 AS dual_coeff, 0.58020923944 AS sv_0, 0.443538295381 AS sv_1, 0.18453020968 AS sv_2, -0.151719842893 AS sv_3, -0.205660943724 AS sv_4, 0.0200832655432 AS sv_5, -0.0152361741607 AS sv_6, 0.0575267151453 AS sv_7, -0.32697596293 AS sv_8, 0.160960378937 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 12.6977817188 AS dual_coeff, 0.0871416136154 AS sv_0, -0.0161875334787 AS sv_1, 0.298468791688 AS sv_2, -0.0429361551285 AS sv_3, 0.359208488661 AS sv_4, 0.152198428015 AS sv_5, -0.358648683381 AS sv_6, -0.272547651718 AS sv_7, 0.438554906963 AS sv_8, 0.163512385039 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 12.9204441228 AS dual_coeff, 0.604765138653 AS sv_0, -0.128282090393 AS sv_1, -0.52139634967 AS sv_2, 0.133714033328 AS sv_3, -0.105411458852 AS sv_4, 0.0814853145408 AS sv_5, -0.173104489845 AS sv_6, 0.405914063444 AS sv_7, 0.181379104569 AS sv_8, 0.0233666942194 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 15.1209709671 AS dual_coeff, 0.673784424972 AS sv_0, -0.142019624209 AS sv_1, -0.168882105343 AS sv_2, 0.197367592193 AS sv_3, 0.461443942033 AS sv_4, -0.0953838364978 AS sv_5, 0.29791200503 AS sv_6, 0.0355253370079 AS sv_7, -0.0366002897176 AS sv_8, 0.137101819504 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 11.7776408611 AS dual_coeff, -0.159451704047 AS sv_0, -0.309126487977 AS sv_1, -0.452713815279 AS sv_2, 0.11449534115 AS sv_3, 0.229518832997 AS sv_4, -0.208644133334 AS sv_5, -0.58880405053 AS sv_6, -0.147152453838 AS sv_7, -0.372984138281 AS sv_8, -0.0620211365205 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 13.7852691461 AS dual_coeff, -0.105485538085 AS sv_0, 0.681106112932 AS sv_1, -0.141485015792 AS sv_2, -0.317960089227 AS sv_3, -0.0792736196188 AS sv_4, -0.353825197196 AS sv_5, -0.484943236095 AS sv_6, 0.362253360571 AS sv_7, -0.0102380154968 AS sv_8, -0.270812574908 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 13.0328978432 AS dual_coeff, 0.176034833166 AS sv_0, -0.483624308196 AS sv_1, -0.233284898878 AS sv_2, 0.116553221904 AS sv_3, -0.187816535637 AS sv_4, 0.154726065876 AS sv_5, -0.474133949983 AS sv_6, -0.108488432761 AS sv_7, -0.258344457829 AS sv_8, -0.138890644123 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 15.2944770197 AS dual_coeff, 0.513494920414 AS sv_0, -0.238666124265 AS sv_1, -0.48502147411 AS sv_2, -0.529248176534 AS sv_3, -0.309275440953 AS sv_4, -0.0978265622637 AS sv_5, -0.0771407027774 AS sv_6, 0.124646852528 AS sv_7, -0.0916016837552 AS sv_8, -0.067416090104 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 18.5659101117 AS dual_coeff, 0.056824605327 AS sv_0, -0.165388009503 AS sv_1, -0.111218244775 AS sv_2, 0.41437299764 AS sv_3, 0.170819125928 AS sv_4, 0.145352626698 AS sv_5, 0.0071247947807 AS sv_6, -0.0501804342028 AS sv_7, 0.104951908887 AS sv_8, -0.243598642556 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 14.3365474391 AS dual_coeff, 0.00869992289241 AS sv_0, 0.46411688668 AS sv_1, 0.0668935502816 AS sv_2, -0.310629556966 AS sv_3, 0.0351446138569 AS sv_4, -0.148983594145 AS sv_5, 0.219372861198 AS sv_6, 0.0322553411254 AS sv_7, 0.199165678583 AS sv_8, -0.104589932184 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 13.4484197451 AS dual_coeff, 0.41055895859 AS sv_0, -0.181327086288 AS sv_1, -0.0641911632486 AS sv_2, 0.129830528029 AS sv_3, 0.422425001137 AS sv_4, -0.326174918796 AS sv_5, 0.106188894476 AS sv_6, -0.14940389631 AS sv_7, 0.0716006138958 AS sv_8, -0.0956379064668 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 12.1332457795 AS dual_coeff, 0.880236195851 AS sv_0, -0.137101517986 AS sv_1, 0.216330641582 AS sv_2, -0.211354383737 AS sv_3, 0.0904980869956 AS sv_4, 0.426198265499 AS sv_5, -0.0229603160447 AS sv_6, 0.0332749682637 AS sv_7, 0.274042605583 AS sv_8, -0.186117796238 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 14.3679757398 AS dual_coeff, -0.269475223484 AS sv_0, 0.298369630821 AS sv_1, -0.0928246540408 AS sv_2, -0.107468330727 AS sv_3, 0.637779934431 AS sv_4, 0.126890223156 AS sv_5, -0.503074840039 AS sv_6, -0.0675112145485 AS sv_7, 0.0848300468249 AS sv_8, -0.124445203214 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 12.2506205576 AS dual_coeff, -0.586921736234 AS sv_0, 0.299448112727 AS sv_1, -0.161848276589 AS sv_2, -0.0161511981813 AS sv_3, 0.192652187893 AS sv_4, -0.113481533985 AS sv_5, 0.19445274181 AS sv_6, 0.296710458845 AS sv_7, -0.443397249732 AS sv_8, -0.0620216319128 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 16.3371454168 AS dual_coeff, -0.123923202284 AS sv_0, -0.364359937522 AS sv_1, 0.0658122073634 AS sv_2, -0.0261324242682 AS sv_3, -0.510251898388 AS sv_4, 0.254298110382 AS sv_5, 0.00505586801334 AS sv_6, 0.0124472085261 AS sv_7, 0.00917049861065 AS sv_8, 0.384026698869 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 12.1891423097 AS dual_coeff, -0.377575873844 AS sv_0, -0.588204688256 AS sv_1, -0.169587902563 AS sv_2, -0.174358356995 AS sv_3, -0.119717520331 AS sv_4, -0.168533403394 AS sv_5, 0.0843832013617 AS sv_6, -0.0248377520729 AS sv_7, 0.240468916355 AS sv_8, -0.310836256402 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 15.2731017147 AS dual_coeff, 0.257117341678 AS sv_0, -0.0243469162437 AS sv_1, -0.344808148091 AS sv_2, -0.237571062134 AS sv_3, -0.309561471671 AS sv_4, -0.0670824368548 AS sv_5, 0.761788149175 AS sv_6, -0.0141118978207 AS sv_7, -0.250740331308 AS sv_8, -0.0877149526989 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 14.5945606067 AS dual_coeff, 0.3802490645 AS sv_0, 0.186440783309 AS sv_1, 0.451912435969 AS sv_2, 0.067609137054 AS sv_3, 0.0176623378644 AS sv_4, 0.459832585457 AS sv_5, 0.407478125787 AS sv_6, 0.00645749664231 AS sv_7, -0.167618781287 AS sv_8, -0.119970210156 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 16.2581283763 AS dual_coeff, 0.64632101751 AS sv_0, 0.0280472927421 AS sv_1, -0.427047709883 AS sv_2, 0.374021961521 AS sv_3, -0.0693489498242 AS sv_4, 0.0815770646704 AS sv_5, -0.0554412301113 AS sv_6, -0.29583437754 AS sv_7, -0.0373383900027 AS sv_8, -0.153432141578 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 15.4723021655 AS dual_coeff, 0.208087365948 AS sv_0, 0.234054392987 AS sv_1, 0.599711423481 AS sv_2, 0.348588590416 AS sv_3, 0.254535886599 AS sv_4, -0.0120023552491 AS sv_5, -0.000897789923305 AS sv_6, -0.124317637561 AS sv_7, 0.432458203389 AS sv_8, 0.109787250872 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 17.8429171215 AS dual_coeff, -0.13945975613 AS sv_0, -0.0556726431129 AS sv_1, 0.147497401628 AS sv_2, -0.233855610948 AS sv_3, 0.590262363713 AS sv_4, 0.409338646752 AS sv_5, 0.393211698234 AS sv_6, -0.112035049466 AS sv_7, -0.282941432519 AS sv_8, -0.0856112883004 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 12.8920247693 AS dual_coeff, 0.51255306742 AS sv_0, -0.0165659407469 AS sv_1, 0.399944881625 AS sv_2, 0.299070419604 AS sv_3, 0.315953281127 AS sv_4, 0.162778302863 AS sv_5, 0.151402444045 AS sv_6, 0.363580667672 AS sv_7, -0.156808097896 AS sv_8, 0.193747283554 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 15.205730003 AS dual_coeff, 0.246647306723 AS sv_0, -0.422259323803 AS sv_1, 0.0110790867796 AS sv_2, -0.0209067181122 AS sv_3, 0.225528982708 AS sv_4, -0.151872101311 AS sv_5, 0.151330758805 AS sv_6, 0.457000953102 AS sv_7, 0.489113780763 AS sv_8, -0.36366970038 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 13.751094651 AS dual_coeff, 0.0520514190752 AS sv_0, 0.10039946151 AS sv_1, -0.562960314817 AS sv_2, -0.308228917872 AS sv_3, 0.170493375622 AS sv_4, 0.183360593285 AS sv_5, -0.107078945485 AS sv_6, -0.510680901741 AS sv_7, -0.138773712839 AS sv_8, 0.0182357467682 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 17.6993850445 AS dual_coeff, 0.722418750643 AS sv_0, 0.168399999471 AS sv_1, 0.119248194274 AS sv_2, 0.0583882201533 AS sv_3, -0.240476982021 AS sv_4, -0.093979853011 AS sv_5, -0.25406767308 AS sv_6, 0.437094135205 AS sv_7, -0.405322071879 AS sv_8, 0.445974800121 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 14.5078795928 AS dual_coeff, -0.570079745123 AS sv_0, 0.556203871122 AS sv_1, 0.0847431107966 AS sv_2, 0.200396316849 AS sv_3, -0.2369909933 AS sv_4, -0.221875918448 AS sv_5, -0.147775482255 AS sv_6, 0.28285553425 AS sv_7, -0.242075411187 AS sv_8, -0.305966568171 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 13.1810755907 AS dual_coeff, -0.376833688309 AS sv_0, 0.0658482110238 AS sv_1, -0.075425853481 AS sv_2, 0.278143764085 AS sv_3, -0.294120588561 AS sv_4, 0.12842488775 AS sv_5, 0.0240279124653 AS sv_6, 0.32115660338 AS sv_7, 0.280438096685 AS sv_8, -0.132550196843 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 11.3169115718 AS dual_coeff, 0.588478943371 AS sv_0, 0.526515398724 AS sv_1, -0.226182612143 AS sv_2, -0.178840403502 AS sv_3, 0.111657709461 AS sv_4, -0.0440291466966 AS sv_5, 0.0886990858221 AS sv_6, -0.0723952456908 AS sv_7, 0.333838629622 AS sv_8, 0.0542330488984 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 13.9461838546 AS dual_coeff, -0.0307708297605 AS sv_0, -0.373381754784 AS sv_1, 0.11473994985 AS sv_2, 0.462569654634 AS sv_3, -0.213943096246 AS sv_4, 0.146410835018 AS sv_5, 0.316690677057 AS sv_6, -0.143689943429 AS sv_7, 0.195476479883 AS sv_8, -0.0114892365627 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 12.8574828403 AS dual_coeff, 0.0680259991115 AS sv_0, -0.180739092051 AS sv_1, 0.647776059026 AS sv_2, 0.0313241609557 AS sv_3, 0.0148222917437 AS sv_4, -0.205360590719 AS sv_5, -0.0172680604196 AS sv_6, 0.195007205358 AS sv_7, 0.0279614408635 AS sv_8, -0.312290558555 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 12.2448578936 AS dual_coeff, -0.0376792139918 AS sv_0, 0.00849367060984 AS sv_1, 0.317742283619 AS sv_2, 0.67246907478 AS sv_3, -0.0490720454753 AS sv_4, -0.384639991483 AS sv_5, -0.181374352683 AS sv_6, 0.315569161607 AS sv_7, 0.203969285535 AS sv_8, 0.0820946668666 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 13.6633602392 AS dual_coeff, -0.278125701907 AS sv_0, 0.121582705638 AS sv_1, 0.0571155891087 AS sv_2, -0.458693251744 AS sv_3, 0.116440858063 AS sv_4, 0.156008883167 AS sv_5, -0.186687105397 AS sv_6, -0.317251767249 AS sv_7, 0.112766072439 AS sv_8, -0.471291574118 AS sv_9 UNION ALL SELECT 56 AS sv_idx, 13.7728818403 AS dual_coeff, 0.140356941333 AS sv_0, -0.616351778723 AS sv_1, 0.254609078613 AS sv_2, 0.172316096997 AS sv_3, 0.621683481836 AS sv_4, 0.208857886191 AS sv_5, 0.180140778373 AS sv_6, -0.0674732602311 AS sv_7, -0.253134928741 AS sv_8, 0.219118968068 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 12.7751648716 AS dual_coeff, 0.508984461419 AS sv_0, 0.498250480701 AS sv_1, -0.0635382757336 AS sv_2, 0.0579892971735 AS sv_3, -0.0486247508896 AS sv_4, -0.511652319024 AS sv_5, 0.164212596814 AS sv_6, -0.331739191762 AS sv_7, -0.0386862189532 AS sv_8, 0.128733406511 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 14.5996217176 AS dual_coeff, -0.265656855207 AS sv_0, 0.0809692867667 AS sv_1, 0.0678858015896 AS sv_2, -0.523636747306 AS sv_3, -0.206733118553 AS sv_4, -0.0574059427746 AS sv_5, 0.300890588071 AS sv_6, -0.313857017436 AS sv_7, 0.23187812746 AS sv_8, 0.118177866975 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 15.4090682786 AS dual_coeff, -0.0697613248975 AS sv_0, -0.402724782939 AS sv_1, -0.25021804154 AS sv_2, -0.258304951951 AS sv_3, -0.227792591527 AS sv_4, 0.233005591322 AS sv_5, -0.175885948295 AS sv_6, -0.0691280332511 AS sv_7, 0.183067802827 AS sv_8, 0.44231439784 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 14.2234521563 AS dual_coeff, 0.00940055811146 AS sv_0, 0.816399566249 AS sv_1, -0.356363666132 AS sv_2, 0.070967143306 AS sv_3, -0.503715253133 AS sv_4, 0.138685970145 AS sv_5, 0.0445511320335 AS sv_6, 0.079727875789 AS sv_7, 0.207038956248 AS sv_8, -0.209117238178 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 12.062833219 AS dual_coeff, -0.0794431289294 AS sv_0, -0.118256636612 AS sv_1, -0.133014125617 AS sv_2, 0.795281658495 AS sv_3, -0.139072864537 AS sv_4, -0.0365027263545 AS sv_5, 0.270376659371 AS sv_6, 0.0799929370159 AS sv_7, -0.16375527711 AS sv_8, -0.103348950565 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 11.3963160934 AS dual_coeff, 0.0341334228441 AS sv_0, -0.526267940645 AS sv_1, -0.452585435959 AS sv_2, -0.251973929422 AS sv_3, 0.336883313269 AS sv_4, -0.269668387895 AS sv_5, -0.105844910203 AS sv_6, -0.236910171126 AS sv_7, -0.0402219207511 AS sv_8, 0.0890168797051 AS sv_9 UNION ALL SELECT 63 AS sv_idx, 14.2846674361 AS dual_coeff, 0.62212169443 AS sv_0, -0.508194854588 AS sv_1, -0.249359895502 AS sv_2, -0.569263144877 AS sv_3, -0.0535065951481 AS sv_4, -0.204603254724 AS sv_5, 0.140076849473 AS sv_6, 0.278406585073 AS sv_7, 0.114726515845 AS sv_8, 0.112452682094 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 11.0226775793 AS dual_coeff, 0.0429807826569 AS sv_0, -0.296046401855 AS sv_1, 0.163176442041 AS sv_2, -0.455522244374 AS sv_3, 0.0661236883699 AS sv_4, -0.602914169386 AS sv_5, -0.176082504505 AS sv_6, -0.142891263628 AS sv_7, 0.366645133157 AS sv_8, -0.189613360445 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 14.4769270054 AS dual_coeff, -0.387898127431 AS sv_0, 0.149393378134 AS sv_1, -0.503579494558 AS sv_2, 0.0825747534661 AS sv_3, 0.465371079267 AS sv_4, -0.00511502770072 AS sv_5, -0.192240016134 AS sv_6, 0.494279294654 AS sv_7, -0.17948503619 AS sv_8, -0.000244648870583 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 14.9160643957 AS dual_coeff, 0.105822323723 AS sv_0, -0.0708991262205 AS sv_1, 0.29029973794 AS sv_2, -0.231189453169 AS sv_3, 0.190893846382 AS sv_4, 0.700632141644 AS sv_5, -0.472507805575 AS sv_6, -0.0573111672005 AS sv_7, 0.121910197831 AS sv_8, -0.230425340733 AS sv_9 UNION ALL SELECT 67 AS sv_idx, 13.2275815208 AS dual_coeff, 0.268943922089 AS sv_0, 0.226865498537 AS sv_1, 0.509966908929 AS sv_2, -0.18996126764 AS sv_3, -0.279524808386 AS sv_4, 0.166288221104 AS sv_5, 0.441229490026 AS sv_6, 0.124258477828 AS sv_7, 0.0731447539258 AS sv_8, 0.293156680597 AS sv_9 UNION ALL SELECT 68 AS sv_idx, 19.6634040479 AS dual_coeff, -0.408461686388 AS sv_0, -0.35070289161 AS sv_1, -0.0904223771397 AS sv_2, -0.2378061449 AS sv_3, -0.0585915545463 AS sv_4, -0.351990384033 AS sv_5, -0.224929003778 AS sv_6, 0.201744090817 AS sv_7, -0.053632685322 AS sv_8, 0.0597320133779 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 15.6057235321 AS dual_coeff, -0.00198888317167 AS sv_0, -0.240035213136 AS sv_1, 0.110790376288 AS sv_2, -0.126628835937 AS sv_3, 0.692113992227 AS sv_4, 0.0519937214691 AS sv_5, 0.0231960695094 AS sv_6, -0.0420822219118 AS sv_7, 0.342807929597 AS sv_8, 0.0279168363175 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 15.8085004103 AS dual_coeff, 0.278583115223 AS sv_0, 0.339267361964 AS sv_1, 0.0989518130067 AS sv_2, 0.0096074541224 AS sv_3, 0.271804075839 AS sv_4, 0.0344182402027 AS sv_5, 0.0788929414629 AS sv_6, -0.368369782821 AS sv_7, -0.34056113269 AS sv_8, -0.331116862823 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 15.6007654301 AS dual_coeff, 0.0761478986712 AS sv_0, 0.0978347405366 AS sv_1, -0.247605544095 AS sv_2, -0.0710963550676 AS sv_3, -0.0304239766072 AS sv_4, 0.603890137841 AS sv_5, -0.397322069164 AS sv_6, -0.262990861333 AS sv_7, -0.0531308162748 AS sv_8, -0.0722507053829 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 14.7726792006 AS dual_coeff, 0.48533960864 AS sv_0, -0.145810853884 AS sv_1, -0.138555394303 AS sv_2, 0.278284970205 AS sv_3, -0.147950518979 AS sv_4, 0.0664550680617 AS sv_5, 0.257484002665 AS sv_6, 0.205016258359 AS sv_7, 0.525411259488 AS sv_8, 0.698592989831 AS sv_9 UNION ALL SELECT 73 AS sv_idx, 15.0930173574 AS dual_coeff, -0.146271364728 AS sv_0, 0.414200500864 AS sv_1, 0.271576704786 AS sv_2, -0.215603784855 AS sv_3, 0.537905632398 AS sv_4, 0.289799178402 AS sv_5, -0.180000121799 AS sv_6, -0.110321480253 AS sv_7, 0.221249080332 AS sv_8, 0.210431649594 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 15.5513524602 AS dual_coeff, -0.0250829141753 AS sv_0, -0.188760712868 AS sv_1, 0.521616305892 AS sv_2, -0.374484925445 AS sv_3, -0.380803965287 AS sv_4, -0.444105973148 AS sv_5, -0.325253027204 AS sv_6, -0.256768041467 AS sv_7, 0.17290429122 AS sv_8, -0.230025434087 AS sv_9 UNION ALL SELECT 75 AS sv_idx, 14.3572179953 AS dual_coeff, -0.33078848132 AS sv_0, 0.219602090508 AS sv_1, 0.156164896328 AS sv_2, 0.422376037177 AS sv_3, 0.600161866012 AS sv_4, 0.0506443954602 AS sv_5, 0.222138901807 AS sv_6, 0.252062799535 AS sv_7, -0.427861408807 AS sv_8, -0.0407539796078 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 14.6921205636 AS dual_coeff, -0.592177517696 AS sv_0, -0.243627416548 AS sv_1, -0.307940594376 AS sv_2, 0.157498744161 AS sv_3, 0.160873251633 AS sv_4, -0.380208823998 AS sv_5, 0.174045597851 AS sv_6, 0.0720465936404 AS sv_7, -0.0665495392641 AS sv_8, -0.00814788361628 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 13.5909347889 AS dual_coeff, 0.160719130115 AS sv_0, -0.00176981689043 AS sv_1, -0.593762747719 AS sv_2, 0.227933355935 AS sv_3, 0.178695864946 AS sv_4, -0.216090364339 AS sv_5, -0.209626058821 AS sv_6, -0.402245163216 AS sv_7, -0.0557384074635 AS sv_8, -0.0142739873796 AS sv_9 UNION ALL SELECT 78 AS sv_idx, 16.725195256 AS dual_coeff, -0.431906301972 AS sv_0, 0.0736159593162 AS sv_1, -0.384266643366 AS sv_2, 0.435410623046 AS sv_3, 0.129461326236 AS sv_4, 0.129661485357 AS sv_5, 0.136699323645 AS sv_6, 0.0417613624058 AS sv_7, 0.189286395913 AS sv_8, 0.320697501638 AS sv_9 UNION ALL SELECT 79 AS sv_idx, 13.7770106126 AS dual_coeff, 0.0619506695734 AS sv_0, -0.14025912979 AS sv_1, -0.178442745047 AS sv_2, 0.716780062707 AS sv_3, -0.0294682594753 AS sv_4, -0.373498715495 AS sv_5, -0.0117554558111 AS sv_6, -0.129595314276 AS sv_7, -0.275589965411 AS sv_8, -0.431379803841 AS sv_9 UNION ALL SELECT 80 AS sv_idx, 9.89720342661 AS dual_coeff, 0.0547289873673 AS sv_0, -0.227212088387 AS sv_1, 0.324608175054 AS sv_2, -0.366090839252 AS sv_3, 0.743099279736 AS sv_4, -0.201557459629 AS sv_5, -0.101045617808 AS sv_6, -0.171679158384 AS sv_7, -0.248459464974 AS sv_8, 0.252853716829 AS sv_9 UNION ALL SELECT 81 AS sv_idx, 13.5643689646 AS dual_coeff, 0.0227994390534 AS sv_0, -0.45673912501 AS sv_1, -0.0848401853669 AS sv_2, 0.582504628279 AS sv_3, -0.0843198877475 AS sv_4, 0.0551227973688 AS sv_5, -0.181426658301 AS sv_6, -0.0489662038487 AS sv_7, -0.101742924424 AS sv_8, -0.115813970258 AS sv_9 UNION ALL SELECT 82 AS sv_idx, 13.1441501957 AS dual_coeff, -0.300530291873 AS sv_0, -0.0981852550581 AS sv_1, 0.482098830419 AS sv_2, -0.353039437999 AS sv_3, 0.115416817115 AS sv_4, -0.192365683605 AS sv_5, 0.596976724403 AS sv_6, -0.346932157704 AS sv_7, -0.0402147336452 AS sv_8, -0.0204240168197 AS sv_9 UNION ALL SELECT 83 AS sv_idx, 16.1810434695 AS dual_coeff, -0.0853765801779 AS sv_0, -0.339136696652 AS sv_1, 0.20652185135 AS sv_2, -0.034235559314 AS sv_3, -0.454870259528 AS sv_4, -0.218030247274 AS sv_5, -0.0053494789993 AS sv_6, -0.217265369015 AS sv_7, -0.0610138459555 AS sv_8, -0.118720716585 AS sv_9 UNION ALL SELECT 84 AS sv_idx, 13.6430166048 AS dual_coeff, 0.0707797748152 AS sv_0, 0.158895246118 AS sv_1, 0.451280389316 AS sv_2, -0.36540608799 AS sv_3, -0.00216257530807 AS sv_4, 0.347882477713 AS sv_5, 0.131250285791 AS sv_6, 0.490962928185 AS sv_7, 0.212569445815 AS sv_8, -0.122729521412 AS sv_9 UNION ALL SELECT 85 AS sv_idx, 14.2462058695 AS dual_coeff, -0.692137162289 AS sv_0, 0.409170506026 AS sv_1, 0.320197134775 AS sv_2, -0.423431487968 AS sv_3, -0.127443475395 AS sv_4, -0.123693434401 AS sv_5, 0.309752705493 AS sv_6, 0.173545995316 AS sv_7, 0.152362060128 AS sv_8, 0.338525522417 AS sv_9 UNION ALL SELECT 86 AS sv_idx, 13.8377059568 AS dual_coeff, 0.268823626241 AS sv_0, 0.59886891008 AS sv_1, -0.255828097336 AS sv_2, -0.165831730873 AS sv_3, -0.30233898694 AS sv_4, -0.191620887639 AS sv_5, -0.0775524455958 AS sv_6, -0.0851293107034 AS sv_7, 0.00765424604564 AS sv_8, 0.122320083528 AS sv_9 UNION ALL SELECT 87 AS sv_idx, 13.3304833529 AS dual_coeff, 0.300757177563 AS sv_0, -0.355021458594 AS sv_1, 0.1597669719 AS sv_2, 0.467379061322 AS sv_3, -0.13194901515 AS sv_4, 0.197270929441 AS sv_5, -0.548777568337 AS sv_6, 0.387027766096 AS sv_7, 0.0895858586119 AS sv_8, 0.212595135257 AS sv_9 UNION ALL SELECT 88 AS sv_idx, 12.9610383272 AS dual_coeff, -0.0967386046448 AS sv_0, -0.37974796433 AS sv_1, 0.168973250066 AS sv_2, -0.692395047057 AS sv_3, 0.188349791266 AS sv_4, 0.357430643497 AS sv_5, -0.115966815795 AS sv_6, 0.269012080318 AS sv_7, -0.0877127427374 AS sv_8, -0.216906536138 AS sv_9 UNION ALL SELECT 89 AS sv_idx, 13.1569296745 AS dual_coeff, -0.341516778193 AS sv_0, -0.630658484456 AS sv_1, 0.463058135656 AS sv_2, -0.00748698413123 AS sv_3, -0.291764551598 AS sv_4, -0.298150236971 AS sv_5, 0.167620776838 AS sv_6, -0.290788766778 AS sv_7, -0.173814457925 AS sv_8, 0.228221095471 AS sv_9 UNION ALL SELECT 90 AS sv_idx, 15.6091952933 AS dual_coeff, 0.313829655537 AS sv_0, -0.24354533906 AS sv_1, -0.249159170778 AS sv_2, -0.432378883189 AS sv_3, -0.302015698939 AS sv_4, -0.199985704009 AS sv_5, 0.0246362118656 AS sv_6, -0.150662089568 AS sv_7, 0.0221499972859 AS sv_8, -0.192205965115 AS sv_9 UNION ALL SELECT 91 AS sv_idx, 17.7932362824 AS dual_coeff, -0.00534668379443 AS sv_0, 0.204842468134 AS sv_1, -0.595402345837 AS sv_2, -0.0576976805721 AS sv_3, 0.115072716449 AS sv_4, 0.559831467073 AS sv_5, 0.0945192820393 AS sv_6, 0.0322518718814 AS sv_7, 0.339887132281 AS sv_8, 0.100883836283 AS sv_9 UNION ALL SELECT 92 AS sv_idx, 14.0275563416 AS dual_coeff, 0.0445465500176 AS sv_0, 0.232718116465 AS sv_1, 0.536465751546 AS sv_2, 0.0215544955341 AS sv_3, -0.122686749405 AS sv_4, -0.0326059699161 AS sv_5, -0.170761333078 AS sv_6, 0.406026185598 AS sv_7, 0.135172993227 AS sv_8, -0.394210765371 AS sv_9 UNION ALL SELECT 93 AS sv_idx, 13.9593534144 AS dual_coeff, -0.427777739583 AS sv_0, 0.650636273582 AS sv_1, 0.0488020999663 AS sv_2, 0.0298062722118 AS sv_3, 0.141738345262 AS sv_4, -0.00029148888574 AS sv_5, -0.196370538994 AS sv_6, -0.0798033745806 AS sv_7, -0.015609962011 AS sv_8, 0.0845282797256 AS sv_9 UNION ALL SELECT 94 AS sv_idx, 12.9155732118 AS dual_coeff, -0.0132780326242 AS sv_0, -0.0446356768629 AS sv_1, 0.133190093907 AS sv_2, 0.171355508365 AS sv_3, -0.347261946954 AS sv_4, -0.0228674420077 AS sv_5, 0.309773556986 AS sv_6, -0.388099073254 AS sv_7, -0.0916642693546 AS sv_8, -0.150081158528 AS sv_9 UNION ALL SELECT 95 AS sv_idx, 17.0093882118 AS dual_coeff, -0.86099021598 AS sv_0, -0.064311531142 AS sv_1, -0.0607930955563 AS sv_2, 0.461838070777 AS sv_3, 0.212235261714 AS sv_4, 0.346478399805 AS sv_5, -0.149423792376 AS sv_6, -0.00765851573493 AS sv_7, 0.366772157312 AS sv_8, -0.0790755329491 AS sv_9 UNION ALL SELECT 96 AS sv_idx, 13.6511371486 AS dual_coeff, 0.673481565603 AS sv_0, 0.372305270848 AS sv_1, 0.152097448741 AS sv_2, 0.269186507181 AS sv_3, -0.156013139071 AS sv_4, -0.182039060759 AS sv_5, -0.239133676991 AS sv_6, -0.123954851876 AS sv_7, -0.255321259362 AS sv_8, -0.0165936682416 AS sv_9 UNION ALL SELECT 97 AS sv_idx, 13.7025894321 AS dual_coeff, 0.163898359541 AS sv_0, 0.476722844142 AS sv_1, -0.576656206022 AS sv_2, -0.0739868475504 AS sv_3, 0.0312411966874 AS sv_4, -0.236744209736 AS sv_5, -0.0794424711223 AS sv_6, 0.176836830808 AS sv_7, 0.20757972615 AS sv_8, 0.0705217230662 AS sv_9 UNION ALL SELECT 98 AS sv_idx, 9.19136950988 AS dual_coeff, -0.40806633002 AS sv_0, 0.194034053201 AS sv_1, 0.285244696706 AS sv_2, 0.296288717795 AS sv_3, -0.157013108044 AS sv_4, -0.304268678835 AS sv_5, 0.112985224756 AS sv_6, -0.465764716217 AS sv_7, 0.0944949976769 AS sv_8, 0.356003402671 AS sv_9 UNION ALL SELECT 99 AS sv_idx, 16.1173057382 AS dual_coeff, 0.219062761302 AS sv_0, 0.0707694374794 AS sv_1, -0.282057415417 AS sv_2, 0.0385672974182 AS sv_3, -0.261148722624 AS sv_4, 0.314356976917 AS sv_5, 0.578099176024 AS sv_6, -0.238364172344 AS sv_7, -0.221921391858 AS sv_8, -0.240352175483 AS sv_9) AS `Values`), 
kernel_cte AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) AS dot_product 
FROM (SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, `SV_data`.dual_coeff * (`ADS_ano_2_OUT`.anoova_2 * `SV_data`.sv_0 + `ADS_ano_2_OUT`.anoova_3 * `SV_data`.sv_1 + `ADS_ano_2_OUT`.anoova_4 * `SV_data`.sv_2 + `ADS_ano_2_OUT`.anoova_5 * `SV_data`.sv_3 + `ADS_ano_2_OUT`.anoova_6 * `SV_data`.sv_4 + `ADS_ano_2_OUT`.anoova_7 * `SV_data`.sv_5 + `ADS_ano_2_OUT`.anoova_8 * `SV_data`.sv_6 + `ADS_ano_2_OUT`.anoova_9 * `SV_data`.sv_7 + `ADS_ano_2_OUT`.anoova_10 * `SV_data`.sv_8 + `ADS_ano_2_OUT`.anoova_11 * `SV_data`.sv_9) AS dot_prod1 
FROM `ADS_ano_2_OUT`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_cte.`KEY` AS `KEY`, kernel_cte.dot_product AS `Estimator` 
FROM kernel_cte