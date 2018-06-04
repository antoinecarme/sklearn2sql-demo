-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVC_rbf
-- Dataset : BinaryClass_10
-- Database : mysql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9`, CAST(`ADS`.`TGT` AS DOUBLE) AS `TGT` 
FROM `BinaryClass_10` AS `ADS`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, CAST(`Values`.dual_coeff AS DOUBLE) AS dual_coeff, CAST(`Values`.sv_0 AS DOUBLE) AS sv_0, CAST(`Values`.sv_1 AS DOUBLE) AS sv_1, CAST(`Values`.sv_2 AS DOUBLE) AS sv_2, CAST(`Values`.sv_3 AS DOUBLE) AS sv_3, CAST(`Values`.sv_4 AS DOUBLE) AS sv_4, CAST(`Values`.sv_5 AS DOUBLE) AS sv_5, CAST(`Values`.sv_6 AS DOUBLE) AS sv_6, CAST(`Values`.sv_7 AS DOUBLE) AS sv_7, CAST(`Values`.sv_8 AS DOUBLE) AS sv_8, CAST(`Values`.sv_9 AS DOUBLE) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.02755692222730002 AS dual_coeff, 1.3869317482740553 AS sv_0, 1.3023514874165105 AS sv_1, -0.12875022488078935 AS sv_2, -0.1947252034560796 AS sv_3, -0.15161271838505047 AS sv_4, -1.6622085404141629 AS sv_5, 0.2588801619086689 AS sv_6, 0.46577670474189764 AS sv_7, 0.6836049309057372 AS sv_8, -1.049456845029877 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.6994950936687274 AS dual_coeff, 1.4381247966295068 AS sv_0, 0.6635392845773066 AS sv_1, 1.6998893753270106 AS sv_2, 0.9567405573635612 AS sv_3, -1.7516253433919915 AS sv_4, -0.8430319931766532 AS sv_5, 0.5014356702225439 AS sv_6, 0.5279311312920253 AS sv_7, -1.1850456651959491 AS sv_8, -1.2898557344951027 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, 2.120069912015655 AS sv_0, -1.3157115383923255 AS sv_1, 0.6429642863228179 AS sv_2, 0.6610814484957174 AS sv_3, 0.36596290608041254 AS sv_4, -2.5491721699014698 AS sv_5, 0.06129702661697322 AS sv_6, 0.7115638190536748 AS sv_7, 1.8302433276613608 AS sv_8, -1.6023004406952328 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, 0.4809672098030855 AS sv_0, 1.9281234723864962 AS sv_1, 0.5386834807895613 AS sv_2, 0.9128267937845747 AS sv_3, 2.0958556488784024 AS sv_4, -0.27086036412995806 AS sv_5, -0.7857194492739092 AS sv_6, 0.1771275259206786 AS sv_7, 1.4050432480605073 AS sv_8, -0.43391845713831423 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.21613870478849442 AS sv_0, -0.5303212005433303 AS sv_1, -0.5362164085336691 AS sv_2, -0.8100387031157575 AS sv_3, -0.9615662898307464 AS sv_4, 1.5529718576848406 AS sv_5, -0.4595236871795928 AS sv_6, -0.006514794174079089 AS sv_7, -1.8130818762045466 AS sv_8, -0.13279488760020075 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -0.49606387072318037 AS dual_coeff, 0.7339940477298028 AS sv_0, 1.2871465673488465 AS sv_1, 0.1875901783233878 AS sv_2, 0.2966329388539434 AS sv_3, -0.6550736725587594 AS sv_4, -0.5667448842766283 AS sv_5, 0.9345774254716126 AS sv_6, 0.26247811680900424 AS sv_7, 0.17933865710548139 AS sv_8, -0.6270638499836759 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -0.05213379204679852 AS sv_0, 0.14498787583333014 AS sv_1, 0.5340592256715511 AS sv_2, 1.4321952389465753 AS sv_3, 0.738275982301284 AS sv_4, 1.4341442375220592 AS sv_5, 0.033602057890890415 AS sv_6, 0.052532412603893186 AS sv_7, -0.8806903984842515 AS sv_8, -0.27469508368586715 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.8954435454760423 AS dual_coeff, 0.1609673651304091 AS sv_0, 0.31951315402216107 AS sv_1, 1.421875453224298 AS sv_2, 1.0901295605582688 AS sv_3, 0.21308828842752156 AS sv_4, 1.6377496951258501 AS sv_5, -0.919723457692772 AS sv_6, 0.14753655567089496 AS sv_7, 0.5686299031785073 AS sv_8, -0.5410659754384293 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.759932229366612 AS sv_0, 0.552805168880046 AS sv_1, -0.23487363635190292 AS sv_2, -1.2701421722716257 AS sv_3, 1.456377543159662 AS sv_4, 1.5435117281327027 AS sv_5, 2.8107702281511435 AS sv_6, -0.2229001278703461 AS sv_7, 0.6172442977370132 AS sv_8, 0.4301073180538011 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, 0.785560584884625 AS sv_0, 1.0733430351073072 AS sv_1, 0.12853183489140385 AS sv_2, -0.566243175109869 AS sv_3, -1.481913963837002 AS sv_4, -0.8386241389093972 AS sv_5, 0.26604319157707085 AS sv_6, 0.2690687200903063 AS sv_7, 1.271598798688941 AS sv_8, -0.6179701490256493 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.35405734362569996 AS dual_coeff, 1.0241535877780805 AS sv_0, -1.0495224376120962 AS sv_1, -0.26852046676993463 AS sv_2, 1.7226040722993716 AS sv_3, 0.9380136904955607 AS sv_4, 0.13018473131083308 AS sv_5, -0.08032563816377523 AS sv_6, 0.41326713765304607 AS sv_7, -2.040113803171429 AS sv_8, -1.0858768663310276 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 1.1402573781685328 AS sv_0, 0.6761804068245167 AS sv_1, -1.4731268041595753 AS sv_2, 0.7323942062420845 AS sv_3, 1.4964566535823185 AS sv_4, -1.4683569412740674 AS sv_5, 1.124026130806446 AS sv_6, 0.3777381705418596 AS sv_7, -0.2543842002580888 AS sv_8, -0.8394938690129621 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.062441713203785346 AS dual_coeff, 0.7430089011960362 AS sv_0, -0.23929647235393137 AS sv_1, -0.9541511016410574 AS sv_2, 1.3310869796087246 AS sv_3, 0.6575038895002946 AS sv_4, 0.20938692944407888 AS sv_5, -0.34219217399760216 AS sv_6, 0.30568856533648076 AS sv_7, -0.50121130930097 AS sv_8, -0.8141122002000563 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.9823489685860931 AS dual_coeff, 0.5373565697566288 AS sv_0, -0.04690948394036747 AS sv_1, 0.29555831849829717 AS sv_2, -2.8951397669851433 AS sv_3, 1.2621190656210834 AS sv_4, -0.7719309323277832 AS sv_5, -0.9937390191746367 AS sv_6, 0.17392983723693703 AS sv_7, -0.3093235091111961 AS sv_8, -0.37730757660701 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.87606116232365 AS dual_coeff, 1.4707105326593743 AS sv_0, 0.6311035489040773 AS sv_1, -2.8012908337953695 AS sv_2, 1.1813381968736358 AS sv_3, 0.38748490651690554 AS sv_4, -0.04500376296944053 AS sv_5, -0.24046266634057512 AS sv_6, 0.5816180116060542 AS sv_7, -1.8316894690704832 AS sv_8, -1.506224126659428 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 0.407462944576994 AS sv_0, 1.3739520090723474 AS sv_1, -0.32708625268269326 AS sv_2, -0.4957144018056562 AS sv_3, 0.5225386626750229 AS sv_4, 1.831605600663067 AS sv_5, -0.6450938560071097 AS sv_6, 0.25530144489299267 AS sv_7, 0.27881375828154403 AS sv_8, -0.839638825731542 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.4927652096803483 AS dual_coeff, 1.5314880717921968 AS sv_0, -1.1221448073812108 AS sv_1, -1.074653972221543 AS sv_2, -1.738666070442788 AS sv_3, 2.989596347044145 AS sv_4, -1.0283177254545857 AS sv_5, -0.4299666693658347 AS sv_6, 0.555537975745693 AS sv_7, -0.5240372776217319 AS sv_8, -1.3436929393692052 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.9693647829798745 AS dual_coeff, 0.5799864121318057 AS sv_0, -0.2360313038841518 AS sv_1, 0.43505579564303826 AS sv_2, 1.3393898952948147 AS sv_3, -1.8861454098888544 AS sv_4, 0.020294743576157792 AS sv_5, -0.6292571849498783 AS sv_6, 0.23130823452460433 AS sv_7, -1.4508741930862805 AS sv_8, -0.6027040800554819 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, -0.011908999728864111 AS sv_0, -0.8908065351122083 AS sv_1, -0.5063606992712224 AS sv_2, -0.24282406881234603 AS sv_3, 0.143574433900628 AS sv_4, 1.4442721907375726 AS sv_5, 0.6468644070009625 AS sv_6, 0.0690200161630706 AS sv_7, -1.3533365355738265 AS sv_8, -0.318492636197919 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.20201239177718774 AS dual_coeff, 1.120875660247202 AS sv_0, -0.14490823792584728 AS sv_1, -1.9001775986599596 AS sv_2, -2.5665062657480977 AS sv_3, -0.5387631944075266 AS sv_4, -0.7631383016967406 AS sv_5, 0.6232385849324242 AS sv_6, 0.4060533232018754 AS sv_7, -0.24894790224859287 AS sv_8, -0.9810201396152777 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, -0.8832766812818473 AS sv_0, 0.501049774810359 AS sv_1, 0.2479598674358872 AS sv_2, 0.8693112756683995 AS sv_3, 1.996147651770403 AS sv_4, 2.380376125070892 AS sv_5, 2.614818878550584 AS sv_6, -0.2291391162693423 AS sv_7, -0.0650419737088196 AS sv_8, 0.3656327705757887 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 0.7262866594357859 AS sv_0, -0.13694221346809365 AS sv_1, 1.87537250288579 AS sv_2, 1.5235357221633312 AS sv_3, -0.46089293180940766 AS sv_4, -0.9708223054007781 AS sv_5, -0.01178577032390541 AS sv_6, 0.2387848231935976 AS sv_7, -0.20550758304272917 AS sv_8, -0.5265729999445877 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.660747585977558 AS dual_coeff, 0.18655656472286322 AS sv_0, 0.7018565551129017 AS sv_1, -0.17237723790595258 AS sv_2, -1.0262469401396512 AS sv_3, -1.4151234456298987 AS sv_4, 0.08522945062564924 AS sv_5, 2.265435222000944 AS sv_6, 0.07842056410455177 AS sv_7, -0.020740240980986667 AS sv_8, -0.21188837313984477 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, -0.3072178920094768 AS sv_0, -0.08419770648067697 AS sv_1, -0.1306274931517295 AS sv_2, 0.5603600953691231 AS sv_3, -1.2195669450232594 AS sv_4, 1.3176176696171835 AS sv_5, 1.4264140211857006 AS sv_6, -0.05469374139869011 AS sv_7, 1.1876901315295343 AS sv_8, 0.015023609022383422 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -0.8670692394849355 AS dual_coeff, 1.500082483628606 AS sv_0, 0.7267781109547563 AS sv_1, 1.0387824703914883 AS sv_2, -0.8148060664558938 AS sv_3, 0.8037679440680124 AS sv_4, -1.8765009447783967 AS sv_5, 1.0831079837281372 AS sv_6, 0.4997586069227328 AS sv_7, -0.5427918958620014 AS sv_8, -1.1170547782092501 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 1.7096089096467344 AS sv_0, -1.7206740883924276 AS sv_1, 0.4931714251821265 AS sv_2, 0.6008116937038641 AS sv_3, -0.0867360316949045 AS sv_4, -2.188319868387153 AS sv_5, 0.36860794553175896 AS sv_6, 0.5670245831625101 AS sv_7, -1.0950674272441343 AS sv_8, -1.2616951306848285 AS sv_9 UNION ALL SELECT 26 AS sv_idx, -0.43554850259301564 AS dual_coeff, 1.7406428436664605 AS sv_0, -1.770495386387641 AS sv_1, -0.07463878241592434 AS sv_2, -0.0037948497623813615 AS sv_3, -1.235391494814571 AS sv_4, -2.182202011378088 AS sv_5, 0.23688793275339634 AS sv_6, 0.5796583755941385 AS sv_7, 0.30964558622762334 AS sv_8, -1.2950970729805795 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.651195525977357 AS sv_0, -0.08936038423557587 AS sv_1, 1.9966011707973088 AS sv_2, 0.6138413720482201 AS sv_3, -0.24829220161063323 AS sv_4, -2.1003752138660037 AS sv_5, -0.5243777808662209 AS sv_6, 0.15129352930018047 AS sv_7, -0.6087374876863917 AS sv_8, -0.19044790673420153 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.16975708565977984 AS sv_0, 0.5745901873736575 AS sv_1, 0.13520582022086736 AS sv_2, 1.235580504196008 AS sv_3, -0.7909057983300439 AS sv_4, -0.9991732885159312 AS sv_5, 0.3046585722264628 AS sv_6, 0.016378282006633726 AS sv_7, -2.0380997713438007 AS sv_8, 0.05378850572963312 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.8652416164274608 AS sv_0, -1.2494742219861754 AS sv_1, 1.970456348555097 AS sv_2, 0.02323201628587036 AS sv_3, -0.7534053731189334 AS sv_4, -1.2056689228229833 AS sv_5, 2.158241115300078 AS sv_6, 0.2819622213989109 AS sv_7, 0.9519093576303396 AS sv_8, -0.6160716913329085 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.1019725646490372 AS sv_0, 1.1685511812029383 AS sv_1, 1.16463972680708 AS sv_2, -1.322897896328765 AS sv_3, -0.81831930171055 AS sv_4, -1.613089725148296 AS sv_5, -0.6318915732239502 AS sv_6, -0.04188234680584454 AS sv_7, -1.7397547050645301 AS sv_8, 0.2642863364515001 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.23592163546645983 AS sv_0, 0.01559558553610639 AS sv_1, -0.14752596910266838 AS sv_2, -1.2939361435540477 AS sv_3, -2.1277947525067775 AS sv_4, 2.9511133894725567 AS sv_5, -2.063295162834261 AS sv_6, 0.2443593613004832 AS sv_7, -1.6533000080360474 AS sv_8, -0.9191469810556254 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.9215901383231664 AS dual_coeff, 0.5954228223112823 AS sv_0, 1.070088205789964 AS sv_1, 1.6359734751574904 AS sv_2, 1.8207530511515095 AS sv_3, 1.058171013210782 AS sv_4, -1.4969966417968363 AS sv_5, -0.16104490427296092 AS sv_6, 0.15996015820788406 AS sv_7, -0.9675784633481913 AS sv_8, -0.2711256206763759 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.8309376943018076 AS sv_0, 0.3494158747839881 AS sv_1, -0.4786555924059382 AS sv_2, 1.0978825983775917 AS sv_3, 0.3928388355825836 AS sv_4, -2.057693229890982 AS sv_5, 0.5622815503608488 AS sv_6, 0.22483599160616763 AS sv_7, 1.1352549387252504 AS sv_8, -0.38556519714981885 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, -0.6557259046238674 AS sv_0, -0.19753543035285562 AS sv_1, -0.3870102338535069 AS sv_2, 0.12240188653634958 AS sv_3, 0.8587294067401514 AS sv_4, 1.6830499480545718 AS sv_5, -0.1682619880379936 AS sv_6, -0.17440192412254285 AS sv_7, -1.4901396843996222 AS sv_8, 0.2906968375895972 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.30846141230367286 AS dual_coeff, -0.9362057255475571 AS sv_0, -0.11352248037217438 AS sv_1, 1.061984565910281 AS sv_2, 0.22418695911281536 AS sv_3, 0.4715198809820012 AS sv_4, 0.8367092508536015 AS sv_5, -0.5758290809477716 AS sv_6, -0.3289771205869928 AS sv_7, 0.03846674558083296 AS sv_8, 0.7737472491326887 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.6188711319595246 AS dual_coeff, -0.060448736905912626 AS sv_0, -0.11125683859707515 AS sv_1, 0.021022926526784357 AS sv_2, 0.6800389448678937 AS sv_3, 1.9737574262819368 AS sv_4, -1.5110360621219798 AS sv_5, 0.3358890911364689 AS sv_6, -0.10115733393436173 AS sv_7, 0.15007426791522938 AS sv_8, 0.4083952183013907 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 0.39694586898324974 AS dual_coeff, -1.9663310693948426 AS sv_0, -0.8234440790714608 AS sv_1, 0.1888688624711014 AS sv_2, 1.379437953273724 AS sv_3, -2.594699659221376 AS sv_4, 0.4408191812641993 AS sv_5, 1.2533880835073579 AS sv_6, -0.7581828203224484 AS sv_7, -1.117434817605979 AS sv_8, 1.9266347626423652 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 0.7791709229237593 AS dual_coeff, -0.771540268926696 AS sv_0, 1.46903207688595 AS sv_1, -2.019076907942007 AS sv_2, -0.5135675470364792 AS sv_3, 1.0965351526985396 AS sv_4, 1.6038820415606125 AS sv_5, -0.6080326284525016 AS sv_6, -0.2244262032219191 AS sv_7, -0.32058268918214206 AS sv_8, 0.42825077343097584 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, -0.7525174599184026 AS sv_0, 1.3825524761202033 AS sv_1, -0.8479737534640933 AS sv_2, -0.20086204414810277 AS sv_3, -0.8003673053468898 AS sv_4, 1.4494724426104775 AS sv_5, -0.3292842942877819 AS sv_6, -0.22475813015584867 AS sv_7, 0.8669609737617006 AS sv_8, 0.4439987706498345 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 0.25561245313903314 AS dual_coeff, -1.1409661724101745 AS sv_0, -0.3463541301131144 AS sv_1, 0.7379869754948905 AS sv_2, -0.2900040524105142 AS sv_3, -1.7885360709318514 AS sv_4, 1.7667109334962625 AS sv_5, -0.24873961548043694 AS sv_6, -0.3627848624512894 AS sv_7, 1.3419906953654295 AS sv_8, 0.7718945892552856 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, -1.0458024423037 AS sv_0, 0.11294939926527063 AS sv_1, 0.46891997076276926 AS sv_2, -0.7604854545960222 AS sv_3, 0.1357802035153995 AS sv_4, 1.4757603465643656 AS sv_5, 0.5220718295742688 AS sv_6, -0.33985870226752574 AS sv_7, -0.48017811399063987 AS sv_8, 0.740400599203569 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.23088083364315856 AS dual_coeff, -1.093374409702152 AS sv_0, 0.9475980125219733 AS sv_1, -0.9017238789248192 AS sv_2, 1.1646152166358184 AS sv_3, -0.4394617001393151 AS sv_4, 0.9439394406278055 AS sv_5, 0.6299116301591762 AS sv_6, -0.38590233494303533 AS sv_7, -1.3631221654569208 AS sv_8, 0.9112543186798081 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 1.0713755931512898 AS sv_0, -0.6341929930213883 AS sv_1, -0.8608076793809787 AS sv_2, 1.7692639439055955 AS sv_3, -0.15206514397570287 AS sv_4, -1.8162569729750924 AS sv_5, 2.0157523076551636 AS sv_6, 0.33262537551495386 AS sv_7, -0.16263678202300752 AS sv_8, -0.6887886691414953 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 0.7333957086914488 AS dual_coeff, 0.012065042254881864 AS sv_0, 0.4443892983426857 AS sv_1, -1.4697913688875572 AS sv_2, 0.4517222860649883 AS sv_3, -1.7368938491583985 AS sv_4, -1.460865852935286 AS sv_5, -0.33760275685003066 AS sv_6, -0.06980537759852712 AS sv_7, 1.4704670843488727 AS sv_8, 0.3221320752206227 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 0.8831431185743445 AS dual_coeff, -0.11191428863440406 AS sv_0, -2.9539110781648725 AS sv_1, -0.5048346440293533 AS sv_2, -0.12704048004071272 AS sv_3, 1.6484754725778463 AS sv_4, -1.9936263313135245 AS sv_5, -0.5213253200352531 AS sv_6, -0.14623299324600858 AS sv_7, -1.9489722219040737 AS sv_8, 0.5719888420200394 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, 0.9140539237335175 AS sv_0, 0.6044433177877142 AS sv_1, 0.2676507811668582 AS sv_2, 1.2566586429636435 AS sv_3, -0.01805437836471338 AS sv_4, -1.47801475508027 AS sv_5, 0.6098850048713202 AS sv_6, 0.28743548849606926 AS sv_7, -0.16838677020388274 AS sv_8, -0.6040310941183635 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.9398588208488127 AS dual_coeff, -0.7343297083876039 AS sv_0, -1.4265880639004551 AS sv_1, -0.7806625074373339 AS sv_2, 1.4639499794023008 AS sv_3, 0.1109836453347228 AS sv_4, 1.44260052921336 AS sv_5, 1.0532796207373882 AS sv_6, -0.21788794697036953 AS sv_7, 1.0197140596407803 AS sv_8, 0.42681820458385533 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.7992348138751457 AS dual_coeff, 0.4072512631016443 AS sv_0, 2.0466987867534647 AS sv_1, -3.9912885179936213 AS sv_2, 0.8382817661390957 AS sv_3, 0.5407473106323089 AS sv_4, 2.56928102879518 AS sv_5, 2.434235523534455 AS sv_6, 0.2928850016560724 AS sv_7, 0.31899439638934446 AS sv_8, -1.008365758437452 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.503280459048536 AS dual_coeff, -0.9842478520884335 AS sv_0, 1.9378098213560637 AS sv_1, 1.9009645965187745 AS sv_2, 1.0225965404741875 AS sv_3, 1.0177323969292706 AS sv_4, 0.42791816616792433 AS sv_5, -1.3637383386684128 AS sv_6, -0.36892520205430207 AS sv_7, -0.7573078864848414 AS sv_8, 0.9169090219782268 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.4587969094443961 AS dual_coeff, -1.1514504000938182 AS sv_0, 0.3319921748636244 AS sv_1, -0.3986449371602447 AS sv_2, -2.0059250471778616 AS sv_3, -1.1837022225187166 AS sv_4, -1.3402528677516417 AS sv_5, -0.8862663250298513 AS sv_6, -0.5255969598941366 AS sv_7, 3.070620490630201 AS sv_8, 1.4942740266821413 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 0.6863847339463246 AS dual_coeff, -1.029643186776298 AS sv_0, -0.9773916285069058 AS sv_1, 1.7550829759782132 AS sv_2, 0.9122481516887383 AS sv_3, -0.08196737041614892 AS sv_4, 1.2232824746020043 AS sv_5, 0.636305156382388 AS sv_6, -0.3463351631986256 AS sv_7, 1.810402402770992 AS sv_8, 0.7815613307777305 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.3366652264555634 AS sv_0, -0.5583924823639528 AS sv_1, -1.635627281588523 AS sv_2, -0.5058003865138625 AS sv_3, -0.2227444485320821 AS sv_4, 2.904163322602534 AS sv_5, 0.4913350109051379 AS sv_6, 0.28196018574523973 AS sv_7, 0.9444309886480903 AS sv_8, -1.01227659411881 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 0.5053490066228252 AS dual_coeff, -3.7187974972853914 AS sv_0, 0.6134728139942742 AS sv_1, 0.5522043442253135 AS sv_2, 1.2505521474548902 AS sv_3, -0.22534264711586277 AS sv_4, -1.4417236873485972 AS sv_5, -0.29157358796271793 AS sv_6, -1.5500918179821856 AS sv_7, 1.7327983780353353 AS sv_8, 4.164846993310231 AS sv_9) AS `Values`), 
kernel_dp AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 0.30683634532860493 AS dot_product 
FROM (SELECT kernel_input.`KEY` AS `KEY`, `SV_data`.dual_coeff * exp(least(greatest(-100.0, -0.1 * (power(kernel_input.`Feature_0` - `SV_data`.sv_0, 2) + power(kernel_input.`Feature_1` - `SV_data`.sv_1, 2) + power(kernel_input.`Feature_2` - `SV_data`.sv_2, 2) + power(kernel_input.`Feature_3` - `SV_data`.sv_3, 2) + power(kernel_input.`Feature_4` - `SV_data`.sv_4, 2) + power(kernel_input.`Feature_5` - `SV_data`.sv_5, 2) + power(kernel_input.`Feature_6` - `SV_data`.sv_6, 2) + power(kernel_input.`Feature_7` - `SV_data`.sv_7, 2) + power(kernel_input.`Feature_8` - `SV_data`.sv_8, 2) + power(kernel_input.`Feature_9` - `SV_data`.sv_9, 2))), 100.0)) AS dot_prod1 
FROM kernel_input, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_dp.`KEY` AS `KEY`, -kernel_dp.dot_product AS `Score_0`, kernel_dp.dot_product AS `Score_1`, 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) AS `Proba_0`, 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) AS `Proba_1`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0)))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0)))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (kernel_dp.dot_product > 0.0) THEN 1 ELSE 0 END AS `Decision`, greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -(-(kernel_dp.dot_product * -4.125779473273865 + 0.37898522641528487))), 100.0)))) AS `DecisionProba` 
FROM kernel_dp