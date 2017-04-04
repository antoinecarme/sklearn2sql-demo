-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 3.59376071146 ELSE "ADS"."Feature_0" END AS impute_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 11.3636363636 ELSE "ADS"."Feature_1" END AS impute_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 11.1367786561 ELSE "ADS"."Feature_2" END AS impute_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0691699604743 ELSE "ADS"."Feature_3" END AS impute_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.554695059289 ELSE "ADS"."Feature_4" END AS impute_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 6.28463438735 ELSE "ADS"."Feature_5" END AS impute_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 68.5749011858 ELSE "ADS"."Feature_6" END AS impute_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 3.79504268775 ELSE "ADS"."Feature_7" END AS impute_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 9.54940711462 ELSE "ADS"."Feature_8" END AS impute_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 408.23715415 ELSE "ADS"."Feature_9" END AS impute_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 18.4555335968 ELSE "ADS"."Feature_10" END AS impute_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 356.674031621 ELSE "ADS"."Feature_11" END AS impute_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 12.6530632411 ELSE "ADS"."Feature_12" END AS impute_14 
FROM "INPUT_DATA" AS "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_2 - 3.59376071146 AS impute_2, "ADS_imp_1_OUT".impute_3 - 11.3636363636 AS impute_3, "ADS_imp_1_OUT".impute_4 - 11.1367786561 AS impute_4, "ADS_imp_1_OUT".impute_5 - 0.0691699604743 AS impute_5, "ADS_imp_1_OUT".impute_6 - 0.554695059289 AS impute_6, "ADS_imp_1_OUT".impute_7 - 6.28463438735 AS impute_7, "ADS_imp_1_OUT".impute_8 - 68.5749011858 AS impute_8, "ADS_imp_1_OUT".impute_9 - 3.79504268775 AS impute_9, "ADS_imp_1_OUT".impute_10 - 9.54940711462 AS impute_10, "ADS_imp_1_OUT".impute_11 - 408.23715415 AS impute_11, "ADS_imp_1_OUT".impute_12 - 18.4555335968 AS impute_12, "ADS_imp_1_OUT".impute_13 - 356.674031621 AS impute_13, "ADS_imp_1_OUT".impute_14 - 12.6530632411 AS impute_14 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_2 * 0.0290793418705 + "CenteredDataForPCA".impute_3 * -0.0435901379884 + "CenteredDataForPCA".impute_4 * 0.0283311854744 + "CenteredDataForPCA".impute_5 * -5.55834284791e-05 + "CenteredDataForPCA".impute_6 * 0.000449723983032 + "CenteredDataForPCA".impute_7 * -0.00116817520949 + "CenteredDataForPCA".impute_8 * 0.0836340850971 + "CenteredDataForPCA".impute_9 * -0.00656167700943 + "CenteredDataForPCA".impute_10 * 0.0450056440522 + "CenteredDataForPCA".impute_11 * 0.949748861684 + "CenteredDataForPCA".impute_12 * 0.00560015635568 + "CenteredDataForPCA".impute_13 * -0.291215007119 + "CenteredDataForPCA".impute_14 * 0.0229433981219 AS anoova_2, "CenteredDataForPCA".impute_2 * 0.00595358533578 + "CenteredDataForPCA".impute_3 * 0.00117454545239 + "CenteredDataForPCA".impute_4 * -0.00494881025195 + "CenteredDataForPCA".impute_5 * -0.00010267276141 + "CenteredDataForPCA".impute_6 * 1.83085404137e-06 + "CenteredDataForPCA".impute_7 * 0.000365743217289 + "CenteredDataForPCA".impute_8 * -0.00572142591607 + "CenteredDataForPCA".impute_9 * 0.000353613792575 + "CenteredDataForPCA".impute_10 * -0.00861821318903 + "CenteredDataForPCA".impute_11 * -0.292380996231 + "CenteredDataForPCA".impute_12 * -0.00252890004647 + "CenteredDataForPCA".impute_13 * -0.95619302773 + "CenteredDataForPCA".impute_14 * 0.00576700106093 AS anoova_3, "CenteredDataForPCA".impute_2 * -0.0115545557501 + "CenteredDataForPCA".impute_3 * 0.632896918644 + "CenteredDataForPCA".impute_4 * -0.088340421489 + "CenteredDataForPCA".impute_5 * -0.000975318528256 + "CenteredDataForPCA".impute_6 * -0.00180719024026 + "CenteredDataForPCA".impute_7 * 0.00473411946642 + "CenteredDataForPCA".impute_8 * -0.7558624017 + "CenteredDataForPCA".impute_9 * 0.0450884909145 + "CenteredDataForPCA".impute_10 * 0.00284762033646 + "CenteredDataForPCA".impute_11 * 0.0938666635186 + "CenteredDataForPCA".impute_12 * -0.0111591438347 + "CenteredDataForPCA".impute_13 * -0.023554219456 + "CenteredDataForPCA".impute_14 * -0.0928331511404 AS anoova_4, "CenteredDataForPCA".impute_2 * 0.0270010188326 + "CenteredDataForPCA".impute_3 * 0.768061561807 + "CenteredDataForPCA".impute_4 * -0.0127967831999 + "CenteredDataForPCA".impute_5 * 0.000854486449613 + "CenteredDataForPCA".impute_6 * 0.000679594076936 + "CenteredDataForPCA".impute_7 * 0.00570054720395 + "CenteredDataForPCA".impute_8 * 0.636611733776 + "CenteredDataForPCA".impute_9 * 0.00257396992201 + "CenteredDataForPCA".impute_10 * -0.0195657921452 + "CenteredDataForPCA".impute_11 * -0.0199759769684 + "CenteredDataForPCA".impute_12 * -0.0320122564453 + "CenteredDataForPCA".impute_13 * 0.0040139802958 + "CenteredDataForPCA".impute_14 * 0.0452885745068 AS anoova_5, "CenteredDataForPCA".impute_2 * 0.953871800695 + "CenteredDataForPCA".impute_3 * -0.00565379160917 + "CenteredDataForPCA".impute_4 * -0.0562384399835 + "CenteredDataForPCA".impute_5 * -0.00213578787488 + "CenteredDataForPCA".impute_6 * -0.000179163492751 + "CenteredDataForPCA".impute_7 * -0.0132180033155 + "CenteredDataForPCA".impute_8 * -0.0459165992573 + "CenteredDataForPCA".impute_9 * -0.00667171091971 + "CenteredDataForPCA".impute_10 * 0.17058785538 + "CenteredDataForPCA".impute_11 * -0.0326258446098 + "CenteredDataForPCA".impute_12 * 0.0213376088824 + "CenteredDataForPCA".impute_13 * 0.0162708060102 + "CenteredDataForPCA".impute_14 * 0.231769304291 AS anoova_6, "CenteredDataForPCA".impute_2 * -0.166034349246 + "CenteredDataForPCA".impute_3 * 0.0467338831346 + "CenteredDataForPCA".impute_4 * 0.341930158111 + "CenteredDataForPCA".impute_5 * -0.00351936887193 + "CenteredDataForPCA".impute_6 * 0.00187779954519 + "CenteredDataForPCA".impute_7 * -0.0726614168834 + "CenteredDataForPCA".impute_8 * -0.109563953631 + "CenteredDataForPCA".impute_9 * 0.0073890536197 + "CenteredDataForPCA".impute_10 * -0.207176649927 + "CenteredDataForPCA".impute_11 * -0.00342146728837 + "CenteredDataForPCA".impute_12 * 0.0412943586628 + "CenteredDataForPCA".impute_13 * 0.0060542050517 + "CenteredDataForPCA".impute_14 * 0.889551632117 AS anoova_7, "CenteredDataForPCA".impute_2 * 0.212852802248 + "CenteredDataForPCA".impute_3 * 0.035176546336 + "CenteredDataForPCA".impute_4 * 0.785689931958 + "CenteredDataForPCA".impute_5 * 0.00509255441973 + "CenteredDataForPCA".impute_6 * 0.00385766581269 + "CenteredDataForPCA".impute_7 * 0.00787523138869 + "CenteredDataForPCA".impute_8 * -0.0263745768272 + "CenteredDataForPCA".impute_9 * -0.0889173024929 + "CenteredDataForPCA".impute_10 * -0.435623734582 + "CenteredDataForPCA".impute_11 * 0.00277590025712 + "CenteredDataForPCA".impute_12 * -0.0713658865352 + "CenteredDataForPCA".impute_13 * -0.00150020771634 + "CenteredDataForPCA".impute_14 * -0.364104108592 AS anoova_8, "CenteredDataForPCA".impute_2 * 0.122652780398 + "CenteredDataForPCA".impute_3 * -0.0514137942919 + "CenteredDataForPCA".impute_4 * -0.492499395662 + "CenteredDataForPCA".impute_5 * -0.0113553130638 + "CenteredDataForPCA".impute_6 * -0.0044543901623 + "CenteredDataForPCA".impute_7 * -0.0151387973731 + "CenteredDataForPCA".impute_8 * 0.0176803007577 + "CenteredDataForPCA".impute_9 * 0.0657533681177 + "CenteredDataForPCA".impute_10 * -0.853570768015 + "CenteredDataForPCA".impute_11 * 0.0468119918264 + "CenteredDataForPCA".impute_12 * -0.0598374746853 + "CenteredDataForPCA".impute_13 * -0.00318176205366 + "CenteredDataForPCA".impute_14 * 0.0194455791662 AS anoova_9, "CenteredDataForPCA".impute_2 * 0.0137295009078 + "CenteredDataForPCA".impute_3 * 0.0235097341661 + "CenteredDataForPCA".impute_4 * 0.0352709234238 + "CenteredDataForPCA".impute_5 * -0.0178059044254 + "CenteredDataForPCA".impute_6 * -0.0139018168355 + "CenteredDataForPCA".impute_7 * -0.0529937903518 + "CenteredDataForPCA".impute_8 * 0.0231883052927 + "CenteredDataForPCA".impute_9 * 0.224532665334 + "CenteredDataForPCA".impute_10 * -0.070331864193 + "CenteredDataForPCA".impute_11 * -0.00203423468159 + "CenteredDataForPCA".impute_12 * 0.96586112087 + "CenteredDataForPCA".impute_13 * -0.0019041485606 + "CenteredDataForPCA".impute_14 * -0.0768208791925 AS anoova_10, "CenteredDataForPCA".impute_2 * 0.0164239950024 + "CenteredDataForPCA".impute_3 * -0.0306822646896 + "CenteredDataForPCA".impute_4 * 0.0980506613801 + "CenteredDataForPCA".impute_5 * -0.00156368116258 + "CenteredDataForPCA".impute_6 * -0.0106223819107 + "CenteredDataForPCA".impute_7 * -0.0512068200773 + "CenteredDataForPCA".impute_8 * 0.0260681878414 + "CenteredDataForPCA".impute_9 * 0.964823647455 + "CenteredDataForPCA".impute_10 * 0.0390661641493 + "CenteredDataForPCA".impute_11 * -0.000480480028877 + "CenteredDataForPCA".impute_12 * -0.229898826892 + "CenteredDataForPCA".impute_13 * 7.36484057084e-06 + "CenteredDataForPCA".impute_14 * -0.0222128903555 AS anoova_11, "CenteredDataForPCA".impute_2 * -0.00226717797688 + "CenteredDataForPCA".impute_3 * 0.00552239680166 + "CenteredDataForPCA".impute_4 * -0.0178836079801 + "CenteredDataForPCA".impute_5 * -0.0157986253619 + "CenteredDataForPCA".impute_6 * 0.0115661438829 + "CenteredDataForPCA".impute_7 * -0.994165624979 + "CenteredDataForPCA".impute_8 * 0.00551780566759 + "CenteredDataForPCA".impute_9 * -0.0635307633029 + "CenteredDataForPCA".impute_10 * 0.0241265968226 + "CenteredDataForPCA".impute_11 * -0.000774619844149 + "CenteredDataForPCA".impute_12 * -0.0430041587914 + "CenteredDataForPCA".impute_13 * -0.000616615255131 + "CenteredDataForPCA".impute_14 * -0.0663086932677 AS anoova_12, "CenteredDataForPCA".impute_2 * 0.00196895828586 + "CenteredDataForPCA".impute_3 * -0.000193077157234 + "CenteredDataForPCA".impute_4 * -0.00812264862898 + "CenteredDataForPCA".impute_5 * 0.999597129178 + "CenteredDataForPCA".impute_6 * 0.00778846475673 + "CenteredDataForPCA".impute_7 * -0.0171507849184 + "CenteredDataForPCA".impute_8 * -0.000892510155887 + "CenteredDataForPCA".impute_9 * 0.005875198507 + "CenteredDataForPCA".impute_10 * -0.0086510290719 + "CenteredDataForPCA".impute_11 * 0.00051750984589 + "CenteredDataForPCA".impute_12 * 0.0161466468914 + "CenteredDataForPCA".impute_13 * -0.000156477757414 + "CenteredDataForPCA".impute_14 * 0.00311719313324 AS anoova_13, "CenteredDataForPCA".impute_2 * 0.000531945671707 + "CenteredDataForPCA".impute_3 * 0.000126484701586 + "CenteredDataForPCA".impute_4 * -0.00423973116962 + "CenteredDataForPCA".impute_5 * -0.00793521441916 + "CenteredDataForPCA".impute_6 * 0.999728591757 + "CenteredDataForPCA".impute_7 * 0.0103958814617 + "CenteredDataForPCA".impute_8 * -0.000916065930923 + "CenteredDataForPCA".impute_9 * 0.0147667106543 + "CenteredDataForPCA".impute_10 * -0.00247893969767 + "CenteredDataForPCA".impute_11 * -7.34637920241e-05 + "CenteredDataForPCA".impute_12 * 0.0112939726501 + "CenteredDataForPCA".impute_13 * 5.25551852109e-05 + "CenteredDataForPCA".impute_14 * -0.000908030955549 AS anoova_14 
FROM "CenteredDataForPCA"), 
"DT_node_lookup" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -3.1699275970458984) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_12 <= -0.522445559501648) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_10 <= -0.635695219039917) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -3.53341007232666) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -7.084721565246582) THEN 9 ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_6 <= -2.756387233734131) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_2' AS feature, -3.1699275970458984 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.0647421359613017e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_12' AS feature, -0.522445559501648 AS threshold, 321 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.2544210902195427 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_10' AS feature, -0.635695219039917 AS threshold, 31 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.31880657911513 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 24.092193675889327 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.227193675889323 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'anoova_7' AS feature, -3.53341007232666 AS threshold, 290 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5371936758893237 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 51 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.533860342555993 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 239 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2575702449269803 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'anoova_7' AS feature, -7.084721565246582 AS threshold, 185 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.646860378164729 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 16 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.792193675889323 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'anoova_6' AS feature, -2.756387233734131 AS threshold, 169 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.824522300442037 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 100 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.678806324110674 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 69 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -9.934255599472998 AS "Estimator") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Estimator" AS "Estimator" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id), 
"RF_Tree_0_0" AS 
(SELECT "DT_Output"."KEY" AS join_key_0_0, "DT_Output"."Estimator" AS "Estimator_0_0" 
FROM "DT_Output"), 
"DT_node_lookup_1" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -5.896186828613281) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.4602324366569519) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_10 <= 0.13172543048858643) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -13.564236640930176) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_4 <= 15.393976211547852) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= 236.95169067382812) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_1" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -5.896186828613281 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.380694933483085e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_9' AS feature, 0.4602324366569519 AS threshold, 59 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.718965661776195 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_10' AS feature, 0.13172543048858643 AS threshold, 44 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.57131169301712 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.127301231377313 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.434882359830182 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.5812493631971923 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'anoova_2' AS feature, -13.564236640930176 AS threshold, 447 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.4148075481986477 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'anoova_4' AS feature, 15.393976211547852 AS threshold, 275 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.5044357359661695 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 177 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.7798801543460722 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 98 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 5.630189946019916 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'anoova_2' AS feature, 236.95169067382812 AS threshold, 172 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.082202333927288 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 70 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.201066020883495 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 102 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -8.059452744839705 AS "Estimator") AS "Values"), 
"DT_Output_1" AS 
(SELECT "DT_node_lookup_1"."KEY" AS "KEY", "DT_node_lookup_1".node_id_2 AS node_id_2, "DT_node_data_1".node_id AS node_id, "DT_node_data_1".feature AS feature, "DT_node_data_1".threshold AS threshold, "DT_node_data_1".count AS count, "DT_node_data_1".depth AS depth, "DT_node_data_1".parent_id AS parent_id, "DT_node_data_1"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_1" LEFT OUTER JOIN "DT_node_data_1" ON "DT_node_lookup_1".node_id_2 = "DT_node_data_1".node_id), 
"RF_Tree_1_0" AS 
(SELECT "DT_Output_1"."KEY" AS join_key_1_0, "DT_Output_1"."Estimator" AS "Estimator_1_0" 
FROM "DT_Output_1"), 
"DT_node_lookup_2" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -5.2607855796813965) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -2.7424001693725586) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_12 <= -0.5435810089111328) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -17.062179565429688) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_4 <= 40.92115020751953) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_6 <= -2.756387233734131) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_2" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -5.2607855796813965 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.570266611996156e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_2' AS feature, -2.7424001693725586 AS threshold, 69 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.909613643828186 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_12' AS feature, -0.5435810089111328 AS threshold, 45 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 12.390723853773162 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 17 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 19.22432014613926 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 28 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 8.241754676265185 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 24 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.3825320001813446 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'anoova_2' AS feature, -17.062179565429688 AS threshold, 437 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.4067811016570873 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'anoova_4' AS feature, 40.92115020751953 AS threshold, 266 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.2518338485667644 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 213 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.2446616386057069 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 53 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.26605156116557 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'anoova_6' AS feature, -2.756387233734131 AS threshold, 171 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.542404357560861 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 101 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.7157168014861983 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 70 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -8.17805354561143 AS "Estimator") AS "Values"), 
"DT_Output_2" AS 
(SELECT "DT_node_lookup_2"."KEY" AS "KEY", "DT_node_lookup_2".node_id_2 AS node_id_2, "DT_node_data_2".node_id AS node_id, "DT_node_data_2".feature AS feature, "DT_node_data_2".threshold AS threshold, "DT_node_data_2".count AS count, "DT_node_data_2".depth AS depth, "DT_node_data_2".parent_id AS parent_id, "DT_node_data_2"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_2" LEFT OUTER JOIN "DT_node_data_2" ON "DT_node_lookup_2".node_id_2 = "DT_node_data_2".node_id), 
"RF_Tree_2_0" AS 
(SELECT "DT_Output_2"."KEY" AS join_key_2_0, "DT_Output_2"."Estimator" AS "Estimator_2_0" 
FROM "DT_Output_2"), 
"DT_node_lookup_3" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -3.2857093811035156) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_13 <= -0.1284666657447815) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_11 <= -0.15694642066955566) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -4.8044753074646) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_4 <= 15.415889739990234) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= 236.95169067382812) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_11 <= -1.001829743385315) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_3" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -3.2857093811035156 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.592364516135571e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_13' AS feature, -0.1284666657447815 AS threshold, 108 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.16029333086794 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_11' AS feature, -0.15694642066955566 AS threshold, 33 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 13.124509160019564 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 15.27863448862308 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.539558765695334 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'anoova_2' AS feature, -4.8044753074646 AS threshold, 75 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.096038366041229 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 43 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 6.059692938963509 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 32 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.8863724663230819 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'anoova_4' AS feature, 15.415889739990234 AS threshold, 398 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.6716373862656797 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'anoova_2' AS feature, 236.95169067382812 AS threshold, 288 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.6925877728236682 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 201 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.17644270821726 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 87 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -7.195405680707434 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'anoova_11' AS feature, -1.001829743385315 AS threshold, 110 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 3.6195781712679604 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 11.023307416878719 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 84 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.3279476904836776 AS "Estimator") AS "Values"), 
"DT_Output_3" AS 
(SELECT "DT_node_lookup_3"."KEY" AS "KEY", "DT_node_lookup_3".node_id_2 AS node_id_2, "DT_node_data_3".node_id AS node_id, "DT_node_data_3".feature AS feature, "DT_node_data_3".threshold AS threshold, "DT_node_data_3".count AS count, "DT_node_data_3".depth AS depth, "DT_node_data_3".parent_id AS parent_id, "DT_node_data_3"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_3" LEFT OUTER JOIN "DT_node_data_3" ON "DT_node_lookup_3".node_id_2 = "DT_node_data_3".node_id), 
"RF_Tree_3_0" AS 
(SELECT "DT_Output_3"."KEY" AS join_key_3_0, "DT_Output_3"."Estimator" AS "Estimator_3_0" 
FROM "DT_Output_3"), 
"DT_node_lookup_4" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 0.22746378183364868) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_10 <= -0.3150911331176758) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_12 <= -0.47594985365867615) THEN 3 ELSE 4 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_11 <= -0.33032476902008057) THEN 6 ELSE 7 END END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= 46.456573486328125) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_4 <= -13.492561340332031) THEN 10 ELSE 11 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_13 <= -0.04623567312955856) THEN 13 ELSE 14 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_4" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, 0.22746378183364868 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.272383939822342e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_10' AS feature, -0.3150911331176758 AS threshold, 279 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 2.66257425496953 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_12' AS feature, -0.47594985365867615 AS threshold, 92 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.8213000441686304 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 18.448364072392835 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 70 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.481365635298172 AS "Estimator" UNION ALL SELECT 5 AS node_id, 'anoova_11' AS feature, -0.33032476902008057 AS threshold, 187 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.1245915137592729 AS "Estimator" UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 60 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 4.033468014810611 AS "Estimator" UNION ALL SELECT 7 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 127 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.7221217938240359 AS "Estimator" UNION ALL SELECT 8 AS node_id, 'anoova_2' AS feature, 46.456573486328125 AS threshold, 227 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -3.2725031591916314 AS "Estimator" UNION ALL SELECT 9 AS node_id, 'anoova_4' AS feature, -13.492561340332031 AS threshold, 167 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.7143836924760494 AS "Estimator" UNION ALL SELECT 10 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 69 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.2321154649878885 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 98 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.05830500449657163 AS "Estimator" UNION ALL SELECT 12 AS node_id, 'anoova_13' AS feature, -0.04623567312955856 AS threshold, 60 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -7.609269008216669 AS "Estimator" UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -5.639663034120509 AS "Estimator" UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 34 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -9.115438282525497 AS "Estimator") AS "Values"), 
"DT_Output_4" AS 
(SELECT "DT_node_lookup_4"."KEY" AS "KEY", "DT_node_lookup_4".node_id_2 AS node_id_2, "DT_node_data_4".node_id AS node_id, "DT_node_data_4".feature AS feature, "DT_node_data_4".threshold AS threshold, "DT_node_data_4".count AS count, "DT_node_data_4".depth AS depth, "DT_node_data_4".parent_id AS parent_id, "DT_node_data_4"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_4" LEFT OUTER JOIN "DT_node_data_4" ON "DT_node_lookup_4".node_id_2 = "DT_node_data_4".node_id), 
"RF_Tree_4_0" AS 
(SELECT "DT_Output_4"."KEY" AS join_key_4_0, "DT_Output_4"."Estimator" AS "Estimator_4_0" 
FROM "DT_Output_4"), 
"DT_node_lookup_5" AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -5.896186828613281) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_9 <= 0.4602324366569519) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= -8.583847045898438) THEN 3 ELSE 4 END ELSE 5 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_2 <= -17.062179565429688) THEN CASE WHEN ("ADS_ano_2_OUT".anoova_12 <= -0.47268790006637573) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS_ano_2_OUT".anoova_7 <= 2.6519086360931396) THEN 11 ELSE 12 END END END AS node_id_2 
FROM "ADS_ano_2_OUT"), 
"DT_node_data_5" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Estimator" AS "Estimator" 
FROM (SELECT 0 AS node_id, 'anoova_7' AS feature, -5.896186828613281 AS threshold, 506 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.525146177839769e-15 AS "Estimator" UNION ALL SELECT 1 AS node_id, 'anoova_9' AS feature, 0.4602324366569519 AS threshold, 59 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.454213250725671 AS "Estimator" UNION ALL SELECT 2 AS node_id, 'anoova_7' AS feature, -8.583847045898438 AS threshold, 44 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 10.550504855110214 AS "Estimator" UNION ALL SELECT 3 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 18 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 14.465380604859506 AS "Estimator" UNION ALL SELECT 4 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 26 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 7.84020625912993 AS "Estimator" UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -1.6282421221356593 AS "Estimator" UNION ALL SELECT 6 AS node_id, 'anoova_2' AS feature, -17.062179565429688 AS threshold, 447 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, -0.9838894447266584 AS "Estimator" UNION ALL SELECT 7 AS node_id, 'anoova_12' AS feature, -0.47268790006637573 AS threshold, 272 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.048900885453677 AS "Estimator" UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 9.756140392902141 AS "Estimator" UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 250 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.2826638087982121 AS "Estimator" UNION ALL SELECT 10 AS node_id, 'anoova_7' AS feature, 2.6519086360931396 AS threshold, 175 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, -4.143426415064091 AS "Estimator" UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 119 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -2.8941555216059096 AS "Estimator" UNION ALL SELECT 12 AS node_id, CAST(NULL AS VARCHAR(256)) AS feature, CAST(NULL AS FLOAT) AS threshold, 56 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, -6.798127063662745 AS "Estimator") AS "Values"), 
"DT_Output_5" AS 
(SELECT "DT_node_lookup_5"."KEY" AS "KEY", "DT_node_lookup_5".node_id_2 AS node_id_2, "DT_node_data_5".node_id AS node_id, "DT_node_data_5".feature AS feature, "DT_node_data_5".threshold AS threshold, "DT_node_data_5".count AS count, "DT_node_data_5".depth AS depth, "DT_node_data_5".parent_id AS parent_id, "DT_node_data_5"."Estimator" AS "Estimator" 
FROM "DT_node_lookup_5" LEFT OUTER JOIN "DT_node_data_5" ON "DT_node_lookup_5".node_id_2 = "DT_node_data_5".node_id), 
"RF_Tree_5_0" AS 
(SELECT "DT_Output_5"."KEY" AS join_key_5_0, "DT_Output_5"."Estimator" AS "Estimator_5_0" 
FROM "DT_Output_5"), 
"RF_Join_CTE" AS 
(SELECT "RF_Tree_0_0".join_key_0_0 AS join_key_0_0, "RF_Tree_0_0"."Estimator_0_0" AS "Estimator_0_0", "RF_Tree_1_0".join_key_1_0 AS join_key_1_0, "RF_Tree_1_0"."Estimator_1_0" AS "Estimator_1_0", "RF_Tree_2_0".join_key_2_0 AS join_key_2_0, "RF_Tree_2_0"."Estimator_2_0" AS "Estimator_2_0", "RF_Tree_3_0".join_key_3_0 AS join_key_3_0, "RF_Tree_3_0"."Estimator_3_0" AS "Estimator_3_0", "RF_Tree_4_0".join_key_4_0 AS join_key_4_0, "RF_Tree_4_0"."Estimator_4_0" AS "Estimator_4_0", "RF_Tree_5_0".join_key_5_0 AS join_key_5_0, "RF_Tree_5_0"."Estimator_5_0" AS "Estimator_5_0" 
FROM "RF_Tree_0_0" LEFT OUTER JOIN "RF_Tree_1_0" ON "RF_Tree_0_0".join_key_0_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_2_0" ON "RF_Tree_2_0".join_key_2_0 = "RF_Tree_1_0".join_key_1_0 LEFT OUTER JOIN "RF_Tree_3_0" ON "RF_Tree_3_0".join_key_3_0 = "RF_Tree_2_0".join_key_2_0 LEFT OUTER JOIN "RF_Tree_4_0" ON "RF_Tree_4_0".join_key_4_0 = "RF_Tree_3_0".join_key_3_0 LEFT OUTER JOIN "RF_Tree_5_0" ON "RF_Tree_5_0".join_key_5_0 = "RF_Tree_4_0".join_key_4_0), 
"RF_AVG_Scores" AS 
(SELECT "RF_Join_CTE".join_key_0_0 AS "KEY", 22.5328063241 + 0.1 * "RF_Join_CTE"."Estimator_0_0" + 0.1 * "RF_Join_CTE"."Estimator_1_0" + 0.1 * "RF_Join_CTE"."Estimator_2_0" + 0.1 * "RF_Join_CTE"."Estimator_3_0" + 0.1 * "RF_Join_CTE"."Estimator_4_0" + 0.1 * "RF_Join_CTE"."Estimator_5_0" AS "Estimator" 
FROM "RF_Join_CTE")
 SELECT "RF_AVG_Scores"."KEY" AS "KEY", "RF_AVG_Scores"."Estimator" AS "Estimator" 
FROM "RF_AVG_Scores"