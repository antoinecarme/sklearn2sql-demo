-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.531473500204 ELSE [ADS].[Feature_0] END AS impute_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.473278298451 ELSE [ADS].[Feature_1] END AS impute_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.52768058763 ELSE [ADS].[Feature_2] END AS impute_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.487765742674 ELSE [ADS].[Feature_3] END AS impute_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.48463963461 ELSE [ADS].[Feature_4] END AS impute_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.495759029398 ELSE [ADS].[Feature_5] END AS impute_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.466825413665 ELSE [ADS].[Feature_6] END AS impute_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.510486007103 ELSE [ADS].[Feature_7] END AS impute_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.486379404014 ELSE [ADS].[Feature_8] END AS impute_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.469887398481 ELSE [ADS].[Feature_9] END AS impute_11 
FROM [INPUT_DATA] AS [ADS]), 
[CenteredDataForPCA] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], [ADS_imp_1_OUT].impute_2 - 0.531473500204 AS impute_2, [ADS_imp_1_OUT].impute_3 - 0.473278298451 AS impute_3, [ADS_imp_1_OUT].impute_4 - 0.52768058763 AS impute_4, [ADS_imp_1_OUT].impute_5 - 0.487765742674 AS impute_5, [ADS_imp_1_OUT].impute_6 - 0.48463963461 AS impute_6, [ADS_imp_1_OUT].impute_7 - 0.495759029398 AS impute_7, [ADS_imp_1_OUT].impute_8 - 0.466825413665 AS impute_8, [ADS_imp_1_OUT].impute_9 - 0.510486007103 AS impute_9, [ADS_imp_1_OUT].impute_10 - 0.486379404014 AS impute_10, [ADS_imp_1_OUT].impute_11 - 0.469887398481 AS impute_11 
FROM [ADS_imp_1_OUT]), 
[ADS_ano_2_OUT] AS 
(SELECT [CenteredDataForPCA].[KEY] AS [KEY], [CenteredDataForPCA].impute_2 * -0.322846377285 + [CenteredDataForPCA].impute_3 * 0.0192330628045 + [CenteredDataForPCA].impute_4 * -0.00296482455273 + [CenteredDataForPCA].impute_5 * 0.522365176367 + [CenteredDataForPCA].impute_6 * -0.0489298076242 + [CenteredDataForPCA].impute_7 * -0.392179055089 + [CenteredDataForPCA].impute_8 * -0.0473571242611 + [CenteredDataForPCA].impute_9 * 0.126075925695 + [CenteredDataForPCA].impute_10 * 0.328418468113 + [CenteredDataForPCA].impute_11 * -0.58337901447 AS anoova_2, [CenteredDataForPCA].impute_2 * 0.456087527054 + [CenteredDataForPCA].impute_3 * 0.407130306133 + [CenteredDataForPCA].impute_4 * -0.230951395005 + [CenteredDataForPCA].impute_5 * 0.323144569473 + [CenteredDataForPCA].impute_6 * 0.37241389894 + [CenteredDataForPCA].impute_7 * -0.280292299917 + [CenteredDataForPCA].impute_8 * -0.404683559743 + [CenteredDataForPCA].impute_9 * 0.00543424839259 + [CenteredDataForPCA].impute_10 * 0.0762160474619 + [CenteredDataForPCA].impute_11 * 0.285665951541 AS anoova_3, [CenteredDataForPCA].impute_2 * 0.31681652128 + [CenteredDataForPCA].impute_3 * -0.431700980742 + [CenteredDataForPCA].impute_4 * -0.246285566216 + [CenteredDataForPCA].impute_5 * -0.417172138374 + [CenteredDataForPCA].impute_6 * -0.254581596621 + [CenteredDataForPCA].impute_7 * -0.575886314041 + [CenteredDataForPCA].impute_8 * -0.156762965613 + [CenteredDataForPCA].impute_9 * -0.172183185455 + [CenteredDataForPCA].impute_10 * 0.130286011535 + [CenteredDataForPCA].impute_11 * -0.104496049339 AS anoova_4, [CenteredDataForPCA].impute_2 * 0.229653105528 + [CenteredDataForPCA].impute_3 * -0.0877001812746 + [CenteredDataForPCA].impute_4 * -0.35449721461 + [CenteredDataForPCA].impute_5 * 0.0511042150544 + [CenteredDataForPCA].impute_6 * -0.151880719515 + [CenteredDataForPCA].impute_7 * 0.14503852059 + [CenteredDataForPCA].impute_8 * 0.391104016765 + [CenteredDataForPCA].impute_9 * 0.627422657399 + [CenteredDataForPCA].impute_10 * 0.433488075912 + [CenteredDataForPCA].impute_11 * 0.180695415115 AS anoova_5, [CenteredDataForPCA].impute_2 * 0.17889950138 + [CenteredDataForPCA].impute_3 * 0.395477966873 + [CenteredDataForPCA].impute_4 * 0.516296536598 + [CenteredDataForPCA].impute_5 * -0.0901700339112 + [CenteredDataForPCA].impute_6 * -0.636763934219 + [CenteredDataForPCA].impute_7 * -0.0441000715884 + [CenteredDataForPCA].impute_8 * -0.261513043714 + [CenteredDataForPCA].impute_9 * 0.208181555673 + [CenteredDataForPCA].impute_10 * 0.123691951793 + [CenteredDataForPCA].impute_11 * 0.0495776368511 AS anoova_6, [CenteredDataForPCA].impute_2 * 0.129122030453 + [CenteredDataForPCA].impute_3 * 0.29308673497 + [CenteredDataForPCA].impute_4 * -0.13409794354 + [CenteredDataForPCA].impute_5 * 0.199982636016 + [CenteredDataForPCA].impute_6 * -0.27320434985 + [CenteredDataForPCA].impute_7 * -0.365182861633 + [CenteredDataForPCA].impute_8 * 0.600767333835 + [CenteredDataForPCA].impute_9 * -0.112213100457 + [CenteredDataForPCA].impute_10 * -0.507113214887 + [CenteredDataForPCA].impute_11 * 0.0278609516771 AS anoova_7, [CenteredDataForPCA].impute_2 * -0.327124911767 + [CenteredDataForPCA].impute_3 * 0.45413966609 + [CenteredDataForPCA].impute_4 * -0.57386161344 + [CenteredDataForPCA].impute_5 * -0.396098162436 + [CenteredDataForPCA].impute_6 * -0.111317000363 + [CenteredDataForPCA].impute_7 * 0.0764562742883 + [CenteredDataForPCA].impute_8 * -0.250523892636 + [CenteredDataForPCA].impute_9 * 0.188638429755 + [CenteredDataForPCA].impute_10 * -0.171717913592 + [CenteredDataForPCA].impute_11 * -0.233376935154 AS anoova_8, [CenteredDataForPCA].impute_2 * -0.0741336243432 + [CenteredDataForPCA].impute_3 * 0.42958400006 + [CenteredDataForPCA].impute_4 * 0.131525925693 + [CenteredDataForPCA].impute_5 * -0.376483683893 + [CenteredDataForPCA].impute_6 * 0.250139191199 + [CenteredDataForPCA].impute_7 * -0.137257053803 + [CenteredDataForPCA].impute_8 * 0.392248343567 + [CenteredDataForPCA].impute_9 * -0.33755529234 + [CenteredDataForPCA].impute_10 * 0.549239337346 + [CenteredDataForPCA].impute_11 * -0.00688893081031 AS anoova_9, [CenteredDataForPCA].impute_2 * -0.373162472319 + [CenteredDataForPCA].impute_3 * -0.0370295599811 + [CenteredDataForPCA].impute_4 * -0.295052754827 + [CenteredDataForPCA].impute_5 * 0.272829041261 + [CenteredDataForPCA].impute_6 * -0.420529760282 + [CenteredDataForPCA].impute_7 * 0.0599981429423 + [CenteredDataForPCA].impute_8 * -0.101341992807 + [CenteredDataForPCA].impute_9 * -0.432196837069 + [CenteredDataForPCA].impute_10 * 0.255865428342 + [CenteredDataForPCA].impute_11 * 0.504886410705 AS anoova_10, [CenteredDataForPCA].impute_2 * -0.483949237068 + [CenteredDataForPCA].impute_3 * -0.0732041687328 + [CenteredDataForPCA].impute_4 * 0.205209860539 + [CenteredDataForPCA].impute_5 * -0.157717728572 + [CenteredDataForPCA].impute_6 * 0.197785049936 + [CenteredDataForPCA].impute_7 * -0.501360568457 + [CenteredDataForPCA].impute_8 * -0.0158080733444 + [CenteredDataForPCA].impute_9 * 0.410506529738 + [CenteredDataForPCA].impute_10 * -0.11119598259 + [CenteredDataForPCA].impute_11 * 0.47099566727 AS anoova_11 
FROM [CenteredDataForPCA]), 
linear_model_cte AS 
(SELECT [ADS_ano_2_OUT].[KEY] AS [KEY], 3.861252562935884 * [ADS_ano_2_OUT].anoova_2 + 10.874802139439513 * [ADS_ano_2_OUT].anoova_3 + -6.4198355567748235 * [ADS_ano_2_OUT].anoova_4 + 1.802069807593113 * [ADS_ano_2_OUT].anoova_5 + -0.25383786411659626 * [ADS_ano_2_OUT].anoova_6 + 2.178146395389227 * [ADS_ano_2_OUT].anoova_7 + -2.9804149058611675 * [ADS_ano_2_OUT].anoova_8 + 2.04284544349624 * [ADS_ano_2_OUT].anoova_9 + -0.8686694111713362 * [ADS_ano_2_OUT].anoova_10 + -4.118116039410694 * [ADS_ano_2_OUT].anoova_11 + 14.109573867 AS [Estimator] 
FROM [ADS_ano_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte