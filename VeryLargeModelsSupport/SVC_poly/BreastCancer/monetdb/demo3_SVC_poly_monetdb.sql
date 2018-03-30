-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12, "Values".sv_13 AS sv_13, "Values".sv_14 AS sv_14, "Values".sv_15 AS sv_15, "Values".sv_16 AS sv_16, "Values".sv_17 AS sv_17, "Values".sv_18 AS sv_18, "Values".sv_19 AS sv_19, "Values".sv_20 AS sv_20, "Values".sv_21 AS sv_21, "Values".sv_22 AS sv_22, "Values".sv_23 AS sv_23, "Values".sv_24 AS sv_24, "Values".sv_25 AS sv_25, "Values".sv_26 AS sv_26, "Values".sv_27 AS sv_27, "Values".sv_28 AS sv_28, "Values".sv_29 AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.0001119609360747e-12 AS dual_coeff, 23.29 AS sv_0, 26.67 AS sv_1, 158.9 AS sv_2, 1685.0 AS sv_3, 0.1141 AS sv_4, 0.2084 AS sv_5, 0.3523 AS sv_6, 0.162 AS sv_7, 0.22 AS sv_8, 0.06229 AS sv_9, 0.5539 AS sv_10, 1.56 AS sv_11, 4.667 AS sv_12, 83.16 AS sv_13, 0.009327 AS sv_14, 0.05121 AS sv_15, 0.08958 AS sv_16, 0.02465 AS sv_17, 0.02175 AS sv_18, 0.005195 AS sv_19, 25.12 AS sv_20, 32.68 AS sv_21, 177.0 AS sv_22, 1986.0 AS sv_23, 0.1536 AS sv_24, 0.4167 AS sv_25, 0.7892 AS sv_26, 0.2733 AS sv_27, 0.3198 AS sv_28, 0.08762 AS sv_29 UNION ALL SELECT 1 AS sv_idx, -3.626771564628653e-11 AS dual_coeff, 14.99 AS sv_0, 25.2 AS sv_1, 95.54 AS sv_2, 698.8 AS sv_3, 0.09387 AS sv_4, 0.05131 AS sv_5, 0.02398 AS sv_6, 0.02899 AS sv_7, 0.1565 AS sv_8, 0.05504 AS sv_9, 1.214 AS sv_10, 2.188 AS sv_11, 8.077 AS sv_12, 106.0 AS sv_13, 0.006883 AS sv_14, 0.01094 AS sv_15, 0.01818 AS sv_16, 0.01917 AS sv_17, 0.007882 AS sv_18, 0.001754 AS sv_19, 14.99 AS sv_20, 25.2 AS sv_21, 95.54 AS sv_22, 698.8 AS sv_23, 0.09387 AS sv_24, 0.05131 AS sv_25, 0.02398 AS sv_26, 0.02899 AS sv_27, 0.1565 AS sv_28, 0.05504 AS sv_29 UNION ALL SELECT 2 AS sv_idx, -1.4911632377202605e-09 AS dual_coeff, 11.76 AS sv_0, 18.14 AS sv_1, 75.0 AS sv_2, 431.1 AS sv_3, 0.09968 AS sv_4, 0.05914 AS sv_5, 0.02685 AS sv_6, 0.03515 AS sv_7, 0.1619 AS sv_8, 0.06287 AS sv_9, 0.645 AS sv_10, 2.105 AS sv_11, 4.138 AS sv_12, 49.11 AS sv_13, 0.005596 AS sv_14, 0.01005 AS sv_15, 0.01272 AS sv_16, 0.01432 AS sv_17, 0.01575 AS sv_18, 0.002758 AS sv_19, 13.36 AS sv_20, 23.39 AS sv_21, 85.1 AS sv_22, 553.6 AS sv_23, 0.1137 AS sv_24, 0.07974 AS sv_25, 0.0612 AS sv_26, 0.0716 AS sv_27, 0.1978 AS sv_28, 0.06915 AS sv_29 UNION ALL SELECT 3 AS sv_idx, -3.897737280881927e-14 AS dual_coeff, 27.22 AS sv_0, 21.87 AS sv_1, 182.1 AS sv_2, 2250.0 AS sv_3, 0.1094 AS sv_4, 0.1914 AS sv_5, 0.2871 AS sv_6, 0.1878 AS sv_7, 0.18 AS sv_8, 0.0577 AS sv_9, 0.8361 AS sv_10, 1.481 AS sv_11, 5.82 AS sv_12, 128.7 AS sv_13, 0.004631 AS sv_14, 0.02537 AS sv_15, 0.03109 AS sv_16, 0.01241 AS sv_17, 0.01575 AS sv_18, 0.002747 AS sv_19, 33.12 AS sv_20, 32.85 AS sv_21, 220.8 AS sv_22, 3216.0 AS sv_23, 0.1472 AS sv_24, 0.4034 AS sv_25, 0.534 AS sv_26, 0.2688 AS sv_27, 0.2856 AS sv_28, 0.08082 AS sv_29 UNION ALL SELECT 4 AS sv_idx, -2.034726652998816e-09 AS dual_coeff, 11.08 AS sv_0, 18.83 AS sv_1, 73.3 AS sv_2, 361.6 AS sv_3, 0.1216 AS sv_4, 0.2154 AS sv_5, 0.1689 AS sv_6, 0.06367 AS sv_7, 0.2196 AS sv_8, 0.0795 AS sv_9, 0.2114 AS sv_10, 1.027 AS sv_11, 1.719 AS sv_12, 13.99 AS sv_13, 0.007405 AS sv_14, 0.04549 AS sv_15, 0.04588 AS sv_16, 0.01339 AS sv_17, 0.01738 AS sv_18, 0.004435 AS sv_19, 13.24 AS sv_20, 32.82 AS sv_21, 91.76 AS sv_22, 508.1 AS sv_23, 0.2184 AS sv_24, 0.9379 AS sv_25, 0.8402 AS sv_26, 0.2524 AS sv_27, 0.4154 AS sv_28, 0.1403 AS sv_29 UNION ALL SELECT 5 AS sv_idx, -5.026532364438376e-13 AS dual_coeff, 21.37 AS sv_0, 15.1 AS sv_1, 141.3 AS sv_2, 1386.0 AS sv_3, 0.1001 AS sv_4, 0.1515 AS sv_5, 0.1932 AS sv_6, 0.1255 AS sv_7, 0.1973 AS sv_8, 0.06183 AS sv_9, 0.3414 AS sv_10, 1.309 AS sv_11, 2.407 AS sv_12, 39.06 AS sv_13, 0.004426 AS sv_14, 0.02675 AS sv_15, 0.03437 AS sv_16, 0.01343 AS sv_17, 0.01675 AS sv_18, 0.004367 AS sv_19, 22.69 AS sv_20, 21.84 AS sv_21, 152.1 AS sv_22, 1535.0 AS sv_23, 0.1192 AS sv_24, 0.284 AS sv_25, 0.4024 AS sv_26, 0.1966 AS sv_27, 0.273 AS sv_28, 0.08666 AS sv_29 UNION ALL SELECT 6 AS sv_idx, -1.1938850660308665e-13 AS dual_coeff, 28.11 AS sv_0, 18.47 AS sv_1, 188.5 AS sv_2, 2499.0 AS sv_3, 0.1142 AS sv_4, 0.1516 AS sv_5, 0.3201 AS sv_6, 0.1595 AS sv_7, 0.1648 AS sv_8, 0.05525 AS sv_9, 2.873 AS sv_10, 1.476 AS sv_11, 21.98 AS sv_12, 525.6 AS sv_13, 0.01345 AS sv_14, 0.02772 AS sv_15, 0.06389 AS sv_16, 0.01407 AS sv_17, 0.04783 AS sv_18, 0.004476 AS sv_19, 28.11 AS sv_20, 18.47 AS sv_21, 188.5 AS sv_22, 2499.0 AS sv_23, 0.1142 AS sv_24, 0.1516 AS sv_25, 0.3201 AS sv_26, 0.1595 AS sv_27, 0.1648 AS sv_28, 0.05525 AS sv_29 UNION ALL SELECT 7 AS sv_idx, 2.941213852671965e-10 AS dual_coeff, 11.62 AS sv_0, 18.18 AS sv_1, 76.38 AS sv_2, 408.8 AS sv_3, 0.1175 AS sv_4, 0.1483 AS sv_5, 0.102 AS sv_6, 0.05564 AS sv_7, 0.1957 AS sv_8, 0.07255 AS sv_9, 0.4101 AS sv_10, 1.74 AS sv_11, 3.027 AS sv_12, 27.85 AS sv_13, 0.01459 AS sv_14, 0.03206 AS sv_15, 0.04961 AS sv_16, 0.01841 AS sv_17, 0.01807 AS sv_18, 0.005217 AS sv_19, 13.36 AS sv_20, 25.4 AS sv_21, 88.14 AS sv_22, 528.1 AS sv_23, 0.178 AS sv_24, 0.2878 AS sv_25, 0.3186 AS sv_26, 0.1416 AS sv_27, 0.266 AS sv_28, 0.0927 AS sv_29 UNION ALL SELECT 8 AS sv_idx, 3.938608428491993e-12 AS dual_coeff, 13.24 AS sv_0, 20.13 AS sv_1, 86.87 AS sv_2, 542.9 AS sv_3, 0.08284 AS sv_4, 0.1223 AS sv_5, 0.101 AS sv_6, 0.02833 AS sv_7, 0.1601 AS sv_8, 0.06432 AS sv_9, 0.281 AS sv_10, 0.8135 AS sv_11, 3.369 AS sv_12, 23.81 AS sv_13, 0.004929 AS sv_14, 0.06657 AS sv_15, 0.07683 AS sv_16, 0.01368 AS sv_17, 0.01526 AS sv_18, 0.008133 AS sv_19, 15.44 AS sv_20, 25.5 AS sv_21, 115.0 AS sv_22, 733.5 AS sv_23, 0.1201 AS sv_24, 0.5646 AS sv_25, 0.6556 AS sv_26, 0.1357 AS sv_27, 0.2845 AS sv_28, 0.1249 AS sv_29 UNION ALL SELECT 9 AS sv_idx, 3.125462632192966e-10 AS dual_coeff, 11.94 AS sv_0, 20.76 AS sv_1, 77.87 AS sv_2, 441.0 AS sv_3, 0.08605 AS sv_4, 0.1011 AS sv_5, 0.06574 AS sv_6, 0.03791 AS sv_7, 0.1588 AS sv_8, 0.06766 AS sv_9, 0.2742 AS sv_10, 1.39 AS sv_11, 3.198 AS sv_12, 21.91 AS sv_13, 0.006719 AS sv_14, 0.05156 AS sv_15, 0.04387 AS sv_16, 0.01633 AS sv_17, 0.01872 AS sv_18, 0.008015 AS sv_19, 13.24 AS sv_20, 27.29 AS sv_21, 92.2 AS sv_22, 546.1 AS sv_23, 0.1116 AS sv_24, 0.2813 AS sv_25, 0.2365 AS sv_26, 0.1155 AS sv_27, 0.2465 AS sv_28, 0.09981 AS sv_29 UNION ALL SELECT 10 AS sv_idx, 2.5381266869328933e-11 AS dual_coeff, 11.36 AS sv_0, 17.57 AS sv_1, 72.49 AS sv_2, 399.8 AS sv_3, 0.08858 AS sv_4, 0.05313 AS sv_5, 0.02783 AS sv_6, 0.021 AS sv_7, 0.1601 AS sv_8, 0.05913 AS sv_9, 0.1916 AS sv_10, 1.555 AS sv_11, 1.359 AS sv_12, 13.66 AS sv_13, 0.005391 AS sv_14, 0.009947 AS sv_15, 0.01163 AS sv_16, 0.005872 AS sv_17, 0.01341 AS sv_18, 0.001659 AS sv_19, 13.05 AS sv_20, 36.32 AS sv_21, 85.07 AS sv_22, 521.3 AS sv_23, 0.1453 AS sv_24, 0.1622 AS sv_25, 0.1811 AS sv_26, 0.08698 AS sv_27, 0.2973 AS sv_28, 0.07745 AS sv_29 UNION ALL SELECT 11 AS sv_idx, 1.9124696875048467e-11 AS dual_coeff, 13.27 AS sv_0, 14.76 AS sv_1, 84.74 AS sv_2, 551.7 AS sv_3, 0.07355 AS sv_4, 0.05055 AS sv_5, 0.03261 AS sv_6, 0.02648 AS sv_7, 0.1386 AS sv_8, 0.05318 AS sv_9, 0.4057 AS sv_10, 1.153 AS sv_11, 2.701 AS sv_12, 36.35 AS sv_13, 0.004481 AS sv_14, 0.01038 AS sv_15, 0.01358 AS sv_16, 0.01082 AS sv_17, 0.01069 AS sv_18, 0.001435 AS sv_19, 16.36 AS sv_20, 22.35 AS sv_21, 104.5 AS sv_22, 830.6 AS sv_23, 0.1006 AS sv_24, 0.1238 AS sv_25, 0.135 AS sv_26, 0.1001 AS sv_27, 0.2027 AS sv_28, 0.06206 AS sv_29 UNION ALL SELECT 12 AS sv_idx, 5.542909682531714e-14 AS dual_coeff, 16.84 AS sv_0, 19.46 AS sv_1, 108.4 AS sv_2, 880.2 AS sv_3, 0.07445 AS sv_4, 0.07223 AS sv_5, 0.0515 AS sv_6, 0.02771 AS sv_7, 0.1844 AS sv_8, 0.05268 AS sv_9, 0.4789 AS sv_10, 2.06 AS sv_11, 3.479 AS sv_12, 46.61 AS sv_13, 0.003443 AS sv_14, 0.02661 AS sv_15, 0.03056 AS sv_16, 0.0111 AS sv_17, 0.0152 AS sv_18, 0.001519 AS sv_19, 18.22 AS sv_20, 28.07 AS sv_21, 120.3 AS sv_22, 1032.0 AS sv_23, 0.08774 AS sv_24, 0.171 AS sv_25, 0.1882 AS sv_26, 0.08436 AS sv_27, 0.2527 AS sv_28, 0.05972 AS sv_29 UNION ALL SELECT 13 AS sv_idx, 1.2919679415034455e-12 AS dual_coeff, 14.34 AS sv_0, 13.47 AS sv_1, 92.51 AS sv_2, 641.2 AS sv_3, 0.09906 AS sv_4, 0.07624 AS sv_5, 0.05724 AS sv_6, 0.04603 AS sv_7, 0.2075 AS sv_8, 0.05448 AS sv_9, 0.522 AS sv_10, 0.8121 AS sv_11, 3.763 AS sv_12, 48.29 AS sv_13, 0.007089 AS sv_14, 0.01428 AS sv_15, 0.0236 AS sv_16, 0.01286 AS sv_17, 0.02266 AS sv_18, 0.001463 AS sv_19, 16.77 AS sv_20, 16.9 AS sv_21, 110.4 AS sv_22, 873.2 AS sv_23, 0.1297 AS sv_24, 0.1525 AS sv_25, 0.1632 AS sv_26, 0.1087 AS sv_27, 0.3062 AS sv_28, 0.06072 AS sv_29 UNION ALL SELECT 14 AS sv_idx, 2.421823994374073e-15 AS dual_coeff, 16.5 AS sv_0, 18.29 AS sv_1, 106.6 AS sv_2, 838.1 AS sv_3, 0.09686 AS sv_4, 0.08468 AS sv_5, 0.05862 AS sv_6, 0.04835 AS sv_7, 0.1495 AS sv_8, 0.05593 AS sv_9, 0.3389 AS sv_10, 1.439 AS sv_11, 2.344 AS sv_12, 33.58 AS sv_13, 0.007257 AS sv_14, 0.01805 AS sv_15, 0.01832 AS sv_16, 0.01033 AS sv_17, 0.01694 AS sv_18, 0.002001 AS sv_19, 18.13 AS sv_20, 25.45 AS sv_21, 117.2 AS sv_22, 1009.0 AS sv_23, 0.1338 AS sv_24, 0.1679 AS sv_25, 0.1663 AS sv_26, 0.09123 AS sv_27, 0.2394 AS sv_28, 0.06469 AS sv_29 UNION ALL SELECT 15 AS sv_idx, 9.633439125590963e-12 AS dual_coeff, 14.41 AS sv_0, 19.73 AS sv_1, 96.03 AS sv_2, 651.0 AS sv_3, 0.08757 AS sv_4, 0.1676 AS sv_5, 0.1362 AS sv_6, 0.06602 AS sv_7, 0.1714 AS sv_8, 0.07192 AS sv_9, 0.8811 AS sv_10, 1.77 AS sv_11, 4.36 AS sv_12, 77.11 AS sv_13, 0.007762 AS sv_14, 0.1064 AS sv_15, 0.0996 AS sv_16, 0.02771 AS sv_17, 0.04077 AS sv_18, 0.02286 AS sv_19, 15.77 AS sv_20, 22.13 AS sv_21, 101.7 AS sv_22, 767.3 AS sv_23, 0.09983 AS sv_24, 0.2472 AS sv_25, 0.222 AS sv_26, 0.1021 AS sv_27, 0.2272 AS sv_28, 0.08799 AS sv_29 UNION ALL SELECT 16 AS sv_idx, 2.5879829240041807e-11 AS dual_coeff, 11.41 AS sv_0, 10.82 AS sv_1, 73.34 AS sv_2, 403.3 AS sv_3, 0.09373 AS sv_4, 0.06685 AS sv_5, 0.03512 AS sv_6, 0.02623 AS sv_7, 0.1667 AS sv_8, 0.06113 AS sv_9, 0.1408 AS sv_10, 0.4607 AS sv_11, 1.103 AS sv_12, 10.5 AS sv_13, 0.00604 AS sv_14, 0.01529 AS sv_15, 0.01514 AS sv_16, 0.00646 AS sv_17, 0.01344 AS sv_18, 0.002206 AS sv_19, 12.82 AS sv_20, 15.97 AS sv_21, 83.74 AS sv_22, 510.5 AS sv_23, 0.1548 AS sv_24, 0.239 AS sv_25, 0.2102 AS sv_26, 0.08958 AS sv_27, 0.3016 AS sv_28, 0.08523 AS sv_29 UNION ALL SELECT 17 AS sv_idx, 9.66633890971809e-15 AS dual_coeff, 15.27 AS sv_0, 12.91 AS sv_1, 98.17 AS sv_2, 725.5 AS sv_3, 0.08182 AS sv_4, 0.0623 AS sv_5, 0.05892 AS sv_6, 0.03157 AS sv_7, 0.1359 AS sv_8, 0.05526 AS sv_9, 0.2134 AS sv_10, 0.3628 AS sv_11, 1.525 AS sv_12, 20.0 AS sv_13, 0.004291 AS sv_14, 0.01236 AS sv_15, 0.01841 AS sv_16, 0.007373 AS sv_17, 0.009539 AS sv_18, 0.001656 AS sv_19, 17.38 AS sv_20, 15.92 AS sv_21, 113.7 AS sv_22, 932.7 AS sv_23, 0.1222 AS sv_24, 0.2186 AS sv_25, 0.2962 AS sv_26, 0.1035 AS sv_27, 0.232 AS sv_28, 0.07474 AS sv_29 UNION ALL SELECT 18 AS sv_idx, 1.1786169745009639e-09 AS dual_coeff, 11.71 AS sv_0, 16.67 AS sv_1, 74.72 AS sv_2, 423.6 AS sv_3, 0.1051 AS sv_4, 0.06095 AS sv_5, 0.03592 AS sv_6, 0.026 AS sv_7, 0.1339 AS sv_8, 0.05945 AS sv_9, 0.4489 AS sv_10, 2.508 AS sv_11, 3.258 AS sv_12, 34.37 AS sv_13, 0.006578 AS sv_14, 0.0138 AS sv_15, 0.02662 AS sv_16, 0.01307 AS sv_17, 0.01359 AS sv_18, 0.003707 AS sv_19, 13.33 AS sv_20, 25.48 AS sv_21, 86.16 AS sv_22, 546.7 AS sv_23, 0.1271 AS sv_24, 0.1028 AS sv_25, 0.1046 AS sv_26, 0.06968 AS sv_27, 0.1712 AS sv_28, 0.07343 AS sv_29 UNION ALL SELECT 19 AS sv_idx, 1.2745293759312497e-10 AS dual_coeff, 11.75 AS sv_0, 20.18 AS sv_1, 76.1 AS sv_2, 419.8 AS sv_3, 0.1089 AS sv_4, 0.1141 AS sv_5, 0.06843 AS sv_6, 0.03738 AS sv_7, 0.1993 AS sv_8, 0.06453 AS sv_9, 0.5018 AS sv_10, 1.693 AS sv_11, 3.926 AS sv_12, 38.34 AS sv_13, 0.009433 AS sv_14, 0.02405 AS sv_15, 0.04167 AS sv_16, 0.01152 AS sv_17, 0.03397 AS sv_18, 0.005061 AS sv_19, 13.32 AS sv_20, 26.21 AS sv_21, 88.91 AS sv_22, 543.9 AS sv_23, 0.1358 AS sv_24, 0.1892 AS sv_25, 0.1956 AS sv_26, 0.07909 AS sv_27, 0.3168 AS sv_28, 0.07987 AS sv_29 UNION ALL SELECT 20 AS sv_idx, 2.6634276520695567e-11 AS dual_coeff, 14.44 AS sv_0, 15.18 AS sv_1, 93.97 AS sv_2, 640.1 AS sv_3, 0.0997 AS sv_4, 0.1021 AS sv_5, 0.08487 AS sv_6, 0.05532 AS sv_7, 0.1724 AS sv_8, 0.06081 AS sv_9, 0.2406 AS sv_10, 0.7394 AS sv_11, 2.12 AS sv_12, 21.2 AS sv_13, 0.005706 AS sv_14, 0.02297 AS sv_15, 0.03114 AS sv_16, 0.01493 AS sv_17, 0.01454 AS sv_18, 0.002528 AS sv_19, 15.85 AS sv_20, 19.85 AS sv_21, 108.6 AS sv_22, 766.9 AS sv_23, 0.1316 AS sv_24, 0.2735 AS sv_25, 0.3103 AS sv_26, 0.1599 AS sv_27, 0.2691 AS sv_28, 0.07683 AS sv_29 UNION ALL SELECT 21 AS sv_idx, 1.539129574601142e-09 AS dual_coeff, 10.82 AS sv_0, 24.21 AS sv_1, 68.89 AS sv_2, 361.6 AS sv_3, 0.08192 AS sv_4, 0.06602 AS sv_5, 0.01548 AS sv_6, 0.00816 AS sv_7, 0.1976 AS sv_8, 0.06328 AS sv_9, 0.5196 AS sv_10, 1.918 AS sv_11, 3.564 AS sv_12, 33.0 AS sv_13, 0.008263 AS sv_14, 0.0187 AS sv_15, 0.01277 AS sv_16, 0.005917 AS sv_17, 0.02466 AS sv_18, 0.002977 AS sv_19, 13.03 AS sv_20, 31.45 AS sv_21, 83.9 AS sv_22, 505.6 AS sv_23, 0.1204 AS sv_24, 0.1633 AS sv_25, 0.06194 AS sv_26, 0.03264 AS sv_27, 0.3059 AS sv_28, 0.07626 AS sv_29) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 524.4605777798735 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.03333333333333333 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9 + "ADS"."Feature_10" * "SV_data".sv_10 + "ADS"."Feature_11" * "SV_data".sv_11 + "ADS"."Feature_12" * "SV_data".sv_12 + "ADS"."Feature_13" * "SV_data".sv_13 + "ADS"."Feature_14" * "SV_data".sv_14 + "ADS"."Feature_15" * "SV_data".sv_15 + "ADS"."Feature_16" * "SV_data".sv_16 + "ADS"."Feature_17" * "SV_data".sv_17 + "ADS"."Feature_18" * "SV_data".sv_18 + "ADS"."Feature_19" * "SV_data".sv_19 + "ADS"."Feature_20" * "SV_data".sv_20 + "ADS"."Feature_21" * "SV_data".sv_21 + "ADS"."Feature_22" * "SV_data".sv_22 + "ADS"."Feature_23" * "SV_data".sv_23 + "ADS"."Feature_24" * "SV_data".sv_24 + "ADS"."Feature_25" * "SV_data".sv_25 + "ADS"."Feature_26" * "SV_data".sv_26 + "ADS"."Feature_27" * "SV_data".sv_27 + "ADS"."Feature_28" * "SV_data".sv_28 + "ADS"."Feature_29" * "SV_data".sv_29) + 0.0, 3) AS dot_prod1 
FROM "BreastCancer" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) AS "Proba_0", 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END))) ELSE -1e+125 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) IS NULL OR 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) > 0.0) THEN log(1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END))) ELSE -1e+125 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", CASE WHEN (1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) <= 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END))) THEN 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) ELSE 1.0 - 1.0 / (1.0 + exp(CASE WHEN (CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538))) THEN -(-(kernel_dp.dot_product * 0.0033824436765161267 + 0.6384355004276538)) ELSE -100.0 END ELSE 100.0 END)) END AS "DecisionProba" 
FROM kernel_dp