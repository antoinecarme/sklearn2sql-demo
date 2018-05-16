-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_linear_Pipeline
-- Dataset : freidman3
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516122043_codegen_50hw2u_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122043_codegen_50hw2u_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122043_codegen_50hw2u_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516122043_codegen_50hw2u_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516122043_codegen_et1hdx_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516122043_codegen_et1hdx_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516122043_codegen_et1hdx_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516122043_codegen_et1hdx_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(43.79128122207402 AS DOUBLE PRECISION)) / CAST(26.03562357622511 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(945.9672833084397 AS DOUBLE PRECISION)) / CAST(461.4552766146446 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(0.531000909997521 AS DOUBLE PRECISION)) / CAST(0.290186328214479 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(6.139967152050499 AS DOUBLE PRECISION)) / CAST(3.072917242564058 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516122043_codegen_50hw2u_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516122043_codegen_et1hdx_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 0 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.128629540716648 AS DOUBLE PRECISION) AS sv_0, CAST(-0.855762437264239 AS DOUBLE PRECISION) AS sv_1, CAST(-1.696627692807715 AS DOUBLE PRECISION) AS sv_2, CAST(-0.508276249018738 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.212861866158679 AS DOUBLE PRECISION) AS sv_0, CAST(-1.75545003256683 AS DOUBLE PRECISION) AS sv_1, CAST(0.40296624747161 AS DOUBLE PRECISION) AS sv_2, CAST(-1.288842312688892 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.262295051031869 AS DOUBLE PRECISION) AS sv_0, CAST(-1.156436226701534 AS DOUBLE PRECISION) AS sv_1, CAST(-1.469826707772466 AS DOUBLE PRECISION) AS sv_2, CAST(-1.059119640920314 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 3 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.335481404776 AS DOUBLE PRECISION) AS sv_0, CAST(-0.97426350987175 AS DOUBLE PRECISION) AS sv_1, CAST(-0.371647635078974 AS DOUBLE PRECISION) AS sv_2, CAST(0.78110554108292 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.48689854261959 AS DOUBLE PRECISION) AS sv_0, CAST(-0.932975923252193 AS DOUBLE PRECISION) AS sv_1, CAST(0.009765473610072 AS DOUBLE PRECISION) AS sv_2, CAST(-0.440293998231607 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(2.157633837700774 AS DOUBLE PRECISION) AS sv_0, CAST(-1.596026640560732 AS DOUBLE PRECISION) AS sv_1, CAST(0.89324094580545 AS DOUBLE PRECISION) AS sv_2, CAST(-1.411580858022389 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.734401135308558 AS DOUBLE PRECISION) AS sv_0, CAST(-1.061279569066753 AS DOUBLE PRECISION) AS sv_1, CAST(-1.64272067072607 AS DOUBLE PRECISION) AS sv_2, CAST(1.28389871222053 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.185280428471124 AS DOUBLE PRECISION) AS sv_0, CAST(0.469948210657082 AS DOUBLE PRECISION) AS sv_1, CAST(-1.783277894836552 AS DOUBLE PRECISION) AS sv_2, CAST(0.208534293223346 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.130653018190199 AS DOUBLE PRECISION) AS sv_0, CAST(1.693815859594952 AS DOUBLE PRECISION) AS sv_1, CAST(-1.809849193272349 AS DOUBLE PRECISION) AS sv_2, CAST(-0.853115053657762 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.468587753657723 AS DOUBLE PRECISION) AS sv_0, CAST(0.706265857711276 AS DOUBLE PRECISION) AS sv_1, CAST(-0.915855280051702 AS DOUBLE PRECISION) AS sv_2, CAST(-1.2834679369914 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.303870138217631 AS DOUBLE PRECISION) AS sv_0, CAST(1.5082277717145 AS DOUBLE PRECISION) AS sv_1, CAST(0.608346026197214 AS DOUBLE PRECISION) AS sv_2, CAST(-0.049792963322016 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.972890849957712 AS DOUBLE PRECISION) AS sv_0, CAST(0.563817947473381 AS DOUBLE PRECISION) AS sv_1, CAST(-0.964763367678236 AS DOUBLE PRECISION) AS sv_2, CAST(-0.355118790746674 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(0.053319282490783 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.000969568362786 AS DOUBLE PRECISION) AS sv_0, CAST(1.502114679360407 AS DOUBLE PRECISION) AS sv_1, CAST(-0.349173085341533 AS DOUBLE PRECISION) AS sv_2, CAST(0.430917430729315 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.175416482534578 AS DOUBLE PRECISION) AS sv_0, CAST(1.157357979471062 AS DOUBLE PRECISION) AS sv_1, CAST(1.546077643505364 AS DOUBLE PRECISION) AS sv_2, CAST(1.56148404527743 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.61644120598175 AS DOUBLE PRECISION) AS sv_0, CAST(0.513531327146482 AS DOUBLE PRECISION) AS sv_1, CAST(0.1901494810657 AS DOUBLE PRECISION) AS sv_2, CAST(-1.1516753084143 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.226484175487996 AS DOUBLE PRECISION) AS sv_0, CAST(0.072751996195975 AS DOUBLE PRECISION) AS sv_1, CAST(-0.643866925958607 AS DOUBLE PRECISION) AS sv_2, CAST(0.178980189047979 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(0.012950403581428 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.503173227813537 AS DOUBLE PRECISION) AS sv_0, CAST(0.679095067810605 AS DOUBLE PRECISION) AS sv_1, CAST(-0.927914767969166 AS DOUBLE PRECISION) AS sv_2, CAST(-0.088869584414411 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.026701854468432 AS DOUBLE PRECISION) AS sv_0, CAST(-0.028542073748357 AS DOUBLE PRECISION) AS sv_1, CAST(-0.744236708578972 AS DOUBLE PRECISION) AS sv_2, CAST(0.16184278958013 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(0.060729401611387 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.353002156477134 AS DOUBLE PRECISION) AS sv_0, CAST(0.479373397091272 AS DOUBLE PRECISION) AS sv_1, CAST(-1.088240018135325 AS DOUBLE PRECISION) AS sv_2, CAST(1.426417941145484 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(-0.027664176381396 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.25609745057753 AS DOUBLE PRECISION) AS sv_0, CAST(-1.573495992128003 AS DOUBLE PRECISION) AS sv_1, CAST(0.806979259164098 AS DOUBLE PRECISION) AS sv_2, CAST(0.185938500416681 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.084825141436289 AS DOUBLE PRECISION) AS sv_0, CAST(-1.106871678746354 AS DOUBLE PRECISION) AS sv_1, CAST(-1.485414738414908 AS DOUBLE PRECISION) AS sv_2, CAST(-1.190410371070792 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.67632172371631 AS DOUBLE PRECISION) AS sv_0, CAST(-1.476334521640557 AS DOUBLE PRECISION) AS sv_1, CAST(-0.114700857872373 AS DOUBLE PRECISION) AS sv_2, CAST(0.850353846007769 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.624280289386995 AS DOUBLE PRECISION) AS sv_0, CAST(-1.775508653244122 AS DOUBLE PRECISION) AS sv_1, CAST(-0.656813160988098 AS DOUBLE PRECISION) AS sv_2, CAST(1.195304544325356 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.066992408093323 AS DOUBLE PRECISION) AS sv_0, CAST(-0.752446290024242 AS DOUBLE PRECISION) AS sv_1, CAST(-1.628861728957462 AS DOUBLE PRECISION) AS sv_2, CAST(1.277588538039886 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.167184401745262 AS DOUBLE PRECISION) AS sv_0, CAST(-0.400704478748343 AS DOUBLE PRECISION) AS sv_1, CAST(-0.770256515182922 AS DOUBLE PRECISION) AS sv_2, CAST(-1.623505149365183 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(-0.04890591068718 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.614366862868711 AS DOUBLE PRECISION) AS sv_0, CAST(-0.266548060389542 AS DOUBLE PRECISION) AS sv_1, CAST(1.361433847723701 AS DOUBLE PRECISION) AS sv_2, CAST(1.174351653344988 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 26 AS sv_idx, CAST(0.049570999384978 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.923065553671842 AS DOUBLE PRECISION) AS sv_0, CAST(-1.460057588221313 AS DOUBLE PRECISION) AS sv_1, CAST(-0.280397076082255 AS DOUBLE PRECISION) AS sv_2, CAST(-1.391523762632961 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + CAST(1.383096253454688 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp