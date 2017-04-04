-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", "ADS"."Feature_0" AS "Feature_0", "ADS"."Feature_1" AS "Feature_1", "ADS"."Feature_2" AS "Feature_2", "ADS"."Feature_3" AS "Feature_3", "ADS"."Feature_4" AS "Feature_4", "ADS"."Feature_5" AS "Feature_5", "ADS"."Feature_6" AS "Feature_6", "ADS"."Feature_7" AS "Feature_7", "ADS"."Feature_8" AS "Feature_8", "ADS"."Feature_9" AS "Feature_9" 
FROM "INPUT_DATA" "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.333712342766 * "IL"."Feature_0" + 0.797329972057 * "IL"."Feature_1" + -0.258884533316 * "IL"."Feature_2" + -0.150147562509 * "IL"."Feature_3" + 0.230503565792 * "IL"."Feature_4" + 0.116368129352 * "IL"."Feature_5" + 0.0662460616437 * "IL"."Feature_6" + 0.445219351192 * "IL"."Feature_7" + -0.0670329762888 * "IL"."Feature_8" + 0.817730835042 * "IL"."Feature_9" + 0.0667074651328 AS "NEUR_1_1", 0.213831179044 * "IL"."Feature_0" + -0.165857420148 * "IL"."Feature_1" + 0.35060603663 * "IL"."Feature_2" + 0.127478065998 * "IL"."Feature_3" + 0.0470468386611 * "IL"."Feature_4" + -0.108333406357 * "IL"."Feature_5" + -0.188315127689 * "IL"."Feature_6" + -0.316893488603 * "IL"."Feature_7" + -0.184284473974 * "IL"."Feature_8" + 0.0850982179079 * "IL"."Feature_9" + -0.132796934055 AS "NEUR_1_2", 0.3087397223 * "IL"."Feature_0" + 0.522853014869 * "IL"."Feature_1" + 0.501562813185 * "IL"."Feature_2" + -0.21637848972 * "IL"."Feature_3" + -0.37611328699 * "IL"."Feature_4" + 0.407533531712 * "IL"."Feature_5" + 0.258998513544 * "IL"."Feature_6" + 0.147801074971 * "IL"."Feature_7" + 0.544460908666 * "IL"."Feature_8" + 0.459286805164 * "IL"."Feature_9" + -0.31661718745 AS "NEUR_1_3", 0.244202189334 * "IL"."Feature_0" + 0.228167599831 * "IL"."Feature_1" + 0.609737621404 * "IL"."Feature_2" + 0.702637684913 * "IL"."Feature_3" + 0.318845145465 * "IL"."Feature_4" + -0.304778984493 * "IL"."Feature_5" + 0.116670221668 * "IL"."Feature_6" + -0.0971022877361 * "IL"."Feature_7" + -0.264697144772 * "IL"."Feature_8" + -0.335332948153 * "IL"."Feature_9" + 0.415581863559 AS "NEUR_1_4", -0.201220754001 * "IL"."Feature_0" + -0.032630990368 * "IL"."Feature_1" + 0.434452413074 * "IL"."Feature_2" + -0.0912153917793 * "IL"."Feature_3" + 0.015450473418 * "IL"."Feature_4" + 0.0784683151108 * "IL"."Feature_5" + 0.446277944131 * "IL"."Feature_6" + -0.501349592531 * "IL"."Feature_7" + 0.274848258636 * "IL"."Feature_8" + -0.359343121931 * "IL"."Feature_9" + -0.0369013034646 AS "NEUR_1_5", 0.139250571961 * "IL"."Feature_0" + 0.430551708188 * "IL"."Feature_1" + 0.288094825771 * "IL"."Feature_2" + -0.157452782205 * "IL"."Feature_3" + 0.067834701935 * "IL"."Feature_4" + 0.123063604973 * "IL"."Feature_5" + -0.515258229292 * "IL"."Feature_6" + -0.501899236618 * "IL"."Feature_7" + -0.508841716688 * "IL"."Feature_8" + -0.509393848422 * "IL"."Feature_9" + -0.327651592015 AS "NEUR_1_6", 0.17936688089 * "IL"."Feature_0" + -0.223000091414 * "IL"."Feature_1" + 0.213565927208 * "IL"."Feature_2" + -0.00543032172452 * "IL"."Feature_3" + 0.762336317577 * "IL"."Feature_4" + -0.0831265272065 * "IL"."Feature_5" + -0.0785676252314 * "IL"."Feature_6" + 0.424689534186 * "IL"."Feature_7" + 0.791688229836 * "IL"."Feature_8" + 0.0122958089097 * "IL"."Feature_9" + 0.280462074999 AS "NEUR_1_7", 0.287017618831 * "IL"."Feature_0" + -0.309730767084 * "IL"."Feature_1" + 0.170859099962 * "IL"."Feature_2" + 0.164544220902 * "IL"."Feature_3" + 0.0778202930376 * "IL"."Feature_4" + -0.264899198303 * "IL"."Feature_5" + -0.230689040294 * "IL"."Feature_6" + -0.255067749152 * "IL"."Feature_7" + -0.000416531957414 * "IL"."Feature_8" + -0.275774928992 * "IL"."Feature_9" + -0.468877110841 AS "NEUR_1_8" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" >= 0.0) THEN "HL_BA_1"."NEUR_1_1" ELSE 0.0 END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" >= 0.0) THEN "HL_BA_1"."NEUR_1_2" ELSE 0.0 END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" >= 0.0) THEN "HL_BA_1"."NEUR_1_3" ELSE 0.0 END AS "NEUR_1_3", CASE WHEN ("HL_BA_1"."NEUR_1_4" >= 0.0) THEN "HL_BA_1"."NEUR_1_4" ELSE 0.0 END AS "NEUR_1_4", CASE WHEN ("HL_BA_1"."NEUR_1_5" >= 0.0) THEN "HL_BA_1"."NEUR_1_5" ELSE 0.0 END AS "NEUR_1_5", CASE WHEN ("HL_BA_1"."NEUR_1_6" >= 0.0) THEN "HL_BA_1"."NEUR_1_6" ELSE 0.0 END AS "NEUR_1_6", CASE WHEN ("HL_BA_1"."NEUR_1_7" >= 0.0) THEN "HL_BA_1"."NEUR_1_7" ELSE 0.0 END AS "NEUR_1_7", CASE WHEN ("HL_BA_1"."NEUR_1_8" >= 0.0) THEN "HL_BA_1"."NEUR_1_8" ELSE 0.0 END AS "NEUR_1_8" 
FROM "HL_BA_1"), 
"HL_BA_2" AS 
(SELECT "HL_1_relu"."KEY" AS "KEY", -0.169346687827 * "HL_1_relu"."NEUR_1_1" + 0.123724095196 * "HL_1_relu"."NEUR_1_2" + 0.00783090995066 * "HL_1_relu"."NEUR_1_3" + -0.287505021993 * "HL_1_relu"."NEUR_1_4" + -0.0176579442836 * "HL_1_relu"."NEUR_1_5" + 0.171069573238 * "HL_1_relu"."NEUR_1_6" + -0.0326825522439 * "HL_1_relu"."NEUR_1_7" + -0.174970274883 * "HL_1_relu"."NEUR_1_8" + 0.329634797213 AS "NEUR_2_1", 0.23303351127 * "HL_1_relu"."NEUR_1_1" + -0.318904759433 * "HL_1_relu"."NEUR_1_2" + -0.387045632652 * "HL_1_relu"."NEUR_1_3" + -0.06875462056 * "HL_1_relu"."NEUR_1_4" + 0.0766190170166 * "HL_1_relu"."NEUR_1_5" + 0.483323017495 * "HL_1_relu"."NEUR_1_6" + -0.259328528554 * "HL_1_relu"."NEUR_1_7" + -0.357444801457 * "HL_1_relu"."NEUR_1_8" + -0.00657904938926 AS "NEUR_2_2", -0.301825000481 * "HL_1_relu"."NEUR_1_1" + 0.227221446515 * "HL_1_relu"."NEUR_1_2" + 0.26505221261 * "HL_1_relu"."NEUR_1_3" + -0.567580263129 * "HL_1_relu"."NEUR_1_4" + 0.119612199506 * "HL_1_relu"."NEUR_1_5" + -0.392349290852 * "HL_1_relu"."NEUR_1_6" + 0.154224979552 * "HL_1_relu"."NEUR_1_7" + 0.168946246844 * "HL_1_relu"."NEUR_1_8" + -0.0139217320719 AS "NEUR_2_3", 0.134488872986 * "HL_1_relu"."NEUR_1_1" + 0.478804701519 * "HL_1_relu"."NEUR_1_2" + -0.0345882288103 * "HL_1_relu"."NEUR_1_3" + -0.198340005301 * "HL_1_relu"."NEUR_1_4" + -0.110575077676 * "HL_1_relu"."NEUR_1_5" + 0.37362586375 * "HL_1_relu"."NEUR_1_6" + 0.405826049453 * "HL_1_relu"."NEUR_1_7" + -0.152293893494 * "HL_1_relu"."NEUR_1_8" + 0.0663801442066 AS "NEUR_2_4", -0.664770455388 * "HL_1_relu"."NEUR_1_1" + -0.343763699009 * "HL_1_relu"."NEUR_1_2" + 0.188659140785 * "HL_1_relu"."NEUR_1_3" + -0.0364241601172 * "HL_1_relu"."NEUR_1_4" + 0.335856450242 * "HL_1_relu"."NEUR_1_5" + -0.431700627984 * "HL_1_relu"."NEUR_1_6" + 0.241192278661 * "HL_1_relu"."NEUR_1_7" + -0.0495862930321 * "HL_1_relu"."NEUR_1_8" + 0.121306276591 AS "NEUR_2_5", 0.434907092782 * "HL_1_relu"."NEUR_1_1" + 0.22797764577 * "HL_1_relu"."NEUR_1_2" + 0.298115553052 * "HL_1_relu"."NEUR_1_3" + 0.0844481250984 * "HL_1_relu"."NEUR_1_4" + 0.150399882513 * "HL_1_relu"."NEUR_1_5" + 0.0248384322221 * "HL_1_relu"."NEUR_1_6" + 0.59170979303 * "HL_1_relu"."NEUR_1_7" + 0.302439123374 * "HL_1_relu"."NEUR_1_8" + 0.0414194868421 AS "NEUR_2_6", -0.119532842312 * "HL_1_relu"."NEUR_1_1" + 0.0135050160759 * "HL_1_relu"."NEUR_1_2" + 0.402603052017 * "HL_1_relu"."NEUR_1_3" + 0.0221880820063 * "HL_1_relu"."NEUR_1_4" + -0.0787193242976 * "HL_1_relu"."NEUR_1_5" + -0.249836016446 * "HL_1_relu"."NEUR_1_6" + -0.396510008672 * "HL_1_relu"."NEUR_1_7" + 0.0883322021061 * "HL_1_relu"."NEUR_1_8" + -0.123820880901 AS "NEUR_2_7", -0.33829969569 * "HL_1_relu"."NEUR_1_1" + 0.0522062711011 * "HL_1_relu"."NEUR_1_2" + 0.180564874837 * "HL_1_relu"."NEUR_1_3" + -0.115846879074 * "HL_1_relu"."NEUR_1_4" + 0.393213282339 * "HL_1_relu"."NEUR_1_5" + 0.351478907797 * "HL_1_relu"."NEUR_1_6" + -0.174895329955 * "HL_1_relu"."NEUR_1_7" + -0.34365737477 * "HL_1_relu"."NEUR_1_8" + -0.354013455206 AS "NEUR_2_8", -0.0536016474249 * "HL_1_relu"."NEUR_1_1" + -0.316585183685 * "HL_1_relu"."NEUR_1_2" + 0.198191832453 * "HL_1_relu"."NEUR_1_3" + -0.476459924433 * "HL_1_relu"."NEUR_1_4" + 0.311288126554 * "HL_1_relu"."NEUR_1_5" + 0.18199838642 * "HL_1_relu"."NEUR_1_6" + 0.180762844638 * "HL_1_relu"."NEUR_1_7" + -0.209235838489 * "HL_1_relu"."NEUR_1_8" + -0.372005096327 AS "NEUR_2_9", -0.66461829438 * "HL_1_relu"."NEUR_1_1" + 0.432285257601 * "HL_1_relu"."NEUR_1_2" + -0.0699114076884 * "HL_1_relu"."NEUR_1_3" + -0.357867804949 * "HL_1_relu"."NEUR_1_4" + 0.137677722579 * "HL_1_relu"."NEUR_1_5" + 0.0119151841824 * "HL_1_relu"."NEUR_1_6" + -0.483318586543 * "HL_1_relu"."NEUR_1_7" + 0.0281581172667 * "HL_1_relu"."NEUR_1_8" + 0.384610476753 AS "NEUR_2_10", 0.699241268369 * "HL_1_relu"."NEUR_1_1" + 0.104902674087 * "HL_1_relu"."NEUR_1_2" + 0.812883340904 * "HL_1_relu"."NEUR_1_3" + 0.384286094201 * "HL_1_relu"."NEUR_1_4" + -0.255910939895 * "HL_1_relu"."NEUR_1_5" + -0.00856872486786 * "HL_1_relu"."NEUR_1_6" + 0.373363202484 * "HL_1_relu"."NEUR_1_7" + 0.00808739372178 * "HL_1_relu"."NEUR_1_8" + 0.50629988465 AS "NEUR_2_11", -0.602560170098 * "HL_1_relu"."NEUR_1_1" + 0.339421284675 * "HL_1_relu"."NEUR_1_2" + 0.122435897076 * "HL_1_relu"."NEUR_1_3" + 0.0359321921108 * "HL_1_relu"."NEUR_1_4" + 0.411403577182 * "HL_1_relu"."NEUR_1_5" + -0.514512764256 * "HL_1_relu"."NEUR_1_6" + -0.521256714429 * "HL_1_relu"."NEUR_1_7" + -0.13930820104 * "HL_1_relu"."NEUR_1_8" + -0.0621192223627 AS "NEUR_2_12" 
FROM "HL_1_relu"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" >= 0.0) THEN "HL_BA_2"."NEUR_2_1" ELSE 0.0 END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" >= 0.0) THEN "HL_BA_2"."NEUR_2_2" ELSE 0.0 END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" >= 0.0) THEN "HL_BA_2"."NEUR_2_3" ELSE 0.0 END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" >= 0.0) THEN "HL_BA_2"."NEUR_2_4" ELSE 0.0 END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" >= 0.0) THEN "HL_BA_2"."NEUR_2_5" ELSE 0.0 END AS "NEUR_2_5", CASE WHEN ("HL_BA_2"."NEUR_2_6" >= 0.0) THEN "HL_BA_2"."NEUR_2_6" ELSE 0.0 END AS "NEUR_2_6", CASE WHEN ("HL_BA_2"."NEUR_2_7" >= 0.0) THEN "HL_BA_2"."NEUR_2_7" ELSE 0.0 END AS "NEUR_2_7", CASE WHEN ("HL_BA_2"."NEUR_2_8" >= 0.0) THEN "HL_BA_2"."NEUR_2_8" ELSE 0.0 END AS "NEUR_2_8", CASE WHEN ("HL_BA_2"."NEUR_2_9" >= 0.0) THEN "HL_BA_2"."NEUR_2_9" ELSE 0.0 END AS "NEUR_2_9", CASE WHEN ("HL_BA_2"."NEUR_2_10" >= 0.0) THEN "HL_BA_2"."NEUR_2_10" ELSE 0.0 END AS "NEUR_2_10", CASE WHEN ("HL_BA_2"."NEUR_2_11" >= 0.0) THEN "HL_BA_2"."NEUR_2_11" ELSE 0.0 END AS "NEUR_2_11", CASE WHEN ("HL_BA_2"."NEUR_2_12" >= 0.0) THEN "HL_BA_2"."NEUR_2_12" ELSE 0.0 END AS "NEUR_2_12" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -0.255891856262 * "HL_2_relu"."NEUR_2_1" + -0.207434720082 * "HL_2_relu"."NEUR_2_2" + -0.558542360814 * "HL_2_relu"."NEUR_2_3" + 0.0925541661903 * "HL_2_relu"."NEUR_2_4" + -0.141240523421 * "HL_2_relu"."NEUR_2_5" + 0.479348423441 * "HL_2_relu"."NEUR_2_6" + -0.157834079956 * "HL_2_relu"."NEUR_2_7" + -0.406580089536 * "HL_2_relu"."NEUR_2_8" + -0.624352782429 * "HL_2_relu"."NEUR_2_9" + -0.509977823523 * "HL_2_relu"."NEUR_2_10" + 0.564573372536 * "HL_2_relu"."NEUR_2_11" + 0.00805183450688 * "HL_2_relu"."NEUR_2_12" + 0.242162230246 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "Estimator" 
FROM "OL_identity"