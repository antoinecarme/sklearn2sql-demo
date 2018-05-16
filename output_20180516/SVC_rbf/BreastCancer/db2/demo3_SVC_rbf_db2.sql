-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_rbf
-- Dataset : BreastCancer
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE) AS "Feature_29", CAST("ADS"."TGT" AS DOUBLE) AS "TGT" 
FROM "BREASTCANCER" AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3, CAST("Values".sv_4 AS DOUBLE) AS sv_4, CAST("Values".sv_5 AS DOUBLE) AS sv_5, CAST("Values".sv_6 AS DOUBLE) AS sv_6, CAST("Values".sv_7 AS DOUBLE) AS sv_7, CAST("Values".sv_8 AS DOUBLE) AS sv_8, CAST("Values".sv_9 AS DOUBLE) AS sv_9, CAST("Values".sv_10 AS DOUBLE) AS sv_10, CAST("Values".sv_11 AS DOUBLE) AS sv_11, CAST("Values".sv_12 AS DOUBLE) AS sv_12, CAST("Values".sv_13 AS DOUBLE) AS sv_13, CAST("Values".sv_14 AS DOUBLE) AS sv_14, CAST("Values".sv_15 AS DOUBLE) AS sv_15, CAST("Values".sv_16 AS DOUBLE) AS sv_16, CAST("Values".sv_17 AS DOUBLE) AS sv_17, CAST("Values".sv_18 AS DOUBLE) AS sv_18, CAST("Values".sv_19 AS DOUBLE) AS sv_19, CAST("Values".sv_20 AS DOUBLE) AS sv_20, CAST("Values".sv_21 AS DOUBLE) AS sv_21, CAST("Values".sv_22 AS DOUBLE) AS sv_22, CAST("Values".sv_23 AS DOUBLE) AS sv_23, CAST("Values".sv_24 AS DOUBLE) AS sv_24, CAST("Values".sv_25 AS DOUBLE) AS sv_25, CAST("Values".sv_26 AS DOUBLE) AS sv_26, CAST("Values".sv_27 AS DOUBLE) AS sv_27, CAST("Values".sv_28 AS DOUBLE) AS sv_28, CAST("Values".sv_29 AS DOUBLE) AS sv_29 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 13.77 AS sv_0, 22.29 AS sv_1, 90.63 AS sv_2, 588.9 AS sv_3, 0.12 AS sv_4, 0.1267 AS sv_5, 0.1385 AS sv_6, 0.06526 AS sv_7, 0.1834 AS sv_8, 0.06877 AS sv_9, 0.6191 AS sv_10, 2.112 AS sv_11, 4.906 AS sv_12, 49.7 AS sv_13, 0.0138 AS sv_14, 0.03348 AS sv_15, 0.04665 AS sv_16, 0.0206 AS sv_17, 0.02689 AS sv_18, 0.004306 AS sv_19, 16.39 AS sv_20, 34.01 AS sv_21, 111.6 AS sv_22, 806.9 AS sv_23, 0.1737 AS sv_24, 0.3122 AS sv_25, 0.3809 AS sv_26, 0.1673 AS sv_27, 0.308 AS sv_28, 0.09333 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 19.53 AS sv_0, 18.9 AS sv_1, 129.5 AS sv_2, 1217.0 AS sv_3, 0.115 AS sv_4, 0.1642 AS sv_5, 0.2197 AS sv_6, 0.1062 AS sv_7, 0.1792 AS sv_8, 0.06552 AS sv_9, 1.111 AS sv_10, 1.161 AS sv_11, 7.237 AS sv_12, 133.0 AS sv_13, 0.006056 AS sv_14, 0.03203 AS sv_15, 0.05638 AS sv_16, 0.01733 AS sv_17, 0.01884 AS sv_18, 0.004787 AS sv_19, 25.93 AS sv_20, 26.24 AS sv_21, 171.1 AS sv_22, 2053.0 AS sv_23, 0.1495 AS sv_24, 0.4116 AS sv_25, 0.6121 AS sv_26, 0.198 AS sv_27, 0.2968 AS sv_28, 0.09929 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 13.82 AS sv_0, 24.49 AS sv_1, 92.33 AS sv_2, 595.9 AS sv_3, 0.1162 AS sv_4, 0.1681 AS sv_5, 0.1357 AS sv_6, 0.06759 AS sv_7, 0.2275 AS sv_8, 0.07237 AS sv_9, 0.4751 AS sv_10, 1.528 AS sv_11, 2.974 AS sv_12, 39.05 AS sv_13, 0.00968 AS sv_14, 0.03856 AS sv_15, 0.03476 AS sv_16, 0.01616 AS sv_17, 0.02434 AS sv_18, 0.006995 AS sv_19, 16.01 AS sv_20, 32.94 AS sv_21, 106.0 AS sv_22, 788.0 AS sv_23, 0.1794 AS sv_24, 0.3966 AS sv_25, 0.3381 AS sv_26, 0.1521 AS sv_27, 0.3651 AS sv_28, 0.1183 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 20.92 AS sv_0, 25.09 AS sv_1, 143.0 AS sv_2, 1347.0 AS sv_3, 0.1099 AS sv_4, 0.2236 AS sv_5, 0.3174 AS sv_6, 0.1474 AS sv_7, 0.2149 AS sv_8, 0.06879 AS sv_9, 0.9622 AS sv_10, 1.026 AS sv_11, 8.758 AS sv_12, 118.8 AS sv_13, 0.006399 AS sv_14, 0.0431 AS sv_15, 0.07845 AS sv_16, 0.02624 AS sv_17, 0.02057 AS sv_18, 0.006213 AS sv_19, 24.29 AS sv_20, 29.41 AS sv_21, 179.1 AS sv_22, 1819.0 AS sv_23, 0.1407 AS sv_24, 0.4186 AS sv_25, 0.6599 AS sv_26, 0.2542 AS sv_27, 0.2929 AS sv_28, 0.09873 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 16.26 AS sv_0, 21.88 AS sv_1, 107.5 AS sv_2, 826.8 AS sv_3, 0.1165 AS sv_4, 0.1283 AS sv_5, 0.1799 AS sv_6, 0.07981 AS sv_7, 0.1869 AS sv_8, 0.06532 AS sv_9, 0.5706 AS sv_10, 1.457 AS sv_11, 2.961 AS sv_12, 57.72 AS sv_13, 0.01056 AS sv_14, 0.03756 AS sv_15, 0.05839 AS sv_16, 0.01186 AS sv_17, 0.04022 AS sv_18, 0.006187 AS sv_19, 17.73 AS sv_20, 25.21 AS sv_21, 113.7 AS sv_22, 975.2 AS sv_23, 0.1426 AS sv_24, 0.2116 AS sv_25, 0.3344 AS sv_26, 0.1047 AS sv_27, 0.2736 AS sv_28, 0.07953 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 15.49 AS sv_0, 19.97 AS sv_1, 102.4 AS sv_2, 744.7 AS sv_3, 0.116 AS sv_4, 0.1562 AS sv_5, 0.1891 AS sv_6, 0.09113 AS sv_7, 0.1929 AS sv_8, 0.06744 AS sv_9, 0.647 AS sv_10, 1.331 AS sv_11, 4.675 AS sv_12, 66.91 AS sv_13, 0.007269 AS sv_14, 0.02928 AS sv_15, 0.04972 AS sv_16, 0.01639 AS sv_17, 0.01852 AS sv_18, 0.004232 AS sv_19, 21.2 AS sv_20, 29.41 AS sv_21, 142.1 AS sv_22, 1359.0 AS sv_23, 0.1681 AS sv_24, 0.3913 AS sv_25, 0.5553 AS sv_26, 0.2121 AS sv_27, 0.3187 AS sv_28, 0.1019 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 17.57 AS sv_0, 15.05 AS sv_1, 115.0 AS sv_2, 955.1 AS sv_3, 0.09847 AS sv_4, 0.1157 AS sv_5, 0.09875 AS sv_6, 0.07953 AS sv_7, 0.1739 AS sv_8, 0.06149 AS sv_9, 0.6003 AS sv_10, 0.8225 AS sv_11, 4.655 AS sv_12, 61.1 AS sv_13, 0.005627 AS sv_14, 0.03033 AS sv_15, 0.03407 AS sv_16, 0.01354 AS sv_17, 0.01925 AS sv_18, 0.003742 AS sv_19, 20.01 AS sv_20, 19.52 AS sv_21, 134.9 AS sv_22, 1227.0 AS sv_23, 0.1255 AS sv_24, 0.2812 AS sv_25, 0.2489 AS sv_26, 0.1456 AS sv_27, 0.2756 AS sv_28, 0.07919 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 13.61 AS sv_0, 24.69 AS sv_1, 87.76 AS sv_2, 572.6 AS sv_3, 0.09258 AS sv_4, 0.07862 AS sv_5, 0.05285 AS sv_6, 0.03085 AS sv_7, 0.1761 AS sv_8, 0.0613 AS sv_9, 0.231 AS sv_10, 1.005 AS sv_11, 1.752 AS sv_12, 19.83 AS sv_13, 0.004088 AS sv_14, 0.01174 AS sv_15, 0.01796 AS sv_16, 0.00688 AS sv_17, 0.01323 AS sv_18, 0.001465 AS sv_19, 16.89 AS sv_20, 35.64 AS sv_21, 113.2 AS sv_22, 848.7 AS sv_23, 0.1471 AS sv_24, 0.2884 AS sv_25, 0.3796 AS sv_26, 0.1329 AS sv_27, 0.347 AS sv_28, 0.079 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 18.03 AS sv_0, 16.85 AS sv_1, 117.5 AS sv_2, 990.0 AS sv_3, 0.08947 AS sv_4, 0.1232 AS sv_5, 0.109 AS sv_6, 0.06254 AS sv_7, 0.172 AS sv_8, 0.0578 AS sv_9, 0.2986 AS sv_10, 0.5906 AS sv_11, 1.921 AS sv_12, 35.77 AS sv_13, 0.004117 AS sv_14, 0.0156 AS sv_15, 0.02975 AS sv_16, 0.009753 AS sv_17, 0.01295 AS sv_18, 0.002436 AS sv_19, 20.38 AS sv_20, 22.02 AS sv_21, 133.3 AS sv_22, 1292.0 AS sv_23, 0.1263 AS sv_24, 0.2666 AS sv_25, 0.429 AS sv_26, 0.1535 AS sv_27, 0.2842 AS sv_28, 0.08225 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 19.07 AS sv_0, 24.81 AS sv_1, 128.3 AS sv_2, 1104.0 AS sv_3, 0.09081 AS sv_4, 0.219 AS sv_5, 0.2107 AS sv_6, 0.09961 AS sv_7, 0.231 AS sv_8, 0.06343 AS sv_9, 0.9811 AS sv_10, 1.666 AS sv_11, 8.83 AS sv_12, 104.9 AS sv_13, 0.006548 AS sv_14, 0.1006 AS sv_15, 0.09723 AS sv_16, 0.02638 AS sv_17, 0.05333 AS sv_18, 0.007646 AS sv_19, 24.09 AS sv_20, 33.17 AS sv_21, 177.4 AS sv_22, 1651.0 AS sv_23, 0.1247 AS sv_24, 0.7444 AS sv_25, 0.7242 AS sv_26, 0.2493 AS sv_27, 0.467 AS sv_28, 0.1038 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 13.98 AS sv_0, 19.62 AS sv_1, 91.12 AS sv_2, 599.5 AS sv_3, 0.106 AS sv_4, 0.1133 AS sv_5, 0.1126 AS sv_6, 0.06463 AS sv_7, 0.1669 AS sv_8, 0.06544 AS sv_9, 0.2208 AS sv_10, 0.9533 AS sv_11, 1.602 AS sv_12, 18.85 AS sv_13, 0.005314 AS sv_14, 0.01791 AS sv_15, 0.02185 AS sv_16, 0.009567 AS sv_17, 0.01223 AS sv_18, 0.002846 AS sv_19, 17.04 AS sv_20, 30.8 AS sv_21, 113.9 AS sv_22, 869.3 AS sv_23, 0.1613 AS sv_24, 0.3568 AS sv_25, 0.4069 AS sv_26, 0.1827 AS sv_27, 0.3179 AS sv_28, 0.1055 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 17.06 AS sv_0, 21.0 AS sv_1, 111.8 AS sv_2, 918.6 AS sv_3, 0.1119 AS sv_4, 0.1056 AS sv_5, 0.1508 AS sv_6, 0.09934 AS sv_7, 0.1727 AS sv_8, 0.06071 AS sv_9, 0.8161 AS sv_10, 2.129 AS sv_11, 6.076 AS sv_12, 87.17 AS sv_13, 0.006455 AS sv_14, 0.01797 AS sv_15, 0.04502 AS sv_16, 0.01744 AS sv_17, 0.01829 AS sv_18, 0.003733 AS sv_19, 20.99 AS sv_20, 33.15 AS sv_21, 143.2 AS sv_22, 1362.0 AS sv_23, 0.1449 AS sv_24, 0.2053 AS sv_25, 0.392 AS sv_26, 0.1827 AS sv_27, 0.2623 AS sv_28, 0.07599 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 14.45 AS sv_0, 20.22 AS sv_1, 94.49 AS sv_2, 642.7 AS sv_3, 0.09872 AS sv_4, 0.1206 AS sv_5, 0.118 AS sv_6, 0.0598 AS sv_7, 0.195 AS sv_8, 0.06466 AS sv_9, 0.2092 AS sv_10, 0.6509 AS sv_11, 1.446 AS sv_12, 19.42 AS sv_13, 0.004044 AS sv_14, 0.01597 AS sv_15, 0.02 AS sv_16, 0.007303 AS sv_17, 0.01522 AS sv_18, 0.001976 AS sv_19, 18.33 AS sv_20, 30.12 AS sv_21, 117.9 AS sv_22, 1044.0 AS sv_23, 0.1552 AS sv_24, 0.4056 AS sv_25, 0.4967 AS sv_26, 0.1838 AS sv_27, 0.4753 AS sv_28, 0.1013 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 16.13 AS sv_0, 20.68 AS sv_1, 108.1 AS sv_2, 798.8 AS sv_3, 0.117 AS sv_4, 0.2022 AS sv_5, 0.1722 AS sv_6, 0.1028 AS sv_7, 0.2164 AS sv_8, 0.07356 AS sv_9, 0.5692 AS sv_10, 1.073 AS sv_11, 3.854 AS sv_12, 54.18 AS sv_13, 0.007026 AS sv_14, 0.02501 AS sv_15, 0.03188 AS sv_16, 0.01297 AS sv_17, 0.01689 AS sv_18, 0.004142 AS sv_19, 20.96 AS sv_20, 31.48 AS sv_21, 136.8 AS sv_22, 1315.0 AS sv_23, 0.1789 AS sv_24, 0.4233 AS sv_25, 0.4784 AS sv_26, 0.2073 AS sv_27, 0.3706 AS sv_28, 0.1142 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 17.27 AS sv_0, 25.42 AS sv_1, 112.4 AS sv_2, 928.8 AS sv_3, 0.08331 AS sv_4, 0.1109 AS sv_5, 0.1204 AS sv_6, 0.05736 AS sv_7, 0.1467 AS sv_8, 0.05407 AS sv_9, 0.51 AS sv_10, 1.679 AS sv_11, 3.283 AS sv_12, 58.38 AS sv_13, 0.008109 AS sv_14, 0.04308 AS sv_15, 0.04942 AS sv_16, 0.01742 AS sv_17, 0.01594 AS sv_18, 0.003739 AS sv_19, 20.38 AS sv_20, 35.46 AS sv_21, 132.8 AS sv_22, 1284.0 AS sv_23, 0.1436 AS sv_24, 0.4122 AS sv_25, 0.5036 AS sv_26, 0.1739 AS sv_27, 0.25 AS sv_28, 0.07944 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 18.08 AS sv_0, 21.84 AS sv_1, 117.4 AS sv_2, 1024.0 AS sv_3, 0.07371 AS sv_4, 0.08642 AS sv_5, 0.1103 AS sv_6, 0.05778 AS sv_7, 0.177 AS sv_8, 0.0534 AS sv_9, 0.6362 AS sv_10, 1.305 AS sv_11, 4.312 AS sv_12, 76.36 AS sv_13, 0.00553 AS sv_14, 0.05296 AS sv_15, 0.0611 AS sv_16, 0.01444 AS sv_17, 0.0214 AS sv_18, 0.005036 AS sv_19, 19.76 AS sv_20, 24.7 AS sv_21, 129.1 AS sv_22, 1228.0 AS sv_23, 0.08822 AS sv_24, 0.1963 AS sv_25, 0.2535 AS sv_26, 0.09181 AS sv_27, 0.2369 AS sv_28, 0.06558 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, 0.4708973981952312 AS dual_coeff, 8.671 AS sv_0, 14.45 AS sv_1, 54.42 AS sv_2, 227.2 AS sv_3, 0.09138 AS sv_4, 0.04276 AS sv_5, 0.0 AS sv_6, 0.0 AS sv_7, 0.1722 AS sv_8, 0.06724 AS sv_9, 0.2204 AS sv_10, 0.7873 AS sv_11, 1.435 AS sv_12, 11.36 AS sv_13, 0.009172 AS sv_14, 0.008007 AS sv_15, 0.0 AS sv_16, 0.0 AS sv_17, 0.02711 AS sv_18, 0.003399 AS sv_19, 9.262 AS sv_20, 17.04 AS sv_21, 58.36 AS sv_22, 259.2 AS sv_23, 0.1162 AS sv_24, 0.07057 AS sv_25, 0.0 AS sv_26, 0.0 AS sv_27, 0.2592 AS sv_28, 0.07848 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, 0.47110030466312425 AS dual_coeff, 11.94 AS sv_0, 18.24 AS sv_1, 75.71 AS sv_2, 437.6 AS sv_3, 0.08261 AS sv_4, 0.04751 AS sv_5, 0.01972 AS sv_6, 0.01349 AS sv_7, 0.1868 AS sv_8, 0.0611 AS sv_9, 0.2273 AS sv_10, 0.6329 AS sv_11, 1.52 AS sv_12, 17.47 AS sv_13, 0.00721 AS sv_14, 0.00838 AS sv_15, 0.01311 AS sv_16, 0.008 AS sv_17, 0.01996 AS sv_18, 0.002635 AS sv_19, 13.1 AS sv_20, 21.33 AS sv_21, 83.67 AS sv_22, 527.2 AS sv_23, 0.1144 AS sv_24, 0.08906 AS sv_25, 0.09203 AS sv_26, 0.06296 AS sv_27, 0.2785 AS sv_28, 0.07408 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, 0.47093838905563995 AS dual_coeff, 11.22 AS sv_0, 33.81 AS sv_1, 70.79 AS sv_2, 386.8 AS sv_3, 0.0778 AS sv_4, 0.03574 AS sv_5, 0.004967 AS sv_6, 0.006434 AS sv_7, 0.1845 AS sv_8, 0.05828 AS sv_9, 0.2239 AS sv_10, 1.647 AS sv_11, 1.489 AS sv_12, 15.46 AS sv_13, 0.004359 AS sv_14, 0.006813 AS sv_15, 0.003223 AS sv_16, 0.003419 AS sv_17, 0.01916 AS sv_18, 0.002534 AS sv_19, 12.36 AS sv_20, 41.78 AS sv_21, 78.44 AS sv_22, 470.9 AS sv_23, 0.09994 AS sv_24, 0.06885 AS sv_25, 0.02318 AS sv_26, 0.03002 AS sv_27, 0.2911 AS sv_28, 0.07307 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, 0.4709029003459202 AS dual_coeff, 14.44 AS sv_0, 15.18 AS sv_1, 93.97 AS sv_2, 640.1 AS sv_3, 0.0997 AS sv_4, 0.1021 AS sv_5, 0.08487 AS sv_6, 0.05532 AS sv_7, 0.1724 AS sv_8, 0.06081 AS sv_9, 0.2406 AS sv_10, 0.7394 AS sv_11, 2.12 AS sv_12, 21.2 AS sv_13, 0.005706 AS sv_14, 0.02297 AS sv_15, 0.03114 AS sv_16, 0.01493 AS sv_17, 0.01454 AS sv_18, 0.002528 AS sv_19, 15.85 AS sv_20, 19.85 AS sv_21, 108.6 AS sv_22, 766.9 AS sv_23, 0.1316 AS sv_24, 0.2735 AS sv_25, 0.3103 AS sv_26, 0.1599 AS sv_27, 0.2691 AS sv_28, 0.07683 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, 0.47040898353173294 AS dual_coeff, 13.27 AS sv_0, 17.02 AS sv_1, 84.55 AS sv_2, 546.4 AS sv_3, 0.08445 AS sv_4, 0.04994 AS sv_5, 0.03554 AS sv_6, 0.02456 AS sv_7, 0.1496 AS sv_8, 0.05674 AS sv_9, 0.2927 AS sv_10, 0.8907 AS sv_11, 2.044 AS sv_12, 24.68 AS sv_13, 0.006032 AS sv_14, 0.01104 AS sv_15, 0.02259 AS sv_16, 0.009057 AS sv_17, 0.01482 AS sv_18, 0.002496 AS sv_19, 15.14 AS sv_20, 23.6 AS sv_21, 98.84 AS sv_22, 708.8 AS sv_23, 0.1276 AS sv_24, 0.1311 AS sv_25, 0.1786 AS sv_26, 0.09678 AS sv_27, 0.2506 AS sv_28, 0.07623 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, 0.4709030364378857 AS dual_coeff, 12.8 AS sv_0, 17.46 AS sv_1, 83.05 AS sv_2, 508.3 AS sv_3, 0.08044 AS sv_4, 0.08895 AS sv_5, 0.0739 AS sv_6, 0.04083 AS sv_7, 0.1574 AS sv_8, 0.0575 AS sv_9, 0.3639 AS sv_10, 1.265 AS sv_11, 2.668 AS sv_12, 30.57 AS sv_13, 0.005421 AS sv_14, 0.03477 AS sv_15, 0.04545 AS sv_16, 0.01384 AS sv_17, 0.01869 AS sv_18, 0.004067 AS sv_19, 13.74 AS sv_20, 21.06 AS sv_21, 90.72 AS sv_22, 591.0 AS sv_23, 0.09534 AS sv_24, 0.1812 AS sv_25, 0.1901 AS sv_26, 0.08296 AS sv_27, 0.1988 AS sv_28, 0.07053 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, 0.470902968324568 AS dual_coeff, 14.06 AS sv_0, 17.18 AS sv_1, 89.75 AS sv_2, 609.1 AS sv_3, 0.08045 AS sv_4, 0.05361 AS sv_5, 0.02681 AS sv_6, 0.03251 AS sv_7, 0.1641 AS sv_8, 0.05764 AS sv_9, 0.1504 AS sv_10, 1.685 AS sv_11, 1.237 AS sv_12, 12.67 AS sv_13, 0.005371 AS sv_14, 0.01273 AS sv_15, 0.01132 AS sv_16, 0.009155 AS sv_17, 0.01719 AS sv_18, 0.001444 AS sv_19, 14.92 AS sv_20, 25.34 AS sv_21, 96.42 AS sv_22, 684.5 AS sv_23, 0.1066 AS sv_24, 0.1231 AS sv_25, 0.0846 AS sv_26, 0.07911 AS sv_27, 0.2523 AS sv_28, 0.06609 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, 0.470902900345923 AS dual_coeff, 14.59 AS sv_0, 22.68 AS sv_1, 96.39 AS sv_2, 657.1 AS sv_3, 0.08473 AS sv_4, 0.133 AS sv_5, 0.1029 AS sv_6, 0.03736 AS sv_7, 0.1454 AS sv_8, 0.06147 AS sv_9, 0.2254 AS sv_10, 1.108 AS sv_11, 2.224 AS sv_12, 19.54 AS sv_13, 0.004242 AS sv_14, 0.04639 AS sv_15, 0.06578 AS sv_16, 0.01606 AS sv_17, 0.01638 AS sv_18, 0.004406 AS sv_19, 15.48 AS sv_20, 27.27 AS sv_21, 105.9 AS sv_22, 733.5 AS sv_23, 0.1026 AS sv_24, 0.3171 AS sv_25, 0.3662 AS sv_26, 0.1105 AS sv_27, 0.2258 AS sv_28, 0.08004 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, 0.47090290027122333 AS dual_coeff, 10.66 AS sv_0, 15.15 AS sv_1, 67.49 AS sv_2, 349.6 AS sv_3, 0.08792 AS sv_4, 0.04302 AS sv_5, 0.0 AS sv_6, 0.0 AS sv_7, 0.1928 AS sv_8, 0.05975 AS sv_9, 0.3309 AS sv_10, 1.925 AS sv_11, 2.155 AS sv_12, 21.98 AS sv_13, 0.008713 AS sv_14, 0.01017 AS sv_15, 0.0 AS sv_16, 0.0 AS sv_17, 0.03265 AS sv_18, 0.001002 AS sv_19, 11.54 AS sv_20, 19.2 AS sv_21, 73.2 AS sv_22, 408.3 AS sv_23, 0.1076 AS sv_24, 0.06791 AS sv_25, 0.0 AS sv_26, 0.0 AS sv_27, 0.271 AS sv_28, 0.06164 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, 0.4709030445203523 AS dual_coeff, 12.45 AS sv_0, 16.41 AS sv_1, 82.85 AS sv_2, 476.7 AS sv_3, 0.09514 AS sv_4, 0.1511 AS sv_5, 0.1544 AS sv_6, 0.04846 AS sv_7, 0.2082 AS sv_8, 0.07325 AS sv_9, 0.3921 AS sv_10, 1.207 AS sv_11, 5.004 AS sv_12, 30.19 AS sv_13, 0.007234 AS sv_14, 0.07471 AS sv_15, 0.1114 AS sv_16, 0.02721 AS sv_17, 0.03232 AS sv_18, 0.009627 AS sv_19, 13.78 AS sv_20, 21.03 AS sv_21, 97.82 AS sv_22, 580.6 AS sv_23, 0.1175 AS sv_24, 0.4061 AS sv_25, 0.4896 AS sv_26, 0.1342 AS sv_27, 0.3231 AS sv_28, 0.1034 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, 0.4709383166557934 AS dual_coeff, 12.46 AS sv_0, 19.89 AS sv_1, 80.43 AS sv_2, 471.3 AS sv_3, 0.08451 AS sv_4, 0.1014 AS sv_5, 0.0683 AS sv_6, 0.03099 AS sv_7, 0.1781 AS sv_8, 0.06249 AS sv_9, 0.3642 AS sv_10, 1.04 AS sv_11, 2.579 AS sv_12, 28.32 AS sv_13, 0.00653 AS sv_14, 0.03369 AS sv_15, 0.04712 AS sv_16, 0.01403 AS sv_17, 0.0274 AS sv_18, 0.004651 AS sv_19, 13.46 AS sv_20, 23.07 AS sv_21, 88.13 AS sv_22, 551.3 AS sv_23, 0.105 AS sv_24, 0.2158 AS sv_25, 0.1904 AS sv_26, 0.07625 AS sv_27, 0.2685 AS sv_28, 0.07764 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 0.46633359583467165 AS dual_coeff, 14.11 AS sv_0, 12.88 AS sv_1, 90.03 AS sv_2, 616.5 AS sv_3, 0.09309 AS sv_4, 0.05306 AS sv_5, 0.01765 AS sv_6, 0.02733 AS sv_7, 0.1373 AS sv_8, 0.057 AS sv_9, 0.2571 AS sv_10, 1.081 AS sv_11, 1.558 AS sv_12, 23.92 AS sv_13, 0.006692 AS sv_14, 0.01132 AS sv_15, 0.005717 AS sv_16, 0.006627 AS sv_17, 0.01416 AS sv_18, 0.002476 AS sv_19, 15.53 AS sv_20, 18.0 AS sv_21, 98.4 AS sv_22, 749.9 AS sv_23, 0.1281 AS sv_24, 0.1109 AS sv_25, 0.05307 AS sv_26, 0.0589 AS sv_27, 0.21 AS sv_28, 0.07083 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, 0.47090126546988187 AS dual_coeff, 12.39 AS sv_0, 17.48 AS sv_1, 80.64 AS sv_2, 462.9 AS sv_3, 0.1042 AS sv_4, 0.1297 AS sv_5, 0.05892 AS sv_6, 0.0288 AS sv_7, 0.1779 AS sv_8, 0.06588 AS sv_9, 0.2608 AS sv_10, 0.873 AS sv_11, 2.117 AS sv_12, 19.2 AS sv_13, 0.006715 AS sv_14, 0.03705 AS sv_15, 0.04757 AS sv_16, 0.01051 AS sv_17, 0.01838 AS sv_18, 0.006884 AS sv_19, 14.18 AS sv_20, 23.13 AS sv_21, 95.23 AS sv_22, 600.5 AS sv_23, 0.1427 AS sv_24, 0.3593 AS sv_25, 0.3206 AS sv_26, 0.09804 AS sv_27, 0.2819 AS sv_28, 0.1118 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, 0.47090153832502996 AS dual_coeff, 9.173 AS sv_0, 13.86 AS sv_1, 59.2 AS sv_2, 260.9 AS sv_3, 0.07721 AS sv_4, 0.08751 AS sv_5, 0.05988 AS sv_6, 0.0218 AS sv_7, 0.2341 AS sv_8, 0.06963 AS sv_9, 0.4098 AS sv_10, 2.265 AS sv_11, 2.608 AS sv_12, 23.52 AS sv_13, 0.008738 AS sv_14, 0.03938 AS sv_15, 0.04312 AS sv_16, 0.0156 AS sv_17, 0.04192 AS sv_18, 0.005822 AS sv_19, 10.01 AS sv_20, 19.23 AS sv_21, 65.59 AS sv_22, 310.1 AS sv_23, 0.09836 AS sv_24, 0.1678 AS sv_25, 0.1397 AS sv_26, 0.05087 AS sv_27, 0.3282 AS sv_28, 0.0849 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 30 AS sv_idx, 0.4704009841940927 AS dual_coeff, 12.0 AS sv_0, 15.65 AS sv_1, 76.95 AS sv_2, 443.3 AS sv_3, 0.09723 AS sv_4, 0.07165 AS sv_5, 0.04151 AS sv_6, 0.01863 AS sv_7, 0.2079 AS sv_8, 0.05968 AS sv_9, 0.2271 AS sv_10, 1.255 AS sv_11, 1.441 AS sv_12, 16.16 AS sv_13, 0.005969 AS sv_14, 0.01812 AS sv_15, 0.02007 AS sv_16, 0.007027 AS sv_17, 0.01972 AS sv_18, 0.002607 AS sv_19, 13.67 AS sv_20, 24.9 AS sv_21, 87.78 AS sv_22, 567.9 AS sv_23, 0.1377 AS sv_24, 0.2003 AS sv_25, 0.2267 AS sv_26, 0.07632 AS sv_27, 0.3379 AS sv_28, 0.07924 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 31 AS sv_idx, 0.47090140182887863 AS dual_coeff, 10.48 AS sv_0, 14.98 AS sv_1, 67.49 AS sv_2, 333.6 AS sv_3, 0.09816 AS sv_4, 0.1013 AS sv_5, 0.06335 AS sv_6, 0.02218 AS sv_7, 0.1925 AS sv_8, 0.06915 AS sv_9, 0.3276 AS sv_10, 1.127 AS sv_11, 2.564 AS sv_12, 20.77 AS sv_13, 0.007364 AS sv_14, 0.03867 AS sv_15, 0.05263 AS sv_16, 0.01264 AS sv_17, 0.02161 AS sv_18, 0.00483 AS sv_19, 12.13 AS sv_20, 21.57 AS sv_21, 81.41 AS sv_22, 440.4 AS sv_23, 0.1327 AS sv_24, 0.2996 AS sv_25, 0.2939 AS sv_26, 0.0931 AS sv_27, 0.302 AS sv_28, 0.09646 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 32 AS sv_idx, 0.4709029683361191 AS dual_coeff, 10.57 AS sv_0, 20.22 AS sv_1, 70.15 AS sv_2, 338.3 AS sv_3, 0.09073 AS sv_4, 0.166 AS sv_5, 0.228 AS sv_6, 0.05941 AS sv_7, 0.2188 AS sv_8, 0.0845 AS sv_9, 0.1115 AS sv_10, 1.231 AS sv_11, 2.363 AS sv_12, 7.228 AS sv_13, 0.008499 AS sv_14, 0.07643 AS sv_15, 0.1535 AS sv_16, 0.02919 AS sv_17, 0.01617 AS sv_18, 0.0122 AS sv_19, 10.85 AS sv_20, 22.82 AS sv_21, 76.51 AS sv_22, 351.9 AS sv_23, 0.1143 AS sv_24, 0.3619 AS sv_25, 0.603 AS sv_26, 0.1465 AS sv_27, 0.2597 AS sv_28, 0.12 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 33 AS sv_idx, 0.4709028978319211 AS dual_coeff, 11.81 AS sv_0, 17.39 AS sv_1, 75.27 AS sv_2, 428.9 AS sv_3, 0.1007 AS sv_4, 0.05562 AS sv_5, 0.02353 AS sv_6, 0.01553 AS sv_7, 0.1718 AS sv_8, 0.0578 AS sv_9, 0.1859 AS sv_10, 1.926 AS sv_11, 1.011 AS sv_12, 14.47 AS sv_13, 0.007831 AS sv_14, 0.008776 AS sv_15, 0.01556 AS sv_16, 0.00624 AS sv_17, 0.03139 AS sv_18, 0.001988 AS sv_19, 12.57 AS sv_20, 26.48 AS sv_21, 79.57 AS sv_22, 489.5 AS sv_23, 0.1356 AS sv_24, 0.1 AS sv_25, 0.08803 AS sv_26, 0.04306 AS sv_27, 0.32 AS sv_28, 0.06576 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 34 AS sv_idx, 0.47090290037996013 AS dual_coeff, 13.0 AS sv_0, 25.13 AS sv_1, 82.61 AS sv_2, 520.2 AS sv_3, 0.08369 AS sv_4, 0.05073 AS sv_5, 0.01206 AS sv_6, 0.01762 AS sv_7, 0.1667 AS sv_8, 0.05449 AS sv_9, 0.2621 AS sv_10, 1.232 AS sv_11, 1.657 AS sv_12, 21.19 AS sv_13, 0.006054 AS sv_14, 0.008974 AS sv_15, 0.005681 AS sv_16, 0.006336 AS sv_17, 0.01215 AS sv_18, 0.001514 AS sv_19, 14.34 AS sv_20, 31.88 AS sv_21, 91.06 AS sv_22, 628.5 AS sv_23, 0.1218 AS sv_24, 0.1093 AS sv_25, 0.04462 AS sv_26, 0.05921 AS sv_27, 0.2306 AS sv_28, 0.06291 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 35 AS sv_idx, 0.4709029002712232 AS dual_coeff, 12.47 AS sv_0, 18.6 AS sv_1, 81.09 AS sv_2, 481.9 AS sv_3, 0.09965 AS sv_4, 0.1058 AS sv_5, 0.08005 AS sv_6, 0.03821 AS sv_7, 0.1925 AS sv_8, 0.06373 AS sv_9, 0.3961 AS sv_10, 1.044 AS sv_11, 2.497 AS sv_12, 30.29 AS sv_13, 0.006953 AS sv_14, 0.01911 AS sv_15, 0.02701 AS sv_16, 0.01037 AS sv_17, 0.01782 AS sv_18, 0.003586 AS sv_19, 14.97 AS sv_20, 24.64 AS sv_21, 96.05 AS sv_22, 677.9 AS sv_23, 0.1426 AS sv_24, 0.2378 AS sv_25, 0.2671 AS sv_26, 0.1015 AS sv_27, 0.3014 AS sv_28, 0.0875 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 36 AS sv_idx, 0.4704009841940929 AS dual_coeff, 14.03 AS sv_0, 21.25 AS sv_1, 89.79 AS sv_2, 603.4 AS sv_3, 0.0907 AS sv_4, 0.06945 AS sv_5, 0.01462 AS sv_6, 0.01896 AS sv_7, 0.1517 AS sv_8, 0.05835 AS sv_9, 0.2589 AS sv_10, 1.503 AS sv_11, 1.667 AS sv_12, 22.07 AS sv_13, 0.007389 AS sv_14, 0.01383 AS sv_15, 0.007302 AS sv_16, 0.01004 AS sv_17, 0.01263 AS sv_18, 0.002925 AS sv_19, 15.33 AS sv_20, 30.28 AS sv_21, 98.27 AS sv_22, 715.5 AS sv_23, 0.1287 AS sv_24, 0.1513 AS sv_25, 0.06231 AS sv_26, 0.07963 AS sv_27, 0.2226 AS sv_28, 0.07617 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 37 AS sv_idx, 0.47090119244747247 AS dual_coeff, 12.36 AS sv_0, 18.54 AS sv_1, 79.01 AS sv_2, 466.7 AS sv_3, 0.08477 AS sv_4, 0.06815 AS sv_5, 0.02643 AS sv_6, 0.01921 AS sv_7, 0.1602 AS sv_8, 0.06066 AS sv_9, 0.1199 AS sv_10, 0.8944 AS sv_11, 0.8484 AS sv_12, 9.227 AS sv_13, 0.003457 AS sv_14, 0.01047 AS sv_15, 0.01167 AS sv_16, 0.005558 AS sv_17, 0.01251 AS sv_18, 0.001356 AS sv_19, 13.29 AS sv_20, 27.49 AS sv_21, 85.56 AS sv_22, 544.1 AS sv_23, 0.1184 AS sv_24, 0.1963 AS sv_25, 0.1937 AS sv_26, 0.08442 AS sv_27, 0.2983 AS sv_28, 0.07185 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 38 AS sv_idx, 0.47090126548143085 AS dual_coeff, 13.68 AS sv_0, 16.33 AS sv_1, 87.76 AS sv_2, 575.5 AS sv_3, 0.09277 AS sv_4, 0.07255 AS sv_5, 0.01752 AS sv_6, 0.0188 AS sv_7, 0.1631 AS sv_8, 0.06155 AS sv_9, 0.2047 AS sv_10, 0.4801 AS sv_11, 1.373 AS sv_12, 17.25 AS sv_13, 0.003828 AS sv_14, 0.007228 AS sv_15, 0.007078 AS sv_16, 0.005077 AS sv_17, 0.01054 AS sv_18, 0.001697 AS sv_19, 15.85 AS sv_20, 20.2 AS sv_21, 101.6 AS sv_22, 773.4 AS sv_23, 0.1264 AS sv_24, 0.1564 AS sv_25, 0.1206 AS sv_26, 0.08704 AS sv_27, 0.2806 AS sv_28, 0.07782 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 39 AS sv_idx, 0.47090126548143074 AS dual_coeff, 12.04 AS sv_0, 28.14 AS sv_1, 76.85 AS sv_2, 449.9 AS sv_3, 0.08752 AS sv_4, 0.06 AS sv_5, 0.02367 AS sv_6, 0.02377 AS sv_7, 0.1854 AS sv_8, 0.05698 AS sv_9, 0.6061 AS sv_10, 2.643 AS sv_11, 4.099 AS sv_12, 44.96 AS sv_13, 0.007517 AS sv_14, 0.01555 AS sv_15, 0.01465 AS sv_16, 0.01183 AS sv_17, 0.02047 AS sv_18, 0.003883 AS sv_19, 13.6 AS sv_20, 33.33 AS sv_21, 87.24 AS sv_22, 567.6 AS sv_23, 0.1041 AS sv_24, 0.09726 AS sv_25, 0.05524 AS sv_26, 0.05547 AS sv_27, 0.2404 AS sv_28, 0.06639 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 40 AS sv_idx, 0.4709029599599743 AS dual_coeff, 9.755 AS sv_0, 28.2 AS sv_1, 61.68 AS sv_2, 290.9 AS sv_3, 0.07984 AS sv_4, 0.04626 AS sv_5, 0.01541 AS sv_6, 0.01043 AS sv_7, 0.1621 AS sv_8, 0.05952 AS sv_9, 0.1781 AS sv_10, 1.687 AS sv_11, 1.243 AS sv_12, 11.28 AS sv_13, 0.006588 AS sv_14, 0.0127 AS sv_15, 0.0145 AS sv_16, 0.006104 AS sv_17, 0.01574 AS sv_18, 0.002268 AS sv_19, 10.67 AS sv_20, 36.92 AS sv_21, 68.03 AS sv_22, 349.9 AS sv_23, 0.111 AS sv_24, 0.1109 AS sv_25, 0.0719 AS sv_26, 0.04866 AS sv_27, 0.2321 AS sv_28, 0.07211 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 41 AS sv_idx, 0.4709030364378857 AS dual_coeff, 10.82 AS sv_0, 24.21 AS sv_1, 68.89 AS sv_2, 361.6 AS sv_3, 0.08192 AS sv_4, 0.06602 AS sv_5, 0.01548 AS sv_6, 0.00816 AS sv_7, 0.1976 AS sv_8, 0.06328 AS sv_9, 0.5196 AS sv_10, 1.918 AS sv_11, 3.564 AS sv_12, 33.0 AS sv_13, 0.008263 AS sv_14, 0.0187 AS sv_15, 0.01277 AS sv_16, 0.005917 AS sv_17, 0.02466 AS sv_18, 0.002977 AS sv_19, 13.03 AS sv_20, 31.45 AS sv_21, 83.9 AS sv_22, 505.6 AS sv_23, 0.1204 AS sv_24, 0.1633 AS sv_25, 0.06194 AS sv_26, 0.03264 AS sv_27, 0.3059 AS sv_28, 0.07626 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 42 AS sv_idx, 0.4709014014372404 AS dual_coeff, 12.63 AS sv_0, 20.76 AS sv_1, 82.15 AS sv_2, 480.4 AS sv_3, 0.09933 AS sv_4, 0.1209 AS sv_5, 0.1065 AS sv_6, 0.06021 AS sv_7, 0.1735 AS sv_8, 0.0707 AS sv_9, 0.3424 AS sv_10, 1.803 AS sv_11, 2.711 AS sv_12, 20.48 AS sv_13, 0.01291 AS sv_14, 0.04042 AS sv_15, 0.05101 AS sv_16, 0.02295 AS sv_17, 0.02144 AS sv_18, 0.005891 AS sv_19, 13.33 AS sv_20, 25.47 AS sv_21, 89.0 AS sv_22, 527.4 AS sv_23, 0.1287 AS sv_24, 0.225 AS sv_25, 0.2216 AS sv_26, 0.1105 AS sv_27, 0.2226 AS sv_28, 0.08486 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 43 AS sv_idx, 0.47090289197121654 AS dual_coeff, 9.787 AS sv_0, 19.94 AS sv_1, 62.11 AS sv_2, 294.5 AS sv_3, 0.1024 AS sv_4, 0.05301 AS sv_5, 0.006829 AS sv_6, 0.007937 AS sv_7, 0.135 AS sv_8, 0.0689 AS sv_9, 0.335 AS sv_10, 2.043 AS sv_11, 2.132 AS sv_12, 20.05 AS sv_13, 0.01113 AS sv_14, 0.01463 AS sv_15, 0.005308 AS sv_16, 0.00525 AS sv_17, 0.01801 AS sv_18, 0.005667 AS sv_19, 10.92 AS sv_20, 26.29 AS sv_21, 68.81 AS sv_22, 366.1 AS sv_23, 0.1316 AS sv_24, 0.09473 AS sv_25, 0.02049 AS sv_26, 0.02381 AS sv_27, 0.1934 AS sv_28, 0.08988 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 44 AS sv_idx, 0.47090296588443686 AS dual_coeff, 11.52 AS sv_0, 14.93 AS sv_1, 73.87 AS sv_2, 406.3 AS sv_3, 0.1013 AS sv_4, 0.07808 AS sv_5, 0.04328 AS sv_6, 0.02929 AS sv_7, 0.1883 AS sv_8, 0.06168 AS sv_9, 0.2562 AS sv_10, 1.038 AS sv_11, 1.686 AS sv_12, 18.62 AS sv_13, 0.006662 AS sv_14, 0.01228 AS sv_15, 0.02105 AS sv_16, 0.01006 AS sv_17, 0.01677 AS sv_18, 0.002784 AS sv_19, 12.65 AS sv_20, 21.19 AS sv_21, 80.88 AS sv_22, 491.8 AS sv_23, 0.1389 AS sv_24, 0.1582 AS sv_25, 0.1804 AS sv_26, 0.09608 AS sv_27, 0.2664 AS sv_28, 0.07809 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 45 AS sv_idx, 0.4710934792884526 AS dual_coeff, 13.2 AS sv_0, 17.43 AS sv_1, 84.13 AS sv_2, 541.6 AS sv_3, 0.07215 AS sv_4, 0.04524 AS sv_5, 0.04336 AS sv_6, 0.01105 AS sv_7, 0.1487 AS sv_8, 0.05635 AS sv_9, 0.163 AS sv_10, 1.601 AS sv_11, 0.873 AS sv_12, 13.56 AS sv_13, 0.006261 AS sv_14, 0.01569 AS sv_15, 0.03079 AS sv_16, 0.005383 AS sv_17, 0.01962 AS sv_18, 0.00225 AS sv_19, 13.94 AS sv_20, 27.82 AS sv_21, 88.28 AS sv_22, 602.0 AS sv_23, 0.1101 AS sv_24, 0.1508 AS sv_25, 0.2298 AS sv_26, 0.0497 AS sv_27, 0.2767 AS sv_28, 0.07198 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 46 AS sv_idx, 0.4711003046550189 AS dual_coeff, 9.0 AS sv_0, 14.4 AS sv_1, 56.36 AS sv_2, 246.3 AS sv_3, 0.07005 AS sv_4, 0.03116 AS sv_5, 0.003681 AS sv_6, 0.003472 AS sv_7, 0.1788 AS sv_8, 0.06833 AS sv_9, 0.1746 AS sv_10, 1.305 AS sv_11, 1.144 AS sv_12, 9.789 AS sv_13, 0.007389 AS sv_14, 0.004883 AS sv_15, 0.003681 AS sv_16, 0.003472 AS sv_17, 0.02701 AS sv_18, 0.002153 AS sv_19, 9.699 AS sv_20, 20.07 AS sv_21, 60.9 AS sv_22, 285.5 AS sv_23, 0.09861 AS sv_24, 0.05232 AS sv_25, 0.01472 AS sv_26, 0.01389 AS sv_27, 0.2991 AS sv_28, 0.07804 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 47 AS sv_idx, 0.4709028988584044 AS dual_coeff, 13.5 AS sv_0, 12.71 AS sv_1, 85.69 AS sv_2, 566.2 AS sv_3, 0.07376 AS sv_4, 0.03614 AS sv_5, 0.002758 AS sv_6, 0.004419 AS sv_7, 0.1365 AS sv_8, 0.05335 AS sv_9, 0.2244 AS sv_10, 0.6864 AS sv_11, 1.509 AS sv_12, 20.39 AS sv_13, 0.003338 AS sv_14, 0.003746 AS sv_15, 0.00203 AS sv_16, 0.003242 AS sv_17, 0.0148 AS sv_18, 0.001566 AS sv_19, 14.97 AS sv_20, 16.94 AS sv_21, 95.48 AS sv_22, 698.7 AS sv_23, 0.09023 AS sv_24, 0.05836 AS sv_25, 0.01379 AS sv_26, 0.0221 AS sv_27, 0.2267 AS sv_28, 0.06192 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 48 AS sv_idx, 0.46563487085139826 AS dual_coeff, 14.04 AS sv_0, 15.98 AS sv_1, 89.78 AS sv_2, 611.2 AS sv_3, 0.08458 AS sv_4, 0.05895 AS sv_5, 0.03534 AS sv_6, 0.02944 AS sv_7, 0.1714 AS sv_8, 0.05898 AS sv_9, 0.3892 AS sv_10, 1.046 AS sv_11, 2.644 AS sv_12, 32.74 AS sv_13, 0.007976 AS sv_14, 0.01295 AS sv_15, 0.01608 AS sv_16, 0.009046 AS sv_17, 0.02005 AS sv_18, 0.00283 AS sv_19, 15.66 AS sv_20, 21.58 AS sv_21, 101.2 AS sv_22, 750.0 AS sv_23, 0.1195 AS sv_24, 0.1252 AS sv_25, 0.1117 AS sv_26, 0.07453 AS sv_27, 0.2725 AS sv_28, 0.07234 AS sv_29 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 49 AS sv_idx, 0.4708988882323722 AS dual_coeff, 8.571 AS sv_0, 13.1 AS sv_1, 54.53 AS sv_2, 221.3 AS sv_3, 0.1036 AS sv_4, 0.07632 AS sv_5, 0.02565 AS sv_6, 0.0151 AS sv_7, 0.1678 AS sv_8, 0.07126 AS sv_9, 0.1267 AS sv_10, 0.6793 AS sv_11, 1.069 AS sv_12, 7.254 AS sv_13, 0.007897 AS sv_14, 0.01762 AS sv_15, 0.01801 AS sv_16, 0.00732 AS sv_17, 0.01592 AS sv_18, 0.003925 AS sv_19, 9.473 AS sv_20, 18.45 AS sv_21, 63.3 AS sv_22, 275.6 AS sv_23, 0.1641 AS sv_24, 0.2235 AS sv_25, 0.1754 AS sv_26, 0.08512 AS sv_27, 0.2983 AS sv_28, 0.1049 AS sv_29 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 0.5291308953628583 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(least(greatest(-100.0, -0.03333333333333333 * (power(kernel_input."Feature_0" - "SV_data".sv_0, 2) + power(kernel_input."Feature_1" - "SV_data".sv_1, 2) + power(kernel_input."Feature_2" - "SV_data".sv_2, 2) + power(kernel_input."Feature_3" - "SV_data".sv_3, 2) + power(kernel_input."Feature_4" - "SV_data".sv_4, 2) + power(kernel_input."Feature_5" - "SV_data".sv_5, 2) + power(kernel_input."Feature_6" - "SV_data".sv_6, 2) + power(kernel_input."Feature_7" - "SV_data".sv_7, 2) + power(kernel_input."Feature_8" - "SV_data".sv_8, 2) + power(kernel_input."Feature_9" - "SV_data".sv_9, 2) + power(kernel_input."Feature_10" - "SV_data".sv_10, 2) + power(kernel_input."Feature_11" - "SV_data".sv_11, 2) + power(kernel_input."Feature_12" - "SV_data".sv_12, 2) + power(kernel_input."Feature_13" - "SV_data".sv_13, 2) + power(kernel_input."Feature_14" - "SV_data".sv_14, 2) + power(kernel_input."Feature_15" - "SV_data".sv_15, 2) + power(kernel_input."Feature_16" - "SV_data".sv_16, 2) + power(kernel_input."Feature_17" - "SV_data".sv_17, 2) + power(kernel_input."Feature_18" - "SV_data".sv_18, 2) + power(kernel_input."Feature_19" - "SV_data".sv_19, 2) + power(kernel_input."Feature_20" - "SV_data".sv_20, 2) + power(kernel_input."Feature_21" - "SV_data".sv_21, 2) + power(kernel_input."Feature_22" - "SV_data".sv_22, 2) + power(kernel_input."Feature_23" - "SV_data".sv_23, 2) + power(kernel_input."Feature_24" - "SV_data".sv_24, 2) + power(kernel_input."Feature_25" - "SV_data".sv_25, 2) + power(kernel_input."Feature_26" - "SV_data".sv_26, 2) + power(kernel_input."Feature_27" - "SV_data".sv_27, 2) + power(kernel_input."Feature_28" - "SV_data".sv_28, 2) + power(kernel_input."Feature_29" - "SV_data".sv_29, 2))), 100.0)) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * 8.314418095844871 + 5.186351770062386))), 100.0)))) AS "DecisionProba" 
FROM kernel_dp