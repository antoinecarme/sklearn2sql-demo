-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPClassifier
-- Dataset : BinaryClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_1_1` DOUBLE, 
	`NEUR_1_2` DOUBLE, 
	`NEUR_1_3` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1 part 2. Populate

INSERT INTO `TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1` (`KEY`, `NEUR_1_1`, `NEUR_1_2`, `NEUR_1_3`) SELECT `U`.`KEY`, `U`.`NEUR_1_1`, `U`.`NEUR_1_2`, `U`.`NEUR_1_3` 
FROM (WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9` 
FROM `BinaryClass_10` AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -1.09387856853759 * `IL`.`Feature_0` + 0.49224270701268763 * `IL`.`Feature_1` + -1.664174697352711 * `IL`.`Feature_2` + 0.42207766254502 * `IL`.`Feature_3` + -0.7502009662016915 * `IL`.`Feature_4` + 0.5342855841852756 * `IL`.`Feature_5` + -1.2904896132883121 * `IL`.`Feature_6` + -0.4491993749280952 * `IL`.`Feature_7` + 0.5663778020240827 * `IL`.`Feature_8` + 0.7884825655856483 * `IL`.`Feature_9` + -1.529188375707104 AS `NEUR_1_1`, 5.05146338022372 * `IL`.`Feature_0` + 0.28127943255997684 * `IL`.`Feature_1` + 2.733980116998645 * `IL`.`Feature_2` + 1.5127872724522962 * `IL`.`Feature_3` + 1.953130547200595 * `IL`.`Feature_4` + -0.5784869575815028 * `IL`.`Feature_5` + -0.1386082590692881 * `IL`.`Feature_6` + 1.2488012373882893 * `IL`.`Feature_7` + -0.3388760700825889 * `IL`.`Feature_8` + -4.920073315526665 * `IL`.`Feature_9` + 0.8216254709644857 AS `NEUR_1_2`, -3.2767484997224536 * `IL`.`Feature_0` + -0.16754086862397607 * `IL`.`Feature_1` + -0.44859013521569124 * `IL`.`Feature_2` + 0.397757191089655 * `IL`.`Feature_3` + -0.4833854555330975 * `IL`.`Feature_4` + -2.7396626711818453 * `IL`.`Feature_5` + -2.135657082181811 * `IL`.`Feature_6` + -2.091461237040985 * `IL`.`Feature_7` + 0.7395485968198405 * `IL`.`Feature_8` + 5.185024697312112 * `IL`.`Feature_9` + 1.9518610501859766 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, greatest(`HL_BA_1`.`NEUR_1_1`, 0) AS `NEUR_1_1`, greatest(`HL_BA_1`.`NEUR_1_2`, 0) AS `NEUR_1_2`, greatest(`HL_BA_1`.`NEUR_1_3`, 0) AS `NEUR_1_3` 
FROM `HL_BA_1`)
 SELECT `HL_1_relu_1`.`KEY`, `HL_1_relu_1`.`NEUR_1_1`, `HL_1_relu_1`.`NEUR_1_2`, `HL_1_relu_1`.`NEUR_1_3` 
FROM (SELECT `HL_1_relu`.`KEY` AS `KEY`, `HL_1_relu`.`NEUR_1_1` AS `NEUR_1_1`, `HL_1_relu`.`NEUR_1_2` AS `NEUR_1_2`, `HL_1_relu`.`NEUR_1_3` AS `NEUR_1_3` 
FROM `HL_1_relu`) AS `HL_1_relu_1`) AS `U`

-- Code For temporary table TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1_KEY` ON `TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1` (`KEY`)

-- Code For temporary table TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1 part 1. Create 


CREATE TEMPORARY TABLE `TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1` (
	`KEY` BIGINT NOT NULL, 
	`NEUR_3_1` DOUBLE, 
	PRIMARY KEY (`KEY`)
)

 ENGINE=MEMORY

-- Code For temporary table TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1 part 2. Populate

INSERT INTO `TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1` (`KEY`, `NEUR_3_1`) SELECT `U`.`KEY`, `U`.`NEUR_3_1` 
FROM (WITH `HL_BA_2` AS 
(SELECT `HL_1_relu_1`.`KEY` AS `KEY`, -0.6549237752121152 * `HL_1_relu_1`.`NEUR_1_1` + 0.8918267457588545 * `HL_1_relu_1`.`NEUR_1_2` + -0.3948058321508115 * `HL_1_relu_1`.`NEUR_1_3` + -0.20565572064769613 AS `NEUR_2_1`, -1.8343824252484764 * `HL_1_relu_1`.`NEUR_1_1` + 0.5929406695016919 * `HL_1_relu_1`.`NEUR_1_2` + -1.4986027234379486 * `HL_1_relu_1`.`NEUR_1_3` + 3.23797223883291 AS `NEUR_2_2`, 1.0906458603388933 * `HL_1_relu_1`.`NEUR_1_1` + 0.6916090297414956 * `HL_1_relu_1`.`NEUR_1_2` + 2.502762033997912 * `HL_1_relu_1`.`NEUR_1_3` + 0.6854576977907451 AS `NEUR_2_3`, 0.11108728721092391 * `HL_1_relu_1`.`NEUR_1_1` + -0.504728710406666 * `HL_1_relu_1`.`NEUR_1_2` + -0.40662044735330205 * `HL_1_relu_1`.`NEUR_1_3` + -0.7964330424336139 AS `NEUR_2_4`, -0.5468224941425915 * `HL_1_relu_1`.`NEUR_1_1` + 0.9180288330256826 * `HL_1_relu_1`.`NEUR_1_2` + -0.6019949157015289 * `HL_1_relu_1`.`NEUR_1_3` + -0.36517343678301517 AS `NEUR_2_5` 
FROM `TMP_20180516110431_CODEGEN_0EETH7_HL_1_relu_1` AS `HL_1_relu_1`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, greatest(`HL_BA_2`.`NEUR_2_1`, 0) AS `NEUR_2_1`, greatest(`HL_BA_2`.`NEUR_2_2`, 0) AS `NEUR_2_2`, greatest(`HL_BA_2`.`NEUR_2_3`, 0) AS `NEUR_2_3`, greatest(`HL_BA_2`.`NEUR_2_4`, 0) AS `NEUR_2_4`, greatest(`HL_BA_2`.`NEUR_2_5`, 0) AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -1.2443038815322867 * `HL_2_relu`.`NEUR_2_1` + -2.8625023748503065 * `HL_2_relu`.`NEUR_2_2` + 4.561706335502054 * `HL_2_relu`.`NEUR_2_3` + 0.7008225084224347 * `HL_2_relu`.`NEUR_2_4` + -0.3586937282368721 * `HL_2_relu`.`NEUR_2_5` + 3.00916718885165 AS `NEUR_3_1` 
FROM `HL_2_relu`), 
`OL_logistic` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, 1.0 / (1.0 + exp(least(greatest(-100.0, -`OL_BA`.`NEUR_3_1`), 100.0))) AS `NEUR_3_1` 
FROM `OL_BA`)
 SELECT `OL_logistic_1`.`KEY`, `OL_logistic_1`.`NEUR_3_1` 
FROM (SELECT `OL_logistic`.`KEY` AS `KEY`, `OL_logistic`.`NEUR_3_1` AS `NEUR_3_1` 
FROM `OL_logistic`) AS `OL_logistic_1`) AS `U`

-- Code For temporary table TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1 part 3. Create Index 

CREATE INDEX `ix_TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1_KEY` ON `TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1` (`KEY`)

-- Model deployment code

WITH orig_cte AS 
(SELECT `OL_logistic_1`.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, 1.0 - `OL_logistic_1`.`NEUR_3_1` AS `Proba_0`, `OL_logistic_1`.`NEUR_3_1` AS `Proba_1`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `TMP_20180516110431_CODEGEN_7LQ8V3_OL_logistic_1` AS `OL_logistic_1`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Proba` AS `max_Proba` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Proba`) AS `max_Proba` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba` 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union.`KEY_u` = score_max.`KEY`), 
arg_max_cte AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Proba` AS `max_Proba`, `arg_max_t_Proba`.`KEY_Proba` AS `KEY_Proba`, `arg_max_t_Proba`.`arg_max_Proba` AS `arg_max_Proba` 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Proba`, min(union_with_max.class) AS `arg_max_Proba` 
FROM union_with_max 
WHERE union_with_max.`max_Proba` <= union_with_max.`Proba` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Proba` ON score_max.`KEY` = `arg_max_t_Proba`.`KEY_Proba`)
 SELECT arg_max_cte.`KEY` AS `KEY`, arg_max_cte.`Score_0` AS `Score_0`, arg_max_cte.`Score_1` AS `Score_1`, arg_max_cte.`Proba_0` AS `Proba_0`, arg_max_cte.`Proba_1` AS `Proba_1`, CASE WHEN (arg_max_cte.`Proba_0` IS NULL OR arg_max_cte.`Proba_0` > 0.0) THEN ln(arg_max_cte.`Proba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`Proba_1` IS NULL OR arg_max_cte.`Proba_1` > 0.0) THEN ln(arg_max_cte.`Proba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, arg_max_cte.`arg_max_Proba` AS `Decision`, arg_max_cte.`max_Proba` AS `DecisionProba` 
FROM arg_max_cte