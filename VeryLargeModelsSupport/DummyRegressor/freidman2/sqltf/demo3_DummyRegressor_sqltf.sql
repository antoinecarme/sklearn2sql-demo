-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 499.09288446517394 AS "Constant" 
FROM freidman2 AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte