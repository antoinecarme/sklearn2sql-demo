-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GradientBoostingRegressor
-- Dataset : RandomReg_10
-- Database : mssql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table ##TMP_20180516113650_CODEGEN_JCA4TI_GB_B0 part 1. Create 


CREATE TABLE ##TMP_20180516113650_CODEGEN_JCA4TI_GB_B0 (
	[KEY] BIGINT NULL, 
	[Estimator] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516113650_CODEGEN_JCA4TI_GB_B0 part 2. Populate

WITH [DT_node_lookup] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.48648887872695923) THEN CASE WHEN ([ADS].[Feature_5] <= -0.6670668125152588) THEN CASE WHEN ([ADS].[Feature_5] <= -0.8804326057434082) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.10979260504245758) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= -1.1975512504577637) THEN CASE WHEN ([ADS].[Feature_5] <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= -0.3104289174079895) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -208.7780451708557 AS [E] UNION ALL SELECT 4 AS nid, -437.3409386784606 AS [E] UNION ALL SELECT 6 AS nid, -113.60421644601387 AS [E] UNION ALL SELECT 7 AS nid, 122.45884789399581 AS [E] UNION ALL SELECT 10 AS nid, -309.90060671962567 AS [E] UNION ALL SELECT 11 AS nid, -32.15578897857857 AS [E] UNION ALL SELECT 13 AS nid, 61.439924831450156 AS [E] UNION ALL SELECT 14 AS nid, 231.09071528701512 AS [E]) AS [Values]), 
[DT_Output] AS 
(SELECT [DT_node_lookup].[KEY] AS [KEY], [DT_node_lookup].node_id_2 AS node_id_2, [DT_node_data].nid AS nid, [DT_node_data].[E] AS [E] 
FROM [DT_node_lookup] LEFT OUTER JOIN [DT_node_data] ON [DT_node_lookup].node_id_2 = [DT_node_data].nid), 
[GB_Model_0_0] AS 
(SELECT [DT_Output].[KEY] AS [KEY], [DT_Output].[E] AS [Estimator] 
FROM [DT_Output]), 
[DT_node_lookup_1] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.48648887872695923) THEN CASE WHEN ([ADS].[Feature_7] <= 0.48319584131240845) THEN CASE WHEN ([ADS].[Feature_1] <= -1.1535027027130127) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1374099999666214) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= -1.1975512504577637) THEN CASE WHEN ([ADS].[Feature_5] <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= -0.3104289174079895) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_1] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -326.5091064084041 AS [E] UNION ALL SELECT 4 AS nid, -98.85523416498395 AS [E] UNION ALL SELECT 6 AS nid, -87.44714659587862 AS [E] UNION ALL SELECT 7 AS nid, 173.77310999517758 AS [E] UNION ALL SELECT 10 AS nid, -278.9105460476631 AS [E] UNION ALL SELECT 11 AS nid, -28.94021008072071 AS [E] UNION ALL SELECT 13 AS nid, 55.29593234830514 AS [E] UNION ALL SELECT 14 AS nid, 207.98164375831354 AS [E]) AS [Values]), 
[DT_Output_1] AS 
(SELECT [DT_node_lookup_1].[KEY] AS [KEY], [DT_node_lookup_1].node_id_2 AS node_id_2, [DT_node_data_1].nid AS nid, [DT_node_data_1].[E] AS [E] 
FROM [DT_node_lookup_1] LEFT OUTER JOIN [DT_node_data_1] ON [DT_node_lookup_1].node_id_2 = [DT_node_data_1].nid), 
[GB_Model_1_0] AS 
(SELECT [DT_Output_1].[KEY] AS [KEY], [DT_Output_1].[E] AS [Estimator] 
FROM [DT_Output_1]), 
[DT_node_lookup_2] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.48648887872695923) THEN CASE WHEN ([ADS].[Feature_5] <= -0.6670668125152588) THEN CASE WHEN ([ADS].[Feature_5] <= -0.8804326057434082) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.18419554829597473) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= -1.1975512504577637) THEN CASE WHEN ([ADS].[Feature_5] <= 0.10777395963668823) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_1] <= -0.19500726461410522) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_2] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -176.11170265107646 AS [E] UNION ALL SELECT 4 AS nid, -368.5443965778881 AS [E] UNION ALL SELECT 6 AS nid, -96.0390013850018 AS [E] UNION ALL SELECT 7 AS nid, 99.38716020637538 AS [E] UNION ALL SELECT 10 AS nid, -251.0194914428968 AS [E] UNION ALL SELECT 11 AS nid, -26.04618907264864 AS [E] UNION ALL SELECT 13 AS nid, 75.1277990616216 AS [E] UNION ALL SELECT 14 AS nid, 204.70712521807272 AS [E]) AS [Values]), 
[DT_Output_2] AS 
(SELECT [DT_node_lookup_2].[KEY] AS [KEY], [DT_node_lookup_2].node_id_2 AS node_id_2, [DT_node_data_2].nid AS nid, [DT_node_data_2].[E] AS [E] 
FROM [DT_node_lookup_2] LEFT OUTER JOIN [DT_node_data_2] ON [DT_node_lookup_2].node_id_2 = [DT_node_data_2].nid), 
[GB_Model_2_0] AS 
(SELECT [DT_Output_2].[KEY] AS [KEY], [DT_Output_2].[E] AS [Estimator] 
FROM [DT_Output_2]), 
[DT_node_lookup_3] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= 1.377770185470581) THEN CASE WHEN ([ADS].[Feature_5] <= -0.6693825721740723) THEN CASE WHEN ([ADS].[Feature_1] <= -0.07982142269611359) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1578926146030426) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= -1.5720696449279785) THEN 9 ELSE CASE WHEN ([ADS].[Feature_8] <= 1.8881685733795166) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_3] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -219.68151785911093 AS [E] UNION ALL SELECT 4 AS nid, 1.5378845252896032 AS [E] UNION ALL SELECT 6 AS nid, -63.12781904445371 AS [E] UNION ALL SELECT 7 AS nid, 105.11332453399308 AS [E] UNION ALL SELECT 9 AS nid, 50.921431639148395 AS [E] UNION ALL SELECT 11 AS nid, 228.02920133836216 AS [E] UNION ALL SELECT 12 AS nid, 332.2565374483745 AS [E]) AS [Values]), 
[DT_Output_3] AS 
(SELECT [DT_node_lookup_3].[KEY] AS [KEY], [DT_node_lookup_3].node_id_2 AS node_id_2, [DT_node_data_3].nid AS nid, [DT_node_data_3].[E] AS [E] 
FROM [DT_node_lookup_3] LEFT OUTER JOIN [DT_node_data_3] ON [DT_node_lookup_3].node_id_2 = [DT_node_data_3].nid), 
[GB_Model_3_0] AS 
(SELECT [DT_Output_3].[KEY] AS [KEY], [DT_Output_3].[E] AS [Estimator] 
FROM [DT_Output_3]), 
[DT_node_lookup_4] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.8179076910018921) THEN CASE WHEN ([ADS].[Feature_5] <= -0.519959568977356) THEN CASE WHEN ([ADS].[Feature_1] <= -0.931333601474762) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= 0.6698598861694336) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1578926146030426) THEN CASE WHEN ([ADS].[Feature_1] <= -0.07556744664907455) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.3107970952987671) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_4] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -252.20320059466073 AS [E] UNION ALL SELECT 4 AS nid, -121.33851568899895 AS [E] UNION ALL SELECT 6 AS nid, -48.95960236182337 AS [E] UNION ALL SELECT 7 AS nid, 137.19688391460684 AS [E] UNION ALL SELECT 10 AS nid, -37.606554662855785 AS [E] UNION ALL SELECT 11 AS nid, 125.61672398567936 AS [E] UNION ALL SELECT 13 AS nid, 137.2470332453415 AS [E] UNION ALL SELECT 14 AS nid, 245.25440849319094 AS [E]) AS [Values]), 
[DT_Output_4] AS 
(SELECT [DT_node_lookup_4].[KEY] AS [KEY], [DT_node_lookup_4].node_id_2 AS node_id_2, [DT_node_data_4].nid AS nid, [DT_node_data_4].[E] AS [E] 
FROM [DT_node_lookup_4] LEFT OUTER JOIN [DT_node_data_4] ON [DT_node_lookup_4].node_id_2 = [DT_node_data_4].nid), 
[GB_Model_4_0] AS 
(SELECT [DT_Output_4].[KEY] AS [KEY], [DT_Output_4].[E] AS [Estimator] 
FROM [DT_Output_4]), 
[DT_node_lookup_5] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= 1.377770185470581) THEN CASE WHEN ([ADS].[Feature_1] <= -0.2953660190105438) THEN CASE WHEN ([ADS].[Feature_5] <= -0.5290045142173767) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_2] <= 0.4809132218360901) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.3942183554172516) THEN CASE WHEN ([ADS].[Feature_2] <= -1.2252161502838135) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_9] <= -1.5512021780014038) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_5] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -185.9188938422119 AS [E] UNION ALL SELECT 4 AS nid, -36.723747937807836 AS [E] UNION ALL SELECT 6 AS nid, -15.39934960835867 AS [E] UNION ALL SELECT 7 AS nid, 144.6291018939822 AS [E] UNION ALL SELECT 10 AS nid, 141.14763754957812 AS [E] UNION ALL SELECT 11 AS nid, 50.72524871141589 AS [E] UNION ALL SELECT 13 AS nid, 312.1140204097185 AS [E] UNION ALL SELECT 14 AS nid, 212.21841759685003 AS [E]) AS [Values]), 
[DT_Output_5] AS 
(SELECT [DT_node_lookup_5].[KEY] AS [KEY], [DT_node_lookup_5].node_id_2 AS node_id_2, [DT_node_data_5].nid AS nid, [DT_node_data_5].[E] AS [E] 
FROM [DT_node_lookup_5] LEFT OUTER JOIN [DT_node_data_5] ON [DT_node_lookup_5].node_id_2 = [DT_node_data_5].nid), 
[GB_Model_5_0] AS 
(SELECT [DT_Output_5].[KEY] AS [KEY], [DT_Output_5].[E] AS [Estimator] 
FROM [DT_Output_5]), 
[DT_node_lookup_6] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= -0.3908981680870056) THEN CASE WHEN ([ADS].[Feature_3] <= -1.043372392654419) THEN CASE WHEN ([ADS].[Feature_2] <= 0.43925851583480835) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= -0.19038131833076477) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= -0.5763004422187805) THEN CASE WHEN ([ADS].[Feature_2] <= 0.7259149551391602) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.3419182002544403) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_6] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -231.3428255443808 AS [E] UNION ALL SELECT 4 AS nid, -137.20816742292942 AS [E] UNION ALL SELECT 6 AS nid, -119.32161195024396 AS [E] UNION ALL SELECT 7 AS nid, -15.759752657500488 AS [E] UNION ALL SELECT 10 AS nid, -119.82952352424819 AS [E] UNION ALL SELECT 11 AS nid, 63.4853201369002 AS [E] UNION ALL SELECT 13 AS nid, -16.828482683273812 AS [E] UNION ALL SELECT 14 AS nid, 145.22505636206762 AS [E]) AS [Values]), 
[DT_Output_6] AS 
(SELECT [DT_node_lookup_6].[KEY] AS [KEY], [DT_node_lookup_6].node_id_2 AS node_id_2, [DT_node_data_6].nid AS nid, [DT_node_data_6].[E] AS [E] 
FROM [DT_node_lookup_6] LEFT OUTER JOIN [DT_node_data_6] ON [DT_node_lookup_6].node_id_2 = [DT_node_data_6].nid), 
[GB_Model_6_0] AS 
(SELECT [DT_Output_6].[KEY] AS [KEY], [DT_Output_6].[E] AS [Estimator] 
FROM [DT_Output_6]), 
[DT_node_lookup_7] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= -0.3908981680870056) THEN CASE WHEN ([ADS].[Feature_3] <= -1.043372392654419) THEN CASE WHEN ([ADS].[Feature_2] <= 0.4041166305541992) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= -0.19038131833076477) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_4] <= -1.116929292678833) THEN CASE WHEN ([ADS].[Feature_8] <= 0.4848606586456299) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.3419182002544403) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_7] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -216.47369625379196 AS [E] UNION ALL SELECT 4 AS nid, -149.3176403075912 AS [E] UNION ALL SELECT 6 AS nid, -107.38945075521956 AS [E] UNION ALL SELECT 7 AS nid, -14.183777391750445 AS [E] UNION ALL SELECT 10 AS nid, -201.38345810104735 AS [E] UNION ALL SELECT 11 AS nid, -39.495759263462226 AS [E] UNION ALL SELECT 13 AS nid, -25.622143688906046 AS [E] UNION ALL SELECT 14 AS nid, 105.45885917644819 AS [E]) AS [Values]), 
[DT_Output_7] AS 
(SELECT [DT_node_lookup_7].[KEY] AS [KEY], [DT_node_lookup_7].node_id_2 AS node_id_2, [DT_node_data_7].nid AS nid, [DT_node_data_7].[E] AS [E] 
FROM [DT_node_lookup_7] LEFT OUTER JOIN [DT_node_data_7] ON [DT_node_lookup_7].node_id_2 = [DT_node_data_7].nid), 
[GB_Model_7_0] AS 
(SELECT [DT_Output_7].[KEY] AS [KEY], [DT_Output_7].[E] AS [Estimator] 
FROM [DT_Output_7]), 
[DT_node_lookup_8] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= 1.377770185470581) THEN CASE WHEN ([ADS].[Feature_2] <= 1.10337233543396) THEN CASE WHEN ([ADS].[Feature_1] <= -0.10812132060527802) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= -0.22430559992790222) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_6] <= -1.2776120901107788) THEN 9 ELSE CASE WHEN ([ADS].[Feature_8] <= 1.8881685733795166) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_8] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -80.37727898797863 AS [E] UNION ALL SELECT 4 AS nid, 19.67833565380183 AS [E] UNION ALL SELECT 6 AS nid, 47.48681743313715 AS [E] UNION ALL SELECT 7 AS nid, 148.22745338219823 AS [E] UNION ALL SELECT 9 AS nid, 49.89778647749229 AS [E] UNION ALL SELECT 11 AS nid, 153.53608940557658 AS [E] UNION ALL SELECT 12 AS nid, 228.62330562896713 AS [E]) AS [Values]), 
[DT_Output_8] AS 
(SELECT [DT_node_lookup_8].[KEY] AS [KEY], [DT_node_lookup_8].node_id_2 AS node_id_2, [DT_node_data_8].nid AS nid, [DT_node_data_8].[E] AS [E] 
FROM [DT_node_lookup_8] LEFT OUTER JOIN [DT_node_data_8] ON [DT_node_lookup_8].node_id_2 = [DT_node_data_8].nid), 
[GB_Model_8_0] AS 
(SELECT [DT_Output_8].[KEY] AS [KEY], [DT_Output_8].[E] AS [Estimator] 
FROM [DT_Output_8]), 
[DT_node_lookup_9] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= 1.377770185470581) THEN CASE WHEN ([ADS].[Feature_5] <= -0.6693825721740723) THEN CASE WHEN ([ADS].[Feature_5] <= -0.8804326057434082) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1578926146030426) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= -1.5720696449279785) THEN 9 ELSE CASE WHEN ([ADS].[Feature_1] <= 0.3258654773235321) THEN 11 ELSE 12 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_9] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -73.44849390585631 AS [E] UNION ALL SELECT 4 AS nid, -203.34660361054483 AS [E] UNION ALL SELECT 6 AS nid, -41.48806981131387 AS [E] UNION ALL SELECT 7 AS nid, 67.6964481257827 AS [E] UNION ALL SELECT 9 AS nid, 44.908007829743056 AS [E] UNION ALL SELECT 11 AS nid, 185.20439923785938 AS [E] UNION ALL SELECT 12 AS nid, 120.53891850193266 AS [E]) AS [Values]), 
[DT_Output_9] AS 
(SELECT [DT_node_lookup_9].[KEY] AS [KEY], [DT_node_lookup_9].node_id_2 AS node_id_2, [DT_node_data_9].nid AS nid, [DT_node_data_9].[E] AS [E] 
FROM [DT_node_lookup_9] LEFT OUTER JOIN [DT_node_data_9] ON [DT_node_lookup_9].node_id_2 = [DT_node_data_9].nid), 
[GB_Model_9_0] AS 
(SELECT [DT_Output_9].[KEY] AS [KEY], [DT_Output_9].[E] AS [Estimator] 
FROM [DT_Output_9])
 INSERT INTO ##TMP_20180516113650_CODEGEN_JCA4TI_GB_B0 ([KEY], [Estimator]) SELECT [GB_B0].[KEY], [GB_B0].[Estimator] 
