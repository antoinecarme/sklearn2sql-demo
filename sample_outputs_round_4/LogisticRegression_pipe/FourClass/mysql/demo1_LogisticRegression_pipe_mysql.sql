-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -0.177762571963 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.222487853824 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.177987642017 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN -0.422942050689 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.0422271336093 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.251939589146 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.0644039938596 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.0744934005212 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.07974072783 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -0.0769243571911 ELSE `ADS`.`Feature_9` END AS impute_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN -0.0873381482099 ELSE `ADS`.`Feature_10` END AS impute_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN -0.0337010285792 ELSE `ADS`.`Feature_11` END AS impute_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN 0.00266922630065 ELSE `ADS`.`Feature_12` END AS impute_14, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN 0.311521923959 ELSE `ADS`.`Feature_13` END AS impute_15, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN -0.102737563333 ELSE `ADS`.`Feature_14` END AS impute_16, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN -0.120545256302 ELSE `ADS`.`Feature_15` END AS impute_17, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN -0.0858737026751 ELSE `ADS`.`Feature_16` END AS impute_18, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.133616880673 ELSE `ADS`.`Feature_17` END AS impute_19, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN -0.125662345585 ELSE `ADS`.`Feature_18` END AS impute_20, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN 0.0436579259743 ELSE `ADS`.`Feature_19` END AS impute_21 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - -0.177762571963 AS impute_2, `ADS_imp_1_OUT`.impute_3 - -0.222487853824 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.177987642017 AS impute_4, `ADS_imp_1_OUT`.impute_5 - -0.422942050689 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.0422271336093 AS impute_6, `ADS_imp_1_OUT`.impute_7 - -0.251939589146 AS impute_7, `ADS_imp_1_OUT`.impute_8 - -0.0644039938596 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.0744934005212 AS impute_9, `ADS_imp_1_OUT`.impute_10 - -0.07974072783 AS impute_10, `ADS_imp_1_OUT`.impute_11 - -0.0769243571911 AS impute_11, `ADS_imp_1_OUT`.impute_12 - -0.0873381482099 AS impute_12, `ADS_imp_1_OUT`.impute_13 - -0.0337010285792 AS impute_13, `ADS_imp_1_OUT`.impute_14 - 0.00266922630065 AS impute_14, `ADS_imp_1_OUT`.impute_15 - 0.311521923959 AS impute_15, `ADS_imp_1_OUT`.impute_16 - -0.102737563333 AS impute_16, `ADS_imp_1_OUT`.impute_17 - -0.120545256302 AS impute_17, `ADS_imp_1_OUT`.impute_18 - -0.0858737026751 AS impute_18, `ADS_imp_1_OUT`.impute_19 - 0.133616880673 AS impute_19, `ADS_imp_1_OUT`.impute_20 - -0.125662345585 AS impute_20, `ADS_imp_1_OUT`.impute_21 - 0.0436579259743 AS impute_21 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.328242465592 + `CenteredDataForPCA`.impute_3 * -0.04068423615 + `CenteredDataForPCA`.impute_4 * -0.0243328940103 + `CenteredDataForPCA`.impute_5 * 0.146683805146 + `CenteredDataForPCA`.impute_6 * -0.0235911250855 + `CenteredDataForPCA`.impute_7 * 0.686254983951 + `CenteredDataForPCA`.impute_8 * 0.075492817916 + `CenteredDataForPCA`.impute_9 * 0.0457143402396 + `CenteredDataForPCA`.impute_10 * -0.0642184304367 + `CenteredDataForPCA`.impute_11 * -0.0245370368073 + `CenteredDataForPCA`.impute_12 * -0.157938118441 + `CenteredDataForPCA`.impute_13 * -0.0293174886501 + `CenteredDataForPCA`.impute_14 * 0.127395021188 + `CenteredDataForPCA`.impute_15 * 0.127991088991 + `CenteredDataForPCA`.impute_16 * 0.106086698495 + `CenteredDataForPCA`.impute_17 * -0.0553319382761 + `CenteredDataForPCA`.impute_18 * 0.0653035718643 + `CenteredDataForPCA`.impute_19 * 0.0748548299261 + `CenteredDataForPCA`.impute_20 * 0.547158242014 + `CenteredDataForPCA`.impute_21 * 0.049948324562 AS anoova_2, `CenteredDataForPCA`.impute_2 * -0.168801347684 + `CenteredDataForPCA`.impute_3 * -0.0735335602845 + `CenteredDataForPCA`.impute_4 * -0.0341828740849 + `CenteredDataForPCA`.impute_5 * 0.39899616457 + `CenteredDataForPCA`.impute_6 * 0.130832390973 + `CenteredDataForPCA`.impute_7 * 0.06573649622 + `CenteredDataForPCA`.impute_8 * 0.0412911119798 + `CenteredDataForPCA`.impute_9 * -0.0272863729003 + `CenteredDataForPCA`.impute_10 * -0.140585929738 + `CenteredDataForPCA`.impute_11 * -0.058168874424 + `CenteredDataForPCA`.impute_12 * 0.092092482126 + `CenteredDataForPCA`.impute_13 * 0.0280178932718 + `CenteredDataForPCA`.impute_14 * -0.72694952478 + `CenteredDataForPCA`.impute_15 * 0.306237140523 + `CenteredDataForPCA`.impute_16 * 0.124758637145 + `CenteredDataForPCA`.impute_17 * -0.213971923622 + `CenteredDataForPCA`.impute_18 * 0.0177571754541 + `CenteredDataForPCA`.impute_19 * -0.0565335156158 + `CenteredDataForPCA`.impute_20 * -0.236390198221 + `CenteredDataForPCA`.impute_21 * 0.0803329237299 AS anoova_3, `CenteredDataForPCA`.impute_2 * -0.217652113637 + `CenteredDataForPCA`.impute_3 * -0.123983211263 + `CenteredDataForPCA`.impute_4 * 0.0186741103609 + `CenteredDataForPCA`.impute_5 * 0.0487470030234 + `CenteredDataForPCA`.impute_6 * -0.0993433072423 + `CenteredDataForPCA`.impute_7 * -0.279177815112 + `CenteredDataForPCA`.impute_8 * -0.0555990393014 + `CenteredDataForPCA`.impute_9 * 0.0946713422151 + `CenteredDataForPCA`.impute_10 * -0.0667395477163 + `CenteredDataForPCA`.impute_11 * -0.0433494977367 + `CenteredDataForPCA`.impute_12 * 0.0121926604898 + `CenteredDataForPCA`.impute_13 * 0.13062839913 + `CenteredDataForPCA`.impute_14 * 0.362105833661 + `CenteredDataForPCA`.impute_15 * 0.759838020659 + `CenteredDataForPCA`.impute_16 * 0.0289483447702 + `CenteredDataForPCA`.impute_17 * 0.0424989460815 + `CenteredDataForPCA`.impute_18 * -0.221285062442 + `CenteredDataForPCA`.impute_19 * -0.134307309773 + `CenteredDataForPCA`.impute_20 * -0.00767065442666 + `CenteredDataForPCA`.impute_21 * -0.181490192949 AS anoova_4, `CenteredDataForPCA`.impute_2 * -0.321476123931 + `CenteredDataForPCA`.impute_3 * 0.0824981212867 + `CenteredDataForPCA`.impute_4 * -0.303455463606 + `CenteredDataForPCA`.impute_5 * -0.608977125862 + `CenteredDataForPCA`.impute_6 * -0.178830502665 + `CenteredDataForPCA`.impute_7 * 0.0763972350135 + `CenteredDataForPCA`.impute_8 * -0.226213275676 + `CenteredDataForPCA`.impute_9 * -0.0189854211214 + `CenteredDataForPCA`.impute_10 * 0.168866800315 + `CenteredDataForPCA`.impute_11 * -0.184778812892 + `CenteredDataForPCA`.impute_12 * 0.119888581607 + `CenteredDataForPCA`.impute_13 * 0.225480552745 + `CenteredDataForPCA`.impute_14 * -0.279042502446 + `CenteredDataForPCA`.impute_15 * 0.122223810431 + `CenteredDataForPCA`.impute_16 * -0.129669605398 + `CenteredDataForPCA`.impute_17 * 0.180976911179 + `CenteredDataForPCA`.impute_18 * 0.0609455301364 + `CenteredDataForPCA`.impute_19 * -0.0293672023687 + `CenteredDataForPCA`.impute_20 * 0.00423327084925 + `CenteredDataForPCA`.impute_21 * 0.250439872309 AS anoova_5, `CenteredDataForPCA`.impute_2 * 0.018494050728 + `CenteredDataForPCA`.impute_3 * 0.120160530031 + `CenteredDataForPCA`.impute_4 * -0.161655126523 + `CenteredDataForPCA`.impute_5 * 0.139160599417 + `CenteredDataForPCA`.impute_6 * -0.213487116708 + `CenteredDataForPCA`.impute_7 * -0.144698800819 + `CenteredDataForPCA`.impute_8 * -0.20483326294 + `CenteredDataForPCA`.impute_9 * -0.0367717424498 + `CenteredDataForPCA`.impute_10 * -0.320296868244 + `CenteredDataForPCA`.impute_11 * 0.0743993010839 + `CenteredDataForPCA`.impute_12 * -0.174647301662 + `CenteredDataForPCA`.impute_13 * -0.319329804139 + `CenteredDataForPCA`.impute_14 * 0.0807418612866 + `CenteredDataForPCA`.impute_15 * 0.188351529074 + `CenteredDataForPCA`.impute_16 * -0.122143559567 + `CenteredDataForPCA`.impute_17 * 0.152049549043 + `CenteredDataForPCA`.impute_18 * 0.654434358431 + `CenteredDataForPCA`.impute_19 * 0.220876957645 + `CenteredDataForPCA`.impute_20 * -0.0698442729678 + `CenteredDataForPCA`.impute_21 * 0.165277521118 AS anoova_6, `CenteredDataForPCA`.impute_2 * 0.00672850386712 + `CenteredDataForPCA`.impute_3 * -0.545644702668 + `CenteredDataForPCA`.impute_4 * 0.164724452647 + `CenteredDataForPCA`.impute_5 * -0.13542518735 + `CenteredDataForPCA`.impute_6 * 0.142096066644 + `CenteredDataForPCA`.impute_7 * 0.0270355797057 + `CenteredDataForPCA`.impute_8 * -0.0441302255036 + `CenteredDataForPCA`.impute_9 * -0.199054455485 + `CenteredDataForPCA`.impute_10 * -0.490948736705 + `CenteredDataForPCA`.impute_11 * 0.244986476127 + `CenteredDataForPCA`.impute_12 * -0.0466850124564 + `CenteredDataForPCA`.impute_13 * 0.416093080845 + `CenteredDataForPCA`.impute_14 * -0.00121485392504 + `CenteredDataForPCA`.impute_15 * -0.112163342426 + `CenteredDataForPCA`.impute_16 * -0.0453102539852 + `CenteredDataForPCA`.impute_17 * 0.195594211335 + `CenteredDataForPCA`.impute_18 * 0.142444236985 + `CenteredDataForPCA`.impute_19 * -0.191375621284 + `CenteredDataForPCA`.impute_20 * 0.0204872810104 + `CenteredDataForPCA`.impute_21 * 0.0875853283061 AS anoova_7, `CenteredDataForPCA`.impute_2 * 0.0403450171254 + `CenteredDataForPCA`.impute_3 * 0.465632948618 + `CenteredDataForPCA`.impute_4 * 0.0821386564581 + `CenteredDataForPCA`.impute_5 * 0.111401819629 + `CenteredDataForPCA`.impute_6 * -0.0187331076203 + `CenteredDataForPCA`.impute_7 * 0.00204046954396 + `CenteredDataForPCA`.impute_8 * 0.125453517688 + `CenteredDataForPCA`.impute_9 * -0.0845201377136 + `CenteredDataForPCA`.impute_10 * -0.09900280914 + `CenteredDataForPCA`.impute_11 * 0.0902968023358 + `CenteredDataForPCA`.impute_12 * 0.555900565548 + `CenteredDataForPCA`.impute_13 * 0.507558253389 + `CenteredDataForPCA`.impute_14 * 0.169837114525 + `CenteredDataForPCA`.impute_15 * 0.0264944570407 + `CenteredDataForPCA`.impute_16 * 0.154090701287 + `CenteredDataForPCA`.impute_17 * -0.123263510973 + `CenteredDataForPCA`.impute_18 * 0.261414476175 + `CenteredDataForPCA`.impute_19 * 0.0999214194034 + `CenteredDataForPCA`.impute_20 * 0.0602677646973 + `CenteredDataForPCA`.impute_21 * 0.0642606550838 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.0283160387699 + `CenteredDataForPCA`.impute_3 * -0.0603182320319 + `CenteredDataForPCA`.impute_4 * 0.205178064602 + `CenteredDataForPCA`.impute_5 * -0.119682325569 + `CenteredDataForPCA`.impute_6 * -0.271478241055 + `CenteredDataForPCA`.impute_7 * -0.0787481790222 + `CenteredDataForPCA`.impute_8 * -0.123200006061 + `CenteredDataForPCA`.impute_9 * -0.178421426363 + `CenteredDataForPCA`.impute_10 * -0.136214191846 + `CenteredDataForPCA`.impute_11 * -0.334615135691 + `CenteredDataForPCA`.impute_12 * -0.329896173335 + `CenteredDataForPCA`.impute_13 * 0.242392089245 + `CenteredDataForPCA`.impute_14 * 0.03573637771 + `CenteredDataForPCA`.impute_15 * -0.0429704952274 + `CenteredDataForPCA`.impute_16 * -0.0423915053275 + `CenteredDataForPCA`.impute_17 * -0.621683101652 + `CenteredDataForPCA`.impute_18 * -0.0527349024599 + `CenteredDataForPCA`.impute_19 * 0.341204712775 + `CenteredDataForPCA`.impute_20 * -0.0379987200264 + `CenteredDataForPCA`.impute_21 * 0.0453966188274 AS anoova_9, `CenteredDataForPCA`.impute_2 * -0.205585429757 + `CenteredDataForPCA`.impute_3 * -0.104952962018 + `CenteredDataForPCA`.impute_4 * 0.468223622857 + `CenteredDataForPCA`.impute_5 * -0.448760920157 + `CenteredDataForPCA`.impute_6 * 0.202909853525 + `CenteredDataForPCA`.impute_7 * -0.0170875845002 + `CenteredDataForPCA`.impute_8 * 0.0691711460329 + `CenteredDataForPCA`.impute_9 * -0.055461032076 + `CenteredDataForPCA`.impute_10 * 0.079600440283 + `CenteredDataForPCA`.impute_11 * 0.105249302452 + `CenteredDataForPCA`.impute_12 * 0.212563525461 + `CenteredDataForPCA`.impute_13 * -0.345629891921 + `CenteredDataForPCA`.impute_14 * -0.0815578311675 + `CenteredDataForPCA`.impute_15 * 0.125181582461 + `CenteredDataForPCA`.impute_16 * 0.19202324084 + `CenteredDataForPCA`.impute_17 * -0.16496376303 + `CenteredDataForPCA`.impute_18 * 0.311655357667 + `CenteredDataForPCA`.impute_19 * 0.135376188764 + `CenteredDataForPCA`.impute_20 * 5.64258495352e-05 + `CenteredDataForPCA`.impute_21 * -0.304719609092 AS anoova_10, `CenteredDataForPCA`.impute_2 * 0.0777584514344 + `CenteredDataForPCA`.impute_3 * -0.173428335772 + `CenteredDataForPCA`.impute_4 * 0.0842574537046 + `CenteredDataForPCA`.impute_5 * 0.117773737916 + `CenteredDataForPCA`.impute_6 * -0.506649825732 + `CenteredDataForPCA`.impute_7 * -0.00515972328663 + `CenteredDataForPCA`.impute_8 * -0.0533946592896 + `CenteredDataForPCA`.impute_9 * -0.0886273417196 + `CenteredDataForPCA`.impute_10 * 0.301671352762 + `CenteredDataForPCA`.impute_11 * -0.116081460914 + `CenteredDataForPCA`.impute_12 * -0.10358773021 + `CenteredDataForPCA`.impute_13 * 0.113976568892 + `CenteredDataForPCA`.impute_14 * -0.0538904783785 + `CenteredDataForPCA`.impute_15 * -0.0867232861312 + `CenteredDataForPCA`.impute_16 * 0.613398194754 + `CenteredDataForPCA`.impute_17 * 0.188798137926 + `CenteredDataForPCA`.impute_18 * 0.233769671109 + `CenteredDataForPCA`.impute_19 * -0.226888563462 + `CenteredDataForPCA`.impute_20 * -0.0401564682994 + `CenteredDataForPCA`.impute_21 * -0.13119374012 AS anoova_11, `CenteredDataForPCA`.impute_2 * -0.0493233608612 + `CenteredDataForPCA`.impute_3 * 0.323408481441 + `CenteredDataForPCA`.impute_4 * 0.079984987013 + `CenteredDataForPCA`.impute_5 * -0.0489666395585 + `CenteredDataForPCA`.impute_6 * -0.237962128083 + `CenteredDataForPCA`.impute_7 * 0.116720186439 + `CenteredDataForPCA`.impute_8 * -0.316414815426 + `CenteredDataForPCA`.impute_9 * 0.170607413433 + `CenteredDataForPCA`.impute_10 * -0.328918619043 + `CenteredDataForPCA`.impute_11 * 0.262556816565 + `CenteredDataForPCA`.impute_12 * -0.103444676367 + `CenteredDataForPCA`.impute_13 * 0.0960005437766 + `CenteredDataForPCA`.impute_14 * -0.240837127302 + `CenteredDataForPCA`.impute_15 * -0.0946269945674 + `CenteredDataForPCA`.impute_16 * -0.000695255376865 + `CenteredDataForPCA`.impute_17 * 0.171871707502 + `CenteredDataForPCA`.impute_18 * -0.226221641215 + `CenteredDataForPCA`.impute_19 * 0.132230990309 + `CenteredDataForPCA`.impute_20 * -0.0111876715001 + `CenteredDataForPCA`.impute_21 * -0.567785167734 AS anoova_12, `CenteredDataForPCA`.impute_2 * 0.0470482467233 + `CenteredDataForPCA`.impute_3 * -0.415358191773 + `CenteredDataForPCA`.impute_4 * -0.0114423726085 + `CenteredDataForPCA`.impute_5 * 0.174108442876 + `CenteredDataForPCA`.impute_6 * -0.187915245928 + `CenteredDataForPCA`.impute_7 * 0.0561795898236 + `CenteredDataForPCA`.impute_8 * -0.428115026427 + `CenteredDataForPCA`.impute_9 * 0.321523413388 + `CenteredDataForPCA`.impute_10 * 0.300530613362 + `CenteredDataForPCA`.impute_11 * 0.343437587468 + `CenteredDataForPCA`.impute_12 * 0.354027212187 + `CenteredDataForPCA`.impute_13 * 0.0304780427783 + `CenteredDataForPCA`.impute_14 * 0.0208436421312 + `CenteredDataForPCA`.impute_15 * -0.033321828874 + `CenteredDataForPCA`.impute_16 * -0.172625473251 + `CenteredDataForPCA`.impute_17 * -0.211457746852 + `CenteredDataForPCA`.impute_18 * 0.0197640738623 + `CenteredDataForPCA`.impute_19 * 0.229187301904 + `CenteredDataForPCA`.impute_20 * 0.0330981815935 + `CenteredDataForPCA`.impute_21 * 0.0713261798852 AS anoova_13, `CenteredDataForPCA`.impute_2 * -0.000912622134861 + `CenteredDataForPCA`.impute_3 * -0.0381863714939 + `CenteredDataForPCA`.impute_4 * 0.296923032907 + `CenteredDataForPCA`.impute_5 * 0.199603450548 + `CenteredDataForPCA`.impute_6 * 0.261533903597 + `CenteredDataForPCA`.impute_7 * 0.00713170868066 + `CenteredDataForPCA`.impute_8 * -0.0242402247833 + `CenteredDataForPCA`.impute_9 * -0.0392544527665 + `CenteredDataForPCA`.impute_10 * 0.323230287046 + `CenteredDataForPCA`.impute_11 * -0.234308589571 + `CenteredDataForPCA`.impute_12 * -0.155780204788 + `CenteredDataForPCA`.impute_13 * 0.286635394893 + `CenteredDataForPCA`.impute_14 * -0.0726852213041 + `CenteredDataForPCA`.impute_15 * 0.0900923869669 + `CenteredDataForPCA`.impute_16 * -0.17277552993 + `CenteredDataForPCA`.impute_17 * 0.477399512007 + `CenteredDataForPCA`.impute_18 * 0.086750274188 + `CenteredDataForPCA`.impute_19 * 0.498186058203 + `CenteredDataForPCA`.impute_20 * -0.0305288881008 + `CenteredDataForPCA`.impute_21 * -0.0796411587782 AS anoova_14, `CenteredDataForPCA`.impute_2 * -0.0331705210028 + `CenteredDataForPCA`.impute_3 * -0.0984005146589 + `CenteredDataForPCA`.impute_4 * 0.0681627293799 + `CenteredDataForPCA`.impute_5 * -0.137614427573 + `CenteredDataForPCA`.impute_6 * -0.339085388993 + `CenteredDataForPCA`.impute_7 * -0.0775072444071 + `CenteredDataForPCA`.impute_8 * 0.586887220912 + `CenteredDataForPCA`.impute_9 * 0.317897262169 + `CenteredDataForPCA`.impute_10 * -0.13052680872 + `CenteredDataForPCA`.impute_11 * 0.226498053053 + `CenteredDataForPCA`.impute_12 * -0.019735166939 + `CenteredDataForPCA`.impute_13 * -0.0194934421954 + `CenteredDataForPCA`.impute_14 * -0.090819610815 + `CenteredDataForPCA`.impute_15 * 0.0297421560776 + `CenteredDataForPCA`.impute_16 * 0.137715942219 + `CenteredDataForPCA`.impute_17 * 0.156051142793 + `CenteredDataForPCA`.impute_18 * -0.186803420156 + `CenteredDataForPCA`.impute_19 * 0.38971964296 + `CenteredDataForPCA`.impute_20 * -0.0784537322401 + `CenteredDataForPCA`.impute_21 * 0.290965948484 AS anoova_15, `CenteredDataForPCA`.impute_2 * -0.0581788769073 + `CenteredDataForPCA`.impute_3 * 0.301549336294 + `CenteredDataForPCA`.impute_4 * 0.373821342406 + `CenteredDataForPCA`.impute_5 * -0.0228962572012 + `CenteredDataForPCA`.impute_6 * 0.0392750443376 + `CenteredDataForPCA`.impute_7 * -0.0251617438345 + `CenteredDataForPCA`.impute_8 * -0.0389235244262 + `CenteredDataForPCA`.impute_9 * 0.194252797237 + `CenteredDataForPCA`.impute_10 * 0.273162995757 + `CenteredDataForPCA`.impute_11 * 0.425611387733 + `CenteredDataForPCA`.impute_12 * -0.440326189422 + `CenteredDataForPCA`.impute_13 * 0.165043663572 + `CenteredDataForPCA`.impute_14 * -0.0574692167294 + `CenteredDataForPCA`.impute_15 * 0.103189304078 + `CenteredDataForPCA`.impute_16 * -0.116889438771 + `CenteredDataForPCA`.impute_17 * -0.128293053741 + `CenteredDataForPCA`.impute_18 * 0.120254071255 + `CenteredDataForPCA`.impute_19 * -0.329700553115 + `CenteredDataForPCA`.impute_20 * -0.0303993670207 + `CenteredDataForPCA`.impute_21 * 0.280965299657 AS anoova_16, `CenteredDataForPCA`.impute_2 * 0.0220736259162 + `CenteredDataForPCA`.impute_3 * 0.106011264975 + `CenteredDataForPCA`.impute_4 * 0.0789890153203 + `CenteredDataForPCA`.impute_5 * -0.0524843591088 + `CenteredDataForPCA`.impute_6 * 0.310105399969 + `CenteredDataForPCA`.impute_7 * -0.0554561194035 + `CenteredDataForPCA`.impute_8 * -0.461961791369 + `CenteredDataForPCA`.impute_9 * 0.0441645111019 + `CenteredDataForPCA`.impute_10 * -0.140446451689 + `CenteredDataForPCA`.impute_11 * 0.0155150305714 + `CenteredDataForPCA`.impute_12 * -0.0228201688095 + `CenteredDataForPCA`.impute_13 * -0.107435430109 + `CenteredDataForPCA`.impute_14 * 0.0899493132064 + `CenteredDataForPCA`.impute_15 * -0.000870124446328 + `CenteredDataForPCA`.impute_16 * 0.57693114152 + `CenteredDataForPCA`.impute_17 * 0.0939646874657 + `CenteredDataForPCA`.impute_18 * -0.266964588385 + `CenteredDataForPCA`.impute_19 * 0.190814153808 + `CenteredDataForPCA`.impute_20 * -0.00199973747711 + `CenteredDataForPCA`.impute_21 * 0.418565200695 AS anoova_17, `CenteredDataForPCA`.impute_2 * 0.0571150984934 + `CenteredDataForPCA`.impute_3 * -0.04153972302 + `CenteredDataForPCA`.impute_4 * 0.0650217579089 + `CenteredDataForPCA`.impute_5 * -0.0505730926786 + `CenteredDataForPCA`.impute_6 * 0.148216894791 + `CenteredDataForPCA`.impute_7 * -0.0183786662437 + `CenteredDataForPCA`.impute_8 * -0.0098482704841 + `CenteredDataForPCA`.impute_9 * 0.783830223945 + `CenteredDataForPCA`.impute_10 * -0.190178976335 + `CenteredDataForPCA`.impute_11 * -0.445449132973 + `CenteredDataForPCA`.impute_12 * 0.00377887022524 + `CenteredDataForPCA`.impute_13 * 0.106987697234 + `CenteredDataForPCA`.impute_14 * 0.0175328942092 + `CenteredDataForPCA`.impute_15 * -0.114294037895 + `CenteredDataForPCA`.impute_16 * 0.036576773045 + `CenteredDataForPCA`.impute_17 * -0.034983317757 + `CenteredDataForPCA`.impute_18 * 0.242670399219 + `CenteredDataForPCA`.impute_19 * -0.166283753501 + `CenteredDataForPCA`.impute_20 * -0.0119254635693 + `CenteredDataForPCA`.impute_21 * -0.052599903875 AS anoova_18, `CenteredDataForPCA`.impute_2 * -0.00257437637749 + `CenteredDataForPCA`.impute_3 * 0.0699715705168 + `CenteredDataForPCA`.impute_4 * 0.572550467658 + `CenteredDataForPCA`.impute_5 * 0.111645023906 + `CenteredDataForPCA`.impute_6 * -0.328325918234 + `CenteredDataForPCA`.impute_7 * 0.0932262857553 + `CenteredDataForPCA`.impute_8 * -0.111489180876 + `CenteredDataForPCA`.impute_9 * -0.0883225117802 + `CenteredDataForPCA`.impute_10 * -0.152612377886 + `CenteredDataForPCA`.impute_11 * -0.27724922679 + `CenteredDataForPCA`.impute_12 * 0.300808274269 + `CenteredDataForPCA`.impute_13 * -0.252214696669 + `CenteredDataForPCA`.impute_14 * -0.0313997084807 + `CenteredDataForPCA`.impute_15 * -0.0208247423622 + `CenteredDataForPCA`.impute_16 * -0.27095703334 + `CenteredDataForPCA`.impute_17 * 0.194033652746 + `CenteredDataForPCA`.impute_18 * -0.180721185817 + `CenteredDataForPCA`.impute_19 * -0.218707811567 + `CenteredDataForPCA`.impute_20 * 0.0457293008981 + `CenteredDataForPCA`.impute_21 * 0.262245306189 AS anoova_19, `CenteredDataForPCA`.impute_2 * -0.606235617542 + `CenteredDataForPCA`.impute_3 * -5.55111512313e-17 + `CenteredDataForPCA`.impute_4 * 1.2490009027e-16 + `CenteredDataForPCA`.impute_5 * 0.135416649753 + `CenteredDataForPCA`.impute_6 * -9.71445146547e-17 + `CenteredDataForPCA`.impute_7 * 0.178882648204 + `CenteredDataForPCA`.impute_8 * -8.60449949139e-17 + `CenteredDataForPCA`.impute_9 * -1.49186218934e-16 + `CenteredDataForPCA`.impute_10 * 1.28369537222e-16 + `CenteredDataForPCA`.impute_11 * 1.11022302463e-16 + `CenteredDataForPCA`.impute_12 * -1.4224732503e-16 + `CenteredDataForPCA`.impute_13 * -6.93889390391e-17 + `CenteredDataForPCA`.impute_14 * 0.321291975211 + `CenteredDataForPCA`.impute_15 * -0.276136109722 + `CenteredDataForPCA`.impute_16 * -6.93889390391e-18 + `CenteredDataForPCA`.impute_17 * -2.77555756156e-16 + `CenteredDataForPCA`.impute_18 * -3.46944695195e-18 + `CenteredDataForPCA`.impute_19 * 8.17488438054e-17 + `CenteredDataForPCA`.impute_20 * -0.634556554404 + `CenteredDataForPCA`.impute_21 * 2.08166817117e-16 AS anoova_20, `CenteredDataForPCA`.impute_2 * 0.530570655809 + `CenteredDataForPCA`.impute_3 * 1.11022302463e-16 + `CenteredDataForPCA`.impute_4 * -2.91433543964e-16 + `CenteredDataForPCA`.impute_5 * -0.195525196095 + `CenteredDataForPCA`.impute_6 * 1.05818132035e-16 + `CenteredDataForPCA`.impute_7 * 0.587527797247 + `CenteredDataForPCA`.impute_8 * -6.83047368666e-18 + `CenteredDataForPCA`.impute_9 * 3.12250225676e-17 + `CenteredDataForPCA`.impute_10 * 1.04083408559e-16 + `CenteredDataForPCA`.impute_11 * 7.2858385991e-17 + `CenteredDataForPCA`.impute_12 * -7.97972798949e-17 + `CenteredDataForPCA`.impute_13 * -3.46944695195e-17 + `CenteredDataForPCA`.impute_14 * 0.110668119808 + `CenteredDataForPCA`.impute_15 * 0.322932412101 + `CenteredDataForPCA`.impute_16 * 3.46944695195e-17 + `CenteredDataForPCA`.impute_17 * -2.53269627493e-16 + `CenteredDataForPCA`.impute_18 * 7.4593109467e-17 + `CenteredDataForPCA`.impute_19 * 2.36356073602e-17 + `CenteredDataForPCA`.impute_20 * -0.467485816705 + `CenteredDataForPCA`.impute_21 * 1.83880688454e-16 AS anoova_21 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, -0.5490598362323322 * `ADS_ano_2_OUT`.anoova_2 + -0.2990385092872297 * `ADS_ano_2_OUT`.anoova_3 + -0.6991598787497499 * `ADS_ano_2_OUT`.anoova_4 + -0.07157929436521268 * `ADS_ano_2_OUT`.anoova_5 + -0.19239669264321427 * `ADS_ano_2_OUT`.anoova_6 + -0.03685871320801649 * `ADS_ano_2_OUT`.anoova_7 + 0.06726083518967284 * `ADS_ano_2_OUT`.anoova_8 + 0.16085862930580977 * `ADS_ano_2_OUT`.anoova_9 + 0.29236741071042294 * `ADS_ano_2_OUT`.anoova_10 + 0.5768900906019565 * `ADS_ano_2_OUT`.anoova_11 + 0.21190261304249322 * `ADS_ano_2_OUT`.anoova_12 + -0.29548975161350965 * `ADS_ano_2_OUT`.anoova_13 + 0.039706817214978846 * `ADS_ano_2_OUT`.anoova_14 + -0.013674784544020586 * `ADS_ano_2_OUT`.anoova_15 + 0.3227030872619483 * `ADS_ano_2_OUT`.anoova_16 + -0.1456990515652532 * `ADS_ano_2_OUT`.anoova_17 + -0.1173653739281102 * `ADS_ano_2_OUT`.anoova_18 + 0.37227177391258626 * `ADS_ano_2_OUT`.anoova_19 + -1.9936434420766925e-16 * `ADS_ano_2_OUT`.anoova_20 + 5.324107671704334e-16 * `ADS_ano_2_OUT`.anoova_21 + -1.67304071362 AS `Score_0`, 0.07965540044894942 * `ADS_ano_2_OUT`.anoova_2 + 0.11040548566468283 * `ADS_ano_2_OUT`.anoova_3 + -0.11077801194200572 * `ADS_ano_2_OUT`.anoova_4 + -0.03696790404307539 * `ADS_ano_2_OUT`.anoova_5 + -0.08866104742504127 * `ADS_ano_2_OUT`.anoova_6 + 0.11235496851972657 * `ADS_ano_2_OUT`.anoova_7 + 0.027427851678809335 * `ADS_ano_2_OUT`.anoova_8 + -0.26127867422991113 * `ADS_ano_2_OUT`.anoova_9 + -0.3755750295544966 * `ADS_ano_2_OUT`.anoova_10 + 0.22489766212308288 * `ADS_ano_2_OUT`.anoova_11 + 0.26961486350156655 * `ADS_ano_2_OUT`.anoova_12 + 0.1867466462140617 * `ADS_ano_2_OUT`.anoova_13 + 0.10877210706040968 * `ADS_ano_2_OUT`.anoova_14 + -0.30126950605177344 * `ADS_ano_2_OUT`.anoova_15 + -0.33437200797685246 * `ADS_ano_2_OUT`.anoova_16 + 0.08079140904536812 * `ADS_ano_2_OUT`.anoova_17 + -0.3238217686024821 * `ADS_ano_2_OUT`.anoova_18 + 0.07727963644779438 * `ADS_ano_2_OUT`.anoova_19 + -5.670608441058045e-16 * `ADS_ano_2_OUT`.anoova_20 + -4.2989648233305853e-16 * `ADS_ano_2_OUT`.anoova_21 + -1.14370566268 AS `Score_1`, -0.3759766993988415 * `ADS_ano_2_OUT`.anoova_2 + -0.04741907368075505 * `ADS_ano_2_OUT`.anoova_3 + 0.4729170496068907 * `ADS_ano_2_OUT`.anoova_4 + 0.11630730620383589 * `ADS_ano_2_OUT`.anoova_5 + -0.12512263650846925 * `ADS_ano_2_OUT`.anoova_6 + 0.015260122513034416 * `ADS_ano_2_OUT`.anoova_7 + 0.05655854525128855 * `ADS_ano_2_OUT`.anoova_8 + 0.200722316743634 * `ADS_ano_2_OUT`.anoova_9 + 0.04413785198778339 * `ADS_ano_2_OUT`.anoova_10 + -0.37638234709179813 * `ADS_ano_2_OUT`.anoova_11 + -0.34826588896169725 * `ADS_ano_2_OUT`.anoova_12 + 0.2402131982122113 * `ADS_ano_2_OUT`.anoova_13 + -0.46525919346031785 * `ADS_ano_2_OUT`.anoova_14 + 0.7016830509024838 * `ADS_ano_2_OUT`.anoova_15 + 0.01144401796020684 * `ADS_ano_2_OUT`.anoova_16 + 0.01972669589029895 * `ADS_ano_2_OUT`.anoova_17 + 1.018509458905162 * `ADS_ano_2_OUT`.anoova_18 + -0.2852519699359033 * `ADS_ano_2_OUT`.anoova_19 + -7.960953029087145e-16 * `ADS_ano_2_OUT`.anoova_20 + 4.592374781560539e-16 * `ADS_ano_2_OUT`.anoova_21 + -1.43462750977 AS `Score_2`, 1.0384352183724408 * `ADS_ano_2_OUT`.anoova_2 + 0.3657026821797601 * `ADS_ano_2_OUT`.anoova_3 + 0.48310459339706724 * `ADS_ano_2_OUT`.anoova_4 + 0.06612675683090434 * `ADS_ano_2_OUT`.anoova_5 + 0.4133878277732675 * `ADS_ano_2_OUT`.anoova_6 + -0.2831526112541385 * `ADS_ano_2_OUT`.anoova_7 + 0.21139383870857498 * `ADS_ano_2_OUT`.anoova_8 + -0.021092189939927574 * `ADS_ano_2_OUT`.anoova_9 + 0.060371000986244684 * `ADS_ano_2_OUT`.anoova_10 + -0.49579523984488943 * `ADS_ano_2_OUT`.anoova_11 + -0.0168867741297751 * `ADS_ano_2_OUT`.anoova_12 + -0.14978721334691344 * `ADS_ano_2_OUT`.anoova_13 + 0.10483685849483212 * `ADS_ano_2_OUT`.anoova_14 + -0.2917126110345804 * `ADS_ano_2_OUT`.anoova_15 + 0.012096379028249738 * `ADS_ano_2_OUT`.anoova_16 + 0.17060379713198 * `ADS_ano_2_OUT`.anoova_17 + -0.7828053315273428 * `ADS_ano_2_OUT`.anoova_18 + -0.6746096023034528 * `ADS_ano_2_OUT`.anoova_19 + 1.1345263487115787e-15 * `ADS_ano_2_OUT`.anoova_20 + -5.241815245254285e-16 * `ADS_ano_2_OUT`.anoova_21 + -2.10914146535 AS `Score_3` 
FROM `ADS_ano_2_OUT`), 
orig_cte AS 
(SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Score_0` AS `Score_0`, linear_model_cte.`Score_1` AS `Score_1`, linear_model_cte.`Score_2` AS `Score_2`, linear_model_cte.`Score_3` AS `Score_3`, (1.0 / (1.0 + exp(-linear_model_cte.`Score_0`))) / (1.0 / (1.0 + exp(-linear_model_cte.`Score_0`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_1`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_2`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_3`))) AS `Proba_0`, (1.0 / (1.0 + exp(-linear_model_cte.`Score_1`))) / (1.0 / (1.0 + exp(-linear_model_cte.`Score_0`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_1`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_2`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_3`))) AS `Proba_1`, (1.0 / (1.0 + exp(-linear_model_cte.`Score_2`))) / (1.0 / (1.0 + exp(-linear_model_cte.`Score_0`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_1`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_2`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_3`))) AS `Proba_2`, (1.0 / (1.0 + exp(-linear_model_cte.`Score_3`))) / (1.0 / (1.0 + exp(-linear_model_cte.`Score_0`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_1`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_2`)) + 1.0 / (1.0 + exp(-linear_model_cte.`Score_3`))) AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, NULL AS `Decision` 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu.`KEY` AS `KEY`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, (SELECT max(score_class_union.`LogProba`) AS max_1 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_LogProba`, (SELECT max(score_class_union.`Proba`) AS max_2 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Proba`, (SELECT max(score_class_union.`Score`) AS max_3 
FROM score_class_union 
WHERE orig_cte.`KEY` = score_class_union.`KEY`) AS `max_Score` 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max.`max_LogProba` = score_class_union.`LogProba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_LogProba`, (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max.`max_Proba` = score_class_union.`Proba` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Proba`, (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max.`max_Score` = score_class_union.`Score` AND score_max.`KEY` = score_class_union.`KEY`) AS `arg_max_Score` 
FROM score_max)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Score_2` AS `Score_2`, arg_max_cte.`Score_3` AS `Score_3`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, arg_max_cte.`Proba_2` AS `Proba_2`, arg_max_cte.`Proba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`Proba_2` IS NULL OR arg_max_cte.`Proba_2` > 0.0) THEN ln(arg_max_cte.`Proba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`Proba_3` IS NULL OR arg_max_cte.`Proba_3` > 0.0) THEN ln(arg_max_cte.`Proba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte