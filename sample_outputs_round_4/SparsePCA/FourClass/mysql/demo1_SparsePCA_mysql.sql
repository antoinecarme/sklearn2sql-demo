-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` * 0.0 + `ADS`.`Feature_1` * -1.87093205241 + `ADS`.`Feature_2` * 0.0 + `ADS`.`Feature_3` * 0.0 + `ADS`.`Feature_4` * 0.0 + `ADS`.`Feature_5` * 0.0 + `ADS`.`Feature_6` * 0.0 + `ADS`.`Feature_7` * 0.0 + `ADS`.`Feature_8` * 0.0 + `ADS`.`Feature_9` * 1.24658642113 + `ADS`.`Feature_10` * 0.0 + `ADS`.`Feature_11` * 0.0 + `ADS`.`Feature_12` * 0.0 + `ADS`.`Feature_13` * 11.4390857784 + `ADS`.`Feature_14` * -19.7358901263 + `ADS`.`Feature_15` * 0.0 + `ADS`.`Feature_16` * 0.0 + `ADS`.`Feature_17` * 0.0 + `ADS`.`Feature_18` * 0.0 + `ADS`.`Feature_19` * 9.71095259635 AS sparse_pca_1, `ADS`.`Feature_0` * 0.0 + `ADS`.`Feature_1` * 0.0 + `ADS`.`Feature_2` * 0.0 + `ADS`.`Feature_3` * -15.1532342796 + `ADS`.`Feature_4` * 0.0 + `ADS`.`Feature_5` * 1.05620541128 + `ADS`.`Feature_6` * 0.427137284611 + `ADS`.`Feature_7` * 0.0 + `ADS`.`Feature_8` * 0.0 + `ADS`.`Feature_9` * 0.0 + `ADS`.`Feature_10` * 0.0 + `ADS`.`Feature_11` * 0.0 + `ADS`.`Feature_12` * 0.0 + `ADS`.`Feature_13` * 11.2740382006 + `ADS`.`Feature_14` * 0.0 + `ADS`.`Feature_15` * 0.0 + `ADS`.`Feature_16` * 0.0 + `ADS`.`Feature_17` * 0.0 + `ADS`.`Feature_18` * -0.904208445528 + `ADS`.`Feature_19` * -8.57433145303 AS sparse_pca_2, `ADS`.`Feature_0` * 0.268930701906 + `ADS`.`Feature_1` * -1.16861780876 + `ADS`.`Feature_2` * 0.0 + `ADS`.`Feature_3` * 0.0 + `ADS`.`Feature_4` * -0.165985642158 + `ADS`.`Feature_5` * 0.0 + `ADS`.`Feature_6` * 0.425342587184 + `ADS`.`Feature_7` * -0.0418816901167 + `ADS`.`Feature_8` * 0.0 + `ADS`.`Feature_9` * 0.0 + `ADS`.`Feature_10` * -0.350688648846 + `ADS`.`Feature_11` * 0.586554209549 + `ADS`.`Feature_12` * 0.0 + `ADS`.`Feature_13` * 0.0 + `ADS`.`Feature_14` * 0.0 + `ADS`.`Feature_15` * 0.0 + `ADS`.`Feature_16` * -0.326038353411 + `ADS`.`Feature_17` * 15.4586438091 + `ADS`.`Feature_18` * 0.0 + `ADS`.`Feature_19` * 0.41587844907 AS sparse_pca_3, `ADS`.`Feature_0` * 0.0 + `ADS`.`Feature_1` * 0.0 + `ADS`.`Feature_2` * -15.196614882 + `ADS`.`Feature_3` * 0.0 + `ADS`.`Feature_4` * 0.0 + `ADS`.`Feature_5` * 0.0 + `ADS`.`Feature_6` * 0.0541463713127 + `ADS`.`Feature_7` * 0.0 + `ADS`.`Feature_8` * 0.0 + `ADS`.`Feature_9` * 0.0 + `ADS`.`Feature_10` * -0.96984526709 + `ADS`.`Feature_11` * 0.0 + `ADS`.`Feature_12` * 0.0 + `ADS`.`Feature_13` * 0.0 + `ADS`.`Feature_14` * 3.8190334956 + `ADS`.`Feature_15` * -0.0716204440624 + `ADS`.`Feature_16` * 0.121705783991 + `ADS`.`Feature_17` * 0.0 + `ADS`.`Feature_18` * 0.0 + `ADS`.`Feature_19` * 1.25788865923 AS sparse_pca_4, `ADS`.`Feature_0` * 0.0 + `ADS`.`Feature_1` * 0.0 + `ADS`.`Feature_2` * 0.0 + `ADS`.`Feature_3` * 0.0 + `ADS`.`Feature_4` * 0.0 + `ADS`.`Feature_5` * -0.631774248397 + `ADS`.`Feature_6` * 0.0 + `ADS`.`Feature_7` * 0.0 + `ADS`.`Feature_8` * 0.0 + `ADS`.`Feature_9` * 0.0 + `ADS`.`Feature_10` * -4.75671679445 + `ADS`.`Feature_11` * 0.0 + `ADS`.`Feature_12` * -7.92408367605 + `ADS`.`Feature_13` * 0.0 + `ADS`.`Feature_14` * 0.0 + `ADS`.`Feature_15` * 4.46364797525 + `ADS`.`Feature_16` * 0.0 + `ADS`.`Feature_17` * 0.0 + `ADS`.`Feature_18` * 0.0 + `ADS`.`Feature_19` * 0.0 AS sparse_pca_5 
FROM `INPUT_DATA` AS `ADS`