FROM (SELECT [GB_esu_0].[KEY] AS [KEY], [GB_esu_0].[Estimator] AS [Estimator] 
FROM (SELECT [GB_Model_0_0].[KEY] AS [KEY], [GB_Model_0_0].[Estimator] AS [Estimator] 
FROM [GB_Model_0_0] UNION ALL SELECT [GB_Model_1_0].[KEY] AS [KEY], [GB_Model_1_0].[Estimator] AS [Estimator] 
FROM [GB_Model_1_0] UNION ALL SELECT [GB_Model_2_0].[KEY] AS [KEY], [GB_Model_2_0].[Estimator] AS [Estimator] 
FROM [GB_Model_2_0] UNION ALL SELECT [GB_Model_3_0].[KEY] AS [KEY], [GB_Model_3_0].[Estimator] AS [Estimator] 
FROM [GB_Model_3_0] UNION ALL SELECT [GB_Model_4_0].[KEY] AS [KEY], [GB_Model_4_0].[Estimator] AS [Estimator] 
FROM [GB_Model_4_0] UNION ALL SELECT [GB_Model_5_0].[KEY] AS [KEY], [GB_Model_5_0].[Estimator] AS [Estimator] 
FROM [GB_Model_5_0] UNION ALL SELECT [GB_Model_6_0].[KEY] AS [KEY], [GB_Model_6_0].[Estimator] AS [Estimator] 
FROM [GB_Model_6_0] UNION ALL SELECT [GB_Model_7_0].[KEY] AS [KEY], [GB_Model_7_0].[Estimator] AS [Estimator] 
FROM [GB_Model_7_0] UNION ALL SELECT [GB_Model_8_0].[KEY] AS [KEY], [GB_Model_8_0].[Estimator] AS [Estimator] 
FROM [GB_Model_8_0] UNION ALL SELECT [GB_Model_9_0].[KEY] AS [KEY], [GB_Model_9_0].[Estimator] AS [Estimator] 
FROM [GB_Model_9_0]) AS [GB_esu_0]) AS [GB_B0]

