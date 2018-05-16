-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier
-- Dataset : BreastCancer
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516111750_CODEGEN_B5PLSV_HL_1_relu_1 part 1. Create 


CREATE TABLE ##TMP_20180516111750_CODEGEN_B5PLSV_HL_1_relu_1 (
	[KEY] BIGINT NULL, 
	[NEUR_1_1] FLOAT NULL, 
	[NEUR_1_2] FLOAT NULL, 
	[NEUR_1_3] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516111750_CODEGEN_B5PLSV_HL_1_relu_1 part 2. Populate

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT(53)) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT(53)) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT(53)) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT(53)) AS [Feature_3], CAST([ADS].[Feature_4] AS FLOAT(53)) AS [Feature_4], CAST([ADS].[Feature_5] AS FLOAT(53)) AS [Feature_5], CAST([ADS].[Feature_6] AS FLOAT(53)) AS [Feature_6], CAST([ADS].[Feature_7] AS FLOAT(53)) AS [Feature_7], CAST([ADS].[Feature_8] AS FLOAT(53)) AS [Feature_8], CAST([ADS].[Feature_9] AS FLOAT(53)) AS [Feature_9], CAST([ADS].[Feature_10] AS FLOAT(53)) AS [Feature_10], CAST([ADS].[Feature_11] AS FLOAT(53)) AS [Feature_11], CAST([ADS].[Feature_12] AS FLOAT(53)) AS [Feature_12], CAST([ADS].[Feature_13] AS FLOAT(53)) AS [Feature_13], CAST([ADS].[Feature_14] AS FLOAT(53)) AS [Feature_14], CAST([ADS].[Feature_15] AS FLOAT(53)) AS [Feature_15], CAST([ADS].[Feature_16] AS FLOAT(53)) AS [Feature_16], CAST([ADS].[Feature_17] AS FLOAT(53)) AS [Feature_17], CAST([ADS].[Feature_18] AS FLOAT(53)) AS [Feature_18], CAST([ADS].[Feature_19] AS FLOAT(53)) AS [Feature_19], CAST([ADS].[Feature_20] AS FLOAT(53)) AS [Feature_20], CAST([ADS].[Feature_21] AS FLOAT(53)) AS [Feature_21], CAST([ADS].[Feature_22] AS FLOAT(53)) AS [Feature_22], CAST([ADS].[Feature_23] AS FLOAT(53)) AS [Feature_23], CAST([ADS].[Feature_24] AS FLOAT(53)) AS [Feature_24], CAST([ADS].[Feature_25] AS FLOAT(53)) AS [Feature_25], CAST([ADS].[Feature_26] AS FLOAT(53)) AS [Feature_26], CAST([ADS].[Feature_27] AS FLOAT(53)) AS [Feature_27], CAST([ADS].[Feature_28] AS FLOAT(53)) AS [Feature_28], CAST([ADS].[Feature_29] AS FLOAT(53)) AS [Feature_29] 
FROM [BreastCancer] AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -0.061982603352845875 * [IL].[Feature_0] + -0.2723402351164542 * [IL].[Feature_1] + -0.3373028001620565 * [IL].[Feature_2] + -0.37722320532580145 * [IL].[Feature_3] + 0.16008993866283155 * [IL].[Feature_4] + 0.3312617869893295 * [IL].[Feature_5] + -0.16806086014682284 * [IL].[Feature_6] + -0.03416787564354708 * [IL].[Feature_7] + -0.013585552372538424 * [IL].[Feature_8] + -0.14822571093217338 * [IL].[Feature_9] + -0.1995667078741529 * [IL].[Feature_10] + -0.3646600870628082 * [IL].[Feature_11] + 0.05469682918074552 * [IL].[Feature_12] + 0.32751257035381 * [IL].[Feature_13] + 0.21329914115432252 * [IL].[Feature_14] + 0.17195641015383567 * [IL].[Feature_15] + -0.105823854967052 * [IL].[Feature_16] + -0.39213641058661675 * [IL].[Feature_17] + -0.33927877519521954 * [IL].[Feature_18] + -0.10616321504577066 * [IL].[Feature_19] + -0.4135910981077953 * [IL].[Feature_20] + 0.3251769738255314 * [IL].[Feature_21] + 0.2144575722915413 * [IL].[Feature_22] + -0.35381764697527684 * [IL].[Feature_23] + 0.248174909672975 * [IL].[Feature_24] + -0.007549470343772574 * [IL].[Feature_25] + 0.2264569927112432 * [IL].[Feature_26] + 0.0015159757327308718 * [IL].[Feature_27] + -0.24920572085007817 * [IL].[Feature_28] + 0.2033606676567356 * [IL].[Feature_29] + 0.2592603509840756 AS [NEUR_1_1], 0.08482520545142143 * [IL].[Feature_0] + 0.008644941845633986 * [IL].[Feature_1] + -0.25129530377986914 * [IL].[Feature_2] + 0.3055698566347761 * [IL].[Feature_3] + 0.11910167091844542 * [IL].[Feature_4] + 0.3194798094084252 * [IL].[Feature_5] + -0.1904265458435587 * [IL].[Feature_6] + -0.40735537387491816 * [IL].[Feature_7] + 0.3594714972069042 * [IL].[Feature_8] + -0.06021927016654564 * [IL].[Feature_9] + -0.26055749406931233 * [IL].[Feature_10] + -0.0733307958338063 * [IL].[Feature_11] + -0.30599968523763377 * [IL].[Feature_12] + 0.22842734161336448 * [IL].[Feature_13] + 0.03916659312724707 * [IL].[Feature_14] + -0.20020683696229835 * [IL].[Feature_15] + 0.12343910709228027 * [IL].[Feature_16] + -0.27266635096897335 * [IL].[Feature_17] + 0.0680979939171404 * [IL].[Feature_18] + 0.2635944524062477 * [IL].[Feature_19] + -0.42344248254720546 * [IL].[Feature_20] + -0.0035683719500691742 * [IL].[Feature_21] + -0.298514098130931 * [IL].[Feature_22] + 0.0914381647848917 * [IL].[Feature_23] + 0.19463859240841935 * [IL].[Feature_24] + -0.06664760327643222 * [IL].[Feature_25] + 0.09165795594271205 * [IL].[Feature_26] + 0.2504961088307234 * [IL].[Feature_27] + -0.04882674845785359 * [IL].[Feature_28] + -0.3727214015899063 * [IL].[Feature_29] + -0.04324523682567095 AS [NEUR_1_2], 0.40263364550938174 * [IL].[Feature_0] + -0.27890189895577805 * [IL].[Feature_1] + 0.21678807022646163 * [IL].[Feature_2] + 0.009866995093818307 * [IL].[Feature_3] + -0.2729022333761932 * [IL].[Feature_4] + -0.14807373355630057 * [IL].[Feature_5] + 0.2726515335162801 * [IL].[Feature_6] + -0.2554921089727839 * [IL].[Feature_7] + -0.31805735262687307 * [IL].[Feature_8] + 0.35709591731560913 * [IL].[Feature_9] + -0.005147862704581218 * [IL].[Feature_10] + 0.0015029247690605085 * [IL].[Feature_11] + 0.29100756161982677 * [IL].[Feature_12] + -0.2504593782899013 * [IL].[Feature_13] + -0.3790231616730738 * [IL].[Feature_14] + -0.3244105178017768 * [IL].[Feature_15] + 0.08540673807057009 * [IL].[Feature_16] + -0.04238407653150329 * [IL].[Feature_17] + 0.29883599616732603 * [IL].[Feature_18] + -0.048963700383944715 * [IL].[Feature_19] + -0.1376681512736874 * [IL].[Feature_20] + 0.19321719865027007 * [IL].[Feature_21] + -0.4352411545000535 * [IL].[Feature_22] + 0.17505658123111473 * [IL].[Feature_23] + 0.41475557898064863 * [IL].[Feature_24] + 0.0933011284681434 * [IL].[Feature_25] + 0.16699235320767267 * [IL].[Feature_26] + 0.3989931459252897 * [IL].[Feature_27] + 0.14153367589778637 * [IL].[Feature_28] + 0.13424989499166626 * [IL].[Feature_29] + -0.3699741676048113 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_1] END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_2] END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_3] END AS [NEUR_1_3] 
FROM [HL_BA_1])
 INSERT INTO ##TMP_20180516111750_CODEGEN_B5PLSV_HL_1_relu_1 ([KEY], [NEUR_1_1], [NEUR_1_2], [NEUR_1_3]) SELECT [HL_1_relu_1].[KEY], [HL_1_relu_1].[NEUR_1_1], [HL_1_relu_1].[NEUR_1_2], [HL_1_relu_1].[NEUR_1_3] 
