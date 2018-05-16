-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf_Pipeline
-- Dataset : freidman2
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516121601_codegen_7zpxy8_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121601_codegen_7zpxy8_ads_imp_1_out  (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121601_codegen_7zpxy8_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516121601_codegen_7zpxy8_ads_imp_1_out ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman2 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516121601_codegen_wb307t_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180516121601_codegen_wb307t_ads_sca_2_out  (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516121601_codegen_wb307t_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516121601_codegen_wb307t_ads_sca_2_out ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - CAST(43.79128122207402 AS DOUBLE PRECISION)) / CAST(26.03562357622511 AS DOUBLE PRECISION) AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - CAST(945.9672833084397 AS DOUBLE PRECISION)) / CAST(461.4552766146446 AS DOUBLE PRECISION) AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - CAST(0.531000909997521 AS DOUBLE PRECISION)) / CAST(0.290186328214479 AS DOUBLE PRECISION) AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - CAST(6.139967152050499 AS DOUBLE PRECISION)) / CAST(3.072917242564058 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516121601_codegen_7zpxy8_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE PRECISION) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE PRECISION) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE PRECISION) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE PRECISION) AS scaler_output_5 
FROM tmp_20180516121601_codegen_wb307t_ads_sca_2_out AS "ADS_sca_2_OUT"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE PRECISION) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE PRECISION) AS sv_0, CAST("Values".sv_1 AS DOUBLE PRECISION) AS sv_1, CAST("Values".sv_2 AS DOUBLE PRECISION) AS sv_2, CAST("Values".sv_3 AS DOUBLE PRECISION) AS sv_3 
FROM (SELECT 0 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.407021547824837 AS DOUBLE PRECISION) AS sv_0, CAST(1.520613475009886 AS DOUBLE PRECISION) AS sv_1, CAST(0.12464927450374 AS DOUBLE PRECISION) AS sv_2, CAST(-0.989564853759975 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 1 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.892179303001427 AS DOUBLE PRECISION) AS sv_0, CAST(1.564525345900712 AS DOUBLE PRECISION) AS sv_1, CAST(-0.142799390283608 AS DOUBLE PRECISION) AS sv_2, CAST(0.400845241861945 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 2 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.128629540716648 AS DOUBLE PRECISION) AS sv_0, CAST(-0.855762437264239 AS DOUBLE PRECISION) AS sv_1, CAST(-1.696627692807715 AS DOUBLE PRECISION) AS sv_2, CAST(-0.508276249018738 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 3 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.32041258639899 AS DOUBLE PRECISION) AS sv_0, CAST(-0.105621488591659 AS DOUBLE PRECISION) AS sv_1, CAST(0.736170121759815 AS DOUBLE PRECISION) AS sv_2, CAST(1.336204659103719 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 4 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.188322837867617 AS DOUBLE PRECISION) AS sv_0, CAST(1.556571202461176 AS DOUBLE PRECISION) AS sv_1, CAST(-0.756591612265666 AS DOUBLE PRECISION) AS sv_2, CAST(-0.490525026050968 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 5 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.715223115868063 AS DOUBLE PRECISION) AS sv_0, CAST(0.183824893669536 AS DOUBLE PRECISION) AS sv_1, CAST(0.626533125970769 AS DOUBLE PRECISION) AS sv_2, CAST(1.38791677943489 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 6 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.177282909524821 AS DOUBLE PRECISION) AS sv_0, CAST(1.484544459149725 AS DOUBLE PRECISION) AS sv_1, CAST(-1.391973403744925 AS DOUBLE PRECISION) AS sv_2, CAST(-0.611167833968932 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 7 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.061839864587315 AS DOUBLE PRECISION) AS sv_0, CAST(0.379833212745227 AS DOUBLE PRECISION) AS sv_1, CAST(0.808251474852461 AS DOUBLE PRECISION) AS sv_2, CAST(0.304112923070517 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 8 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.212861866158679 AS DOUBLE PRECISION) AS sv_0, CAST(-1.75545003256683 AS DOUBLE PRECISION) AS sv_1, CAST(0.40296624747161 AS DOUBLE PRECISION) AS sv_2, CAST(-1.288842312688892 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 9 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.042029624649835 AS DOUBLE PRECISION) AS sv_0, CAST(1.476663845380233 AS DOUBLE PRECISION) AS sv_1, CAST(1.015143043264035 AS DOUBLE PRECISION) AS sv_2, CAST(1.276793817382632 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 10 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.040689933380934 AS DOUBLE PRECISION) AS sv_0, CAST(0.335268489224148 AS DOUBLE PRECISION) AS sv_1, CAST(1.525945585015738 AS DOUBLE PRECISION) AS sv_2, CAST(-1.084780398711336 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 11 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.487632588330126 AS DOUBLE PRECISION) AS sv_0, CAST(0.730080318016083 AS DOUBLE PRECISION) AS sv_1, CAST(-1.2512568460058 AS DOUBLE PRECISION) AS sv_2, CAST(-0.477942828261425 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 12 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.262295051031869 AS DOUBLE PRECISION) AS sv_0, CAST(-1.156436226701534 AS DOUBLE PRECISION) AS sv_1, CAST(-1.469826707772466 AS DOUBLE PRECISION) AS sv_2, CAST(-1.059119640920314 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 13 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.335481404776 AS DOUBLE PRECISION) AS sv_0, CAST(-0.97426350987175 AS DOUBLE PRECISION) AS sv_1, CAST(-0.371647635078974 AS DOUBLE PRECISION) AS sv_2, CAST(0.78110554108292 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 14 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.48689854261959 AS DOUBLE PRECISION) AS sv_0, CAST(-0.932975923252193 AS DOUBLE PRECISION) AS sv_1, CAST(0.009765473610072 AS DOUBLE PRECISION) AS sv_2, CAST(-0.440293998231607 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 15 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(2.157633837700774 AS DOUBLE PRECISION) AS sv_0, CAST(-1.596026640560732 AS DOUBLE PRECISION) AS sv_1, CAST(0.89324094580545 AS DOUBLE PRECISION) AS sv_2, CAST(-1.411580858022389 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 16 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.44027720345453 AS DOUBLE PRECISION) AS sv_0, CAST(0.549777976912687 AS DOUBLE PRECISION) AS sv_1, CAST(0.940805174112 AS DOUBLE PRECISION) AS sv_2, CAST(-0.211304175646292 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 17 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.734401135308558 AS DOUBLE PRECISION) AS sv_0, CAST(-1.061279569066753 AS DOUBLE PRECISION) AS sv_1, CAST(-1.64272067072607 AS DOUBLE PRECISION) AS sv_2, CAST(1.28389871222053 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 18 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.185280428471124 AS DOUBLE PRECISION) AS sv_0, CAST(0.469948210657082 AS DOUBLE PRECISION) AS sv_1, CAST(-1.783277894836552 AS DOUBLE PRECISION) AS sv_2, CAST(0.208534293223346 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 19 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.072806128611992 AS DOUBLE PRECISION) AS sv_0, CAST(-0.011274498105027 AS DOUBLE PRECISION) AS sv_1, CAST(0.158710100039567 AS DOUBLE PRECISION) AS sv_2, CAST(1.366300036238356 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 20 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.686982566521627 AS DOUBLE PRECISION) AS sv_0, CAST(-0.273885133963774 AS DOUBLE PRECISION) AS sv_1, CAST(-1.169037010406918 AS DOUBLE PRECISION) AS sv_2, CAST(0.760063927882357 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 21 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.130653018190199 AS DOUBLE PRECISION) AS sv_0, CAST(1.693815859594952 AS DOUBLE PRECISION) AS sv_1, CAST(-1.809849193272349 AS DOUBLE PRECISION) AS sv_2, CAST(-0.853115053657762 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 22 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.676285216483407 AS DOUBLE PRECISION) AS sv_0, CAST(-0.297652847313058 AS DOUBLE PRECISION) AS sv_1, CAST(0.616666885519552 AS DOUBLE PRECISION) AS sv_2, CAST(1.188639267493352 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 23 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.677296124978698 AS DOUBLE PRECISION) AS sv_0, CAST(-0.622211215414589 AS DOUBLE PRECISION) AS sv_1, CAST(-0.78594258547841 AS DOUBLE PRECISION) AS sv_2, CAST(-0.772226260957586 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 24 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.468587753657723 AS DOUBLE PRECISION) AS sv_0, CAST(0.706265857711276 AS DOUBLE PRECISION) AS sv_1, CAST(-0.915855280051702 AS DOUBLE PRECISION) AS sv_2, CAST(-1.2834679369914 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 25 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.134919529538089 AS DOUBLE PRECISION) AS sv_0, CAST(-1.256353601391958 AS DOUBLE PRECISION) AS sv_1, CAST(1.604777237527494 AS DOUBLE PRECISION) AS sv_2, CAST(-1.458867866105026 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 26 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.677429392157608 AS DOUBLE PRECISION) AS sv_0, CAST(-0.836641293061437 AS DOUBLE PRECISION) AS sv_1, CAST(1.600995138626682 AS DOUBLE PRECISION) AS sv_2, CAST(0.728810958540672 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 27 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.100250214438954 AS DOUBLE PRECISION) AS sv_0, CAST(0.381186639418138 AS DOUBLE PRECISION) AS sv_1, CAST(1.438550616819008 AS DOUBLE PRECISION) AS sv_2, CAST(0.093579329357751 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 28 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.645167022605794 AS DOUBLE PRECISION) AS sv_0, CAST(1.135268744400895 AS DOUBLE PRECISION) AS sv_1, CAST(0.268621569111373 AS DOUBLE PRECISION) AS sv_2, CAST(-1.23764227872756 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 29 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.883913938809592 AS DOUBLE PRECISION) AS sv_0, CAST(-0.210463335500846 AS DOUBLE PRECISION) AS sv_1, CAST(0.465219122686826 AS DOUBLE PRECISION) AS sv_2, CAST(0.730461822885395 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 30 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.303870138217631 AS DOUBLE PRECISION) AS sv_0, CAST(1.5082277717145 AS DOUBLE PRECISION) AS sv_1, CAST(0.608346026197214 AS DOUBLE PRECISION) AS sv_2, CAST(-0.049792963322016 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 31 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.329823427170298 AS DOUBLE PRECISION) AS sv_0, CAST(1.654865584093859 AS DOUBLE PRECISION) AS sv_1, CAST(0.025532976165874 AS DOUBLE PRECISION) AS sv_2, CAST(-0.760252201054222 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 32 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.972890849957712 AS DOUBLE PRECISION) AS sv_0, CAST(0.563817947473381 AS DOUBLE PRECISION) AS sv_1, CAST(-0.964763367678236 AS DOUBLE PRECISION) AS sv_2, CAST(-0.355118790746674 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 33 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.710888619986789 AS DOUBLE PRECISION) AS sv_0, CAST(-0.914407867644047 AS DOUBLE PRECISION) AS sv_1, CAST(0.40580456863468 AS DOUBLE PRECISION) AS sv_2, CAST(-0.755341550199863 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 34 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(2.0227140301827 AS DOUBLE PRECISION) AS sv_0, CAST(0.095909941476596 AS DOUBLE PRECISION) AS sv_1, CAST(-1.198883757742882 AS DOUBLE PRECISION) AS sv_2, CAST(-1.629028734137931 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 35 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.593770432267414 AS DOUBLE PRECISION) AS sv_0, CAST(0.002038778458289 AS DOUBLE PRECISION) AS sv_1, CAST(0.412858567474831 AS DOUBLE PRECISION) AS sv_2, CAST(1.011121496858055 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 36 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.000969568362786 AS DOUBLE PRECISION) AS sv_0, CAST(1.502114679360407 AS DOUBLE PRECISION) AS sv_1, CAST(-0.349173085341533 AS DOUBLE PRECISION) AS sv_2, CAST(0.430917430729315 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 37 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.175416482534578 AS DOUBLE PRECISION) AS sv_0, CAST(1.157357979471062 AS DOUBLE PRECISION) AS sv_1, CAST(1.546077643505364 AS DOUBLE PRECISION) AS sv_2, CAST(1.56148404527743 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 38 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.484816210130276 AS DOUBLE PRECISION) AS sv_0, CAST(-1.279188687067884 AS DOUBLE PRECISION) AS sv_1, CAST(1.069936327649209 AS DOUBLE PRECISION) AS sv_2, CAST(1.204217021484958 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 39 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.61644120598175 AS DOUBLE PRECISION) AS sv_0, CAST(0.513531327146482 AS DOUBLE PRECISION) AS sv_1, CAST(0.1901494810657 AS DOUBLE PRECISION) AS sv_2, CAST(-1.1516753084143 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 40 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.215420405866088 AS DOUBLE PRECISION) AS sv_0, CAST(-1.521343805623405 AS DOUBLE PRECISION) AS sv_1, CAST(-0.404061522441028 AS DOUBLE PRECISION) AS sv_2, CAST(-0.039263686954211 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 41 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.093292998226496 AS DOUBLE PRECISION) AS sv_0, CAST(-1.65872683882678 AS DOUBLE PRECISION) AS sv_1, CAST(0.618284294339369 AS DOUBLE PRECISION) AS sv_2, CAST(1.12998499320808 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 42 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.226484175487996 AS DOUBLE PRECISION) AS sv_0, CAST(0.072751996195975 AS DOUBLE PRECISION) AS sv_1, CAST(-0.643866925958607 AS DOUBLE PRECISION) AS sv_2, CAST(0.178980189047979 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 43 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.827080308115538 AS DOUBLE PRECISION) AS sv_0, CAST(-1.393050135679573 AS DOUBLE PRECISION) AS sv_1, CAST(0.097529019383175 AS DOUBLE PRECISION) AS sv_2, CAST(-0.805339016771322 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 44 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.103975266447476 AS DOUBLE PRECISION) AS sv_0, CAST(-1.171138775311658 AS DOUBLE PRECISION) AS sv_1, CAST(0.137724557426804 AS DOUBLE PRECISION) AS sv_2, CAST(0.271370799103371 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 45 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.06983222981744 AS DOUBLE PRECISION) AS sv_0, CAST(0.663964983922892 AS DOUBLE PRECISION) AS sv_1, CAST(0.744464202028595 AS DOUBLE PRECISION) AS sv_2, CAST(-1.467244646493467 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 46 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.503173227813537 AS DOUBLE PRECISION) AS sv_0, CAST(0.679095067810605 AS DOUBLE PRECISION) AS sv_1, CAST(-0.927914767969166 AS DOUBLE PRECISION) AS sv_2, CAST(-0.088869584414411 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 47 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.340951032968232 AS DOUBLE PRECISION) AS sv_0, CAST(-0.133626606356413 AS DOUBLE PRECISION) AS sv_1, CAST(1.116727246485082 AS DOUBLE PRECISION) AS sv_2, CAST(0.867510325358643 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 48 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.599024705016902 AS DOUBLE PRECISION) AS sv_0, CAST(1.544555244112519 AS DOUBLE PRECISION) AS sv_1, CAST(0.35943557194777 AS DOUBLE PRECISION) AS sv_2, CAST(0.793299685231649 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 49 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.323352579463426 AS DOUBLE PRECISION) AS sv_0, CAST(-0.509150388863134 AS DOUBLE PRECISION) AS sv_1, CAST(-1.072924105292282 AS DOUBLE PRECISION) AS sv_2, CAST(1.134141173251454 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 50 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.2241246362115 AS DOUBLE PRECISION) AS sv_0, CAST(1.512795119938024 AS DOUBLE PRECISION) AS sv_1, CAST(-1.676492473707462 AS DOUBLE PRECISION) AS sv_2, CAST(-1.354123235499923 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 51 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.965886790803339 AS DOUBLE PRECISION) AS sv_0, CAST(-0.80119621990515 AS DOUBLE PRECISION) AS sv_1, CAST(-1.002975179920882 AS DOUBLE PRECISION) AS sv_2, CAST(0.535944005146783 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 52 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.643421690432257 AS DOUBLE PRECISION) AS sv_0, CAST(0.458153752848955 AS DOUBLE PRECISION) AS sv_1, CAST(0.04561705282486 AS DOUBLE PRECISION) AS sv_2, CAST(-0.42841875716131 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 53 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.008171275924262 AS DOUBLE PRECISION) AS sv_0, CAST(1.555954818772083 AS DOUBLE PRECISION) AS sv_1, CAST(-0.399373722832707 AS DOUBLE PRECISION) AS sv_2, CAST(-0.994089115201712 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 54 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.662693251554997 AS DOUBLE PRECISION) AS sv_0, CAST(0.476458598610827 AS DOUBLE PRECISION) AS sv_1, CAST(0.181451435476854 AS DOUBLE PRECISION) AS sv_2, CAST(-1.176214210431826 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 55 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.026701854468432 AS DOUBLE PRECISION) AS sv_0, CAST(-0.028542073748357 AS DOUBLE PRECISION) AS sv_1, CAST(-0.744236708578972 AS DOUBLE PRECISION) AS sv_2, CAST(0.16184278958013 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 56 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.995680004240537 AS DOUBLE PRECISION) AS sv_0, CAST(1.170155976445656 AS DOUBLE PRECISION) AS sv_1, CAST(-1.645167643293654 AS DOUBLE PRECISION) AS sv_2, CAST(0.065852280490364 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 57 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.353002156477134 AS DOUBLE PRECISION) AS sv_0, CAST(0.479373397091272 AS DOUBLE PRECISION) AS sv_1, CAST(-1.088240018135325 AS DOUBLE PRECISION) AS sv_2, CAST(1.426417941145484 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 58 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.301864826245209 AS DOUBLE PRECISION) AS sv_0, CAST(-0.141595509705471 AS DOUBLE PRECISION) AS sv_1, CAST(0.122688847316247 AS DOUBLE PRECISION) AS sv_2, CAST(1.09668931957472 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 59 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.25609745057753 AS DOUBLE PRECISION) AS sv_0, CAST(-1.573495992128003 AS DOUBLE PRECISION) AS sv_1, CAST(0.806979259164098 AS DOUBLE PRECISION) AS sv_2, CAST(0.185938500416681 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 60 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.084825141436289 AS DOUBLE PRECISION) AS sv_0, CAST(-1.106871678746354 AS DOUBLE PRECISION) AS sv_1, CAST(-1.485414738414908 AS DOUBLE PRECISION) AS sv_2, CAST(-1.190410371070792 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 61 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.67632172371631 AS DOUBLE PRECISION) AS sv_0, CAST(-1.476334521640557 AS DOUBLE PRECISION) AS sv_1, CAST(-0.114700857872373 AS DOUBLE PRECISION) AS sv_2, CAST(0.850353846007769 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 62 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.624280289386995 AS DOUBLE PRECISION) AS sv_0, CAST(-1.775508653244122 AS DOUBLE PRECISION) AS sv_1, CAST(-0.656813160988098 AS DOUBLE PRECISION) AS sv_2, CAST(1.195304544325356 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 63 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.990652607900033 AS DOUBLE PRECISION) AS sv_0, CAST(-0.001268779611174 AS DOUBLE PRECISION) AS sv_1, CAST(0.905342065685696 AS DOUBLE PRECISION) AS sv_2, CAST(1.47701117953199 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 64 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.066992408093323 AS DOUBLE PRECISION) AS sv_0, CAST(-0.752446290024242 AS DOUBLE PRECISION) AS sv_1, CAST(-1.628861728957462 AS DOUBLE PRECISION) AS sv_2, CAST(1.277588538039886 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 65 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.314278861233416 AS DOUBLE PRECISION) AS sv_0, CAST(0.228052176609166 AS DOUBLE PRECISION) AS sv_1, CAST(0.305700563413897 AS DOUBLE PRECISION) AS sv_2, CAST(0.710181620860122 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 66 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.202575704433489 AS DOUBLE PRECISION) AS sv_0, CAST(0.806208754598517 AS DOUBLE PRECISION) AS sv_1, CAST(0.759763416271788 AS DOUBLE PRECISION) AS sv_2, CAST(-1.244893750525328 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 67 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.57048806123394 AS DOUBLE PRECISION) AS sv_0, CAST(0.307545754753504 AS DOUBLE PRECISION) AS sv_1, CAST(-0.34381028571106 AS DOUBLE PRECISION) AS sv_2, CAST(1.275255490107648 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 68 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.766853106149782 AS DOUBLE PRECISION) AS sv_0, CAST(0.968758462466923 AS DOUBLE PRECISION) AS sv_1, CAST(1.093851075685232 AS DOUBLE PRECISION) AS sv_2, CAST(1.044468465076998 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 69 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.983310970922164 AS DOUBLE PRECISION) AS sv_0, CAST(-1.515041962798084 AS DOUBLE PRECISION) AS sv_1, CAST(1.393918836611841 AS DOUBLE PRECISION) AS sv_2, CAST(-0.162446226528031 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 70 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.315211856366831 AS DOUBLE PRECISION) AS sv_0, CAST(0.187476481877003 AS DOUBLE PRECISION) AS sv_1, CAST(1.52087960660821 AS DOUBLE PRECISION) AS sv_2, CAST(-1.597675604172523 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 71 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(0.167184401745262 AS DOUBLE PRECISION) AS sv_0, CAST(-0.400704478748343 AS DOUBLE PRECISION) AS sv_1, CAST(-0.770256515182922 AS DOUBLE PRECISION) AS sv_2, CAST(-1.623505149365183 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 72 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.42374116273739 AS DOUBLE PRECISION) AS sv_0, CAST(-0.800637708647506 AS DOUBLE PRECISION) AS sv_1, CAST(0.893866304343535 AS DOUBLE PRECISION) AS sv_2, CAST(0.47054313894926 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 73 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-1.614366862868711 AS DOUBLE PRECISION) AS sv_0, CAST(-0.266548060389542 AS DOUBLE PRECISION) AS sv_1, CAST(1.361433847723701 AS DOUBLE PRECISION) AS sv_2, CAST(1.174351653344988 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 74 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.923065553671842 AS DOUBLE PRECISION) AS sv_0, CAST(-1.460057588221313 AS DOUBLE PRECISION) AS sv_1, CAST(-0.280397076082255 AS DOUBLE PRECISION) AS sv_2, CAST(-1.391523762632961 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 75 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(1.356211602837141 AS DOUBLE PRECISION) AS sv_0, CAST(0.800326548692676 AS DOUBLE PRECISION) AS sv_1, CAST(1.569201904643917 AS DOUBLE PRECISION) AS sv_2, CAST(-0.074356888261481 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 76 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.337961164229412 AS DOUBLE PRECISION) AS sv_0, CAST(-0.573081537507758 AS DOUBLE PRECISION) AS sv_1, CAST(0.283241254346836 AS DOUBLE PRECISION) AS sv_2, CAST(1.577095288586448 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 77 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.381531584993764 AS DOUBLE PRECISION) AS sv_0, CAST(0.21390512132681 AS DOUBLE PRECISION) AS sv_1, CAST(0.755855094168473 AS DOUBLE PRECISION) AS sv_2, CAST(-1.567869367101613 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 78 AS sv_idx, CAST(0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.379870343642091 AS DOUBLE PRECISION) AS sv_0, CAST(0.09217982204037 AS DOUBLE PRECISION) AS sv_1, CAST(1.493872741062738 AS DOUBLE PRECISION) AS sv_2, CAST(-1.083256667060547 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte UNION ALL SELECT 79 AS sv_idx, CAST(-0.1 AS DOUBLE PRECISION) AS dual_coeff, CAST(-0.989584739617695 AS DOUBLE PRECISION) AS sv_0, CAST(-0.183502704494798 AS DOUBLE PRECISION) AS sv_1, CAST(-1.47781135951482 AS DOUBLE PRECISION) AS sv_2, CAST(0.214294088727874 AS DOUBLE PRECISION) AS sv_3 
FROM dummy_cte) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE PRECISION)) + CAST(393.03771388202836 AS DOUBLE PRECISION) AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(least(greatest(-CAST(100.0 AS DOUBLE PRECISION), CAST(-0.25 AS DOUBLE PRECISION) * (power(kernel_input.scaler_output_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_output_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_output_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_output_5 - "SV_data".sv_3, 2))), CAST(100.0 AS DOUBLE PRECISION))) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp