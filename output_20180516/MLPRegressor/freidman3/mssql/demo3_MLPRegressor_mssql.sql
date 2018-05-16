-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : freidman3
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516121850_CODEGEN_SGXWQF_HL_1_relu_1 part 1. Create 


CREATE TABLE ##TMP_20180516121850_CODEGEN_SGXWQF_HL_1_relu_1 (
	[KEY] BIGINT NULL, 
	[NEUR_1_1] FLOAT NULL, 
	[NEUR_1_2] FLOAT NULL, 
	[NEUR_1_3] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516121850_CODEGEN_SGXWQF_HL_1_relu_1 part 2. Populate

WITH [IL] AS 
(SELECT [ADS].[KEY] AS [KEY], CAST([ADS].[Feature_0] AS FLOAT(53)) AS [Feature_0], CAST([ADS].[Feature_1] AS FLOAT(53)) AS [Feature_1], CAST([ADS].[Feature_2] AS FLOAT(53)) AS [Feature_2], CAST([ADS].[Feature_3] AS FLOAT(53)) AS [Feature_3] 
FROM freidman3 AS [ADS]), 
[HL_BA_1] AS 
(SELECT [IL].[KEY] AS [KEY], -0.1342806318579011 * [IL].[Feature_0] + -0.590004563761789 * [IL].[Feature_1] + -0.7307410577062491 * [IL].[Feature_2] + -0.8172256023437622 * [IL].[Feature_3] + 0.34759387273386655 AS [NEUR_1_1], -1.7474162744696469 * [IL].[Feature_0] + 0.15714762614337605 * [IL].[Feature_1] + 14.3050245037951 * [IL].[Feature_2] + 15.059465426018448 * [IL].[Feature_3] + 1.8047602575276223 AS [NEUR_1_2], 0.8753783752920344 * [IL].[Feature_0] + -0.5995715364401899 * [IL].[Feature_1] + 0.4894956399377211 * [IL].[Feature_2] + 0.1314225211103668 * [IL].[Feature_3] + -0.5925122750607899 AS [NEUR_1_3] 
FROM [IL]), 
[HL_1_relu] AS 
(SELECT [HL_BA_1].[KEY] AS [KEY], CASE WHEN ([HL_BA_1].[NEUR_1_1] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_1] END AS [NEUR_1_1], CASE WHEN ([HL_BA_1].[NEUR_1_2] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_2] END AS [NEUR_1_2], CASE WHEN ([HL_BA_1].[NEUR_1_3] <= 0) THEN 0 ELSE [HL_BA_1].[NEUR_1_3] END AS [NEUR_1_3] 
FROM [HL_BA_1])
 INSERT INTO ##TMP_20180516121850_CODEGEN_SGXWQF_HL_1_relu_1 ([KEY], [NEUR_1_1], [NEUR_1_2], [NEUR_1_3]) SELECT [HL_1_relu_1].[KEY], [HL_1_relu_1].[NEUR_1_1], [HL_1_relu_1].[NEUR_1_2], [HL_1_relu_1].[NEUR_1_3] 
FROM (SELECT [HL_1_relu].[KEY] AS [KEY], [HL_1_relu].[NEUR_1_1] AS [NEUR_1_1], [HL_1_relu].[NEUR_1_2] AS [NEUR_1_2], [HL_1_relu].[NEUR_1_3] AS [NEUR_1_3] 
FROM [HL_1_relu]) AS [HL_1_relu_1]

-- Code For temporary table ##TMP_20180516121850_CODEGEN_X60NSO_OL_identity_1 part 1. Create 


CREATE TABLE ##TMP_20180516121850_CODEGEN_X60NSO_OL_identity_1 (
	[KEY] BIGINT NULL, 
	[NEUR_3_1] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516121850_CODEGEN_X60NSO_OL_identity_1 part 2. Populate

