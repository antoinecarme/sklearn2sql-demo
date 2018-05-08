-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly
-- Dataset : freidman2
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM freidman2 AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3 
FROM (SELECT 0 AS sv_idx, -7.03142e-10 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.038662749474648 AS sv_2, 4.578076302455036 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 1 AS sv_idx, -5.41e-13 AS dual_coeff, 48.69438373960177 AS sv_0, 1664.2552781105514 AS sv_1, 0.311448368076275 AS sv_2, 4.632624341589297 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 2 AS sv_idx, -5.4604e-11 AS dual_coeff, 62.41256103982973 AS sv_0, 1030.794250465373 AS sv_1, 0.712812257327718 AS sv_2, 10.40492055481995 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 3 AS sv_idx, -8.462e-12 AS dual_coeff, 48.40695232096023 AS sv_0, 1631.018157352114 AS sv_1, 0.127069258992571 AS sv_2, 4.261898976946841 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 4 AS sv_idx, 3.465708e-09 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.647936205745674 AS sv_2, 2.179461386442667 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 5 AS sv_idx, -5.929306e-09 AS dual_coeff, 50.620296436646505 AS sv_0, 412.3236844286874 AS sv_1, 0.104477294557454 AS sv_2, 2.885380145528212 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 6 AS sv_idx, -5.268295e-09 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.790207220271632 AS sv_2, 1.802295994160133 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 7 AS sv_idx, -1.3183e-11 AS dual_coeff, 62.91187273491999 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497 AS sv_2, 10.085281642538757 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 8 AS sv_idx, -8.5718e-11 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545476 AS sv_1, 0.191762352400706 AS sv_2, 8.475580701491157 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 9 AS sv_idx, 3.1292e-11 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979882 AS sv_2, 3.518415193774599 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 10 AS sv_idx, 6.588278e-09 AS dual_coeff, 40.27856713793895 AS sv_0, 366.2162846523089 AS sv_1, 0.996685324157798 AS sv_2, 1.656986931673732 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 11 AS sv_idx, 7.03142e-10 AS dual_coeff, 0.118360992162436 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 12 AS sv_idx, 2.09472e-10 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.538410230599484 AS sv_2, 3.803775054733704 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 13 AS sv_idx, -2.4e-13 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.183101234382138 AS sv_2, 1.134096666285749 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 14 AS sv_idx, -9.664e-12 AS dual_coeff, 69.85214811522404 AS sv_0, 1639.1260281796144 AS sv_1, 0.429675654450941 AS sv_2, 7.464140755060015 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 15 AS sv_idx, 5.9357e-11 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 16 AS sv_idx, -6.58971e-10 AS dual_coeff, 56.413773572677925 AS sv_0, 355.67891387520524 AS sv_1, 0.841481804341328 AS sv_2, 9.840426401160759 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 17 AS sv_idx, -2.6560303e-08 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.413747780427607 AS sv_2, 6.019313091402267 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 18 AS sv_idx, 2.45182e-09 AS dual_coeff, 15.326716261726414 AS sv_0, 180.5390310694927 AS sv_1, 0.710418559164542 AS sv_2, 9.612317521518237 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 19 AS sv_idx, -4.6328e-11 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.559302498026683 AS sv_2, 3.665227001304319 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 20 AS sv_idx, 1.31114e-10 AS dual_coeff, 78.70377755058512 AS sv_0, 884.3045807091647 AS sv_1, 0.855059889272092 AS sv_2, 8.805754588947428 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 21 AS sv_idx, -2.21857e-10 AS dual_coeff, 11.9204329832879 AS sv_0, 1644.054573840725 AS sv_1, 0.044505714773144 AS sv_2, 1.978858513126155 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 22 AS sv_idx, -6.2372e-11 AS dual_coeff, 17.868131429293165 AS sv_0, 1485.9419331014494 AS sv_1, 0.053595752292868 AS sv_2, 6.342325760231504 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 23 AS sv_idx, -1.31114e-10 AS dual_coeff, 51.65052020909686 AS sv_0, 880.62728820991 AS sv_1, 0.566603536113089 AS sv_2, 9.5100026719075 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 24 AS sv_idx, 3.015e-12 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.848421537264076 AS sv_2, 9.34953230770002 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 25 AS sv_idx, 2.5970581e-08 AS dual_coeff, 69.39239551937591 AS sv_0, 246.84317528265575 AS sv_1, 0.935497099022909 AS sv_2, 5.640783341563046 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 26 AS sv_idx, 5.4604e-11 AS dual_coeff, 78.03364203742906 AS sv_0, 1032.4792951117327 AS sv_1, 0.972339378695438 AS sv_2, 1.230442239964803 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte UNION ALL SELECT 27 AS sv_idx, 8.5718e-11 AS dual_coeff, 1.760233266492839 AS sv_0, 822.9672743702864 AS sv_1, 0.926070399375371 AS sv_2, 9.748652596447922 AS sv_3 
FROM (SELECT 0.0 AS "X") AS dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 16860.25721595913 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.25 * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp