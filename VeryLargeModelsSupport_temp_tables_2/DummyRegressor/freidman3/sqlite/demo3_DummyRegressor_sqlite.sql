-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor
-- Dataset : freidman3
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 1.3612342030259192 AS "Constant" 
FROM freidman3 AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte