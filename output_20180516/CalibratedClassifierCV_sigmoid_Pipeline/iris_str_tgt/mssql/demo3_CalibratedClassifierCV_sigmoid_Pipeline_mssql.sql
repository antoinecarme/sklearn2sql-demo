-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : CalibratedClassifierCV_sigmoid_Pipeline
-- Dataset : iris_str_tgt
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516130425_CODEGEN_K684LK_ADS_imp_1_OUT part 1. Create 


CREATE TABLE ##TMP_20180516130425_CODEGEN_K684LK_ADS_imp_1_OUT (
	[KEY] BIGINT NULL, 
	imputer_output_2 FLOAT(53) NULL, 
	imputer_output_3 FLOAT(53) NULL, 
	imputer_output_4 FLOAT(53) NULL, 
	imputer_output_5 FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516130425_CODEGEN_K684LK_ADS_imp_1_OUT part 2. Populate

INSERT INTO ##TMP_20180516130425_CODEGEN_K684LK_ADS_imp_1_OUT ([KEY], imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT [ADS_imp_1_OUT].[KEY], [ADS_imp_1_OUT].imputer_output_2, [ADS_imp_1_OUT].imputer_output_3, [ADS_imp_1_OUT].imputer_output_4, [ADS_imp_1_OUT].imputer_output_5 
FROM (SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 5.8474999999999975 ELSE [ADS].[Feature_0] END AS imputer_output_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 3.0366666666666657 ELSE [ADS].[Feature_1] END AS imputer_output_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 3.8450000000000006 ELSE [ADS].[Feature_2] END AS imputer_output_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 1.245 ELSE [ADS].[Feature_3] END AS imputer_output_5 
FROM iris_str_tgt AS [ADS]) AS [ADS_imp_1_OUT]

-- Code For temporary table ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT part 1. Create 


CREATE TABLE ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT (
	[KEY] BIGINT NULL, 
	scaler_output_2 FLOAT NULL, 
	scaler_output_3 FLOAT NULL, 
	scaler_output_4 FLOAT NULL, 
	scaler_output_5 FLOAT NULL
)



-- Code For temporary table ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT part 2. Populate

INSERT INTO ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT ([KEY], scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT [ADS_sca_2_OUT].[KEY], [ADS_sca_2_OUT].scaler_output_2, [ADS_sca_2_OUT].scaler_output_3, [ADS_sca_2_OUT].scaler_output_4, [ADS_sca_2_OUT].scaler_output_5 
FROM (SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], (CAST([ADS_imp_1_OUT].imputer_output_2 AS FLOAT(53)) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST([ADS_imp_1_OUT].imputer_output_3 AS FLOAT(53)) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST([ADS_imp_1_OUT].imputer_output_4 AS FLOAT(53)) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST([ADS_imp_1_OUT].imputer_output_5 AS FLOAT(53)) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM ##TMP_20180516130425_CODEGEN_K684LK_ADS_imp_1_OUT AS [ADS_imp_1_OUT]) AS [ADS_sca_2_OUT]

-- Code For temporary table ##TMP_20180516130425_CODEGEN_3Y1C4C_CalProb_B0 part 1. Create 


CREATE TABLE ##TMP_20180516130425_CODEGEN_3Y1C4C_CalProb_B0 (
	[KEY] BIGINT NULL, 
	[Proba_CLASS_0] FLOAT NULL, 
	[Proba_CLASS_1] FLOAT NULL, 
	[Proba_CLASS_2] FLOAT NULL
)



-- Code For temporary table ##TMP_20180516130425_CODEGEN_3Y1C4C_CalProb_B0 part 2. Populate

WITH [DT_node_lookup] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= -0.6601125001907349) THEN 1 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.529296338558197) THEN 3 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= 0.030562859028577805) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.6734480857849121) THEN 7 ELSE 8 END ELSE 9 END ELSE 10 END END END AS node_id_2 
FROM ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data] AS 
(SELECT [Values].nid AS nid, CAST([Values].[P_CLASS_0] AS FLOAT(53)) AS [P_CLASS_0], CAST([Values].[P_CLASS_1] AS FLOAT(53)) AS [P_CLASS_1], CAST([Values].[P_CLASS_2] AS FLOAT(53)) AS [P_CLASS_2], CAST([Values].[D] AS FLOAT(53)) AS [D], CAST([Values].[DP] AS FLOAT(53)) AS [DP] 
FROM (SELECT 1 AS nid, 1.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_0' AS [D], 1.0 AS [DP] UNION ALL SELECT 3 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 7 AS nid, 0.0 AS [P_CLASS_0], 0.6666666666666666 AS [P_CLASS_1], 0.3333333333333333 AS [P_CLASS_2], 'CLASS_1' AS [D], 0.6666666666666666 AS [DP] UNION ALL SELECT 8 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 9 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 10 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].nid AS nid, [DT_node_data].[P_CLASS_0] AS [P_CLASS_0], [DT_node_data].[P_CLASS_1] AS [P_CLASS_1], [DT_node_data].[P_CLASS_2] AS [P_CLASS_2], [DT_node_data].[D] AS [D], [DT_node_data].[DP] AS [DP] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].nid), 
[Calibrated_Model_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_0], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_1], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_2], [DT_Output].[P_CLASS_0] AS [Proba_CLASS_0], [DT_Output].[P_CLASS_1] AS [Proba_CLASS_1], [DT_Output].[P_CLASS_2] AS [Proba_CLASS_2], CASE WHEN ([DT_Output].[P_CLASS_0] IS NULL OR [DT_Output].[P_CLASS_0] > 0.0) THEN log([DT_Output].[P_CLASS_0]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_0], CASE WHEN ([DT_Output].[P_CLASS_1] IS NULL OR [DT_Output].[P_CLASS_1] > 0.0) THEN log([DT_Output].[P_CLASS_1]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_1], CASE WHEN ([DT_Output].[P_CLASS_2] IS NULL OR [DT_Output].[P_CLASS_2] > 0.0) THEN log([DT_Output].[P_CLASS_2]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output].[P_CLASS_0]) AS [ScoreOrProba_CLASS_0], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output].[P_CLASS_1]) AS [ScoreOrProba_CLASS_1], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output].[P_CLASS_2]) AS [ScoreOrProba_CLASS_2] 
FROM [DT_Output]), 
sigmoid_calibration_0 AS 
(SELECT [Calibrated_Model_0].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.488937334779731 * [Calibrated_Model_0].[ScoreOrProba_CLASS_0] + -3.0910424939613868)) THEN -(5.488937334779731 * [Calibrated_Model_0].[ScoreOrProba_CLASS_0] + -3.0910424939613868) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.488937334779731 * [Calibrated_Model_0].[ScoreOrProba_CLASS_0] + -3.0910424939613868)) THEN -(5.488937334779731 * [Calibrated_Model_0].[ScoreOrProba_CLASS_0] + -3.0910424939613868) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.718121478468529 * [Calibrated_Model_0].[ScoreOrProba_CLASS_1] + -2.95244363385918)) THEN -(4.718121478468529 * [Calibrated_Model_0].[ScoreOrProba_CLASS_1] + -2.95244363385918) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.718121478468529 * [Calibrated_Model_0].[ScoreOrProba_CLASS_1] + -2.95244363385918)) THEN -(4.718121478468529 * [Calibrated_Model_0].[ScoreOrProba_CLASS_1] + -2.95244363385918) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_1], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.801955584523639 * [Calibrated_Model_0].[ScoreOrProba_CLASS_2] + -2.4323200933644706)) THEN -(4.801955584523639 * [Calibrated_Model_0].[ScoreOrProba_CLASS_2] + -2.4323200933644706) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.801955584523639 * [Calibrated_Model_0].[ScoreOrProba_CLASS_2] + -2.4323200933644706)) THEN -(4.801955584523639 * [Calibrated_Model_0].[ScoreOrProba_CLASS_2] + -2.4323200933644706) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_2] 
FROM [Calibrated_Model_0]), 
[Normalized_Probas] AS 
(SELECT sigmoid_calibration_0.[KEY] AS [KEY], sigmoid_calibration_0.[Proba_CLASS_0] / (sigmoid_calibration_0.[Proba_CLASS_0] + sigmoid_calibration_0.[Proba_CLASS_1] + sigmoid_calibration_0.[Proba_CLASS_2]) AS [Proba_CLASS_0], sigmoid_calibration_0.[Proba_CLASS_1] / (sigmoid_calibration_0.[Proba_CLASS_0] + sigmoid_calibration_0.[Proba_CLASS_1] + sigmoid_calibration_0.[Proba_CLASS_2]) AS [Proba_CLASS_1], sigmoid_calibration_0.[Proba_CLASS_2] / (sigmoid_calibration_0.[Proba_CLASS_0] + sigmoid_calibration_0.[Proba_CLASS_1] + sigmoid_calibration_0.[Proba_CLASS_2]) AS [Proba_CLASS_2] 
FROM sigmoid_calibration_0), 
[DT_node_lookup_1] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.7047536373138428) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_2 <= 0.7889590263366699) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_1] AS 
(SELECT [Values].nid AS nid, CAST([Values].[P_CLASS_0] AS FLOAT(53)) AS [P_CLASS_0], CAST([Values].[P_CLASS_1] AS FLOAT(53)) AS [P_CLASS_1], CAST([Values].[P_CLASS_2] AS FLOAT(53)) AS [P_CLASS_2], CAST([Values].[D] AS FLOAT(53)) AS [D], CAST([Values].[DP] AS FLOAT(53)) AS [DP] 
FROM (SELECT 1 AS nid, 1.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_0' AS [D], 1.0 AS [DP] UNION ALL SELECT 4 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 6 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 7 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 10 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 11 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 12 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].nid AS nid, [DT_node_data_1].[P_CLASS_0] AS [P_CLASS_0], [DT_node_data_1].[P_CLASS_1] AS [P_CLASS_1], [DT_node_data_1].[P_CLASS_2] AS [P_CLASS_2], [DT_node_data_1].[D] AS [D], [DT_node_data_1].[DP] AS [DP] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].nid), 
[Calibrated_Model_1] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_0], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_1], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_2], [DT_Output_1].[P_CLASS_0] AS [Proba_CLASS_0], [DT_Output_1].[P_CLASS_1] AS [Proba_CLASS_1], [DT_Output_1].[P_CLASS_2] AS [Proba_CLASS_2], CASE WHEN ([DT_Output_1].[P_CLASS_0] IS NULL OR [DT_Output_1].[P_CLASS_0] > 0.0) THEN log([DT_Output_1].[P_CLASS_0]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_0], CASE WHEN ([DT_Output_1].[P_CLASS_1] IS NULL OR [DT_Output_1].[P_CLASS_1] > 0.0) THEN log([DT_Output_1].[P_CLASS_1]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_1], CASE WHEN ([DT_Output_1].[P_CLASS_2] IS NULL OR [DT_Output_1].[P_CLASS_2] > 0.0) THEN log([DT_Output_1].[P_CLASS_2]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_1].[P_CLASS_0]) AS [ScoreOrProba_CLASS_0], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_1].[P_CLASS_1]) AS [ScoreOrProba_CLASS_1], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_1].[P_CLASS_2]) AS [ScoreOrProba_CLASS_2] 
FROM [DT_Output_1]), 
sigmoid_calibration_1 AS 
(SELECT [Calibrated_Model_1].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.393626322122635 * [Calibrated_Model_1].[ScoreOrProba_CLASS_0] + -3.091045517303994)) THEN -(5.393626322122635 * [Calibrated_Model_1].[ScoreOrProba_CLASS_0] + -3.091045517303994) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.393626322122635 * [Calibrated_Model_1].[ScoreOrProba_CLASS_0] + -3.091045517303994)) THEN -(5.393626322122635 * [Calibrated_Model_1].[ScoreOrProba_CLASS_0] + -3.091045517303994) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.442417342523719 * [Calibrated_Model_1].[ScoreOrProba_CLASS_1] + -3.0445224878196573)) THEN -(5.442417342523719 * [Calibrated_Model_1].[ScoreOrProba_CLASS_1] + -3.0445224878196573) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.442417342523719 * [Calibrated_Model_1].[ScoreOrProba_CLASS_1] + -3.0445224878196573)) THEN -(5.442417342523719 * [Calibrated_Model_1].[ScoreOrProba_CLASS_1] + -3.0445224878196573) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_1], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.480638259777759 * [Calibrated_Model_1].[ScoreOrProba_CLASS_2] + -2.995732594243071)) THEN -(5.480638259777759 * [Calibrated_Model_1].[ScoreOrProba_CLASS_2] + -2.995732594243071) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.480638259777759 * [Calibrated_Model_1].[ScoreOrProba_CLASS_2] + -2.995732594243071)) THEN -(5.480638259777759 * [Calibrated_Model_1].[ScoreOrProba_CLASS_2] + -2.995732594243071) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_2] 
FROM [Calibrated_Model_1]), 
[Normalized_Probas_1] AS 
(SELECT sigmoid_calibration_1.[KEY] AS [KEY], sigmoid_calibration_1.[Proba_CLASS_0] / (sigmoid_calibration_1.[Proba_CLASS_0] + sigmoid_calibration_1.[Proba_CLASS_1] + sigmoid_calibration_1.[Proba_CLASS_2]) AS [Proba_CLASS_0], sigmoid_calibration_1.[Proba_CLASS_1] / (sigmoid_calibration_1.[Proba_CLASS_0] + sigmoid_calibration_1.[Proba_CLASS_1] + sigmoid_calibration_1.[Proba_CLASS_2]) AS [Proba_CLASS_1], sigmoid_calibration_1.[Proba_CLASS_2] / (sigmoid_calibration_1.[Proba_CLASS_0] + sigmoid_calibration_1.[Proba_CLASS_1] + sigmoid_calibration_1.[Proba_CLASS_2]) AS [Proba_CLASS_2] 
FROM sigmoid_calibration_1), 
[DT_node_lookup_2] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.6734480857849121) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.6462678909301758) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_2 <= -1.0851964950561523) THEN 5 ELSE 6 END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.5400919914245605) THEN 8 ELSE 9 END END ELSE 10 END END AS node_id_2 
FROM ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_2] AS 
(SELECT [Values].nid AS nid, CAST([Values].[P_CLASS_0] AS FLOAT(53)) AS [P_CLASS_0], CAST([Values].[P_CLASS_1] AS FLOAT(53)) AS [P_CLASS_1], CAST([Values].[P_CLASS_2] AS FLOAT(53)) AS [P_CLASS_2], CAST([Values].[D] AS FLOAT(53)) AS [D], CAST([Values].[DP] AS FLOAT(53)) AS [DP] 
FROM (SELECT 1 AS nid, 1.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_0' AS [D], 1.0 AS [DP] UNION ALL SELECT 5 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 6 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 8 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 9 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 10 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].nid AS nid, [DT_node_data_2].[P_CLASS_0] AS [P_CLASS_0], [DT_node_data_2].[P_CLASS_1] AS [P_CLASS_1], [DT_node_data_2].[P_CLASS_2] AS [P_CLASS_2], [DT_node_data_2].[D] AS [D], [DT_node_data_2].[DP] AS [DP] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].nid), 
[Calibrated_Model_2] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_0], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_1], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_2], [DT_Output_2].[P_CLASS_0] AS [Proba_CLASS_0], [DT_Output_2].[P_CLASS_1] AS [Proba_CLASS_1], [DT_Output_2].[P_CLASS_2] AS [Proba_CLASS_2], CASE WHEN ([DT_Output_2].[P_CLASS_0] IS NULL OR [DT_Output_2].[P_CLASS_0] > 0.0) THEN log([DT_Output_2].[P_CLASS_0]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_0], CASE WHEN ([DT_Output_2].[P_CLASS_1] IS NULL OR [DT_Output_2].[P_CLASS_1] > 0.0) THEN log([DT_Output_2].[P_CLASS_1]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_1], CASE WHEN ([DT_Output_2].[P_CLASS_2] IS NULL OR [DT_Output_2].[P_CLASS_2] > 0.0) THEN log([DT_Output_2].[P_CLASS_2]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_2].[P_CLASS_0]) AS [ScoreOrProba_CLASS_0], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_2].[P_CLASS_1]) AS [ScoreOrProba_CLASS_1], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_2].[P_CLASS_2]) AS [ScoreOrProba_CLASS_2] 
FROM [DT_Output_2]), 
sigmoid_calibration_2 AS 
(SELECT [Calibrated_Model_2].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.393626322122635 * [Calibrated_Model_2].[ScoreOrProba_CLASS_0] + -3.091045517303994)) THEN -(5.393626322122635 * [Calibrated_Model_2].[ScoreOrProba_CLASS_0] + -3.091045517303994) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.393626322122635 * [Calibrated_Model_2].[ScoreOrProba_CLASS_0] + -3.091045517303994)) THEN -(5.393626322122635 * [Calibrated_Model_2].[ScoreOrProba_CLASS_0] + -3.091045517303994) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.346958263204309 * [Calibrated_Model_2].[ScoreOrProba_CLASS_1] + -1.949062502016408)) THEN -(4.346958263204309 * [Calibrated_Model_2].[ScoreOrProba_CLASS_1] + -1.949062502016408) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.346958263204309 * [Calibrated_Model_2].[ScoreOrProba_CLASS_1] + -1.949062502016408)) THEN -(4.346958263204309 * [Calibrated_Model_2].[ScoreOrProba_CLASS_1] + -1.949062502016408) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_1], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.310987825487246 * [Calibrated_Model_2].[ScoreOrProba_CLASS_2] + -2.995735836256492)) THEN -(4.310987825487246 * [Calibrated_Model_2].[ScoreOrProba_CLASS_2] + -2.995735836256492) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.310987825487246 * [Calibrated_Model_2].[ScoreOrProba_CLASS_2] + -2.995735836256492)) THEN -(4.310987825487246 * [Calibrated_Model_2].[ScoreOrProba_CLASS_2] + -2.995735836256492) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_2] 
FROM [Calibrated_Model_2]), 
[Normalized_Probas_2] AS 
(SELECT sigmoid_calibration_2.[KEY] AS [KEY], sigmoid_calibration_2.[Proba_CLASS_0] / (sigmoid_calibration_2.[Proba_CLASS_0] + sigmoid_calibration_2.[Proba_CLASS_1] + sigmoid_calibration_2.[Proba_CLASS_2]) AS [Proba_CLASS_0], sigmoid_calibration_2.[Proba_CLASS_1] / (sigmoid_calibration_2.[Proba_CLASS_0] + sigmoid_calibration_2.[Proba_CLASS_1] + sigmoid_calibration_2.[Proba_CLASS_2]) AS [Proba_CLASS_1], sigmoid_calibration_2.[Proba_CLASS_2] / (sigmoid_calibration_2.[Proba_CLASS_0] + sigmoid_calibration_2.[Proba_CLASS_1] + sigmoid_calibration_2.[Proba_CLASS_2]) AS [Proba_CLASS_2] 
FROM sigmoid_calibration_2), 
[DT_node_lookup_3] AS 
(SELECT [ADS_sca_2_OUT].[KEY] AS [KEY], CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= -0.5934344530105591) THEN 1 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.5877821445465088) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_5 <= 0.5400919914245605) THEN 4 ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= 0.1451735943555832) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS_sca_2_OUT].scaler_output_3 <= -1.115544319152832) THEN CASE WHEN ([ADS_sca_2_OUT].scaler_output_4 <= 0.6462678909301758) THEN 10 ELSE 11 END ELSE 12 END END END AS node_id_2 
FROM ##TMP_20180516130425_CODEGEN_AMKVSX_ADS_sca_2_OUT AS [ADS_sca_2_OUT]), 
[DT_node_data_3] AS 
(SELECT [Values].nid AS nid, CAST([Values].[P_CLASS_0] AS FLOAT(53)) AS [P_CLASS_0], CAST([Values].[P_CLASS_1] AS FLOAT(53)) AS [P_CLASS_1], CAST([Values].[P_CLASS_2] AS FLOAT(53)) AS [P_CLASS_2], CAST([Values].[D] AS FLOAT(53)) AS [D], CAST([Values].[DP] AS FLOAT(53)) AS [DP] 
FROM (SELECT 1 AS nid, 1.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_0' AS [D], 1.0 AS [DP] UNION ALL SELECT 4 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 6 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 7 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 10 AS nid, 0.0 AS [P_CLASS_0], 1.0 AS [P_CLASS_1], 0.0 AS [P_CLASS_2], 'CLASS_1' AS [D], 1.0 AS [DP] UNION ALL SELECT 11 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP] UNION ALL SELECT 12 AS nid, 0.0 AS [P_CLASS_0], 0.0 AS [P_CLASS_1], 1.0 AS [P_CLASS_2], 'CLASS_2' AS [D], 1.0 AS [DP]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].nid AS nid, [DT_node_data_3].[P_CLASS_0] AS [P_CLASS_0], [DT_node_data_3].[P_CLASS_1] AS [P_CLASS_1], [DT_node_data_3].[P_CLASS_2] AS [P_CLASS_2], [DT_node_data_3].[D] AS [D], [DT_node_data_3].[DP] AS [DP] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].nid), 
[Calibrated_Model_3] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_0], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_1], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_2], [DT_Output_3].[P_CLASS_0] AS [Proba_CLASS_0], [DT_Output_3].[P_CLASS_1] AS [Proba_CLASS_1], [DT_Output_3].[P_CLASS_2] AS [Proba_CLASS_2], CASE WHEN ([DT_Output_3].[P_CLASS_0] IS NULL OR [DT_Output_3].[P_CLASS_0] > 0.0) THEN log([DT_Output_3].[P_CLASS_0]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_0], CASE WHEN ([DT_Output_3].[P_CLASS_1] IS NULL OR [DT_Output_3].[P_CLASS_1] > 0.0) THEN log([DT_Output_3].[P_CLASS_1]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_1], CASE WHEN ([DT_Output_3].[P_CLASS_2] IS NULL OR [DT_Output_3].[P_CLASS_2] > 0.0) THEN log([DT_Output_3].[P_CLASS_2]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_3].[P_CLASS_0]) AS [ScoreOrProba_CLASS_0], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_3].[P_CLASS_1]) AS [ScoreOrProba_CLASS_1], coalesce(CAST(NULL AS FLOAT(53)), [DT_Output_3].[P_CLASS_2]) AS [ScoreOrProba_CLASS_2] 
FROM [DT_Output_3]), 
sigmoid_calibration_3 AS 
(SELECT [Calibrated_Model_3].[KEY] AS [KEY], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(5.3471066241328655 * [Calibrated_Model_3].[ScoreOrProba_CLASS_0] + -3.0445258104151054)) THEN -(5.3471066241328655 * [Calibrated_Model_3].[ScoreOrProba_CLASS_0] + -3.0445258104151054) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(5.3471066241328655 * [Calibrated_Model_3].[ScoreOrProba_CLASS_0] + -3.0445258104151054)) THEN -(5.3471066241328655 * [Calibrated_Model_3].[ScoreOrProba_CLASS_0] + -3.0445258104151054) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_0], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.295450701778823 * [Calibrated_Model_3].[ScoreOrProba_CLASS_1] + -1.8975549276218453)) THEN -(4.295450701778823 * [Calibrated_Model_3].[ScoreOrProba_CLASS_1] + -1.8975549276218453) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.295450701778823 * [Calibrated_Model_3].[ScoreOrProba_CLASS_1] + -1.8975549276218453)) THEN -(4.295450701778823 * [Calibrated_Model_3].[ScoreOrProba_CLASS_1] + -1.8975549276218453) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_1], 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(4.214379795150796 * [Calibrated_Model_3].[ScoreOrProba_CLASS_2] + -2.99573366824266)) THEN -(4.214379795150796 * [Calibrated_Model_3].[ScoreOrProba_CLASS_2] + -2.99573366824266) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(4.214379795150796 * [Calibrated_Model_3].[ScoreOrProba_CLASS_2] + -2.99573366824266)) THEN -(4.214379795150796 * [Calibrated_Model_3].[ScoreOrProba_CLASS_2] + -2.99573366824266) ELSE -100.0 END ELSE 100.0 END)) AS [Proba_CLASS_2] 
FROM [Calibrated_Model_3]), 
[Normalized_Probas_3] AS 
(SELECT sigmoid_calibration_3.[KEY] AS [KEY], sigmoid_calibration_3.[Proba_CLASS_0] / (sigmoid_calibration_3.[Proba_CLASS_0] + sigmoid_calibration_3.[Proba_CLASS_1] + sigmoid_calibration_3.[Proba_CLASS_2]) AS [Proba_CLASS_0], sigmoid_calibration_3.[Proba_CLASS_1] / (sigmoid_calibration_3.[Proba_CLASS_0] + sigmoid_calibration_3.[Proba_CLASS_1] + sigmoid_calibration_3.[Proba_CLASS_2]) AS [Proba_CLASS_1], sigmoid_calibration_3.[Proba_CLASS_2] / (sigmoid_calibration_3.[Proba_CLASS_0] + sigmoid_calibration_3.[Proba_CLASS_1] + sigmoid_calibration_3.[Proba_CLASS_2]) AS [Proba_CLASS_2] 
FROM sigmoid_calibration_3)
 INSERT INTO ##TMP_20180516130425_CODEGEN_3Y1C4C_CalProb_B0 ([KEY], [Proba_CLASS_0], [Proba_CLASS_1], [Proba_CLASS_2]) SELECT [CalProb_B0].[KEY], [CalProb_B0].[Proba_CLASS_0], [CalProb_B0].[Proba_CLASS_1], [CalProb_B0].[Proba_CLASS_2] 
FROM (SELECT [CalProb_esu_0].[KEY] AS [KEY], [CalProb_esu_0].[Proba_CLASS_0] AS [Proba_CLASS_0], [CalProb_esu_0].[Proba_CLASS_1] AS [Proba_CLASS_1], [CalProb_esu_0].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM (SELECT [Normalized_Probas].[KEY] AS [KEY], [Normalized_Probas].[Proba_CLASS_0] AS [Proba_CLASS_0], [Normalized_Probas].[Proba_CLASS_1] AS [Proba_CLASS_1], [Normalized_Probas].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM [Normalized_Probas] UNION ALL SELECT [Normalized_Probas_1].[KEY] AS [KEY], [Normalized_Probas_1].[Proba_CLASS_0] AS [Proba_CLASS_0], [Normalized_Probas_1].[Proba_CLASS_1] AS [Proba_CLASS_1], [Normalized_Probas_1].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM [Normalized_Probas_1] UNION ALL SELECT [Normalized_Probas_2].[KEY] AS [KEY], [Normalized_Probas_2].[Proba_CLASS_0] AS [Proba_CLASS_0], [Normalized_Probas_2].[Proba_CLASS_1] AS [Proba_CLASS_1], [Normalized_Probas_2].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM [Normalized_Probas_2] UNION ALL SELECT [Normalized_Probas_3].[KEY] AS [KEY], [Normalized_Probas_3].[Proba_CLASS_0] AS [Proba_CLASS_0], [Normalized_Probas_3].[Proba_CLASS_1] AS [Proba_CLASS_1], [Normalized_Probas_3].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM [Normalized_Probas_3]) AS [CalProb_esu_0]) AS [CalProb_B0]

-- Code For temporary table ##TMP_20180516130425_CODEGEN_ER192N_CalProb_avg part 1. Create 


CREATE TABLE ##TMP_20180516130425_CODEGEN_ER192N_CalProb_avg (
	[KEY] BIGINT NULL, 
	[Proba_CLASS_0] FLOAT(53) NULL, 
	[Proba_CLASS_1] FLOAT(53) NULL, 
	[Proba_CLASS_2] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516130425_CODEGEN_ER192N_CalProb_avg part 2. Populate

WITH [CalProb_Union] AS 
(SELECT [CalProb_EnsembleUnion].[KEY] AS [KEY], [CalProb_EnsembleUnion].[Proba_CLASS_0] AS [Proba_CLASS_0], [CalProb_EnsembleUnion].[Proba_CLASS_1] AS [Proba_CLASS_1], [CalProb_EnsembleUnion].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM (SELECT [CalProb_B0].[KEY] AS [KEY], [CalProb_B0].[Proba_CLASS_0] AS [Proba_CLASS_0], [CalProb_B0].[Proba_CLASS_1] AS [Proba_CLASS_1], [CalProb_B0].[Proba_CLASS_2] AS [Proba_CLASS_2] 
FROM ##TMP_20180516130425_CODEGEN_3Y1C4C_CalProb_B0 AS [CalProb_B0]) AS [CalProb_EnsembleUnion])
 INSERT INTO ##TMP_20180516130425_CODEGEN_ER192N_CalProb_avg ([KEY], [Proba_CLASS_0], [Proba_CLASS_1], [Proba_CLASS_2]) SELECT [CalProb_avg].[KEY], [CalProb_avg].[Proba_CLASS_0], [CalProb_avg].[Proba_CLASS_1], [CalProb_avg].[Proba_CLASS_2] 
FROM (SELECT [T].[KEY] AS [KEY], CAST([T].[Proba_CLASS_0] AS FLOAT(53)) AS [Proba_CLASS_0], CAST([T].[Proba_CLASS_1] AS FLOAT(53)) AS [Proba_CLASS_1], CAST([T].[Proba_CLASS_2] AS FLOAT(53)) AS [Proba_CLASS_2] 
FROM (SELECT [CalProb_Union].[KEY] AS [KEY], avg(CAST([CalProb_Union].[Proba_CLASS_0] AS FLOAT(53))) AS [Proba_CLASS_0], avg(CAST([CalProb_Union].[Proba_CLASS_1] AS FLOAT(53))) AS [Proba_CLASS_1], avg(CAST([CalProb_Union].[Proba_CLASS_2] AS FLOAT(53))) AS [Proba_CLASS_2] 
FROM [CalProb_Union] GROUP BY [CalProb_Union].[KEY]) AS [T]) AS [CalProb_avg]

-- Model deployment code

WITH orig_cte AS 
(SELECT [CalProb_avg].[KEY] AS [KEY], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_0], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_1], CAST(NULL AS FLOAT(53)) AS [Score_CLASS_2], [CalProb_avg].[Proba_CLASS_0] AS [Proba_CLASS_0], [CalProb_avg].[Proba_CLASS_1] AS [Proba_CLASS_1], [CalProb_avg].[Proba_CLASS_2] AS [Proba_CLASS_2], CAST(NULL AS FLOAT(53)) AS [LogProba_CLASS_0], CAST(NULL AS FLOAT(53)) AS [LogProba_CLASS_1], CAST(NULL AS FLOAT(53)) AS [LogProba_CLASS_2], CAST(NULL AS BIGINT) AS [Decision], CAST(NULL AS FLOAT(53)) AS [DecisionProba] 
FROM ##TMP_20180516130425_CODEGEN_ER192N_CalProb_avg AS [CalProb_avg]), 
score_class_union AS 
(SELECT scu.[KEY_u] AS [KEY_u], scu.class AS class, scu.[LogProba] AS [LogProba], scu.[Proba] AS [Proba], scu.[Score] AS [Score] 
FROM (SELECT orig_cte.[KEY] AS [KEY_u], 'CLASS_0' AS class, orig_cte.[LogProba_CLASS_0] AS [LogProba], orig_cte.[Proba_CLASS_0] AS [Proba], orig_cte.[Score_CLASS_0] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 'CLASS_1' AS class, orig_cte.[LogProba_CLASS_1] AS [LogProba], orig_cte.[Proba_CLASS_1] AS [Proba], orig_cte.[Score_CLASS_1] AS [Score] 
FROM orig_cte UNION ALL SELECT orig_cte.[KEY] AS [KEY_u], 'CLASS_2' AS class, orig_cte.[LogProba_CLASS_2] AS [LogProba], orig_cte.[Proba_CLASS_2] AS [Proba], orig_cte.[Score_CLASS_2] AS [Score] 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.[KEY] AS [KEY], orig_cte.[Score_CLASS_0] AS [Score_CLASS_0], orig_cte.[Score_CLASS_1] AS [Score_CLASS_1], orig_cte.[Score_CLASS_2] AS [Score_CLASS_2], orig_cte.[Proba_CLASS_0] AS [Proba_CLASS_0], orig_cte.[Proba_CLASS_1] AS [Proba_CLASS_1], orig_cte.[Proba_CLASS_2] AS [Proba_CLASS_2], orig_cte.[LogProba_CLASS_0] AS [LogProba_CLASS_0], orig_cte.[LogProba_CLASS_1] AS [LogProba_CLASS_1], orig_cte.[LogProba_CLASS_2] AS [LogProba_CLASS_2], orig_cte.[Decision] AS [Decision], orig_cte.[DecisionProba] AS [DecisionProba], max_select.[KEY_m] AS [KEY_m], max_select.[max_Proba] AS [max_Proba] 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.[KEY_u] AS [KEY_m], max(score_class_union.[Proba]) AS [max_Proba] 
FROM score_class_union GROUP BY score_class_union.[KEY_u]) AS max_select ON orig_cte.[KEY] = max_select.[KEY_m]), 
union_with_max AS 
(SELECT score_class_union.[KEY_u] AS [KEY_u], score_class_union.class AS class, score_class_union.[LogProba] AS [LogProba], score_class_union.[Proba] AS [Proba], score_class_union.[Score] AS [Score], score_max.[KEY] AS [KEY], score_max.[Score_CLASS_0] AS [Score_CLASS_0], score_max.[Score_CLASS_1] AS [Score_CLASS_1], score_max.[Score_CLASS_2] AS [Score_CLASS_2], score_max.[Proba_CLASS_0] AS [Proba_CLASS_0], score_max.[Proba_CLASS_1] AS [Proba_CLASS_1], score_max.[Proba_CLASS_2] AS [Proba_CLASS_2], score_max.[LogProba_CLASS_0] AS [LogProba_CLASS_0], score_max.[LogProba_CLASS_1] AS [LogProba_CLASS_1], score_max.[LogProba_CLASS_2] AS [LogProba_CLASS_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba] 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.[KEY_u] = score_max.[KEY]), 
arg_max_cte AS 
(SELECT score_max.[KEY] AS [KEY], score_max.[Score_CLASS_0] AS [Score_CLASS_0], score_max.[Score_CLASS_1] AS [Score_CLASS_1], score_max.[Score_CLASS_2] AS [Score_CLASS_2], score_max.[Proba_CLASS_0] AS [Proba_CLASS_0], score_max.[Proba_CLASS_1] AS [Proba_CLASS_1], score_max.[Proba_CLASS_2] AS [Proba_CLASS_2], score_max.[LogProba_CLASS_0] AS [LogProba_CLASS_0], score_max.[LogProba_CLASS_1] AS [LogProba_CLASS_1], score_max.[LogProba_CLASS_2] AS [LogProba_CLASS_2], score_max.[Decision] AS [Decision], score_max.[DecisionProba] AS [DecisionProba], score_max.[KEY_m] AS [KEY_m], score_max.[max_Proba] AS [max_Proba], [arg_max_t_Proba].[KEY_Proba] AS [KEY_Proba], [arg_max_t_Proba].[arg_max_Proba] AS [arg_max_Proba] 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.[KEY] AS [KEY_Proba], min(union_with_max.class) AS [arg_max_Proba] 
FROM union_with_max 
WHERE union_with_max.[Proba] >= union_with_max.[max_Proba] GROUP BY union_with_max.[KEY]) AS [arg_max_t_Proba] ON score_max.[KEY] = [arg_max_t_Proba].[KEY_Proba])
 SELECT arg_max_cte.[KEY] AS [KEY], arg_max_cte.[Score_CLASS_0] AS [Score_CLASS_0], arg_max_cte.[Score_CLASS_1] AS [Score_CLASS_1], arg_max_cte.[Score_CLASS_2] AS [Score_CLASS_2], arg_max_cte.[Proba_CLASS_0] AS [Proba_CLASS_0], arg_max_cte.[Proba_CLASS_1] AS [Proba_CLASS_1], arg_max_cte.[Proba_CLASS_2] AS [Proba_CLASS_2], CASE WHEN (arg_max_cte.[Proba_CLASS_0] IS NULL OR arg_max_cte.[Proba_CLASS_0] > 0.0) THEN log(arg_max_cte.[Proba_CLASS_0]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_0], CASE WHEN (arg_max_cte.[Proba_CLASS_1] IS NULL OR arg_max_cte.[Proba_CLASS_1] > 0.0) THEN log(arg_max_cte.[Proba_CLASS_1]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_1], CASE WHEN (arg_max_cte.[Proba_CLASS_2] IS NULL OR arg_max_cte.[Proba_CLASS_2] > 0.0) THEN log(arg_max_cte.[Proba_CLASS_2]) ELSE -1.79769313486231e+308 END AS [LogProba_CLASS_2], arg_max_cte.[arg_max_Proba] AS [Decision], arg_max_cte.[max_Proba] AS [DecisionProba] 
FROM arg_max_cte