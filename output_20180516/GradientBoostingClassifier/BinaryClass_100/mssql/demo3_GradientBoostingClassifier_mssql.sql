-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingClassifier
-- Dataset : BinaryClass_100
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516111002_CODEGEN_P110CR_GB_B0 part 1. Create 


CREATE TABLE ##TMP_20180516111002_CODEGEN_P110CR_GB_B0 (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT(53) NULL, 
	[Score_1] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516111002_CODEGEN_P110CR_GB_B0 part 2. Populate

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_17] <= 1.086324691772461) THEN CASE WHEN ([ADS].[Feature_9] <= 1.7608928680419922) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_19] <= 0.9697616696357727) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_83] <= 2.2875289916992188) THEN CASE WHEN ([ADS].[Feature_70] <= -1.5690407752990723) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.6183315431435734 AS [E] UNION ALL SELECT 4 AS nid, 2.1052631578947363 AS [E] UNION ALL SELECT 6 AS nid, 2.1052631578947363 AS [E] UNION ALL SELECT 7 AS nid, -1.904761904761905 AS [E] UNION ALL SELECT 10 AS nid, -1.904761904761905 AS [E] UNION ALL SELECT 11 AS nid, 2.105263157894737 AS [E] UNION ALL SELECT 12 AS nid, -1.904761904761905 AS [E]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].nid AS nid, [DT_node_data].[E] AS [E] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].nid), 
[GB_Model_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], -[DT_Output].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output]), 
[GB_Model_0_1] AS 
(SELECT [DT_Output].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output].[E] AS [Score_1] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_37] <= 1.6649534702301025) THEN CASE WHEN ([ADS].[Feature_60] <= -2.280282974243164) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_94] <= -1.0246386528015137) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_18] <= 2.0317130088806152) THEN CASE WHEN ([ADS].[Feature_17] <= 1.9419240951538086) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 2.096008535366903 AS [E] UNION ALL SELECT 4 AS nid, -1.4234854473404777 AS [E] UNION ALL SELECT 6 AS nid, 1.895437496504261 AS [E] UNION ALL SELECT 7 AS nid, 2.2994181831603377 AS [E] UNION ALL SELECT 10 AS nid, 1.8954374965042624 AS [E] UNION ALL SELECT 11 AS nid, -1.7478449197552628 AS [E] UNION ALL SELECT 12 AS nid, -1.7478449197552628 AS [E]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].nid AS nid, [DT_node_data_1].[E] AS [E] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].nid), 
[GB_Model_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], -[DT_Output_1].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_1]), 
[GB_Model_1_1] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_1].[E] AS [Score_1] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_71] <= -2.182079315185547) THEN 2 ELSE CASE WHEN ([ADS].[Feature_9] <= 1.7608928680419922) THEN 4 ELSE 5 END END ELSE CASE WHEN ([ADS].[Feature_47] <= -1.373920202255249) THEN 7 ELSE CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 9 ELSE 10 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 2 AS nid, 2.0324558055611313 AS [E] UNION ALL SELECT 4 AS nid, -1.3276995551562458 AS [E] UNION ALL SELECT 5 AS nid, 2.0324201305914054 AS [E] UNION ALL SELECT 7 AS nid, -1.6279189753326482 AS [E] UNION ALL SELECT 9 AS nid, -1.6279189753326482 AS [E] UNION ALL SELECT 10 AS nid, 1.7408281426133267 AS [E]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].nid AS nid, [DT_node_data_2].[E] AS [E] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].nid), 
[GB_Model_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], -[DT_Output_2].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_2]), 
[GB_Model_2_1] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_2].[E] AS [Score_1] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_60] <= -2.280282974243164) THEN CASE WHEN ([ADS].[Feature_25] <= 0.08380049467086792) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_37] <= 1.6649534702301025) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 9 ELSE CASE WHEN ([ADS].[Feature_10] <= 2.318753480911255) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 2.2033215782363085 AS [E] UNION ALL SELECT 4 AS nid, 1.8292167028822635 AS [E] UNION ALL SELECT 6 AS nid, -1.2388948754014388 AS [E] UNION ALL SELECT 7 AS nid, 1.8443051333640834 AS [E] UNION ALL SELECT 9 AS nid, -1.5335854573777359 AS [E] UNION ALL SELECT 11 AS nid, 1.6224640389018972 AS [E] UNION ALL SELECT 12 AS nid, -1.5335854573777359 AS [E]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].nid AS nid, [DT_node_data_3].[E] AS [E] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].nid), 
[GB_Model_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], -[DT_Output_3].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_3]), 
[GB_Model_3_1] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_3].[E] AS [Score_1] 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_17] <= 0.7869232892990112) THEN CASE WHEN ([ADS].[Feature_43] <= 1.2855033874511719) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_33] <= 0.08075147867202759) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 0.30662107467651367) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_4] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.4201836338413583 AS [E] UNION ALL SELECT 4 AS nid, 0.8818891509469176 AS [E] UNION ALL SELECT 6 AS nid, 2.0543740519216325 AS [E] UNION ALL SELECT 7 AS nid, -1.5115435903792729 AS [E] UNION ALL SELECT 10 AS nid, -1.4577213966216014 AS [E] UNION ALL SELECT 11 AS nid, 1.5448043165070784 AS [E] UNION ALL SELECT 13 AS nid, -1.4876585385597692 AS [E] UNION ALL SELECT 14 AS nid, 1.529238644498216 AS [E]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].nid AS nid, [DT_node_data_4].[E] AS [E] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].nid), 
[GB_Model_4_0] AS 
(SELECT [DT_Output_4].[KEY] AS [KEY], -[DT_Output_4].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_4]), 
[GB_Model_4_1] AS 
(SELECT [DT_Output_4].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_4].[E] AS [Score_1] 
FROM [DT_Output_4])
 INSERT INTO ##TMP_20180516111002_CODEGEN_P110CR_GB_B0 ([KEY], [Score_0], [Score_1]) SELECT [GB_B0].[KEY], [GB_B0].[Score_0], [GB_B0].[Score_1] 
FROM (SELECT [GB_esu_0].[KEY] AS [KEY], [GB_esu_0].[Score_0] AS [Score_0], [GB_esu_0].[Score_1] AS [Score_1] 
FROM (SELECT [GB_Model_0_0].[KEY] AS [KEY], [GB_Model_0_0].[Score_0] AS [Score_0], [GB_Model_0_0].[Score_1] AS [Score_1] 
FROM [GB_Model_0_0] UNION ALL SELECT [GB_Model_0_1].[KEY] AS [KEY], [GB_Model_0_1].[Score_0] AS [Score_0], [GB_Model_0_1].[Score_1] AS [Score_1] 
FROM [GB_Model_0_1] UNION ALL SELECT [GB_Model_1_0].[KEY] AS [KEY], [GB_Model_1_0].[Score_0] AS [Score_0], [GB_Model_1_0].[Score_1] AS [Score_1] 
FROM [GB_Model_1_0] UNION ALL SELECT [GB_Model_1_1].[KEY] AS [KEY], [GB_Model_1_1].[Score_0] AS [Score_0], [GB_Model_1_1].[Score_1] AS [Score_1] 
FROM [GB_Model_1_1] UNION ALL SELECT [GB_Model_2_0].[KEY] AS [KEY], [GB_Model_2_0].[Score_0] AS [Score_0], [GB_Model_2_0].[Score_1] AS [Score_1] 
FROM [GB_Model_2_0] UNION ALL SELECT [GB_Model_2_1].[KEY] AS [KEY], [GB_Model_2_1].[Score_0] AS [Score_0], [GB_Model_2_1].[Score_1] AS [Score_1] 
FROM [GB_Model_2_1] UNION ALL SELECT [GB_Model_3_0].[KEY] AS [KEY], [GB_Model_3_0].[Score_0] AS [Score_0], [GB_Model_3_0].[Score_1] AS [Score_1] 
FROM [GB_Model_3_0] UNION ALL SELECT [GB_Model_3_1].[KEY] AS [KEY], [GB_Model_3_1].[Score_0] AS [Score_0], [GB_Model_3_1].[Score_1] AS [Score_1] 
FROM [GB_Model_3_1] UNION ALL SELECT [GB_Model_4_0].[KEY] AS [KEY], [GB_Model_4_0].[Score_0] AS [Score_0], [GB_Model_4_0].[Score_1] AS [Score_1] 
FROM [GB_Model_4_0] UNION ALL SELECT [GB_Model_4_1].[KEY] AS [KEY], [GB_Model_4_1].[Score_0] AS [Score_0], [GB_Model_4_1].[Score_1] AS [Score_1] 
FROM [GB_Model_4_1]) AS [GB_esu_0]) AS [GB_B0]

-- Code For temporary table ##TMP_20180516111002_CODEGEN_TVHMHW_GB_B1 part 1. Create 


CREATE TABLE ##TMP_20180516111002_CODEGEN_TVHMHW_GB_B1 (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT(53) NULL, 
	[Score_1] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516111002_CODEGEN_TVHMHW_GB_B1 part 2. Populate

