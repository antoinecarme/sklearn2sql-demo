-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_poly
-- Dataset : iris
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180508185847_CODEGEN_Q39V0E_KernAgg_B0 part 1. Create 


CREATE TABLE ##TMP_20180508185847_CODEGEN_Q39V0E_KernAgg_B0 (
	[KEY] BIGINT NULL, 
	[OVO_Class1] BIGINT NULL, 
	[OVO_Class2] BIGINT NULL, 
	[OVO_Decision] BIGINT NULL, 
	[OVO_Confidence] FLOAT NULL
)



-- Code For temporary table ##TMP_20180508185847_CODEGEN_Q39V0E_KernAgg_B0 part 2. Populate

WITH kernel_input AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT(53)) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT(53)) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT(53)) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT(53)) AS [Feature_3], CAST([ADS].[TGT] AS FLOAT(53)) AS [TGT] 
FROM iris AS [ADS]), 
[SV_data_0_1] AS 
(SELECT [Values].sv_idx AS sv_idx, CAST([Values].dual_coeff AS FLOAT(53)) AS dual_coeff, CAST([Values].sv_0 AS FLOAT(53)) AS sv_0, CAST([Values].sv_1 AS FLOAT(53)) AS sv_1, CAST([Values].sv_2 AS FLOAT(53)) AS sv_2, CAST([Values].sv_3 AS FLOAT(53)) AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.00888416756170261 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.0 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.0005109388709751139 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.00939510643267772 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3) AS [Values]), 
kernel_dp_0_1 AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT(53))) + 1.1361099459962782 AS dot_product 
FROM (SELECT kernel_input.[KEY] AS [KEY], [SV_data_0_1].dual_coeff * power(0.25 * (kernel_input.[Feature_0] * [SV_data_0_1].sv_0 + kernel_input.[Feature_1] * [SV_data_0_1].sv_1 + kernel_input.[Feature_2] * [SV_data_0_1].sv_2 + kernel_input.[Feature_3] * [SV_data_0_1].sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, [SV_data_0_1]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t), 
kernel_cte_0_1 AS 
(SELECT kernel_dp_0_1.[KEY] AS [KEY], 0 AS [OVO_Class1], 1 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_1.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_1.dot_product, 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-((-kernel_dp_0_1.dot_product) * -1.6614609187514184 + -0.9354879708125379))) THEN -(-((-kernel_dp_0_1.dot_product) * -1.6614609187514184 + -0.9354879708125379)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-((-kernel_dp_0_1.dot_product) * -1.6614609187514184 + -0.9354879708125379))) THEN -(-((-kernel_dp_0_1.dot_product) * -1.6614609187514184 + -0.9354879708125379)) ELSE -100.0 END ELSE 100.0 END))) AS [OVO_Confidence] 
FROM kernel_dp_0_1), 
[SV_data_0_2] AS 
(SELECT [Values].sv_idx AS sv_idx, CAST([Values].dual_coeff AS FLOAT(53)) AS dual_coeff, CAST([Values].sv_0 AS FLOAT(53)) AS sv_0, CAST([Values].sv_1 AS FLOAT(53)) AS sv_1, CAST([Values].sv_2 AS FLOAT(53)) AS sv_2, CAST([Values].sv_3 AS FLOAT(53)) AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0006286056310521933 AS dual_coeff, 4.8 AS sv_0, 3.4 AS sv_1, 1.9 AS sv_2, 0.2 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.0005066779305344128 AS dual_coeff, 5.1 AS sv_0, 3.3 AS sv_1, 1.7 AS sv_2, 0.5 AS sv_3 UNION ALL SELECT 2 AS sv_idx, 0.0006814761767680465 AS dual_coeff, 5.1 AS sv_0, 3.8 AS sv_1, 1.9 AS sv_2, 0.4 AS sv_3 UNION ALL SELECT 3 AS sv_idx, 0.0 AS dual_coeff, 4.5 AS sv_0, 2.3 AS sv_1, 1.3 AS sv_2, 0.3 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -0.0018167597383546528 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3) AS [Values]), 
kernel_dp_0_2 AS 
(SELECT t_1.[KEY] AS [KEY], t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1.[KEY] AS [KEY], sum(CAST(full_join_data_sv_1.dot_prod1 AS FLOAT(53))) + 1.1844509506518808 AS dot_product 
FROM (SELECT kernel_input.[KEY] AS [KEY], [SV_data_0_2].dual_coeff * power(0.25 * (kernel_input.[Feature_0] * [SV_data_0_2].sv_0 + kernel_input.[Feature_1] * [SV_data_0_2].sv_1 + kernel_input.[Feature_2] * [SV_data_0_2].sv_2 + kernel_input.[Feature_3] * [SV_data_0_2].sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, [SV_data_0_2]) AS full_join_data_sv_1 GROUP BY full_join_data_sv_1.[KEY]) AS t_1), 
kernel_cte_0_2 AS 
(SELECT kernel_dp_0_2.[KEY] AS [KEY], 0 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_0_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_0_2.dot_product, 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-((-kernel_dp_0_2.dot_product) * -1.9673526513168822 + -0.9226178846685918))) THEN -(-((-kernel_dp_0_2.dot_product) * -1.9673526513168822 + -0.9226178846685918)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-((-kernel_dp_0_2.dot_product) * -1.9673526513168822 + -0.9226178846685918))) THEN -(-((-kernel_dp_0_2.dot_product) * -1.9673526513168822 + -0.9226178846685918)) ELSE -100.0 END ELSE 100.0 END))) AS [OVO_Confidence] 
FROM kernel_dp_0_2), 
[SV_data_1_2] AS 
(SELECT [Values].sv_idx AS sv_idx, CAST([Values].dual_coeff AS FLOAT(53)) AS dual_coeff, CAST([Values].sv_0 AS FLOAT(53)) AS sv_0, CAST([Values].sv_1 AS FLOAT(53)) AS sv_1, CAST([Values].sv_2 AS FLOAT(53)) AS sv_2, CAST([Values].sv_3 AS FLOAT(53)) AS sv_3 
FROM (SELECT 4 AS sv_idx, 0.0 AS dual_coeff, 5.1 AS sv_0, 2.5 AS sv_1, 3.0 AS sv_2, 1.1 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 5.9 AS sv_0, 3.2 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 6 AS sv_idx, 0.6261843191965794 AS dual_coeff, 6.3 AS sv_0, 2.5 AS sv_1, 4.9 AS sv_2, 1.5 AS sv_3 UNION ALL SELECT 7 AS sv_idx, -0.07792039423656584 AS dual_coeff, 6.1 AS sv_0, 3.0 AS sv_1, 4.9 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 8 AS sv_idx, -0.0995148175960605 AS dual_coeff, 4.9 AS sv_0, 2.5 AS sv_1, 4.5 AS sv_2, 1.7 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 6.0 AS sv_0, 3.0 AS sv_1, 4.8 AS sv_2, 1.8 AS sv_3 UNION ALL SELECT 10 AS sv_idx, -0.4487491073639533 AS dual_coeff, 6.3 AS sv_0, 2.8 AS sv_1, 5.1 AS sv_2, 1.5 AS sv_3) AS [Values]), 
kernel_dp_1_2 AS 
(SELECT t_2.[KEY] AS [KEY], t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2.[KEY] AS [KEY], sum(CAST(full_join_data_sv_2.dot_prod1 AS FLOAT(53))) + 15.184809946631539 AS dot_product 
FROM (SELECT kernel_input.[KEY] AS [KEY], [SV_data_1_2].dual_coeff * power(0.25 * (kernel_input.[Feature_0] * [SV_data_1_2].sv_0 + kernel_input.[Feature_1] * [SV_data_1_2].sv_1 + kernel_input.[Feature_2] * [SV_data_1_2].sv_2 + kernel_input.[Feature_3] * [SV_data_1_2].sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, [SV_data_1_2]) AS full_join_data_sv_2 GROUP BY full_join_data_sv_2.[KEY]) AS t_2), 
kernel_cte_1_2 AS 
(SELECT kernel_dp_1_2.[KEY] AS [KEY], 1 AS [OVO_Class1], 2 AS [OVO_Class2], CASE WHEN (-kernel_dp_1_2.dot_product >= 0.0) THEN 1 ELSE 0 END AS [OVO_Decision], coalesce(-kernel_dp_1_2.dot_product, 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-((-kernel_dp_1_2.dot_product) * -0.413584248303465 + 0.22665421123328056))) THEN -(-((-kernel_dp_1_2.dot_product) * -0.413584248303465 + 0.22665421123328056)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-((-kernel_dp_1_2.dot_product) * -0.413584248303465 + 0.22665421123328056))) THEN -(-((-kernel_dp_1_2.dot_product) * -0.413584248303465 + 0.22665421123328056)) ELSE -100.0 END ELSE 100.0 END))) AS [OVO_Confidence] 
FROM kernel_dp_1_2)
 INSERT INTO ##TMP_20180508185847_CODEGEN_Q39V0E_KernAgg_B0 ([KEY], [OVO_Class1], [OVO_Class2], [OVO_Decision], [OVO_Confidence]) SELECT [KernAgg_B0].[KEY], [KernAgg_B0].[OVO_Class1], [KernAgg_B0].[OVO_Class2], [KernAgg_B0].[OVO_Decision], [KernAgg_B0].[OVO_Confidence] 
