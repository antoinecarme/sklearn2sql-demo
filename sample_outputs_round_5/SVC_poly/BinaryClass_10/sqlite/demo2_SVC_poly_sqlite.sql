-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, -0.911310237314 AS sv_0, 0.638186257622 AS sv_1, 0.285540742541 AS sv_2, -0.954618798451 AS sv_3, -0.944599498746 AS sv_4, -0.244860046433 AS sv_5, 0.0507612317149 AS sv_6, 0.100488577491 AS sv_7, -0.167821821256 AS sv_8, 1.43859516023 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.0957317276744 AS dual_coeff, 0.512504030929 AS sv_0, 2.26496815704 AS sv_1, 0.699241778432 AS sv_2, -1.08754002814 AS sv_3, 1.23588102208 AS sv_4, -0.637915545732 AS sv_5, -0.302901110247 AS sv_6, -0.360185027465 AS sv_7, -1.15951146933 AS sv_8, 0.851445941526 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.142580994 AS dual_coeff, -1.26492952634 AS sv_0, -0.885401764454 AS sv_1, 0.187961391128 AS sv_2, -1.07370366422 AS sv_3, -1.42016588406 AS sv_4, 1.78195605326 AS sv_5, 0.0656488816312 AS sv_6, -0.244101954577 AS sv_7, -0.038930702094 AS sv_8, -1.19547977098 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.0235352454411 AS dual_coeff, -0.457748141318 AS sv_0, 1.36112713736 AS sv_1, 0.695759030825 AS sv_2, -1.77275989855 AS sv_3, 0.0865389379993 AS sv_4, 0.112156359388 AS sv_5, 0.225457800198 AS sv_6, -0.145610174844 AS sv_7, -1.08257574528 AS sv_8, -1.55669446038 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.626655044105 AS sv_0, 0.200856813045 AS sv_1, -1.53829582961 AS sv_2, -0.921597813752 AS sv_3, 1.33408838984 AS sv_4, 0.110565266466 AS sv_5, -0.822930275151 AS sv_6, -0.375141489531 AS sv_7, -1.10269937779 AS sv_8, 0.101372785616 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, -0.418873692277 AS sv_0, 0.753237979082 AS sv_1, 0.822997726407 AS sv_2, -0.891160575288 AS sv_3, -0.237934541842 AS sv_4, -0.341025867933 AS sv_5, 1.45440342475 AS sv_6, -0.980119426419 AS sv_7, -0.426334753833 AS sv_8, 1.48038969303 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.0797670283207 AS dual_coeff, -1.33401636722 AS sv_0, -0.21104916161 AS sv_1, -0.877278740997 AS sv_2, -1.05850212838 AS sv_3, -1.5297644822 AS sv_4, 0.24376909075 AS sv_5, 0.160464344416 AS sv_6, 0.0744150409608 AS sv_7, 0.0159440986909 AS sv_8, 0.389050458343 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, -0.295932370766 AS sv_0, -1.39532596914 AS sv_1, 0.407761115139 AS sv_2, -0.911788485683 AS sv_3, -0.0456882743035 AS sv_4, -0.887230045271 AS sv_5, 0.675554636197 AS sv_6, 1.47469645113 AS sv_7, -0.519027113419 AS sv_8, -0.347171735913 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.350760568066 AS sv_0, -0.490131126447 AS sv_1, 0.535813105496 AS sv_2, -0.971886453444 AS sv_3, 0.944561526802 AS sv_4, 0.153016368287 AS sv_5, 0.127375970134 AS sv_6, -1.29305789998 AS sv_7, -0.96923820164 AS sv_8, 1.14885382636 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -1.18482424253 AS sv_0, -0.375039671782 AS sv_1, -0.491507164969 AS sv_2, -0.973709990529 AS sv_3, -1.34411050541 AS sv_4, -1.20214589134 AS sv_5, -0.104487256731 AS sv_6, 0.663640056644 AS sv_7, -0.011765469544 AS sv_8, -0.235864973019 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.108852986624 AS dual_coeff, -1.55835236897 AS sv_0, 0.0854949477195 AS sv_1, 1.27829527351 AS sv_2, -0.984932313737 AS sv_3, -1.89614992409 AS sv_4, 0.302620256733 AS sv_5, 0.900187127721 AS sv_6, 0.751660954861 AS sv_7, 0.21281774667 AS sv_8, -0.851672375389 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, -0.325102240562 AS sv_0, 0.849050297746 AS sv_1, -0.723959473937 AS sv_2, -1.2684709052 AS sv_3, 0.0655480924963 AS sv_4, -1.07997435411 AS sv_5, -0.385868844296 AS sv_6, 0.169407647469 AS sv_7, -0.776139177908 AS sv_8, 0.479636058841 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.315015949424 AS dual_coeff, 0.998845992022 AS sv_0, 0.319136702353 AS sv_1, 2.12153446013 AS sv_2, -0.430991213553 AS sv_3, 1.67617991116 AS sv_4, -1.29461573462 AS sv_5, 1.74933757436 AS sv_6, -0.403775429621 AS sv_7, -0.956405864784 AS sv_8, 0.276179753487 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.241792441613 AS dual_coeff, 1.03681098533 AS sv_0, 2.81324255016 AS sv_1, -0.140880816905 AS sv_2, -0.703330671391 AS sv_3, 1.85092274453 AS sv_4, 0.390824402418 AS sv_5, 0.0920516199718 AS sv_6, 0.296868512207 AS sv_7, -1.19033439767 AS sv_8, -0.211778076173 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.0766078256375 AS dual_coeff, 0.481678408622 AS sv_0, -0.823009563996 AS sv_1, -1.7701672586 AS sv_2, -0.966148319362 AS sv_3, 1.13726285243 AS sv_4, 0.374417787152 AS sv_5, -0.393238019315 AS sv_6, -0.228755712722 AS sv_7, -1.0465591918 AS sv_8, -1.2387839611 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 0.554058039717 AS sv_0, 0.349583717008 AS sv_1, 1.00656281395 AS sv_2, -0.946565728388 AS sv_3, 1.23668163779 AS sv_4, 0.500895854002 AS sv_5, -0.0572457818399 AS sv_6, 0.392339635378 AS sv_7, -1.07663991038 AS sv_8, -0.132304389544 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, -0.432469424833 AS sv_0, -0.365642449488 AS sv_1, -0.0401731742755 AS sv_2, -0.998017482335 AS sv_3, -0.211851013074 AS sv_4, 0.195556774456 AS sv_5, 0.185697399833 AS sv_6, 0.0924649866146 AS sv_7, -0.50032900186 AS sv_8, 0.275299463686 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.886850343215 AS dual_coeff, -0.443483915599 AS sv_0, 0.657015294056 AS sv_1, 0.574700364203 AS sv_2, -0.954291281828 AS sv_3, -0.247241129172 AS sv_4, -1.10550355869 AS sv_5, -1.64758530345 AS sv_6, -0.248541327865 AS sv_7, -0.459698403062 AS sv_8, -1.24052788652 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.636732445958 AS sv_0, -0.440484666873 AS sv_1, -0.266263471742 AS sv_2, -1.04402105475 AS sv_3, -0.496438594589 AS sv_4, -0.383907205192 AS sv_5, -0.0460717743578 AS sv_6, 1.65231427381 AS sv_7, -0.40828967195 AS sv_8, -0.27146987208 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.466651035391 AS dual_coeff, 0.222397202641 AS sv_0, 1.4708354376 AS sv_1, -0.125033860666 AS sv_2, -0.869252640803 AS sv_3, 0.708657616785 AS sv_4, -0.0791086862277 AS sv_5, -1.58596272612 AS sv_6, 0.505179620794 AS sv_7, -0.809858887405 AS sv_8, -0.445946118028 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, -0.990491945782 AS sv_0, -0.244241025482 AS sv_1, -0.534702820847 AS sv_2, -1.04593478491 AS sv_3, -1.0230422157 AS sv_4, -0.18479655819 AS sv_5, -0.919193493988 AS sv_6, -1.56163009338 AS sv_7, -0.188865373437 AS sv_8, 0.416750151017 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.420953390071 AS dual_coeff, 0.432481062407 AS sv_0, -0.333136504163 AS sv_1, 0.22160019984 AS sv_2, -0.870166369545 AS sv_3, 1.0222761784 AS sv_4, -1.98369167813 AS sv_5, -0.884525661327 AS sv_6, -0.0190902911782 AS sv_7, -0.94174893679 AS sv_8, -1.09507160586 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.618616896381 AS dual_coeff, -1.21233799272 AS sv_0, 1.24253232577 AS sv_1, -0.200554173537 AS sv_2, -1.00404734735 AS sv_3, -1.37197164738 AS sv_4, -0.379517081658 AS sv_5, -0.464780439932 AS sv_6, 1.12019525163 AS sv_7, -0.018002510977 AS sv_8, -0.412476185163 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.213311695708 AS sv_0, -0.124701813022 AS sv_1, 0.487727914504 AS sv_2, 0.816842727244 AS sv_3, -0.0363071565995 AS sv_4, -0.760007389583 AS sv_5, -0.0655325978476 AS sv_6, -1.04834512603 AS sv_7, 0.497329130012 AS sv_8, -0.544861743097 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.926843603406 AS dual_coeff, -0.267488066133 AS sv_0, 1.14164777117 AS sv_1, -0.0489391902151 AS sv_2, 1.20040349353 AS sv_3, -0.919536744531 AS sv_4, 0.720499381598 AS sv_5, 1.17871153118 AS sv_6, 0.839067320126 AS sv_7, 1.09363422892 AS sv_8, 0.687227212973 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.182507220792 AS dual_coeff, 0.271545050714 AS sv_0, -1.74043649541 AS sv_1, -1.2041618606 AS sv_2, 0.869331847242 AS sv_3, 0.0277457258146 AS sv_4, 0.0657499918794 AS sv_5, 1.11709801018 AS sv_6, -2.16713723224 AS sv_7, 0.501482804091 AS sv_8, 0.112870138369 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.188981304953 AS dual_coeff, 1.68121153748 AS sv_0, -0.152788480592 AS sv_1, 0.340630087432 AS sv_2, 0.694050295982 AS sv_3, 2.20550844243 AS sv_4, -0.180083663113 AS sv_5, -0.321915776654 AS sv_6, -1.15232764739 AS sv_7, -0.514070781185 AS sv_8, 0.414921088996 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.990923019269 AS dual_coeff, 1.53476248746 AS sv_0, 0.403582239597 AS sv_1, 1.42223054227 AS sv_2, 0.209630287548 AS sv_3, 2.19730058058 AS sv_4, -0.134473745813 AS sv_5, -0.909067580851 AS sv_6, 0.483374346974 AS sv_7, -0.796551034736 AS sv_8, -1.37497014206 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 0.698490848143 AS dual_coeff, -0.700764670577 AS sv_0, 0.500160870199 AS sv_1, -1.49353435454 AS sv_2, 0.823917534764 AS sv_3, -1.40220814776 AS sv_4, -1.00350246445 AS sv_5, 0.794815379862 AS sv_6, -1.14248814999 AS sv_7, 1.0735759515 AS sv_8, 1.51183754345 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.588200047055 AS sv_0, 1.83601112971 AS sv_1, 0.72700365525 AS sv_2, 0.583839766812 AS sv_3, 0.623703850492 AS sv_4, -0.301462358854 AS sv_5, 0.376483435905 AS sv_6, -0.647826219969 AS sv_7, 0.0833764821413 AS sv_8, 0.673746464581 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.375530939263 AS dual_coeff, 1.62902417288 AS sv_0, 0.38107454251 AS sv_1, -2.6117859074 AS sv_2, -0.262929684958 AS sv_3, 2.54283289114 AS sv_4, 0.274645042611 AS sv_5, 0.896706673788 AS sv_6, 0.672045881181 AS sv_7, -1.22018577647 AS sv_8, 0.287598825571 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.048533326957 AS sv_0, 0.41628207856 AS sv_1, -0.701049350634 AS sv_2, 0.741863980899 AS sv_3, -0.249456265304 AS sv_4, -1.15476015056 AS sv_5, -0.374361903801 AS sv_6, -1.19710101338 AS sv_7, 0.542346429685 AS sv_8, -1.22259819202 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -0.770107603986 AS sv_0, 0.130481995731 AS sv_1, -0.345816973562 AS sv_2, -0.949992568811 AS sv_3, -0.736081837882 AS sv_4, -0.0375387049706 AS sv_5, -0.0527560939784 AS sv_6, 0.112163776991 AS sv_7, -0.252423336486 AS sv_8, 0.114695840815 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.293251303448 AS sv_0, 1.51942726429 AS sv_1, 0.0780291441641 AS sv_2, 0.957671219776 AS sv_3, 0.0217872907578 AS sv_4, 0.574861608401 AS sv_5, -0.0231556671284 AS sv_6, 0.120810475663 AS sv_7, 0.55611864143 AS sv_8, 0.621747139805 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.136082795464 AS dual_coeff, 0.967813450532 AS sv_0, 0.997970633183 AS sv_1, 0.759123711449 AS sv_2, 1.25661174578 AS sv_3, 0.897839466253 AS sv_4, 1.72217456295 AS sv_5, 0.457496569722 AS sv_6, 0.759328629185 AS sv_7, 0.365650480962 AS sv_8, 1.23950453881 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.00695012191257 AS dual_coeff, 1.85316199656 AS sv_0, -1.81809258693 AS sv_1, 2.04735236944 AS sv_2, 0.261185016865 AS sv_3, 2.64965062664 AS sv_4, -1.32031509568 AS sv_5, -0.107694574183 AS sv_6, 0.883966264931 AS sv_7, -0.955576739263 AS sv_8, -0.335518790251 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, -0.500806466503 AS sv_0, 0.308516761574 AS sv_1, 0.0699144030023 AS sv_2, 0.482854853853 AS sv_3, -0.956131587031 AS sv_4, -0.293191712995 AS sv_5, 0.516410629337 AS sv_6, -0.103886415126 AS sv_7, 0.685444228064 AS sv_8, 0.318721375564 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, -0.0444150786334 AS sv_0, 0.585329323992 AS sv_1, 1.27372555345 AS sv_2, 1.18428757594 AS sv_3, -0.579957562195 AS sv_4, -0.605518641322 AS sv_5, 0.524359111794 AS sv_6, 1.13125510089 AS sv_7, 0.941898521933 AS sv_8, -0.75083744157 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.480247636977 AS sv_0, -0.402847949868 AS sv_1, 0.632221403143 AS sv_2, 1.04104591402 AS sv_3, 0.264419910894 AS sv_4, -1.99388033973 AS sv_5, -0.0557729766345 AS sv_6, 1.2589030576 AS sv_7, 0.503708479371 AS sv_8, 0.548145974641 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, -0.0138014512483 AS sv_0, -0.487864419086 AS sv_1, 0.619690596725 AS sv_2, 0.931227616606 AS sv_3, -0.424538505715 AS sv_4, -0.508777381568 AS sv_5, 1.47689425956 AS sv_6, -1.52208421257 AS sv_7, 0.727442521547 AS sv_8, 1.30946390893 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 0.0748974281869 AS dual_coeff, 0.456027818606 AS sv_0, 0.128504493136 AS sv_1, 1.64785124234 AS sv_2, 1.91957042764 AS sv_3, -0.1527894289 AS sv_4, -0.180976533035 AS sv_5, -0.885228997388 AS sv_6, 0.192991507848 AS sv_7, 1.19697456756 AS sv_8, -1.13364749081 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 0.107458315138 AS dual_coeff, 0.0742747349924 AS sv_0, -1.38164045797 AS sv_1, -0.249018947947 AS sv_2, 1.61355473595 AS sv_3, -0.589212024331 AS sv_4, -1.56475197341 AS sv_5, 0.111803235081 AS sv_6, 0.515888988124 AS sv_7, 1.19913968768 AS sv_8, 0.412871168225 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.788290267265 AS dual_coeff, 0.0909810738046 AS sv_0, -1.14768760593 AS sv_1, 1.57886107644 AS sv_2, 1.04180266574 AS sv_3, -0.316281011157 AS sv_4, -0.404456966312 AS sv_5, -2.09934443255 AS sv_6, -0.892934080545 AS sv_7, 0.747366175897 AS sv_8, 0.697951439233 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -0.193398528318 AS sv_0, 0.687814413313 AS sv_1, -0.226383353679 AS sv_2, 0.799719410984 AS sv_3, -0.635259236019 AS sv_4, -1.28846635605 AS sv_5, 0.0804359925325 AS sv_6, 1.02120159715 AS sv_7, 0.738077531755 AS sv_8, 0.936047251438 AS sv_9) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -0.157987050474 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM "BinaryClass_10" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", -kernel_cte.dot_product AS "Score_0", kernel_cte.dot_product AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM kernel_cte