-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" * 0.197313662389 + 0.523989929145 AS "Feature_0", "ADS"."Feature_1" * 0.212669812129 + 0.589646780619 AS "Feature_1", "ADS"."Feature_2" * 0.198271317396 + 0.543199401179 AS "Feature_2", "ADS"."Feature_3" * 0.216034240373 + 0.511911907069 AS "Feature_3", "ADS"."Feature_4" * 0.174144212884 + 0.530468184609 AS "Feature_4" 
FROM "INPUT_DATA" AS "ADS"