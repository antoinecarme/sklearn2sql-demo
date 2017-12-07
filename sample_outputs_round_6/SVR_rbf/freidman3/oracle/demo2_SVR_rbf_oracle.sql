-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.157232864363 AS dual_coeff, 60.0301528655 AS sv_0, 1510.25674337 AS sv_1, 0.683383544851 AS sv_2, 9.23424969715 AS sv_3 FROM DUAL UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 94.7517386504 AS sv_0, 728.663340129 AS sv_1, 0.0110118001464 AS sv_2, 4.20892889578 AS sv_3 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -0.113519305939 AS dual_coeff, 16.4249427201 AS sv_0, 570.974632032 AS sv_1, 0.049219810245 AS sv_2, 4.55665061184 AS sv_3 FROM DUAL UNION ALL SELECT 3 AS sv_idx, -0.0212440801675 AS dual_coeff, 48.2126327981 AS sv_0, 213.442618985 AS sv_1, 0.483929779766 AS sv_2, 2.50336737702 AS sv_3 FROM DUAL UNION ALL SELECT 4 AS sv_idx, 0.140724437115 AS dual_coeff, 50.9047721862 AS sv_0, 1718.31788477 AS sv_1, 0.397335960355 AS sv_2, 4.11608676281 AS sv_3 FROM DUAL UNION ALL SELECT 5 AS sv_idx, 0.00795646301567 AS dual_coeff, 68.248517912 AS sv_0, 413.853136615 AS sv_1, 0.783101185442 AS sv_2, 10.9603571715 AS sv_3 FROM DUAL UNION ALL SELECT 6 AS sv_idx, 0.128949592478 AS dual_coeff, 7.8374974093 AS sv_0, 427.748001103 AS sv_1, 0.210284827293 AS sv_2, 8.06489856953 AS sv_3 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 0.184904129943 AS dual_coeff, 16.0583688683 AS sv_0, 1242.3077891 AS sv_1, 0.426973144506 AS sv_2, 4.53921308332 AS sv_3 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 0.195793421121 AS dual_coeff, 4.0975370305 AS sv_0, 234.964294946 AS sv_1, 0.898621484326 AS sv_2, 2.87709638956 AS sv_3 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 0.0420961978734 AS dual_coeff, 54.6162655669 AS sv_0, 1444.29907247 AS sv_1, 0.21623755036 AS sv_2, 8.72944070588 AS sv_3 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 0.210173588475 AS dual_coeff, 4.64139132698 AS sv_0, 1592.5204942 AS sv_1, 0.580121198693 AS sv_2, 2.38085311846 AS sv_3 FROM DUAL UNION ALL SELECT 11 AS sv_idx, -0.0415515623285 AS dual_coeff, 43.4468092787 AS sv_0, 539.897030351 AS sv_1, 0.16377172398 AS sv_2, 6.19366615378 AS sv_3 FROM DUAL UNION ALL SELECT 12 AS sv_idx, 0.142355428231 AS dual_coeff, 27.5342174183 AS sv_0, 1544.46270474 AS sv_1, 0.243466597801 AS sv_2, 10.6560516593 AS sv_3 FROM DUAL UNION ALL SELECT 13 AS sv_idx, 0.167121196016 AS dual_coeff, 36.0139912462 AS sv_0, 1203.82569959 AS sv_1, 0.625374194652 AS sv_2, 10.31682238 AS sv_3 FROM DUAL UNION ALL SELECT 14 AS sv_idx, 0.210459607067 AS dual_coeff, 3.50451455461 AS sv_0, 1208.42077624 AS sv_1, 0.581020766362 AS sv_2, 4.86135330362 AS sv_3 FROM DUAL UNION ALL SELECT 15 AS sv_idx, -0.999572199843 AS dual_coeff, 90.4748773718 AS sv_0, 1202.21594548 AS sv_1, 0.0118361623568 AS sv_2, 1.95683916831 AS sv_3 FROM DUAL UNION ALL SELECT 16 AS sv_idx, 0.188231228419 AS dual_coeff, 13.4420139203 AS sv_0, 739.942533659 AS sv_1, 0.666764186093 AS sv_2, 10.5048791365 AS sv_3 FROM DUAL UNION ALL SELECT 17 AS sv_idx, 0.210360661821 AS dual_coeff, 1.85704583299 AS sv_0, 830.170234379 AS sv_1, 0.428346672228 AS sv_2, 2.58167198285 AS sv_3 FROM DUAL UNION ALL SELECT 18 AS sv_idx, -0.275464347409 AS dual_coeff, 72.0252738049 AS sv_0, 233.170172291 AS sv_1, 0.37365969393 AS sv_2, 1.9704600459 AS sv_3 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -0.671869221017 AS dual_coeff, 80.2854057152 AS sv_0, 885.687273126 AS sv_1, 0.0476196225893 AS sv_2, 9.70692927653 AS sv_3 FROM DUAL UNION ALL SELECT 20 AS sv_idx, 0.1497993385 AS dual_coeff, 55.7801073969 AS sv_0, 1395.10931799 AS sv_1, 0.606913632014 AS sv_2, 1.36721153664 AS sv_3 FROM DUAL UNION ALL SELECT 21 AS sv_idx, -0.509338107619 AS dual_coeff, 99.7291931551 AS sv_0, 223.303989837 AS sv_1, 0.336607943677 AS sv_2, 5.93987104539 AS sv_3 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 0.199115134621 AS dual_coeff, 13.4277365288 AS sv_0, 1166.9318341 AS sv_1, 0.701823027878 AS sv_2, 6.03682450086 AS sv_3 FROM DUAL UNION ALL SELECT 23 AS sv_idx, 0.14264047711 AS dual_coeff, 72.2160965443 AS sv_0, 1116.88278858 AS sv_1, 0.889928279733 AS sv_2, 10.5763677289 AS sv_3 FROM DUAL UNION ALL SELECT 24 AS sv_idx, 0.136451104501 AS dual_coeff, 23.9554394886 AS sv_0, 1299.3680581 AS sv_1, 0.233238156558 AS sv_2, 9.39823577005 AS sv_3 FROM DUAL UNION ALL SELECT 25 AS sv_idx, 0.0275445872586 AS dual_coeff, 23.9134344478 AS sv_0, 279.463659199 AS sv_1, 0.449879483259 AS sv_2, 3.8354987748 AS sv_3 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 0.0890386750842 AS dual_coeff, 22.0588619103 AS sv_0, 237.672101287 AS sv_1, 0.730385277204 AS sv_2, 10.6770001252 AS sv_3 FROM DUAL UNION ALL SELECT 27 AS sv_idx, 0.0244195681267 AS dual_coeff, 34.1304574138 AS sv_0, 1131.5040349 AS sv_1, 0.156210820733 AS sv_2, 2.2008079318 AS sv_3 FROM DUAL UNION ALL SELECT 28 AS sv_idx, 0.156929746095 AS dual_coeff, 57.2056178255 AS sv_0, 1502.66261419 AS sv_1, 0.652042380363 AS sv_2, 3.23788677251 AS sv_3 FROM DUAL UNION ALL SELECT 29 AS sv_idx, 0.0923171615664 AS dual_coeff, 91.1540899554 AS sv_0, 963.618123982 AS sv_1, 0.765940990638 AS sv_2, 6.93994648222 AS sv_3 FROM DUAL UNION ALL SELECT 30 AS sv_idx, 0.20784523639 AS dual_coeff, 2.17083034855 AS sv_0, 684.06373149 AS sv_1, 0.416134315781 AS sv_2, 7.48540965008 AS sv_3 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 0.155067111645 AS dual_coeff, 11.9898983542 AS sv_0, 208.338345301 AS sv_1, 0.949595667168 AS sv_2, 9.29635599228 AS sv_3 FROM DUAL UNION ALL SELECT 32 AS sv_idx, -0.950595877618 AS dual_coeff, 89.343952799 AS sv_0, 171.276210904 AS sv_1, 0.108525359211 AS sv_2, 4.46466772393 AS sv_3 FROM DUAL UNION ALL SELECT 33 AS sv_idx, 0.0964260323671 AS dual_coeff, 12.4469120738 AS sv_0, 190.891791317 AS sv_1, 0.546282528474 AS sv_2, 6.39712554061 AS sv_3 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -0.140494162126 AS dual_coeff, 63.1602360376 AS sv_0, 150.372984257 AS sv_1, 0.675411123973 AS sv_2, 5.2283904277 AS sv_3 FROM DUAL UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, 77.7656674039 AS sv_0, 423.526756065 AS sv_1, 0.0124827661366 AS sv_2, 3.01216234873 AS sv_3 FROM DUAL UNION ALL SELECT 36 AS sv_idx, 0.070204136049 AS dual_coeff, 97.323600873 AS sv_0, 1049.54156521 AS sv_1, 0.63393905393 AS sv_2, 7.34428724951 AS sv_3 FROM DUAL UNION ALL SELECT 37 AS sv_idx, 0.0672604452586 AS dual_coeff, 77.8382408533 AS sv_0, 636.300270193 AS sv_1, 0.821452207958 AS sv_2, 1.6874072555 AS sv_3 FROM DUAL UNION ALL SELECT 38 AS sv_idx, 0.196912662502 AS dual_coeff, 21.0560745678 AS sv_0, 1691.61652838 AS sv_1, 0.678773077797 AS sv_2, 2.95047992911 AS sv_3 FROM DUAL UNION ALL SELECT 39 AS sv_idx, 0.0732479232259 AS dual_coeff, 58.8123983807 AS sv_0, 1514.68043632 AS sv_1, 0.271155455387 AS sv_2, 5.59487146924 AS sv_3 FROM DUAL UNION ALL SELECT 40 AS sv_idx, 0.176685764195 AS dual_coeff, 4.61837527852 AS sv_0, 151.766910206 AS sv_1, 0.784947891121 AS sv_2, 8.53809595302 AS sv_3 FROM DUAL UNION ALL SELECT 41 AS sv_idx, 0.0627009512635 AS dual_coeff, 63.1932361978 AS sv_0, 418.396509261 AS sv_1, 0.982924833686 AS sv_2, 9.95397408336 AS sv_3 FROM DUAL UNION ALL SELECT 42 AS sv_idx, 0.118292153284 AS dual_coeff, 52.9291415211 AS sv_0, 733.960059301 AS sv_1, 0.74224639786 AS sv_2, 8.70098786828 AS sv_3 FROM DUAL UNION ALL SELECT 43 AS sv_idx, 0.111263948495 AS dual_coeff, 94.3459614922 AS sv_0, 1213.74693523 AS sv_1, 0.7431745371 AS sv_2, 9.07048690235 AS sv_3 FROM DUAL UNION ALL SELECT 44 AS sv_idx, 0.135351467563 AS dual_coeff, 27.8250884968 AS sv_0, 386.533146027 AS sv_1, 0.896479764152 AS sv_2, 10.9835362679 AS sv_3 FROM DUAL UNION ALL SELECT 45 AS sv_idx, 0.153943180518 AS dual_coeff, 18.1216698695 AS sv_0, 396.604341724 AS sv_1, 0.741686958036 AS sv_2, 7.90126875013 AS sv_3 FROM DUAL UNION ALL SELECT 46 AS sv_idx, 0.113519305939 AS dual_coeff, 21.275100293 AS sv_0, 844.59266993 AS sv_1, 0.246407536781 AS sv_2, 6.20925642749 AS sv_3 FROM DUAL UNION ALL SELECT 47 AS sv_idx, 0.18285389853 AS dual_coeff, 36.7719440678 AS sv_0, 1510.36634268 AS sv_1, 0.75247944575 AS sv_2, 7.45783585705 AS sv_3 FROM DUAL UNION ALL SELECT 48 AS sv_idx, -0.0388669880365 AS dual_coeff, 80.3066936824 AS sv_0, 301.144705502 AS sv_1, 0.546411187666 AS sv_2, 10.9111760756 AS sv_3 FROM DUAL UNION ALL SELECT 49 AS sv_idx, 0.182451522835 AS dual_coeff, 43.2189580839 AS sv_0, 1492.15863856 AS sv_1, 0.883503194522 AS sv_2, 9.00291003524 AS sv_3 FROM DUAL UNION ALL SELECT 50 AS sv_idx, 0.0898794568711 AS dual_coeff, 86.2026062889 AS sv_0, 1017.85466508 AS sv_1, 0.670892116105 AS sv_2, 5.10319392312 AS sv_3 FROM DUAL UNION ALL SELECT 51 AS sv_idx, 0.199494132443 AS dual_coeff, 13.551880038 AS sv_0, 1412.54912482 AS sv_1, 0.609652596793 AS sv_2, 1.26517587314 AS sv_3 FROM DUAL UNION ALL SELECT 52 AS sv_idx, 0.164681647774 AS dual_coeff, 6.14785257105 AS sv_0, 192.775968838 AS sv_1, 0.626907250762 AS sv_2, 3.58754553089 AS sv_3 FROM DUAL UNION ALL SELECT 53 AS sv_idx, 0.0505920275964 AS dual_coeff, 47.0805117925 AS sv_0, 975.753552292 AS sv_1, 0.290234645353 AS sv_2, 3.95916762567 AS sv_3 FROM DUAL UNION ALL SELECT 54 AS sv_idx, 0.149228238555 AS dual_coeff, 9.00268465567 AS sv_0, 1115.00043454 AS sv_1, 0.121637230274 AS sv_2, 1.52848982633 AS sv_3 FROM DUAL) "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + 1.25544084312 AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * exp(-0.25 * (power("ADS"."Feature_0" - "SV_data".sv_0, 2) + power("ADS"."Feature_1" - "SV_data".sv_1, 2) + power("ADS"."Feature_2" - "SV_data".sv_2, 2) + power("ADS"."Feature_3" - "SV_data".sv_3, 2))) AS dot_prod1 
FROM freidman3 "ADS", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte