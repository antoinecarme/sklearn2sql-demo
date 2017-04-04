-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0835856145421 ELSE "ADS"."Feature_0" END AS impute_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0476558738894 ELSE "ADS"."Feature_1" END AS impute_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.0690714844836 ELSE "ADS"."Feature_2" END AS impute_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0019903186715 ELSE "ADS"."Feature_3" END AS impute_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.043007503821 ELSE "ADS"."Feature_4" END AS impute_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.104771770057 ELSE "ADS"."Feature_5" END AS impute_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.444854201657 ELSE "ADS"."Feature_6" END AS impute_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.0479243793424 ELSE "ADS"."Feature_7" END AS impute_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.320190295093 ELSE "ADS"."Feature_8" END AS impute_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.00465416837165 ELSE "ADS"."Feature_9" END AS impute_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN -0.0160153366322 ELSE "ADS"."Feature_10" END AS impute_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.067061145291 ELSE "ADS"."Feature_11" END AS impute_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.0919965347245 ELSE "ADS"."Feature_12" END AS impute_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 0.469247263858 ELSE "ADS"."Feature_13" END AS impute_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN -0.0621018406454 ELSE "ADS"."Feature_14" END AS impute_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0521005957555 ELSE "ADS"."Feature_15" END AS impute_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.194184458098 ELSE "ADS"."Feature_16" END AS impute_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.584487240785 ELSE "ADS"."Feature_17" END AS impute_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0212966017915 ELSE "ADS"."Feature_18" END AS impute_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.0590585242724 ELSE "ADS"."Feature_19" END AS impute_21 
FROM "INPUT_DATA" "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_2 - -0.0835856145421 AS impute_2, "ADS_imp_1_OUT".impute_3 - -0.0476558738894 AS impute_3, "ADS_imp_1_OUT".impute_4 - -0.0690714844836 AS impute_4, "ADS_imp_1_OUT".impute_5 - 0.0019903186715 AS impute_5, "ADS_imp_1_OUT".impute_6 - -0.043007503821 AS impute_6, "ADS_imp_1_OUT".impute_7 - -0.104771770057 AS impute_7, "ADS_imp_1_OUT".impute_8 - 0.444854201657 AS impute_8, "ADS_imp_1_OUT".impute_9 - -0.0479243793424 AS impute_9, "ADS_imp_1_OUT".impute_10 - 0.320190295093 AS impute_10, "ADS_imp_1_OUT".impute_11 - 0.00465416837165 AS impute_11, "ADS_imp_1_OUT".impute_12 - -0.0160153366322 AS impute_12, "ADS_imp_1_OUT".impute_13 - -0.067061145291 AS impute_13, "ADS_imp_1_OUT".impute_14 - -0.0919965347245 AS impute_14, "ADS_imp_1_OUT".impute_15 - 0.469247263858 AS impute_15, "ADS_imp_1_OUT".impute_16 - -0.0621018406454 AS impute_16, "ADS_imp_1_OUT".impute_17 - 0.0521005957555 AS impute_17, "ADS_imp_1_OUT".impute_18 - 0.194184458098 AS impute_18, "ADS_imp_1_OUT".impute_19 - 0.584487240785 AS impute_19, "ADS_imp_1_OUT".impute_20 - 0.0212966017915 AS impute_20, "ADS_imp_1_OUT".impute_21 - -0.0590585242724 AS impute_21 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_2 * -0.0193202444459 + "CenteredDataForPCA".impute_3 * 0.0191026814742 + "CenteredDataForPCA".impute_4 * 0.00510431348391 + "CenteredDataForPCA".impute_5 * -0.0067871932137 + "CenteredDataForPCA".impute_6 * -0.0371619598414 + "CenteredDataForPCA".impute_7 * 0.0422125111686 + "CenteredDataForPCA".impute_8 * 0.662747179822 + "CenteredDataForPCA".impute_9 * -0.0116982519188 + "CenteredDataForPCA".impute_10 * 0.613685580735 + "CenteredDataForPCA".impute_11 * 0.103611081982 + "CenteredDataForPCA".impute_12 * -0.0129387100898 + "CenteredDataForPCA".impute_13 * -0.0364705092564 + "CenteredDataForPCA".impute_14 * 0.0273712893828 + "CenteredDataForPCA".impute_15 * 0.271771649358 + "CenteredDataForPCA".impute_16 * 0.266824971285 + "CenteredDataForPCA".impute_17 * 0.063436543407 + "CenteredDataForPCA".impute_18 * 0.0646393522408 + "CenteredDataForPCA".impute_19 * -0.116464236546 + "CenteredDataForPCA".impute_20 * -0.0111395063893 + "CenteredDataForPCA".impute_21 * -0.0108778784465 AS anoova_2, "CenteredDataForPCA".impute_2 * -0.0146215835095 + "CenteredDataForPCA".impute_3 * -0.0515948240309 + "CenteredDataForPCA".impute_4 * -0.0290152319287 + "CenteredDataForPCA".impute_5 * 0.0261580160018 + "CenteredDataForPCA".impute_6 * 0.0861040698331 + "CenteredDataForPCA".impute_7 * -0.00782842484386 + "CenteredDataForPCA".impute_8 * 0.0526833761748 + "CenteredDataForPCA".impute_9 * -0.0280919588719 + "CenteredDataForPCA".impute_10 * -0.110095469596 + "CenteredDataForPCA".impute_11 * 0.329761617682 + "CenteredDataForPCA".impute_12 * -0.00835992379488 + "CenteredDataForPCA".impute_13 * -0.0192426402072 + "CenteredDataForPCA".impute_14 * -0.0572241734132 + "CenteredDataForPCA".impute_15 * -0.673435614713 + "CenteredDataForPCA".impute_16 * 0.578471285996 + "CenteredDataForPCA".impute_17 * 0.0662136012221 + "CenteredDataForPCA".impute_18 * -0.0111474019687 + "CenteredDataForPCA".impute_19 * -0.237185447013 + "CenteredDataForPCA".impute_20 * -0.104534098403 + "CenteredDataForPCA".impute_21 * 0.0119281460401 AS anoova_3, "CenteredDataForPCA".impute_2 * -0.0902914487063 + "CenteredDataForPCA".impute_3 * -0.0418031618684 + "CenteredDataForPCA".impute_4 * -0.0591973437059 + "CenteredDataForPCA".impute_5 * -0.0576769009365 + "CenteredDataForPCA".impute_6 * 0.111628124275 + "CenteredDataForPCA".impute_7 * 0.1830717793 + "CenteredDataForPCA".impute_8 * -0.0945654034352 + "CenteredDataForPCA".impute_9 * 0.0294712809858 + "CenteredDataForPCA".impute_10 * -0.0504510630486 + "CenteredDataForPCA".impute_11 * -0.666857455914 + "CenteredDataForPCA".impute_12 * 0.0965670757786 + "CenteredDataForPCA".impute_13 * -0.111574975672 + "CenteredDataForPCA".impute_14 * 0.0370263153049 + "CenteredDataForPCA".impute_15 * 0.0625900388198 + "CenteredDataForPCA".impute_16 * 0.190236422555 + "CenteredDataForPCA".impute_17 * 0.0424704443754 + "CenteredDataForPCA".impute_18 * 0.226071176726 + "CenteredDataForPCA".impute_19 * -0.575212293901 + "CenteredDataForPCA".impute_20 * -0.062155877435 + "CenteredDataForPCA".impute_21 * -0.171290841324 AS anoova_4, "CenteredDataForPCA".impute_2 * -0.0132790142474 + "CenteredDataForPCA".impute_3 * -0.0194556156554 + "CenteredDataForPCA".impute_4 * 0.327458211479 + "CenteredDataForPCA".impute_5 * -0.16629700321 + "CenteredDataForPCA".impute_6 * 0.0216187023277 + "CenteredDataForPCA".impute_7 * 0.169957616955 + "CenteredDataForPCA".impute_8 * 0.148050789888 + "CenteredDataForPCA".impute_9 * -0.245334503478 + "CenteredDataForPCA".impute_10 * -0.171469250344 + "CenteredDataForPCA".impute_11 * -0.282831177468 + "CenteredDataForPCA".impute_12 * -0.180403187416 + "CenteredDataForPCA".impute_13 * 0.149096361805 + "CenteredDataForPCA".impute_14 * -0.0657146423181 + "CenteredDataForPCA".impute_15 * -0.016996467243 + "CenteredDataForPCA".impute_16 * 0.341788491389 + "CenteredDataForPCA".impute_17 * -0.219909732172 + "CenteredDataForPCA".impute_18 * 0.279945375796 + "CenteredDataForPCA".impute_19 * 0.551522951094 + "CenteredDataForPCA".impute_20 * -0.102195368473 + "CenteredDataForPCA".impute_21 * -0.161717392125 AS anoova_5, "CenteredDataForPCA".impute_2 * -0.177366905339 + "CenteredDataForPCA".impute_3 * -0.367302918952 + "CenteredDataForPCA".impute_4 * 0.161032723582 + "CenteredDataForPCA".impute_5 * -0.222635962289 + "CenteredDataForPCA".impute_6 * 0.276257717876 + "CenteredDataForPCA".impute_7 * -0.449315627585 + "CenteredDataForPCA".impute_8 * 0.0611296636866 + "CenteredDataForPCA".impute_9 * 0.380511678202 + "CenteredDataForPCA".impute_10 * -0.0335022991754 + "CenteredDataForPCA".impute_11 * -0.160891613998 + "CenteredDataForPCA".impute_12 * -0.100380841382 + "CenteredDataForPCA".impute_13 * -0.152880199877 + "CenteredDataForPCA".impute_14 * 0.299081140029 + "CenteredDataForPCA".impute_15 * 0.0172572621095 + "CenteredDataForPCA".impute_16 * 0.133815568582 + "CenteredDataForPCA".impute_17 * -0.0524306878755 + "CenteredDataForPCA".impute_18 * -0.0515749811765 + "CenteredDataForPCA".impute_19 * 0.102506722061 + "CenteredDataForPCA".impute_20 * 0.106742398443 + "CenteredDataForPCA".impute_21 * 0.368755675737 AS anoova_6, "CenteredDataForPCA".impute_2 * -0.268044523872 + "CenteredDataForPCA".impute_3 * 0.0423550331916 + "CenteredDataForPCA".impute_4 * 0.35453260361 + "CenteredDataForPCA".impute_5 * -0.294731049817 + "CenteredDataForPCA".impute_6 * 0.111646096095 + "CenteredDataForPCA".impute_7 * 0.0127853534799 + "CenteredDataForPCA".impute_8 * -0.0522170456917 + "CenteredDataForPCA".impute_9 * 0.429204696806 + "CenteredDataForPCA".impute_10 * 0.0677535156907 + "CenteredDataForPCA".impute_11 * 0.166631092786 + "CenteredDataForPCA".impute_12 * -0.0419867294929 + "CenteredDataForPCA".impute_13 * 0.30148245886 + "CenteredDataForPCA".impute_14 * -0.457903474758 + "CenteredDataForPCA".impute_15 * 0.0212737630958 + "CenteredDataForPCA".impute_16 * -0.171451460459 + "CenteredDataForPCA".impute_17 * 0.161427008085 + "CenteredDataForPCA".impute_18 * 0.116437823655 + "CenteredDataForPCA".impute_19 * -0.130702388793 + "CenteredDataForPCA".impute_20 * -0.269189600473 + "CenteredDataForPCA".impute_21 * -0.143280947489 AS anoova_7, "CenteredDataForPCA".impute_2 * 0.465028908849 + "CenteredDataForPCA".impute_3 * 0.324392853472 + "CenteredDataForPCA".impute_4 * 0.311033289735 + "CenteredDataForPCA".impute_5 * -0.00541560298682 + "CenteredDataForPCA".impute_6 * -0.206493334542 + "CenteredDataForPCA".impute_7 * -0.0482469889266 + "CenteredDataForPCA".impute_8 * 0.0493884853842 + "CenteredDataForPCA".impute_9 * 0.335508667066 + "CenteredDataForPCA".impute_10 * -0.07749384911 + "CenteredDataForPCA".impute_11 * -0.214181619334 + "CenteredDataForPCA".impute_12 * 0.191370916161 + "CenteredDataForPCA".impute_13 * -0.0232447208689 + "CenteredDataForPCA".impute_14 * -0.0937682557343 + "CenteredDataForPCA".impute_15 * -0.0363780347141 + "CenteredDataForPCA".impute_16 * 0.209669151859 + "CenteredDataForPCA".impute_17 * 0.342115200391 + "CenteredDataForPCA".impute_18 * -0.204704092425 + "CenteredDataForPCA".impute_19 * 0.087850633789 + "CenteredDataForPCA".impute_20 * 0.334543996856 + "CenteredDataForPCA".impute_21 * -0.00840201921554 AS anoova_8, "CenteredDataForPCA".impute_2 * 0.214797234735 + "CenteredDataForPCA".impute_3 * -0.227354997013 + "CenteredDataForPCA".impute_4 * -0.087870147193 + "CenteredDataForPCA".impute_5 * -0.0623580599634 + "CenteredDataForPCA".impute_6 * -0.333414384434 + "CenteredDataForPCA".impute_7 * 0.272159409969 + "CenteredDataForPCA".impute_8 * 0.00937817483872 + "CenteredDataForPCA".impute_9 * 0.390062494316 + "CenteredDataForPCA".impute_10 * -0.0244123743302 + "CenteredDataForPCA".impute_11 * 0.0913290671255 + "CenteredDataForPCA".impute_12 * 0.410766135271 + "CenteredDataForPCA".impute_13 * -0.233367650432 + "CenteredDataForPCA".impute_14 * 0.139094243348 + "CenteredDataForPCA".impute_15 * -0.0228351953813 + "CenteredDataForPCA".impute_16 * -0.0106926309279 + "CenteredDataForPCA".impute_17 * -0.170407848108 + "CenteredDataForPCA".impute_18 * 0.233100394495 + "CenteredDataForPCA".impute_19 * 0.150383445569 + "CenteredDataForPCA".impute_20 * -0.432018660282 + "CenteredDataForPCA".impute_21 * 0.0913805624811 AS anoova_9, "CenteredDataForPCA".impute_2 * -0.105815525937 + "CenteredDataForPCA".impute_3 * 0.0102806237196 + "CenteredDataForPCA".impute_4 * -0.0545409379068 + "CenteredDataForPCA".impute_5 * 0.0223346466904 + "CenteredDataForPCA".impute_6 * 0.457151369171 + "CenteredDataForPCA".impute_7 * 0.101840564035 + "CenteredDataForPCA".impute_8 * 0.0451383401364 + "CenteredDataForPCA".impute_9 * 0.131802695022 + "CenteredDataForPCA".impute_10 * 0.0227883286858 + "CenteredDataForPCA".impute_11 * 0.137982600789 + "CenteredDataForPCA".impute_12 * 0.566859336731 + "CenteredDataForPCA".impute_13 * 0.0856650355508 + "CenteredDataForPCA".impute_14 * 0.0199452266792 + "CenteredDataForPCA".impute_15 * -0.0284782981252 + "CenteredDataForPCA".impute_16 * 0.000856260512053 + "CenteredDataForPCA".impute_17 * -0.298975969525 + "CenteredDataForPCA".impute_18 * 0.0709352924221 + "CenteredDataForPCA".impute_19 * 0.107851733043 + "CenteredDataForPCA".impute_20 * 0.436323729344 + "CenteredDataForPCA".impute_21 * -0.317160256062 AS anoova_10, "CenteredDataForPCA".impute_2 * -0.068271948848 + "CenteredDataForPCA".impute_3 * 0.402336597035 + "CenteredDataForPCA".impute_4 * 0.0172224907045 + "CenteredDataForPCA".impute_5 * -0.105496220326 + "CenteredDataForPCA".impute_6 * -0.141512533664 + "CenteredDataForPCA".impute_7 * -0.545211694939 + "CenteredDataForPCA".impute_8 * -0.0118084805565 + "CenteredDataForPCA".impute_9 * -0.090050960706 + "CenteredDataForPCA".impute_10 * -0.0059659309104 + "CenteredDataForPCA".impute_11 * 0.0132742764059 + "CenteredDataForPCA".impute_12 * 0.231032819635 + "CenteredDataForPCA".impute_13 * 0.230303369444 + "CenteredDataForPCA".impute_14 * 0.45983460985 + "CenteredDataForPCA".impute_15 * -0.0267969250562 + "CenteredDataForPCA".impute_16 * 0.0087881719269 + "CenteredDataForPCA".impute_17 * 0.0107223452594 + "CenteredDataForPCA".impute_18 * 0.158507144232 + "CenteredDataForPCA".impute_19 * -0.0323361142585 + "CenteredDataForPCA".impute_20 * -0.287513166401 + "CenteredDataForPCA".impute_21 * -0.262084381704 AS anoova_11, "CenteredDataForPCA".impute_2 * 0.0655402329182 + "CenteredDataForPCA".impute_3 * 0.122995123776 + "CenteredDataForPCA".impute_4 * 0.257835988627 + "CenteredDataForPCA".impute_5 * 0.408634963133 + "CenteredDataForPCA".impute_6 * 0.26840711854 + "CenteredDataForPCA".impute_7 * 0.0111524891811 + "CenteredDataForPCA".impute_8 * 0.00486905051948 + "CenteredDataForPCA".impute_9 * 0.214568218676 + "CenteredDataForPCA".impute_10 * 0.0147745692206 + "CenteredDataForPCA".impute_11 * 0.0286237284173 + "CenteredDataForPCA".impute_12 * -0.269413371998 + "CenteredDataForPCA".impute_13 * -0.412282433848 + "CenteredDataForPCA".impute_14 * 0.133560042742 + "CenteredDataForPCA".impute_15 * 0.0228868816555 + "CenteredDataForPCA".impute_16 * -0.0349424014122 + "CenteredDataForPCA".impute_17 * -0.161247679437 + "CenteredDataForPCA".impute_18 * -0.260350842649 + "CenteredDataForPCA".impute_19 * 0.0244090563449 + "CenteredDataForPCA".impute_20 * -0.294661417504 + "CenteredDataForPCA".impute_21 * -0.429533688649 AS anoova_12, "CenteredDataForPCA".impute_2 * -0.131798131076 + "CenteredDataForPCA".impute_3 * -0.106158290118 + "CenteredDataForPCA".impute_4 * -0.528447893501 + "CenteredDataForPCA".impute_5 * 0.245824508341 + "CenteredDataForPCA".impute_6 * 0.151441923304 + "CenteredDataForPCA".impute_7 * -0.191443018541 + "CenteredDataForPCA".impute_8 * 0.0885765486044 + "CenteredDataForPCA".impute_9 * 0.125667684208 + "CenteredDataForPCA".impute_10 * -0.0836321683448 + "CenteredDataForPCA".impute_11 * -0.184581097616 + "CenteredDataForPCA".impute_12 * 0.0958221401445 + "CenteredDataForPCA".impute_13 * 0.0349600081034 + "CenteredDataForPCA".impute_14 * -0.256305577039 + "CenteredDataForPCA".impute_15 * 0.067117528107 + "CenteredDataForPCA".impute_16 * 0.131828394938 + "CenteredDataForPCA".impute_17 * 0.448828986365 + "CenteredDataForPCA".impute_18 * -0.0380262407875 + "CenteredDataForPCA".impute_19 * 0.370739482811 + "CenteredDataForPCA".impute_20 * -0.21239708969 + "CenteredDataForPCA".impute_21 * -0.154761632601 AS anoova_13, "CenteredDataForPCA".impute_2 * -0.0546830010051 + "CenteredDataForPCA".impute_3 * -0.213392902797 + "CenteredDataForPCA".impute_4 * 0.17833630318 + "CenteredDataForPCA".impute_5 * 0.61901699466 + "CenteredDataForPCA".impute_6 * -0.264886548168 + "CenteredDataForPCA".impute_7 * -0.247497615476 + "CenteredDataForPCA".impute_8 * 0.0259172858089 + "CenteredDataForPCA".impute_9 * 0.0820830091727 + "CenteredDataForPCA".impute_10 * 0.0187876618318 + "CenteredDataForPCA".impute_11 * -0.147905727058 + "CenteredDataForPCA".impute_12 * 0.11520514333 + "CenteredDataForPCA".impute_13 * 0.381273757548 + "CenteredDataForPCA".impute_14 * -0.218166321144 + "CenteredDataForPCA".impute_15 * 0.0161118383395 + "CenteredDataForPCA".impute_16 * 0.083965853059 + "CenteredDataForPCA".impute_17 * -0.362658756822 + "CenteredDataForPCA".impute_18 * -0.0197928116832 + "CenteredDataForPCA".impute_19 * -0.125371571601 + "CenteredDataForPCA".impute_20 * -0.00528926873525 + "CenteredDataForPCA".impute_21 * 0.119254194328 AS anoova_14, "CenteredDataForPCA".impute_2 * -0.540272584556 + "CenteredDataForPCA".impute_3 * 0.221071572556 + "CenteredDataForPCA".impute_4 * -0.211407005144 + "CenteredDataForPCA".impute_5 * -0.198438907161 + "CenteredDataForPCA".impute_6 * -0.439941995415 + "CenteredDataForPCA".impute_7 * 0.0917293791675 + "CenteredDataForPCA".impute_8 * 0.0398987101381 + "CenteredDataForPCA".impute_9 * 0.204153853983 + "CenteredDataForPCA".impute_10 * -0.0446279723228 + "CenteredDataForPCA".impute_11 * -0.095338736396 + "CenteredDataForPCA".impute_12 * -0.0640403054998 + "CenteredDataForPCA".impute_13 * -0.120247315692 + "CenteredDataForPCA".impute_14 * -0.0449180453296 + "CenteredDataForPCA".impute_15 * -0.0434444405659 + "CenteredDataForPCA".impute_16 * 0.140799364366 + "CenteredDataForPCA".impute_17 * -0.278693413327 + "CenteredDataForPCA".impute_18 * -0.403705498449 + "CenteredDataForPCA".impute_19 * 0.0668020729701 + "CenteredDataForPCA".impute_20 * 0.129766194215 + "CenteredDataForPCA".impute_21 * -0.120858931458 AS anoova_15, "CenteredDataForPCA".impute_2 * 0.44686292429 + "CenteredDataForPCA".impute_3 * 0.213798638025 + "CenteredDataForPCA".impute_4 * -0.405676690524 + "CenteredDataForPCA".impute_5 * -0.210042099847 + "CenteredDataForPCA".impute_6 * 0.113148307219 + "CenteredDataForPCA".impute_7 * -0.26891143818 + "CenteredDataForPCA".impute_8 * 0.0230508384956 + "CenteredDataForPCA".impute_9 * 0.19508656389 + "CenteredDataForPCA".impute_10 * 0.0286533126267 + "CenteredDataForPCA".impute_11 * -0.0351348303622 + "CenteredDataForPCA".impute_12 * -0.280205304244 + "CenteredDataForPCA".impute_13 * 0.00663399360018 + "CenteredDataForPCA".impute_14 * -0.312216269499 + "CenteredDataForPCA".impute_15 * 0.00587038833071 + "CenteredDataForPCA".impute_16 * 0.0317333160041 + "CenteredDataForPCA".impute_17 * -0.462632300807 + "CenteredDataForPCA".impute_18 * 0.15510192165 + "CenteredDataForPCA".impute_19 * -0.0699896031528 + "CenteredDataForPCA".impute_20 * 0.00159128917469 + "CenteredDataForPCA".impute_21 * -0.00922579995682 AS anoova_16, "CenteredDataForPCA".impute_2 * 0.216596284126 + "CenteredDataForPCA".impute_3 * -0.385502405413 + "CenteredDataForPCA".impute_4 * -0.162104063855 + "CenteredDataForPCA".impute_5 * -0.0810580368668 + "CenteredDataForPCA".impute_6 * -0.107619296343 + "CenteredDataForPCA".impute_7 * 0.17713415149 + "CenteredDataForPCA".impute_8 * -0.00122314676023 + "CenteredDataForPCA".impute_9 * 0.225235005258 + "CenteredDataForPCA".impute_10 * 0.0115007763898 + "CenteredDataForPCA".impute_11 * 0.0289421035196 + "CenteredDataForPCA".impute_12 * -0.299431764043 + "CenteredDataForPCA".impute_13 * 0.499798751923 + "CenteredDataForPCA".impute_14 * 0.373979552905 + "CenteredDataForPCA".impute_15 * -0.0221067605511 + "CenteredDataForPCA".impute_16 * 0.00432748002482 + "CenteredDataForPCA".impute_17 * 0.0728730147723 + "CenteredDataForPCA".impute_18 * -0.156263493745 + "CenteredDataForPCA".impute_19 * -0.0447697729323 + "CenteredDataForPCA".impute_20 * 0.114269420357 + "CenteredDataForPCA".impute_21 * -0.390318165558 AS anoova_17, "CenteredDataForPCA".impute_2 * 0.186422785327 + "CenteredDataForPCA".impute_3 * -0.0381997038797 + "CenteredDataForPCA".impute_4 * 0.0206777486466 + "CenteredDataForPCA".impute_5 * -0.242429608705 + "CenteredDataForPCA".impute_6 * 0.247195288817 + "CenteredDataForPCA".impute_7 * 0.065771489405 + "CenteredDataForPCA".impute_8 * 0.0454758416395 + "CenteredDataForPCA".impute_9 * -0.215570948865 + "CenteredDataForPCA".impute_10 * 0.0290969807364 + "CenteredDataForPCA".impute_11 * -0.143718270578 + "CenteredDataForPCA".impute_12 * 0.282422183942 + "CenteredDataForPCA".impute_13 * 0.221945558714 + "CenteredDataForPCA".impute_14 * -0.056290503969 + "CenteredDataForPCA".impute_15 * 0.066983223992 + "CenteredDataForPCA".impute_16 * 0.0493417343196 + "CenteredDataForPCA".impute_17 * -0.144841933978 + "CenteredDataForPCA".impute_18 * -0.66020903524 + "CenteredDataForPCA".impute_19 * -0.0383256949538 + "CenteredDataForPCA".impute_20 * -0.386569039664 + "CenteredDataForPCA".impute_21 * 0.149144371724 AS anoova_18, "CenteredDataForPCA".impute_2 * 0.107817470713 + "CenteredDataForPCA".impute_3 * -0.471860649883 + "CenteredDataForPCA".impute_4 * 0.124609579031 + "CenteredDataForPCA".impute_5 * -0.238488153752 + "CenteredDataForPCA".impute_6 * -0.249990060225 + "CenteredDataForPCA".impute_7 * -0.36772575387 + "CenteredDataForPCA".impute_8 * -0.0125028068856 + "CenteredDataForPCA".impute_9 * -0.27075072455 + "CenteredDataForPCA".impute_10 * 0.0289719429296 + "CenteredDataForPCA".impute_11 * 0.0454290082502 + "CenteredDataForPCA".impute_12 * 0.137550567236 + "CenteredDataForPCA".impute_13 * -0.322253379267 + "CenteredDataForPCA".impute_14 * -0.278429550974 + "CenteredDataForPCA".impute_15 * 0.00931780777713 + "CenteredDataForPCA".impute_16 * -0.0500679066223 + "CenteredDataForPCA".impute_17 * 0.00886912906083 + "CenteredDataForPCA".impute_18 * -0.0815902381621 + "CenteredDataForPCA".impute_19 * -0.0604552283676 + "CenteredDataForPCA".impute_20 * 0.088777863458 + "CenteredDataForPCA".impute_21 * -0.445061868862 AS anoova_19, "CenteredDataForPCA".impute_2 * -1.11612044319e-16 + "CenteredDataForPCA".impute_3 * -1.46201435515e-17 + "CenteredDataForPCA".impute_4 * -3.07950816767e-16 + "CenteredDataForPCA".impute_5 * 2.76461479983e-16 + "CenteredDataForPCA".impute_6 * -1.224434021e-16 + "CenteredDataForPCA".impute_7 * 1.17006972517e-17 + "CenteredDataForPCA".impute_8 * 0.641534611616 + "CenteredDataForPCA".impute_9 * -6.40579050583e-17 + "CenteredDataForPCA".impute_10 * -0.235530125709 + "CenteredDataForPCA".impute_11 * -0.223125685397 + "CenteredDataForPCA".impute_12 * 1.32400565549e-17 + "CenteredDataForPCA".impute_13 * -6.26345656211e-17 + "CenteredDataForPCA".impute_14 * -1.70976842469e-17 + "CenteredDataForPCA".impute_15 * -0.453724374189 + "CenteredDataForPCA".impute_16 * -0.524323893444 + "CenteredDataForPCA".impute_17 * 1.82350660791e-18 + "CenteredDataForPCA".impute_18 * 1.24790342678e-16 + "CenteredDataForPCA".impute_19 * -0.0489129586964 + "CenteredDataForPCA".impute_20 * 1.77401703617e-16 + "CenteredDataForPCA".impute_21 * 1.30664844939e-17 AS anoova_20, "CenteredDataForPCA".impute_2 * -1.70185167192e-17 + "CenteredDataForPCA".impute_3 * -9.98089410627e-17 + "CenteredDataForPCA".impute_4 * -4.16104420841e-17 + "CenteredDataForPCA".impute_5 * 2.87597367338e-16 + "CenteredDataForPCA".impute_6 * -1.5201104355e-16 + "CenteredDataForPCA".impute_7 * 2.84514233136e-17 + "CenteredDataForPCA".impute_8 * 0.302497032141 + "CenteredDataForPCA".impute_9 * -1.66153031935e-17 + "CenteredDataForPCA".impute_10 * -0.706244922416 + "CenteredDataForPCA".impute_11 * 0.297180902298 + "CenteredDataForPCA".impute_12 * -1.25982789871e-16 + "CenteredDataForPCA".impute_13 * -1.53410412195e-16 + "CenteredDataForPCA".impute_14 * -8.03959559559e-17 + "CenteredDataForPCA".impute_15 * 0.496140941369 + "CenteredDataForPCA".impute_16 * 0.152818113888 + "CenteredDataForPCA".impute_17 * -1.81558358374e-16 + "CenteredDataForPCA".impute_18 * 8.00813634576e-17 + "CenteredDataForPCA".impute_19 * -0.227789281536 + "CenteredDataForPCA".impute_20 * -1.37639290434e-16 + "CenteredDataForPCA".impute_21 * 1.12631212028e-16 AS anoova_21 
FROM "CenteredDataForPCA"), 
linear_model_cte AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", 32.916826666258835 * "ADS_ano_2_OUT".anoova_2 + 13.631466023345517 * "ADS_ano_2_OUT".anoova_3 + 42.4271439743037 * "ADS_ano_2_OUT".anoova_4 + -60.70352959464247 * "ADS_ano_2_OUT".anoova_5 + -1.6746093178226575 * "ADS_ano_2_OUT".anoova_6 + -2.9047987463805174 * "ADS_ano_2_OUT".anoova_7 + -29.96415643604847 * "ADS_ano_2_OUT".anoova_8 + -53.992198312957534 * "ADS_ano_2_OUT".anoova_9 + -5.838982707262515 * "ADS_ano_2_OUT".anoova_10 + 4.2060092814863195 * "ADS_ano_2_OUT".anoova_11 + 9.813201124802074 * "ADS_ano_2_OUT".anoova_12 + 11.26730709167995 * "ADS_ano_2_OUT".anoova_13 + 0.03661625093742985 * "ADS_ano_2_OUT".anoova_14 + -41.254267525546645 * "ADS_ano_2_OUT".anoova_15 + -30.969414782237983 * "ADS_ano_2_OUT".anoova_16 + -22.291703098938402 * "ADS_ano_2_OUT".anoova_17 + 15.088643076214936 * "ADS_ano_2_OUT".anoova_18 + -21.837862433643945 * "ADS_ano_2_OUT".anoova_19 + 1.6893494024768696e-14 * "ADS_ano_2_OUT".anoova_20 + -2.882922271652764e-14 * "ADS_ano_2_OUT".anoova_21 + -156.209509332 AS "Score_0", -79.3157905964197 * "ADS_ano_2_OUT".anoova_2 + -6.852701676421603 * "ADS_ano_2_OUT".anoova_3 + -68.62305732040517 * "ADS_ano_2_OUT".anoova_4 + -6.795679767626227 * "ADS_ano_2_OUT".anoova_5 + 27.699378322491444 * "ADS_ano_2_OUT".anoova_6 + -6.561284859613099 * "ADS_ano_2_OUT".anoova_7 + -0.4457034534765897 * "ADS_ano_2_OUT".anoova_8 + -21.660272748034163 * "ADS_ano_2_OUT".anoova_9 + -40.70034576163164 * "ADS_ano_2_OUT".anoova_10 + 20.286808892207333 * "ADS_ano_2_OUT".anoova_11 + -22.90839987498355 * "ADS_ano_2_OUT".anoova_12 + 23.58960392035782 * "ADS_ano_2_OUT".anoova_13 + -32.061929911813706 * "ADS_ano_2_OUT".anoova_14 + 5.586933447426077 * "ADS_ano_2_OUT".anoova_15 + -4.494121122551295 * "ADS_ano_2_OUT".anoova_16 + -39.567077996462864 * "ADS_ano_2_OUT".anoova_17 + -15.450837812303739 * "ADS_ano_2_OUT".anoova_18 + 14.66278149339549 * "ADS_ano_2_OUT".anoova_19 + -3.9828889356409525e-14 * "ADS_ano_2_OUT".anoova_20 + -9.647043765936851e-15 * "ADS_ano_2_OUT".anoova_21 + -123.914310698 AS "Score_1", -17.653338719599642 * "ADS_ano_2_OUT".anoova_2 + -7.36857226924178 * "ADS_ano_2_OUT".anoova_3 + -50.49425870018452 * "ADS_ano_2_OUT".anoova_4 + 34.0634611575051 * "ADS_ano_2_OUT".anoova_5 + -15.395618186110934 * "ADS_ano_2_OUT".anoova_6 + 10.550593106905541 * "ADS_ano_2_OUT".anoova_7 + 31.822178607674243 * "ADS_ano_2_OUT".anoova_8 + 11.421114571245976 * "ADS_ano_2_OUT".anoova_9 + -5.521339687689026 * "ADS_ano_2_OUT".anoova_10 + -20.69574849070125 * "ADS_ano_2_OUT".anoova_11 + -16.08188047468105 * "ADS_ano_2_OUT".anoova_12 + -20.19941918783283 * "ADS_ano_2_OUT".anoova_13 + 6.697573929129473 * "ADS_ano_2_OUT".anoova_14 + 3.402131311039092 * "ADS_ano_2_OUT".anoova_15 + -0.12482778315623065 * "ADS_ano_2_OUT".anoova_16 + 30.83929677598735 * "ADS_ano_2_OUT".anoova_17 + -9.934507670425559 * "ADS_ano_2_OUT".anoova_18 + 4.171140978491653 * "ADS_ano_2_OUT".anoova_19 + -8.245078853759732e-15 * "ADS_ano_2_OUT".anoova_20 + 3.764821385651982e-14 * "ADS_ano_2_OUT".anoova_21 + -104.748679899 AS "Score_2", 27.392508046682643 * "ADS_ano_2_OUT".anoova_2 + 14.977300703339703 * "ADS_ano_2_OUT".anoova_3 + -16.917545663003473 * "ADS_ano_2_OUT".anoova_4 + 20.45551173877714 * "ADS_ano_2_OUT".anoova_5 + 20.372387154723356 * "ADS_ano_2_OUT".anoova_6 + -37.495993763416536 * "ADS_ano_2_OUT".anoova_7 + 6.75850007528195 * "ADS_ano_2_OUT".anoova_8 + 58.483524292713255 * "ADS_ano_2_OUT".anoova_9 + 26.988858236517103 * "ADS_ano_2_OUT".anoova_10 + -35.073844101009314 * "ADS_ano_2_OUT".anoova_11 + 5.982117474959726 * "ADS_ano_2_OUT".anoova_12 + 29.82470945699841 * "ADS_ano_2_OUT".anoova_13 + 1.904440784998456 * "ADS_ano_2_OUT".anoova_14 + 6.721085618030123 * "ADS_ano_2_OUT".anoova_15 + 4.163174521682746 * "ADS_ano_2_OUT".anoova_16 + 26.69392242653916 * "ADS_ano_2_OUT".anoova_17 + -0.33121752096304474 * "ADS_ano_2_OUT".anoova_18 + 7.985098525998033 * "ADS_ano_2_OUT".anoova_19 + -8.139875755558934e-14 * "ADS_ano_2_OUT".anoova_20 + 6.620982534464928e-15 * "ADS_ano_2_OUT".anoova_21 + -81.2253709562 AS "Score_3" 
FROM "ADS_ano_2_OUT"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte