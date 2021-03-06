-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_linear_Pipeline
-- Dataset : iris_str_tgt
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180602161743_cfq_ads_imp_1_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_cfq_ads_imp_1_out (
	"KEY" BIGINT, 
	imputer_output_2 DOUBLE, 
	imputer_output_3 DOUBLE, 
	imputer_output_4 DOUBLE, 
	imputer_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_cfq_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180602161743_cfq_ads_imp_1_out SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 5.8474999999999975 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 3.0366666666666657 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 3.8450000000000006 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 1.245 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "IRIS_STR_TGT" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table tmp_20180602161743_j4d_ads_sca_2_out part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_j4d_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_output_2 DOUBLE, 
	scaler_output_3 DOUBLE, 
	scaler_output_4 DOUBLE, 
	scaler_output_5 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_j4d_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180602161743_j4d_ads_sca_2_out SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE) - 5.8474999999999975) / 0.827039146594646 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE) - 3.0366666666666657) / 0.43625935201691934 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE) - 3.8450000000000006) / 1.709817241695732 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE) - 1.245) / 0.7498722113355939 AS scaler_output_5 
FROM tmp_20180602161743_cfq_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table tmp_20180602161743_2mu_kernagg_b0 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_2mu_kernagg_b0 (
	"KEY" BIGINT, 
	"OVO_Class1" VARCHAR(None), 
	"OVO_Class2" VARCHAR(None), 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_2mu_kernagg_b0 part 2. Populate

INSERT INTO tmp_20180602161743_2mu_kernagg_b0 WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM tmp_20180602161743_j4d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"SV_data_CLASS_0_CLASS_1" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.3313142741679064 AS dual_coeff, -0.903826624263008 AS sv_0, 0.6036164774826909 AS sv_1, -1.2545200432489911 AS sv_2, -0.9935026111623527 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, 0.6120084742534154 AS dual_coeff, -1.6293061888888354 AS sv_0, -1.6885979939705589 AS sv_1, -1.4884631748571948 AS sv_2, -1.2602147215415076 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.3132693110986089 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -0.0 AS dual_coeff, 1.1516988088435047 AS sv_0, -0.542490758243934 AS sv_1, 0.5585392267145852 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -0.0 AS dual_coeff, -0.29926032040815137 AS sv_0, -0.08404786395328369 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -0.9163937780265576 AS dual_coeff, -0.903826624263008 AS sv_0, -1.2301550996799087 AS sv_1, -0.4942048655223301 AS sv_2, -0.19336628002488743 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.6885979939705589 AS sv_1, 0.3245960951063821 AS sv_2, 0.07334583035426756 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -0.0 AS dual_coeff, 0.42621924421767715 AS sv_0, -1.917819441115883 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -0.026928970394764388 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.4593765468252338 AS sv_1, -0.31874751681617763 AS sv_2, -0.3267223352144651 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -0.0 AS dual_coeff, 0.06347946190476342 AS sv_0, 0.37439503033736665 AS sv_1, 0.5585392267145852 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.2301550996799087 AS sv_1, 0.6170250096166364 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.3132693110986089 AS sv_1, 0.5000534438125346 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, -0.0 AS dual_coeff, -0.5410868419500932 AS sv_0, -0.08404786395328369 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -0.0 AS dual_coeff, 1.0307855480725336 AS sv_0, -0.08404786395328369 AS sv_1, 0.6755107925186871 AS sv_2, 0.6067700511125775 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -0.0 AS dual_coeff, 1.2726120696144765 AS sv_0, 0.1451735831920415 AS sv_1, 0.6170250096166364 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"kernel_dp_CLASS_0_CLASS_1" AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + -1.5900231216431768 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_0_CLASS_1".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_CLASS_0_CLASS_1".sv_0 + kernel_input.scaler_output_3 * "SV_data_CLASS_0_CLASS_1".sv_1 + kernel_input.scaler_output_4 * "SV_data_CLASS_0_CLASS_1".sv_2 + kernel_input.scaler_output_5 * "SV_data_CLASS_0_CLASS_1".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_0_CLASS_1") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t), 
"kernel_cte_CLASS_0_CLASS_1" AS 
(SELECT "kernel_dp_CLASS_0_CLASS_1"."KEY" AS "KEY", 'CLASS_0' AS "OVO_Class1", 'CLASS_1' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_0_CLASS_1".dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_0_CLASS_1".dot_product, 1.0 / (1.0 + exp(least(greatest(-100.0, -(-((-"kernel_dp_CLASS_0_CLASS_1".dot_product) * -2.2402058146987573 + -0.32283167265481055))), 100.0)))) AS "OVO_Conf" 
FROM "kernel_dp_CLASS_0_CLASS_1")
 SELECT "KernAgg_B0"."KEY", "KernAgg_B0"."OVO_Class1", "KernAgg_B0"."OVO_Class2", "KernAgg_B0"."OVO_Decision", "KernAgg_B0"."OVO_Conf" 
FROM (SELECT "KernAgg_esu_0"."KEY" AS "KEY", "KernAgg_esu_0"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_0"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_0"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_0"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "kernel_cte_CLASS_0_CLASS_1"."KEY" AS "KEY", "kernel_cte_CLASS_0_CLASS_1"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_0_CLASS_1"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_0_CLASS_1"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_0_CLASS_1"."OVO_Conf" AS "OVO_Conf" 
FROM "kernel_cte_CLASS_0_CLASS_1") AS "KernAgg_esu_0") AS "KernAgg_B0"

-- Code For temporary table tmp_20180602161743_2pv_kernagg_b1 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_2pv_kernagg_b1 (
	"KEY" BIGINT, 
	"OVO_Class1" VARCHAR(None), 
	"OVO_Class2" VARCHAR(None), 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_2pv_kernagg_b1 part 2. Populate

INSERT INTO tmp_20180602161743_2pv_kernagg_b1 WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM tmp_20180602161743_j4d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"SV_data_CLASS_0_CLASS_2" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.12171329143501097 AS dual_coeff, -0.903826624263008 AS sv_0, 0.6036164774826909 AS sv_1, -1.2545200432489911 AS sv_2, -0.9935026111623527 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, 0.18557788786333185 AS dual_coeff, -1.6293061888888354 AS sv_0, -1.6885979939705589 AS sv_1, -1.4884631748571948 AS sv_2, -1.2602147215415076 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.08404786395328369 AS sv_1, 0.6170250096166364 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -0.30729117929834293 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.2301550996799087 AS sv_1, 0.38308187800843274 AS sv_2, 0.6067700511125775 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -0.0 AS dual_coeff, 0.7889590265305909 AS sv_0, 0.37439503033736665 AS sv_1, 0.7339965754207377 AS sv_2, 1.0068382166813101 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.7717122053892582 AS sv_1, 0.6170250096166364 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -0.0 AS dual_coeff, 0.06347946190476342 AS sv_0, -0.08404786395328369 AS sv_1, 0.7339965754207377 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.08404786395328369 AS sv_1, 0.5585392267145852 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, -0.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -1.0009336525345833 AS sv_1, 1.026425489930992 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, -0.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.542490758243934 AS sv_1, 0.7339965754207377 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, -0.0 AS dual_coeff, 0.7889590265305909 AS sv_0, -0.08404786395328369 AS sv_1, 0.9679397070289413 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, -0.0 AS dual_coeff, 1.6353518519273904 AS sv_0, -0.08404786395328369 AS sv_1, 1.1433970557350939 AS sv_2, 0.4734139959230002 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, -0.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -1.917819441115883 AS sv_1, 0.6755107925186871 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"kernel_dp_CLASS_0_CLASS_2" AS 
(SELECT t_1."KEY" AS "KEY", t_1.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_1."KEY" AS "KEY", sum(CAST(full_join_data_sv_1.dot_prod1 AS DOUBLE)) + -0.361186144126904 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_0_CLASS_2".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_CLASS_0_CLASS_2".sv_0 + kernel_input.scaler_output_3 * "SV_data_CLASS_0_CLASS_2".sv_1 + kernel_input.scaler_output_4 * "SV_data_CLASS_0_CLASS_2".sv_2 + kernel_input.scaler_output_5 * "SV_data_CLASS_0_CLASS_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_0_CLASS_2") AS full_join_data_sv_1 GROUP BY full_join_data_sv_1."KEY") AS t_1), 
"kernel_cte_CLASS_0_CLASS_2" AS 
(SELECT "kernel_dp_CLASS_0_CLASS_2"."KEY" AS "KEY", 'CLASS_0' AS "OVO_Class1", 'CLASS_2' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_0_CLASS_2".dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_0_CLASS_2".dot_product, 1.0 / (1.0 + exp(least(greatest(-100.0, -(-((-"kernel_dp_CLASS_0_CLASS_2".dot_product) * -2.716963038463082 + -0.16985035688714503))), 100.0)))) AS "OVO_Conf" 
FROM "kernel_dp_CLASS_0_CLASS_2")
 SELECT "KernAgg_B1"."KEY", "KernAgg_B1"."OVO_Class1", "KernAgg_B1"."OVO_Class2", "KernAgg_B1"."OVO_Decision", "KernAgg_B1"."OVO_Conf" 
FROM (SELECT "KernAgg_esu_1"."KEY" AS "KEY", "KernAgg_esu_1"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_1"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_1"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_1"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "kernel_cte_CLASS_0_CLASS_2"."KEY" AS "KEY", "kernel_cte_CLASS_0_CLASS_2"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_0_CLASS_2"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_0_CLASS_2"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_0_CLASS_2"."OVO_Conf" AS "OVO_Conf" 
FROM "kernel_cte_CLASS_0_CLASS_2") AS "KernAgg_esu_1") AS "KernAgg_B1"

-- Code For temporary table tmp_20180602161743_4kx_kernagg_b2 part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_4kx_kernagg_b2 (
	"KEY" BIGINT, 
	"OVO_Class1" VARCHAR(None), 
	"OVO_Class2" VARCHAR(None), 
	"OVO_Decision" BIGINT, 
	"OVO_Conf" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_4kx_kernagg_b2 part 2. Populate

INSERT INTO tmp_20180602161743_4kx_kernagg_b2 WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS DOUBLE) AS scaler_output_5 
FROM tmp_20180602161743_j4d_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"SV_data_CLASS_1_CLASS_2" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3 
FROM (SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.3132693110986089 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, 0.32430979924616193 AS dual_coeff, 1.1516988088435047 AS sv_0, -0.542490758243934 AS sv_1, 0.5585392267145852 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, -0.29926032040815137 AS sv_0, -0.08404786395328369 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, 0.0 AS dual_coeff, -0.903826624263008 AS sv_0, -1.2301550996799087 AS sv_1, -0.4942048655223301 AS sv_2, -0.19336628002488743 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, 0.6962589219847841 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.6885979939705589 AS sv_1, 0.3245960951063821 AS sv_2, 0.07334583035426756 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.42621924421767715 AS sv_0, -1.917819441115883 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, 0.0 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.4593765468252338 AS sv_1, -0.31874751681617763 AS sv_2, -0.3267223352144651 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 0.06347946190476342 AS sv_0, 0.37439503033736665 AS sv_1, 0.5585392267145852 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -1.2301550996799087 AS sv_1, 0.6170250096166364 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, 0.9928455350642991 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.3132693110986089 AS sv_1, 0.5000534438125346 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -0.5410868419500932 AS sv_0, -0.08404786395328369 AS sv_1, 0.38308187800843274 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 1.0307855480725336 AS sv_0, -0.08404786395328369 AS sv_1, 0.6755107925186871 AS sv_2, 0.6067700511125775 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 1.2726120696144765 AS sv_0, 0.1451735831920415 AS sv_1, 0.6170250096166364 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -0.08404786395328369 AS sv_1, 0.6170250096166364 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, -1.1456531458049497 AS sv_0, -1.2301550996799087 AS sv_1, 0.38308187800843274 AS sv_2, 0.6067700511125775 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.7889590265305909 AS sv_0, 0.37439503033736665 AS sv_1, 0.7339965754207377 AS sv_2, 1.0068382166813101 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.7717122053892582 AS sv_1, 0.6170250096166364 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, -1.0 AS dual_coeff, 0.06347946190476342 AS sv_0, -0.08404786395328369 AS sv_1, 0.7339965754207377 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -0.08404786395328369 AS sv_1, 0.5585392267145852 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 0.3053059834467052 AS sv_0, -1.0009336525345833 AS sv_1, 1.026425489930992 AS sv_2, 0.2067018855438449 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.5471325049886481 AS sv_0, -0.542490758243934 AS sv_1, 0.7339965754207377 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, -0.013414256295245043 AS dual_coeff, 0.7889590265305909 AS sv_0, -0.08404786395328369 AS sv_1, 0.9679397070289413 AS sv_2, 0.7401261063021551 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 1.6353518519273904 AS sv_0, -0.08404786395328369 AS sv_1, 1.1433970557350939 AS sv_2, 0.4734139959230002 AS sv_3 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.1843927226757343 AS sv_0, -1.917819441115883 AS sv_1, 0.6755107925186871 AS sv_2, 0.34005794073342255 AS sv_3 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
"kernel_dp_CLASS_1_CLASS_2" AS 
(SELECT t_2."KEY" AS "KEY", t_2.dot_product AS dot_product 
FROM (SELECT full_join_data_sv_2."KEY" AS "KEY", sum(CAST(full_join_data_sv_2.dot_prod1 AS DOUBLE)) + 2.70975831744 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data_CLASS_1_CLASS_2".dual_coeff * (kernel_input.scaler_output_2 * "SV_data_CLASS_1_CLASS_2".sv_0 + kernel_input.scaler_output_3 * "SV_data_CLASS_1_CLASS_2".sv_1 + kernel_input.scaler_output_4 * "SV_data_CLASS_1_CLASS_2".sv_2 + kernel_input.scaler_output_5 * "SV_data_CLASS_1_CLASS_2".sv_3) AS dot_prod1 
FROM kernel_input, "SV_data_CLASS_1_CLASS_2") AS full_join_data_sv_2 GROUP BY full_join_data_sv_2."KEY") AS t_2), 
"kernel_cte_CLASS_1_CLASS_2" AS 
(SELECT "kernel_dp_CLASS_1_CLASS_2"."KEY" AS "KEY", 'CLASS_1' AS "OVO_Class1", 'CLASS_2' AS "OVO_Class2", CASE WHEN (-"kernel_dp_CLASS_1_CLASS_2".dot_product >= 0.0) THEN 1 ELSE 0 END AS "OVO_Decision", coalesce(-"kernel_dp_CLASS_1_CLASS_2".dot_product, 1.0 / (1.0 + exp(least(greatest(-100.0, -(-((-"kernel_dp_CLASS_1_CLASS_2".dot_product) * -2.3906470358625422 + 0.01775661778298516))), 100.0)))) AS "OVO_Conf" 
FROM "kernel_dp_CLASS_1_CLASS_2")
 SELECT "KernAgg_B2"."KEY", "KernAgg_B2"."OVO_Class1", "KernAgg_B2"."OVO_Class2", "KernAgg_B2"."OVO_Decision", "KernAgg_B2"."OVO_Conf" 
FROM (SELECT "KernAgg_esu_2"."KEY" AS "KEY", "KernAgg_esu_2"."OVO_Class1" AS "OVO_Class1", "KernAgg_esu_2"."OVO_Class2" AS "OVO_Class2", "KernAgg_esu_2"."OVO_Decision" AS "OVO_Decision", "KernAgg_esu_2"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "kernel_cte_CLASS_1_CLASS_2"."KEY" AS "KEY", "kernel_cte_CLASS_1_CLASS_2"."OVO_Class1" AS "OVO_Class1", "kernel_cte_CLASS_1_CLASS_2"."OVO_Class2" AS "OVO_Class2", "kernel_cte_CLASS_1_CLASS_2"."OVO_Decision" AS "OVO_Decision", "kernel_cte_CLASS_1_CLASS_2"."OVO_Conf" AS "OVO_Conf" 
FROM "kernel_cte_CLASS_1_CLASS_2") AS "KernAgg_esu_2") AS "KernAgg_B2"

-- Code For temporary table tmp_20180602161743_z5s_kernagg_agg part 1. Create 


CREATE GLOBAL TEMPORARY TABLE tmp_20180602161743_z5s_kernagg_agg (
	"KEY" BIGINT, 
	"OVO_Vote_CLASS_0" BIGINT, 
	"OVO_SumConfidence_CLASS_0" DOUBLE, 
	"OVO_Vote_CLASS_1" BIGINT, 
	"OVO_SumConfidence_CLASS_1" DOUBLE, 
	"OVO_Vote_CLASS_2" BIGINT, 
	"OVO_SumConfidence_CLASS_2" DOUBLE, 
	max_abs_confidence DOUBLE, 
	"OVO_Scale" DOUBLE, 
	"Score_CLASS_0" DOUBLE, 
	"Score_CLASS_1" DOUBLE, 
	"Score_CLASS_2" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180602161743_z5s_kernagg_agg part 2. Populate

INSERT INTO tmp_20180602161743_z5s_kernagg_agg WITH "KernAgg_Union" AS 
(SELECT "KernAgg_EnsembleUnion"."KEY" AS "KEY", "KernAgg_EnsembleUnion"."OVO_Class1" AS "OVO_Class1", "KernAgg_EnsembleUnion"."OVO_Class2" AS "OVO_Class2", "KernAgg_EnsembleUnion"."OVO_Decision" AS "OVO_Decision", "KernAgg_EnsembleUnion"."OVO_Conf" AS "OVO_Conf" 
FROM (SELECT "KernAgg_B0"."KEY" AS "KEY", "KernAgg_B0"."OVO_Class1" AS "OVO_Class1", "KernAgg_B0"."OVO_Class2" AS "OVO_Class2", "KernAgg_B0"."OVO_Decision" AS "OVO_Decision", "KernAgg_B0"."OVO_Conf" AS "OVO_Conf" 
FROM tmp_20180602161743_2mu_kernagg_b0 AS "KernAgg_B0" UNION ALL SELECT "KernAgg_B1"."KEY" AS "KEY", "KernAgg_B1"."OVO_Class1" AS "OVO_Class1", "KernAgg_B1"."OVO_Class2" AS "OVO_Class2", "KernAgg_B1"."OVO_Decision" AS "OVO_Decision", "KernAgg_B1"."OVO_Conf" AS "OVO_Conf" 
FROM tmp_20180602161743_2pv_kernagg_b1 AS "KernAgg_B1" UNION ALL SELECT "KernAgg_B2"."KEY" AS "KEY", "KernAgg_B2"."OVO_Class1" AS "OVO_Class1", "KernAgg_B2"."OVO_Class2" AS "OVO_Class2", "KernAgg_B2"."OVO_Decision" AS "OVO_Decision", "KernAgg_B2"."OVO_Conf" AS "OVO_Conf" 
FROM tmp_20180602161743_4kx_kernagg_b2 AS "KernAgg_B2") AS "KernAgg_EnsembleUnion"), 
"OVO_Votes" AS 
(SELECT "Votes_Sel"."KEY" AS "KEY", "Votes_Sel"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "Votes_Sel"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "Votes_Sel"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "Votes_Sel"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "Votes_Sel"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "Votes_Sel"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2" 
FROM (SELECT "KernAgg_Union"."KEY" AS "KEY", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_0') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_0') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_0') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_0", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_1') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_1') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_1') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_1", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END * (CASE WHEN ("KernAgg_Union"."OVO_Decision" = 0 AND "KernAgg_Union"."OVO_Class1" = 'CLASS_2') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Decision" = 1 AND "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END)) AS "OVO_Vote_CLASS_2", sum(CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2' OR "KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END * "KernAgg_Union"."OVO_Conf" * (-CASE WHEN ("KernAgg_Union"."OVO_Class1" = 'CLASS_2') THEN 1 ELSE 0 END + CASE WHEN ("KernAgg_Union"."OVO_Class2" = 'CLASS_2') THEN 1 ELSE 0 END)) AS "OVO_SumConfidence_CLASS_2" 
FROM "KernAgg_Union" GROUP BY "KernAgg_Union"."KEY") AS "Votes_Sel"), 
"OVO_SumConf_CTE" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."OVO_SumConfidence" AS DOUBLE) AS "OVO_SumConfidence" 
FROM (SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence" 
FROM "OVO_Votes" UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence" 
FROM "OVO_Votes" UNION ALL SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence" 
FROM "OVO_Votes") AS "Values"), 
"MinMaxConf" AS 
(SELECT min("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_min_conf", max("OVO_SumConf_CTE"."OVO_SumConfidence") AS "OVO_max_conf" 
FROM "OVO_SumConf_CTE"), 
"OVO_Votes_WithScale" AS 
(SELECT "OVO_Votes"."KEY" AS "KEY", "OVO_Votes"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "OVO_Votes"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "OVO_Votes"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "OVO_Votes"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "OVO_Votes"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "OVO_Votes"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2", CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE) AS max_abs_confidence, CASE WHEN ("MinMaxConf"."OVO_max_conf" - "MinMaxConf"."OVO_min_conf" <= 0.0) THEN 0.0 ELSE 0.4999999999999998 / CAST(CASE WHEN (abs("MinMaxConf"."OVO_min_conf") >= abs("MinMaxConf"."OVO_max_conf")) THEN abs("MinMaxConf"."OVO_min_conf") ELSE abs("MinMaxConf"."OVO_max_conf") END AS DOUBLE) END AS "OVO_Scale" 
FROM "OVO_Votes", "MinMaxConf")
 SELECT "KernAgg_agg"."KEY", "KernAgg_agg"."OVO_Vote_CLASS_0", "KernAgg_agg"."OVO_SumConfidence_CLASS_0", "KernAgg_agg"."OVO_Vote_CLASS_1", "KernAgg_agg"."OVO_SumConfidence_CLASS_1", "KernAgg_agg"."OVO_Vote_CLASS_2", "KernAgg_agg"."OVO_SumConfidence_CLASS_2", "KernAgg_agg".max_abs_confidence, "KernAgg_agg"."OVO_Scale", "KernAgg_agg"."Score_CLASS_0", "KernAgg_agg"."Score_CLASS_1", "KernAgg_agg"."Score_CLASS_2" 
FROM (SELECT "OVO_Votes_WithScale"."KEY" AS "KEY", "OVO_Votes_WithScale"."OVO_Vote_CLASS_0" AS "OVO_Vote_CLASS_0", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_0" AS "OVO_SumConfidence_CLASS_0", "OVO_Votes_WithScale"."OVO_Vote_CLASS_1" AS "OVO_Vote_CLASS_1", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_1" AS "OVO_SumConfidence_CLASS_1", "OVO_Votes_WithScale"."OVO_Vote_CLASS_2" AS "OVO_Vote_CLASS_2", "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_2" AS "OVO_SumConfidence_CLASS_2", "OVO_Votes_WithScale".max_abs_confidence AS max_abs_confidence, "OVO_Votes_WithScale"."OVO_Scale" AS "OVO_Scale", "OVO_Votes_WithScale"."OVO_Vote_CLASS_0" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_0" AS "Score_CLASS_0", "OVO_Votes_WithScale"."OVO_Vote_CLASS_1" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_1" AS "Score_CLASS_1", "OVO_Votes_WithScale"."OVO_Vote_CLASS_2" + "OVO_Votes_WithScale"."OVO_Scale" * "OVO_Votes_WithScale"."OVO_SumConfidence_CLASS_2" AS "Score_CLASS_2" 
FROM "OVO_Votes_WithScale") AS "KernAgg_agg"

-- Model deployment code

WITH orig_cte AS 
(SELECT "KernAgg_agg"."KEY" AS "KEY", "KernAgg_agg"."Score_CLASS_0" AS "Score_CLASS_0", "KernAgg_agg"."Score_CLASS_1" AS "Score_CLASS_1", "KernAgg_agg"."Score_CLASS_2" AS "Score_CLASS_2", CAST(NULL AS DOUBLE) AS "Proba_CLASS_0", CAST(NULL AS DOUBLE) AS "Proba_CLASS_1", CAST(NULL AS DOUBLE) AS "Proba_CLASS_2", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_0", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_1", CAST(NULL AS DOUBLE) AS "LogProba_CLASS_2", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM tmp_20180602161743_z5s_kernagg_agg AS "KernAgg_agg"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_0' AS class, orig_cte."LogProba_CLASS_0" AS "LogProba", orig_cte."Proba_CLASS_0" AS "Proba", orig_cte."Score_CLASS_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_1' AS class, orig_cte."LogProba_CLASS_1" AS "LogProba", orig_cte."Proba_CLASS_1" AS "Proba", orig_cte."Score_CLASS_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 'CLASS_2' AS class, orig_cte."LogProba_CLASS_2" AS "LogProba", orig_cte."Proba_CLASS_2" AS "Proba", orig_cte."Score_CLASS_2" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_CLASS_0" AS "Score_CLASS_0", orig_cte."Score_CLASS_1" AS "Score_CLASS_1", orig_cte."Score_CLASS_2" AS "Score_CLASS_2", orig_cte."Proba_CLASS_0" AS "Proba_CLASS_0", orig_cte."Proba_CLASS_1" AS "Proba_CLASS_1", orig_cte."Proba_CLASS_2" AS "Proba_CLASS_2", orig_cte."LogProba_CLASS_0" AS "LogProba_CLASS_0", orig_cte."LogProba_CLASS_1" AS "LogProba_CLASS_1", orig_cte."LogProba_CLASS_2" AS "LogProba_CLASS_2", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_CLASS_0" AS "Score_CLASS_0", score_max."Score_CLASS_1" AS "Score_CLASS_1", score_max."Score_CLASS_2" AS "Score_CLASS_2", score_max."Proba_CLASS_0" AS "Proba_CLASS_0", score_max."Proba_CLASS_1" AS "Proba_CLASS_1", score_max."Proba_CLASS_2" AS "Proba_CLASS_2", score_max."LogProba_CLASS_0" AS "LogProba_CLASS_0", score_max."LogProba_CLASS_1" AS "LogProba_CLASS_1", score_max."LogProba_CLASS_2" AS "LogProba_CLASS_2", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_CLASS_0" AS "Score_CLASS_0", arg_max_cte."Score_CLASS_1" AS "Score_CLASS_1", arg_max_cte."Score_CLASS_2" AS "Score_CLASS_2", arg_max_cte."Proba_CLASS_0" AS "Proba_CLASS_0", arg_max_cte."Proba_CLASS_1" AS "Proba_CLASS_1", arg_max_cte."Proba_CLASS_2" AS "Proba_CLASS_2", CASE WHEN (arg_max_cte."Proba_CLASS_0" IS NULL OR arg_max_cte."Proba_CLASS_0" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_0") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_0", CASE WHEN (arg_max_cte."Proba_CLASS_1" IS NULL OR arg_max_cte."Proba_CLASS_1" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_1") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_1", CASE WHEN (arg_max_cte."Proba_CLASS_2" IS NULL OR arg_max_cte."Proba_CLASS_2" > 0.0) THEN ln(arg_max_cte."Proba_CLASS_2") ELSE -1.79769313486231e+308 END AS "LogProba_CLASS_2", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 'CLASS_0') THEN arg_max_cte."Proba_CLASS_0" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_1') THEN arg_max_cte."Proba_CLASS_1" WHEN (arg_max_cte."arg_max_Score" = 'CLASS_2') THEN arg_max_cte."Proba_CLASS_2" END AS "DecisionProba" 
FROM arg_max_cte