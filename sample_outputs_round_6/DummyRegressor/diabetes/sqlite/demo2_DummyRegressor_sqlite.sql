-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH dummy_class_reg_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 149.810810811 AS "Constant" 
FROM diabetes AS "ADS")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte