-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CAST(`ADS`.`Feature_0` AS DOUBLE) AS `Feature_0`, CAST(`ADS`.`Feature_1` AS DOUBLE) AS `Feature_1`, CAST(`ADS`.`Feature_2` AS DOUBLE) AS `Feature_2`, CAST(`ADS`.`Feature_3` AS DOUBLE) AS `Feature_3`, CAST(`ADS`.`Feature_4` AS DOUBLE) AS `Feature_4`, CAST(`ADS`.`Feature_5` AS DOUBLE) AS `Feature_5`, CAST(`ADS`.`Feature_6` AS DOUBLE) AS `Feature_6`, CAST(`ADS`.`Feature_7` AS DOUBLE) AS `Feature_7`, CAST(`ADS`.`Feature_8` AS DOUBLE) AS `Feature_8`, CAST(`ADS`.`Feature_9` AS DOUBLE) AS `Feature_9`, CAST(`ADS`.`Feature_10` AS DOUBLE) AS `Feature_10`, CAST(`ADS`.`Feature_11` AS DOUBLE) AS `Feature_11`, CAST(`ADS`.`Feature_12` AS DOUBLE) AS `Feature_12`, CAST(`ADS`.`Feature_13` AS DOUBLE) AS `Feature_13`, CAST(`ADS`.`Feature_14` AS DOUBLE) AS `Feature_14`, CAST(`ADS`.`Feature_15` AS DOUBLE) AS `Feature_15`, CAST(`ADS`.`Feature_16` AS DOUBLE) AS `Feature_16`, CAST(`ADS`.`Feature_17` AS DOUBLE) AS `Feature_17`, CAST(`ADS`.`Feature_18` AS DOUBLE) AS `Feature_18`, CAST(`ADS`.`Feature_19` AS DOUBLE) AS `Feature_19`, CAST(`ADS`.`Feature_20` AS DOUBLE) AS `Feature_20`, CAST(`ADS`.`Feature_21` AS DOUBLE) AS `Feature_21`, CAST(`ADS`.`Feature_22` AS DOUBLE) AS `Feature_22`, CAST(`ADS`.`Feature_23` AS DOUBLE) AS `Feature_23`, CAST(`ADS`.`Feature_24` AS DOUBLE) AS `Feature_24`, CAST(`ADS`.`Feature_25` AS DOUBLE) AS `Feature_25`, CAST(`ADS`.`Feature_26` AS DOUBLE) AS `Feature_26`, CAST(`ADS`.`Feature_27` AS DOUBLE) AS `Feature_27`, CAST(`ADS`.`Feature_28` AS DOUBLE) AS `Feature_28`, CAST(`ADS`.`Feature_29` AS DOUBLE) AS `Feature_29`, CAST(`ADS`.`Feature_30` AS DOUBLE) AS `Feature_30`, CAST(`ADS`.`Feature_31` AS DOUBLE) AS `Feature_31`, CAST(`ADS`.`Feature_32` AS DOUBLE) AS `Feature_32`, CAST(`ADS`.`Feature_33` AS DOUBLE) AS `Feature_33`, CAST(`ADS`.`Feature_34` AS DOUBLE) AS `Feature_34`, CAST(`ADS`.`Feature_35` AS DOUBLE) AS `Feature_35`, CAST(`ADS`.`Feature_36` AS DOUBLE) AS `Feature_36`, CAST(`ADS`.`Feature_37` AS DOUBLE) AS `Feature_37`, CAST(`ADS`.`Feature_38` AS DOUBLE) AS `Feature_38`, CAST(`ADS`.`Feature_39` AS DOUBLE) AS `Feature_39`, CAST(`ADS`.`Feature_40` AS DOUBLE) AS `Feature_40`, CAST(`ADS`.`Feature_41` AS DOUBLE) AS `Feature_41`, CAST(`ADS`.`Feature_42` AS DOUBLE) AS `Feature_42`, CAST(`ADS`.`Feature_43` AS DOUBLE) AS `Feature_43`, CAST(`ADS`.`Feature_44` AS DOUBLE) AS `Feature_44`, CAST(`ADS`.`Feature_45` AS DOUBLE) AS `Feature_45`, CAST(`ADS`.`Feature_46` AS DOUBLE) AS `Feature_46`, CAST(`ADS`.`Feature_47` AS DOUBLE) AS `Feature_47`, CAST(`ADS`.`Feature_48` AS DOUBLE) AS `Feature_48`, CAST(`ADS`.`Feature_49` AS DOUBLE) AS `Feature_49`, CAST(`ADS`.`Feature_50` AS DOUBLE) AS `Feature_50`, CAST(`ADS`.`Feature_51` AS DOUBLE) AS `Feature_51`, CAST(`ADS`.`Feature_52` AS DOUBLE) AS `Feature_52`, CAST(`ADS`.`Feature_53` AS DOUBLE) AS `Feature_53`, CAST(`ADS`.`Feature_54` AS DOUBLE) AS `Feature_54`, CAST(`ADS`.`Feature_55` AS DOUBLE) AS `Feature_55`, CAST(`ADS`.`Feature_56` AS DOUBLE) AS `Feature_56`, CAST(`ADS`.`Feature_57` AS DOUBLE) AS `Feature_57`, CAST(`ADS`.`Feature_58` AS DOUBLE) AS `Feature_58`, CAST(`ADS`.`Feature_59` AS DOUBLE) AS `Feature_59`, CAST(`ADS`.`Feature_60` AS DOUBLE) AS `Feature_60`, CAST(`ADS`.`Feature_61` AS DOUBLE) AS `Feature_61`, CAST(`ADS`.`Feature_62` AS DOUBLE) AS `Feature_62`, CAST(`ADS`.`Feature_63` AS DOUBLE) AS `Feature_63`, CAST(`ADS`.`Feature_64` AS DOUBLE) AS `Feature_64`, CAST(`ADS`.`Feature_65` AS DOUBLE) AS `Feature_65`, CAST(`ADS`.`Feature_66` AS DOUBLE) AS `Feature_66`, CAST(`ADS`.`Feature_67` AS DOUBLE) AS `Feature_67`, CAST(`ADS`.`Feature_68` AS DOUBLE) AS `Feature_68`, CAST(`ADS`.`Feature_69` AS DOUBLE) AS `Feature_69`, CAST(`ADS`.`Feature_70` AS DOUBLE) AS `Feature_70`, CAST(`ADS`.`Feature_71` AS DOUBLE) AS `Feature_71`, CAST(`ADS`.`Feature_72` AS DOUBLE) AS `Feature_72`, CAST(`ADS`.`Feature_73` AS DOUBLE) AS `Feature_73`, CAST(`ADS`.`Feature_74` AS DOUBLE) AS `Feature_74`, CAST(`ADS`.`Feature_75` AS DOUBLE) AS `Feature_75`, CAST(`ADS`.`Feature_76` AS DOUBLE) AS `Feature_76`, CAST(`ADS`.`Feature_77` AS DOUBLE) AS `Feature_77`, CAST(`ADS`.`Feature_78` AS DOUBLE) AS `Feature_78`, CAST(`ADS`.`Feature_79` AS DOUBLE) AS `Feature_79`, CAST(`ADS`.`Feature_80` AS DOUBLE) AS `Feature_80`, CAST(`ADS`.`Feature_81` AS DOUBLE) AS `Feature_81`, CAST(`ADS`.`Feature_82` AS DOUBLE) AS `Feature_82`, CAST(`ADS`.`Feature_83` AS DOUBLE) AS `Feature_83`, CAST(`ADS`.`Feature_84` AS DOUBLE) AS `Feature_84`, CAST(`ADS`.`Feature_85` AS DOUBLE) AS `Feature_85`, CAST(`ADS`.`Feature_86` AS DOUBLE) AS `Feature_86`, CAST(`ADS`.`Feature_87` AS DOUBLE) AS `Feature_87`, CAST(`ADS`.`Feature_88` AS DOUBLE) AS `Feature_88`, CAST(`ADS`.`Feature_89` AS DOUBLE) AS `Feature_89`, CAST(`ADS`.`Feature_90` AS DOUBLE) AS `Feature_90`, CAST(`ADS`.`Feature_91` AS DOUBLE) AS `Feature_91`, CAST(`ADS`.`Feature_92` AS DOUBLE) AS `Feature_92`, CAST(`ADS`.`Feature_93` AS DOUBLE) AS `Feature_93`, CAST(`ADS`.`Feature_94` AS DOUBLE) AS `Feature_94`, CAST(`ADS`.`Feature_95` AS DOUBLE) AS `Feature_95`, CAST(`ADS`.`Feature_96` AS DOUBLE) AS `Feature_96`, CAST(`ADS`.`Feature_97` AS DOUBLE) AS `Feature_97`, CAST(`ADS`.`Feature_98` AS DOUBLE) AS `Feature_98`, CAST(`ADS`.`Feature_99` AS DOUBLE) AS `Feature_99` 
FROM `FourClass_100` AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.242687850878 * `IL`.`Feature_0` + -0.0859947944252 * `IL`.`Feature_1` + -0.057389164867 * `IL`.`Feature_2` + -1.55628164169 * `IL`.`Feature_3` + -0.259614854404 * `IL`.`Feature_4` + 0.360957238382 * `IL`.`Feature_5` + 1.73783958759 * `IL`.`Feature_6` + 0.575996935037 * `IL`.`Feature_7` + -0.384274509345 * `IL`.`Feature_8` + 0.512786094881 * `IL`.`Feature_9` + 0.422737473365 * `IL`.`Feature_10` + -0.625073744724 * `IL`.`Feature_11` + -0.324838108803 * `IL`.`Feature_12` + -0.127755683911 * `IL`.`Feature_13` + 0.53243766363 * `IL`.`Feature_14` + -1.14403724062 * `IL`.`Feature_15` + 0.079060267243 * `IL`.`Feature_16` + -2.36852055998 * `IL`.`Feature_17` + 0.864348407154 * `IL`.`Feature_18` + -0.0689185898532 * `IL`.`Feature_19` + -1.34259022683 * `IL`.`Feature_20` + -0.96542062241 * `IL`.`Feature_21` + 0.115017232084 * `IL`.`Feature_22` + 0.412652497087 * `IL`.`Feature_23` + -0.0849046261975 * `IL`.`Feature_24` + -0.21244915732 * `IL`.`Feature_25` + 1.32323294718 * `IL`.`Feature_26` + 0.36399858536 * `IL`.`Feature_27` + -0.695058275518 * `IL`.`Feature_28` + 1.38678517834 * `IL`.`Feature_29` + -0.0504312870626 * `IL`.`Feature_30` + 0.122237077903 * `IL`.`Feature_31` + 1.5988316015 * `IL`.`Feature_32` + -0.0538602338992 * `IL`.`Feature_33` + -0.0686364395063 * `IL`.`Feature_34` + -0.423630002899 * `IL`.`Feature_35` + -0.336222641227 * `IL`.`Feature_36` + 0.142462365717 * `IL`.`Feature_37` + 0.561130903839 * `IL`.`Feature_38` + 0.684455466417 * `IL`.`Feature_39` + 0.274608858857 * `IL`.`Feature_40` + -0.453571257729 * `IL`.`Feature_41` + -0.0369277329772 * `IL`.`Feature_42` + 0.193855155447 * `IL`.`Feature_43` + 0.184793051803 * `IL`.`Feature_44` + -0.430757751682 * `IL`.`Feature_45` + 0.477946262968 * `IL`.`Feature_46` + 2.86664760965 * `IL`.`Feature_47` + -0.593159283564 * `IL`.`Feature_48` + 0.0211252029845 * `IL`.`Feature_49` + 0.260586278025 * `IL`.`Feature_50` + -0.227438144429 * `IL`.`Feature_51` + -1.11874795092 * `IL`.`Feature_52` + 0.115018010396 * `IL`.`Feature_53` + 0.154169662094 * `IL`.`Feature_54` + 0.110669108407 * `IL`.`Feature_55` + 0.381527009493 * `IL`.`Feature_56` + -0.296702954962 * `IL`.`Feature_57` + -0.141654674808 * `IL`.`Feature_58` + 0.279896458011 * `IL`.`Feature_59` + 0.913632525213 * `IL`.`Feature_60` + -0.192619995213 * `IL`.`Feature_61` + -3.26251931108 * `IL`.`Feature_62` + -0.205607292966 * `IL`.`Feature_63` + 0.0894813561579 * `IL`.`Feature_64` + 0.0569690663544 * `IL`.`Feature_65` + 0.504485276871 * `IL`.`Feature_66` + 0.0150005400841 * `IL`.`Feature_67` + -0.756506582256 * `IL`.`Feature_68` + 1.77215083342 * `IL`.`Feature_69` + 0.22106891074 * `IL`.`Feature_70` + -0.00143004505361 * `IL`.`Feature_71` + -0.163610546956 * `IL`.`Feature_72` + 0.590666427039 * `IL`.`Feature_73` + -0.971380580217 * `IL`.`Feature_74` + -0.138250953682 * `IL`.`Feature_75` + 0.286953304903 * `IL`.`Feature_76` + 0.126620171 * `IL`.`Feature_77` + -1.69060401034 * `IL`.`Feature_78` + -0.137547569679 * `IL`.`Feature_79` + -0.15727305125 * `IL`.`Feature_80` + 0.385394818015 * `IL`.`Feature_81` + -0.10178137026 * `IL`.`Feature_82` + -0.245404146963 * `IL`.`Feature_83` + -1.18474220021 * `IL`.`Feature_84` + 0.12380345713 * `IL`.`Feature_85` + -0.89535772824 * `IL`.`Feature_86` + 0.400366931437 * `IL`.`Feature_87` + 0.150220587295 * `IL`.`Feature_88` + -0.444647876458 * `IL`.`Feature_89` + -0.274192756848 * `IL`.`Feature_90` + 1.39409353661 * `IL`.`Feature_91` + 0.150984846585 * `IL`.`Feature_92` + -0.306267818297 * `IL`.`Feature_93` + 0.674174160253 * `IL`.`Feature_94` + -0.180307491745 * `IL`.`Feature_95` + -0.365311028735 * `IL`.`Feature_96` + -0.279871089037 * `IL`.`Feature_97` + 1.27016122445 * `IL`.`Feature_98` + 1.05558385531 * `IL`.`Feature_99` + -0.086222542493 AS `NEUR_1_1`, 0.0712429311942 * `IL`.`Feature_0` + 0.385149238315 * `IL`.`Feature_1` + -0.0656041171877 * `IL`.`Feature_2` + 0.637017801888 * `IL`.`Feature_3` + 1.64000413736 * `IL`.`Feature_4` + 0.283788577775 * `IL`.`Feature_5` + -0.475816392743 * `IL`.`Feature_6` + 0.0572883861884 * `IL`.`Feature_7` + -0.0556174820154 * `IL`.`Feature_8` + 0.233218288226 * `IL`.`Feature_9` + 0.643528796466 * `IL`.`Feature_10` + -1.36105532336 * `IL`.`Feature_11` + -0.355739245963 * `IL`.`Feature_12` + 0.237540632535 * `IL`.`Feature_13` + -0.0590158184142 * `IL`.`Feature_14` + -0.775997276223 * `IL`.`Feature_15` + 0.117869601326 * `IL`.`Feature_16` + -0.16166071927 * `IL`.`Feature_17` + -1.52602320903 * `IL`.`Feature_18` + 0.158526211784 * `IL`.`Feature_19` + 1.2127105127 * `IL`.`Feature_20` + -0.634881002951 * `IL`.`Feature_21` + -0.409716677043 * `IL`.`Feature_22` + 0.146005049921 * `IL`.`Feature_23` + 0.389973221398 * `IL`.`Feature_24` + 0.145940790839 * `IL`.`Feature_25` + 0.272556071286 * `IL`.`Feature_26` + -0.168224130856 * `IL`.`Feature_27` + -1.1647385593 * `IL`.`Feature_28` + -1.83657955807 * `IL`.`Feature_29` + 0.696498250851 * `IL`.`Feature_30` + -1.18579856765 * `IL`.`Feature_31` + -0.368753552142 * `IL`.`Feature_32` + -0.837857485786 * `IL`.`Feature_33` + 0.456788035424 * `IL`.`Feature_34` + 0.407757227218 * `IL`.`Feature_35` + 0.312929034365 * `IL`.`Feature_36` + 0.126686898482 * `IL`.`Feature_37` + 0.26635322484 * `IL`.`Feature_38` + 0.0684727543706 * `IL`.`Feature_39` + 0.839068751723 * `IL`.`Feature_40` + 0.933827898733 * `IL`.`Feature_41` + 0.48409727484 * `IL`.`Feature_42` + -2.37352389039 * `IL`.`Feature_43` + 0.0579795798749 * `IL`.`Feature_44` + -1.28549367327 * `IL`.`Feature_45` + 0.611547687453 * `IL`.`Feature_46` + -0.560330962998 * `IL`.`Feature_47` + -1.18496857908 * `IL`.`Feature_48` + 0.121694646773 * `IL`.`Feature_49` + 0.27169147826 * `IL`.`Feature_50` + -0.0184058348853 * `IL`.`Feature_51` + 0.100657193653 * `IL`.`Feature_52` + -0.193655739499 * `IL`.`Feature_53` + 0.246904094083 * `IL`.`Feature_54` + -0.0932343628668 * `IL`.`Feature_55` + 2.48414223617 * `IL`.`Feature_56` + -0.0704920635798 * `IL`.`Feature_57` + 0.341981660815 * `IL`.`Feature_58` + -0.616337670907 * `IL`.`Feature_59` + -1.05808724007 * `IL`.`Feature_60` + 0.0337145094744 * `IL`.`Feature_61` + 2.54988264521 * `IL`.`Feature_62` + 0.253019749564 * `IL`.`Feature_63` + 0.280535040886 * `IL`.`Feature_64` + 0.00211582846941 * `IL`.`Feature_65` + 0.649839763052 * `IL`.`Feature_66` + -0.467498518449 * `IL`.`Feature_67` + -0.949990360496 * `IL`.`Feature_68` + 1.09364590869 * `IL`.`Feature_69` + -0.227028662044 * `IL`.`Feature_70` + -1.6018292532 * `IL`.`Feature_71` + -0.641539758169 * `IL`.`Feature_72` + 0.762639429344 * `IL`.`Feature_73` + 1.30745654293 * `IL`.`Feature_74` + 0.253622600634 * `IL`.`Feature_75` + -0.117665022876 * `IL`.`Feature_76` + 0.669850095923 * `IL`.`Feature_77` + -1.42388276233 * `IL`.`Feature_78` + 0.697423946207 * `IL`.`Feature_79` + 0.0468779101969 * `IL`.`Feature_80` + 0.212897739323 * `IL`.`Feature_81` + -0.264792289174 * `IL`.`Feature_82` + 0.82117110257 * `IL`.`Feature_83` + 0.641467510639 * `IL`.`Feature_84` + 0.805011066772 * `IL`.`Feature_85` + -0.285103262079 * `IL`.`Feature_86` + 0.1722500956 * `IL`.`Feature_87` + -0.236662982914 * `IL`.`Feature_88` + -0.378970715542 * `IL`.`Feature_89` + -0.431485931783 * `IL`.`Feature_90` + 1.08070450052 * `IL`.`Feature_91` + -0.426120426679 * `IL`.`Feature_92` + -0.00052827839222 * `IL`.`Feature_93` + -0.779282717285 * `IL`.`Feature_94` + -0.54319789036 * `IL`.`Feature_95` + -0.30035804292 * `IL`.`Feature_96` + -0.211201799465 * `IL`.`Feature_97` + 0.00118161944266 * `IL`.`Feature_98` + 1.20311451991 * `IL`.`Feature_99` + -0.349321160397 AS `NEUR_1_2`, 0.253745277407 * `IL`.`Feature_0` + 0.0930406127926 * `IL`.`Feature_1` + 0.255679830962 * `IL`.`Feature_2` + -0.13774553697 * `IL`.`Feature_3` + -0.66115063942 * `IL`.`Feature_4` + 0.181212854978 * `IL`.`Feature_5` + 1.41282102786 * `IL`.`Feature_6` + 0.115162715298 * `IL`.`Feature_7` + -0.126923289633 * `IL`.`Feature_8` + 0.253217735232 * `IL`.`Feature_9` + 0.0303531932455 * `IL`.`Feature_10` + -0.952887022927 * `IL`.`Feature_11` + 0.109682981599 * `IL`.`Feature_12` + -0.179346663338 * `IL`.`Feature_13` + -0.238846467601 * `IL`.`Feature_14` + 0.719311079743 * `IL`.`Feature_15` + 0.14374661052 * `IL`.`Feature_16` + -0.134379706179 * `IL`.`Feature_17` + 0.682382130339 * `IL`.`Feature_18` + -0.0764467719176 * `IL`.`Feature_19` + -0.215080240218 * `IL`.`Feature_20` + 0.128231226386 * `IL`.`Feature_21` + -0.103838350295 * `IL`.`Feature_22` + -0.00358519312541 * `IL`.`Feature_23` + 0.136062192295 * `IL`.`Feature_24` + -0.0777390324476 * `IL`.`Feature_25` + 1.04936740828 * `IL`.`Feature_26` + 0.380915452442 * `IL`.`Feature_27` + 0.0756387065633 * `IL`.`Feature_28` + 0.80920639297 * `IL`.`Feature_29` + 0.590053363695 * `IL`.`Feature_30` + 0.373083515388 * `IL`.`Feature_31` + 1.30994734765 * `IL`.`Feature_32` + 1.17026442324 * `IL`.`Feature_33` + 0.63120313899 * `IL`.`Feature_34` + -0.0119616238735 * `IL`.`Feature_35` + 0.178472792809 * `IL`.`Feature_36` + 0.243387170095 * `IL`.`Feature_37` + 0.0143122138942 * `IL`.`Feature_38` + 0.179200472862 * `IL`.`Feature_39` + 0.201192485549 * `IL`.`Feature_40` + -0.532759143048 * `IL`.`Feature_41` + -0.210718482951 * `IL`.`Feature_42` + -0.903665017599 * `IL`.`Feature_43` + -0.0296635875139 * `IL`.`Feature_44` + -0.747931877428 * `IL`.`Feature_45` + 0.232655543294 * `IL`.`Feature_46` + -1.04630280492 * `IL`.`Feature_47` + 0.308721160998 * `IL`.`Feature_48` + -0.558449546933 * `IL`.`Feature_49` + -0.00843365447568 * `IL`.`Feature_50` + -0.101751635126 * `IL`.`Feature_51` + -1.26916878672 * `IL`.`Feature_52` + 0.233282961811 * `IL`.`Feature_53` + -0.135354186911 * `IL`.`Feature_54` + 0.26886551931 * `IL`.`Feature_55` + -0.573383539642 * `IL`.`Feature_56` + 0.0358977154609 * `IL`.`Feature_57` + -0.606907389224 * `IL`.`Feature_58` + -0.130221643335 * `IL`.`Feature_59` + 0.0818782563824 * `IL`.`Feature_60` + -0.22532526943 * `IL`.`Feature_61` + 0.993655476059 * `IL`.`Feature_62` + 0.138165833572 * `IL`.`Feature_63` + -0.23406926532 * `IL`.`Feature_64` + 0.0913999123658 * `IL`.`Feature_65` + -0.329315114673 * `IL`.`Feature_66` + 0.278405388846 * `IL`.`Feature_67` + -0.207077594599 * `IL`.`Feature_68` + 1.52409369395 * `IL`.`Feature_69` + -0.21357514192 * `IL`.`Feature_70` + -0.848808275216 * `IL`.`Feature_71` + 0.525019870723 * `IL`.`Feature_72` + 0.00129098801413 * `IL`.`Feature_73` + 0.607191652621 * `IL`.`Feature_74` + 0.0730170571948 * `IL`.`Feature_75` + 0.525443392841 * `IL`.`Feature_76` + 0.222225741931 * `IL`.`Feature_77` + 0.153184306963 * `IL`.`Feature_78` + 0.441576450186 * `IL`.`Feature_79` + 1.7847986497 * `IL`.`Feature_80` + 0.224233384908 * `IL`.`Feature_81` + 0.0475693344552 * `IL`.`Feature_82` + -0.854959696837 * `IL`.`Feature_83` + -0.0666566861592 * `IL`.`Feature_84` + -0.313893076145 * `IL`.`Feature_85` + -0.435146336152 * `IL`.`Feature_86` + -0.167128134596 * `IL`.`Feature_87` + 0.0241735714439 * `IL`.`Feature_88` + -0.0199335918371 * `IL`.`Feature_89` + 1.0843204316 * `IL`.`Feature_90` + 1.36386961057 * `IL`.`Feature_91` + 0.350293233605 * `IL`.`Feature_92` + -0.255181256858 * `IL`.`Feature_93` + 0.530008518751 * `IL`.`Feature_94` + -0.341665038493 * `IL`.`Feature_95` + 0.15591626358 * `IL`.`Feature_96` + -0.0447488319052 * `IL`.`Feature_97` + 0.923589969983 * `IL`.`Feature_98` + 1.19003243595 * `IL`.`Feature_99` + -0.0176869842866 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, 1.00109746619 * `HL_1_relu`.`NEUR_1_1` + 0.449818598207 * `HL_1_relu`.`NEUR_1_2` + 0.774474237299 * `HL_1_relu`.`NEUR_1_3` + -5.40448452899 AS `NEUR_2_1`, 3.9750707633 * `HL_1_relu`.`NEUR_1_1` + -1.04900140933 * `HL_1_relu`.`NEUR_1_2` + 3.19129437306 * `HL_1_relu`.`NEUR_1_3` + -0.658471702915 AS `NEUR_2_2`, 0.076389786696 * `HL_1_relu`.`NEUR_1_1` + 0.308862547098 * `HL_1_relu`.`NEUR_1_2` + 0.0879250884039 * `HL_1_relu`.`NEUR_1_3` + -3.54834274513 AS `NEUR_2_3`, -1.32541383537 * `HL_1_relu`.`NEUR_1_1` + 4.02877043661 * `HL_1_relu`.`NEUR_1_2` + -1.31636296205 * `HL_1_relu`.`NEUR_1_3` + 7.81055000509 AS `NEUR_2_4`, -0.609006966877 * `HL_1_relu`.`NEUR_1_1` + -0.377457863931 * `HL_1_relu`.`NEUR_1_2` + -0.672626333584 * `HL_1_relu`.`NEUR_1_3` + -0.018078316227 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -3.75817688062 * `HL_2_relu`.`NEUR_2_1` + -4.01733593593 * `HL_2_relu`.`NEUR_2_2` + -1.65376594086 * `HL_2_relu`.`NEUR_2_3` + 4.34010026188 * `HL_2_relu`.`NEUR_2_4` + 0.589559997473 * `HL_2_relu`.`NEUR_2_5` + -3.92959321823 AS `NEUR_3_1`, -0.0569645432542 * `HL_2_relu`.`NEUR_2_1` + 4.14565307102 * `HL_2_relu`.`NEUR_2_2` + -1.49309907608 * `HL_2_relu`.`NEUR_2_3` + -9.19109352255 * `HL_2_relu`.`NEUR_2_4` + 0.395883534355 * `HL_2_relu`.`NEUR_2_5` + 3.0263691439 AS `NEUR_3_2`, 3.1633138035 * `HL_2_relu`.`NEUR_2_1` + 3.37555233919 * `HL_2_relu`.`NEUR_2_2` + 0.312478701086 * `HL_2_relu`.`NEUR_2_3` + 0.662061693678 * `HL_2_relu`.`NEUR_2_4` + 0.663136804088 * `HL_2_relu`.`NEUR_2_5` + -0.919832442317 AS `NEUR_3_3`, 1.26775948711 * `HL_2_relu`.`NEUR_2_1` + -3.13941863053 * `HL_2_relu`.`NEUR_2_2` + 2.04280391253 * `HL_2_relu`.`NEUR_2_3` + 3.91331561233 * `HL_2_relu`.`NEUR_2_4` + -0.485256501887 * `HL_2_relu`.`NEUR_2_5` + 0.505606296998 AS `NEUR_3_4` 
FROM `HL_2_relu`), 
`OL_softmax` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1`, `OL_BA`.`NEUR_3_2` AS `NEUR_3_2`, `OL_BA`.`NEUR_3_3` AS `NEUR_3_3`, `OL_BA`.`NEUR_3_4` AS `NEUR_3_4` 
FROM `OL_BA`), 
orig_cte AS 
(SELECT `OL_softmax`.`KEY` AS `KEY`, `OL_softmax`.`NEUR_3_1` AS `Score_0`, `OL_softmax`.`NEUR_3_2` AS `Score_1`, `OL_softmax`.`NEUR_3_3` AS `Score_2`, `OL_softmax`.`NEUR_3_4` AS `Score_3`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, CAST(NULL AS SIGNED INTEGER) AS `Decision`, NULL AS `DecisionProba` 
FROM `OL_softmax`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`Decision` AS `Decision`, orig_cte.`DecisionProba` AS `DecisionProba`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
score_soft_max_deltas AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`Decision` AS `Decision`, score_max.`DecisionProba` AS `DecisionProba`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1`, exp(score_max.`Score_2` - score_max.`max_Score`) AS `exp_delta_Score_2`, exp(score_max.`Score_3` - score_max.`max_Score`) AS `exp_delta_Score_3` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_deltas.`KEY` AS `KEY`, 0 AS class, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 1 AS class, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 2 AS class, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 3 AS class, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score` 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.`KEY` AS `KEY`, score_soft_max_deltas.`Score_0` AS `Score_0`, score_soft_max_deltas.`Score_1` AS `Score_1`, score_soft_max_deltas.`Score_2` AS `Score_2`, score_soft_max_deltas.`Score_3` AS `Score_3`, score_soft_max_deltas.`Proba_0` AS `Proba_0`, score_soft_max_deltas.`Proba_1` AS `Proba_1`, score_soft_max_deltas.`Proba_2` AS `Proba_2`, score_soft_max_deltas.`Proba_3` AS `Proba_3`, score_soft_max_deltas.`LogProba_0` AS `LogProba_0`, score_soft_max_deltas.`LogProba_1` AS `LogProba_1`, score_soft_max_deltas.`LogProba_2` AS `LogProba_2`, score_soft_max_deltas.`LogProba_3` AS `LogProba_3`, score_soft_max_deltas.`Decision` AS `Decision`, score_soft_max_deltas.`DecisionProba` AS `DecisionProba`, score_soft_max_deltas.`KEY_m` AS `KEY_m`, score_soft_max_deltas.`max_Score` AS `max_Score`, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score_3`, sum_exp_t.`KEY_sum` AS `KEY_sum`, sum_exp_t.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.`KEY` AS `KEY_sum`, sum(score_class_union_soft.`exp_delta_Score`) AS `sum_ExpDeltaScore` 
FROM score_class_union_soft GROUP BY score_class_union_soft.`KEY`) AS sum_exp_t ON score_soft_max_deltas.`KEY` = sum_exp_t.`KEY_sum`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.`KEY_u` = score_soft_max.`KEY`), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`DecisionProba` AS `DecisionProba`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score`, soft_max_comp.`KEY_softmax` AS `KEY_softmax`, soft_max_comp.`SoftProba_0` AS `SoftProba_0`, soft_max_comp.`SoftProba_1` AS `SoftProba_1`, soft_max_comp.`SoftProba_2` AS `SoftProba_2`, soft_max_comp.`SoftProba_3` AS `SoftProba_3` 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` <= union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_soft_max.`KEY` = `arg_max_t_Score`.`KEY_Score` LEFT OUTER JOIN (SELECT score_soft_max.`KEY` AS `KEY_softmax`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2`, score_soft_max.`exp_delta_Score_3` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_3` 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.`KEY_softmax` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, arg_max_cte.`SoftProba_3` AS `Proba_3`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`SoftProba_3` IS NULL OR arg_max_cte.`SoftProba_3` > 0.0) THEN ln(arg_max_cte.`SoftProba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, arg_max_cte.`arg_max_Score` AS `Decision`, CASE WHEN (arg_max_cte.`SoftProba_0` <= CASE WHEN (arg_max_cte.`SoftProba_1` <= CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END) THEN CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END ELSE arg_max_cte.`SoftProba_1` END) THEN CASE WHEN (arg_max_cte.`SoftProba_1` <= CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END) THEN CASE WHEN (arg_max_cte.`SoftProba_2` <= arg_max_cte.`SoftProba_3`) THEN arg_max_cte.`SoftProba_3` ELSE arg_max_cte.`SoftProba_2` END ELSE arg_max_cte.`SoftProba_1` END ELSE arg_max_cte.`SoftProba_0` END AS `DecisionProba` 
FROM arg_max_cte