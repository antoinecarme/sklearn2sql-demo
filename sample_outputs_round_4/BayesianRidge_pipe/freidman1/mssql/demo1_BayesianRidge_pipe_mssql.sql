-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.521874019472 ELSE [ADS].[Feature_0] END AS impute_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.48876451868 ELSE [ADS].[Feature_1] END AS impute_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.469012633529 ELSE [ADS].[Feature_2] END AS impute_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.43025110757 ELSE [ADS].[Feature_3] END AS impute_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.463766454973 ELSE [ADS].[Feature_4] END AS impute_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.535676209032 ELSE [ADS].[Feature_5] END AS impute_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.497085018017 ELSE [ADS].[Feature_6] END AS impute_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.455863595225 ELSE [ADS].[Feature_7] END AS impute_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.432705855877 ELSE [ADS].[Feature_8] END AS impute_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.491265311655 ELSE [ADS].[Feature_9] END AS impute_11 
FROM [INPUT_DATA] AS [ADS]), 
[CenteredDataForPCA] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], [ADS_imp_1_OUT].impute_2 - 0.521874019472 AS impute_2, [ADS_imp_1_OUT].impute_3 - 0.48876451868 AS impute_3, [ADS_imp_1_OUT].impute_4 - 0.469012633529 AS impute_4, [ADS_imp_1_OUT].impute_5 - 0.43025110757 AS impute_5, [ADS_imp_1_OUT].impute_6 - 0.463766454973 AS impute_6, [ADS_imp_1_OUT].impute_7 - 0.535676209032 AS impute_7, [ADS_imp_1_OUT].impute_8 - 0.497085018017 AS impute_8, [ADS_imp_1_OUT].impute_9 - 0.455863595225 AS impute_9, [ADS_imp_1_OUT].impute_10 - 0.432705855877 AS impute_10, [ADS_imp_1_OUT].impute_11 - 0.491265311655 AS impute_11 
FROM [ADS_imp_1_OUT]), 
[ADS_ano_2_OUT] AS 
(SELECT [CenteredDataForPCA].[KEY] AS [KEY], [CenteredDataForPCA].impute_2 * -0.251224133107 + [CenteredDataForPCA].impute_3 * -0.132425544879 + [CenteredDataForPCA].impute_4 * -0.196456200013 + [CenteredDataForPCA].impute_5 * -0.60864694424 + [CenteredDataForPCA].impute_6 * 0.344841199128 + [CenteredDataForPCA].impute_7 * -0.0207969014273 + [CenteredDataForPCA].impute_8 * 0.205363904979 + [CenteredDataForPCA].impute_9 * -0.347605312631 + [CenteredDataForPCA].impute_10 * 0.0218437912834 + [CenteredDataForPCA].impute_11 * -0.476943253408 AS anoova_2, [CenteredDataForPCA].impute_2 * -0.656849439878 + [CenteredDataForPCA].impute_3 * 0.332521276711 + [CenteredDataForPCA].impute_4 * 0.275653227127 + [CenteredDataForPCA].impute_5 * -0.0435880419799 + [CenteredDataForPCA].impute_6 * -0.147461245217 + [CenteredDataForPCA].impute_7 * -0.176801675715 + [CenteredDataForPCA].impute_8 * -0.0836970963281 + [CenteredDataForPCA].impute_9 * 0.470510267195 + [CenteredDataForPCA].impute_10 * 0.151597732496 + [CenteredDataForPCA].impute_11 * -0.275178406662 AS anoova_3, [CenteredDataForPCA].impute_2 * -0.0914251773582 + [CenteredDataForPCA].impute_3 * -0.553246965503 + [CenteredDataForPCA].impute_4 * 0.49029568697 + [CenteredDataForPCA].impute_5 * 0.0962272077201 + [CenteredDataForPCA].impute_6 * 0.529053071672 + [CenteredDataForPCA].impute_7 * 0.0317045684808 + [CenteredDataForPCA].impute_8 * -0.0432872771851 + [CenteredDataForPCA].impute_9 * 0.265992275916 + [CenteredDataForPCA].impute_10 * -0.285165995492 + [CenteredDataForPCA].impute_11 * 0.0325889464998 AS anoova_4, [CenteredDataForPCA].impute_2 * 0.0647545760258 + [CenteredDataForPCA].impute_3 * -0.282043788519 + [CenteredDataForPCA].impute_4 * -0.0788248353572 + [CenteredDataForPCA].impute_5 * 0.0302727102952 + [CenteredDataForPCA].impute_6 * 0.114626431687 + [CenteredDataForPCA].impute_7 * -0.215516147652 + [CenteredDataForPCA].impute_8 * 0.429184080224 + [CenteredDataForPCA].impute_9 * 0.231031162548 + [CenteredDataForPCA].impute_10 * 0.760917368584 + [CenteredDataForPCA].impute_11 * 0.181582794463 AS anoova_5, [CenteredDataForPCA].impute_2 * 0.192075418695 + [CenteredDataForPCA].impute_3 * -0.165767894228 + [CenteredDataForPCA].impute_4 * 0.333237229732 + [CenteredDataForPCA].impute_5 * -0.295121132829 + [CenteredDataForPCA].impute_6 * -0.249726517723 + [CenteredDataForPCA].impute_7 * -0.717875960451 + [CenteredDataForPCA].impute_8 * -0.325051481734 + [CenteredDataForPCA].impute_9 * -0.22169761444 + [CenteredDataForPCA].impute_10 * 0.039488376617 + [CenteredDataForPCA].impute_11 * 0.0583750485465 AS anoova_6, [CenteredDataForPCA].impute_2 * 0.373782379579 + [CenteredDataForPCA].impute_3 * 0.654277738556 + [CenteredDataForPCA].impute_4 * 0.212259760647 + [CenteredDataForPCA].impute_5 * -0.107889559655 + [CenteredDataForPCA].impute_6 * 0.505930418961 + [CenteredDataForPCA].impute_7 * -0.217822976545 + [CenteredDataForPCA].impute_8 * 0.226365624243 + [CenteredDataForPCA].impute_9 * 0.104421606941 + [CenteredDataForPCA].impute_10 * -0.0757898641693 + [CenteredDataForPCA].impute_11 * 0.064893768481 AS anoova_7, [CenteredDataForPCA].impute_2 * -0.0476283275546 + [CenteredDataForPCA].impute_3 * 0.0442919368267 + [CenteredDataForPCA].impute_4 * -0.306674254443 + [CenteredDataForPCA].impute_5 * 0.514528189497 + [CenteredDataForPCA].impute_6 * 0.421338847435 + [CenteredDataForPCA].impute_7 * -0.265245708104 + [CenteredDataForPCA].impute_8 * -0.484864093719 + [CenteredDataForPCA].impute_9 * -0.160540882373 + [CenteredDataForPCA].impute_10 * 0.219396070961 + [CenteredDataForPCA].impute_11 * -0.283016784577 AS anoova_8, [CenteredDataForPCA].impute_2 * -0.240844206669 + [CenteredDataForPCA].impute_3 * 0.164698279001 + [CenteredDataForPCA].impute_4 * 0.465617199672 + [CenteredDataForPCA].impute_5 * -0.00129354262959 + [CenteredDataForPCA].impute_6 * 0.125761460325 + [CenteredDataForPCA].impute_7 * 0.355249237467 + [CenteredDataForPCA].impute_8 * -0.16401863339 + [CenteredDataForPCA].impute_9 * -0.532173930314 + [CenteredDataForPCA].impute_10 * 0.393599263795 + [CenteredDataForPCA].impute_11 * 0.30169180439 AS anoova_9, [CenteredDataForPCA].impute_2 * 0.258761580804 + [CenteredDataForPCA].impute_3 * -0.0340414942381 + [CenteredDataForPCA].impute_4 * 0.408765656969 + [CenteredDataForPCA].impute_5 * 0.369379194279 + [CenteredDataForPCA].impute_6 * -0.23373308384 + [CenteredDataForPCA].impute_7 * 0.0570595805469 + [CenteredDataForPCA].impute_8 * 0.341318629875 + [CenteredDataForPCA].impute_9 * -0.205729683174 + [CenteredDataForPCA].impute_10 * 0.0666106376206 + [CenteredDataForPCA].impute_11 * -0.638127128862 AS anoova_10, [CenteredDataForPCA].impute_2 * -0.434793458073 + [CenteredDataForPCA].impute_3 * 0.0213938329405 + [CenteredDataForPCA].impute_4 * -0.0691227167067 + [CenteredDataForPCA].impute_5 * 0.342861935827 + [CenteredDataForPCA].impute_6 * -0.000954373835819 + [CenteredDataForPCA].impute_7 * -0.397807014731 + [CenteredDataForPCA].impute_8 * 0.47890931221 + [CenteredDataForPCA].impute_9 * -0.349717703837 + [CenteredDataForPCA].impute_10 * -0.318481805807 + [CenteredDataForPCA].impute_11 * 0.277175218225 AS anoova_11 
FROM [CenteredDataForPCA]), 
linear_model_cte AS 
(SELECT [ADS_ano_2_OUT].[KEY] AS [KEY], -6.633344793859734 * [ADS_ano_2_OUT].anoova_2 + -3.199286598910125 * [ADS_ano_2_OUT].anoova_3 + -0.11594617069124001 * [ADS_ano_2_OUT].anoova_4 + 0.3419802798106971 * [ADS_ano_2_OUT].anoova_5 + -4.239206504016514 * [ADS_ano_2_OUT].anoova_6 + 7.2758750068093425 * [ADS_ano_2_OUT].anoova_7 + 6.9968236101145465 * [ADS_ano_2_OUT].anoova_8 + 0.11554506732218577 * [ADS_ano_2_OUT].anoova_9 + 3.427404728991248 * [ADS_ano_2_OUT].anoova_10 + -0.5762672470958671 * [ADS_ano_2_OUT].anoova_11 + 13.2123193159 AS [Estimator] 
FROM [ADS_ano_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte