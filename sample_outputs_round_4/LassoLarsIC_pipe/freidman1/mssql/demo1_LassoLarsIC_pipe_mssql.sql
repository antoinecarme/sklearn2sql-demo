-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.537828358402 ELSE [ADS].[Feature_0] END AS impute_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.46412263411 ELSE [ADS].[Feature_1] END AS impute_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.539459095169 ELSE [ADS].[Feature_2] END AS impute_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.542956668675 ELSE [ADS].[Feature_3] END AS impute_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.513087984967 ELSE [ADS].[Feature_4] END AS impute_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.491136230543 ELSE [ADS].[Feature_5] END AS impute_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.537686729601 ELSE [ADS].[Feature_6] END AS impute_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.523009611575 ELSE [ADS].[Feature_7] END AS impute_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.484350877004 ELSE [ADS].[Feature_8] END AS impute_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.47484463588 ELSE [ADS].[Feature_9] END AS impute_11 
FROM [INPUT_DATA] AS [ADS]), 
[CenteredDataForPCA] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], [ADS_imp_1_OUT].impute_2 - 0.537828358402 AS impute_2, [ADS_imp_1_OUT].impute_3 - 0.46412263411 AS impute_3, [ADS_imp_1_OUT].impute_4 - 0.539459095169 AS impute_4, [ADS_imp_1_OUT].impute_5 - 0.542956668675 AS impute_5, [ADS_imp_1_OUT].impute_6 - 0.513087984967 AS impute_6, [ADS_imp_1_OUT].impute_7 - 0.491136230543 AS impute_7, [ADS_imp_1_OUT].impute_8 - 0.537686729601 AS impute_8, [ADS_imp_1_OUT].impute_9 - 0.523009611575 AS impute_9, [ADS_imp_1_OUT].impute_10 - 0.484350877004 AS impute_10, [ADS_imp_1_OUT].impute_11 - 0.47484463588 AS impute_11 
FROM [ADS_imp_1_OUT]), 
[ADS_ano_2_OUT] AS 
(SELECT [CenteredDataForPCA].[KEY] AS [KEY], [CenteredDataForPCA].impute_2 * 0.181980177568 + [CenteredDataForPCA].impute_3 * -0.00412722339282 + [CenteredDataForPCA].impute_4 * 0.110481130637 + [CenteredDataForPCA].impute_5 * 0.575483862209 + [CenteredDataForPCA].impute_6 * 0.20193472564 + [CenteredDataForPCA].impute_7 * 0.392204858111 + [CenteredDataForPCA].impute_8 * 0.117868415589 + [CenteredDataForPCA].impute_9 * 0.557066641009 + [CenteredDataForPCA].impute_10 * 0.322483241926 + [CenteredDataForPCA].impute_11 * 0.0257777757569 AS anoova_2, [CenteredDataForPCA].impute_2 * 0.288683998705 + [CenteredDataForPCA].impute_3 * 0.0151915046491 + [CenteredDataForPCA].impute_4 * -0.346391890383 + [CenteredDataForPCA].impute_5 * -0.166684154231 + [CenteredDataForPCA].impute_6 * 0.730947729083 + [CenteredDataForPCA].impute_7 * 0.276220410855 + [CenteredDataForPCA].impute_8 * 0.167179903133 + [CenteredDataForPCA].impute_9 * -0.281483718805 + [CenteredDataForPCA].impute_10 * -0.0988889071134 + [CenteredDataForPCA].impute_11 * -0.202771546683 AS anoova_3, [CenteredDataForPCA].impute_2 * -0.544879829211 + [CenteredDataForPCA].impute_3 * 0.346416824968 + [CenteredDataForPCA].impute_4 * -0.0129670777395 + [CenteredDataForPCA].impute_5 * -0.278794002937 + [CenteredDataForPCA].impute_6 * 0.0403636226859 + [CenteredDataForPCA].impute_7 * 0.307882761982 + [CenteredDataForPCA].impute_8 * -0.085662929183 + [CenteredDataForPCA].impute_9 * 0.394214066044 + [CenteredDataForPCA].impute_10 * -0.199201859928 + [CenteredDataForPCA].impute_11 * -0.454270677522 AS anoova_4, [CenteredDataForPCA].impute_2 * 0.329727384878 + [CenteredDataForPCA].impute_3 * 0.635655849609 + [CenteredDataForPCA].impute_4 * 0.297160802043 + [CenteredDataForPCA].impute_5 * -0.0812616327032 + [CenteredDataForPCA].impute_6 * 0.08807870261 + [CenteredDataForPCA].impute_7 * -0.468376059482 + [CenteredDataForPCA].impute_8 * 0.351681118237 + [CenteredDataForPCA].impute_9 * 0.128044270817 + [CenteredDataForPCA].impute_10 * 0.0422415284133 + [CenteredDataForPCA].impute_11 * -0.152709578656 AS anoova_5, [CenteredDataForPCA].impute_2 * -0.32558010625 + [CenteredDataForPCA].impute_3 * -0.199457892676 + [CenteredDataForPCA].impute_4 * -0.295951948552 + [CenteredDataForPCA].impute_5 * -0.235186423799 + [CenteredDataForPCA].impute_6 * 0.0910819276973 + [CenteredDataForPCA].impute_7 * -0.285634571963 + [CenteredDataForPCA].impute_8 * 0.301468755047 + [CenteredDataForPCA].impute_9 * 0.099331111607 + [CenteredDataForPCA].impute_10 * 0.717196148295 + [CenteredDataForPCA].impute_11 * -0.0794387329168 AS anoova_6, [CenteredDataForPCA].impute_2 * 0.213647860374 + [CenteredDataForPCA].impute_3 * 0.151101699918 + [CenteredDataForPCA].impute_4 * 0.246272670026 + [CenteredDataForPCA].impute_5 * -0.588905928121 + [CenteredDataForPCA].impute_6 * 0.0761898986384 + [CenteredDataForPCA].impute_7 * 0.290593928261 + [CenteredDataForPCA].impute_8 * -0.341333802926 + [CenteredDataForPCA].impute_9 * 0.119826754088 + [CenteredDataForPCA].impute_10 * 0.329306890645 + [CenteredDataForPCA].impute_11 * 0.441024343798 AS anoova_7, [CenteredDataForPCA].impute_2 * 0.365687969425 + [CenteredDataForPCA].impute_3 * 0.283023323829 + [CenteredDataForPCA].impute_4 * -0.497857396278 + [CenteredDataForPCA].impute_5 * 0.0862355707383 + [CenteredDataForPCA].impute_6 * -0.380833585445 + [CenteredDataForPCA].impute_7 * 0.0546291992386 + [CenteredDataForPCA].impute_8 * -0.411924805521 + [CenteredDataForPCA].impute_9 * -0.0663672513928 + [CenteredDataForPCA].impute_10 * 0.280030627214 + [CenteredDataForPCA].impute_11 * -0.361039011252 AS anoova_8, [CenteredDataForPCA].impute_2 * 0.323597029625 + [CenteredDataForPCA].impute_3 * -0.40245989807 + [CenteredDataForPCA].impute_4 * -0.210810432548 + [CenteredDataForPCA].impute_5 * -0.246082959964 + [CenteredDataForPCA].impute_6 * 0.0669329043643 + [CenteredDataForPCA].impute_7 * -0.344703298211 + [CenteredDataForPCA].impute_8 * -0.146945030633 + [CenteredDataForPCA].impute_9 * 0.61912237508 + [CenteredDataForPCA].impute_10 * -0.309668066336 + [CenteredDataForPCA].impute_11 * -0.0649082819215 AS anoova_9, [CenteredDataForPCA].impute_2 * -0.209824541153 + [CenteredDataForPCA].impute_3 * 0.411461861621 + [CenteredDataForPCA].impute_4 * -0.550763063534 + [CenteredDataForPCA].impute_5 * 0.149024608645 + [CenteredDataForPCA].impute_6 * 0.0993239137491 + [CenteredDataForPCA].impute_7 * -0.122672464873 + [CenteredDataForPCA].impute_8 * 0.000461978598673 + [CenteredDataForPCA].impute_9 * 0.148478700571 + [CenteredDataForPCA].impute_10 * -0.172789565645 + [CenteredDataForPCA].impute_11 * 0.619926097856 AS anoova_10, [CenteredDataForPCA].impute_2 * -0.209317239572 + [CenteredDataForPCA].impute_3 * 0.0411946456097 + [CenteredDataForPCA].impute_4 * 0.188290013457 + [CenteredDataForPCA].impute_5 * 0.253733307036 + [CenteredDataForPCA].impute_6 * 0.492006516724 + [CenteredDataForPCA].impute_7 * -0.390927766975 + [CenteredDataForPCA].impute_8 * -0.654578409428 + [CenteredDataForPCA].impute_9 * -0.0682307535702 + [CenteredDataForPCA].impute_10 * 0.133337069744 + [CenteredDataForPCA].impute_11 * -0.094093244406 AS anoova_11 
FROM [CenteredDataForPCA]), 
linear_model_cte AS 
(SELECT [ADS_ano_2_OUT].[KEY] AS [KEY], 7.704616484041463 * [ADS_ano_2_OUT].anoova_2 + 2.5252041652421036 * [ADS_ano_2_OUT].anoova_3 + -3.2330476943466513 * [ADS_ano_2_OUT].anoova_4 + 5.755044335319356 * [ADS_ano_2_OUT].anoova_5 + -4.858513612519819 * [ADS_ano_2_OUT].anoova_6 + -2.5997669250360333 * [ADS_ano_2_OUT].anoova_7 + 2.6546587035759233 * [ADS_ano_2_OUT].anoova_8 + -2.7212120744719384 * [ADS_ano_2_OUT].anoova_9 + 2.6916395486450635 * [ADS_ano_2_OUT].anoova_10 + 3.617076729563544 * [ADS_ano_2_OUT].anoova_11 + 14.6682311671 AS [Estimator] 
FROM [ADS_ano_2_OUT])
 SELECT linear_model_cte.[KEY] AS [KEY], linear_model_cte.[Estimator] AS [Estimator] 
FROM linear_model_cte