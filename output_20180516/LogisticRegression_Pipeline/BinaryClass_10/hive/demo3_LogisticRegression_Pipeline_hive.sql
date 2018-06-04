-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression_Pipeline
-- Dataset : BinaryClass_10
-- Database : hive


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602141328_ypv_ads_imp_1_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180602141328_ypv_ads_imp_1_out` STORED AS ORC AS SELECT `ADS_imp_1_OUT`.`KEY`, `ADS_imp_1_OUT`.`impter_2`, `ADS_imp_1_OUT`.`impter_3`, `ADS_imp_1_OUT`.`impter_4`, `ADS_imp_1_OUT`.`impter_5`, `ADS_imp_1_OUT`.`impter_6`, `ADS_imp_1_OUT`.`impter_7`, `ADS_imp_1_OUT`.`impter_8`, `ADS_imp_1_OUT`.`impter_9`, `ADS_imp_1_OUT`.`impter_10`, `ADS_imp_1_OUT`.`impter_11` 
FROM (SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.061829205238134496 ELSE `ADS`.`Feature_0` END AS `impter_2`, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.17702463767183324 ELSE `ADS`.`Feature_1` END AS `impter_3`, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.04138385004903454 ELSE `ADS`.`Feature_2` END AS `impter_4`, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.13060646805847148 ELSE `ADS`.`Feature_3` END AS `impter_5`, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -0.05955810471983082 ELSE `ADS`.`Feature_4` END AS `impter_6`, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.04892908987010584 ELSE `ADS`.`Feature_5` END AS `impter_7`, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.19101797861713127 ELSE `ADS`.`Feature_6` END AS `impter_8`, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.02204959673267471 ELSE `ADS`.`Feature_7` END AS `impter_9`, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -0.057729814034140035 ELSE `ADS`.`Feature_8` END AS `impter_10`, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -0.05254959205203237 ELSE `ADS`.`Feature_9` END AS `impter_11` 
FROM `BinaryClass_10` AS `ADS`) AS `ADS_imp_1_OUT`

-- Code For temporary table tmp_20180602141328_ypv_ads_imp_1_out part 2. Populate

SELECT * FROM `tmp_20180602141328_ypv_ads_imp_1_out`

-- Code For temporary table tmp_20180602141328_s06_ads_sca_2_out part 1. Create 

CREATE TEMPORARY TABLE `tmp_20180602141328_s06_ads_sca_2_out` STORED AS ORC AS SELECT `ADS_sca_2_OUT`.`KEY`, `ADS_sca_2_OUT`.`scaler_2`, `ADS_sca_2_OUT`.`scaler_3`, `ADS_sca_2_OUT`.`scaler_4`, `ADS_sca_2_OUT`.`scaler_5`, `ADS_sca_2_OUT`.`scaler_6`, `ADS_sca_2_OUT`.`scaler_7`, `ADS_sca_2_OUT`.`scaler_8`, `ADS_sca_2_OUT`.`scaler_9`, `ADS_sca_2_OUT`.`scaler_10`, `ADS_sca_2_OUT`.`scaler_11` 
FROM (SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.`impter_2` AS DOUBLE) - 0.061829205238134496) / 1.2283839562090673 AS `scaler_2`, (CAST(`ADS_imp_1_OUT`.`impter_3` AS DOUBLE) - 0.17702463767183324) / 0.940821656314017 AS `scaler_3`, (CAST(`ADS_imp_1_OUT`.`impter_4` AS DOUBLE) - 0.04138385004903454) / 1.0741824888811282 AS `scaler_4`, (CAST(`ADS_imp_1_OUT`.`impter_5` AS DOUBLE) - 0.13060646805847148) / 1.0792244559733761 AS `scaler_5`, (CAST(`ADS_imp_1_OUT`.`impter_6` AS DOUBLE) - -0.05955810471983082) / 1.1095891190508123 AS `scaler_6`, (CAST(`ADS_imp_1_OUT`.`impter_7` AS DOUBLE) - -0.04892908987010584) / 1.3781871812029047 AS `scaler_7`, (CAST(`ADS_imp_1_OUT`.`impter_8` AS DOUBLE) - 0.19101797861713127) / 0.9735285246303208 AS `scaler_8`, (CAST(`ADS_imp_1_OUT`.`impter_9` AS DOUBLE) - 0.02204959673267471) / 0.47460301203797095 AS `scaler_9`, (CAST(`ADS_imp_1_OUT`.`impter_10` AS DOUBLE) - -0.057729814034140035) / 1.064607524840552 AS `scaler_10`, (CAST(`ADS_imp_1_OUT`.`impter_11` AS DOUBLE) - -0.05254959205203237) / 1.2245328896554564 AS `scaler_11` 
FROM `tmp_20180602141328_ypv_ads_imp_1_out` AS `ADS_imp_1_OUT`) AS `ADS_sca_2_OUT`

-- Code For temporary table tmp_20180602141328_s06_ads_sca_2_out part 2. Populate

SELECT * FROM `tmp_20180602141328_s06_ads_sca_2_out`

-- Model deployment code

WITH `linear_input` AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, CAST(`ADS_sca_2_OUT`.`scaler_2` AS DOUBLE) AS `scaler_2`, CAST(`ADS_sca_2_OUT`.`scaler_3` AS DOUBLE) AS `scaler_3`, CAST(`ADS_sca_2_OUT`.`scaler_4` AS DOUBLE) AS `scaler_4`, CAST(`ADS_sca_2_OUT`.`scaler_5` AS DOUBLE) AS `scaler_5`, CAST(`ADS_sca_2_OUT`.`scaler_6` AS DOUBLE) AS `scaler_6`, CAST(`ADS_sca_2_OUT`.`scaler_7` AS DOUBLE) AS `scaler_7`, CAST(`ADS_sca_2_OUT`.`scaler_8` AS DOUBLE) AS `scaler_8`, CAST(`ADS_sca_2_OUT`.`scaler_9` AS DOUBLE) AS `scaler_9`, CAST(`ADS_sca_2_OUT`.`scaler_10` AS DOUBLE) AS `scaler_10`, CAST(`ADS_sca_2_OUT`.`scaler_11` AS DOUBLE) AS `scaler_11` 
FROM `tmp_20180602141328_s06_ads_sca_2_out` AS `ADS_sca_2_OUT`), 
`linear_model_cte` AS 
(SELECT `linear_input`.`KEY` AS `KEY`, -0.9314318738821378 * `linear_input`.`scaler_2` + -0.1326575904739844 * `linear_input`.`scaler_3` + -0.5682853512619962 * `linear_input`.`scaler_4` + 0.4955731075646611 * `linear_input`.`scaler_5` + -0.37876113904349756 * `linear_input`.`scaler_6` + -0.6482694340632381 * `linear_input`.`scaler_7` + -0.3629172484072307 * `linear_input`.`scaler_8` + -1.053270325805898 * `linear_input`.`scaler_9` + 0.12349574979497674 * `linear_input`.`scaler_10` + 1.1305705271030866 * `linear_input`.`scaler_11` + 0.46261701750037687 AS `lincomb` 
FROM `linear_input`), 
`dot_prod_logistic` AS 
(SELECT `linear_model_cte`.`KEY` AS `KEY`, `linear_model_cte`.`lincomb` AS `dot_prod`, 1.0 / (1.0 + exp(-`linear_model_cte`.`lincomb`)) AS `logistic` 
FROM `linear_model_cte`)
 SELECT `dot_prod_logistic`.`KEY` AS `KEY`, -`dot_prod_logistic`.`dot_prod` AS `Score_0`, `dot_prod_logistic`.`dot_prod` AS `Score_1`, 1.0 - `dot_prod_logistic`.`logistic` AS `Proba_0`, `dot_prod_logistic`.`logistic` AS `Proba_1`, CASE WHEN (1.0 - `dot_prod_logistic`.`logistic` IS NULL OR 1.0 - `dot_prod_logistic`.`logistic` > 0.0) THEN log(1.0 - `dot_prod_logistic`.`logistic`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (`dot_prod_logistic`.`logistic` IS NULL OR `dot_prod_logistic`.`logistic` > 0.0) THEN log(`dot_prod_logistic`.`logistic`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (`dot_prod_logistic`.`dot_prod` > 0.0) THEN 1 ELSE 0 END AS `Decision`, CASE WHEN (1.0 - `dot_prod_logistic`.`logistic` <= `dot_prod_logistic`.`logistic`) THEN `dot_prod_logistic`.`logistic` ELSE 1.0 - `dot_prod_logistic`.`logistic` END AS `DecisionProba` 
FROM `dot_prod_logistic`