WITH [HL_BA_2] AS 
(SELECT [HL_1_relu_1].[KEY] AS [KEY], 0.671303528237788 * [HL_1_relu_1].[NEUR_1_1] + 2.262980034710498 * [HL_1_relu_1].[NEUR_1_2] + 0.7284039680127695 * [HL_1_relu_1].[NEUR_1_3] + 2.5309192263479128 AS [NEUR_2_1], 0.6473995197292937 * [HL_1_relu_1].[NEUR_1_1] + -0.06924135644829287 * [HL_1_relu_1].[NEUR_1_2] + -0.6445020459926758 * [HL_1_relu_1].[NEUR_1_3] + -0.5292904296119374 AS [NEUR_2_2], -0.3000543349034449 * [HL_1_relu_1].[NEUR_1_1] + -0.8255144420855783 * [HL_1_relu_1].[NEUR_1_2] + -0.300380081936023 * [HL_1_relu_1].[NEUR_1_3] + -0.010394282503777497 AS [NEUR_2_3], -0.3405761026603614 * [HL_1_relu_1].[NEUR_1_1] + -0.5177515086052785 * [HL_1_relu_1].[NEUR_1_2] + -0.12205903825019872 * [HL_1_relu_1].[NEUR_1_3] + -0.7406283496068888 AS [NEUR_2_4], -0.3859124377252719 * [HL_1_relu_1].[NEUR_1_1] + -0.027531184091944085 * [HL_1_relu_1].[NEUR_1_2] + 0.7236721234612513 * [HL_1_relu_1].[NEUR_1_3] + -0.14939322656497145 AS [NEUR_2_5] 
FROM ##TMP_20180516121850_CODEGEN_SGXWQF_HL_1_relu_1 AS [HL_1_relu_1]), 
[HL_2_relu] AS 
(SELECT [HL_BA_2].[KEY] AS [KEY], CASE WHEN ([HL_BA_2].[NEUR_2_1] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_1] END AS [NEUR_2_1], CASE WHEN ([HL_BA_2].[NEUR_2_2] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_2] END AS [NEUR_2_2], CASE WHEN ([HL_BA_2].[NEUR_2_3] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_3] END AS [NEUR_2_3], CASE WHEN ([HL_BA_2].[NEUR_2_4] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_4] END AS [NEUR_2_4], CASE WHEN ([HL_BA_2].[NEUR_2_5] <= 0) THEN 0 ELSE [HL_BA_2].[NEUR_2_5] END AS [NEUR_2_5] 
FROM [HL_BA_2]), 
[OL_BA] AS 
(SELECT [HL_2_relu].[KEY] AS [KEY], 0.0005353675072919451 * [HL_2_relu].[NEUR_2_1] + 0.12799090455927675 * [HL_2_relu].[NEUR_2_2] + -0.7168058583030711 * [HL_2_relu].[NEUR_2_3] + 0.6814485190433073 * [HL_2_relu].[NEUR_2_4] + 0.7663813562768813 * [HL_2_relu].[NEUR_2_5] + 1.146636503505203 AS [NEUR_3_1] 
FROM [HL_2_relu]), 
[OL_identity] AS 
(SELECT [OL_BA].[KEY] AS [KEY], [OL_BA].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_BA])
 INSERT INTO ##TMP_20180516121850_CODEGEN_X60NSO_OL_identity_1 ([KEY], [NEUR_3_1]) SELECT [OL_identity_1].[KEY], [OL_identity_1].[NEUR_3_1] 
FROM (SELECT [OL_identity].[KEY] AS [KEY], [OL_identity].[NEUR_3_1] AS [NEUR_3_1] 
FROM [OL_identity]) AS [OL_identity_1]

-- Model deployment code

SELECT [OL_identity_1].[KEY] AS [KEY], [OL_identity_1].[NEUR_3_1] AS [Estimator] 
FROM ##TMP_20180516121850_CODEGEN_X60NSO_OL_identity_1 AS [OL_identity_1]