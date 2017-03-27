-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9, "Values".sv_10 AS sv_10, "Values".sv_11 AS sv_11, "Values".sv_12 AS sv_12 
FROM (SELECT 0 AS sv_idx, -2.67744038637e-10 AS dual_coeff, 0.84054 AS sv_0, 0.0 AS sv_1, 8.14 AS sv_2, 0.0 AS sv_3, 0.538 AS sv_4, 5.599 AS sv_5, 85.7 AS sv_6, 4.4546 AS sv_7, 4.0 AS sv_8, 307.0 AS sv_9, 21.0 AS sv_10, 303.42 AS sv_11, 16.51 AS sv_12 UNION ALL SELECT 1 AS sv_idx, -8.77519959185e-11 AS dual_coeff, 0.95577 AS sv_0, 0.0 AS sv_1, 8.14 AS sv_2, 0.0 AS sv_3, 0.538 AS sv_4, 6.047 AS sv_5, 88.8 AS sv_6, 4.4534 AS sv_7, 4.0 AS sv_8, 307.0 AS sv_9, 21.0 AS sv_10, 306.38 AS sv_11, 17.28 AS sv_12 UNION ALL SELECT 2 AS sv_idx, -2.06819266833e-09 AS dual_coeff, 0.22927 AS sv_0, 0.0 AS sv_1, 6.91 AS sv_2, 0.0 AS sv_3, 0.448 AS sv_4, 6.03 AS sv_5, 85.5 AS sv_6, 5.6894 AS sv_7, 3.0 AS sv_8, 233.0 AS sv_9, 17.9 AS sv_10, 392.74 AS sv_11, 18.8 AS sv_12 UNION ALL SELECT 3 AS sv_idx, 2.06819266833e-09 AS dual_coeff, 0.25387 AS sv_0, 0.0 AS sv_1, 6.91 AS sv_2, 0.0 AS sv_3, 0.448 AS sv_4, 5.399 AS sv_5, 95.3 AS sv_6, 5.87 AS sv_7, 3.0 AS sv_8, 233.0 AS sv_9, 17.9 AS sv_10, 396.9 AS sv_11, 30.81 AS sv_12 UNION ALL SELECT 4 AS sv_idx, -1.54601015042e-10 AS dual_coeff, 0.0536 AS sv_0, 21.0 AS sv_1, 5.64 AS sv_2, 0.0 AS sv_3, 0.439 AS sv_4, 6.511 AS sv_5, 21.1 AS sv_6, 6.8147 AS sv_7, 4.0 AS sv_8, 243.0 AS sv_9, 16.8 AS sv_10, 396.9 AS sv_11, 5.28 AS sv_12 UNION ALL SELECT 5 AS sv_idx, -1.4254950748e-11 AS dual_coeff, 0.0136 AS sv_0, 75.0 AS sv_1, 4.0 AS sv_2, 0.0 AS sv_3, 0.41 AS sv_4, 5.888 AS sv_5, 47.6 AS sv_6, 7.3197 AS sv_7, 3.0 AS sv_8, 469.0 AS sv_9, 21.1 AS sv_10, 396.9 AS sv_11, 14.8 AS sv_12 UNION ALL SELECT 6 AS sv_idx, -7.49672526066e-12 AS dual_coeff, 0.07896 AS sv_0, 0.0 AS sv_1, 12.83 AS sv_2, 0.0 AS sv_3, 0.437 AS sv_4, 6.273 AS sv_5, 6.0 AS sv_6, 4.2515 AS sv_7, 5.0 AS sv_8, 398.0 AS sv_9, 18.7 AS sv_10, 394.92 AS sv_11, 6.78 AS sv_12 UNION ALL SELECT 7 AS sv_idx, -6.5254402699e-10 AS dual_coeff, 0.08707 AS sv_0, 0.0 AS sv_1, 12.83 AS sv_2, 0.0 AS sv_3, 0.437 AS sv_4, 6.14 AS sv_5, 45.8 AS sv_6, 4.0905 AS sv_7, 5.0 AS sv_8, 398.0 AS sv_9, 18.7 AS sv_10, 386.96 AS sv_11, 10.27 AS sv_12 UNION ALL SELECT 8 AS sv_idx, 1.75768694529e-10 AS dual_coeff, 0.22876 AS sv_0, 0.0 AS sv_1, 8.56 AS sv_2, 0.0 AS sv_3, 0.52 AS sv_4, 6.405 AS sv_5, 85.4 AS sv_6, 2.7147 AS sv_7, 5.0 AS sv_8, 384.0 AS sv_9, 20.9 AS sv_10, 70.8 AS sv_11, 10.63 AS sv_12 UNION ALL SELECT 9 AS sv_idx, -1.28271236079e-10 AS dual_coeff, 0.13058 AS sv_0, 0.0 AS sv_1, 10.01 AS sv_2, 0.0 AS sv_3, 0.547 AS sv_4, 5.872 AS sv_5, 73.1 AS sv_6, 2.4775 AS sv_7, 6.0 AS sv_8, 432.0 AS sv_9, 17.8 AS sv_10, 338.63 AS sv_11, 15.37 AS sv_12 UNION ALL SELECT 10 AS sv_idx, 1.08991731758e-10 AS dual_coeff, 0.38735 AS sv_0, 0.0 AS sv_1, 25.65 AS sv_2, 0.0 AS sv_3, 0.581 AS sv_4, 5.613 AS sv_5, 95.6 AS sv_6, 1.7572 AS sv_7, 2.0 AS sv_8, 188.0 AS sv_9, 19.1 AS sv_10, 359.29 AS sv_11, 27.26 AS sv_12 UNION ALL SELECT 11 AS sv_idx, -1.16759058073e-09 AS dual_coeff, 0.2498 AS sv_0, 0.0 AS sv_1, 21.89 AS sv_2, 0.0 AS sv_3, 0.624 AS sv_4, 5.857 AS sv_5, 98.2 AS sv_6, 1.6686 AS sv_7, 4.0 AS sv_8, 437.0 AS sv_9, 21.2 AS sv_10, 392.04 AS sv_11, 21.32 AS sv_12 UNION ALL SELECT 12 AS sv_idx, 1.29586181681e-09 AS dual_coeff, 1.62864 AS sv_0, 0.0 AS sv_1, 21.89 AS sv_2, 0.0 AS sv_3, 0.624 AS sv_4, 5.019 AS sv_5, 100.0 AS sv_6, 1.4394 AS sv_7, 4.0 AS sv_8, 437.0 AS sv_9, 21.2 AS sv_10, 396.9 AS sv_11, 34.41 AS sv_12 UNION ALL SELECT 13 AS sv_idx, -6.04621030302e-12 AS dual_coeff, 2.15505 AS sv_0, 0.0 AS sv_1, 19.58 AS sv_2, 0.0 AS sv_3, 0.871 AS sv_4, 5.628 AS sv_5, 100.0 AS sv_6, 1.5166 AS sv_7, 5.0 AS sv_8, 403.0 AS sv_9, 14.7 AS sv_10, 169.27 AS sv_11, 16.65 AS sv_12 UNION ALL SELECT 14 AS sv_idx, -1.81348152908e-10 AS dual_coeff, 2.44668 AS sv_0, 0.0 AS sv_1, 19.58 AS sv_2, 0.0 AS sv_3, 0.871 AS sv_4, 5.272 AS sv_5, 94.0 AS sv_6, 1.7364 AS sv_7, 5.0 AS sv_8, 403.0 AS sv_9, 14.7 AS sv_10, 88.63 AS sv_11, 16.14 AS sv_12 UNION ALL SELECT 15 AS sv_idx, -1.37598276472e-08 AS dual_coeff, 0.0578 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 6.98 AS sv_5, 58.4 AS sv_6, 2.829 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 396.9 AS sv_11, 5.04 AS sv_12 UNION ALL SELECT 16 AS sv_idx, 8.06038689126e-10 AS dual_coeff, 0.06588 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 7.765 AS sv_5, 83.3 AS sv_6, 2.741 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 395.56 AS sv_11, 7.56 AS sv_12 UNION ALL SELECT 17 AS sv_idx, 4.51675282191e-09 AS dual_coeff, 0.09103 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 7.155 AS sv_5, 92.2 AS sv_6, 2.7006 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 394.12 AS sv_11, 4.82 AS sv_12 UNION ALL SELECT 18 AS sv_idx, 1.36613973261e-10 AS dual_coeff, 0.10008 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 6.563 AS sv_5, 95.6 AS sv_6, 2.847 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 396.9 AS sv_11, 5.68 AS sv_12 UNION ALL SELECT 19 AS sv_idx, -4.51675282191e-09 AS dual_coeff, 0.08308 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 5.604 AS sv_5, 89.8 AS sv_6, 2.9879 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 391.0 AS sv_11, 13.98 AS sv_12 UNION ALL SELECT 20 AS sv_idx, 1.37598276472e-08 AS dual_coeff, 0.05602 AS sv_0, 0.0 AS sv_1, 2.46 AS sv_2, 0.0 AS sv_3, 0.488 AS sv_4, 7.831 AS sv_5, 53.6 AS sv_6, 3.1992 AS sv_7, 3.0 AS sv_8, 193.0 AS sv_9, 17.8 AS sv_10, 392.63 AS sv_11, 4.45 AS sv_12 UNION ALL SELECT 21 AS sv_idx, 1.54601015042e-10 AS dual_coeff, 0.28955 AS sv_0, 0.0 AS sv_1, 10.59 AS sv_2, 0.0 AS sv_3, 0.489 AS sv_4, 5.412 AS sv_5, 9.8 AS sv_6, 3.5875 AS sv_7, 4.0 AS sv_8, 277.0 AS sv_9, 18.6 AS sv_10, 348.93 AS sv_11, 29.55 AS sv_12 UNION ALL SELECT 22 AS sv_idx, -5.15266037818e-09 AS dual_coeff, 0.1403 AS sv_0, 22.0 AS sv_1, 5.86 AS sv_2, 0.0 AS sv_3, 0.431 AS sv_4, 6.487 AS sv_5, 13.0 AS sv_6, 7.3967 AS sv_7, 7.0 AS sv_8, 330.0 AS sv_9, 19.1 AS sv_10, 396.28 AS sv_11, 5.9 AS sv_12 UNION ALL SELECT 23 AS sv_idx, 5.15266037818e-09 AS dual_coeff, 0.36894 AS sv_0, 22.0 AS sv_1, 5.86 AS sv_2, 0.0 AS sv_3, 0.431 AS sv_4, 8.259 AS sv_5, 8.4 AS sv_6, 8.9067 AS sv_7, 7.0 AS sv_8, 330.0 AS sv_9, 19.1 AS sv_10, 396.9 AS sv_11, 3.54 AS sv_12 UNION ALL SELECT 24 AS sv_idx, 1.52791173907e-08 AS dual_coeff, 0.52014 AS sv_0, 20.0 AS sv_1, 3.97 AS sv_2, 0.0 AS sv_3, 0.647 AS sv_4, 8.398 AS sv_5, 91.5 AS sv_6, 2.2885 AS sv_7, 5.0 AS sv_8, 264.0 AS sv_9, 13.0 AS sv_10, 386.86 AS sv_11, 5.91 AS sv_12 UNION ALL SELECT 25 AS sv_idx, -1.52791173907e-08 AS dual_coeff, 0.55007 AS sv_0, 20.0 AS sv_1, 3.97 AS sv_2, 0.0 AS sv_3, 0.647 AS sv_4, 7.206 AS sv_5, 91.6 AS sv_6, 1.9301 AS sv_7, 5.0 AS sv_8, 264.0 AS sv_9, 13.0 AS sv_10, 387.89 AS sv_11, 8.1 AS sv_12 UNION ALL SELECT 26 AS sv_idx, 8.77519959185e-11 AS dual_coeff, 0.01501 AS sv_0, 90.0 AS sv_1, 1.21 AS sv_2, 1.0 AS sv_3, 0.401 AS sv_4, 7.923 AS sv_5, 24.8 AS sv_6, 5.885 AS sv_7, 1.0 AS sv_8, 198.0 AS sv_9, 13.6 AS sv_10, 395.52 AS sv_11, 3.16 AS sv_12 UNION ALL SELECT 27 AS sv_idx, -2.29361666093e-10 AS dual_coeff, 0.03738 AS sv_0, 0.0 AS sv_1, 5.19 AS sv_2, 0.0 AS sv_3, 0.515 AS sv_4, 6.31 AS sv_5, 38.5 AS sv_6, 6.4584 AS sv_7, 5.0 AS sv_8, 224.0 AS sv_9, 20.2 AS sv_10, 389.4 AS sv_11, 6.75 AS sv_12 UNION ALL SELECT 28 AS sv_idx, -4.45546957657e-10 AS dual_coeff, 0.06151 AS sv_0, 0.0 AS sv_1, 5.19 AS sv_2, 0.0 AS sv_3, 0.515 AS sv_4, 5.968 AS sv_5, 58.5 AS sv_6, 4.8122 AS sv_7, 5.0 AS sv_8, 224.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 9.29 AS sv_12 UNION ALL SELECT 29 AS sv_idx, -2.15407199828e-09 AS dual_coeff, 3.83684 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.77 AS sv_4, 6.251 AS sv_5, 91.1 AS sv_6, 2.2955 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 350.65 AS sv_11, 14.19 AS sv_12 UNION ALL SELECT 30 AS sv_idx, -2.19013480822e-09 AS dual_coeff, 3.67822 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.77 AS sv_4, 5.362 AS sv_5, 96.2 AS sv_6, 2.1036 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 380.79 AS sv_11, 10.19 AS sv_12 UNION ALL SELECT 31 AS sv_idx, -8.86852054218e-10 AS dual_coeff, 4.22239 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 1.0 AS sv_3, 0.77 AS sv_4, 5.803 AS sv_5, 89.0 AS sv_6, 1.9047 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 353.04 AS sv_11, 14.64 AS sv_12 UNION ALL SELECT 32 AS sv_idx, -6.99124269328e-11 AS dual_coeff, 3.47428 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 1.0 AS sv_3, 0.718 AS sv_4, 8.78 AS sv_5, 82.9 AS sv_6, 1.9047 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 354.55 AS sv_11, 5.29 AS sv_12 UNION ALL SELECT 33 AS sv_idx, 2.73077126113e-09 AS dual_coeff, 4.89822 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.631 AS sv_4, 4.97 AS sv_5, 100.0 AS sv_6, 1.3325 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 375.52 AS sv_11, 3.26 AS sv_12 UNION ALL SELECT 34 AS sv_idx, 1.55514514278e-09 AS dual_coeff, 6.53876 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 1.0 AS sv_3, 0.631 AS sv_4, 7.016 AS sv_5, 97.5 AS sv_6, 1.2024 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 392.05 AS sv_11, 2.96 AS sv_12 UNION ALL SELECT 35 AS sv_idx, 2.11338831138e-10 AS dual_coeff, 9.2323 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.631 AS sv_4, 6.216 AS sv_5, 100.0 AS sv_6, 1.1691 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 366.15 AS sv_11, 9.53 AS sv_12 UNION ALL SELECT 36 AS sv_idx, 3.0409240525e-09 AS dual_coeff, 8.26725 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 1.0 AS sv_3, 0.668 AS sv_4, 5.875 AS sv_5, 89.6 AS sv_6, 1.1296 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 347.88 AS sv_11, 8.88 AS sv_12 UNION ALL SELECT 37 AS sv_idx, 1.53697001357e-10 AS dual_coeff, 11.1081 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.668 AS sv_4, 4.906 AS sv_5, 100.0 AS sv_6, 1.1742 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 34.77 AS sv_12 UNION ALL SELECT 38 AS sv_idx, 8.10353939855e-09 AS dual_coeff, 18.4982 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.668 AS sv_4, 4.138 AS sv_5, 100.0 AS sv_6, 1.137 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 37.97 AS sv_12 UNION ALL SELECT 39 AS sv_idx, 6.53478384954e-12 AS dual_coeff, 88.9762 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.671 AS sv_4, 6.968 AS sv_5, 91.9 AS sv_6, 1.4165 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 17.21 AS sv_12 UNION ALL SELECT 40 AS sv_idx, -5.9176782855e-09 AS dual_coeff, 16.8118 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.7 AS sv_4, 5.277 AS sv_5, 98.1 AS sv_6, 1.4261 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 30.81 AS sv_12 UNION ALL SELECT 41 AS sv_idx, -1.53697001357e-10 AS dual_coeff, 14.3337 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.7 AS sv_4, 4.88 AS sv_5, 100.0 AS sv_6, 1.5895 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 372.92 AS sv_11, 30.62 AS sv_12 UNION ALL SELECT 42 AS sv_idx, -7.152861698e-11 AS dual_coeff, 38.3518 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 5.453 AS sv_5, 100.0 AS sv_6, 1.4896 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 30.59 AS sv_12 UNION ALL SELECT 43 AS sv_idx, -7.37071780317e-11 AS dual_coeff, 9.91655 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 5.852 AS sv_5, 77.8 AS sv_6, 1.5004 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 338.16 AS sv_11, 29.97 AS sv_12 UNION ALL SELECT 44 AS sv_idx, -1.38367363301e-09 AS dual_coeff, 25.0461 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 5.987 AS sv_5, 100.0 AS sv_6, 1.5888 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 396.9 AS sv_11, 26.77 AS sv_12 UNION ALL SELECT 45 AS sv_idx, -2.11338831138e-10 AS dual_coeff, 9.59571 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 6.404 AS sv_5, 100.0 AS sv_6, 1.639 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 376.11 AS sv_11, 20.31 AS sv_12 UNION ALL SELECT 46 AS sv_idx, -2.48186963333e-11 AS dual_coeff, 41.5292 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 5.531 AS sv_5, 85.4 AS sv_6, 1.6074 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 329.46 AS sv_11, 27.38 AS sv_12 UNION ALL SELECT 47 AS sv_idx, -7.87035701662e-11 AS dual_coeff, 67.9208 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 5.683 AS sv_5, 100.0 AS sv_6, 1.4254 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 384.97 AS sv_11, 22.98 AS sv_12 UNION ALL SELECT 48 AS sv_idx, 5.62215151856e-11 AS dual_coeff, 14.4383 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.597 AS sv_4, 6.852 AS sv_5, 100.0 AS sv_6, 1.4655 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 179.36 AS sv_11, 19.78 AS sv_12 UNION ALL SELECT 49 AS sv_idx, 1.47460557689e-10 AS dual_coeff, 51.1358 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.597 AS sv_4, 5.757 AS sv_5, 100.0 AS sv_6, 1.413 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 2.6 AS sv_11, 10.11 AS sv_12 UNION ALL SELECT 50 AS sv_idx, 3.56891516779e-09 AS dual_coeff, 18.811 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.597 AS sv_4, 4.628 AS sv_5, 100.0 AS sv_6, 1.5539 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 28.79 AS sv_11, 34.37 AS sv_12 UNION ALL SELECT 51 AS sv_idx, -4.85013482872e-11 AS dual_coeff, 28.6558 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.597 AS sv_4, 5.155 AS sv_5, 100.0 AS sv_6, 1.5894 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 210.97 AS sv_11, 20.08 AS sv_12 UNION ALL SELECT 52 AS sv_idx, -4.79355502191e-12 AS dual_coeff, 45.7461 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.693 AS sv_4, 4.519 AS sv_5, 100.0 AS sv_6, 1.6582 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 88.27 AS sv_11, 36.98 AS sv_12 UNION ALL SELECT 53 AS sv_idx, -3.85555409321e-09 AS dual_coeff, 18.0846 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 6.434 AS sv_5, 100.0 AS sv_6, 1.8347 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 27.25 AS sv_11, 29.05 AS sv_12 UNION ALL SELECT 54 AS sv_idx, -1.05155302005e-09 AS dual_coeff, 10.8342 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 6.782 AS sv_5, 90.8 AS sv_6, 1.8195 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 21.57 AS sv_11, 25.79 AS sv_12 UNION ALL SELECT 55 AS sv_idx, 2.23161562679e-10 AS dual_coeff, 73.5341 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 5.957 AS sv_5, 100.0 AS sv_6, 1.8026 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 16.45 AS sv_11, 20.62 AS sv_12 UNION ALL SELECT 56 AS sv_idx, -2.83621892219e-11 AS dual_coeff, 8.79212 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.584 AS sv_4, 5.565 AS sv_5, 70.6 AS sv_6, 2.0635 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 3.65 AS sv_11, 17.16 AS sv_12 UNION ALL SELECT 57 AS sv_idx, -1.26607040528e-09 AS dual_coeff, 15.8603 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 5.896 AS sv_5, 95.4 AS sv_6, 1.9096 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 7.68 AS sv_11, 24.39 AS sv_12 UNION ALL SELECT 58 AS sv_idx, 4.00241047844e-11 AS dual_coeff, 12.2472 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.584 AS sv_4, 5.837 AS sv_5, 59.7 AS sv_6, 1.9976 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 24.65 AS sv_11, 15.69 AS sv_12 UNION ALL SELECT 59 AS sv_idx, -1.00735097413e-11 AS dual_coeff, 37.6619 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 6.202 AS sv_5, 78.7 AS sv_6, 1.8629 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 18.82 AS sv_11, 14.52 AS sv_12 UNION ALL SELECT 60 AS sv_idx, -6.43250017179e-10 AS dual_coeff, 7.36711 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.679 AS sv_4, 6.193 AS sv_5, 78.1 AS sv_6, 1.9356 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 96.73 AS sv_11, 21.52 AS sv_12 UNION ALL SELECT 61 AS sv_idx, 6.43250017179e-10 AS dual_coeff, 6.44405 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.584 AS sv_4, 6.425 AS sv_5, 74.8 AS sv_6, 2.2004 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 97.95 AS sv_11, 12.03 AS sv_12 UNION ALL SELECT 62 AS sv_idx, -2.52119011047e-11 AS dual_coeff, 13.9134 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.208 AS sv_5, 95.0 AS sv_6, 2.2222 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 100.63 AS sv_11, 15.17 AS sv_12 UNION ALL SELECT 63 AS sv_idx, -2.88219137237e-10 AS dual_coeff, 14.4208 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 6.461 AS sv_5, 93.3 AS sv_6, 2.0026 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 27.49 AS sv_11, 18.05 AS sv_12 UNION ALL SELECT 64 AS sv_idx, -6.6255544154e-10 AS dual_coeff, 22.0511 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 5.818 AS sv_5, 92.4 AS sv_6, 1.8662 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 391.45 AS sv_11, 22.11 AS sv_12 UNION ALL SELECT 65 AS sv_idx, -7.38132440167e-10 AS dual_coeff, 9.92485 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.74 AS sv_4, 6.251 AS sv_5, 96.6 AS sv_6, 2.198 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 388.52 AS sv_11, 16.44 AS sv_12 UNION ALL SELECT 66 AS sv_idx, 8.19611962977e-10 AS dual_coeff, 6.71772 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.749 AS sv_5, 92.6 AS sv_6, 2.3236 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 0.32 AS sv_11, 17.44 AS sv_12 UNION ALL SELECT 67 AS sv_idx, -5.40636452915e-10 AS dual_coeff, 8.24809 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 7.393 AS sv_5, 99.3 AS sv_6, 2.4527 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 375.87 AS sv_11, 16.74 AS sv_12 UNION ALL SELECT 68 AS sv_idx, 4.46458442307e-10 AS dual_coeff, 9.51363 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.728 AS sv_5, 94.1 AS sv_6, 2.4961 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 6.68 AS sv_11, 18.71 AS sv_12 UNION ALL SELECT 69 AS sv_idx, -4.33877875581e-10 AS dual_coeff, 5.82115 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.713 AS sv_4, 6.513 AS sv_5, 89.9 AS sv_6, 2.8016 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 393.82 AS sv_11, 10.29 AS sv_12 UNION ALL SELECT 70 AS sv_idx, 1.26643698435e-09 AS dual_coeff, 3.77498 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.655 AS sv_4, 5.952 AS sv_5, 84.7 AS sv_6, 2.8715 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 22.01 AS sv_11, 17.15 AS sv_12 UNION ALL SELECT 71 AS sv_idx, -3.83134827032e-10 AS dual_coeff, 14.3337 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.614 AS sv_4, 6.229 AS sv_5, 88.0 AS sv_6, 1.9512 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 383.32 AS sv_11, 13.11 AS sv_12 UNION ALL SELECT 72 AS sv_idx, 1.04731886006e-10 AS dual_coeff, 2.81838 AS sv_0, 0.0 AS sv_1, 18.1 AS sv_2, 0.0 AS sv_3, 0.532 AS sv_4, 5.762 AS sv_5, 40.3 AS sv_6, 4.0983 AS sv_7, 24.0 AS sv_8, 666.0 AS sv_9, 20.2 AS sv_10, 392.92 AS sv_11, 10.42 AS sv_12 UNION ALL SELECT 73 AS sv_idx, -1.47810686719e-10 AS dual_coeff, 0.15086 AS sv_0, 0.0 AS sv_1, 27.74 AS sv_2, 0.0 AS sv_3, 0.609 AS sv_4, 5.454 AS sv_5, 92.7 AS sv_6, 1.8209 AS sv_7, 4.0 AS sv_8, 711.0 AS sv_9, 20.1 AS sv_10, 395.09 AS sv_11, 18.06 AS sv_12 UNION ALL SELECT 74 AS sv_idx, -1.405095638e-10 AS dual_coeff, 0.18337 AS sv_0, 0.0 AS sv_1, 27.74 AS sv_2, 0.0 AS sv_3, 0.609 AS sv_4, 5.414 AS sv_5, 98.3 AS sv_6, 1.7554 AS sv_7, 4.0 AS sv_8, 711.0 AS sv_9, 20.1 AS sv_10, 344.05 AS sv_11, 23.97 AS sv_12 UNION ALL SELECT 75 AS sv_idx, -5.84281352096e-11 AS dual_coeff, 0.20746 AS sv_0, 0.0 AS sv_1, 27.74 AS sv_2, 0.0 AS sv_3, 0.609 AS sv_4, 5.093 AS sv_5, 98.0 AS sv_6, 1.8226 AS sv_7, 4.0 AS sv_8, 711.0 AS sv_9, 20.1 AS sv_10, 318.43 AS sv_11, 29.68 AS sv_12 UNION ALL SELECT 76 AS sv_idx, 1.63122796979e-11 AS dual_coeff, 0.10574 AS sv_0, 0.0 AS sv_1, 27.74 AS sv_2, 0.0 AS sv_3, 0.609 AS sv_4, 5.983 AS sv_5, 98.8 AS sv_6, 1.8681 AS sv_7, 4.0 AS sv_8, 711.0 AS sv_9, 20.1 AS sv_10, 390.11 AS sv_11, 18.07 AS sv_12 UNION ALL SELECT 77 AS sv_idx, 4.41634092205e-10 AS dual_coeff, 0.11132 AS sv_0, 0.0 AS sv_1, 27.74 AS sv_2, 0.0 AS sv_3, 0.609 AS sv_4, 5.983 AS sv_5, 83.5 AS sv_6, 2.1099 AS sv_7, 4.0 AS sv_8, 711.0 AS sv_9, 20.1 AS sv_10, 396.9 AS sv_11, 13.35 AS sv_12 UNION ALL SELECT 78 AS sv_idx, 6.5254402699e-10 AS dual_coeff, 0.27957 AS sv_0, 0.0 AS sv_1, 9.69 AS sv_2, 0.0 AS sv_3, 0.585 AS sv_4, 5.926 AS sv_5, 42.6 AS sv_6, 2.3817 AS sv_7, 6.0 AS sv_8, 391.0 AS sv_9, 19.2 AS sv_10, 396.9 AS sv_11, 13.59 AS sv_12 UNION ALL SELECT 79 AS sv_idx, -1.08991731758e-10 AS dual_coeff, 0.04741 AS sv_0, 0.0 AS sv_1, 11.93 AS sv_2, 0.0 AS sv_3, 0.573 AS sv_4, 6.03 AS sv_5, 80.8 AS sv_6, 2.505 AS sv_7, 1.0 AS sv_8, 273.0 AS sv_9, 21.0 AS sv_10, 396.9 AS sv_11, 7.88 AS sv_12) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -25.7013646415 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.07692307692307693 * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9 + "ADS"."Feature_10" * "SV_data".sv_10 + "ADS"."Feature_11" * "SV_data".sv_11 + "ADS"."Feature_12" * "SV_data".sv_12) + 0.0, 3) AS dot_prod1 
FROM "INPUT_DATA" AS "ADS", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte