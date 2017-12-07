-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 49.985727402 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 903.114332468 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.410843734428 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.10852513415 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS FLOAT) - 49.985727402) / 26.145185047 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS FLOAT) - 903.114332468) / 382.835971381 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS FLOAT) - 0.410843734428) / 0.267554648239 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS FLOAT) - 6.10852513415) / 3.04260468938 AS scaler_output_5 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.0311383273532 AS dual_coeff, -1.59852268114 AS sv_0, -1.8144737326 AS sv_1, 0.438854420727 AS sv_2, 0.120803547396 AS sv_3 UNION ALL SELECT 1 AS sv_idx, 0.0791814151463 AS dual_coeff, 0.162589025221 AS sv_0, -0.178773611953 AS sv_1, -0.655877435312 AS sv_2, -1.20118914423 AS sv_3 UNION ALL SELECT 2 AS sv_idx, -0.280894886492 AS dual_coeff, 0.20908780025 AS sv_0, 0.960527036271 AS sv_1, -1.29829353298 AS sv_2, 1.58050602451 AS sv_3 UNION ALL SELECT 3 AS sv_idx, -0.0777759674951 AS dual_coeff, 0.352244428307 AS sv_0, 0.685477387843 AS sv_1, 0.565141835592 AS sv_2, -0.190289515376 AS sv_3 UNION ALL SELECT 4 AS sv_idx, -0.531029417729 AS dual_coeff, 1.49352436506 AS sv_0, -0.428111804686 AS sv_1, -1.19339732608 AS sv_2, -1.53553590902 AS sv_3 UNION ALL SELECT 5 AS sv_idx, -0.826775441469 AS dual_coeff, -0.151954395988 AS sv_0, -1.04655912671 AS sv_1, -1.18115433096 AS sv_2, -1.1100870009 AS sv_3 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.402824303814 AS sv_0, -1.62710156917 AS sv_1, -1.52539039571 AS sv_2, 1.32896695023 AS sv_3 UNION ALL SELECT 7 AS sv_idx, 0.641312132545 AS dual_coeff, 0.0469656771418 AS sv_0, -0.525406419246 AS sv_1, -0.63169249468 AS sv_2, -1.66031809075 AS sv_3 UNION ALL SELECT 8 AS sv_idx, 0.0318152661694 AS dual_coeff, 0.408554152474 AS sv_0, -1.45115105674 AS sv_1, -0.380356498061 AS sv_2, -0.215602669131 AS sv_3 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.886580910621 AS sv_0, 1.08915798485 AS sv_1, -1.51818526587 AS sv_2, -0.266438651987 AS sv_3 UNION ALL SELECT 10 AS sv_idx, 0.238493835166 AS dual_coeff, -1.63898012016 AS sv_0, 0.274951173494 AS sv_1, -0.609164672539 AS sv_2, 0.229697912382 AS sv_3 UNION ALL SELECT 11 AS sv_idx, -0.235272256278 AS dual_coeff, 0.76015764955 AS sv_0, -2.0110864821 AS sv_1, 0.541249345332 AS sv_2, 1.46062244308 AS sv_3 UNION ALL SELECT 12 AS sv_idx, 0.183799883868 AS dual_coeff, 0.888639741434 AS sv_0, 1.71701597756 AS sv_1, 2.07187729501 AS sv_2, -0.936564538344 AS sv_3 UNION ALL SELECT 13 AS sv_idx, 0.122075819285 AS dual_coeff, -1.73892108351 AS sv_0, 0.46269455176 AS sv_1, 1.09293169286 AS sv_2, -1.06969512613 AS sv_3 UNION ALL SELECT 14 AS sv_idx, 0.0614483034697 AS dual_coeff, 1.4819889171 AS sv_0, 1.7674636276 AS sv_1, -0.195403789624 AS sv_2, 1.11488029067 AS sv_3 UNION ALL SELECT 15 AS sv_idx, 0.0375405555147 AS dual_coeff, -1.55767201679 AS sv_0, 1.01343811792 AS sv_1, -0.629532303691 AS sv_2, 1.01154204211 AS sv_3 UNION ALL SELECT 16 AS sv_idx, 0.163602976681 AS dual_coeff, 1.87383827257 AS sv_0, -0.71257628212 AS sv_1, -0.556467676869 AS sv_2, 1.39585566394 AS sv_3 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, 0.946157990247 AS sv_0, -0.577026097191 AS sv_1, -0.852703953159 AS sv_2, 1.15872567485 AS sv_3 UNION ALL SELECT 18 AS sv_idx, 0.0993939821897 AS dual_coeff, -1.26979011533 AS sv_0, -0.612969692569 AS sv_1, -0.825953630999 AS sv_2, -0.315337679677 AS sv_3 UNION ALL SELECT 19 AS sv_idx, 0.497631702305 AS dual_coeff, 0.325965071315 AS sv_0, -0.219670977849 AS sv_1, -1.03214037668 AS sv_2, -0.00492098927073 AS sv_3 UNION ALL SELECT 20 AS sv_idx, 0.0192067345814 AS dual_coeff, -0.535843361775 AS sv_0, 0.609018118285 AS sv_1, 2.15590057046 AS sv_2, 0.169037922739 AS sv_3 UNION ALL SELECT 21 AS sv_idx, 0.443197559827 AS dual_coeff, -1.14542940886 AS sv_0, 1.27843656984 AS sv_1, -0.766893418131 AS sv_2, 1.42565079482 AS sv_3 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 1.34621807576 AS sv_0, -0.596518290573 AS sv_1, -1.34405140228 AS sv_2, 1.03301738272 AS sv_3 UNION ALL SELECT 23 AS sv_idx, 0.299280815739 AS dual_coeff, -1.38698641332 AS sv_0, -1.26348014948 AS sv_1, -0.936799957677 AS sv_2, -0.302201543 AS sv_3 UNION ALL SELECT 24 AS sv_idx, 0.118133186052 AS dual_coeff, 1.8689910159 AS sv_0, -0.41296658483 AS sv_1, 1.92952228482 AS sv_2, -1.16496115844 AS sv_3 UNION ALL SELECT 25 AS sv_idx, 0.140788392609 AS dual_coeff, 1.8301574296 AS sv_0, 1.14452999444 AS sv_1, 1.64698010004 AS sv_2, 1.48750777909 AS sv_3 UNION ALL SELECT 26 AS sv_idx, 0.486256385463 AS dual_coeff, -0.0447459679083 AS sv_0, 1.97259604935 AS sv_1, -1.03969133365 AS sv_2, -0.868404462218 AS sv_3 UNION ALL SELECT 27 AS sv_idx, 0.226592537751 AS dual_coeff, -1.04308513566 AS sv_0, -0.906316472447 AS sv_1, 1.93788855068 AS sv_2, 1.47416989663 AS sv_3 UNION ALL SELECT 28 AS sv_idx, 0.0308581577489 AS dual_coeff, 0.805069918782 AS sv_0, -1.64492798054 AS sv_1, -0.701517492104 AS sv_2, 0.50864231907 AS sv_3) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.13049825576 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.25 * (power("ADS_sca_2_OUT".scaler_output_2 - "SV_data".sv_0, 2) + power("ADS_sca_2_OUT".scaler_output_3 - "SV_data".sv_1, 2) + power("ADS_sca_2_OUT".scaler_output_4 - "SV_data".sv_2, 2) + power("ADS_sca_2_OUT".scaler_output_5 - "SV_data".sv_3, 2))) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte