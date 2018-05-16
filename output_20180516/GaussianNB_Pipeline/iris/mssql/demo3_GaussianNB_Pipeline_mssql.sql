-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB_Pipeline
-- Dataset : iris
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516122422_CODEGEN_RRZM4B_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516122422_CODEGEN_RRZM4B_ADS_imp_1_OUT (
	[KEY] BIGINT NULL, 
	imputer_output_2 FLOAT(53) NULL, 
	imputer_output_3 FLOAT(53) NULL, 
	imputer_output_4 FLOAT(53) NULL, 
	imputer_output_5 FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516122422_CODEGEN_RRZM4B_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516122422_CODEGEN_RRZM4B_ADS_imp_1_OUT ([KEY], imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].imputer_output_2, [ADS_imp_1_OUT].imputer_output_3, [ADS_imp_1_OUT].imputer_output_4, [ADS_imp_1_OUT].imputer_output_5 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 5.8474999999999975 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 3.0366666666666657 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 3.8450000000000006 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 1.245 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM iris AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516122422_CODEGEN_YTQ1SL_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516122422_CODEGEN_YTQ1SL_ADS_sca_2_OUT (
	[KEY] BIGINT NULL, 
	scaler_output_2 FLOAT NULL, 
	scaler_output_3 FLOAT NULL, 
	scaler_output_4 FLOAT NULL, 
	scaler_output_5 FLOAT NULL
)



-- Code For temporary table ##TMP_20180516122422_CODEGEN_YTQ1SL_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516122422_CODEGEN_YTQ1SL_ADS_sca_2_OUT ([KEY], scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_output_2, [ADS_sca_2_OUT].scaler_output_3, [ADS_sca_2_OUT].scaler_output_4, [ADS_sca_2_OUT].scaler_output_5 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT(53)) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT(53)) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT(53)) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT(53)) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM ##TMP_20180516122422_CODEGEN_RRZM4B_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Code For temporary table ##TMP_20180516122422_CODEGEN_JNXUUX_NaiveBayes_Scores part 1. Create 


CREATE TABLE ##TMP_20180516122422_CODEGEN_JNXUUX_NaiveBayes_Scores (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT NULL, 
	[Score_1] FLOAT NULL, 
	[Score_2] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516122422_CODEGEN_JNXUUX_NaiveBayes_Scores part 2. Populate

WITH centered_data AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT(53)) - -1.0737587745357238 AS scaler_output_2_0, CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT(53)) - 0.870008970111042 AS scaler_output_3_0, CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT(53)) - -1.3793950932290453 AS scaler_output_4_0, CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT(53)) - -1.3142779871589043 AS scaler_output_5_0, CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT(53)) - 0.08161645102040865 AS scaler_output_2_1, CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT(53)) - -0.6341793371020635 AS scaler_output_3_1, CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT(53)) - 0.23394313160820315 AS scaler_output_4_1, CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT(53)) - 0.10668484415166186 AS scaler_output_5_1, CAST([ADS_sca_2_OUT].scaler_output_2 AS FLOAT(53)) - 0.8480096887675768 AS scaler_output_2_2, CAST([ADS_sca_2_OUT].scaler_output_3 AS FLOAT(53)) - -0.15867810255873832 AS scaler_output_3_2, CAST([ADS_sca_2_OUT].scaler_output_4 AS FLOAT(53)) - 0.9692998415150353 AS scaler_output_4_2, CAST([ADS_sca_2_OUT].scaler_output_5 AS FLOAT(53)) - 1.0316486455537892 AS scaler_output_5_2 
FROM ##TMP_20180516122422_CODEGEN_YTQ1SL_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[NaiveBayes_data] AS 
(SELECT [Values].[KEY] AS [KEY], CAST([Values].[Feature] AS FLOAT(53)) AS [Feature], CAST([Values].log_proba_0 AS FLOAT(53)) AS log_proba_0, CAST([Values].log_proba_1 AS FLOAT(53)) AS log_proba_1, CAST([Values].log_proba_2 AS FLOAT(53)) AS log_proba_2 
FROM (SELECT centered_data.[KEY] AS [KEY], 0 AS [Feature], -0.5 * 0.10397266098536322 - (0.5 * centered_data.scaler_output_2_0 * centered_data.scaler_output_2_0) / 0.17659356929665943 AS log_proba_0, -0.5 * 0.9876234284885649 - (0.5 * centered_data.scaler_output_2_1 * centered_data.scaler_output_2_1) / 0.4273065370611847 AS log_proba_1, -0.5 * 1.1913340818433376 - (0.5 * centered_data.scaler_output_2_2 * centered_data.scaler_output_2_2) / 0.5238536201393055 AS log_proba_2 
FROM centered_data UNION ALL SELECT centered_data.[KEY] AS [KEY], 1 AS [Feature], -0.5 * 1.6176992712861724 - (0.5 * centered_data.scaler_output_3_0 * centered_data.scaler_output_3_0) / 0.8023761267174477 AS log_proba_0, -0.5 * 1.2703633982695903 - (0.5 * centered_data.scaler_output_3_1 * centered_data.scaler_output_3_1) / 0.566933272060774 AS log_proba_1, -0.5 * 1.188361783672836 - (0.5 * centered_data.scaler_output_3_2 * centered_data.scaler_output_3_2) / 0.5222988826987977 AS log_proba_2 
FROM centered_data UNION ALL SELECT centered_data.[KEY] AS [KEY], 2 AS [Feature], -0.5 * -2.8627124529802606 - (0.5 * centered_data.scaler_output_4_0 * centered_data.scaler_output_4_0) / 0.009089916839634978 AS log_proba_0, -0.5 * -0.704680569700576 - (0.5 * centered_data.scaler_output_4_1 * centered_data.scaler_output_4_1) / 0.0786649459713098 AS log_proba_1, -0.5 * -0.6630042730802398 - (0.5 * centered_data.scaler_output_4_2 * centered_data.scaler_output_4_2) / 0.08201268574388819 AS log_proba_2 
FROM centered_data UNION ALL SELECT centered_data.[KEY] AS [KEY], 3 AS [Feature], -0.5 * -1.9540850615939565 - (0.5 * centered_data.scaler_output_5_0 * centered_data.scaler_output_5_0) / 0.022551309855470963 AS log_proba_0, -0.5 * -0.7476146898927448 - (0.5 * centered_data.scaler_output_5_1 * centered_data.scaler_output_5_1) / 0.07535901221863746 AS log_proba_1, -0.5 * -0.1282298413813872 - (0.5 * centered_data.scaler_output_5_2 * centered_data.scaler_output_5_2) / 0.14000083280397102 AS log_proba_2 
FROM centered_data) AS [Values])
 INSERT INTO ##TMP_20180516122422_CODEGEN_JNXUUX_NaiveBayes_Scores ([KEY], [Score_0], [Score_1], [Score_2]) SELECT [NaiveBayes_Scores].[KEY], [NaiveBayes_Scores].[Score_0], [NaiveBayes_Scores].[Score_1], [NaiveBayes_Scores].[Score_2] 
FROM (SELECT nb_sums.[KEY] AS [KEY], nb_sums.[Score_0] AS [Score_0], nb_sums.[Score_1] AS [Score_1], nb_sums.[Score_2] AS [Score_2] 
FROM (SELECT [NaiveBayes_data].[KEY] AS [KEY], -1.1765738301378215 + sum([NaiveBayes_data].log_proba_0) AS [Score_0], -1.0986122886681098 + sum([NaiveBayes_data].log_proba_1) AS [Score_1], -1.0262916270884836 + sum([NaiveBayes_data].log_proba_2) AS [Score_2] 
FROM [NaiveBayes_data] GROUP BY [NaiveBayes_data].[KEY]) AS nb_sums) AS [NaiveBayes_Scores]

-- Model deployment code

WITH orig_cte AS 
(SELECT [NaiveBayes_Scores].[KEY] AS [KEY], [NaiveBayes_Scores].[Score_0] AS [Score_0], [NaiveBayes_Scores].[Score_1] AS [Score_1], [NaiveBayes_Scores].[Score_2] AS [Score_2], CAST(NULL AS FLOAT(53)) AS [Proba_0], CAST(NULL AS FLOAT(53)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [Proba_2], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM ##TMP_20180516122422_CODEGEN_JNXUUX_NaiveBayes_Scores AS [NaiveBayes_Scores]), 
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
score_soft_max_deltas AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Score_2] AS [Score_2], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[Proba_2] AS [Proba_2], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[LogProba_2] AS [LogProba_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Score] AS [max_Score], exp(CASE WHEN (-100.0 <= score_max.[Score_0] - score_max.[max_Score]) THEN score_max.[Score_0] - score_max.[max_Score] ELSE -100.0 END) AS [exp_delta_Score_0], exp(CASE WHEN (-100.0 <= score_max.[Score_1] - score_max.[max_Score]) THEN score_max.[Score_1] - score_max.[max_Score] ELSE -100.0 END) AS [exp_delta_Score_1], exp(CASE WHEN (-100.0 <= score_max.[Score_2] - score_max.[max_Score]) THEN score_max.[Score_2] - score_max.[max_Score] ELSE -100.0 END) AS [exp_delta_Score_2] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_deltas.[KEY] AS [KEY], 0 AS class, score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 1 AS class, score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.[KEY] AS [KEY], 2 AS class, score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score] 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.[KEY] AS [KEY], score_soft_max_deltas.[Score_0] AS [Score_0], score_soft_max_deltas.[Score_1] AS [Score_1], score_soft_max_deltas.[Score_2] AS [Score_2], score_soft_max_deltas.[Proba_0] AS [Proba_0], score_soft_max_deltas.[Proba_1] AS [Proba_1], score_soft_max_deltas.[Proba_2] AS [Proba_2], score_soft_max_deltas.[LogProba_0] AS [LogProba_0], score_soft_max_deltas.[LogProba_1] AS [LogProba_1], score_soft_max_deltas.[LogProba_2] AS [LogProba_2], score_soft_max_deltas.[Decision] AS [Decision], score_soft_max_deltas.[DecisionProba] AS [DecisionProba], score_soft_max_deltas.[KEY_m] AS [KEY_m], score_soft_max_deltas.[max_Score] AS [max_Score], score_soft_max_deltas.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_deltas.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max_deltas.[exp_delta_Score_2] AS [exp_delta_Score_2], sum_exp_t.[KEY_sum] AS [KEY_sum], sum_exp_t.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.[KEY] AS [KEY_sum], sum(score_class_union_soft.[exp_delta_Score]) AS [sum_ExpDeltaScore] 
FROM score_class_union_soft GROUP BY score_class_union_soft.[KEY]) AS sum_exp_t ON score_soft_max_deltas.[KEY] = sum_exp_t.[KEY_sum]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore] 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.[KEY_u] = score_soft_max.[KEY]), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Score_2] AS [Score_2], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[Proba_2] AS [Proba_2], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[LogProba_2] AS [LogProba_2], score_soft_max.[Decision] AS [Decision], score_soft_max.[DecisionProba] AS [DecisionProba], score_soft_max.[KEY_m] AS [KEY_m], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[exp_delta_Score_2] AS [exp_delta_Score_2], score_soft_max.[KEY_sum] AS [KEY_sum], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], [arg_max_t_Score].[KEY_Score] AS [KEY_Score], [arg_max_t_Score].[arg_max_Score] AS [arg_max_Score], soft_max_comp.[KEY_softmax] AS [KEY_softmax], soft_max_comp.[SoftProba_0] AS [SoftProba_0], soft_max_comp.[SoftProba_1] AS [SoftProba_1], soft_max_comp.[SoftProba_2] AS [SoftProba_2] 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Score], min(union_with_max.class) AS [arg_max_Score] 
FROM union_with_max 
WHERE union_with_max.[Score] >= union_with_max.[max_Score] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Score] ON score_soft_max.[KEY] = [arg_max_t_Score].[KEY_Score] LEFT OUTER JOIN (SELECT score_soft_max.[KEY] AS [KEY_softmax], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1], score_soft_max.[exp_delta_Score_2] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_2] 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.[KEY_softmax] = [arg_max_t_Score].[KEY_Score])
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [Score_1], CAST(NULL AS FLOAT(53)) AS [Score_2], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], arg_max_cte.[SoftProba_2] AS [Proba_2], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], CASE WHEN (arg_max_cte.[SoftProba_2] IS NULL OR arg_max_cte.[SoftProba_2] > 0.0) THEN log(arg_max_cte.[SoftProba_2]) ELSE -1.79769313486231e+308 END AS [LogProba_2], arg_max_cte.[arg_max_Score] AS [Decision], CASE WHEN (arg_max_cte.[SoftProba_0] <= CASE WHEN (arg_max_cte.[SoftProba_1] <= arg_max_cte.[SoftProba_2]) THEN arg_max_cte.[SoftProba_2] ELSE arg_max_cte.[SoftProba_1] END) THEN CASE WHEN (arg_max_cte.[SoftProba_1] <= arg_max_cte.[SoftProba_2]) THEN arg_max_cte.[SoftProba_2] ELSE arg_max_cte.[SoftProba_1] END ELSE arg_max_cte.[SoftProba_0] END AS [DecisionProba] 
FROM arg_max_cte