FROM (SELECT [HL_1_relu].[KEY] AS [KEY], [HL_1_relu].[NEUR_1_1] AS [NEUR_1_1], [HL_1_relu].[NEUR_1_2] AS [NEUR_1_2], [HL_1_relu].[NEUR_1_3] AS [NEUR_1_3] 
FROM [HL_1_relu]) AS [HL_1_relu_1]

-- Code For temporary table ##TMP_20180516111750_CODEGEN_O2VQBT_OL_logistic_1 part 1. Create 


CREATE TABLE ##TMP_20180516111750_CODEGEN_O2VQBT_OL_logistic_1 (
	[KEY] BIGINT NULL, 
	[NEUR_3_1] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516111750_CODEGEN_O2VQBT_OL_logistic_1 part 2. Populate

WITH [HL_BA_2] AS 
(SELECT [HL_1_relu_1].[KEY] AS [KEY], 0.5570017972174299 * [HL_1_relu_1].[NEUR_1_1] + -0.631851209981196 * [HL_1_relu_1].[NEUR_1_2] + -0.6027942163503318 * [HL_1_relu_1].[NEUR_1_3] + -0.0885848948970186 AS [NEUR_2_1], -0.6117147512993999 * [HL_1_relu_1].[NEUR_1_1] + -0.7801455649376947 * [HL_1_relu_1].[NEUR_1_2] + -0.20352821274128455 * [HL_1_relu_1].[NEUR_1_3] + 0.7261678101839508 AS [NEUR_2_2], 0.31816655643253156 * [HL_1_relu_1].[NEUR_1_1] + 0.24520744599204347 * [HL_1_relu_1].[NEUR_1_2] + -0.8551662101039045 * [HL_1_relu_1].[NEUR_1_3] + 0.5639237733304812 AS [NEUR_2_3], -0.8421902246487252 * [HL_1_relu_1].[NEUR_1_1] + -0.42238220997569226 * [HL_1_relu_1].[NEUR_1_2] + 0.19867215305070107 * [HL_1_relu_1].[NEUR_1_3] + 0.7033294322747231 AS [NEUR_2_4], -0.6948083780237723 * [HL_1_relu_1].[NEUR_1_1] + -0.2695316480522733 * [HL_1_relu_1].[NEUR_1_2] + -0.6617365100151862 * [HL_1_relu_1].[NEUR_1_3] + -0.815750113657602 AS [NEUR_2_5] 
FROM ##TMP_20180516111750_CODEGEN_B5PLSV_HL_1_relu_1 AS [HL_1_relu_1]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_1] END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_2] END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_3] END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_4] END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_5] END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.17801854645619256 * [HL_2_relu].[NEUR_2_1] + -0.13753622953186534 * [HL_2_relu].[NEUR_2_2] + 0.8117441153122132 * [HL_2_relu].[NEUR_2_3] + -0.015116677783573979 * [HL_2_relu].[NEUR_2_4] + 0.3793758553211919 * [HL_2_relu].[NEUR_2_5] + 0.6117876880806967 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_logistic] AS 
(SELECT [OL_BA].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -[OL_BA].[NEUR_3_1]) THEN -[OL_BA].[NEUR_3_1] ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -[OL_BA].[NEUR_3_1]) THEN -[OL_BA].[NEUR_3_1] ELSE -100.0 END ELSE 100.0 END)) AS [NEUR_3_1] 
FROM [OL_BA])
 INSERT INTO ##TMP_20180516111750_CODEGEN_O2VQBT_OL_logistic_1 ([KEY], [NEUR_3_1]) SELECT [OL_logistic_1].[KEY], [OL_logistic_1].[NEUR_3_1] 
FROM (SELECT [OL_logistic].[KEY] AS [KEY], [OL_logistic].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_logistic]) AS [OL_logistic_1]

-- Model deployment code

WITH orig_cte AS 
(SELECT [OL_logistic_1].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [Score_1], 1.0 - [OL_logistic_1].[NEUR_3_1] AS [Proba_0], [OL_logistic_1].[NEUR_3_1] AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM ##TMP_20180516111750_CODEGEN_O2VQBT_OL_logistic_1 AS [OL_logistic_1]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Proba] AS [max_Proba] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Proba]) AS [max_Proba] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba], [arg_max_t_Proba].[KEY_Proba] AS [KEY_Proba], [arg_max_t_Proba].[arg_max_Proba] AS [arg_max_Proba] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Proba], min(union_with_max.class) AS [arg_max_Proba] 
FROM union_with_max 
WHERE union_with_max.[max_Proba] <= union_with_max.[Proba] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Proba] ON score_max.[KEY] = [arg_max_t_Proba].[KEY_Proba])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_0] AS [Score_0], arg_max_cte.[Score_1] AS [Score_1], arg_max_cte.[Proba_0] AS [Proba_0], arg_max_cte.[Proba_1] AS [Proba_1], CASE WHEN (arg_max_cte.[Proba_0] IS NULL OR arg_max_cte.[Proba_0] > 0.0) THEN log(arg_max_cte.[Proba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[Proba_1] IS NULL OR arg_max_cte.[Proba_1] > 0.0) THEN log(arg_max_cte.[Proba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], arg_max_cte.[arg_max_Proba] AS [Decision], arg_max_cte.[max_Proba] AS [DecisionProba] 
FROM arg_max_cte