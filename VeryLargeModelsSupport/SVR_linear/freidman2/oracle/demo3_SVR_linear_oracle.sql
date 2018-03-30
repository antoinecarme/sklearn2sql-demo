-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 54.38834102865398 AS sv_0, 1647.6623950430826 AS sv_1, 0.5671724252803599 AS sv_2, 3.09911625029609 AS sv_3 FROM DUAL UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, 20.562836726629964 AS sv_0, 1667.9257595716754 AS sv_1, 0.4895624792598544 AS sv_2, 7.371731407367831 AS sv_3 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 FROM DUAL UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 52.13342271064282 AS sv_0, 897.2276900739249 AS sv_1, 0.7446274145722073 AS sv_2, 10.246013488604747 AS sv_3 FROM DUAL UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 48.69438373960177 AS sv_0, 1664.2552781105514 AS sv_1, 0.31144836807627496 AS sv_2, 4.632624341589297 AS sv_3 FROM DUAL UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 62.41256103982974 AS sv_0, 1030.794250465373 AS sv_1, 0.7128122573277177 AS sv_2, 10.40492055481995 AS sv_3 FROM DUAL UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 48.40695232096023 AS sv_0, 1631.018157352114 AS sv_1, 0.12706925899257115 AS sv_2, 4.261898976946841 AS sv_3 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 42.18124178567395 AS sv_0, 1121.2433235632175 AS sv_1, 0.7655444377588936 AS sv_2, 7.074480997040448 AS sv_3 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 44.88554870850716 AS sv_0, 1627.38160654522 AS sv_1, 0.8255815423347828 AS sv_2, 10.063448888684775 AS sv_3 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, 42.73189343322634 AS sv_0, 1100.678696743543 AS sv_1, 0.9738094563683325 AS sv_2, 2.806526760454922 AS sv_3 FROM DUAL UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, 56.48709973533751 AS sv_0, 1282.8666984094589 AS sv_1, 0.1679032802018684 AS sv_2, 4.671288394126134 AS sv_3 FROM DUAL UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 FROM DUAL UNION ALL SELECT 13 AS sv_idx, 0.1 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 FROM DUAL UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 6.292766107513681 AS sv_0, 1199.6652317213232 AS sv_1, 0.8040097090382655 AS sv_2, 5.490646907281224 AS sv_3 FROM DUAL UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 FROM DUAL UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 FROM DUAL UNION ALL SELECT 17 AS sv_idx, -0.0628694912454363 AS dual_coeff, 15.860104687264842 AS sv_0, 940.7646066666929 AS sv_1, 0.5770564111785556 AS sv_2, 10.338494091923241 AS sv_3 FROM DUAL UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545475 AS sv_1, 0.19176235240070616 AS sv_2, 8.475580701491157 AS sv_3 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 FROM DUAL UNION ALL SELECT 20 AS sv_idx, -0.026389299680950853 AS dual_coeff, 87.46073175788041 AS sv_0, 658.8446347865661 AS sv_1, 0.30293111693014707 AS sv_2, 3.766979759593161 AS sv_3 FROM DUAL UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 5.555683279187528 AS sv_0, 1271.8773900420756 AS sv_1, 0.26523222910347455 AS sv_2, 2.1959763981915064 AS sv_3 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, 40.27856713793895 AS sv_0, 366.2162846523089 AS sv_1, 0.9966853241577984 AS sv_2, 1.656986931673732 AS sv_3 FROM DUAL UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 FROM DUAL UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 72.43698164486757 AS sv_0, 1121.8678694429432 AS sv_1, 0.9484486314429021 AS sv_2, 6.427528686781514 AS sv_3 FROM DUAL UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, 60.58860696643238 AS sv_0, 1469.843035787915 AS sv_1, 0.6089512168171621 AS sv_2, 2.3367948536223095 AS sv_3 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 9.844209111159174 AS sv_0, 1641.9469469028431 AS sv_1, 0.7075346096235595 AS sv_2, 5.986957496499917 AS sv_3 FROM DUAL UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 FROM DUAL UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 69.12110117232672 AS sv_0, 1206.1440502200699 AS sv_1, 0.2510397707351385 AS sv_2, 5.048716496806546 AS sv_3 FROM DUAL UNION ALL SELECT 29 AS sv_idx, -0.1 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 FROM DUAL UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 69.85214811522404 AS sv_0, 1639.1260281796144 AS sv_1, 0.4296756544509407 AS sv_2, 7.464140755060015 AS sv_3 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 FROM DUAL UNION ALL SELECT 32 AS sv_idx, 0.08814621562922674 AS dual_coeff, 56.413773572677925 AS sv_0, 355.67891387520524 AS sv_1, 0.8414818043413281 AS sv_2, 9.840426401160759 AS sv_3 FROM DUAL UNION ALL SELECT 33 AS sv_idx, -0.0859550967312952 AS dual_coeff, 59.840712417889094 AS sv_0, 1182.939023927105 AS sv_1, 0.5861796897198648 AS sv_2, 2.600964238988918 AS sv_3 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 FROM DUAL UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 15.326716261726414 AS sv_0, 180.5390310694927 AS sv_1, 0.7104185591645422 AS sv_2, 9.612317521518237 AS sv_3 FROM DUAL UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 75.72356153727631 AS sv_0, 979.5390758373206 AS sv_1, 0.3441595308948491 AS sv_2, 6.689958461053408 AS sv_3 FROM DUAL UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 FROM DUAL UNION ALL SELECT 38 AS sv_idx, -0.08814621562922674 AS dual_coeff, 72.53396569676332 AS sv_0, 405.5391157928623 AS sv_1, 0.5709666936221692 AS sv_2, 6.973867159743634 AS sv_3 FROM DUAL UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 45.60940687108932 AS sv_0, 1252.3574286270157 AS sv_1, 0.7470342432713207 AS sv_2, 1.6312457787809178 AS sv_3 FROM DUAL UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, 30.690852469086604 AS sv_0, 1259.3392856726232 AS sv_1, 0.2617327305845589 AS sv_2, 5.8668782737639535 AS sv_3 FROM DUAL UNION ALL SELECT 41 AS sv_idx, 0.1 AS dual_coeff, 78.70377755058512 AS sv_0, 884.3045807091647 AS sv_1, 0.8550598892720919 AS sv_2, 8.805754588947428 AS sv_3 FROM DUAL UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, 28.195299489394664 AS sv_0, 1658.7104507269821 AS sv_1, 0.6353041988507154 AS sv_2, 8.577711433319472 AS sv_3 FROM DUAL UNION ALL SELECT 43 AS sv_idx, -0.1 AS dual_coeff, 78.24559083961029 AS sv_0, 711.0171497771485 AS sv_1, 0.21965300342994898 AS sv_2, 9.625089118836724 AS sv_3 FROM DUAL UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, 11.920432983287899 AS sv_0, 1644.054573840725 AS sv_1, 0.044505714773144245 AS sv_2, 1.9788585131261551 AS sv_3 FROM DUAL UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, 68.93874612467783 AS sv_0, 576.2510600295009 AS sv_1, 0.23995122524602408 AS sv_2, 7.786878726514889 AS sv_3 FROM DUAL UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 27.039396289201335 AS sv_0, 1157.3847500613917 AS sv_1, 0.5442383550607328 AS sv_2, 4.823471766131645 AS sv_3 FROM DUAL UNION ALL SELECT 47 AS sv_idx, -0.03661173202440006 AS dual_coeff, 43.578536957972446 AS sv_0, 1663.9708446048005 AS sv_1, 0.41510811578335083 AS sv_2, 3.0852135693019114 AS sv_3 FROM DUAL UNION ALL SELECT 48 AS sv_idx, 0.033425892134611 AS dual_coeff, 26.537649178083456 AS sv_0, 1165.8316177258246 AS sv_1, 0.5836556358077957 AS sv_2, 2.525558223865673 AS sv_3 FROM DUAL UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 43.096081790346766 AS sv_0, 932.7963927717359 AS sv_1, 0.31503359221256 AS sv_2, 6.637296650735946 AS sv_3 FROM DUAL UNION ALL SELECT 50 AS sv_idx, -0.1 AS dual_coeff, 17.868131429293165 AS sv_0, 1485.9419331014494 AS sv_1, 0.05359575229286839 AS sv_2, 6.342325760231504 AS sv_3 FROM DUAL UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 8.565026378214535 AS sv_0, 1167.1766668648943 AS sv_1, 0.21520853491877334 AS sv_2, 10.52323143849918 AS sv_3 FROM DUAL UNION ALL SELECT 52 AS sv_idx, -0.1 AS dual_coeff, 51.65052020909686 AS sv_0, 880.62728820991 AS sv_1, 0.5666035361130893 AS sv_2, 9.5100026719075 AS sv_3 FROM DUAL UNION ALL SELECT 53 AS sv_idx, 0.06773523112487022 AS dual_coeff, 76.49456162036661 AS sv_0, 219.86925500897718 AS sv_1, 0.7651752581595906 AS sv_2, 6.7113407760374235 AS sv_3 FROM DUAL UNION ALL SELECT 54 AS sv_idx, -0.1 AS dual_coeff, 41.58280576983873 AS sv_0, 435.19550661562505 AS sv_1, 0.09995386118122851 AS sv_2, 2.4819345970599818 AS sv_3 FROM DUAL UNION ALL SELECT 55 AS sv_idx, 0.1 AS dual_coeff, 0.14719983074734655 AS sv_0, 264.70492824904755 AS sv_1, 0.4977162892084863 AS sv_2, 8.753034147728435 AS sv_3 FROM DUAL UNION ALL SELECT 56 AS sv_idx, 0.1 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 FROM DUAL UNION ALL SELECT 57 AS sv_idx, 0.1 AS dual_coeff, 69.58353961616501 AS sv_0, 945.3817982620021 AS sv_1, 0.7937187998169644 AS sv_2, 10.678700273094229 AS sv_3 FROM DUAL UNION ALL SELECT 58 AS sv_idx, -0.1 AS dual_coeff, 16.01146852626628 AS sv_0, 598.7469724076399 AS sv_1, 0.058327505702267746 AS sv_2, 10.06589099949547 AS sv_3 FROM DUAL UNION ALL SELECT 59 AS sv_idx, -0.09593086765320238 AS dual_coeff, 9.573211516810986 AS sv_0, 1051.2031635481942 AS sv_1, 0.6197110340276971 AS sv_2, 8.322296500143658 AS sv_3 FROM DUAL UNION ALL SELECT 60 AS sv_idx, 0.1 AS dual_coeff, 49.065466008392974 AS sv_0, 1317.9965671708464 AS sv_1, 0.7514738660771196 AS sv_2, 2.3145116809009814 AS sv_3 FROM DUAL UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, 2.9026452288315685 AS sv_0, 1087.8858946398773 AS sv_1, 0.43123186558465754 AS sv_2, 10.05872173627677 AS sv_3 FROM DUAL UNION ALL SELECT 62 AS sv_idx, 0.1 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 0.1 AS dual_coeff, 69.39239551937591 AS sv_0, 246.84317528265575 AS sv_1, 0.9354970990229087 AS sv_2, 5.640783341563046 AS sv_3 FROM DUAL UNION ALL SELECT 64 AS sv_idx, 0.1 AS dual_coeff, 78.03364203742906 AS sv_0, 1032.4792951117327 AS sv_1, 0.9723393786954382 AS sv_2, 1.2304422399648032 AS sv_3 FROM DUAL UNION ALL SELECT 65 AS sv_idx, -0.09340463592419646 AS dual_coeff, 48.144031373730044 AS sv_0, 761.0600872268959 AS sv_1, 0.307483000073309 AS sv_2, 1.151070185174692 AS sv_3 FROM DUAL UNION ALL SELECT 66 AS sv_idx, 0.1 AS dual_coeff, 32.75891581529139 AS sv_0, 576.5087879963894 AS sv_1, 0.7903886907696169 AS sv_2, 7.585907277097894 AS sv_3 FROM DUAL UNION ALL SELECT 67 AS sv_idx, 0.1 AS dual_coeff, 1.7602332664928388 AS sv_0, 822.9672743702864 AS sv_1, 0.9260703993753714 AS sv_2, 9.748652596447922 AS sv_3 FROM DUAL UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, 19.75869393049412 AS sv_0, 272.21600506246267 AS sv_1, 0.44963351204713553 AS sv_2, 1.8639297884180575 AS sv_3 FROM DUAL UNION ALL SELECT 69 AS sv_idx, 0.1 AS dual_coeff, 79.10109600325073 AS sv_0, 1315.2821922174621 AS sv_1, 0.9863618489333056 AS sv_2, 5.911474588008384 AS sv_3 FROM DUAL UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, 33.85786849273585 AS sv_0, 1044.6749302395917 AS sv_1, 0.7503397244364791 AS sv_2, 1.3220343397959557 AS sv_3 FROM DUAL UNION ALL SELECT 71 AS sv_idx, 0.1 AS dual_coeff, 33.901119947237255 AS sv_0, 988.5041485863671 AS sv_1, 0.9645023555462153 AS sv_2, 2.81120906171767 AS sv_3 FROM DUAL UNION ALL SELECT 72 AS sv_idx, -0.1 AS dual_coeff, 18.02682544461097 AS sv_0, 861.2889920462572 AS sv_1, 0.10216025778626836 AS sv_2, 6.7984751522819336 AS sv_3 FROM DUAL) "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -479.46655700610484 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3) AS dot_prod1 
FROM "FREIDMAN2" "ADS", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp