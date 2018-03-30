-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 4.588854026500651e-13 AS dual_coeff, 54.38834102865398 AS sv_0, 1647.6623950430826 AS sv_1, 0.5671724252803599 AS sv_2, 3.09911625029609 AS sv_3 UNION ALL SELECT 1 AS sv_idx, -3.3626518258770426e-13 AS dual_coeff, 20.562836726629964 AS sv_0, 1667.9257595716754 AS sv_1, 0.4895624792598544 AS sv_2, 7.371731407367831 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -6.873784023016685e-13 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -4.1425792486286534e-14 AS dual_coeff, 62.41256103982974 AS sv_0, 1030.794250465373 AS sv_1, 0.7128122573277177 AS sv_2, 10.40492055481995 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -3.0815597509833855e-10 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -3.1391364073018654e-13 AS dual_coeff, 44.88554870850716 AS sv_0, 1627.38160654522 AS sv_1, 0.8255815423347828 AS sv_2, 10.063448888684775 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -4.808049893361675e-13 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 1.038391510238602e-12 AS dual_coeff, 82.50361197375535 AS sv_0, 515.4406205692956 AS sv_1, 0.533834716927703 AS sv_2, 4.786980133087125 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 1.054080827282599e-11 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -3.45913873383292e-13 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -1.048555966697645e-15 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 UNION ALL SELECT 11 AS sv_idx, 2.2831799903935895e-13 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 1.390998073358255e-13 AS dual_coeff, 87.46073175788041 AS sv_0, 658.8446347865661 AS sv_1, 0.30293111693014707 AS sv_2, 3.766979759593161 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 8.487390375531914e-14 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -8.600043763063928e-14 AS dual_coeff, 9.844209111159174 AS sv_0, 1641.9469469028431 AS sv_1, 0.7075346096235595 AS sv_2, 5.986957496499917 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 3.209927504746518e-13 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 UNION ALL SELECT 16 AS sv_idx, -4.592220260229813e-13 AS dual_coeff, 25.282852707475843 AS sv_0, 524.0089478061485 AS sv_1, 0.6487598477422791 AS sv_2, 3.818865078416276 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.333712579707107e-12 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 3.7919219289627466e-13 AS dual_coeff, 69.85214811522404 AS sv_0, 1639.1260281796144 AS sv_1, 0.4296756544509407 AS sv_2, 7.464140755060015 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -9.91397563595832e-16 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 UNION ALL SELECT 20 AS sv_idx, -1.4469119208068812e-12 AS dual_coeff, 56.413773572677925 AS sv_0, 355.67891387520524 AS sv_1, 0.8414818043413281 AS sv_2, 9.840426401160759 AS sv_3 UNION ALL SELECT 21 AS sv_idx, -1.3460430826405824e-11 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -1.0368788887603915e-12 AS dual_coeff, 75.72356153727631 AS sv_0, 979.5390758373206 AS sv_1, 0.3441595308948491 AS sv_2, 6.689958461053408 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 1.1625150422706096e-11 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 UNION ALL SELECT 24 AS sv_idx, -6.501605281451227e-13 AS dual_coeff, 28.195299489394664 AS sv_0, 1658.7104507269821 AS sv_1, 0.6353041988507154 AS sv_2, 8.577711433319472 AS sv_3 UNION ALL SELECT 25 AS sv_idx, -4.901980035615724e-12 AS dual_coeff, 0.14719983074734655 AS sv_0, 264.70492824904755 AS sv_1, 0.4977162892084863 AS sv_2, 8.753034147728435 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 3.0850676144953036e-10 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 UNION ALL SELECT 27 AS sv_idx, -3.2745133686106553e-13 AS dual_coeff, 16.01146852626628 AS sv_0, 598.7469724076399 AS sv_1, 0.058327505702267746 AS sv_2, 10.06589099949547 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 9.91397563595832e-16 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 4.1425792486286534e-14 AS dual_coeff, 78.03364203742906 AS sv_0, 1032.4792951117327 AS sv_1, 0.9723393786954382 AS sv_2, 1.2304422399648032 AS sv_3 UNION ALL SELECT 30 AS sv_idx, -1.529917049984199e-12 AS dual_coeff, 19.75869393049412 AS sv_0, 272.21600506246267 AS sv_1, 0.44963351204713553 AS sv_2, 1.8639297884180575 AS sv_3 UNION ALL SELECT 31 AS sv_idx, -1.390998073358255e-13 AS dual_coeff, 34.99225156681424 AS sv_0, 681.5157838950514 AS sv_1, 0.6131936495952924 AS sv_2, 10.986250457514332 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -2.9683369094671567e-13 AS dual_coeff, 33.901119947237255 AS sv_0, 988.5041485863671 AS sv_1, 0.9645023555462153 AS sv_2, 2.81120906171767 AS sv_3) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -22.040528884035563 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.25 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3) + 0.0, 3) AS dot_prod1 
FROM freidman3 AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp