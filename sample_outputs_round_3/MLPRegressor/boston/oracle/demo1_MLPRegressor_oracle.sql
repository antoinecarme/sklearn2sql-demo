-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9", "ADS"."Feature_10" AS "Feature_10", "ADS"."Feature_11" AS "Feature_11", "ADS"."Feature_12" AS "Feature_12" 
FROM "INPUT_DATA" "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", -0.00616649641261 * "IL"."Feature_0" + 0.445426550186 * "IL"."Feature_1" + -0.564338373899 * "IL"."Feature_2" + -0.444585108822 * "IL"."Feature_3" + -0.100468230732 * "IL"."Feature_4" + -0.204837091738 * "IL"."Feature_5" + -0.251375065754 * "IL"."Feature_6" + 0.109138295984 * "IL"."Feature_7" + -0.372879811694 * "IL"."Feature_8" + 0.457991266099 * "IL"."Feature_9" + -0.248200716036 * "IL"."Feature_10" + 0.0255637910485 * "IL"."Feature_11" + 0.0376097692739 * "IL"."Feature_12" + -0.322655109465 AS "NEUR_1_1", 0.187159179158 * "IL"."Feature_0" + -0.165901177157 * "IL"."Feature_1" + 0.313742384127 * "IL"."Feature_2" + 0.151060807951 * "IL"."Feature_3" + 0.0422553439664 * "IL"."Feature_4" + -0.088260401593 * "IL"."Feature_5" + -0.172315836457 * "IL"."Feature_6" + -0.304411030949 * "IL"."Feature_7" + -0.18567309822 * "IL"."Feature_8" + 0.0731845691931 * "IL"."Feature_9" + -0.12784476478 * "IL"."Feature_10" + 0.431519155977 * "IL"."Feature_11" + -0.561898641317 * "IL"."Feature_12" + 0.0514026378129 AS "NEUR_1_2", 0.0716221304246 * "IL"."Feature_0" + 0.272103325821 * "IL"."Feature_1" + 0.246403835257 * "IL"."Feature_2" + -0.431352926789 * "IL"."Feature_3" + -0.561652742904 * "IL"."Feature_4" + 0.163969023538 * "IL"."Feature_5" + 0.0263894800519 * "IL"."Feature_6" + -0.0788573713853 * "IL"."Feature_7" + 0.303242077112 * "IL"."Feature_8" + 0.209960664115 * "IL"."Feature_9" + -0.510784915703 * "IL"."Feature_10" + -0.239430048425 * "IL"."Feature_11" + 0.309456924207 * "IL"."Feature_12" + 0.0519106137137 AS "NEUR_1_3", 9.44831391332e-09 * "IL"."Feature_0" + -4.6670800638e-11 * "IL"."Feature_1" + 0.0608035197906 * "IL"."Feature_2" + 0.105264828342 * "IL"."Feature_3" + 0.000152296897523 * "IL"."Feature_4" + -0.102069679123 * "IL"."Feature_5" + -4.05783011126e-07 * "IL"."Feature_6" + -0.0151251321486 * "IL"."Feature_7" + -0.0792022939676 * "IL"."Feature_8" + -0.116048038194 * "IL"."Feature_9" + 0.00377109628774 * "IL"."Feature_10" + 0.00169078455106 * "IL"."Feature_11" + -0.14024914856 * "IL"."Feature_12" + 0.0772405362888 AS "NEUR_1_4", -0.0187796158762 * "IL"."Feature_0" + 1.18890565427e-06 * "IL"."Feature_1" + 0.249982661143 * "IL"."Feature_2" + 2.06144772876e-12 * "IL"."Feature_3" + -0.00949602176972 * "IL"."Feature_4" + 0.00901874399121 * "IL"."Feature_5" + 0.259246531164 * "IL"."Feature_6" + -0.160375376401 * "IL"."Feature_7" + 0.124732962709 * "IL"."Feature_8" + -0.0700147869617 * "IL"."Feature_9" + -0.0159836619768 * "IL"."Feature_10" + -0.183776983629 * "IL"."Feature_11" + 0.0142134092678 * "IL"."Feature_12" + -0.31303954699 AS "NEUR_1_5", 0.367109818065 * "IL"."Feature_0" + 0.506932858516 * "IL"."Feature_1" + 0.364634626087 * "IL"."Feature_2" + 0.0394687923247 * "IL"."Feature_3" + 0.239684294583 * "IL"."Feature_4" + 0.310160928727 * "IL"."Feature_5" + -0.274516247521 * "IL"."Feature_6" + -0.366022071129 * "IL"."Feature_7" + -0.262624535252 * "IL"."Feature_8" + -0.290937571727 * "IL"."Feature_9" + -0.168325519719 * "IL"."Feature_10" + 0.330386530418 * "IL"."Feature_11" + -0.225213935904 * "IL"."Feature_12" + 0.584413781105 AS "NEUR_1_6", -4.83581340882e-07 * "IL"."Feature_0" + -0.0951403122945 * "IL"."Feature_1" + -8.19318776143e-10 * "IL"."Feature_2" + -0.0104448572341 * "IL"."Feature_3" + 0.104660987436 * "IL"."Feature_4" + -0.0254059096309 * "IL"."Feature_5" + -0.0259287810161 * "IL"."Feature_6" + 0.00110627882522 * "IL"."Feature_7" + 0.126839649412 * "IL"."Feature_8" + -0.0051262651643 * "IL"."Feature_9" + -6.74409767973e-13 * "IL"."Feature_10" + -0.00606210209495 * "IL"."Feature_11" + 0.0103931300292 * "IL"."Feature_12" + -0.0565253479052 AS "NEUR_1_7", 0.0727534352298 * "IL"."Feature_0" + -0.0851664635182 * "IL"."Feature_1" + 0.0223715498754 * "IL"."Feature_2" + 0.0203926989773 * "IL"."Feature_3" + 0.00274528153339 * "IL"."Feature_4" + -0.0613652340157 * "IL"."Feature_5" + -0.0452772046718 * "IL"."Feature_6" + -0.0565432847869 * "IL"."Feature_7" + 7.10085486816e-11 * "IL"."Feature_8" + -0.0668742246073 * "IL"."Feature_9" + -0.0810742584036 * "IL"."Feature_10" + -0.0357093512853 * "IL"."Feature_11" + 0.11698419756 * "IL"."Feature_12" + 0.370326448055 AS "NEUR_1_8" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3", CASE WHEN ("HL_BA_1"."NEUR_1_4" >= 0.0) THEN "HL_BA_1"."NEUR_1_4" ELSE 0.0 END AS "NEUR_1_4", CASE WHEN ("HL_BA_1"."NEUR_1_5" >= 0.0) THEN "HL_BA_1"."NEUR_1_5" ELSE 0.0 END AS "NEUR_1_5", CASE WHEN ("HL_BA_1"."NEUR_1_6" >= 0.0) THEN "HL_BA_1"."NEUR_1_6" ELSE 0.0 END AS "NEUR_1_6", CASE WHEN ("HL_BA_1"."NEUR_1_7" >= 0.0) THEN "HL_BA_1"."NEUR_1_7" ELSE 0.0 END AS "NEUR_1_7", CASE WHEN ("HL_BA_1"."NEUR_1_8" >= 0.0) THEN "HL_BA_1"."NEUR_1_8" ELSE 0.0 END AS "NEUR_1_8" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", 0.282115055458 * "HL_1_relu"."NEUR_1_1" + -0.0121294281066 * "HL_1_relu"."NEUR_1_2" + 0.120523120482 * "HL_1_relu"."NEUR_1_3" + 0.00746647792999 * "HL_1_relu"."NEUR_1_4" + 0.0599543891661 * "HL_1_relu"."NEUR_1_5" + -0.2842387758 * "HL_1_relu"."NEUR_1_6" + 0.105440821941 * "HL_1_relu"."NEUR_1_7" + -0.0219826305916 * "HL_1_relu"."NEUR_1_8" + 0.116222070801 AS "NEUR_2_1", -0.0935401221205 * "HL_1_relu"."NEUR_1_1" + 0.259172023351 * "HL_1_relu"."NEUR_1_2" + 0.115424932189 * "HL_1_relu"."NEUR_1_3" + 0.151860244015 * "HL_1_relu"."NEUR_1_4" + 0.0166389827516 * "HL_1_relu"."NEUR_1_5" + -0.442805978447 * "HL_1_relu"."NEUR_1_6" + 0.000144054871437 * "HL_1_relu"."NEUR_1_7" + -0.0141461606492 * "HL_1_relu"."NEUR_1_8" + 0.581811602244 AS "NEUR_2_2", 0.313994266421 * "HL_1_relu"."NEUR_1_1" + -0.555382790154 * "HL_1_relu"."NEUR_1_2" + 0.136260805186 * "HL_1_relu"."NEUR_1_3" + -0.0552159821552 * "HL_1_relu"."NEUR_1_4" + 0.0417158255711 * "HL_1_relu"."NEUR_1_5" + 0.0294800813102 * "HL_1_relu"."NEUR_1_6" + 2.3587650671e-10 * "HL_1_relu"."NEUR_1_7" + -0.11070712511 * "HL_1_relu"."NEUR_1_8" + 0.505838832445 AS "NEUR_2_3", -6.75340891944e-05 * "HL_1_relu"."NEUR_1_1" + -0.00505636273708 * "HL_1_relu"."NEUR_1_2" + -1.64641022557e-06 * "HL_1_relu"."NEUR_1_3" + 0.064659473663 * "HL_1_relu"."NEUR_1_4" + 0.0636937185035 * "HL_1_relu"."NEUR_1_5" + -0.0231406540272 * "HL_1_relu"."NEUR_1_6" + 2.07193583871e-05 * "HL_1_relu"."NEUR_1_7" + -1.04703437144e-06 * "HL_1_relu"."NEUR_1_8" + -0.310123815485 AS "NEUR_2_4", 0.360050805897 * "HL_1_relu"."NEUR_1_1" + 0.11289155344 * "HL_1_relu"."NEUR_1_2" + 0.395916673774 * "HL_1_relu"."NEUR_1_3" + -0.048638281112 * "HL_1_relu"."NEUR_1_4" + 0.254788981223 * "HL_1_relu"."NEUR_1_5" + -0.191775408382 * "HL_1_relu"."NEUR_1_6" + 0.0105196205109 * "HL_1_relu"."NEUR_1_7" + -0.00381185448512 * "HL_1_relu"."NEUR_1_8" + 0.111886520801 AS "NEUR_2_5", 0.180139115353 * "HL_1_relu"."NEUR_1_1" + -0.0689214287493 * "HL_1_relu"."NEUR_1_2" + -0.16966477679 * "HL_1_relu"."NEUR_1_3" + 0.000160113389393 * "HL_1_relu"."NEUR_1_4" + 0.179739502949 * "HL_1_relu"."NEUR_1_5" + 0.436614541079 * "HL_1_relu"."NEUR_1_6" + -0.00379541774777 * "HL_1_relu"."NEUR_1_7" + 0.00478368388846 * "HL_1_relu"."NEUR_1_8" + -0.10628114165 AS "NEUR_2_6", 0.480137982426 * "HL_1_relu"."NEUR_1_1" + 0.197689714597 * "HL_1_relu"."NEUR_1_2" + -0.0312846091415 * "HL_1_relu"."NEUR_1_3" + -0.0691996388313 * "HL_1_relu"."NEUR_1_4" + -0.266370425999 * "HL_1_relu"."NEUR_1_5" + 0.243921290077 * "HL_1_relu"."NEUR_1_6" + -5.8968063863e-05 * "HL_1_relu"."NEUR_1_7" + -0.000243529889697 * "HL_1_relu"."NEUR_1_8" + -0.452104858987 AS "NEUR_2_7", 0.15667121876 * "HL_1_relu"."NEUR_1_1" + -0.136370999442 * "HL_1_relu"."NEUR_1_2" + 0.391261885712 * "HL_1_relu"."NEUR_1_3" + 0.0539038578835 * "HL_1_relu"."NEUR_1_4" + -0.0331257691054 * "HL_1_relu"."NEUR_1_5" + -0.5788696614 * "HL_1_relu"."NEUR_1_6" + -0.0281407892385 * "HL_1_relu"."NEUR_1_7" + -0.0406006290559 * "HL_1_relu"."NEUR_1_8" + 0.220682610911 AS "NEUR_2_8", 0.293356459485 * "HL_1_relu"."NEUR_1_1" + -0.348886732502 * "HL_1_relu"."NEUR_1_2" + 0.373764935938 * "HL_1_relu"."NEUR_1_3" + 0.034930948725 * "HL_1_relu"."NEUR_1_4" + 0.0811035246351 * "HL_1_relu"."NEUR_1_5" + -0.100595637329 * "HL_1_relu"."NEUR_1_6" + -0.0376913462013 * "HL_1_relu"."NEUR_1_7" + -0.134328823906 * "HL_1_relu"."NEUR_1_8" + -0.142069705571 AS "NEUR_2_9", 0.0425141828718 * "HL_1_relu"."NEUR_1_1" + -0.172134223153 * "HL_1_relu"."NEUR_1_2" + 0.259713274619 * "HL_1_relu"."NEUR_1_3" + 1.77525180287e-06 * "HL_1_relu"."NEUR_1_4" + -0.121684293454 * "HL_1_relu"."NEUR_1_5" + 0.0640014637917 * "HL_1_relu"."NEUR_1_6" + 0.112355828649 * "HL_1_relu"."NEUR_1_7" + -0.104457391276 * "HL_1_relu"."NEUR_1_8" + -0.0816859031297 AS "NEUR_2_10", 0.442766684012 * "HL_1_relu"."NEUR_1_1" + 0.0148460612355 * "HL_1_relu"."NEUR_1_2" + -0.476418380694 * "HL_1_relu"."NEUR_1_3" + -2.72796486585e-05 * "HL_1_relu"."NEUR_1_4" + -0.0166890525193 * "HL_1_relu"."NEUR_1_5" + 0.0611868949094 * "HL_1_relu"."NEUR_1_6" + 0.0126457023029 * "HL_1_relu"."NEUR_1_7" + 0.00292126581384 * "HL_1_relu"."NEUR_1_8" + 0.0308449862399 AS "NEUR_2_11", 0.0978317311203 * "HL_1_relu"."NEUR_1_1" + 0.0336106935939 * "HL_1_relu"."NEUR_1_2" + 0.421137112204 * "HL_1_relu"."NEUR_1_3" + -0.103174101747 * "HL_1_relu"."NEUR_1_4" + -0.259824303693 * "HL_1_relu"."NEUR_1_5" + -0.410960150682 * "HL_1_relu"."NEUR_1_6" + 1.96239008434e-13 * "HL_1_relu"."NEUR_1_7" + -1.98356526326e-08 * "HL_1_relu"."NEUR_1_8" + 0.292108347138 AS "NEUR_2_12" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5", CASE WHEN ("HL_BA_2"."NEUR_2_6" >= 0.0) THEN "HL_BA_2"."NEUR_2_6" ELSE 0.0 END AS "NEUR_2_6", CASE WHEN ("HL_BA_2"."NEUR_2_7" >= 0.0) THEN "HL_BA_2"."NEUR_2_7" ELSE 0.0 END AS "NEUR_2_7", CASE WHEN ("HL_BA_2"."NEUR_2_8" >= 0.0) THEN "HL_BA_2"."NEUR_2_8" ELSE 0.0 END AS "NEUR_2_8", CASE WHEN ("HL_BA_2"."NEUR_2_9" >= 0.0) THEN "HL_BA_2"."NEUR_2_9" ELSE 0.0 END AS "NEUR_2_9", CASE WHEN ("HL_BA_2"."NEUR_2_10" >= 0.0) THEN "HL_BA_2"."NEUR_2_10" ELSE 0.0 END AS "NEUR_2_10", CASE WHEN ("HL_BA_2"."NEUR_2_11" >= 0.0) THEN "HL_BA_2"."NEUR_2_11" ELSE 0.0 END AS "NEUR_2_11", CASE WHEN ("HL_BA_2"."NEUR_2_12" >= 0.0) THEN "HL_BA_2"."NEUR_2_12" ELSE 0.0 END AS "NEUR_2_12" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.239684958506 * "HL_2_relu"."NEUR_2_1" + 0.701510001533 * "HL_2_relu"."NEUR_2_2" + -0.275224596384 * "HL_2_relu"."NEUR_2_3" + 0.065526218238 * "HL_2_relu"."NEUR_2_4" + -0.372084701893 * "HL_2_relu"."NEUR_2_5" + 0.586467546596 * "HL_2_relu"."NEUR_2_6" + 0.318283310588 * "HL_2_relu"."NEUR_2_7" + -0.346194666981 * "HL_2_relu"."NEUR_2_8" + 0.645931160999 * "HL_2_relu"."NEUR_2_9" + 0.340447918566 * "HL_2_relu"."NEUR_2_10" + -0.273490300196 * "HL_2_relu"."NEUR_2_11" + -0.340112311578 * "HL_2_relu"."NEUR_2_12" + 0.093849512218 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"