WITH [DT_node_lookup_5] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_60] <= -0.6577232480049133) THEN CASE WHEN ([ADS].[Feature_73] <= 0.050291866064071655) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_17] <= 1.086324691772461) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_18] <= 0.645362913608551) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_5] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.958202526870995 AS [E] UNION ALL SELECT 4 AS nid, -1.448008549051362 AS [E] UNION ALL SELECT 6 AS nid, -1.3444944167722634 AS [E] UNION ALL SELECT 7 AS nid, 0.7265051857481474 AS [E] UNION ALL SELECT 10 AS nid, -1.395633609741032 AS [E] UNION ALL SELECT 11 AS nid, 1.4673881774513675 AS [E] UNION ALL SELECT 13 AS nid, 1.4541899894634762 AS [E] UNION ALL SELECT 14 AS nid, -1.4203469592033384 AS [E]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].nid AS nid, [DT_node_data_5].[E] AS [E] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].nid), 
[GB_Model_5_0] AS 
(SELECT [DT_Output_5].[KEY] AS [KEY], -[DT_Output_5].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_5]), 
[GB_Model_5_1] AS 
(SELECT [DT_Output_5].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_5].[E] AS [Score_1] 
FROM [DT_Output_5]), 
[DT_node_lookup_6] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_35] <= 0.540546178817749) THEN CASE WHEN ([ADS].[Feature_17] <= 1.260037899017334) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_21] <= -0.29568687081336975) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_76] <= 1.7782776355743408) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_6] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.3946185074449031 AS [E] UNION ALL SELECT 4 AS nid, 0.525957561992705 AS [E] UNION ALL SELECT 6 AS nid, 1.937257098415046 AS [E] UNION ALL SELECT 7 AS nid, -0.8866233396726353 AS [E] UNION ALL SELECT 10 AS nid, -1.344097550451214 AS [E] UNION ALL SELECT 11 AS nid, 1.4040651025086777 AS [E] UNION ALL SELECT 13 AS nid, -1.3647650410708272 AS [E] UNION ALL SELECT 14 AS nid, 1.3927198824988734 AS [E]) AS [Values]), 
[DT_Output_6] AS 
(SELECT [DT_node_lookup_6].[KEY] AS [KEY], [DT_node_lookup_6].node_id_2 AS node_id_2, [DT_node_data_6].nid AS nid, [DT_node_data_6].[E] AS [E] 
FROM [DT_node_lookup_6] LEFT OUTER JOIN [DT_node_data_6] ON [DT_node_lookup_6].node_id_2 = [DT_node_data_6].nid), 
[GB_Model_6_0] AS 
(SELECT [DT_Output_6].[KEY] AS [KEY], -[DT_Output_6].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_6]), 
[GB_Model_6_1] AS 
(SELECT [DT_Output_6].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_6].[E] AS [Score_1] 
FROM [DT_Output_6]), 
[DT_node_lookup_7] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_60] <= -0.6577232480049133) THEN CASE WHEN ([ADS].[Feature_76] <= 0.040523961186409) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_35] <= 1.8964011669158936) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_66] <= 0.32714080810546875) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_7] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.337157307504241 AS [E] UNION ALL SELECT 4 AS nid, 1.720271726539447 AS [E] UNION ALL SELECT 6 AS nid, -1.170701604442776 AS [E] UNION ALL SELECT 7 AS nid, 1.8229070531835285 AS [E] UNION ALL SELECT 10 AS nid, -1.300821010694913 AS [E] UNION ALL SELECT 11 AS nid, 1.3515189609079086 AS [E] UNION ALL SELECT 13 AS nid, -1.3182902998610377 AS [E] UNION ALL SELECT 14 AS nid, 1.3416629081480635 AS [E]) AS [Values]), 
[DT_Output_7] AS 
(SELECT [DT_node_lookup_7].[KEY] AS [KEY], [DT_node_lookup_7].node_id_2 AS node_id_2, [DT_node_data_7].nid AS nid, [DT_node_data_7].[E] AS [E] 
FROM [DT_node_lookup_7] LEFT OUTER JOIN [DT_node_data_7] ON [DT_node_lookup_7].node_id_2 = [DT_node_data_7].nid), 
[GB_Model_7_0] AS 
(SELECT [DT_Output_7].[KEY] AS [KEY], -[DT_Output_7].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_7]), 
[GB_Model_7_1] AS 
(SELECT [DT_Output_7].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_7].[E] AS [Score_1] 
FROM [DT_Output_7]), 
[DT_node_lookup_8] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_71] <= -2.182079315185547) THEN CASE WHEN ([ADS].[Feature_5] <= 0.5961169004440308) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_35] <= 1.1146454811096191) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_18] <= 2.0317130088806152) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_60] <= -1.404435634613037) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_8] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.6108718821416377 AS [E] UNION ALL SELECT 4 AS nid, 1.6688510571596784 AS [E] UNION ALL SELECT 6 AS nid, -1.068080084295244 AS [E] UNION ALL SELECT 7 AS nid, 0.9475315093373128 AS [E] UNION ALL SELECT 10 AS nid, 1.307398426483107 AS [E] UNION ALL SELECT 11 AS nid, -1.264127868945373 AS [E] UNION ALL SELECT 13 AS nid, 1.298765298853743 AS [E] UNION ALL SELECT 14 AS nid, -1.279025518068119 AS [E]) AS [Values]), 
[DT_Output_8] AS 
(SELECT [DT_node_lookup_8].[KEY] AS [KEY], [DT_node_lookup_8].node_id_2 AS node_id_2, [DT_node_data_8].nid AS nid, [DT_node_data_8].[E] AS [E] 
FROM [DT_node_lookup_8] LEFT OUTER JOIN [DT_node_data_8] ON [DT_node_lookup_8].node_id_2 = [DT_node_data_8].nid), 
[GB_Model_8_0] AS 
(SELECT [DT_Output_8].[KEY] AS [KEY], -[DT_Output_8].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_8]), 
[GB_Model_8_1] AS 
(SELECT [DT_Output_8].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_8].[E] AS [Score_1] 
FROM [DT_Output_8]), 
[DT_node_lookup_9] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.19605962932109833) THEN CASE WHEN ([ADS].[Feature_18] <= 2.4513967037200928) THEN CASE WHEN ([ADS].[Feature_60] <= -2.280282974243164) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_6] <= -0.6969937086105347) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.5001174211502075) THEN CASE WHEN ([ADS].[Feature_72] <= -1.9872186183929443) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_22] <= 0.4450732469558716) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_9] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.4900163352519837 AS [E] UNION ALL SELECT 4 AS nid, -0.9948753872812511 AS [E] UNION ALL SELECT 6 AS nid, 1.632261202074544 AS [E] UNION ALL SELECT 7 AS nid, 1.519985051185009 AS [E] UNION ALL SELECT 10 AS nid, -1.2327629493831462 AS [E] UNION ALL SELECT 11 AS nid, 1.2699877686233394 AS [E] UNION ALL SELECT 13 AS nid, -1.245562745293807 AS [E] UNION ALL SELECT 14 AS nid, 1.262376837539426 AS [E]) AS [Values]), 
[DT_Output_9] AS 
(SELECT [DT_node_lookup_9].[KEY] AS [KEY], [DT_node_lookup_9].node_id_2 AS node_id_2, [DT_node_data_9].nid AS nid, [DT_node_data_9].[E] AS [E] 
FROM [DT_node_lookup_9] LEFT OUTER JOIN [DT_node_data_9] ON [DT_node_lookup_9].node_id_2 = [DT_node_data_9].nid), 
[GB_Model_9_0] AS 
(SELECT [DT_Output_9].[KEY] AS [KEY], -[DT_Output_9].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_9]), 
[GB_Model_9_1] AS 
(SELECT [DT_Output_9].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_9].[E] AS [Score_1] 
FROM [DT_Output_9])
 INSERT INTO ##TMP_20180516111002_CODEGEN_TVHMHW_GB_B1 ([KEY], [Score_0], [Score_1]) SELECT [GB_B1].[KEY], [GB_B1].[Score_0], [GB_B1].[Score_1] 
FROM (SELECT [GB_esu_1].[KEY] AS [KEY], [GB_esu_1].[Score_0] AS [Score_0], [GB_esu_1].[Score_1] AS [Score_1] 
FROM (SELECT [GB_Model_5_0].[KEY] AS [KEY], [GB_Model_5_0].[Score_0] AS [Score_0], [GB_Model_5_0].[Score_1] AS [Score_1] 
FROM [GB_Model_5_0] UNION ALL SELECT [GB_Model_5_1].[KEY] AS [KEY], [GB_Model_5_1].[Score_0] AS [Score_0], [GB_Model_5_1].[Score_1] AS [Score_1] 
FROM [GB_Model_5_1] UNION ALL SELECT [GB_Model_6_0].[KEY] AS [KEY], [GB_Model_6_0].[Score_0] AS [Score_0], [GB_Model_6_0].[Score_1] AS [Score_1] 
FROM [GB_Model_6_0] UNION ALL SELECT [GB_Model_6_1].[KEY] AS [KEY], [GB_Model_6_1].[Score_0] AS [Score_0], [GB_Model_6_1].[Score_1] AS [Score_1] 
FROM [GB_Model_6_1] UNION ALL SELECT [GB_Model_7_0].[KEY] AS [KEY], [GB_Model_7_0].[Score_0] AS [Score_0], [GB_Model_7_0].[Score_1] AS [Score_1] 
FROM [GB_Model_7_0] UNION ALL SELECT [GB_Model_7_1].[KEY] AS [KEY], [GB_Model_7_1].[Score_0] AS [Score_0], [GB_Model_7_1].[Score_1] AS [Score_1] 
FROM [GB_Model_7_1] UNION ALL SELECT [GB_Model_8_0].[KEY] AS [KEY], [GB_Model_8_0].[Score_0] AS [Score_0], [GB_Model_8_0].[Score_1] AS [Score_1] 
FROM [GB_Model_8_0] UNION ALL SELECT [GB_Model_8_1].[KEY] AS [KEY], [GB_Model_8_1].[Score_0] AS [Score_0], [GB_Model_8_1].[Score_1] AS [Score_1] 
FROM [GB_Model_8_1] UNION ALL SELECT [GB_Model_9_0].[KEY] AS [KEY], [GB_Model_9_0].[Score_0] AS [Score_0], [GB_Model_9_0].[Score_1] AS [Score_1] 
FROM [GB_Model_9_0] UNION ALL SELECT [GB_Model_9_1].[KEY] AS [KEY], [GB_Model_9_1].[Score_0] AS [Score_0], [GB_Model_9_1].[Score_1] AS [Score_1] 
FROM [GB_Model_9_1]) AS [GB_esu_1]) AS [GB_B1]

-- Code For temporary table ##TMP_20180516111002_CODEGEN_IZ8L47_GB_B2 part 1. Create 


CREATE TABLE ##TMP_20180516111002_CODEGEN_IZ8L47_GB_B2 (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT(53) NULL, 
	[Score_1] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516111002_CODEGEN_IZ8L47_GB_B2 part 2. Populate

WITH [DT_node_lookup_10] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.27291035652160645) THEN CASE WHEN ([ADS].[Feature_17] <= 0.7869232892990112) THEN CASE WHEN ([ADS].[Feature_71] <= -2.182079315185547) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.991510272026062) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_18] <= 2.0082812309265137) THEN CASE WHEN ([ADS].[Feature_84] <= 1.5507421493530273) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_71] <= 0.25993645191192627) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_10] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.446661732834358 AS [E] UNION ALL SELECT 4 AS nid, -1.2499360133065067 AS [E] UNION ALL SELECT 6 AS nid, 1.6219351936501099 AS [E] UNION ALL SELECT 7 AS nid, -1.2895245850004842 AS [E] UNION ALL SELECT 10 AS nid, 1.1975528332766405 AS [E] UNION ALL SELECT 11 AS nid, -0.6151746918646214 AS [E] UNION ALL SELECT 13 AS nid, -1.317315323569 AS [E] UNION ALL SELECT 14 AS nid, -1.2057669579063237 AS [E]) AS [Values]), 
[DT_Output_10] AS 
(SELECT [DT_node_lookup_10].[KEY] AS [KEY], [DT_node_lookup_10].node_id_2 AS node_id_2, [DT_node_data_10].nid AS nid, [DT_node_data_10].[E] AS [E] 
FROM [DT_node_lookup_10] LEFT OUTER JOIN [DT_node_data_10] ON [DT_node_lookup_10].node_id_2 = [DT_node_data_10].nid), 
[GB_Model_10_0] AS 
(SELECT [DT_Output_10].[KEY] AS [KEY], -[DT_Output_10].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_10]), 
[GB_Model_10_1] AS 
(SELECT [DT_Output_10].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_10].[E] AS [Score_1] 
FROM [DT_Output_10]), 
[DT_node_lookup_11] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.27291035652160645) THEN CASE WHEN ([ADS].[Feature_17] <= 0.7869232892990112) THEN CASE WHEN ([ADS].[Feature_88] <= 2.0869669914245605) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.991510272026062) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_97] <= -1.6103904247283936) THEN CASE WHEN ([ADS].[Feature_94] <= -1.232283353805542) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_18] <= 1.2704501152038574) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_11] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.220589039043774 AS [E] UNION ALL SELECT 4 AS nid, 1.3865013593274123 AS [E] UNION ALL SELECT 6 AS nid, 1.5327998769743132 AS [E] UNION ALL SELECT 7 AS nid, -1.2548231207419789 AS [E] UNION ALL SELECT 10 AS nid, -1.2256580639543597 AS [E] UNION ALL SELECT 11 AS nid, -1.2318331300228573 AS [E] UNION ALL SELECT 13 AS nid, 1.2459403972282284 AS [E] UNION ALL SELECT 14 AS nid, -0.05217530635323901 AS [E]) AS [Values]), 
[DT_Output_11] AS 
(SELECT [DT_node_lookup_11].[KEY] AS [KEY], [DT_node_lookup_11].node_id_2 AS node_id_2, [DT_node_data_11].nid AS nid, [DT_node_data_11].[E] AS [E] 
FROM [DT_node_lookup_11] LEFT OUTER JOIN [DT_node_data_11] ON [DT_node_lookup_11].node_id_2 = [DT_node_data_11].nid), 
[GB_Model_11_0] AS 
(SELECT [DT_Output_11].[KEY] AS [KEY], -[DT_Output_11].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_11]), 
[GB_Model_11_1] AS 
(SELECT [DT_Output_11].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_11].[E] AS [Score_1] 
FROM [DT_Output_11]), 
[DT_node_lookup_12] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.27291035652160645) THEN CASE WHEN ([ADS].[Feature_17] <= 0.7869232892990112) THEN CASE WHEN ([ADS].[Feature_71] <= -2.182079315185547) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.991510272026062) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_18] <= 2.0082812309265137) THEN CASE WHEN ([ADS].[Feature_84] <= 1.5507421493530273) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_98] <= -0.5806252956390381) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_12] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.336462011301788 AS [E] UNION ALL SELECT 4 AS nid, -1.195258567601929 AS [E] UNION ALL SELECT 6 AS nid, 1.460157504031824 AS [E] UNION ALL SELECT 7 AS nid, -1.225033227714185 AS [E] UNION ALL SELECT 10 AS nid, 1.1286854488179339 AS [E] UNION ALL SELECT 11 AS nid, -0.5693352361704495 AS [E] UNION ALL SELECT 13 AS nid, -1.2767036085425458 AS [E] UNION ALL SELECT 14 AS nid, -1.1814445377175218 AS [E]) AS [Values]), 
[DT_Output_12] AS 
(SELECT [DT_node_lookup_12].[KEY] AS [KEY], [DT_node_lookup_12].node_id_2 AS node_id_2, [DT_node_data_12].nid AS nid, [DT_node_data_12].[E] AS [E] 
FROM [DT_node_lookup_12] LEFT OUTER JOIN [DT_node_data_12] ON [DT_node_lookup_12].node_id_2 = [DT_node_data_12].nid), 
[GB_Model_12_0] AS 
(SELECT [DT_Output_12].[KEY] AS [KEY], -[DT_Output_12].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_12]), 
[GB_Model_12_1] AS 
(SELECT [DT_Output_12].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_12].[E] AS [Score_1] 
FROM [DT_Output_12]), 
[DT_node_lookup_13] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= 0.03440605849027634) THEN CASE WHEN ([ADS].[Feature_9] <= 1.7608928680419922) THEN CASE WHEN ([ADS].[Feature_17] <= 0.7869232892990112) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_73] <= -0.2536468505859375) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_10] <= 2.318753480911255) THEN CASE WHEN ([ADS].[Feature_54] <= 1.471251130104065) THEN 10 ELSE 11 END ELSE 12 END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_13] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.0027112222309909 AS [E] UNION ALL SELECT 4 AS nid, 0.5020490769066449 AS [E] UNION ALL SELECT 6 AS nid, 1.4820602336151274 AS [E] UNION ALL SELECT 7 AS nid, 1.289621326139366 AS [E] UNION ALL SELECT 10 AS nid, 1.1667450118563434 AS [E] UNION ALL SELECT 11 AS nid, -1.1612257530876875 AS [E] UNION ALL SELECT 12 AS nid, -1.1796530087132728 AS [E]) AS [Values]), 
[DT_Output_13] AS 
(SELECT [DT_node_lookup_13].[KEY] AS [KEY], [DT_node_lookup_13].node_id_2 AS node_id_2, [DT_node_data_13].nid AS nid, [DT_node_data_13].[E] AS [E] 
FROM [DT_node_lookup_13] LEFT OUTER JOIN [DT_node_data_13] ON [DT_node_lookup_13].node_id_2 = [DT_node_data_13].nid), 
[GB_Model_13_0] AS 
(SELECT [DT_Output_13].[KEY] AS [KEY], -[DT_Output_13].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_13]), 
[GB_Model_13_1] AS 
(SELECT [DT_Output_13].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_13].[E] AS [Score_1] 
FROM [DT_Output_13]), 
[DT_node_lookup_14] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_57] <= -0.27291035652160645) THEN CASE WHEN ([ADS].[Feature_71] <= -2.182079315185547) THEN CASE WHEN ([ADS].[Feature_87] <= -0.43115851283073425) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_19] <= -1.6332900524139404) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_18] <= 2.0082812309265137) THEN CASE WHEN ([ADS].[Feature_97] <= -1.6103904247283936) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= -0.2365896850824356) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_14] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, 1.3748289048641364 AS [E] UNION ALL SELECT 4 AS nid, 1.3254178894915882 AS [E] UNION ALL SELECT 6 AS nid, 1.5416984936659368 AS [E] UNION ALL SELECT 7 AS nid, -0.9882844135467986 AS [E] UNION ALL SELECT 10 AS nid, -1.1728890055441057 AS [E] UNION ALL SELECT 11 AS nid, 1.017348509871444 AS [E] UNION ALL SELECT 13 AS nid, -1.1435499417251889 AS [E] UNION ALL SELECT 14 AS nid, -1.2203033466414503 AS [E]) AS [Values]), 
[DT_Output_14] AS 
(SELECT [DT_node_lookup_14].[KEY] AS [KEY], [DT_node_lookup_14].node_id_2 AS node_id_2, [DT_node_data_14].nid AS nid, [DT_node_data_14].[E] AS [E] 
FROM [DT_node_lookup_14] LEFT OUTER JOIN [DT_node_data_14] ON [DT_node_lookup_14].node_id_2 = [DT_node_data_14].nid), 
[GB_Model_14_0] AS 
(SELECT [DT_Output_14].[KEY] AS [KEY], -[DT_Output_14].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_14]), 
[GB_Model_14_1] AS 
(SELECT [DT_Output_14].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_14].[E] AS [Score_1] 
FROM [DT_Output_14])
 INSERT INTO ##TMP_20180516111002_CODEGEN_IZ8L47_GB_B2 ([KEY], [Score_0], [Score_1]) SELECT [GB_B2].[KEY], [GB_B2].[Score_0], [GB_B2].[Score_1] 
FROM (SELECT [GB_esu_2].[KEY] AS [KEY], [GB_esu_2].[Score_0] AS [Score_0], [GB_esu_2].[Score_1] AS [Score_1] 
FROM (SELECT [GB_Model_10_0].[KEY] AS [KEY], [GB_Model_10_0].[Score_0] AS [Score_0], [GB_Model_10_0].[Score_1] AS [Score_1] 
FROM [GB_Model_10_0] UNION ALL SELECT [GB_Model_10_1].[KEY] AS [KEY], [GB_Model_10_1].[Score_0] AS [Score_0], [GB_Model_10_1].[Score_1] AS [Score_1] 
FROM [GB_Model_10_1] UNION ALL SELECT [GB_Model_11_0].[KEY] AS [KEY], [GB_Model_11_0].[Score_0] AS [Score_0], [GB_Model_11_0].[Score_1] AS [Score_1] 
FROM [GB_Model_11_0] UNION ALL SELECT [GB_Model_11_1].[KEY] AS [KEY], [GB_Model_11_1].[Score_0] AS [Score_0], [GB_Model_11_1].[Score_1] AS [Score_1] 
FROM [GB_Model_11_1] UNION ALL SELECT [GB_Model_12_0].[KEY] AS [KEY], [GB_Model_12_0].[Score_0] AS [Score_0], [GB_Model_12_0].[Score_1] AS [Score_1] 
FROM [GB_Model_12_0] UNION ALL SELECT [GB_Model_12_1].[KEY] AS [KEY], [GB_Model_12_1].[Score_0] AS [Score_0], [GB_Model_12_1].[Score_1] AS [Score_1] 
FROM [GB_Model_12_1] UNION ALL SELECT [GB_Model_13_0].[KEY] AS [KEY], [GB_Model_13_0].[Score_0] AS [Score_0], [GB_Model_13_0].[Score_1] AS [Score_1] 
FROM [GB_Model_13_0] UNION ALL SELECT [GB_Model_13_1].[KEY] AS [KEY], [GB_Model_13_1].[Score_0] AS [Score_0], [GB_Model_13_1].[Score_1] AS [Score_1] 
FROM [GB_Model_13_1] UNION ALL SELECT [GB_Model_14_0].[KEY] AS [KEY], [GB_Model_14_0].[Score_0] AS [Score_0], [GB_Model_14_0].[Score_1] AS [Score_1] 
FROM [GB_Model_14_0] UNION ALL SELECT [GB_Model_14_1].[KEY] AS [KEY], [GB_Model_14_1].[Score_0] AS [Score_0], [GB_Model_14_1].[Score_1] AS [Score_1] 
FROM [GB_Model_14_1]) AS [GB_esu_2]) AS [GB_B2]

-- Code For temporary table ##TMP_20180516111002_CODEGEN_38SQMV_GB_B3 part 1. Create 


CREATE TABLE ##TMP_20180516111002_CODEGEN_38SQMV_GB_B3 (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT(53) NULL, 
	[Score_1] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516111002_CODEGEN_38SQMV_GB_B3 part 2. Populate

WITH [DT_node_lookup_15] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_77] <= 0.34157806634902954) THEN CASE WHEN ([ADS].[Feature_59] <= -1.4929250478744507) THEN CASE WHEN ([ADS].[Feature_57] <= -0.30557534098625183) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_48] <= 1.231797456741333) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_63] <= -1.2931482791900635) THEN 9 ELSE CASE WHEN ([ADS].[Feature_10] <= -0.9688628911972046) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [BinaryClass_100] AS [ADS]), 
[DT_node_data_15] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -1.1408123626661393 AS [E] UNION ALL SELECT 4 AS nid, -1.1949952326507387 AS [E] UNION ALL SELECT 6 AS nid, 0.8502158462658079 AS [E] UNION ALL SELECT 7 AS nid, -0.5955307623945251 AS [E] UNION ALL SELECT 9 AS nid, -1.2312159733472068 AS [E] UNION ALL SELECT 11 AS nid, -1.1721830246591496 AS [E] UNION ALL SELECT 12 AS nid, -1.1415942686578024 AS [E]) AS [Values]), 
[DT_Output_15] AS 
(SELECT [DT_node_lookup_15].[KEY] AS [KEY], [DT_node_lookup_15].node_id_2 AS node_id_2, [DT_node_data_15].nid AS nid, [DT_node_data_15].[E] AS [E] 
FROM [DT_node_lookup_15] LEFT OUTER JOIN [DT_node_data_15] ON [DT_node_lookup_15].node_id_2 = [DT_node_data_15].nid), 
[GB_Model_15_0] AS 
(SELECT [DT_Output_15].[KEY] AS [KEY], -[DT_Output_15].[E] AS [Score_0], 0.0 AS [Score_1] 
FROM [DT_Output_15]), 
[GB_Model_15_1] AS 
(SELECT [DT_Output_15].[KEY] AS [KEY], 0.0 AS [Score_0], [DT_Output_15].[E] AS [Score_1] 
FROM [DT_Output_15])
 INSERT INTO ##TMP_20180516111002_CODEGEN_38SQMV_GB_B3 ([KEY], [Score_0], [Score_1]) SELECT [GB_B3].[KEY], [GB_B3].[Score_0], [GB_B3].[Score_1] 
FROM (SELECT [GB_esu_3].[KEY] AS [KEY], [GB_esu_3].[Score_0] AS [Score_0], [GB_esu_3].[Score_1] AS [Score_1] 
FROM (SELECT [GB_Model_15_0].[KEY] AS [KEY], [GB_Model_15_0].[Score_0] AS [Score_0], [GB_Model_15_0].[Score_1] AS [Score_1] 
FROM [GB_Model_15_0] UNION ALL SELECT [GB_Model_15_1].[KEY] AS [KEY], [GB_Model_15_1].[Score_0] AS [Score_0], [GB_Model_15_1].[Score_1] AS [Score_1] 
FROM [GB_Model_15_1]) AS [GB_esu_3]) AS [GB_B3]

-- Code For temporary table ##TMP_20180516111002_CODEGEN_BRY4EU_GB_sum part 1. Create 


CREATE TABLE ##TMP_20180516111002_CODEGEN_BRY4EU_GB_sum (
	[KEY] BIGINT NULL, 
	[Score_0] FLOAT(53) NULL, 
	[Score_1] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516111002_CODEGEN_BRY4EU_GB_sum part 2. Populate

WITH [GB_Union] AS 
(SELECT [GB_EnsembleUnion].[KEY] AS [KEY], [GB_EnsembleUnion].[Score_0] AS [Score_0], [GB_EnsembleUnion].[Score_1] AS [Score_1] 
FROM (SELECT [GB_B0].[KEY] AS [KEY], [GB_B0].[Score_0] AS [Score_0], [GB_B0].[Score_1] AS [Score_1] 
FROM ##TMP_20180516111002_CODEGEN_P110CR_GB_B0 AS [GB_B0] UNION ALL SELECT [GB_B1].[KEY] AS [KEY], [GB_B1].[Score_0] AS [Score_0], [GB_B1].[Score_1] AS [Score_1] 
FROM ##TMP_20180516111002_CODEGEN_TVHMHW_GB_B1 AS [GB_B1] UNION ALL SELECT [GB_B2].[KEY] AS [KEY], [GB_B2].[Score_0] AS [Score_0], [GB_B2].[Score_1] AS [Score_1] 
FROM ##TMP_20180516111002_CODEGEN_IZ8L47_GB_B2 AS [GB_B2] UNION ALL SELECT [GB_B3].[KEY] AS [KEY], [GB_B3].[Score_0] AS [Score_0], [GB_B3].[Score_1] AS [Score_1] 
FROM ##TMP_20180516111002_CODEGEN_38SQMV_GB_B3 AS [GB_B3]) AS [GB_EnsembleUnion])
 INSERT INTO ##TMP_20180516111002_CODEGEN_BRY4EU_GB_sum ([KEY], [Score_0], [Score_1]) SELECT [GB_sum].[KEY], [GB_sum].[Score_0], [GB_sum].[Score_1] 
FROM (SELECT [T].[KEY] AS [KEY], CAST([T].[Score_0] AS FLOAT(53)) AS [Score_0], CAST([T].[Score_1] AS FLOAT(53)) AS [Score_1] 
FROM (SELECT [GB_Union].[KEY] AS [KEY], sum([GB_Union].[Score_0]) AS [Score_0], sum([GB_Union].[Score_1]) AS [Score_1] 
FROM [GB_Union] GROUP BY [GB_Union].[KEY]) AS [T]) AS [GB_sum]

-- Model deployment code

WITH orig_cte AS 
(SELECT [GB_sum].[KEY] AS [KEY], -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1]) AS [Score_0], -0.10008345855698253 + 0.1 * [GB_sum].[Score_1] AS [Score_1], 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1])) THEN -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1]) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1])) THEN -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1]) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1])) THEN -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1]) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1])) THEN -(-0.10008345855698253 + 0.1 * [GB_sum].[Score_1]) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_1], CAST(NULL AS FLOAT(53)) AS [LogProba_0], CAST(NULL AS FLOAT(53)) AS [LogProba_1], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM ##TMP_20180516111002_CODEGEN_BRY4EU_GB_sum AS [GB_sum]), 
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