-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor
-- Dataset : freidman2
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_2" <= 0.5361224412918091) THEN CASE WHEN ("ADS"."Feature_2" <= 0.2454954981803894) THEN CASE WHEN ("ADS"."Feature_2" <= 0.1157732754945755) THEN CASE WHEN ("ADS"."Feature_2" <= 0.041584230959415436) THEN CASE WHEN ("ADS"."Feature_1" <= 1445.20751953125) THEN CASE WHEN ("ADS"."Feature_0" <= 39.704856872558594) THEN 6 ELSE 7 END ELSE 8 END ELSE CASE WHEN ("ADS"."Feature_1" <= 730.0179443359375) THEN CASE WHEN ("ADS"."Feature_0" <= 28.797138214111328) THEN 11 ELSE CASE WHEN ("ADS"."Feature_3" <= 2.683657169342041) THEN 13 ELSE CASE WHEN ("ADS"."Feature_1" <= 434.2789306640625) THEN 15 ELSE 16 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1173.615478515625) THEN 18 ELSE CASE WHEN ("ADS"."Feature_3" <= 4.160592079162598) THEN 20 ELSE 21 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 904.9034423828125) THEN CASE WHEN ("ADS"."Feature_2" <= 0.22980211675167084) THEN CASE WHEN ("ADS"."Feature_1" <= 765.29931640625) THEN 25 ELSE 26 END ELSE 27 END ELSE CASE WHEN ("ADS"."Feature_0" <= 28.48598861694336) THEN 29 ELSE CASE WHEN ("ADS"."Feature_3" <= 4.4665937423706055) THEN CASE WHEN ("ADS"."Feature_1" <= 1310.621826171875) THEN 32 ELSE 33 END ELSE 34 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1455.501708984375) THEN CASE WHEN ("ADS"."Feature_1" <= 505.9144287109375) THEN CASE WHEN ("ADS"."Feature_1" <= 384.3021240234375) THEN CASE WHEN ("ADS"."Feature_3" <= 9.283037185668945) THEN CASE WHEN ("ADS"."Feature_2" <= 0.43169063329696655) THEN 40 ELSE CASE WHEN ("ADS"."Feature_1" <= 268.46044921875) THEN 42 ELSE 43 END END ELSE 44 END ELSE 45 END ELSE CASE WHEN ("ADS"."Feature_0" <= 4.229164123535156) THEN 47 ELSE CASE WHEN ("ADS"."Feature_1" <= 846.92822265625) THEN CASE WHEN ("ADS"."Feature_2" <= 0.42065882682800293) THEN CASE WHEN ("ADS"."Feature_2" <= 0.3052070736885071) THEN 51 ELSE 52 END ELSE 53 END ELSE CASE WHEN ("ADS"."Feature_1" <= 956.167724609375) THEN 55 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.25638625025749207) THEN 57 ELSE CASE WHEN ("ADS"."Feature_3" <= 6.27841854095459) THEN CASE WHEN ("ADS"."Feature_1" <= 1265.6083984375) THEN 60 ELSE 61 END ELSE 62 END END END END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.36327823996543884) THEN 64 ELSE CASE WHEN ("ADS"."Feature_1" <= 1665.9482421875) THEN CASE WHEN ("ADS"."Feature_2" <= 0.4223918914794922) THEN 67 ELSE 68 END ELSE 69 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 967.7061157226562) THEN CASE WHEN ("ADS"."Feature_1" <= 541.9518432617188) THEN CASE WHEN ("ADS"."Feature_1" <= 329.4079284667969) THEN CASE WHEN ("ADS"."Feature_1" <= 195.00570678710938) THEN CASE WHEN ("ADS"."Feature_2" <= 0.6791774034500122) THEN 75 ELSE 76 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.862852156162262) THEN CASE WHEN ("ADS"."Feature_3" <= 5.188283920288086) THEN CASE WHEN ("ADS"."Feature_1" <= 256.3046569824219) THEN 80 ELSE 81 END ELSE 82 END ELSE 83 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 64.47386932373047) THEN CASE WHEN ("ADS"."Feature_1" <= 360.9476013183594) THEN 86 ELSE CASE WHEN ("ADS"."Feature_0" <= 32.78070831298828) THEN 88 ELSE 89 END END ELSE 90 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.792053759098053) THEN CASE WHEN ("ADS"."Feature_1" <= 745.0648193359375) THEN CASE WHEN ("ADS"."Feature_2" <= 0.7017911672592163) THEN 94 ELSE 95 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.7272883057594299) THEN CASE WHEN ("ADS"."Feature_2" <= 0.6139316558837891) THEN CASE WHEN ("ADS"."Feature_3" <= 9.924248695373535) THEN 99 ELSE 100 END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6584039926528931) THEN 102 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6879751682281494) THEN 104 ELSE 105 END END END ELSE 106 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.9608291387557983) THEN CASE WHEN ("ADS"."Feature_1" <= 914.8431396484375) THEN CASE WHEN ("ADS"."Feature_3" <= 9.277203559875488) THEN 110 ELSE 111 END ELSE 112 END ELSE 113 END END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.8147956132888794) THEN CASE WHEN ("ADS"."Feature_1" <= 1191.3021240234375) THEN CASE WHEN ("ADS"."Feature_2" <= 0.7315759658813477) THEN CASE WHEN ("ADS"."Feature_0" <= 43.44005584716797) THEN CASE WHEN ("ADS"."Feature_1" <= 1161.608154296875) THEN CASE WHEN ("ADS"."Feature_3" <= 6.572883605957031) THEN 120 ELSE 121 END ELSE 122 END ELSE CASE WHEN ("ADS"."Feature_0" <= 61.12663650512695) THEN 124 ELSE 125 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.7579420804977417) THEN 127 ELSE 128 END END ELSE CASE WHEN ("ADS"."Feature_3" <= 5.738801956176758) THEN CASE WHEN ("ADS"."Feature_2" <= 0.749254047870636) THEN CASE WHEN ("ADS"."Feature_0" <= 57.48847198486328) THEN CASE WHEN ("ADS"."Feature_0" <= 40.40676498413086) THEN 133 ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6571033000946045) THEN 135 ELSE 136 END END ELSE 137 END ELSE CASE WHEN ("ADS"."Feature_1" <= 1258.8309326171875) THEN 139 ELSE 140 END END ELSE CASE WHEN ("ADS"."Feature_2" <= 0.6714193820953369) THEN 142 ELSE 143 END END END ELSE CASE WHEN ("ADS"."Feature_1" <= 1218.5750732421875) THEN CASE WHEN ("ADS"."Feature_1" <= 1066.5789794921875) THEN CASE WHEN ("ADS"."Feature_0" <= 55.967384338378906) THEN 147 ELSE 148 END ELSE CASE WHEN ("ADS"."Feature_0" <= 57.584434509277344) THEN 150 ELSE 151 END END ELSE CASE WHEN ("ADS"."Feature_0" <= 84.44674682617188) THEN CASE WHEN ("ADS"."Feature_3" <= 10.500864028930664) THEN CASE WHEN ("ADS"."Feature_0" <= 61.993324279785156) THEN 155 ELSE 156 END ELSE 157 END ELSE 158 END END END END END AS node_id_2 
FROM freidman2 AS "ADS"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS FLOAT) AS "E" 
FROM (SELECT 6 AS nid, 42.018391850884555 AS "E" UNION ALL SELECT 7 AS nid, 45.711134119636455 AS "E" UNION ALL SELECT 8 AS nid, 17.512631595279426 AS "E" UNION ALL SELECT 11 AS nid, 38.41875351252209 AS "E" UNION ALL SELECT 13 AS nid, 60.176849293467896 AS "E" UNION ALL SELECT 15 AS nid, 66.46875935932795 AS "E" UNION ALL SELECT 16 AS nid, 67.61473197876893 AS "E" UNION ALL SELECT 18 AS nid, 89.81697752732039 AS "E" UNION ALL SELECT 20 AS nid, 74.13416807423762 AS "E" UNION ALL SELECT 21 AS nid, 81.61991678616678 AS "E" UNION ALL SELECT 25 AS nid, 174.68142016985658 AS "E" UNION ALL SELECT 26 AS nid, 168.83377965051633 AS "E" UNION ALL SELECT 27 AS nid, 154.5046147319957 AS "E" UNION ALL SELECT 29 AS nid, 251.33228305881974 AS "E" UNION ALL SELECT 32 AS nid, 205.3701341514766 AS "E" UNION ALL SELECT 33 AS nid, 212.830158263888 AS "E" UNION ALL SELECT 34 AS nid, 222.68097150025514 AS "E" UNION ALL SELECT 40 AS nid, 112.36813458423964 AS "E" UNION ALL SELECT 42 AS nid, 131.7476052576105 AS "E" UNION ALL SELECT 43 AS nid, 123.9800647564113 AS "E" UNION ALL SELECT 44 AS nid, 43.137171961132545 AS "E" UNION ALL SELECT 45 AS nid, 210.24199264146273 AS "E" UNION ALL SELECT 47 AS nid, 469.13995215914326 AS "E" UNION ALL SELECT 51 AS nid, 217.90641984715455 AS "E" UNION ALL SELECT 52 AS nid, 238.91298804636327 AS "E" UNION ALL SELECT 53 AS nid, 287.2624276861204 AS "E" UNION ALL SELECT 55 AS nid, 297.00533496279684 AS "E" UNION ALL SELECT 57 AS nid, 310.5792772981182 AS "E" UNION ALL SELECT 60 AS nid, 331.0359431254546 AS "E" UNION ALL SELECT 61 AS nid, 337.38826235560066 AS "E" UNION ALL SELECT 62 AS nid, 345.51744455608434 AS "E" UNION ALL SELECT 64 AS nid, 520.6117294724178 AS "E" UNION ALL SELECT 67 AS nid, 692.100943703165 AS "E" UNION ALL SELECT 68 AS nid, 707.7479790727192 AS "E" UNION ALL SELECT 69 AS nid, 816.8126591641881 AS "E" UNION ALL SELECT 75 AS nid, 96.00340236716809 AS "E" UNION ALL SELECT 76 AS nid, 129.17022248364017 AS "E" UNION ALL SELECT 80 AS nid, 193.36881074753134 AS "E" UNION ALL SELECT 81 AS nid, 192.5928874201031 AS "E" UNION ALL SELECT 82 AS nid, 184.8117623795125 AS "E" UNION ALL SELECT 83 AS nid, 241.12137081481941 AS "E" UNION ALL SELECT 86 AS nid, 304.56729484769863 AS "E" UNION ALL SELECT 88 AS nid, 340.8943254832582 AS "E" UNION ALL SELECT 89 AS nid, 367.21643390195726 AS "E" UNION ALL SELECT 90 AS nid, 242.6439856433348 AS "E" UNION ALL SELECT 94 AS nid, 419.3634674915536 AS "E" UNION ALL SELECT 95 AS nid, 456.84183869251734 AS "E" UNION ALL SELECT 99 AS nid, 501.63259525741347 AS "E" UNION ALL SELECT 100 AS nid, 543.1057724695256 AS "E" UNION ALL SELECT 102 AS nid, 616.9050653403907 AS "E" UNION ALL SELECT 104 AS nid, 565.7152101690104 AS "E" UNION ALL SELECT 105 AS nid, 577.3486508054865 AS "E" UNION ALL SELECT 106 AS nid, 670.1311858368937 AS "E" UNION ALL SELECT 110 AS nid, 760.2182410358755 AS "E" UNION ALL SELECT 111 AS nid, 762.1275405517559 AS "E" UNION ALL SELECT 112 AS nid, 753.5866338204527 AS "E" UNION ALL SELECT 113 AS nid, 557.4241818513145 AS "E" UNION ALL SELECT 120 AS nid, 630.473085951346 AS "E" UNION ALL SELECT 121 AS nid, 651.5124225081717 AS "E" UNION ALL SELECT 122 AS nid, 680.9611485933566 AS "E" UNION ALL SELECT 124 AS nid, 695.9918006634392 AS "E" UNION ALL SELECT 125 AS nid, 737.4086577418452 AS "E" UNION ALL SELECT 127 AS nid, 784.5912586165624 AS "E" UNION ALL SELECT 128 AS nid, 859.3972652126482 AS "E" UNION ALL SELECT 133 AS nid, 921.1463304331277 AS "E" UNION ALL SELECT 135 AS nid, 936.0898420199726 AS "E" UNION ALL SELECT 136 AS nid, 936.6644927377602 AS "E" UNION ALL SELECT 137 AS nid, 897.110753642675 AS "E" UNION ALL SELECT 139 AS nid, 964.5628691682748 AS "E" UNION ALL SELECT 140 AS nid, 991.6542322177195 AS "E" UNION ALL SELECT 142 AS nid, 1054.1627757923247 AS "E" UNION ALL SELECT 143 AS nid, 1161.775898155192 AS "E" UNION ALL SELECT 147 AS nid, 954.0167507361758 AS "E" UNION ALL SELECT 148 AS nid, 1006.9476600275759 AS "E" UNION ALL SELECT 150 AS nid, 1072.7024657572488 AS "E" UNION ALL SELECT 151 AS nid, 1066.496728091284 AS "E" UNION ALL SELECT 155 AS nid, 1344.2857263205178 AS "E" UNION ALL SELECT 156 AS nid, 1299.7532681415528 AS "E" UNION ALL SELECT 157 AS nid, 1450.4501202950794 AS "E" UNION ALL SELECT 158 AS nid, 1185.2623187042484 AS "E") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"