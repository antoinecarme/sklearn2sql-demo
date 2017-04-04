-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN -3.63428492931e-16 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 1.30834257455e-16 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -8.04534920334e-16 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 1.28165452107e-16 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN -8.83531558624e-17 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 1.32702421198e-16 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -4.57464634298e-16 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 3.77730149823e-16 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN -3.83085421731e-16 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN -3.41288201508e-16 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - -3.63428492931e-16 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 1.30834257455e-16 AS impute_3, `ADS_imp_1_OUT`.impute_4 - -8.04534920334e-16 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 1.28165452107e-16 AS impute_5, `ADS_imp_1_OUT`.impute_6 - -8.83531558624e-17 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 1.32702421198e-16 AS impute_7, `ADS_imp_1_OUT`.impute_8 - -4.57464634298e-16 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 3.77730149823e-16 AS impute_9, `ADS_imp_1_OUT`.impute_10 - -3.83085421731e-16 AS impute_10, `ADS_imp_1_OUT`.impute_11 - -3.41288201508e-16 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * 0.21643100659 + `CenteredDataForPCA`.impute_3 * 0.186967108192 + `CenteredDataForPCA`.impute_4 * 0.303162498817 + `CenteredDataForPCA`.impute_5 * 0.271739703287 + `CenteredDataForPCA`.impute_6 * 0.34325493123 + `CenteredDataForPCA`.impute_7 * 0.351860620033 + `CenteredDataForPCA`.impute_8 * -0.282436391838 + `CenteredDataForPCA`.impute_9 * 0.428833247772 + `CenteredDataForPCA`.impute_10 * 0.378617309164 + `CenteredDataForPCA`.impute_11 * 0.322182824553 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.044371505804 + `CenteredDataForPCA`.impute_3 * -0.386548110735 + `CenteredDataForPCA`.impute_4 * -0.156280609448 + `CenteredDataForPCA`.impute_5 * -0.138255640728 + `CenteredDataForPCA`.impute_6 * 0.573026691953 + `CenteredDataForPCA`.impute_7 * 0.455939849626 + `CenteredDataForPCA`.impute_8 * 0.506242872531 + `CenteredDataForPCA`.impute_9 * -0.068184234517 + `CenteredDataForPCA`.impute_10 * -0.0261893037261 + `CenteredDataForPCA`.impute_11 * -0.0849466000238 AS anoova_3, `CenteredDataForPCA`.impute_2 * 0.49466810716 + `CenteredDataForPCA`.impute_3 * -0.106858334763 + `CenteredDataForPCA`.impute_4 * 0.167531700938 + `CenteredDataForPCA`.impute_5 * 0.513568043314 + `CenteredDataForPCA`.impute_6 * -0.0685867001784 + `CenteredDataForPCA`.impute_7 * -0.269694382255 + `CenteredDataForPCA`.impute_8 * 0.386027874592 + `CenteredDataForPCA`.impute_9 * -0.380681209291 + `CenteredDataForPCA`.impute_10 * 0.0636315032871 + `CenteredDataForPCA`.impute_11 * 0.276842712702 AS anoova_4, `CenteredDataForPCA`.impute_2 * -0.414009498941 + `CenteredDataForPCA`.impute_3 * -0.679860516614 + `CenteredDataForPCA`.impute_4 * 0.499825330253 + `CenteredDataForPCA`.impute_5 * -0.019667344342 + `CenteredDataForPCA`.impute_6 * -0.0683953319645 + `CenteredDataForPCA`.impute_7 * -0.167773837077 + `CenteredDataForPCA`.impute_8 * -0.0760200485782 + `CenteredDataForPCA`.impute_9 * 0.00792120338562 + `CenteredDataForPCA`.impute_10 * 0.264427419183 + `CenteredDataForPCA`.impute_11 * 0.0870862356146 AS anoova_5, `CenteredDataForPCA`.impute_2 * -0.686863892154 + `CenteredDataForPCA`.impute_3 * 0.373456115735 + `CenteredDataForPCA`.impute_4 * 0.12935935855 + `CenteredDataForPCA`.impute_5 * 0.486890138051 + `CenteredDataForPCA`.impute_6 * 0.129174145487 + `CenteredDataForPCA`.impute_7 * 0.116731430474 + `CenteredDataForPCA`.impute_8 * 0.244991147174 + `CenteredDataForPCA`.impute_9 * -0.14364377424 + `CenteredDataForPCA`.impute_10 * -0.151661098575 + `CenteredDataForPCA`.impute_11 * 0.0313879194047 AS anoova_6, `CenteredDataForPCA`.impute_2 * -0.225850503591 + `CenteredDataForPCA`.impute_3 * 0.0417310316277 + `CenteredDataForPCA`.impute_4 * -0.403141902489 + `CenteredDataForPCA`.impute_5 * -0.272762738803 + `CenteredDataForPCA`.impute_6 * 0.00540864137623 + `CenteredDataForPCA`.impute_7 * -0.13325719548 + `CenteredDataForPCA`.impute_8 * 0.106371596751 + `CenteredDataForPCA`.impute_9 * -0.0339453956408 + `CenteredDataForPCA`.impute_10 * 0.178730050963 + `CenteredDataForPCA`.impute_11 * 0.805064466151 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.109538210099 + `CenteredDataForPCA`.impute_3 * -0.0676055051661 + `CenteredDataForPCA`.impute_4 * -0.519857870077 + `CenteredDataForPCA`.impute_5 * 0.32064908429 + `CenteredDataForPCA`.impute_6 * 0.0736490780231 + `CenteredDataForPCA`.impute_7 * -0.230540112449 + `CenteredDataForPCA`.impute_8 * -0.00753445287491 + `CenteredDataForPCA`.impute_9 * 0.0712361931688 + `CenteredDataForPCA`.impute_10 * 0.647313447679 + `CenteredDataForPCA`.impute_11 * -0.357272785105 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.0149346777542 + `CenteredDataForPCA`.impute_3 * 0.442939663138 + `CenteredDataForPCA`.impute_4 * 0.392941868456 + `CenteredDataForPCA`.impute_5 * -0.477364351173 + `CenteredDataForPCA`.impute_6 * 0.129413507459 + `CenteredDataForPCA`.impute_7 * -0.191311206733 + `CenteredDataForPCA`.impute_8 * 0.324636408704 + `CenteredDataForPCA`.impute_9 * -0.180588338623 + `CenteredDataForPCA`.impute_10 * 0.449660024059 + `CenteredDataForPCA`.impute_11 * -0.166608696019 AS anoova_9, `CenteredDataForPCA`.impute_2 * 0.00810057312789 + `CenteredDataForPCA`.impute_3 * -0.00210552195289 + `CenteredDataForPCA`.impute_4 * 0.0423775137715 + `CenteredDataForPCA`.impute_5 * 0.027194101566 + `CenteredDataForPCA`.impute_6 * -0.0420398366517 + `CenteredDataForPCA`.impute_7 * -0.359315489659 + `CenteredDataForPCA`.impute_8 * 0.481247705071 + `CenteredDataForPCA`.impute_9 * 0.773816561846 + `CenteredDataForPCA`.impute_10 * -0.18945947188 + `CenteredDataForPCA`.impute_11 * -0.0152738068842 AS anoova_10, `CenteredDataForPCA`.impute_2 * 0.00326308608059 + `CenteredDataForPCA`.impute_3 * 0.00366069256477 + `CenteredDataForPCA`.impute_4 * 0.00824808535829 + `CenteredDataForPCA`.impute_5 * -0.00322110536704 + `CenteredDataForPCA`.impute_6 * 0.709774472551 + `CenteredDataForPCA`.impute_7 * -0.563196047553 + `CenteredDataForPCA`.impute_8 * -0.317444125112 + `CenteredDataForPCA`.impute_9 * -0.0905946399327 + `CenteredDataForPCA`.impute_10 * -0.264467346072 + `CenteredDataForPCA`.impute_11 * 0.00261090257808 AS anoova_11 
FROM `CenteredDataForPCA`), 
linear_model_cte AS 
(SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, 83.20596851814274 * `ADS_ano_2_OUT`.anoova_2 + -21.24270327305335 * `ADS_ano_2_OUT`.anoova_3 + 12.311238453774052 * `ADS_ano_2_OUT`.anoova_4 + 30.73489958728207 * `ADS_ano_2_OUT`.anoova_5 + -2.2180097443670626 * `ADS_ano_2_OUT`.anoova_6 + -5.2923544605689194 * `ADS_ano_2_OUT`.anoova_7 + 7.917348118432576 * `ADS_ano_2_OUT`.anoova_8 + -0.25028184574313744 * `ADS_ano_2_OUT`.anoova_9 + -1.3898471700843362 * `ADS_ano_2_OUT`.anoova_10 + -0.650415158966548 * `ADS_ano_2_OUT`.anoova_11 + 149.275581457 AS `Estimator` 
FROM `ADS_ano_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte