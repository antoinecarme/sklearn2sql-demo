-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_linear
-- Dataset : BinaryClass_10
-- Database : db2


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."TGT" AS DOUBLE) AS "TGT" 
FROM "BINARYCLASS_10" AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3, CAST("Values".sv_4 AS DOUBLE) AS sv_4, CAST("Values".sv_5 AS DOUBLE) AS sv_5, CAST("Values".sv_6 AS DOUBLE) AS sv_6, CAST("Values".sv_7 AS DOUBLE) AS sv_7, CAST("Values".sv_8 AS DOUBLE) AS sv_8, CAST("Values".sv_9 AS DOUBLE) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.9871547578299328 AS dual_coeff, 0.4809672098030855 AS sv_0, 1.9281234723864962 AS sv_1, 0.5386834807895613 AS sv_2, 0.9128267937845747 AS sv_3, 2.0958556488784024 AS sv_4, -0.27086036412995806 AS sv_5, -0.7857194492739092 AS sv_6, 0.1771275259206786 AS sv_7, 1.4050432480605073 AS sv_8, -0.43391845713831423 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.21613870478849442 AS sv_0, -0.5303212005433303 AS sv_1, -0.5362164085336691 AS sv_2, -0.8100387031157575 AS sv_3, -0.9615662898307464 AS sv_4, 1.5529718576848406 AS sv_5, -0.4595236871795928 AS sv_6, -0.006514794174079089 AS sv_7, -1.8130818762045466 AS sv_8, -0.13279488760020075 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -0.05213379204679852 AS sv_0, 0.14498787583333014 AS sv_1, 0.5340592256715511 AS sv_2, 1.4321952389465753 AS sv_3, 0.738275982301284 AS sv_4, 1.4341442375220592 AS sv_5, 0.033602057890890415 AS sv_6, 0.052532412603893186 AS sv_7, -0.8806903984842515 AS sv_8, -0.27469508368586715 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 3 AS sv_idx, -0.48979559226809566 AS dual_coeff, -0.759932229366612 AS sv_0, 0.552805168880046 AS sv_1, -0.23487363635190292 AS sv_2, -1.2701421722716257 AS sv_3, 1.456377543159662 AS sv_4, 1.5435117281327027 AS sv_5, 2.8107702281511435 AS sv_6, -0.2229001278703461 AS sv_7, 0.6172442977370132 AS sv_8, 0.4301073180538011 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.785560584884625 AS sv_0, 1.0733430351073072 AS sv_1, 0.12853183489140385 AS sv_2, -0.566243175109869 AS sv_3, -1.481913963837002 AS sv_4, -0.8386241389093972 AS sv_5, 0.26604319157707085 AS sv_6, 0.2690687200903063 AS sv_7, 1.271598798688941 AS sv_8, -0.6179701490256493 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 1.1402573781685328 AS sv_0, 0.6761804068245167 AS sv_1, -1.4731268041595753 AS sv_2, 0.7323942062420845 AS sv_3, 1.4964566535823185 AS sv_4, -1.4683569412740674 AS sv_5, 1.124026130806446 AS sv_6, 0.3777381705418596 AS sv_7, -0.2543842002580888 AS sv_8, -0.8394938690129621 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.7430089011960362 AS sv_0, -0.23929647235393137 AS sv_1, -0.9541511016410574 AS sv_2, 1.3310869796087246 AS sv_3, 0.6575038895002946 AS sv_4, 0.20938692944407888 AS sv_5, -0.34219217399760216 AS sv_6, 0.30568856533648076 AS sv_7, -0.50121130930097 AS sv_8, -0.8141122002000563 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 7 AS sv_idx, -0.28035010241182867 AS dual_coeff, 0.5373565697566288 AS sv_0, -0.04690948394036747 AS sv_1, 0.29555831849829717 AS sv_2, -2.8951397669851433 AS sv_3, 1.2621190656210834 AS sv_4, -0.7719309323277832 AS sv_5, -0.9937390191746367 AS sv_6, 0.17392983723693703 AS sv_7, -0.3093235091111961 AS sv_8, -0.37730757660701 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.5799864121318057 AS sv_0, -0.2360313038841518 AS sv_1, 0.43505579564303826 AS sv_2, 1.3393898952948147 AS sv_3, -1.8861454098888544 AS sv_4, 0.020294743576157792 AS sv_5, -0.6292571849498783 AS sv_6, 0.23130823452460433 AS sv_7, -1.4508741930862805 AS sv_8, -0.6027040800554819 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 9 AS sv_idx, -0.6349873028342525 AS dual_coeff, -0.011908999728864111 AS sv_0, -0.8908065351122083 AS sv_1, -0.5063606992712224 AS sv_2, -0.24282406881234603 AS sv_3, 0.143574433900628 AS sv_4, 1.4442721907375726 AS sv_5, 0.6468644070009625 AS sv_6, 0.0690200161630706 AS sv_7, -1.3533365355738265 AS sv_8, -0.318492636197919 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 10 AS sv_idx, -0.6634447454767514 AS dual_coeff, -0.8832766812818473 AS sv_0, 0.501049774810359 AS sv_1, 0.2479598674358872 AS sv_2, 0.8693112756683995 AS sv_3, 1.996147651770403 AS sv_4, 2.380376125070892 AS sv_5, 2.614818878550584 AS sv_6, -0.2291391162693423 AS sv_7, -0.0650419737088196 AS sv_8, 0.3656327705757887 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.7262866594357859 AS sv_0, -0.13694221346809365 AS sv_1, 1.87537250288579 AS sv_2, 1.5235357221633312 AS sv_3, -0.46089293180940766 AS sv_4, -0.9708223054007781 AS sv_5, -0.01178577032390541 AS sv_6, 0.2387848231935976 AS sv_7, -0.20550758304272917 AS sv_8, -0.5265729999445877 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 12 AS sv_idx, -0.9074252752203893 AS dual_coeff, 0.18655656472286322 AS sv_0, 0.7018565551129017 AS sv_1, -0.17237723790595258 AS sv_2, -1.0262469401396512 AS sv_3, -1.4151234456298987 AS sv_4, 0.08522945062564924 AS sv_5, 2.265435222000944 AS sv_6, 0.07842056410455177 AS sv_7, -0.020740240980986667 AS sv_8, -0.21188837313984477 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.3072178920094768 AS sv_0, -0.08419770648067697 AS sv_1, -0.1306274931517295 AS sv_2, 0.5603600953691231 AS sv_3, -1.2195669450232594 AS sv_4, 1.3176176696171835 AS sv_5, 1.4264140211857006 AS sv_6, -0.05469374139869011 AS sv_7, 1.1876901315295343 AS sv_8, 0.015023609022383422 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 14 AS sv_idx, -0.5541826462393766 AS dual_coeff, 1.7406428436664605 AS sv_0, -1.770495386387641 AS sv_1, -0.07463878241592434 AS sv_2, -0.0037948497623813615 AS sv_3, -1.235391494814571 AS sv_4, -2.182202011378088 AS sv_5, 0.23688793275339634 AS sv_6, 0.5796583755941385 AS sv_7, 0.30964558622762334 AS sv_8, -1.2950970729805795 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.651195525977357 AS sv_0, -0.08936038423557587 AS sv_1, 1.9966011707973088 AS sv_2, 0.6138413720482201 AS sv_3, -0.24829220161063323 AS sv_4, -2.1003752138660037 AS sv_5, -0.5243777808662209 AS sv_6, 0.15129352930018047 AS sv_7, -0.6087374876863917 AS sv_8, -0.19044790673420153 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.8652416164274608 AS sv_0, -1.2494742219861754 AS sv_1, 1.970456348555097 AS sv_2, 0.02323201628587036 AS sv_3, -0.7534053731189334 AS sv_4, -1.2056689228229833 AS sv_5, 2.158241115300078 AS sv_6, 0.2819622213989109 AS sv_7, 0.9519093576303396 AS sv_8, -0.6160716913329085 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 17 AS sv_idx, 0.4310531496537315 AS dual_coeff, 0.1019725646490372 AS sv_0, 1.1685511812029383 AS sv_1, 1.16463972680708 AS sv_2, -1.322897896328765 AS sv_3, -0.81831930171055 AS sv_4, -1.613089725148296 AS sv_5, -0.6318915732239502 AS sv_6, -0.04188234680584454 AS sv_7, -1.7397547050645301 AS sv_8, 0.2642863364515001 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.23592163546645983 AS sv_0, 0.01559558553610639 AS sv_1, -0.14752596910266838 AS sv_2, -1.2939361435540477 AS sv_3, -2.1277947525067775 AS sv_4, 2.9511133894725567 AS sv_5, -2.063295162834261 AS sv_6, 0.2443593613004832 AS sv_7, -1.6533000080360474 AS sv_8, -0.9191469810556254 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.5954228223112823 AS sv_0, 1.070088205789964 AS sv_1, 1.6359734751574904 AS sv_2, 1.8207530511515095 AS sv_3, 1.058171013210782 AS sv_4, -1.4969966417968363 AS sv_5, -0.16104490427296092 AS sv_6, 0.15996015820788406 AS sv_7, -0.9675784633481913 AS sv_8, -0.2711256206763759 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.8309376943018076 AS sv_0, 0.3494158747839881 AS sv_1, -0.4786555924059382 AS sv_2, 1.0978825983775917 AS sv_3, 0.3928388355825836 AS sv_4, -2.057693229890982 AS sv_5, 0.5622815503608488 AS sv_6, 0.22483599160616763 AS sv_7, 1.1352549387252504 AS sv_8, -0.38556519714981885 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.6557259046238674 AS sv_0, -0.19753543035285562 AS sv_1, -0.3870102338535069 AS sv_2, 0.12240188653634958 AS sv_3, 0.8587294067401514 AS sv_4, 1.6830499480545718 AS sv_5, -0.1682619880379936 AS sv_6, -0.17440192412254285 AS sv_7, -1.4901396843996222 AS sv_8, 0.2906968375895972 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 22 AS sv_idx, 0.31175012246727735 AS dual_coeff, -0.771540268926696 AS sv_0, 1.46903207688595 AS sv_1, -2.019076907942007 AS sv_2, -0.5135675470364792 AS sv_3, 1.0965351526985396 AS sv_4, 1.6038820415606125 AS sv_5, -0.6080326284525016 AS sv_6, -0.2244262032219191 AS sv_7, -0.32058268918214206 AS sv_8, 0.42825077343097584 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 23 AS sv_idx, 0.17009842413649714 AS dual_coeff, -0.7525174599184026 AS sv_0, 1.3825524761202033 AS sv_1, -0.8479737534640933 AS sv_2, -0.20086204414810277 AS sv_3, -0.8003673053468898 AS sv_4, 1.4494724426104775 AS sv_5, -0.3292842942877819 AS sv_6, -0.22475813015584867 AS sv_7, 0.8669609737617006 AS sv_8, 0.4439987706498345 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -1.0458024423037 AS sv_0, 0.11294939926527063 AS sv_1, 0.46891997076276926 AS sv_2, -0.7604854545960222 AS sv_3, 0.1357802035153995 AS sv_4, 1.4757603465643656 AS sv_5, 0.5220718295742688 AS sv_6, -0.33985870226752574 AS sv_7, -0.48017811399063987 AS sv_8, 0.740400599203569 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 1.0713755931512898 AS sv_0, -0.6341929930213883 AS sv_1, -0.8608076793809787 AS sv_2, 1.7692639439055955 AS sv_3, -0.15206514397570287 AS sv_4, -1.8162569729750924 AS sv_5, 2.0157523076551636 AS sv_6, 0.33262537551495386 AS sv_7, -0.16263678202300752 AS sv_8, -0.6887886691414953 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.9140539237335175 AS sv_0, 0.6044433177877142 AS sv_1, 0.2676507811668582 AS sv_2, 1.2566586429636435 AS sv_3, -0.01805437836471338 AS sv_4, -1.47801475508027 AS sv_5, 0.6098850048713202 AS sv_6, 0.28743548849606926 AS sv_7, -0.16838677020388274 AS sv_8, -0.6040310941183635 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.4072512631016443 AS sv_0, 2.0466987867534647 AS sv_1, -3.9912885179936213 AS sv_2, 0.8382817661390957 AS sv_3, 0.5407473106323089 AS sv_4, 2.56928102879518 AS sv_5, 2.434235523534455 AS sv_6, 0.2928850016560724 AS sv_7, 0.31899439638934446 AS sv_8, -1.008365758437452 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 28 AS sv_idx, 0.6044387260231209 AS dual_coeff, -1.029643186776298 AS sv_0, -0.9773916285069058 AS sv_1, 1.7550829759782132 AS sv_2, 0.9122481516887383 AS sv_3, -0.08196737041614892 AS sv_4, 1.2232824746020043 AS sv_5, 0.636305156382388 AS sv_6, -0.3463351631986256 AS sv_7, 1.810402402770992 AS sv_8, 0.7815613307777305 AS sv_9 FROM SYSIBM.SYSDUMMY1 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.3366652264555634 AS sv_0, -0.5583924823639528 AS sv_1, -1.635627281588523 AS sv_2, -0.5058003865138625 AS sv_3, -0.2227444485320821 AS sv_4, 2.904163322602534 AS sv_5, 0.4913350109051379 AS sv_6, 0.28196018574523973 AS sv_7, 0.9444309886480903 AS sv_8, -1.01227659411881 AS sv_9 FROM SYSIBM.SYSDUMMY1) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 0.33516755071621224 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7 + kernel_input."Feature_8" * "SV_data".sv_8 + kernel_input."Feature_9" * "SV_data".sv_9) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", -kernel_dp.dot_product AS "Score_0", kernel_dp.dot_product AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -0.9725745484150172 + 0.060600823461720243))), 100.0)))) AS "DecisionProba" 
FROM kernel_dp