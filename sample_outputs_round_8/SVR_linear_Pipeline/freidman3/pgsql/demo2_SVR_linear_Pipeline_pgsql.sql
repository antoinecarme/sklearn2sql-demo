-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 37.1024906382 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 820.420898922 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.566181762373 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.66448350657 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 37.1024906382) / 27.2361073362 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 820.420898922) / 386.031348182 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.566181762373) / 0.306900434257 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.66448350657) / 3.34652241867 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.127978093196 AS dual_coeff, 0.220060490956 AS sv_0, 0.291104580959 AS sv_1, -0.818337617437 AS sv_2, -0.00812391265666 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.340832990326 AS dual_coeff, -1.047780577 AS sv_0, 0.898258054886 AS sv_1, -1.14360616108 AS sv_2, 1.15306202953 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.30889093895 AS dual_coeff, 1.44631795197 AS sv_0, -1.55570693091 AS sv_1, 0.648397569942 AS sv_2, 0.0140017796406 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.164499099534 AS sv_0, -0.997912200969 AS sv_1, -1.51915034699 AS sv_2, -1.24981948012 AS sv_3 UNION ALL SELECT 4 AS sv_idx, 0.639672829772 AS dual_coeff, -1.35684921311 AS sv_0, -1.43956176951 AS sv_1, -0.223086921758 AS sv_2, 0.624095816454 AS sv_3 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, -1.30710160499 AS sv_0, -1.79718941375 AS sv_1, -0.735675244097 AS sv_2, 0.940844015355 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -0.774377257792 AS sv_0, -0.574238148168 AS sv_1, -1.65478507028 AS sv_2, 1.01640062949 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.343307493735 AS dual_coeff, 1.9345610707 AS sv_0, 1.48326059879 AS sv_1, 0.919646059068 AS sv_2, 0.802340001117 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.817352372491 AS dual_coeff, 0.40540083791 AS sv_0, -0.153771997987 AS sv_1, -0.842940359227 AS sv_2, -1.64750527014 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -0.960252840569 AS dual_coeff, -1.29762513179 AS sv_0, 0.00659629188135 AS sv_1, 1.17265600446 AS sv_2, 0.921604192064 AS sv_3) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.41185524819 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS_sca_2_OUT".scaler_output_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_output_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_output_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_output_5 * "SV_data".sv_3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte