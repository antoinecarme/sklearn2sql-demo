-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" * -0.00121680433597 + "ADS"."Feature_1" * -0.436213364795 + "ADS"."Feature_2" * 0.0390826231377 + "ADS"."Feature_3" * 0.0030485200232 + "ADS"."Feature_4" * 0.134639327406 + "ADS"."Feature_5" * -0.0832028453993 + "ADS"."Feature_6" * -0.728040877613 + "ADS"."Feature_7" * -0.0423115102468 + "ADS"."Feature_8" * -0.0518134490421 + "ADS"."Feature_9" * 0.0264164094203 + "ADS"."Feature_10" * 0.0213477377326 + "ADS"."Feature_11" * -0.367568967839 + "ADS"."Feature_12" * -0.000296844103451 + "ADS"."Feature_13" * -0.0301784316121 + "ADS"."Feature_14" * 0.330220081036 + "ADS"."Feature_15" * 0.0357007859519 + "ADS"."Feature_16" * 0.0111742267682 + "ADS"."Feature_17" * 0.00580668889614 + "ADS"."Feature_18" * -0.0300752727106 + "ADS"."Feature_19" * 0.00751800542553 AS trunc_svd_1, "ADS"."Feature_0" * -0.0693650938126 + "ADS"."Feature_1" * 0.307962795335 + "ADS"."Feature_2" * -0.0348702996571 + "ADS"."Feature_3" * 0.0118820420077 + "ADS"."Feature_4" * -0.764252550702 + "ADS"."Feature_5" * -0.0308052406667 + "ADS"."Feature_6" * -0.203701390413 + "ADS"."Feature_7" * -0.0135867860065 + "ADS"."Feature_8" * 0.0426573473821 + "ADS"."Feature_9" * -0.0453328474913 + "ADS"."Feature_10" * 0.0324936193083 + "ADS"."Feature_11" * 0.132887020851 + "ADS"."Feature_12" * 0.130637460343 + "ADS"."Feature_13" * -0.0405137672998 + "ADS"."Feature_14" * 0.421405623613 + "ADS"."Feature_15" * -0.174967657916 + "ADS"."Feature_16" * -0.0178359342627 + "ADS"."Feature_17" * 0.0288522329585 + "ADS"."Feature_18" * -0.138111632023 + "ADS"."Feature_19" * 0.0506132329068 AS trunc_svd_2 
FROM "INPUT_DATA" "ADS"