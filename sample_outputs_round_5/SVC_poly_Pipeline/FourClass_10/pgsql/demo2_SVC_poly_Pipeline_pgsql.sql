-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.85962653571 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.759547686393 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.304680557124 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0329113930468 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0131545010042 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.283316049297 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0808009300605 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0892384831536 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.250621422053 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0793581409959 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "FourClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.85962653571) / 1.64093463484 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.759547686393) / 1.2997757167 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.304680557124) / 1.45853915393 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0329113930468) / 1.0626439316 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.0131545010042) / 1.26426066648 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - -0.283316049297) / 1.55208938235 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0808009300605) / 1.01232837079 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0892384831536) / 1.38139416356 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.250621422053) / 1.05032679803 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0793581409959) / 1.10601939037 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data_0" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.167477908875 AS dual_coeff, 2.21612388606 AS sv_0, -1.63243690474 AS sv_1, 2.0252164877 AS sv_2, 0.0821342204172 AS sv_3, 0.0272587914907 AS sv_4, -0.144001101104 AS sv_5, -1.38432611894 AS sv_6, 0.423299535341 AS sv_7, -1.43922390283 AS sv_8, -1.81726942414 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 0.528846294577 AS sv_0, -0.456224649739 AS sv_1, 0.00647499338599 AS sv_2, -0.0290259537938 AS sv_3, -0.614068261265 AS sv_4, -0.578779931171 AS sv_5, 1.19244534957 AS sv_6, 0.747905296103 AS sv_7, 0.741983708055 AS sv_8, 0.55082579399 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.226930831549 AS dual_coeff, -1.64113911546 AS sv_0, 1.15579823115 AS sv_1, -1.45874468124 AS sv_2, -0.353732183122 AS sv_3, -0.960892282324 AS sv_4, 0.11208137825 AS sv_5, -0.405956905771 AS sv_6, 0.324492787465 AS sv_7, 1.63553573021 AS sv_8, 0.298976378218 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.0 AS dual_coeff, 0.893335571884 AS sv_0, -0.292255872498 AS sv_1, 0.471671456139 AS sv_2, 1.45020028119 AS sv_3, -1.0254739456 AS sv_4, -0.83822653933 AS sv_5, 1.13535555583 AS sv_6, 1.46671454863 AS sv_7, 0.649009912614 AS sv_8, 0.444050143731 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.662985086463 AS sv_0, -0.402471581747 AS sv_1, 0.887980202505 AS sv_2, 0.894285035388 AS sv_3, -0.142546009071 AS sv_4, 0.195249877877 AS sv_5, 1.01622056437 AS sv_6, 0.177092733313 AS sv_7, 1.33165567965 AS sv_8, -0.964621506631 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.451868008221 AS dual_coeff, -0.896802298951 AS sv_0, 1.28124709216 AS sv_1, -0.789299509593 AS sv_2, -1.39434405207 AS sv_3, -0.952244467823 AS sv_4, -0.492240883764 AS sv_5, -0.420818824023 AS sv_6, 1.10045474788 AS sv_7, -0.498261570438 AS sv_8, 1.44511911268 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 0.976042541402 AS dual_coeff, 0.321871153369 AS sv_0, -0.29962161017 AS sv_1, -0.221883450895 AS sv_2, 0.861363457809 AS sv_3, -0.584031447769 AS sv_4, -0.610394708213 AS sv_5, 1.61593312992 AS sv_6, 0.70758542369 AS sv_7, -1.14644479841 AS sv_8, 0.367238259661 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -0.382577105835 AS sv_0, 0.476993454734 AS sv_1, -0.373580081663 AS sv_2, -0.840896603608 AS sv_3, -1.08972421242 AS sv_4, -0.256897728246 AS sv_5, 0.209694507761 AS sv_6, 0.937891338245 AS sv_7, 0.457291596238 AS sv_8, 0.225206126648 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 0.293857994908 AS dual_coeff, -1.46687941004 AS sv_0, 0.630982155643 AS sv_1, -1.56577440613 AS sv_2, -1.46378685994 AS sv_3, -0.643026651871 AS sv_4, 0.145791760985 AS sv_5, -0.183699552221 AS sv_6, -0.114397375153 AS sv_7, -0.392419541796 AS sv_8, 1.45458962906 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.517319911165 AS dual_coeff, 0.910982130761 AS sv_0, -0.997707129883 AS sv_1, -0.570719004071 AS sv_2, 0.245103631379 AS sv_3, -0.556136912042 AS sv_4, -1.44355303526 AS sv_5, -1.03477711823 AS sv_6, 1.00829672457 AS sv_7, -0.879915979271 AS sv_8, 0.527651504087 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.908078921812 AS dual_coeff, -1.36341403955 AS sv_0, -0.624691387293 AS sv_1, -2.19446099864 AS sv_2, -0.458144806126 AS sv_3, 0.157532784164 AS sv_4, 0.339007514856 AS sv_5, 0.243428190865 AS sv_6, -1.42893044101 AS sv_7, 0.298857424467 AS sv_8, 1.25088861728 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.0399542728047 AS dual_coeff, 1.09312296432 AS sv_0, -2.55988912237 AS sv_1, -0.945097824793 AS sv_2, -0.229848136731 AS sv_3, -0.410078033335 AS sv_4, -0.905851115692 AS sv_5, 0.284486880219 AS sv_6, -0.121872460184 AS sv_7, 0.0916909058103 AS sv_8, 1.1824577039 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, 0.718885101621 AS sv_0, 0.112208389416 AS sv_1, 1.17407401858 AS sv_2, -0.424778301116 AS sv_3, -0.710457791356 AS sv_4, -0.0402376696465 AS sv_5, -0.142412531505 AS sv_6, 1.01476004892 AS sv_7, 0.364995701933 AS sv_8, 0.123245521371 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 0.530768374286 AS sv_0, -0.517468384472 AS sv_1, -0.213202056498 AS sv_2, 0.871411405673 AS sv_3, -0.756360038035 AS sv_4, -0.795398912272 AS sv_5, 0.147332996925 AS sv_6, 0.911952440217 AS sv_7, -1.72953979888 AS sv_8, 0.218973954411 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, -0.4469361243 AS sv_0, -0.501312136936 AS sv_1, -1.36564477302 AS sv_2, -1.54155563111 AS sv_3, -1.00738983797 AS sv_4, -0.479901007042 AS sv_5, -0.694104215497 AS sv_6, 0.380289914372 AS sv_7, -0.986784565957 AS sv_8, -0.331151633602 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.825072466845 AS sv_0, -1.10342464241 AS sv_1, -0.297706550512 AS sv_2, 0.832731581818 AS sv_3, -0.399997687072 AS sv_4, -0.88742853389 AS sv_5, -0.846497824868 AS sv_6, 0.537760818481 AS sv_7, -0.347014177891 AS sv_8, -0.908109037215 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.214392337057 AS sv_0, 0.919226011692 AS sv_1, 0.736678651116 AS sv_2, -0.508537543994 AS sv_3, -0.6672622057 AS sv_4, 0.401756562238 AS sv_5, 0.66542305051 AS sv_6, 0.696053898767 AS sv_7, 1.43445488414 AS sv_8, 0.26940329314 AS sv_9) AS "Values"), 
kernel_cte_0 AS 
(SELECT t_1."KEY" AS "KEY_0", t_1.dot_product AS "Score_0" 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(full_join_data_sv_1.dot_prod1) + 0.389964794501 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_0".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data_0".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data_0".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data_0".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data_0".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data_0".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data_0".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data_0".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data_0".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data_0".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data_0".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_0") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
"SV_data_1" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.513313369759 AS dual_coeff, 1.38725889179 AS sv_0, -0.409164815977 AS sv_1, -0.27185227794 AS sv_2, 1.00682019607 AS sv_3, 1.92589010701 AS sv_4, -2.16638624559 AS sv_5, -1.24239348079 AS sv_6, 0.179659920215 AS sv_7, -0.50210236415 AS sv_8, -0.175429753234 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.120034410111 AS sv_0, 0.792563951746 AS sv_1, 0.814138652843 AS sv_2, 1.12425857195 AS sv_3, 0.600869812804 AS sv_4, 0.545019450893 AS sv_5, 1.07577356772 AS sv_6, -0.288641899063 AS sv_7, 0.0911974373269 AS sv_8, 0.794557483745 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -1.21948538304 AS sv_0, 0.772830671426 AS sv_1, -0.202421102708 AS sv_2, -0.41310186895 AS sv_3, 0.297335523194 AS sv_4, 1.24650371857 AS sv_5, 0.272383194597 AS sv_6, -1.04752027455 AS sv_7, 0.438622950542 AS sv_8, 0.287320130573 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.307925332461 AS sv_0, 0.171783851578 AS sv_1, -1.31689689661 AS sv_2, -0.873048874238 AS sv_3, 0.307063424508 AS sv_4, -2.13381191173 AS sv_5, 0.239898691171 AS sv_6, 1.01251583933 AS sv_7, -1.81549373413 AS sv_8, 0.0608563552863 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.513376221867 AS sv_0, 1.11068685937 AS sv_1, 0.60517952136 AS sv_2, -0.534492652039 AS sv_3, 0.563068466415 AS sv_4, 0.716037156103 AS sv_5, 0.188259053029 AS sv_6, -0.388825112989 AS sv_7, -0.435248839692 AS sv_8, 0.40055396901 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.741639275102 AS sv_0, -0.926584877683 AS sv_1, -1.28739223158 AS sv_2, 0.174634553491 AS sv_3, 0.596408697976 AS sv_4, 0.59688622525 AS sv_5, -0.680603334027 AS sv_6, -1.66116979287 AS sv_7, 0.473989033006 AS sv_8, -1.22738839987 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.0614305680189 AS dual_coeff, 1.52579022091 AS sv_0, -0.257516143077 AS sv_1, 0.907551932971 AS sv_2, 1.12123986969 AS sv_3, 1.88976566434 AS sv_4, -1.18511339578 AS sv_5, -1.7984868527 AS sv_6, -0.0628459727831 AS sv_7, 1.43047255737 AS sv_8, -1.14138950651 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.00678645295912 AS dual_coeff, -1.19754602612 AS sv_0, 2.72306693589 AS sv_1, 1.19516484428 AS sv_2, 1.10381567209 AS sv_3, 1.11828441303 AS sv_4, 1.29971750176 AS sv_5, -1.57157531019 AS sv_6, -0.527056222784 AS sv_7, 0.130990770839 AS sv_8, 1.26118065132 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.343283081916 AS sv_0, 0.058297367191 AS sv_1, 0.502806753316 AS sv_2, -0.22295576049 AS sv_3, 1.80361261051 AS sv_4, 0.102698740738 AS sv_5, -0.134598438018 AS sv_6, -1.09505932741 AS sv_7, -1.30968970099 AS sv_8, -0.663010440057 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.102489861564 AS sv_0, 1.47465575537 AS sv_1, -0.0153311784644 AS sv_2, -0.260980937709 AS sv_3, 0.426296604352 AS sv_4, -1.34356476385 AS sv_5, 1.81683788965 AS sv_6, 1.1996196683 AS sv_7, 0.833067935052 AS sv_8, 1.13914847251 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, -0.881414090007 AS sv_0, 0.917236327499 AS sv_1, -0.0366615325162 AS sv_2, 1.01966292886 AS sv_3, 1.30910610269 AS sv_4, 0.834154107387 AS sv_5, 0.219065613804 AS sv_6, -1.30226651656 AS sv_7, -0.697044653181 AS sv_8, -0.699210954819 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.561444952523 AS sv_0, 0.36932651538 AS sv_1, -0.954243567288 AS sv_2, -1.3383054532 AS sv_3, 0.317569460659 AS sv_4, -0.40096991874 AS sv_5, 0.548749592454 AS sv_6, -0.169051360554 AS sv_7, 0.131347884545 AS sv_8, 0.456499502965 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.794980091932 AS sv_0, -0.25721666694 AS sv_1, -0.760872266883 AS sv_2, -1.29417122851 AS sv_3, 0.730282241166 AS sv_4, 0.758761068884 AS sv_5, -1.58487027994 AS sv_6, -1.47712540612 AS sv_7, 0.579039681104 AS sv_8, 0.0382580129975 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.642151666317 AS sv_0, 1.06982031568 AS sv_1, 1.26362388789 AS sv_2, -1.03610487181 AS sv_3, 1.76677416701 AS sv_4, -0.359076612391 AS sv_5, 0.796808141864 AS sv_6, -0.106836933955 AS sv_7, -1.09031581265 AS sv_8, 0.51966634022 AS sv_9) AS "Values"), 
kernel_cte_1 AS 
(SELECT t_2."KEY" AS "KEY_1", t_2.dot_product AS "Score_1" 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(full_join_data_sv_2.dot_prod1) + 0.615489102337 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_1".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data_1".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data_1".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data_1".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data_1".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data_1".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data_1".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data_1".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data_1".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data_1".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data_1".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_1") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
"SV_data_2" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.930677398374 AS dual_coeff, -0.813200601461 AS sv_0, 0.331071614003 AS sv_1, 0.790527886343 AS sv_2, 0.521466558786 AS sv_3, -0.9641980993 AS sv_4, 1.929471128 AS sv_5, -1.30496279902 AS sv_6, -0.464405514713 AS sv_7, -0.840276503485 AS sv_8, 1.50896920895 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.193442178733 AS dual_coeff, -0.86954576385 AS sv_0, -0.898974408538 AS sv_1, -0.93874861031 AS sv_2, -1.81585383446 AS sv_3, -0.725859209403 AS sv_4, 1.07078057564 AS sv_5, 1.70022838654 AS sv_6, -0.989416908921 AS sv_7, -1.69771651281 AS sv_8, -2.29278332071 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -0.0674798763007 AS sv_0, -0.283324890817 AS sv_1, 0.131506751869 AS sv_2, 1.36316755439 AS sv_3, -1.29308738139 AS sv_4, 0.377477639494 AS sv_5, -0.34649784956 AS sv_6, 0.551688362073 AS sv_7, 0.422348425162 AS sv_8, -0.883989321262 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.824856864101 AS sv_0, -2.22284686377 AS sv_1, 0.053402452594 AS sv_2, 0.976765624053 AS sv_3, -1.39181380549 AS sv_4, 0.327208028325 AS sv_5, 0.097598165948 AS sv_6, 0.0628205182538 AS sv_7, 0.942835346722 AS sv_8, 0.298835162475 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.739686823362 AS sv_0, -1.23304726803 AS sv_1, -0.314866749401 AS sv_2, 0.049704867711 AS sv_3, -0.232046876127 AS sv_4, -0.642141082098 AS sv_5, 0.472313147098 AS sv_6, 0.183910819719 AS sv_7, 0.202373080238 AS sv_8, -1.19398329435 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.834360051695 AS sv_0, -0.294223973428 AS sv_1, -0.890974288888 AS sv_2, -0.288423592077 AS sv_3, -0.786615932012 AS sv_4, 0.571908352264 AS sv_5, 0.642392258786 AS sv_6, -0.356749394089 AS sv_7, 0.378118887686 AS sv_8, 0.362330020691 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -2.01663819415 AS sv_0, 0.807967769627 AS sv_1, -1.85135082356 AS sv_2, -0.0123729009438 AS sv_3, 0.428366579633 AS sv_4, 0.708650253085 AS sv_5, -0.650773488313 AS sv_6, -1.35357741709 AS sv_7, -0.0894884449365 AS sv_8, 0.343301947839 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, -2.31102846576 AS sv_0, 0.515086614082 AS sv_1, -2.12776013011 AS sv_2, 1.63030687735 AS sv_3, 0.769946277238 AS sv_4, 1.16154939975 AS sv_5, -0.0363264560955 AS sv_6, -2.1410506867 AS sv_7, -1.29717831726 AS sv_8, -0.68211904076 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.892672804175 AS dual_coeff, -1.02606380641 AS sv_0, 0.714860813791 AS sv_1, 0.585152729049 AS sv_2, -1.82968141023 AS sv_3, -1.79367971096 AS sv_4, 1.67387802933 AS sv_5, 0.0295532276665 AS sv_6, 0.334538250118 AS sv_7, 0.0715139431722 AS sv_8, 0.391033578499 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.995233010996 AS sv_0, -1.35377407768 AS sv_1, 0.0762028998383 AS sv_2, -1.13264370369 AS sv_3, 0.0674148520913 AS sv_4, -0.507417139191 AS sv_5, -1.88608147696 AS sv_6, -0.00733992256351 AS sv_7, 0.509385036549 AS sv_8, -0.771912798011 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.521087629726 AS sv_0, -0.682304875646 AS sv_1, 0.497090004008 AS sv_2, -2.23755810558 AS sv_3, -0.0246251328777 AS sv_4, 0.227979137294 AS sv_5, 1.7947738057 AS sv_6, -0.16587018091 AS sv_7, 0.385648376273 AS sv_8, 1.17883035217 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.0190981468895 AS sv_0, -0.174955231919 AS sv_1, 0.407418918655 AS sv_2, 0.416326895108 AS sv_3, -0.874485731426 AS sv_4, 0.559229649879 AS sv_5, -1.19468647713 AS sv_6, 0.262936461119 AS sv_7, -0.752862285595 AS sv_8, 0.496597489334 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.398931068936 AS sv_0, 0.315898563041 AS sv_1, 0.614344026211 AS sv_2, 0.0790302336604 AS sv_3, -1.06974047569 AS sv_4, 1.0272025723 AS sv_5, 1.40940245034 AS sv_6, 0.249626831046 AS sv_7, -0.68025139767 AS sv_8, -0.147276007206 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.231135106605 AS dual_coeff, -0.708064811325 AS sv_0, 0.361112621758 AS sv_1, 1.18578204791 AS sv_2, -1.37540507225 AS sv_3, -0.317183381501 AS sv_4, 2.23416774582 AS sv_5, 0.404569342744 AS sv_6, -0.982020743134 AS sv_7, 1.5579350586 AS sv_8, -1.37648115003 AS sv_9) AS "Values"), 
kernel_cte_2 AS 
(SELECT t_3."KEY" AS "KEY_2", t_3.dot_product AS "Score_2" 
FROM (SELECT full_join_data_sv_3."KEY" AS "KEY", sum(full_join_data_sv_3.dot_prod1) + 0.273737862241 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_2".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data_2".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data_2".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data_2".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data_2".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data_2".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data_2".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data_2".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data_2".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data_2".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data_2".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_2") AS full_join_data_sv_3 GROUP BY full_join_data_sv_3."KEY") AS t_3), 
"SV_data_3" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.354625563878 AS sv_0, 0.446907003633 AS sv_1, 0.346804789813 AS sv_2, 0.589418048084 AS sv_3, 0.887039746092 AS sv_4, -0.489669202054 AS sv_5, 0.255112017899 AS sv_6, 0.0516426756747 AS sv_7, 1.57672474245 AS sv_8, 0.573843059336 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.353322712993 AS sv_0, 0.439805692568 AS sv_1, -0.953224933024 AS sv_2, 0.830631755773 AS sv_3, -0.0920552373682 AS sv_4, -0.847244613666 AS sv_5, -1.88907818261 AS sv_6, 0.485540660168 AS sv_7, -1.58215317977 AS sv_8, -1.2018150044 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.231163565209 AS dual_coeff, -1.23784930101 AS sv_0, -0.0121398012704 AS sv_1, -1.39918830249 AS sv_2, -1.76713093868 AS sv_3, 0.55575636583 AS sv_4, 0.572009784446 AS sv_5, 1.08094852702 AS sv_6, -1.39159040803 AS sv_7, 1.7780964679 AS sv_8, -1.28919431295 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -1.1527904214 AS sv_0, 1.17136848841 AS sv_1, -0.486125005225 AS sv_2, -0.0194133285853 AS sv_3, 0.744113934415 AS sv_4, 0.528502158816 AS sv_5, -0.283332917173 AS sv_6, -0.778524644891 AS sv_7, 1.20653588873 AS sv_8, 0.437772968088 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, -0.108034004238 AS sv_0, -0.986390369341 AS sv_1, 0.450702575344 AS sv_2, 0.282157276958 AS sv_3, 0.839850722719 AS sv_4, 1.5677523056 AS sv_5, -1.68334256895 AS sv_6, -1.92608930582 AS sv_7, 2.47435715231 AS sv_8, 0.524469412301 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.0 AS dual_coeff, 0.303188809346 AS sv_0, -1.19750910044 AS sv_1, 0.985423566128 AS sv_2, -0.535318893943 AS sv_3, 1.7266246937 AS sv_4, 1.7266731124 AS sv_5, 0.389734797787 AS sv_6, -2.50641747122 AS sv_7, -1.05118858861 AS sv_8, -1.50708894197 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.939319912172 AS sv_0, 0.830008996801 AS sv_1, 1.55872055409 AS sv_2, -0.952304058434 AS sv_3, 1.60685502257 AS sv_4, -0.349353505715 AS sv_5, 0.341828785746 AS sv_6, 0.0416573221737 AS sv_7, 0.00332141903096 AS sv_8, -0.328868069631 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.541338359823 AS sv_0, 0.57281523436 AS sv_1, 1.11816621237 AS sv_2, 1.19548225636 AS sv_3, 1.74921006839 AS sv_4, 0.046275199693 AS sv_5, 0.412481360768 AS sv_6, -0.619192509106 AS sv_7, -0.0360596523232 AS sv_8, 0.353426589168 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.0615725276613 AS sv_0, 0.203648976662 AS sv_1, 1.4214311352 AS sv_2, 0.489956951854 AS sv_3, -1.06555760922 AS sv_4, 1.4630900346 AS sv_5, -1.04979198312 AS sv_6, 0.188088238408 AS sv_7, 0.613580229603 AS sv_8, 0.046067716726 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 0.87080244585 AS sv_0, 1.9237673606 AS sv_1, 2.36653407117 AS sv_2, 0.267439916128 AS sv_3, 1.96196619635 AS sv_4, -0.164153386083 AS sv_5, 1.04832860058 AS sv_6, 0.291534191549 AS sv_7, -0.362206435701 AS sv_8, -1.84835545926 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, -0.906182092524 AS sv_0, 1.9417932932 AS sv_1, -0.339632163695 AS sv_2, -0.617049642155 AS sv_3, 0.317568672292 AS sv_4, -0.383945756768 AS sv_5, -0.631260934635 AS sv_6, 0.519366205683 AS sv_7, -1.42633347205 AS sv_8, -0.0932065329549 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.86917453329 AS dual_coeff, -0.749850571669 AS sv_0, 1.37494669642 AS sv_1, -0.676545917914 AS sv_2, 0.0967642315857 AS sv_3, 0.0450125974697 AS sv_4, -0.600276019264 AS sv_5, 1.47609035863 AS sv_6, 0.578198056658 AS sv_7, 2.11070139682 AS sv_8, 1.64392726373 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.783807626272 AS sv_0, 0.0588516991214 AS sv_1, 0.702149696657 AS sv_2, -1.03470847531 AS sv_3, 1.20326027669 AS sv_4, -0.473697036572 AS sv_5, 0.150388587674 AS sv_6, -0.148814380452 AS sv_7, -0.246626643306 AS sv_8, -1.31174484644 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.174592297619 AS sv_0, 0.484811609766 AS sv_1, 0.0981076032937 AS sv_2, -0.233281651634 AS sv_3, 1.23974834593 AS sv_4, 0.128216450604 AS sv_5, -0.0309183088793 AS sv_6, -0.767037640607 AS sv_7, 0.920875791544 AS sv_8, 0.446753761242 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -1.25663874785 AS sv_0, 0.343976983502 AS sv_1, -1.1361079145 AS sv_2, 0.503396659857 AS sv_3, -0.909842043558 AS sv_4, 0.485050659069 AS sv_5, -1.09453915521 AS sv_6, -0.115023644324 AS sv_7, -0.0132300954046 AS sv_8, -1.25882645394 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.504017014066 AS dual_coeff, -0.155056863269 AS sv_0, -0.736099537699 AS sv_1, 0.57187154671 AS sv_2, 0.524233658754 AS sv_3, 0.433067505772 AS sv_4, 1.54731814774 AS sv_5, -1.96289145757 AS sv_6, -1.51148686929 AS sv_7, 0.566971831314 AS sv_8, -1.13262209522 AS sv_9) AS "Values"), 
kernel_cte_3 AS 
(SELECT t_4."KEY" AS "KEY_3", t_4.dot_product AS "Score_3" 
FROM (SELECT full_join_data_sv_4."KEY" AS "KEY", sum(full_join_data_sv_4.dot_prod1) + -0.000442474115399 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data_3".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data_3".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data_3".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data_3".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data_3".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data_3".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data_3".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data_3".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data_3".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data_3".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data_3".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data_3") AS full_join_data_sv_4 GROUP BY full_join_data_sv_4."KEY") AS t_4), 
"OVR_Join_CTE" AS 
(SELECT kernel_cte_0."KEY_0" AS "KEY_0", kernel_cte_0."Score_0" AS "Score_0", kernel_cte_1."KEY_1" AS "KEY_1", kernel_cte_1."Score_1" AS "Score_1", kernel_cte_2."KEY_2" AS "KEY_2", kernel_cte_2."Score_2" AS "Score_2", kernel_cte_3."KEY_3" AS "KEY_3", kernel_cte_3."Score_3" AS "Score_3" 
FROM kernel_cte_0 LEFT OUTER JOIN kernel_cte_1 ON kernel_cte_0."KEY_0" = kernel_cte_1."KEY_1" LEFT OUTER JOIN kernel_cte_2 ON kernel_cte_2."KEY_2" = kernel_cte_1."KEY_1" LEFT OUTER JOIN kernel_cte_3 ON kernel_cte_3."KEY_3" = kernel_cte_2."KEY_2"), 
orig_cte AS 
(SELECT "OVR_Join_CTE"."KEY_0" AS "KEY", "OVR_Join_CTE"."Score_0" AS "Score_0", "OVR_Join_CTE"."Score_1" AS "Score_1", "OVR_Join_CTE"."Score_2" AS "Score_2", "OVR_Join_CTE"."Score_3" AS "Score_3", CAST(NULL AS FLOAT(53)) AS "Proba_0", CAST(NULL AS FLOAT(53)) AS "Proba_1", CAST(NULL AS FLOAT(53)) AS "Proba_2", CAST(NULL AS FLOAT(53)) AS "Proba_3", CAST(NULL AS FLOAT(53)) AS "LogProba_0", CAST(NULL AS FLOAT(53)) AS "LogProba_1", CAST(NULL AS FLOAT(53)) AS "LogProba_2", CAST(NULL AS FLOAT(53)) AS "LogProba_3", CAST(NULL AS FLOAT(53)) AS "Decision" 
FROM "OVR_Join_CTE"), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
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
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte