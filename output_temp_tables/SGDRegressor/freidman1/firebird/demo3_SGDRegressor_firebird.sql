-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SGDRegressor
-- Dataset : freidman1
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) AS "Feature_9" 
FROM freidman1 AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", 2.592408204328081 * linear_input."Feature_0" + 2.6104799908633276 * linear_input."Feature_1" + 1.6571269612338844 * linear_input."Feature_2" + 2.933334976149512 * linear_input."Feature_3" + 2.1186016871268447 * linear_input."Feature_4" + 2.2568202187398256 * linear_input."Feature_5" + 1.8410437770394539 * linear_input."Feature_6" + 1.8976441966197328 * linear_input."Feature_7" + 1.9366292980932933 * linear_input."Feature_8" + 1.9786547167383497 * linear_input."Feature_9" + 4.140388261809715 AS "Estimator" 
FROM linear_input)
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte