-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.257280680602 AS sv_0, 0.0180773238611 AS sv_1, 0.633597305054 AS sv_2, 0.732503707094 AS sv_3, 0.474796529259 AS sv_4, 0.323068228232 AS sv_5, 0.50841283305 AS sv_6, 0.588716109217 AS sv_7, 0.439613846626 AS sv_8, 0.965183739428 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 1.0 AS dual_coeff, 0.324484169067 AS sv_0, 0.823163293259 AS sv_1, 0.099198927235 AS sv_2, 0.501197315107 AS sv_3, 0.858703278205 AS sv_4, 0.0316808170119 AS sv_5, 0.932092047765 AS sv_6, 0.07485402659 AS sv_7, 0.530361335515 AS sv_8, 0.98509142525 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 0.312627572762 AS sv_0, 0.536080872851 AS sv_1, 0.784949383323 AS sv_2, 0.0372529733987 AS sv_3, 0.622027468998 AS sv_4, 0.215860782097 AS sv_5, 0.149543511914 AS sv_6, 0.802668042307 AS sv_7, 0.824631418579 AS sv_8, 0.659795232936 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.819716857551 AS sv_0, 0.459934602952 AS sv_1, 0.022329347863 AS sv_2, 0.200411418446 AS sv_3, 0.48406952321 AS sv_4, 0.92147923852 AS sv_5, 0.127069258993 AS sv_6, 0.326189897695 AS sv_7, 0.429372501037 AS sv_8, 0.918741232792 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.283332047703 AS sv_0, 0.357382681409 AS sv_1, 0.749466915382 AS sv_2, 0.0780824636992 AS sv_3, 0.128229581439 AS sv_4, 0.262937501938 AS sv_5, 0.91712321595 AS sv_6, 0.194234941943 AS sv_7, 0.678726462585 AS sv_8, 0.233274355152 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.583655635808 AS sv_0, 0.152555822387 AS sv_1, 0.616773007275 AS sv_2, 0.424770976323 AS sv_3, 0.191762352401 AS sv_4, 0.747558070149 AS sv_5, 0.306908524691 AS sv_6, 0.69396181671 AS sv_7, 0.261732730585 AS sv_8, 0.486687827376 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.79038869077 AS sv_0, 0.65859072771 AS sv_1, 0.757235615373 AS sv_2, 0.52268648412 AS sv_3, 0.344159530895 AS sv_4, 0.568995846105 AS sv_5, 0.402785671379 AS sv_6, 0.147250507474 AS sv_7, 0.996685324158 AS sv_8, 0.0656986931674 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.00118360992162 AS sv_0, 0.265807754298 AS sv_1, 0.995587810765 AS sv_2, 0.737954291312 AS sv_3, 0.349922515668 AS sv_4, 0.340256176162 AS sv_5, 0.613193649595 AS sv_6, 0.998625045751 AS sv_7, 0.338578684927 AS sv_8, 0.562558381045 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, 0.659886522021 AS sv_0, 0.0281453035905 AS sv_1, 0.91904691294 AS sv_2, 0.978951060884 AS sv_3, 0.92181134313 AS sv_4, 0.700552736268 AS sv_5, 0.901079570538 AS sv_6, 0.288222945612 AS sv_7, 0.702518266509 AS sv_8, 0.571698734495 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.601011123454 AS sv_0, 0.310534829174 AS sv_1, 0.21225847148 AS sv_2, 0.711649323285 AS sv_3, 0.323415451132 AS sv_4, 0.664776157267 AS sv_5, 0.197094496523 AS sv_6, 0.711598809723 AS sv_7, 0.29387625252 AS sv_8, 0.643290497649 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.392242037137 AS sv_0, 0.829058007456 AS sv_1, 0.979651504501 AS sv_2, 0.993827839877 AS sv_3, 0.43578536958 AS sv_4, 0.941650711845 AS sv_5, 0.415108115783 AS sv_6, 0.20852135693 AS sv_7, 0.265376491781 AS sv_8, 0.636722556823 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.999666236358 AS sv_0, 0.0513021648949 AS sv_1, 0.790207220272 AS sv_2, 0.080229599416 AS sv_3, 0.430960817903 AS sv_4, 0.49407368003 AS sv_5, 0.315033592213 AS sv_6, 0.563729665074 AS sv_7, 0.605886069664 AS sv_8, 0.822818402749 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.167903280202 AS sv_0, 0.367128839413 AS sv_1, 0.355817820042 AS sv_2, 0.191256153969 AS sv_3, 0.521731744871 AS sv_4, 0.487361421719 AS sv_5, 0.725339656968 AS sv_6, 0.171321364983 AS sv_7, 0.570966693622 AS sv_8, 0.597386715974 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.745644601206 AS sv_0, 0.144703893613 AS sv_1, 0.318272766825 AS sv_2, 0.0245322538632 AS sv_3, 0.212460350655 AS sv_4, 0.453222437427 AS sv_5, 0.393026989286 AS sv_6, 0.575963692337 AS sv_7, 0.239647328944 AS sv_8, 0.832594682834 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.804646338538 AS sv_0, 0.691783360732 AS sv_1, 0.140385979532 AS sv_2, 0.0970072115845 AS sv_3, 0.461581173116 AS sv_4, 0.604450409219 AS sv_5, 0.263020943261 AS sv_6, 0.925840437277 AS sv_7, 0.742722839096 AS sv_8, 0.395529853303 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.942340510891 AS sv_0, 0.556889884782 AS sv_1, 0.586557827998 AS sv_2, 0.730526622738 AS sv_3, 0.136931779443 AS sv_4, 0.0657699817927 AS sv_5, 0.0493972197134 AS sv_6, 0.838484209108 AS sv_7, 0.399805137049 AS sv_8, 0.93399670724 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.183101234382 AS sv_0, 0.0134096666286 AS sv_1, 0.0957321151681 AS sv_2, 0.566554537202 AS sv_3, 0.619711034028 AS sv_4, 0.732229650014 AS sv_5, 0.0984420911116 AS sv_6, 0.928169126516 AS sv_7, 0.707534609624 AS sv_8, 0.49869574965 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.472698734739 AS sv_0, 0.798121831977 AS sv_1, 0.849910455253 AS sv_2, 0.475194154583 AS sv_3, 0.210400238268 AS sv_4, 0.633063749198 AS sv_5, 0.757474439692 AS sv_6, 0.559144753543 AS sv_7, 0.323754392937 AS sv_8, 0.861716539172 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.434533728246 AS sv_0, 0.389059569409 AS sv_1, 0.836519225467 AS sv_2, 0.0622764187554 AS sv_3, 0.356482640171 AS sv_4, 0.00549606744343 AS sv_5, 0.922742425231 AS sv_6, 0.347764494625 AS sv_7, 0.478642743212 AS sv_8, 0.983257687809 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.689387461247 AS sv_0, 0.275820017945 AS sv_1, 0.239951225246 AS sv_2, 0.678687872651 AS sv_3, 0.913604563677 AS sv_4, 0.108637475561 AS sv_5, 0.559302498027 AS sv_6, 0.26652270013 AS sv_7, 0.283320977569 AS sv_8, 0.502711934309 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.751701704571 AS sv_0, 0.480602498546 AS sv_1, 0.679838010952 AS sv_2, 0.909789598624 AS sv_3, 0.378396526121 AS sv_4, 0.93650939511 AS sv_5, 0.49516054411 AS sv_6, 0.836845941103 AS sv_7, 0.539856116139 AS sv_8, 0.543654409604 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.663518741107 AS sv_0, 0.285365644127 AS sv_1, 0.973455172149 AS sv_2, 0.690007285006 AS sv_3, 0.0664127482175 AS sv_4, 0.513370101215 AS sv_5, 0.637882755344 AS sv_6, 0.034849662609 AS sv_7, 0.160669506721 AS sv_8, 0.891224379662 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 1.0 AS dual_coeff, 0.962582268187 AS sv_0, 0.48597393169 AS sv_1, 0.323005569469 AS sv_2, 0.517469664859 AS sv_3, 0.440918848939 AS sv_4, 0.638350260392 AS sv_5, 0.739183372517 AS sv_6, 0.0416271520072 AS sv_7, 0.388417426651 AS sv_8, 0.0648900249942 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.544238355061 AS sv_0, 0.382347176613 AS sv_1, 0.698521481152 AS sv_2, 0.926442345136 AS sv_3, 0.429675654451 AS sv_4, 0.646414075506 AS sv_5, 0.192240455465 AS sv_6, 0.0245357025279 AS sv_7, 0.815346830083 AS sv_8, 0.603088208551 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 15.9747271342 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ((exp(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) - exp(-(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0))) / (exp(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0) + exp(-(0.1 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) + 0.0)))) AS dot_prod1 
FROM freidman1 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp