-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH [SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.028279996071453595 AS dual_coeff, 54.38834102865398 AS sv_0, 1647.6623950430826 AS sv_1, 0.5671724252803599 AS sv_2, 3.09911625029609 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.06123370050152402 AS dual_coeff, 20.562836726629964 AS sv_0, 1667.9257595716754 AS sv_1, 0.4895624792598544 AS sv_2, 7.371731407367831 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 40.442330919192635 AS sv_0, 551.0711911042478 AS sv_1, 0.03866274947464787 AS sv_2, 4.578076302455036 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.007905348271872614 AS dual_coeff, 52.13342271064282 AS sv_0, 897.2276900739249 AS sv_1, 0.7446274145722073 AS sv_2, 10.246013488604747 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 0.0013423622485305708 AS dual_coeff, 62.41256103982974 AS sv_0, 1030.794250465373 AS sv_1, 0.7128122573277177 AS sv_2, 10.40492055481995 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 0.03683864130088135 AS dual_coeff, 42.18124178567395 AS sv_0, 1121.2433235632175 AS sv_1, 0.7655444377588936 AS sv_2, 7.074480997040448 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 38.24928980103384 AS sv_0, 135.90560294712617 AS sv_1, 0.6479362057456745 AS sv_2, 2.179461386442667 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.05254463046231184 AS dual_coeff, 44.88554870850716 AS sv_0, 1627.38160654522 AS sv_1, 0.8255815423347828 AS sv_2, 10.063448888684775 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.046564563286000366 AS dual_coeff, 42.73189343322634 AS sv_0, 1100.678696743543 AS sv_1, 0.9738094563683325 AS sv_2, 2.806526760454922 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.1 AS dual_coeff, 50.620296436646505 AS sv_0, 412.32368442868733 AS sv_1, 0.10447729455745358 AS sv_2, 2.8853801455282126 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 0.0428562025597623 AS dual_coeff, 9.02119007427775 AS sv_0, 496.38824586501664 AS sv_1, 0.4231538473843591 AS sv_2, 8.540239837506533 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.005227673593392823 AS dual_coeff, 82.50361197375535 AS sv_0, 515.4406205692956 AS sv_1, 0.533834716927703 AS sv_2, 4.786980133087125 AS sv_3 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 99.96662363577734 AS sv_0, 209.47236840414524 AS sv_1, 0.7902072202716324 AS sv_2, 1.8022959941601326 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 0.07936140186115895 AS dual_coeff, 6.292766107513681 AS sv_0, 1199.6652317213232 AS sv_1, 0.8040097090382655 AS sv_2, 5.490646907281224 AS sv_3 UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, 62.911872734919996 AS sv_0, 456.23422619927044 AS sv_1, 0.054305830277497025 AS sv_2, 10.085281642538757 AS sv_3 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 38.96738973035813 AS sv_0, 1162.8273648517609 AS sv_1, 0.013518045508856713 AS sv_2, 6.780775777362427 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.05684693498840768 AS dual_coeff, 15.860104687264842 AS sv_0, 940.7646066666929 AS sv_1, 0.5770564111785556 AS sv_2, 10.338494091923241 AS sv_3 UNION ALL SELECT 17 AS sv_idx, -0.08807952346575798 AS dual_coeff, 61.677300727460114 AS sv_0, 819.5815430545475 AS sv_1, 0.19176235240070616 AS sv_2, 8.475580701491157 AS sv_3 UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, 14.354024845151192 AS sv_0, 1727.5875493321003 AS sv_1, 0.005807417979881824 AS sv_2, 3.518415193774599 AS sv_3 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 87.46073175788041 AS sv_0, 658.8446347865661 AS sv_1, 0.30293111693014707 AS sv_2, 3.766979759593161 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.06935431062174782 AS dual_coeff, 5.555683279187528 AS sv_0, 1271.8773900420756 AS sv_1, 0.26523222910347455 AS sv_2, 2.1959763981915064 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 0.08567306895404339 AS dual_coeff, 0.11836099216243623 AS sv_0, 559.8947439915403 AS sv_1, 0.995587810764828 AS sv_2, 8.379542913119769 AS sv_3 UNION ALL SELECT 22 AS sv_idx, 0.017837926012224115 AS dual_coeff, 72.43698164486757 AS sv_0, 1121.8678694429432 AS sv_1, 0.9484486314429021 AS sv_2, 6.427528686781514 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 0.018882248399833323 AS dual_coeff, 60.58860696643238 AS sv_0, 1469.843035787915 AS sv_1, 0.6089512168171621 AS sv_2, 2.3367948536223095 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 0.0490428367088096 AS dual_coeff, 20.778030637448996 AS sv_0, 848.8478666076559 AS sv_1, 0.6660011390251719 AS sv_2, 8.384615882629802 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 0.07770437015830392 AS dual_coeff, 9.844209111159174 AS sv_0, 1641.9469469028431 AS sv_1, 0.7075346096235595 AS sv_2, 5.986957496499917 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 0.04765836403339077 AS dual_coeff, 35.204122625647635 AS sv_0, 1709.6137391765267 AS sv_1, 0.5384102305994837 AS sv_2, 3.8037750547337037 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 0.012200216829173605 AS dual_coeff, 25.282852707475843 AS sv_0, 524.0089478061485 AS sv_1, 0.6487598477422791 AS sv_2, 3.818865078416276 AS sv_3 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 96.45390231426003 AS sv_0, 990.2254318826166 AS sv_1, 0.18310123438213766 AS sv_2, 1.134096666285749 AS sv_3 UNION ALL SELECT 29 AS sv_idx, 0.03986666212110171 AS dual_coeff, 28.332097756867146 AS sv_0, 946.9080883858652 AS sv_1, 0.6508068217649317 AS sv_2, 9.247059834072795 AS sv_3 UNION ALL SELECT 30 AS sv_idx, 0.0587757130397 AS dual_coeff, 39.22420371373826 AS sv_0, 1480.0362298674247 AS sv_1, 0.979651504500836 AS sv_2, 10.93827839877219 AS sv_3 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, 49.3998858198411 AS sv_0, 243.93515665851513 AS sv_1, 0.41374778042760696 AS sv_2, 6.0193130914022674 AS sv_3 UNION ALL SELECT 32 AS sv_idx, -0.1 AS dual_coeff, 91.36045636770356 AS sv_0, 303.1369476103539 AS sv_1, 0.5593024980266833 AS sv_2, 3.665227001304319 AS sv_3 UNION ALL SELECT 33 AS sv_idx, -0.01739502386311742 AS dual_coeff, 72.53396569676332 AS sv_0, 405.5391157928623 AS sv_1, 0.5709666936221692 AS sv_2, 6.973867159743634 AS sv_3 UNION ALL SELECT 34 AS sv_idx, 0.03760353351587031 AS dual_coeff, 45.60940687108932 AS sv_0, 1252.3574286270157 AS sv_1, 0.7470342432713207 AS sv_2, 1.6312457787809178 AS sv_3 UNION ALL SELECT 35 AS sv_idx, 0.05905919183659061 AS dual_coeff, 28.195299489394664 AS sv_0, 1658.7104507269821 AS sv_1, 0.6353041988507154 AS sv_2, 8.577711433319472 AS sv_3 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 78.24559083961029 AS sv_0, 711.0171497771485 AS sv_1, 0.21965300342994898 AS sv_2, 9.625089118836724 AS sv_3 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, 68.93874612467783 AS sv_0, 576.2510600295009 AS sv_1, 0.23995122524602408 AS sv_2, 7.786878726514889 AS sv_3 UNION ALL SELECT 38 AS sv_idx, 0.04315306501159233 AS dual_coeff, 27.039396289201335 AS sv_0, 1157.3847500613917 AS sv_1, 0.5442383550607328 AS sv_2, 4.823471766131645 AS sv_3 UNION ALL SELECT 39 AS sv_idx, 0.02342736603244877 AS dual_coeff, 43.578536957972446 AS sv_0, 1663.9708446048005 AS sv_1, 0.41510811578335083 AS sv_2, 3.0852135693019114 AS sv_3 UNION ALL SELECT 40 AS sv_idx, 0.04690955710821232 AS dual_coeff, 26.537649178083456 AS sv_0, 1165.8316177258246 AS sv_1, 0.5836556358077957 AS sv_2, 2.525558223865673 AS sv_3 UNION ALL SELECT 41 AS sv_idx, 0.05180030825524762 AS dual_coeff, 8.565026378214535 AS sv_0, 1167.1766668648943 AS sv_1, 0.21520853491877334 AS sv_2, 10.52323143849918 AS sv_3 UNION ALL SELECT 42 AS sv_idx, -0.1 AS dual_coeff, 76.49456162036661 AS sv_0, 219.86925500897718 AS sv_1, 0.7651752581595906 AS sv_2, 6.7113407760374235 AS sv_3 UNION ALL SELECT 43 AS sv_idx, -0.1 AS dual_coeff, 41.58280576983873 AS sv_0, 435.19550661562505 AS sv_1, 0.09995386118122851 AS sv_2, 2.4819345970599818 AS sv_3 UNION ALL SELECT 44 AS sv_idx, 0.08529355692311949 AS dual_coeff, 0.14719983074734655 AS sv_0, 264.70492824904755 AS sv_1, 0.4977162892084863 AS sv_2, 8.753034147728435 AS sv_3 UNION ALL SELECT 45 AS sv_idx, 0.05148698987052602 AS dual_coeff, 1.5021310253122144 AS sv_0, 126.64944659397821 AS sv_1, 0.3404027104874394 AS sv_2, 9.813039096423058 AS sv_3 UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 16.01146852626628 AS sv_0, 598.7469724076399 AS sv_1, 0.058327505702267746 AS sv_2, 10.06589099949547 AS sv_3 UNION ALL SELECT 47 AS sv_idx, 0.07172000392854641 AS dual_coeff, 9.573211516810986 AS sv_0, 1051.2031635481942 AS sv_1, 0.6197110340276971 AS sv_2, 8.322296500143658 AS sv_3 UNION ALL SELECT 48 AS sv_idx, 0.03658364792688529 AS dual_coeff, 49.065466008392974 AS sv_0, 1317.9965671708464 AS sv_1, 0.7514738660771196 AS sv_2, 2.3145116809009814 AS sv_3 UNION ALL SELECT 49 AS sv_idx, 0.08024742390781572 AS dual_coeff, 2.9026452288315685 AS sv_0, 1087.8858946398773 AS sv_1, 0.43123186558465754 AS sv_2, 10.05872173627677 AS sv_3 UNION ALL SELECT 50 AS sv_idx, 0.010580781494067604 AS dual_coeff, 89.79240360827384 AS sv_0, 1393.0059875788913 AS sv_1, 0.8484215372640762 AS sv_2, 9.34953230770002 AS sv_3 UNION ALL SELECT 51 AS sv_idx, -0.005758526485630688 AS dual_coeff, 69.39239551937591 AS sv_0, 246.84317528265575 AS sv_1, 0.9354970990229087 AS sv_2, 5.640783341563046 AS sv_3 UNION ALL SELECT 52 AS sv_idx, 0.008204974451067049 AS dual_coeff, 78.03364203742906 AS sv_0, 1032.4792951117327 AS sv_1, 0.9723393786954382 AS sv_2, 1.2304422399648032 AS sv_3 UNION ALL SELECT 53 AS sv_idx, 0.01440894518088831 AS dual_coeff, 32.75891581529139 AS sv_0, 576.5087879963894 AS sv_1, 0.7903886907696169 AS sv_2, 7.585907277097894 AS sv_3 UNION ALL SELECT 54 AS sv_idx, 0.08412499323056191 AS dual_coeff, 1.7602332664928388 AS sv_0, 822.9672743702864 AS sv_1, 0.9260703993753714 AS sv_2, 9.748652596447922 AS sv_3 UNION ALL SELECT 55 AS sv_idx, 0.025281708523925195 AS dual_coeff, 79.10109600325073 AS sv_0, 1315.2821922174621 AS sv_1, 0.9863618489333056 AS sv_2, 5.911474588008384 AS sv_3 UNION ALL SELECT 56 AS sv_idx, 0.0026217357454365597 AS dual_coeff, 34.99225156681424 AS sv_0, 681.5157838950514 AS sv_1, 0.6131936495952924 AS sv_2, 10.986250457514332 AS sv_3 UNION ALL SELECT 57 AS sv_idx, 0.04264383056694576 AS dual_coeff, 33.85786849273585 AS sv_0, 1044.6749302395917 AS sv_1, 0.7503397244364791 AS sv_2, 1.3220343397959557 AS sv_3 UNION ALL SELECT 58 AS sv_idx, 0.050539635467920174 AS dual_coeff, 33.901119947237255 AS sv_0, 988.5041485863671 AS sv_1, 0.9645023555462153 AS sv_2, 2.81120906171767 AS sv_3) AS [Values]), 
kernel_dp AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + 1.3847036882829598 AS dot_product 
FROM (SELECT [ADS].[KEY] AS [KEY], [SV_data].dual_coeff * exp(CASE WHEN (CASE WHEN (-100.0 <= -0.25 * (power([ADS].[Feature_0] - [SV_data].sv_0, 2) + power([ADS].[Feature_1] - [SV_data].sv_1, 2) + power([ADS].[Feature_2] - [SV_data].sv_2, 2) + power([ADS].[Feature_3] - [SV_data].sv_3, 2))) THEN -0.25 * (power([ADS].[Feature_0] - [SV_data].sv_0, 2) + power([ADS].[Feature_1] - [SV_data].sv_1, 2) + power([ADS].[Feature_2] - [SV_data].sv_2, 2) + power([ADS].[Feature_3] - [SV_data].sv_3, 2)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -0.25 * (power([ADS].[Feature_0] - [SV_data].sv_0, 2) + power([ADS].[Feature_1] - [SV_data].sv_1, 2) + power([ADS].[Feature_2] - [SV_data].sv_2, 2) + power([ADS].[Feature_3] - [SV_data].sv_3, 2))) THEN -0.25 * (power([ADS].[Feature_0] - [SV_data].sv_0, 2) + power([ADS].[Feature_1] - [SV_data].sv_1, 2) + power([ADS].[Feature_2] - [SV_data].sv_2, 2) + power([ADS].[Feature_3] - [SV_data].sv_3, 2)) ELSE -100.0 END ELSE 100.0 END) AS dot_prod1 
FROM freidman3 AS [ADS], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_dp.[KEY] AS [KEY], kernel_dp.dot_product AS [Estimator] 
FROM kernel_dp