-- Code For temporary table ##TMP_20180516113650_CODEGEN_KR1M9J_GB_B1 part 1. Create 


CREATE TABLE ##TMP_20180516113650_CODEGEN_KR1M9J_GB_B1 (
	[KEY] BIGINT NULL, 
	[Estimator] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516113650_CODEGEN_KR1M9J_GB_B1 part 2. Populate

WITH [DT_node_lookup_10] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.48648887872695923) THEN CASE WHEN ([ADS].[Feature_7] <= 0.12788641452789307) THEN CASE WHEN ([ADS].[Feature_1] <= 0.21956637501716614) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 0.609578013420105) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= -0.5779649615287781) THEN CASE WHEN ([ADS].[Feature_4] <= -0.059223100543022156) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 2.4845056533813477) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_10] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -118.29201989231404 AS [E] UNION ALL SELECT 4 AS nid, -25.077426497521834 AS [E] UNION ALL SELECT 6 AS nid, -30.264161198717826 AS [E] UNION ALL SELECT 7 AS nid, 86.31775180053027 AS [E] UNION ALL SELECT 10 AS nid, -66.09975993050688 AS [E] UNION ALL SELECT 11 AS nid, 62.45645261241293 AS [E] UNION ALL SELECT 13 AS nid, 83.88369798046719 AS [E] UNION ALL SELECT 14 AS nid, 316.42361392144784 AS [E]) AS [Values]), 
[DT_Output_10] AS 
(SELECT [DT_node_lookup_10].[KEY] AS [KEY], [DT_node_lookup_10].node_id_2 AS node_id_2, [DT_node_data_10].nid AS nid, [DT_node_data_10].[E] AS [E] 
FROM [DT_node_lookup_10] LEFT OUTER JOIN [DT_node_data_10] ON [DT_node_lookup_10].node_id_2 = [DT_node_data_10].nid), 
[GB_Model_10_0] AS 
(SELECT [DT_Output_10].[KEY] AS [KEY], [DT_Output_10].[E] AS [Estimator] 
FROM [DT_Output_10]), 
[DT_node_lookup_11] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_8] <= -0.3908981680870056) THEN CASE WHEN ([ADS].[Feature_3] <= -1.043372392654419) THEN CASE WHEN ([ADS].[Feature_6] <= -0.34999316930770874) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 0.26793915033340454) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_1] <= -0.5763004422187805) THEN CASE WHEN ([ADS].[Feature_8] <= 1.349555253982544) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_2] <= -0.3419182002544403) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_11] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -136.61832829293897 AS [E] UNION ALL SELECT 4 AS nid, -184.6992014939845 AS [E] UNION ALL SELECT 6 AS nid, -70.42234415250664 AS [E] UNION ALL SELECT 7 AS nid, 1.3244360712172127 AS [E] UNION ALL SELECT 10 AS nid, -65.27062830258585 AS [E] UNION ALL SELECT 11 AS nid, 147.9811246230092 AS [E] UNION ALL SELECT 13 AS nid, -10.649087022495026 AS [E] UNION ALL SELECT 14 AS nid, 99.43300470478421 AS [E]) AS [Values]), 
[DT_Output_11] AS 
(SELECT [DT_node_lookup_11].[KEY] AS [KEY], [DT_node_lookup_11].node_id_2 AS node_id_2, [DT_node_data_11].nid AS nid, [DT_node_data_11].[E] AS [E] 
FROM [DT_node_lookup_11] LEFT OUTER JOIN [DT_node_data_11] ON [DT_node_lookup_11].node_id_2 = [DT_node_data_11].nid), 
[GB_Model_11_0] AS 
(SELECT [DT_Output_11].[KEY] AS [KEY], [DT_Output_11].[E] AS [Estimator] 
FROM [DT_Output_11]), 
[DT_node_lookup_12] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.48648887872695923) THEN CASE WHEN ([ADS].[Feature_7] <= 0.12788641452789307) THEN CASE WHEN ([ADS].[Feature_6] <= -0.19785264134407043) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 1.4352846145629883) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_0] <= 1.8744382858276367) THEN CASE WHEN ([ADS].[Feature_1] <= -0.19500726461410522) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_9] <= 0.5527465343475342) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_12] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -115.61454240203253 AS [E] UNION ALL SELECT 4 AS nid, -34.726895341995366 AS [E] UNION ALL SELECT 6 AS nid, 14.5657363339971 AS [E] UNION ALL SELECT 7 AS nid, 252.22129678068407 AS [E] UNION ALL SELECT 10 AS nid, -3.8267988085527085 AS [E] UNION ALL SELECT 11 AS nid, 81.075001073378 AS [E] UNION ALL SELECT 13 AS nid, 235.47886905925594 AS [E] UNION ALL SELECT 14 AS nid, 79.33495269097298 AS [E]) AS [Values]), 
[DT_Output_12] AS 
(SELECT [DT_node_lookup_12].[KEY] AS [KEY], [DT_node_lookup_12].node_id_2 AS node_id_2, [DT_node_data_12].nid AS nid, [DT_node_data_12].[E] AS [E] 
FROM [DT_node_lookup_12] LEFT OUTER JOIN [DT_node_data_12] ON [DT_node_lookup_12].node_id_2 = [DT_node_data_12].nid), 
[GB_Model_12_0] AS 
(SELECT [DT_Output_12].[KEY] AS [KEY], [DT_Output_12].[E] AS [Estimator] 
FROM [DT_Output_12]), 
[DT_node_lookup_13] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_4] <= -1.0482118129730225) THEN CASE WHEN ([ADS].[Feature_5] <= 0.21651247143745422) THEN CASE WHEN ([ADS].[Feature_8] <= 0.12232282757759094) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_5] <= 1.1149399280548096) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.5495923757553101) THEN CASE WHEN ([ADS].[Feature_6] <= -0.16602689027786255) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 1.163679838180542) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_13] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -123.89772888428931 AS [E] UNION ALL SELECT 4 AS nid, -216.00531260592163 AS [E] UNION ALL SELECT 6 AS nid, -17.928916698609747 AS [E] UNION ALL SELECT 7 AS nid, -140.25547950272522 AS [E] UNION ALL SELECT 10 AS nid, -77.24167356823313 AS [E] UNION ALL SELECT 11 AS nid, 4.27756278838997 AS [E] UNION ALL SELECT 13 AS nid, 27.77869135277366 AS [E] UNION ALL SELECT 14 AS nid, 142.3041369154385 AS [E]) AS [Values]), 
[DT_Output_13] AS 
(SELECT [DT_node_lookup_13].[KEY] AS [KEY], [DT_node_lookup_13].node_id_2 AS node_id_2, [DT_node_data_13].nid AS nid, [DT_node_data_13].[E] AS [E] 
FROM [DT_node_lookup_13] LEFT OUTER JOIN [DT_node_data_13] ON [DT_node_lookup_13].node_id_2 = [DT_node_data_13].nid), 
[GB_Model_13_0] AS 
(SELECT [DT_Output_13].[KEY] AS [KEY], [DT_Output_13].[E] AS [Estimator] 
FROM [DT_Output_13]), 
[DT_node_lookup_14] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_5] <= -0.6693825721740723) THEN CASE WHEN ([ADS].[Feature_2] <= 0.8048999309539795) THEN CASE WHEN ([ADS].[Feature_8] <= 0.3638743758201599) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_4] <= 0.8961740136146545) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1578926146030426) THEN CASE WHEN ([ADS].[Feature_1] <= 1.1039375066757202) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_0] <= 1.1356269121170044) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_14] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -108.59838640298976 AS [E] UNION ALL SELECT 4 AS nid, -34.77991094519852 AS [E] UNION ALL SELECT 6 AS nid, 57.17104373033183 AS [E] UNION ALL SELECT 7 AS nid, 84.0469458646069 AS [E] UNION ALL SELECT 10 AS nid, -40.715945135748996 AS [E] UNION ALL SELECT 11 AS nid, 62.26102820987035 AS [E] UNION ALL SELECT 13 AS nid, 40.54914463720606 AS [E] UNION ALL SELECT 14 AS nid, 139.89083647282177 AS [E]) AS [Values]), 
[DT_Output_14] AS 
(SELECT [DT_node_lookup_14].[KEY] AS [KEY], [DT_node_lookup_14].node_id_2 AS node_id_2, [DT_node_data_14].nid AS nid, [DT_node_data_14].[E] AS [E] 
FROM [DT_node_lookup_14] LEFT OUTER JOIN [DT_node_data_14] ON [DT_node_lookup_14].node_id_2 = [DT_node_data_14].nid), 
[GB_Model_14_0] AS 
(SELECT [DT_Output_14].[KEY] AS [KEY], [DT_Output_14].[E] AS [Estimator] 
FROM [DT_Output_14]), 
[DT_node_lookup_15] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_2] <= 0.8179076910018921) THEN CASE WHEN ([ADS].[Feature_5] <= 0.2265688180923462) THEN CASE WHEN ([ADS].[Feature_3] <= 0.6109856367111206) THEN 3 ELSE 4 END ELSE CASE WHEN ([ADS].[Feature_7] <= 1.010027289390564) THEN 6 ELSE 7 END END ELSE CASE WHEN ([ADS].[Feature_8] <= -0.1578926146030426) THEN CASE WHEN ([ADS].[Feature_1] <= 1.7392034530639648) THEN 10 ELSE 11 END ELSE CASE WHEN ([ADS].[Feature_6] <= -1.3490328788757324) THEN 13 ELSE 14 END END END AS node_id_2 
FROM [RandomReg_10] AS [ADS]), 
[DT_node_data_15] AS 
(SELECT [Values].nid AS nid, CAST([Values].[E] AS FLOAT(53)) AS [E] 
FROM (SELECT 3 AS nid, -83.28721962706736 AS [E] UNION ALL SELECT 4 AS nid, 0.5306474709200918 AS [E] UNION ALL SELECT 6 AS nid, -5.689858717217801 AS [E] UNION ALL SELECT 7 AS nid, 114.3467321860319 AS [E] UNION ALL SELECT 10 AS nid, 5.642558422999436 AS [E] UNION ALL SELECT 11 AS nid, 127.53386061277723 AS [E] UNION ALL SELECT 13 AS nid, -0.3619416936416542 AS [E] UNION ALL SELECT 14 AS nid, 98.24968541797496 AS [E]) AS [Values]), 
[DT_Output_15] AS 
(SELECT [DT_node_lookup_15].[KEY] AS [KEY], [DT_node_lookup_15].node_id_2 AS node_id_2, [DT_node_data_15].nid AS nid, [DT_node_data_15].[E] AS [E] 
FROM [DT_node_lookup_15] LEFT OUTER JOIN [DT_node_data_15] ON [DT_node_lookup_15].node_id_2 = [DT_node_data_15].nid), 
[GB_Model_15_0] AS 
(SELECT [DT_Output_15].[KEY] AS [KEY], [DT_Output_15].[E] AS [Estimator] 
FROM [DT_Output_15])
 INSERT INTO ##TMP_20180516113650_CODEGEN_KR1M9J_GB_B1 ([KEY], [Estimator]) SELECT [GB_B1].[KEY], [GB_B1].[Estimator] 
FROM (SELECT [GB_esu_1].[KEY] AS [KEY], [GB_esu_1].[Estimator] AS [Estimator] 
FROM (SELECT [GB_Model_10_0].[KEY] AS [KEY], [GB_Model_10_0].[Estimator] AS [Estimator] 
FROM [GB_Model_10_0] UNION ALL SELECT [GB_Model_11_0].[KEY] AS [KEY], [GB_Model_11_0].[Estimator] AS [Estimator] 
FROM [GB_Model_11_0] UNION ALL SELECT [GB_Model_12_0].[KEY] AS [KEY], [GB_Model_12_0].[Estimator] AS [Estimator] 
FROM [GB_Model_12_0] UNION ALL SELECT [GB_Model_13_0].[KEY] AS [KEY], [GB_Model_13_0].[Estimator] AS [Estimator] 
FROM [GB_Model_13_0] UNION ALL SELECT [GB_Model_14_0].[KEY] AS [KEY], [GB_Model_14_0].[Estimator] AS [Estimator] 
FROM [GB_Model_14_0] UNION ALL SELECT [GB_Model_15_0].[KEY] AS [KEY], [GB_Model_15_0].[Estimator] AS [Estimator] 
FROM [GB_Model_15_0]) AS [GB_esu_1]) AS [GB_B1]

-- Code For temporary table ##TMP_20180516113650_CODEGEN_K5YBJD_GB_sum part 1. Create 


CREATE TABLE ##TMP_20180516113650_CODEGEN_K5YBJD_GB_sum (
	[KEY] BIGINT NULL, 
	[Estimator] FLOAT(53) NULL
)



-- Code For temporary table ##TMP_20180516113650_CODEGEN_K5YBJD_GB_sum part 2. Populate

WITH [GB_Union] AS 
(SELECT [GB_EnsembleUnion].[KEY] AS [KEY], [GB_EnsembleUnion].[Estimator] AS [Estimator] 
FROM (SELECT [GB_B0].[KEY] AS [KEY], [GB_B0].[Estimator] AS [Estimator] 
FROM ##TMP_20180516113650_CODEGEN_JCA4TI_GB_B0 AS [GB_B0] UNION ALL SELECT [GB_B1].[KEY] AS [KEY], [GB_B1].[Estimator] AS [Estimator] 
FROM ##TMP_20180516113650_CODEGEN_KR1M9J_GB_B1 AS [GB_B1]) AS [GB_EnsembleUnion])
 INSERT INTO ##TMP_20180516113650_CODEGEN_K5YBJD_GB_sum ([KEY], [Estimator]) SELECT [GB_sum].[KEY], [GB_sum].[Estimator] 
FROM (SELECT [T].[KEY] AS [KEY], CAST([T].[Estimator] AS FLOAT(53)) AS [Estimator] 
FROM (SELECT [GB_Union].[KEY] AS [KEY], sum([GB_Union].[Estimator]) AS [Estimator] 
FROM [GB_Union] GROUP BY [GB_Union].[KEY]) AS [T]) AS [GB_sum]

-- Model deployment code

SELECT [GB_sum].[KEY] AS [KEY], 26.405852730652413 + 0.1 * [GB_sum].[Estimator] AS [Estimator] 
FROM ##TMP_20180516113650_CODEGEN_K5YBJD_GB_sum AS [GB_sum]