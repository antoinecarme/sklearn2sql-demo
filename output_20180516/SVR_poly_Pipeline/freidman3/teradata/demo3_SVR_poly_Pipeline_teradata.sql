-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly_Pipeline
-- Dataset : freidman3
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516122102_codegen_c7buhd_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122102_codegen_c7buhd_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122102_codegen_c7buhd_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516122102_codegen_c7buhd_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516122102_codegen_wtpaft_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122102_codegen_wtpaft_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122102_codegen_wtpaft_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516122102_codegen_wtpaft_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(43.79128122207402 AS DOUBLE PRECISION)) / CAST(26.03562357622511 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(945.9672833084397 AS DOUBLE PRECISION)) / CAST(461.4552766146446 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(0.531000909997521 AS DOUBLE PRECISION)) / CAST(0.290186328214479 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(6.139967152050499 AS DOUBLE PRECISION)) / CAST(3.072917242564058 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516122102_codegen_c7buhd_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516122102_codegen_wtpaft_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 0 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.128629540716648 AS DOUBLE PRECISION) AS sv_0, CAST(-0.855762437264239 AS DOUBLE PRECISION) AS sv_1, CAST(-1.696627692807715 AS DOUBLE PRECISION) AS sv_2, CAST(-0.508276249018738 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(0.025028939824075 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.188322837867617 AS DOUBLE PRECISION) AS sv_0, CAST(1.556571202461176 AS DOUBLE PRECISION) AS sv_1, CAST(-0.756591612265666 AS DOUBLE PRECISION) AS sv_2, CAST(-0.490525026050968 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(0.004175725621421 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.715223115868063 AS DOUBLE PRECISION) AS sv_0, CAST(0.183824893669536 AS DOUBLE PRECISION) AS sv_1, CAST(0.626533125970769 AS DOUBLE PRECISION) AS sv_2, CAST(1.38791677943489 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 3 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.061839864587315 AS DOUBLE PRECISION) AS sv_0, CAST(0.379833212745227 AS DOUBLE PRECISION) AS sv_1, CAST(0.808251474852461 AS DOUBLE PRECISION) AS sv_2, CAST(0.304112923070517 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(-0.066070478558283 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.212861866158679 AS DOUBLE PRECISION) AS sv_0, CAST(-1.75545003256683 AS DOUBLE PRECISION) AS sv_1, CAST(0.40296624747161 AS DOUBLE PRECISION) AS sv_2, CAST(-1.288842312688892 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.262295051031869 AS DOUBLE PRECISION) AS sv_0, CAST(-1.156436226701534 AS DOUBLE PRECISION) AS sv_1, CAST(-1.469826707772466 AS DOUBLE PRECISION) AS sv_2, CAST(-1.059119640920314 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.734401135308558 AS DOUBLE PRECISION) AS sv_0, CAST(-1.061279569066753 AS DOUBLE PRECISION) AS sv_1, CAST(-1.64272067072607 AS DOUBLE PRECISION) AS sv_2, CAST(1.28389871222053 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.185280428471124 AS DOUBLE PRECISION) AS sv_0, CAST(0.469948210657082 AS DOUBLE PRECISION) AS sv_1, CAST(-1.783277894836552 AS DOUBLE PRECISION) AS sv_2, CAST(0.208534293223346 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(0.028293482445526 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.072806128611992 AS DOUBLE PRECISION) AS sv_0, CAST(-0.011274498105027 AS DOUBLE PRECISION) AS sv_1, CAST(0.158710100039567 AS DOUBLE PRECISION) AS sv_2, CAST(1.366300036238356 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.130653018190199 AS DOUBLE PRECISION) AS sv_0, CAST(1.693815859594952 AS DOUBLE PRECISION) AS sv_1, CAST(-1.809849193272349 AS DOUBLE PRECISION) AS sv_2, CAST(-0.853115053657762 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(0.057058955753627 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.468587753657723 AS DOUBLE PRECISION) AS sv_0, CAST(0.706265857711276 AS DOUBLE PRECISION) AS sv_1, CAST(-0.915855280051702 AS DOUBLE PRECISION) AS sv_2, CAST(-1.2834679369914 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(0.06006089809664 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.645167022605794 AS DOUBLE PRECISION) AS sv_0, CAST(1.135268744400895 AS DOUBLE PRECISION) AS sv_1, CAST(0.268621569111373 AS DOUBLE PRECISION) AS sv_2, CAST(-1.23764227872756 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.883913938809592 AS DOUBLE PRECISION) AS sv_0, CAST(-0.210463335500846 AS DOUBLE PRECISION) AS sv_1, CAST(0.465219122686826 AS DOUBLE PRECISION) AS sv_2, CAST(0.730461822885395 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(-0.006014126301536 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.303870138217631 AS DOUBLE PRECISION) AS sv_0, CAST(1.5082277717145 AS DOUBLE PRECISION) AS sv_1, CAST(0.608346026197214 AS DOUBLE PRECISION) AS sv_2, CAST(-0.049792963322016 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.710888619986789 AS DOUBLE PRECISION) AS sv_0, CAST(-0.914407867644047 AS DOUBLE PRECISION) AS sv_1, CAST(0.40580456863468 AS DOUBLE PRECISION) AS sv_2, CAST(-0.755341550199863 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.593770432267414 AS DOUBLE PRECISION) AS sv_0, CAST(0.002038778458289 AS DOUBLE PRECISION) AS sv_1, CAST(0.412858567474831 AS DOUBLE PRECISION) AS sv_2, CAST(1.011121496858055 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.175416482534578 AS DOUBLE PRECISION) AS sv_0, CAST(1.157357979471062 AS DOUBLE PRECISION) AS sv_1, CAST(1.546077643505364 AS DOUBLE PRECISION) AS sv_2, CAST(1.56148404527743 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.61644120598175 AS DOUBLE PRECISION) AS sv_0, CAST(0.513531327146482 AS DOUBLE PRECISION) AS sv_1, CAST(0.1901494810657 AS DOUBLE PRECISION) AS sv_2, CAST(-1.1516753084143 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.215420405866088 AS DOUBLE PRECISION) AS sv_0, CAST(-1.521343805623405 AS DOUBLE PRECISION) AS sv_1, CAST(-0.404061522441028 AS DOUBLE PRECISION) AS sv_2, CAST(-0.039263686954211 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.503173227813537 AS DOUBLE PRECISION) AS sv_0, CAST(0.679095067810605 AS DOUBLE PRECISION) AS sv_1, CAST(-0.927914767969166 AS DOUBLE PRECISION) AS sv_2, CAST(-0.088869584414411 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(0.023217743956215 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.2241246362115 AS DOUBLE PRECISION) AS sv_0, CAST(1.512795119938024 AS DOUBLE PRECISION) AS sv_1, CAST(-1.676492473707462 AS DOUBLE PRECISION) AS sv_2, CAST(-1.354123235499923 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(-0.071300558996715 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.965886790803339 AS DOUBLE PRECISION) AS sv_0, CAST(-0.80119621990515 AS DOUBLE PRECISION) AS sv_1, CAST(-1.002975179920882 AS DOUBLE PRECISION) AS sv_2, CAST(0.535944005146783 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.643421690432257 AS DOUBLE PRECISION) AS sv_0, CAST(0.458153752848955 AS DOUBLE PRECISION) AS sv_1, CAST(0.04561705282486 AS DOUBLE PRECISION) AS sv_2, CAST(-0.42841875716131 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.25609745057753 AS DOUBLE PRECISION) AS sv_0, CAST(-1.573495992128003 AS DOUBLE PRECISION) AS sv_1, CAST(0.806979259164098 AS DOUBLE PRECISION) AS sv_2, CAST(0.185938500416681 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.084825141436289 AS DOUBLE PRECISION) AS sv_0, CAST(-1.106871678746354 AS DOUBLE PRECISION) AS sv_1, CAST(-1.485414738414908 AS DOUBLE PRECISION) AS sv_2, CAST(-1.190410371070792 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(0.035958738212745 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.624280289386995 AS DOUBLE PRECISION) AS sv_0, CAST(-1.775508653244122 AS DOUBLE PRECISION) AS sv_1, CAST(-0.656813160988098 AS DOUBLE PRECISION) AS sv_2, CAST(1.195304544325356 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 26 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.314278861233416 AS DOUBLE PRECISION) AS sv_0, CAST(0.228052176609166 AS DOUBLE PRECISION) AS sv_1, CAST(0.305700563413897 AS DOUBLE PRECISION) AS sv_2, CAST(0.710181620860122 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 27 AS sv_idx, CAST(-0.025399649250069 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.983310970922164 AS DOUBLE PRECISION) AS sv_0, CAST(-1.515041962798084 AS DOUBLE PRECISION) AS sv_1, CAST(1.393918836611841 AS DOUBLE PRECISION) AS sv_2, CAST(-0.162446226528031 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 28 AS sv_idx, CAST(0.018417719884694 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.923065553671842 AS DOUBLE PRECISION) AS sv_0, CAST(-1.460057588221313 AS DOUBLE PRECISION) AS sv_1, CAST(-0.280397076082255 AS DOUBLE PRECISION) AS sv_2, CAST(-1.391523762632961 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 29 AS sv_idx, CAST(0.016572609311659 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.337961164229412 AS DOUBLE PRECISION) AS sv_0, CAST(-0.573081537507758 AS DOUBLE PRECISION) AS sv_1, CAST(0.283241254346836 AS DOUBLE PRECISION) AS sv_2, CAST(1.577095288586448 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + CAST(1.385690461760779 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(CAST(0.25 AS DOUBLE PRECISION) * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + CAST(0.0 AS DOUBLE PRECISION), 3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp