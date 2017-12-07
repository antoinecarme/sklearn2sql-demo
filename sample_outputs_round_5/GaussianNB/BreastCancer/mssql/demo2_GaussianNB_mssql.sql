-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [RawScores] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [Proba_0], -1.03014448939 + (-0.5 * 4.20462866428 - (0.5 * ([ADS].[Feature_0] - 17.6197058824) * ([ADS].[Feature_0] - 17.6197058824)) / 10.6626992312) + (-0.5 * 4.36791713706 - (0.5 * ([ADS].[Feature_1] - 21.0768382353) * ([ADS].[Feature_1] - 21.0768382353)) / 12.5540091739) + (-0.5 * 8.04505442358 - (0.5 * ([ADS].[Feature_2] - 116.56625) * ([ADS].[Feature_2] - 116.56625)) / 496.298399226) + (-0.5 * 13.742004852 - (0.5 * ([ADS].[Feature_3] - 997.209558824) * ([ADS].[Feature_3] - 997.209558824)) / 147875.766633) + (-0.5 * -5.76267348674 - (0.5 * ([ADS].[Feature_4] - 0.103789411765) * ([ADS].[Feature_4] - 0.103789411765)) / 0.000500175984162) + (-0.5 * -3.88770841583 - (0.5 * ([ADS].[Feature_5] - 0.148569632353) * ([ADS].[Feature_5] - 0.148569632353)) / 0.00326144319981) + (-0.5 * -3.30046488661 - (0.5 * ([ADS].[Feature_6] - 0.163340735294) * ([ADS].[Feature_6] - 0.163340735294)) / 0.00586741009426) + (-0.5 * -4.68547282534 - (0.5 * ([ADS].[Feature_7] - 0.0905694117647) * ([ADS].[Feature_7] - 0.0905694117647)) / 0.00146874072975) + (-0.5 * -4.98003281527 - (0.5 * ([ADS].[Feature_8] - 0.193330147059) * ([ADS].[Feature_8] - 0.193330147059)) / 0.00109400513449) + (-0.5 * -6.02167090696 - (0.5 * ([ADS].[Feature_9] - 0.0629961764706) * ([ADS].[Feature_9] - 0.0629961764706)) / 0.000386048336065) + (-0.5 * -0.105378969347 - (0.5 * ([ADS].[Feature_10] - 0.641009558824) * ([ADS].[Feature_10] - 0.641009558824)) / 0.143236805511) + (-0.5 * 0.590139588099 - (0.5 * ([ADS].[Feature_11] - 1.21988455882) * ([ADS].[Feature_11] - 1.21988455882)) / 0.28715375404) + (-0.5 * 3.92096439802 - (0.5 * ([ADS].[Feature_12] - 4.58590441176) * ([ADS].[Feature_12] - 4.58590441176)) / 8.02921955124) + (-0.5 * 10.319805009 - (0.5 * ([ADS].[Feature_13] - 77.2313235294) * ([ADS].[Feature_13] - 77.2313235294)) / 4826.74662257) + (-0.5 * -6.16755738184 - (0.5 * ([ADS].[Feature_14] - 0.00677775) * ([ADS].[Feature_14] - 0.00677775)) / 0.000333644518298) + (-0.5 * -5.52973230925 - (0.5 * ([ADS].[Feature_15] - 0.0327096838235) * ([ADS].[Feature_15] - 0.0327096838235)) / 0.000631375758607) + (-0.5 * -5.37910520749 - (0.5 * ([ADS].[Feature_16] - 0.0415321323529) * ([ADS].[Feature_16] - 0.0415321323529)) / 0.000734014133638) + (-0.5 * -6.09860599461 - (0.5 * ([ADS].[Feature_17] - 0.0155251617647) * ([ADS].[Feature_17] - 0.0155251617647)) / 0.000357461440276) + (-0.5 * -5.8790788691 - (0.5 * ([ADS].[Feature_18] - 0.0210686176471) * ([ADS].[Feature_18] - 0.0210686176471)) / 0.000445213802774) + (-0.5 * -6.17518594563 - (0.5 * ([ADS].[Feature_19] - 0.00413772058824) * ([ADS].[Feature_19] - 0.00413772058824)) / 0.000331108973386) + (-0.5 * 4.73217846603 - (0.5 * ([ADS].[Feature_20] - 21.2928676471) * ([ADS].[Feature_20] - 21.2928676471)) / 18.070872712) + (-0.5 * 5.21311219169 - (0.5 * ([ADS].[Feature_21] - 28.5069117647) * ([ADS].[Feature_21] - 28.5069117647)) / 29.231155957) + (-0.5 * 8.60169459336 - (0.5 * ([ADS].[Feature_22] - 142.747058824) * ([ADS].[Feature_22] - 142.747058824)) / 865.941649491) + (-0.5 * 14.6441706567 - (0.5 * ([ADS].[Feature_23] - 1440.55514706) * ([ADS].[Feature_23] - 1440.55514706)) / 364504.286477) + (-0.5 * -5.20554704446 - (0.5 * ([ADS].[Feature_24] - 0.145285955882) * ([ADS].[Feature_24] - 0.145285955882)) / 0.000873131738006) + (-0.5 * -1.70520073268 - (0.5 * ([ADS].[Feature_25] - 0.374982720588) * ([ADS].[Feature_25] - 0.374982720588)) / 0.028924167169) + (-0.5 * -1.5933459612 - (0.5 * ([ADS].[Feature_26] - 0.443888823529) * ([ADS].[Feature_26] - 0.443888823529)) / 0.0323473548625) + (-0.5 * -4.19789177433 - (0.5 * ([ADS].[Feature_27] - 0.185416176471) * ([ADS].[Feature_27] - 0.185416176471)) / 0.00239165701695) + (-0.5 * -3.31195490662 - (0.5 * ([ADS].[Feature_28] - 0.321396323529) * ([ADS].[Feature_28] - 0.321396323529)) / 0.00580037926511) + (-0.5 * -5.37560467752 - (0.5 * ([ADS].[Feature_29] - 0.0911573529412) * ([ADS].[Feature_29] - 0.0911573529412)) / 0.00073658807456) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [Proba_1], -0.441541164582 + (-0.5 * 3.01882413424 - (0.5 * ([ADS].[Feature_0] - 12.1200734694) * ([ADS].[Feature_0] - 12.1200734694)) / 3.25745777596) + (-0.5 * 4.63525641994 - (0.5 * ([ADS].[Feature_1] - 17.8768571429) * ([ADS].[Feature_1] - 17.8768571429)) / 16.4016075854) + (-0.5 * 6.80151251548 - (0.5 * ([ADS].[Feature_2] - 77.9151836735) * ([ADS].[Feature_2] - 77.9151836735)) / 143.113131817) + (-0.5 * 11.6587280538 - (0.5 * ([ADS].[Feature_3] - 461.033877551) * ([ADS].[Feature_3] - 461.033877551)) / 18413.7139143) + (-0.5 * -5.75097563075 - (0.5 * ([ADS].[Feature_4] - 0.0929287755102) * ([ADS].[Feature_4] - 0.0929287755102)) / 0.000506061326622) + (-0.5 * -4.77576643042 - (0.5 * ([ADS].[Feature_5] - 0.0805119183673) * ([ADS].[Feature_5] - 0.0805119183673)) / 0.00134193389954) + (-0.5 * -4.37124997827 - (0.5 * ([ADS].[Feature_6] - 0.0457081632653) * ([ADS].[Feature_6] - 0.0457081632653)) / 0.0020109922044) + (-0.5 * -5.62818591183 - (0.5 * ([ADS].[Feature_7] - 0.0257702244898) * ([ADS].[Feature_7] - 0.0257702244898)) / 0.000572176539773) + (-0.5 * -5.10195613336 - (0.5 * ([ADS].[Feature_8] - 0.174347346939) * ([ADS].[Feature_8] - 0.174347346939)) / 0.000968431118226) + (-0.5 * -6.05859533786 - (0.5 * ([ADS].[Feature_9] - 0.0630606122449) * ([ADS].[Feature_9] - 0.0630606122449)) / 0.000372053683257) + (-0.5 * -2.41078829134 - (0.5 * ([ADS].[Feature_10] - 0.282929795918) * ([ADS].[Feature_10] - 0.282929795918)) / 0.0142832842681) + (-0.5 * 0.694056311534 - (0.5 * ([ADS].[Feature_11] - 1.21912326531) * ([ADS].[Feature_11] - 1.21912326531)) / 0.318599403145) + (-0.5 * 1.3487819468 - (0.5 * ([ADS].[Feature_12] - 1.97432897959) * ([ADS].[Feature_12] - 1.97432897959)) / 0.613180998683) + (-0.5 * 6.29957524569 - (0.5 * ([ADS].[Feature_13] - 21.079355102) * ([ADS].[Feature_13] - 21.079355102)) / 86.6345051695) + (-0.5 * -6.15939618386 - (0.5 * ([ADS].[Feature_14] - 0.00722966530612) * ([ADS].[Feature_14] - 0.00722966530612)) / 0.000336378598777) + (-0.5 * -5.5685593708 - (0.5 * ([ADS].[Feature_15] - 0.0216503142857) * ([ADS].[Feature_15] - 0.0216503142857)) / 0.000607331105398) + (-0.5 * -4.76189657345 - (0.5 * ([ADS].[Feature_16] - 0.0259838893878) * ([ADS].[Feature_16] - 0.0259838893878)) / 0.0013606760055) + (-0.5 * -6.08518276355 - (0.5 * ([ADS].[Feature_17] - 0.0100196571429) * ([ADS].[Feature_17] - 0.0100196571429)) / 0.000362292076624) + (-0.5 * -6.05592332621 - (0.5 * ([ADS].[Feature_18] - 0.0206314244898) * ([ADS].[Feature_18] - 0.0206314244898)) / 0.000373049144382) + (-0.5 * -6.15611556026 - (0.5 * ([ADS].[Feature_19] - 0.00375779714286) * ([ADS].[Feature_19] - 0.00375779714286)) / 0.000337483942464) + (-0.5 * 3.24403279368 - (0.5 * ([ADS].[Feature_20] - 13.3432244898) * ([ADS].[Feature_20] - 13.3432244898)) / 4.08023966158) + (-0.5 * 5.25739896751 - (0.5 * ([ADS].[Feature_21] - 23.4287755102) * ([ADS].[Feature_21] - 23.4287755102)) / 30.5548033106) + (-0.5 * 7.07878238594 - (0.5 * ([ADS].[Feature_22] - 86.6752653061) * ([ADS].[Feature_22] - 86.6752653061)) / 188.840986474) + (-0.5 * 12.0696376601 - (0.5 * ([ADS].[Feature_23] - 556.764897959) * ([ADS].[Feature_23] - 556.764897959)) / 27771.3611359) + (-0.5 * -5.41232233276 - (0.5 * ([ADS].[Feature_24] - 0.12523755102) * ([ADS].[Feature_24] - 0.12523755102)) / 0.000710032794777) + (-0.5 * -3.04365016016 - (0.5 * ([ADS].[Feature_25] - 0.182727428571) * ([ADS].[Feature_25] - 0.182727428571)) / 0.0075854205211) + (-0.5 * -2.33813031709 - (0.5 * ([ADS].[Feature_26] - 0.163856644898) * ([ADS].[Feature_26] - 0.163856644898)) / 0.0153597107396) + (-0.5 * -4.63663161561 - (0.5 * ([ADS].[Feature_27] - 0.0745243632653) * ([ADS].[Feature_27] - 0.0745243632653)) / 0.00154225648958) + (-0.5 * -4.35084951406 - (0.5 * ([ADS].[Feature_28] - 0.27087877551) * ([ADS].[Feature_28] - 0.27087877551)) / 0.0020524387054) + (-0.5 * -5.75168636553 - (0.5 * ([ADS].[Feature_29] - 0.0798585306122) * ([ADS].[Feature_29] - 0.0798585306122)) / 0.000505701779024) AS [Score_1] 
FROM [BreastCancer] AS [ADS]), 
orig_cte AS 
(SELECT [RawScores].[KEY] AS [KEY], [RawScores].[Score_0] AS [Score_0], [RawScores].[Score_1] AS [Score_1], [RawScores].[Proba_0] AS [Proba_0], [RawScores].[Proba_1] AS [Proba_1], [RawScores].[LogProba_0] AS [LogProba_0], [RawScores].[LogProba_1] AS [LogProba_1], CAST(NULL AS FLOAT(53)) AS [Decision] 
FROM [RawScores]), 
score_class_union AS 
(SELECT scu.[KEY] AS [KEY], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY], 0 AS class, orig_cte.[LogProba_0] AS [LogProba], orig_cte.[Proba_0] AS [Proba], orig_cte.[Score_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY], 1 AS class, orig_cte.[LogProba_1] AS [LogProba], orig_cte.[Proba_1] AS [Proba], orig_cte.[Score_1] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_0] AS [Score_0], orig_cte.[Score_1] AS [Score_1], orig_cte.[Proba_0] AS [Proba_0], orig_cte.[Proba_1] AS [Proba_1], orig_cte.[LogProba_0] AS [LogProba_0], orig_cte.[LogProba_1] AS [LogProba_1], orig_cte.[Decision] AS [Decision], (SELECT max(score_class_union.[LogProba]) AS max_1 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_LogProba], (SELECT max(score_class_union.[Proba]) AS max_2 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Proba], (SELECT max(score_class_union.[Score]) AS max_3 
FROM score_class_union 
WHERE orig_cte.[KEY] = score_class_union.[KEY]) AS [max_Score] 
FROM orig_cte), 
score_soft_max_comp AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_0] AS [Score_0], score_max.[Score_1] AS [Score_1], score_max.[Proba_0] AS [Proba_0], score_max.[Proba_1] AS [Proba_1], score_max.[LogProba_0] AS [LogProba_0], score_max.[LogProba_1] AS [LogProba_1], score_max.[Decision] AS [Decision], score_max.[max_LogProba] AS [max_LogProba], score_max.[max_Proba] AS [max_Proba], score_max.[max_Score] AS [max_Score], exp(score_max.[Score_0] - score_max.[max_Score]) AS [exp_delta_Score_0], exp(score_max.[Score_1] - score_max.[max_Score]) AS [exp_delta_Score_1] 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.[KEY] AS [KEY], soft_scu.class AS class, soft_scu.[LogProba] AS [LogProba], soft_scu.[Proba] AS [Proba], soft_scu.[Score] AS [Score], soft_scu.[exp_delta_Score] AS [exp_delta_Score] 
FROM (SELECT score_soft_max_comp.[KEY] AS [KEY], 0 AS class, score_soft_max_comp.[LogProba_0] AS [LogProba], score_soft_max_comp.[Proba_0] AS [Proba], score_soft_max_comp.[Score_0] AS [Score], score_soft_max_comp.[exp_delta_Score_0] AS [exp_delta_Score] 
FROM score_soft_max_comp UNION ALL SELECT score_soft_max_comp.[KEY] AS [KEY], 1 AS class, score_soft_max_comp.[LogProba_1] AS [LogProba], score_soft_max_comp.[Proba_1] AS [Proba], score_soft_max_comp.[Score_1] AS [Score], score_soft_max_comp.[exp_delta_Score_1] AS [exp_delta_Score] 
FROM score_soft_max_comp) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_comp.[KEY] AS [KEY], score_soft_max_comp.[Score_0] AS [Score_0], score_soft_max_comp.[Score_1] AS [Score_1], score_soft_max_comp.[Proba_0] AS [Proba_0], score_soft_max_comp.[Proba_1] AS [Proba_1], score_soft_max_comp.[LogProba_0] AS [LogProba_0], score_soft_max_comp.[LogProba_1] AS [LogProba_1], score_soft_max_comp.[Decision] AS [Decision], score_soft_max_comp.[max_LogProba] AS [max_LogProba], score_soft_max_comp.[max_Proba] AS [max_Proba], score_soft_max_comp.[max_Score] AS [max_Score], score_soft_max_comp.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max_comp.[exp_delta_Score_1] AS [exp_delta_Score_1], (SELECT sum(score_class_union_soft.[exp_delta_Score]) AS sum_1 
FROM score_class_union_soft 
WHERE score_soft_max_comp.[KEY] = score_class_union_soft.[KEY]) AS [sum_ExpDeltaScore] 
FROM score_soft_max_comp), 
arg_max_cte AS 
(SELECT score_soft_max.[KEY] AS [KEY], score_soft_max.[Score_0] AS [Score_0], score_soft_max.[Score_1] AS [Score_1], score_soft_max.[Proba_0] AS [Proba_0], score_soft_max.[Proba_1] AS [Proba_1], score_soft_max.[LogProba_0] AS [LogProba_0], score_soft_max.[LogProba_1] AS [LogProba_1], score_soft_max.[Decision] AS [Decision], score_soft_max.[max_LogProba] AS [max_LogProba], score_soft_max.[max_Proba] AS [max_Proba], score_soft_max.[max_Score] AS [max_Score], score_soft_max.[exp_delta_Score_0] AS [exp_delta_Score_0], score_soft_max.[exp_delta_Score_1] AS [exp_delta_Score_1], score_soft_max.[sum_ExpDeltaScore] AS [sum_ExpDeltaScore], (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_soft_max.[max_LogProba] = score_class_union.[LogProba] AND score_soft_max.[KEY] = score_class_union.[KEY]) AS [arg_max_LogProba], (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_soft_max.[max_Proba] = score_class_union.[Proba] AND score_soft_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Proba], (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_soft_max.[max_Score] = score_class_union.[Score] AND score_soft_max.[KEY] = score_class_union.[KEY]) AS [arg_max_Score], score_soft_max.[exp_delta_Score_0] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_0], score_soft_max.[exp_delta_Score_1] / score_soft_max.[sum_ExpDeltaScore] AS [SoftProba_1] 
FROM score_soft_max)
 SELECT arg_max_cte.[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_0], CAST(NULL AS FLOAT(53)) AS [Score_1], arg_max_cte.[SoftProba_0] AS [Proba_0], arg_max_cte.[SoftProba_1] AS [Proba_1], CASE WHEN (arg_max_cte.[SoftProba_0] IS NULL OR arg_max_cte.[SoftProba_0] > 0.0) THEN log(arg_max_cte.[SoftProba_0]) ELSE -1.79769313486231e+308 END AS [LogProba_0], CASE WHEN (arg_max_cte.[SoftProba_1] IS NULL OR arg_max_cte.[SoftProba_1] > 0.0) THEN log(arg_max_cte.[SoftProba_1]) ELSE -1.79769313486231e+308 END AS [LogProba_1], arg_max_cte.[arg_max_Score] AS [Decision] 
FROM arg_max_cte