FROM (SELECT [KernAgg_esu_0].[KEY] AS [KEY], [KernAgg_esu_0].[OVO_Class1] AS [OVO_Class1], [KernAgg_esu_0].[OVO_Class2] AS [OVO_Class2], [KernAgg_esu_0].[OVO_Decision] AS [OVO_Decision], [KernAgg_esu_0].[OVO_Confidence] AS [OVO_Confidence] 
FROM (SELECT kernel_cte_0_1.[KEY] AS [KEY], kernel_cte_0_1.[OVO_Class1] AS [OVO_Class1], kernel_cte_0_1.[OVO_Class2] AS [OVO_Class2], kernel_cte_0_1.[OVO_Decision] AS [OVO_Decision], kernel_cte_0_1.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_0_1 UNION ALL SELECT kernel_cte_0_2.[KEY] AS [KEY], kernel_cte_0_2.[OVO_Class1] AS [OVO_Class1], kernel_cte_0_2.[OVO_Class2] AS [OVO_Class2], kernel_cte_0_2.[OVO_Decision] AS [OVO_Decision], kernel_cte_0_2.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_0_2 UNION ALL SELECT kernel_cte_1_2.[KEY] AS [KEY], kernel_cte_1_2.[OVO_Class1] AS [OVO_Class1], kernel_cte_1_2.[OVO_Class2] AS [OVO_Class2], kernel_cte_1_2.[OVO_Decision] AS [OVO_Decision], kernel_cte_1_2.[OVO_Confidence] AS [OVO_Confidence] 
FROM kernel_cte_1_2) AS [KernAgg_esu_0]) AS [KernAgg_B0]

-- Code For temporary table ##TMP_20180508185847_CODEGEN_GJI0JP_KernAgg_Union part 1. Create 


CREATE TABLE ##TMP_20180508185847_CODEGEN_GJI0JP_KernAgg_Union (
	[KEY] BIGINT NULL, 
	[OVO_Class1] BIGINT NULL, 
	[OVO_Class2] BIGINT NULL, 
	[OVO_Decision] BIGINT NULL, 
	[OVO_Confidence] FLOAT NULL
)



-- Code For temporary table ##TMP_20180508185847_CODEGEN_GJI0JP_KernAgg_Union part 2. Populate

INSERT INTO ##TMP_20180508185847_CODEGEN_GJI0JP_KernAgg_Union ([KEY], [OVO_Class1], [OVO_Class2], [OVO_Decision], [OVO_Confidence]) SELECT [KernAgg_Union].[KEY], [KernAgg_Union].[OVO_Class1], [KernAgg_Union].[OVO_Class2], [KernAgg_Union].[OVO_Decision], [KernAgg_Union].[OVO_Confidence] 
FROM (SELECT [KernAgg_EnsembleUnion].[KEY] AS [KEY], [KernAgg_EnsembleUnion].[OVO_Class1] AS [OVO_Class1], [KernAgg_EnsembleUnion].[OVO_Class2] AS [OVO_Class2], [KernAgg_EnsembleUnion].[OVO_Decision] AS [OVO_Decision], [KernAgg_EnsembleUnion].[OVO_Confidence] AS [OVO_Confidence] 
FROM (SELECT [KernAgg_B0].[KEY] AS [KEY], [KernAgg_B0].[OVO_Class1] AS [OVO_Class1], [KernAgg_B0].[OVO_Class2] AS [OVO_Class2], [KernAgg_B0].[OVO_Decision] AS [OVO_Decision], [KernAgg_B0].[OVO_Confidence] AS [OVO_Confidence] 
FROM ##TMP_20180508185847_CODEGEN_Q39V0E_KernAgg_B0 AS [KernAgg_B0]) AS [KernAgg_EnsembleUnion]) AS [KernAgg_Union]

-- Code For temporary table ##TMP_20180508185847_CODEGEN_UZRLDQ_KernAgg part 1. Create 


CREATE TABLE ##TMP_20180508185847_CODEGEN_UZRLDQ_KernAgg (
	[KEY] BIGINT NULL, 
	[OVO_Vote_0] BIGINT NULL, 
	[OVO_SumConfidence_0] FLOAT NULL, 
	[OVO_Vote_1] BIGINT NULL, 
	[OVO_SumConfidence_1] FLOAT NULL, 
	[OVO_Vote_2] BIGINT NULL, 
	[OVO_SumConfidence_2] FLOAT NULL, 
	max_abs_confidence FLOAT(53) NULL, 
	[OVO_Scale] FLOAT(53) NULL, 
	[Score_0] FLOAT NULL, 
	[Score_1] FLOAT NULL, 
	[Score_2] FLOAT NULL
)



-- Code For temporary table ##TMP_20180508185847_CODEGEN_UZRLDQ_KernAgg part 2. Populate

WITH [OVO_Votes] AS 
(SELECT [Votes_Sel].[KEY] AS [KEY], [Votes_Sel].[OVO_Vote_0] AS [OVO_Vote_0], [Votes_Sel].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [Votes_Sel].[OVO_Vote_1] AS [OVO_Vote_1], [Votes_Sel].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [Votes_Sel].[OVO_Vote_2] AS [OVO_Vote_2], [Votes_Sel].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2] 
FROM (SELECT [KernAgg_Union].[KEY] AS [KEY], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 0 OR [KernAgg_Union].[OVO_Class2] = 0) THEN 1 ELSE 0 END * (CASE WHEN ([KernAgg_Union].[OVO_Decision] = 0 AND [KernAgg_Union].[OVO_Class1] = 0) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Decision] = 1 AND [KernAgg_Union].[OVO_Class2] = 0) THEN 1 ELSE 0 END)) AS [OVO_Vote_0], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 0 OR [KernAgg_Union].[OVO_Class2] = 0) THEN 1 ELSE 0 END * [KernAgg_Union].[OVO_Confidence] * (-CASE WHEN ([KernAgg_Union].[OVO_Class1] = 0) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Class2] = 0) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_0], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 1 OR [KernAgg_Union].[OVO_Class2] = 1) THEN 1 ELSE 0 END * (CASE WHEN ([KernAgg_Union].[OVO_Decision] = 0 AND [KernAgg_Union].[OVO_Class1] = 1) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Decision] = 1 AND [KernAgg_Union].[OVO_Class2] = 1) THEN 1 ELSE 0 END)) AS [OVO_Vote_1], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 1 OR [KernAgg_Union].[OVO_Class2] = 1) THEN 1 ELSE 0 END * [KernAgg_Union].[OVO_Confidence] * (-CASE WHEN ([KernAgg_Union].[OVO_Class1] = 1) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Class2] = 1) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_1], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 2 OR [KernAgg_Union].[OVO_Class2] = 2) THEN 1 ELSE 0 END * (CASE WHEN ([KernAgg_Union].[OVO_Decision] = 0 AND [KernAgg_Union].[OVO_Class1] = 2) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Decision] = 1 AND [KernAgg_Union].[OVO_Class2] = 2) THEN 1 ELSE 0 END)) AS [OVO_Vote_2], sum(CASE WHEN ([KernAgg_Union].[OVO_Class1] = 2 OR [KernAgg_Union].[OVO_Class2] = 2) THEN 1 ELSE 0 END * [KernAgg_Union].[OVO_Confidence] * (-CASE WHEN ([KernAgg_Union].[OVO_Class1] = 2) THEN 1 ELSE 0 END + CASE WHEN ([KernAgg_Union].[OVO_Class2] = 2) THEN 1 ELSE 0 END)) AS [OVO_SumConfidence_2] 
FROM ##TMP_20180508185847_CODEGEN_GJI0JP_KernAgg_Union AS [KernAgg_Union] GROUP BY [KernAgg_Union].[KEY]) AS [Votes_Sel]), 
[OVO_SumConf_CTE] AS 
(SELECT [Values].[KEY] AS [KEY], CAST([Values].[OVO_SumConfidence] AS FLOAT(53)) AS [OVO_SumConfidence] 
FROM (SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_0] AS [OVO_SumConfidence] 
FROM [OVO_Votes] UNION ALL SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_1] AS [OVO_SumConfidence] 
FROM [OVO_Votes] UNION ALL SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_SumConfidence_2] AS [OVO_SumConfidence] 
FROM [OVO_Votes]) AS [Values]), 
[MinMaxConf] AS 
(SELECT min([OVO_SumConf_CTE].[OVO_SumConfidence]) AS [OVO_min_conf], max([OVO_SumConf_CTE].[OVO_SumConfidence]) AS [OVO_max_conf] 
FROM [OVO_SumConf_CTE]), 
[OVO_Votes_WithScale] AS 
(SELECT [OVO_Votes].[KEY] AS [KEY], [OVO_Votes].[OVO_Vote_0] AS [OVO_Vote_0], [OVO_Votes].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [OVO_Votes].[OVO_Vote_1] AS [OVO_Vote_1], [OVO_Votes].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [OVO_Votes].[OVO_Vote_2] AS [OVO_Vote_2], [OVO_Votes].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2], CAST(CASE WHEN (abs([MinMaxConf].[OVO_min_conf]) >= abs([MinMaxConf].[OVO_max_conf])) THEN abs([MinMaxConf].[OVO_min_conf]) ELSE abs([MinMaxConf].[OVO_max_conf]) END AS FLOAT(53)) AS max_abs_confidence, CASE WHEN ([MinMaxConf].[OVO_max_conf] - [MinMaxConf].[OVO_min_conf] <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CAST(CASE WHEN (abs([MinMaxConf].[OVO_min_conf]) >= abs([MinMaxConf].[OVO_max_conf])) THEN abs([MinMaxConf].[OVO_min_conf]) ELSE abs([MinMaxConf].[OVO_max_conf]) END AS FLOAT(53)) END AS [OVO_Scale] 
FROM [OVO_Votes], [MinMaxConf])
 INSERT INTO ##TMP_20180508185847_CODEGEN_UZRLDQ_KernAgg ([KEY], [OVO_Vote_0], [OVO_SumConfidence_0], [OVO_Vote_1], [OVO_SumConfidence_1], [OVO_Vote_2], [OVO_SumConfidence_2], max_abs_confidence, [OVO_Scale], [Score_0], [Score_1], [Score_2]) SELECT [KernAgg].[KEY], [KernAgg].[OVO_Vote_0], [KernAgg].[OVO_SumConfidence_0], [KernAgg].[OVO_Vote_1], [KernAgg].[OVO_SumConfidence_1], [KernAgg].[OVO_Vote_2], [KernAgg].[OVO_SumConfidence_2], [KernAgg].max_abs_confidence, [KernAgg].[OVO_Scale], [KernAgg].[Score_0], [KernAgg].[Score_1], [KernAgg].[Score_2] 
FROM (SELECT [OVO_Votes_WithScale].[KEY] AS [KEY], [OVO_Votes_WithScale].[OVO_Vote_0] AS [OVO_Vote_0], [OVO_Votes_WithScale].[OVO_SumConfidence_0] AS [OVO_SumConfidence_0], [OVO_Votes_WithScale].[OVO_Vote_1] AS [OVO_Vote_1], [OVO_Votes_WithScale].[OVO_SumConfidence_1] AS [OVO_SumConfidence_1], [OVO_Votes_WithScale].[OVO_Vote_2] AS [OVO_Vote_2], [OVO_Votes_WithScale].[OVO_SumConfidence_2] AS [OVO_SumConfidence_2], [OVO_Votes_WithScale].max_abs_confidence AS max_abs_confidence, [OVO_Votes_WithScale].[OVO_Scale] AS [OVO_Scale], [OVO_Votes_WithScale].[OVO_Vote_0] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_0] AS [Score_0], [OVO_Votes_WithScale].[OVO_Vote_1] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_1] AS [Score_1], [OVO_Votes_WithScale].[OVO_Vote_2] + [OVO_Votes_WithScale].[OVO_Scale] * [OVO_Votes_WithScale].[OVO_SumConfidence_2] AS [Score_2] 
FROM [OVO_Votes_WithScale]) AS [KernAgg]

-- Model deployment code

WITH orig_cte AS 
(SELECT [KernAgg].[KEY] AS [KEY], [KernAgg].[Score_0] AS [Score_0], [KernAgg].[Score_1] AS [Score_1], [KernAgg].[Score_2] AS [Score_2], CAST(NULL AS FLOAT(53)) AS [Proba_0], CAST(NULL AS FLOAT(53)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [Proba_2], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM ##TMP_20180508185847_CODEGEN_UZRLDQ_KernAgg AS [KernAgg]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 2 AS class, orig_cte.[LogProba_2] AS [LogProba], orig_cte.[Proba_2] AS [Proba], orig_cte.[Score_2] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Score_2] AS [Score_2], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[Proba_2] AS [Proba_2], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[LogProba_2] AS [LogProba_2], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Score] AS [max_Score] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Score]) AS [max_Score] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[Score] >= union_with_max.[max_Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_max.[KEY] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Score_2] AS [Score_2], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], arg_max_cte.[Proba_2] AS [Proba_2], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[Proba_2] IS NULL OR arg_max_cte.[Proba_2] > 0.0) THEN log(arg_max_cte.[Proba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[arg_max_Score] = 0) THEN arg_max_cte.[Proba_0] WHEN (arg_max_cte.[arg_max_Score] = 1) THEN arg_max_cte.[Proba_1] WHEN (arg_max_cte.[arg_max_Score] = 2) THEN arg_max_cte.[Proba_2] END AS [DecisionProba] 
FROM arg_max_cte