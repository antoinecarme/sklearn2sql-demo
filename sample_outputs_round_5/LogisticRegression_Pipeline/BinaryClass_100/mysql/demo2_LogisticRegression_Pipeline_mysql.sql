-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.141916219642 ELSE `ADS`.`Feature_0` END AS impter_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN -0.117155831949 ELSE `ADS`.`Feature_1` END AS impter_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN -0.0351505971331 ELSE `ADS`.`Feature_2` END AS impter_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.189467480838 ELSE `ADS`.`Feature_3` END AS impter_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.140770802238 ELSE `ADS`.`Feature_4` END AS impter_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN -0.0832832315745 ELSE `ADS`.`Feature_5` END AS impter_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN -0.137411842873 ELSE `ADS`.`Feature_6` END AS impter_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN -0.167621051978 ELSE `ADS`.`Feature_7` END AS impter_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.021783245866 ELSE `ADS`.`Feature_8` END AS impter_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.128613256189 ELSE `ADS`.`Feature_9` END AS impter_11, CASE WHEN (`ADS`.`Feature_10` IS NULL) THEN 0.0207226644947 ELSE `ADS`.`Feature_10` END AS impter_12, CASE WHEN (`ADS`.`Feature_11` IS NULL) THEN -0.0567993257024 ELSE `ADS`.`Feature_11` END AS impter_13, CASE WHEN (`ADS`.`Feature_12` IS NULL) THEN -0.0615650931851 ELSE `ADS`.`Feature_12` END AS impter_14, CASE WHEN (`ADS`.`Feature_13` IS NULL) THEN 0.188743745316 ELSE `ADS`.`Feature_13` END AS impter_15, CASE WHEN (`ADS`.`Feature_14` IS NULL) THEN 0.0662318661489 ELSE `ADS`.`Feature_14` END AS impter_16, CASE WHEN (`ADS`.`Feature_15` IS NULL) THEN 0.107420041873 ELSE `ADS`.`Feature_15` END AS impter_17, CASE WHEN (`ADS`.`Feature_16` IS NULL) THEN -0.0198518855675 ELSE `ADS`.`Feature_16` END AS impter_18, CASE WHEN (`ADS`.`Feature_17` IS NULL) THEN 0.172791837944 ELSE `ADS`.`Feature_17` END AS impter_19, CASE WHEN (`ADS`.`Feature_18` IS NULL) THEN -0.238196800175 ELSE `ADS`.`Feature_18` END AS impter_20, CASE WHEN (`ADS`.`Feature_19` IS NULL) THEN -0.0883422161532 ELSE `ADS`.`Feature_19` END AS impter_21, CASE WHEN (`ADS`.`Feature_20` IS NULL) THEN -0.179230922076 ELSE `ADS`.`Feature_20` END AS impter_22, CASE WHEN (`ADS`.`Feature_21` IS NULL) THEN 0.340593659676 ELSE `ADS`.`Feature_21` END AS impter_23, CASE WHEN (`ADS`.`Feature_22` IS NULL) THEN 0.0514411808648 ELSE `ADS`.`Feature_22` END AS impter_24, CASE WHEN (`ADS`.`Feature_23` IS NULL) THEN -0.083324384824 ELSE `ADS`.`Feature_23` END AS impter_25, CASE WHEN (`ADS`.`Feature_24` IS NULL) THEN 0.226033812114 ELSE `ADS`.`Feature_24` END AS impter_26, CASE WHEN (`ADS`.`Feature_25` IS NULL) THEN 0.104566539586 ELSE `ADS`.`Feature_25` END AS impter_27, CASE WHEN (`ADS`.`Feature_26` IS NULL) THEN -0.0403035174448 ELSE `ADS`.`Feature_26` END AS impter_28, CASE WHEN (`ADS`.`Feature_27` IS NULL) THEN -0.0690457507019 ELSE `ADS`.`Feature_27` END AS impter_29, CASE WHEN (`ADS`.`Feature_28` IS NULL) THEN -0.0787285841812 ELSE `ADS`.`Feature_28` END AS impter_30, CASE WHEN (`ADS`.`Feature_29` IS NULL) THEN 0.368006134943 ELSE `ADS`.`Feature_29` END AS impter_31, CASE WHEN (`ADS`.`Feature_30` IS NULL) THEN -0.0432558288296 ELSE `ADS`.`Feature_30` END AS impter_32, CASE WHEN (`ADS`.`Feature_31` IS NULL) THEN 0.0624398990707 ELSE `ADS`.`Feature_31` END AS impter_33, CASE WHEN (`ADS`.`Feature_32` IS NULL) THEN 0.0379714209892 ELSE `ADS`.`Feature_32` END AS impter_34, CASE WHEN (`ADS`.`Feature_33` IS NULL) THEN 0.0806247791125 ELSE `ADS`.`Feature_33` END AS impter_35, CASE WHEN (`ADS`.`Feature_34` IS NULL) THEN 0.0504260992804 ELSE `ADS`.`Feature_34` END AS impter_36, CASE WHEN (`ADS`.`Feature_35` IS NULL) THEN -0.0273516140387 ELSE `ADS`.`Feature_35` END AS impter_37, CASE WHEN (`ADS`.`Feature_36` IS NULL) THEN -0.0470089695316 ELSE `ADS`.`Feature_36` END AS impter_38, CASE WHEN (`ADS`.`Feature_37` IS NULL) THEN -0.0617021732068 ELSE `ADS`.`Feature_37` END AS impter_39, CASE WHEN (`ADS`.`Feature_38` IS NULL) THEN -0.13919638285 ELSE `ADS`.`Feature_38` END AS impter_40, CASE WHEN (`ADS`.`Feature_39` IS NULL) THEN -0.209906972379 ELSE `ADS`.`Feature_39` END AS impter_41, CASE WHEN (`ADS`.`Feature_40` IS NULL) THEN -0.116544399916 ELSE `ADS`.`Feature_40` END AS impter_42, CASE WHEN (`ADS`.`Feature_41` IS NULL) THEN 0.0112474754051 ELSE `ADS`.`Feature_41` END AS impter_43, CASE WHEN (`ADS`.`Feature_42` IS NULL) THEN -0.0932085070888 ELSE `ADS`.`Feature_42` END AS impter_44, CASE WHEN (`ADS`.`Feature_43` IS NULL) THEN 0.0795944060584 ELSE `ADS`.`Feature_43` END AS impter_45, CASE WHEN (`ADS`.`Feature_44` IS NULL) THEN 0.222633111941 ELSE `ADS`.`Feature_44` END AS impter_46, CASE WHEN (`ADS`.`Feature_45` IS NULL) THEN 0.1149856555 ELSE `ADS`.`Feature_45` END AS impter_47, CASE WHEN (`ADS`.`Feature_46` IS NULL) THEN 0.0320979292686 ELSE `ADS`.`Feature_46` END AS impter_48, CASE WHEN (`ADS`.`Feature_47` IS NULL) THEN -0.189514310825 ELSE `ADS`.`Feature_47` END AS impter_49, CASE WHEN (`ADS`.`Feature_48` IS NULL) THEN 0.0523439423423 ELSE `ADS`.`Feature_48` END AS impter_50, CASE WHEN (`ADS`.`Feature_49` IS NULL) THEN 0.116002404656 ELSE `ADS`.`Feature_49` END AS impter_51, CASE WHEN (`ADS`.`Feature_50` IS NULL) THEN 0.03019996098 ELSE `ADS`.`Feature_50` END AS impter_52, CASE WHEN (`ADS`.`Feature_51` IS NULL) THEN -0.0418988256317 ELSE `ADS`.`Feature_51` END AS impter_53, CASE WHEN (`ADS`.`Feature_52` IS NULL) THEN -0.0677909901952 ELSE `ADS`.`Feature_52` END AS impter_54, CASE WHEN (`ADS`.`Feature_53` IS NULL) THEN -0.0826363738838 ELSE `ADS`.`Feature_53` END AS impter_55, CASE WHEN (`ADS`.`Feature_54` IS NULL) THEN 0.155518874067 ELSE `ADS`.`Feature_54` END AS impter_56, CASE WHEN (`ADS`.`Feature_55` IS NULL) THEN 0.0847831912632 ELSE `ADS`.`Feature_55` END AS impter_57, CASE WHEN (`ADS`.`Feature_56` IS NULL) THEN 0.281482505517 ELSE `ADS`.`Feature_56` END AS impter_58, CASE WHEN (`ADS`.`Feature_57` IS NULL) THEN 0.0122148381641 ELSE `ADS`.`Feature_57` END AS impter_59, CASE WHEN (`ADS`.`Feature_58` IS NULL) THEN 0.179778597914 ELSE `ADS`.`Feature_58` END AS impter_60, CASE WHEN (`ADS`.`Feature_59` IS NULL) THEN 0.169386239377 ELSE `ADS`.`Feature_59` END AS impter_61, CASE WHEN (`ADS`.`Feature_60` IS NULL) THEN 0.172758213282 ELSE `ADS`.`Feature_60` END AS impter_62, CASE WHEN (`ADS`.`Feature_61` IS NULL) THEN -0.234743675736 ELSE `ADS`.`Feature_61` END AS impter_63, CASE WHEN (`ADS`.`Feature_62` IS NULL) THEN 0.0900509626379 ELSE `ADS`.`Feature_62` END AS impter_64, CASE WHEN (`ADS`.`Feature_63` IS NULL) THEN 0.154206771169 ELSE `ADS`.`Feature_63` END AS impter_65, CASE WHEN (`ADS`.`Feature_64` IS NULL) THEN 0.183142056671 ELSE `ADS`.`Feature_64` END AS impter_66, CASE WHEN (`ADS`.`Feature_65` IS NULL) THEN -0.135843420109 ELSE `ADS`.`Feature_65` END AS impter_67, CASE WHEN (`ADS`.`Feature_66` IS NULL) THEN 0.235177928145 ELSE `ADS`.`Feature_66` END AS impter_68, CASE WHEN (`ADS`.`Feature_67` IS NULL) THEN 0.0337645092495 ELSE `ADS`.`Feature_67` END AS impter_69, CASE WHEN (`ADS`.`Feature_68` IS NULL) THEN 0.248920557188 ELSE `ADS`.`Feature_68` END AS impter_70, CASE WHEN (`ADS`.`Feature_69` IS NULL) THEN 0.216118034674 ELSE `ADS`.`Feature_69` END AS impter_71, CASE WHEN (`ADS`.`Feature_70` IS NULL) THEN -0.0137502948909 ELSE `ADS`.`Feature_70` END AS impter_72, CASE WHEN (`ADS`.`Feature_71` IS NULL) THEN 0.101552489169 ELSE `ADS`.`Feature_71` END AS impter_73, CASE WHEN (`ADS`.`Feature_72` IS NULL) THEN 0.0586904567975 ELSE `ADS`.`Feature_72` END AS impter_74, CASE WHEN (`ADS`.`Feature_73` IS NULL) THEN 0.155673655799 ELSE `ADS`.`Feature_73` END AS impter_75, CASE WHEN (`ADS`.`Feature_74` IS NULL) THEN -0.0209187954578 ELSE `ADS`.`Feature_74` END AS impter_76, CASE WHEN (`ADS`.`Feature_75` IS NULL) THEN -0.0427781888273 ELSE `ADS`.`Feature_75` END AS impter_77, CASE WHEN (`ADS`.`Feature_76` IS NULL) THEN -0.144189371707 ELSE `ADS`.`Feature_76` END AS impter_78, CASE WHEN (`ADS`.`Feature_77` IS NULL) THEN -0.047464449112 ELSE `ADS`.`Feature_77` END AS impter_79, CASE WHEN (`ADS`.`Feature_78` IS NULL) THEN 0.0745238427509 ELSE `ADS`.`Feature_78` END AS impter_80, CASE WHEN (`ADS`.`Feature_79` IS NULL) THEN -0.22916911715 ELSE `ADS`.`Feature_79` END AS impter_81, CASE WHEN (`ADS`.`Feature_80` IS NULL) THEN -0.206724895192 ELSE `ADS`.`Feature_80` END AS impter_82, CASE WHEN (`ADS`.`Feature_81` IS NULL) THEN 0.0135202232668 ELSE `ADS`.`Feature_81` END AS impter_83, CASE WHEN (`ADS`.`Feature_82` IS NULL) THEN -0.07820361419 ELSE `ADS`.`Feature_82` END AS impter_84, CASE WHEN (`ADS`.`Feature_83` IS NULL) THEN -0.00451277510546 ELSE `ADS`.`Feature_83` END AS impter_85, CASE WHEN (`ADS`.`Feature_84` IS NULL) THEN -0.0378261577644 ELSE `ADS`.`Feature_84` END AS impter_86, CASE WHEN (`ADS`.`Feature_85` IS NULL) THEN 0.0185043506474 ELSE `ADS`.`Feature_85` END AS impter_87, CASE WHEN (`ADS`.`Feature_86` IS NULL) THEN 0.198180374794 ELSE `ADS`.`Feature_86` END AS impter_88, CASE WHEN (`ADS`.`Feature_87` IS NULL) THEN 0.0284086252081 ELSE `ADS`.`Feature_87` END AS impter_89, CASE WHEN (`ADS`.`Feature_88` IS NULL) THEN -0.0716908876708 ELSE `ADS`.`Feature_88` END AS impter_90, CASE WHEN (`ADS`.`Feature_89` IS NULL) THEN -0.154190206263 ELSE `ADS`.`Feature_89` END AS impter_91, CASE WHEN (`ADS`.`Feature_90` IS NULL) THEN -0.0393289708503 ELSE `ADS`.`Feature_90` END AS impter_92, CASE WHEN (`ADS`.`Feature_91` IS NULL) THEN -0.0690342085398 ELSE `ADS`.`Feature_91` END AS impter_93, CASE WHEN (`ADS`.`Feature_92` IS NULL) THEN 0.141432937221 ELSE `ADS`.`Feature_92` END AS impter_94, CASE WHEN (`ADS`.`Feature_93` IS NULL) THEN -0.0920126306572 ELSE `ADS`.`Feature_93` END AS impter_95, CASE WHEN (`ADS`.`Feature_94` IS NULL) THEN 0.0807506152143 ELSE `ADS`.`Feature_94` END AS impter_96, CASE WHEN (`ADS`.`Feature_95` IS NULL) THEN -0.0842096136118 ELSE `ADS`.`Feature_95` END AS impter_97, CASE WHEN (`ADS`.`Feature_96` IS NULL) THEN -0.107939679291 ELSE `ADS`.`Feature_96` END AS impter_98, CASE WHEN (`ADS`.`Feature_97` IS NULL) THEN 0.271466936199 ELSE `ADS`.`Feature_97` END AS impter_99, CASE WHEN (`ADS`.`Feature_98` IS NULL) THEN -0.0977395793886 ELSE `ADS`.`Feature_98` END AS impter_100, CASE WHEN (`ADS`.`Feature_99` IS NULL) THEN 0.18663808836 ELSE `ADS`.`Feature_99` END AS impter_101 
FROM `BinaryClass_100` AS `ADS`), 
`ADS_sca_2_OUT` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, (CAST(`ADS_imp_1_OUT`.impter_2 AS DOUBLE) - 0.141916219642) / 0.924968340587 AS scaler_2, (CAST(`ADS_imp_1_OUT`.impter_3 AS DOUBLE) - -0.117155831949) / 0.857072268632 AS scaler_3, (CAST(`ADS_imp_1_OUT`.impter_4 AS DOUBLE) - -0.0351505971331) / 1.00984206679 AS scaler_4, (CAST(`ADS_imp_1_OUT`.impter_5 AS DOUBLE) - 0.189467480838) / 1.00852242488 AS scaler_5, (CAST(`ADS_imp_1_OUT`.impter_6 AS DOUBLE) - 0.140770802238) / 1.14242800992 AS scaler_6, (CAST(`ADS_imp_1_OUT`.impter_7 AS DOUBLE) - -0.0832832315745) / 0.992509125235 AS scaler_7, (CAST(`ADS_imp_1_OUT`.impter_8 AS DOUBLE) - -0.137411842873) / 1.03490609869 AS scaler_8, (CAST(`ADS_imp_1_OUT`.impter_9 AS DOUBLE) - -0.167621051978) / 0.956373090563 AS scaler_9, (CAST(`ADS_imp_1_OUT`.impter_10 AS DOUBLE) - 0.021783245866) / 0.974532593595 AS scaler_10, (CAST(`ADS_imp_1_OUT`.impter_11 AS DOUBLE) - 0.128613256189) / 1.01823729917 AS scaler_11, (CAST(`ADS_imp_1_OUT`.impter_12 AS DOUBLE) - 0.0207226644947) / 0.869357464064 AS scaler_12, (CAST(`ADS_imp_1_OUT`.impter_13 AS DOUBLE) - -0.0567993257024) / 0.562334340334 AS scaler_13, (CAST(`ADS_imp_1_OUT`.impter_14 AS DOUBLE) - -0.0615650931851) / 1.01270884478 AS scaler_14, (CAST(`ADS_imp_1_OUT`.impter_15 AS DOUBLE) - 0.188743745316) / 0.966430829225 AS scaler_15, (CAST(`ADS_imp_1_OUT`.impter_16 AS DOUBLE) - 0.0662318661489) / 0.922829456768 AS scaler_16, (CAST(`ADS_imp_1_OUT`.impter_17 AS DOUBLE) - 0.107420041873) / 1.02162862941 AS scaler_17, (CAST(`ADS_imp_1_OUT`.impter_18 AS DOUBLE) - -0.0198518855675) / 0.993658480941 AS scaler_18, (CAST(`ADS_imp_1_OUT`.impter_19 AS DOUBLE) - 0.172791837944) / 1.07068114001 AS scaler_19, (CAST(`ADS_imp_1_OUT`.impter_20 AS DOUBLE) - -0.238196800175) / 0.894724266776 AS scaler_20, (CAST(`ADS_imp_1_OUT`.impter_21 AS DOUBLE) - -0.0883422161532) / 1.03093595721 AS scaler_21, (CAST(`ADS_imp_1_OUT`.impter_22 AS DOUBLE) - -0.179230922076) / 0.963494624425 AS scaler_22, (CAST(`ADS_imp_1_OUT`.impter_23 AS DOUBLE) - 0.340593659676) / 0.921243461514 AS scaler_23, (CAST(`ADS_imp_1_OUT`.impter_24 AS DOUBLE) - 0.0514411808648) / 0.867505876926 AS scaler_24, (CAST(`ADS_imp_1_OUT`.impter_25 AS DOUBLE) - -0.083324384824) / 0.95801564056 AS scaler_25, (CAST(`ADS_imp_1_OUT`.impter_26 AS DOUBLE) - 0.226033812114) / 1.01054292314 AS scaler_26, (CAST(`ADS_imp_1_OUT`.impter_27 AS DOUBLE) - 0.104566539586) / 1.06707606743 AS scaler_27, (CAST(`ADS_imp_1_OUT`.impter_28 AS DOUBLE) - -0.0403035174448) / 0.849243344131 AS scaler_28, (CAST(`ADS_imp_1_OUT`.impter_29 AS DOUBLE) - -0.0690457507019) / 1.07301270724 AS scaler_29, (CAST(`ADS_imp_1_OUT`.impter_30 AS DOUBLE) - -0.0787285841812) / 1.01816384085 AS scaler_30, (CAST(`ADS_imp_1_OUT`.impter_31 AS DOUBLE) - 0.368006134943) / 0.951432122497 AS scaler_31, (CAST(`ADS_imp_1_OUT`.impter_32 AS DOUBLE) - -0.0432558288296) / 0.896773549994 AS scaler_32, (CAST(`ADS_imp_1_OUT`.impter_33 AS DOUBLE) - 0.0624398990707) / 0.947791795135 AS scaler_33, (CAST(`ADS_imp_1_OUT`.impter_34 AS DOUBLE) - 0.0379714209892) / 0.952951787884 AS scaler_34, (CAST(`ADS_imp_1_OUT`.impter_35 AS DOUBLE) - 0.0806247791125) / 0.979935011335 AS scaler_35, (CAST(`ADS_imp_1_OUT`.impter_36 AS DOUBLE) - 0.0504260992804) / 1.05273969522 AS scaler_36, (CAST(`ADS_imp_1_OUT`.impter_37 AS DOUBLE) - -0.0273516140387) / 1.00409522345 AS scaler_37, (CAST(`ADS_imp_1_OUT`.impter_38 AS DOUBLE) - -0.0470089695316) / 0.996801814426 AS scaler_38, (CAST(`ADS_imp_1_OUT`.impter_39 AS DOUBLE) - -0.0617021732068) / 0.968329784986 AS scaler_39, (CAST(`ADS_imp_1_OUT`.impter_40 AS DOUBLE) - -0.13919638285) / 1.10724353419 AS scaler_40, (CAST(`ADS_imp_1_OUT`.impter_41 AS DOUBLE) - -0.209906972379) / 0.974917875506 AS scaler_41, (CAST(`ADS_imp_1_OUT`.impter_42 AS DOUBLE) - -0.116544399916) / 0.954271330005 AS scaler_42, (CAST(`ADS_imp_1_OUT`.impter_43 AS DOUBLE) - 0.0112474754051) / 1.0970765912 AS scaler_43, (CAST(`ADS_imp_1_OUT`.impter_44 AS DOUBLE) - -0.0932085070888) / 0.928149032625 AS scaler_44, (CAST(`ADS_imp_1_OUT`.impter_45 AS DOUBLE) - 0.0795944060584) / 0.931793518368 AS scaler_45, (CAST(`ADS_imp_1_OUT`.impter_46 AS DOUBLE) - 0.222633111941) / 0.969400938166 AS scaler_46, (CAST(`ADS_imp_1_OUT`.impter_47 AS DOUBLE) - 0.1149856555) / 0.956836426387 AS scaler_47, (CAST(`ADS_imp_1_OUT`.impter_48 AS DOUBLE) - 0.0320979292686) / 1.05259967091 AS scaler_48, (CAST(`ADS_imp_1_OUT`.impter_49 AS DOUBLE) - -0.189514310825) / 1.23435116911 AS scaler_49, (CAST(`ADS_imp_1_OUT`.impter_50 AS DOUBLE) - 0.0523439423423) / 0.958952792349 AS scaler_50, (CAST(`ADS_imp_1_OUT`.impter_51 AS DOUBLE) - 0.116002404656) / 0.902397144121 AS scaler_51, (CAST(`ADS_imp_1_OUT`.impter_52 AS DOUBLE) - 0.03019996098) / 1.11338251179 AS scaler_52, (CAST(`ADS_imp_1_OUT`.impter_53 AS DOUBLE) - -0.0418988256317) / 1.14992372812 AS scaler_53, (CAST(`ADS_imp_1_OUT`.impter_54 AS DOUBLE) - -0.0677909901952) / 0.975816037935 AS scaler_54, (CAST(`ADS_imp_1_OUT`.impter_55 AS DOUBLE) - -0.0826363738838) / 0.752821916757 AS scaler_55, (CAST(`ADS_imp_1_OUT`.impter_56 AS DOUBLE) - 0.155518874067) / 1.03256809935 AS scaler_56, (CAST(`ADS_imp_1_OUT`.impter_57 AS DOUBLE) - 0.0847831912632) / 0.951590480952 AS scaler_57, (CAST(`ADS_imp_1_OUT`.impter_58 AS DOUBLE) - 0.281482505517) / 1.01964288991 AS scaler_58, (CAST(`ADS_imp_1_OUT`.impter_59 AS DOUBLE) - 0.0122148381641) / 0.939311256544 AS scaler_59, (CAST(`ADS_imp_1_OUT`.impter_60 AS DOUBLE) - 0.179778597914) / 0.855091192054 AS scaler_60, (CAST(`ADS_imp_1_OUT`.impter_61 AS DOUBLE) - 0.169386239377) / 0.951323368295 AS scaler_61, (CAST(`ADS_imp_1_OUT`.impter_62 AS DOUBLE) - 0.172758213282) / 0.82416981964 AS scaler_62, (CAST(`ADS_imp_1_OUT`.impter_63 AS DOUBLE) - -0.234743675736) / 1.03948019819 AS scaler_63, (CAST(`ADS_imp_1_OUT`.impter_64 AS DOUBLE) - 0.0900509626379) / 1.07229894831 AS scaler_64, (CAST(`ADS_imp_1_OUT`.impter_65 AS DOUBLE) - 0.154206771169) / 1.05553637179 AS scaler_65, (CAST(`ADS_imp_1_OUT`.impter_66 AS DOUBLE) - 0.183142056671) / 1.0494150894 AS scaler_66, (CAST(`ADS_imp_1_OUT`.impter_67 AS DOUBLE) - -0.135843420109) / 0.859297760132 AS scaler_67, (CAST(`ADS_imp_1_OUT`.impter_68 AS DOUBLE) - 0.235177928145) / 0.979714471561 AS scaler_68, (CAST(`ADS_imp_1_OUT`.impter_69 AS DOUBLE) - 0.0337645092495) / 1.01724808733 AS scaler_69, (CAST(`ADS_imp_1_OUT`.impter_70 AS DOUBLE) - 0.248920557188) / 0.848670379929 AS scaler_70, (CAST(`ADS_imp_1_OUT`.impter_71 AS DOUBLE) - 0.216118034674) / 0.972529894061 AS scaler_71, (CAST(`ADS_imp_1_OUT`.impter_72 AS DOUBLE) - -0.0137502948909) / 0.91282617218 AS scaler_72, (CAST(`ADS_imp_1_OUT`.impter_73 AS DOUBLE) - 0.101552489169) / 1.38380397283 AS scaler_73, (CAST(`ADS_imp_1_OUT`.impter_74 AS DOUBLE) - 0.0586904567975) / 0.885391108065 AS scaler_74, (CAST(`ADS_imp_1_OUT`.impter_75 AS DOUBLE) - 0.155673655799) / 0.93212437154 AS scaler_75, (CAST(`ADS_imp_1_OUT`.impter_76 AS DOUBLE) - -0.0209187954578) / 1.01792045405 AS scaler_76, (CAST(`ADS_imp_1_OUT`.impter_77 AS DOUBLE) - -0.0427781888273) / 1.17050132757 AS scaler_77, (CAST(`ADS_imp_1_OUT`.impter_78 AS DOUBLE) - -0.144189371707) / 0.886263381596 AS scaler_78, (CAST(`ADS_imp_1_OUT`.impter_79 AS DOUBLE) - -0.047464449112) / 0.995121169697 AS scaler_79, (CAST(`ADS_imp_1_OUT`.impter_80 AS DOUBLE) - 0.0745238427509) / 1.09180638774 AS scaler_80, (CAST(`ADS_imp_1_OUT`.impter_81 AS DOUBLE) - -0.22916911715) / 1.01502413119 AS scaler_81, (CAST(`ADS_imp_1_OUT`.impter_82 AS DOUBLE) - -0.206724895192) / 0.993557085724 AS scaler_82, (CAST(`ADS_imp_1_OUT`.impter_83 AS DOUBLE) - 0.0135202232668) / 1.03130514321 AS scaler_83, (CAST(`ADS_imp_1_OUT`.impter_84 AS DOUBLE) - -0.07820361419) / 1.00529645018 AS scaler_84, (CAST(`ADS_imp_1_OUT`.impter_85 AS DOUBLE) - -0.00451277510546) / 1.06488349558 AS scaler_85, (CAST(`ADS_imp_1_OUT`.impter_86 AS DOUBLE) - -0.0378261577644) / 0.880443270905 AS scaler_86, (CAST(`ADS_imp_1_OUT`.impter_87 AS DOUBLE) - 0.0185043506474) / 1.06193058168 AS scaler_87, (CAST(`ADS_imp_1_OUT`.impter_88 AS DOUBLE) - 0.198180374794) / 0.980333460956 AS scaler_88, (CAST(`ADS_imp_1_OUT`.impter_89 AS DOUBLE) - 0.0284086252081) / 1.07757939334 AS scaler_89, (CAST(`ADS_imp_1_OUT`.impter_90 AS DOUBLE) - -0.0716908876708) / 0.994677391853 AS scaler_90, (CAST(`ADS_imp_1_OUT`.impter_91 AS DOUBLE) - -0.154190206263) / 0.919587826994 AS scaler_91, (CAST(`ADS_imp_1_OUT`.impter_92 AS DOUBLE) - -0.0393289708503) / 1.03232974708 AS scaler_92, (CAST(`ADS_imp_1_OUT`.impter_93 AS DOUBLE) - -0.0690342085398) / 1.05689207447 AS scaler_93, (CAST(`ADS_imp_1_OUT`.impter_94 AS DOUBLE) - 0.141432937221) / 1.18607670412 AS scaler_94, (CAST(`ADS_imp_1_OUT`.impter_95 AS DOUBLE) - -0.0920126306572) / 0.976805249346 AS scaler_95, (CAST(`ADS_imp_1_OUT`.impter_96 AS DOUBLE) - 0.0807506152143) / 0.958546786038 AS scaler_96, (CAST(`ADS_imp_1_OUT`.impter_97 AS DOUBLE) - -0.0842096136118) / 1.35499568871 AS scaler_97, (CAST(`ADS_imp_1_OUT`.impter_98 AS DOUBLE) - -0.107939679291) / 1.08724151061 AS scaler_98, (CAST(`ADS_imp_1_OUT`.impter_99 AS DOUBLE) - 0.271466936199) / 0.864563300034 AS scaler_99, (CAST(`ADS_imp_1_OUT`.impter_100 AS DOUBLE) - -0.0977395793886) / 0.906834845194 AS scaler_100, (CAST(`ADS_imp_1_OUT`.impter_101 AS DOUBLE) - 0.18663808836) / 0.87805234387 AS scaler_101 
FROM `ADS_imp_1_OUT`), 
linear_model_cte AS 
(SELECT `ADS_sca_2_OUT`.`KEY` AS `KEY`, -0.16161969187382116 * `ADS_sca_2_OUT`.scaler_2 + -0.08319650272927982 * `ADS_sca_2_OUT`.scaler_3 + -0.29290200963829854 * `ADS_sca_2_OUT`.scaler_4 + -0.361497798767703 * `ADS_sca_2_OUT`.scaler_5 + 0.038890528605405476 * `ADS_sca_2_OUT`.scaler_6 + 0.14503417158338017 * `ADS_sca_2_OUT`.scaler_7 + -0.2443362611570655 * `ADS_sca_2_OUT`.scaler_8 + 0.0023068431418962884 * `ADS_sca_2_OUT`.scaler_9 + -0.2613560079882601 * `ADS_sca_2_OUT`.scaler_10 + -0.031040668814391683 * `ADS_sca_2_OUT`.scaler_11 + -0.06511295671374123 * `ADS_sca_2_OUT`.scaler_12 + 0.6665846509018286 * `ADS_sca_2_OUT`.scaler_13 + 0.33198838752185517 * `ADS_sca_2_OUT`.scaler_14 + 0.04308301119446291 * `ADS_sca_2_OUT`.scaler_15 + -0.07810975361600844 * `ADS_sca_2_OUT`.scaler_16 + 0.5818804070090616 * `ADS_sca_2_OUT`.scaler_17 + -0.15819557276468363 * `ADS_sca_2_OUT`.scaler_18 + -0.07213605390043816 * `ADS_sca_2_OUT`.scaler_19 + 0.205095631789511 * `ADS_sca_2_OUT`.scaler_20 + 0.039916870882693745 * `ADS_sca_2_OUT`.scaler_21 + -0.35735222688475465 * `ADS_sca_2_OUT`.scaler_22 + -0.07553787031532216 * `ADS_sca_2_OUT`.scaler_23 + 0.21309916515399238 * `ADS_sca_2_OUT`.scaler_24 + -0.38940757301393 * `ADS_sca_2_OUT`.scaler_25 + 0.3231379542820372 * `ADS_sca_2_OUT`.scaler_26 + -0.0682035422598726 * `ADS_sca_2_OUT`.scaler_27 + -0.024119410944698445 * `ADS_sca_2_OUT`.scaler_28 + 0.14648364508861236 * `ADS_sca_2_OUT`.scaler_29 + 0.5229532747778551 * `ADS_sca_2_OUT`.scaler_30 + 0.009353264751164698 * `ADS_sca_2_OUT`.scaler_31 + 0.08986423193389341 * `ADS_sca_2_OUT`.scaler_32 + 0.05400636815483649 * `ADS_sca_2_OUT`.scaler_33 + 0.154273090141057 * `ADS_sca_2_OUT`.scaler_34 + 0.05860599379453606 * `ADS_sca_2_OUT`.scaler_35 + -0.029354466470325562 * `ADS_sca_2_OUT`.scaler_36 + 0.14173540439562216 * `ADS_sca_2_OUT`.scaler_37 + -0.07114768938279038 * `ADS_sca_2_OUT`.scaler_38 + 0.026390898798544154 * `ADS_sca_2_OUT`.scaler_39 + 0.04657359361475413 * `ADS_sca_2_OUT`.scaler_40 + -0.17714930562454934 * `ADS_sca_2_OUT`.scaler_41 + -0.15059265883320494 * `ADS_sca_2_OUT`.scaler_42 + -0.0385256938749842 * `ADS_sca_2_OUT`.scaler_43 + 0.11817474818567046 * `ADS_sca_2_OUT`.scaler_44 + 0.09661206693518919 * `ADS_sca_2_OUT`.scaler_45 + -0.2675401238546042 * `ADS_sca_2_OUT`.scaler_46 + -0.4111797471372718 * `ADS_sca_2_OUT`.scaler_47 + -0.024432810402081607 * `ADS_sca_2_OUT`.scaler_48 + -0.30178584553858867 * `ADS_sca_2_OUT`.scaler_49 + -0.01827858352232219 * `ADS_sca_2_OUT`.scaler_50 + 0.23008383803823929 * `ADS_sca_2_OUT`.scaler_51 + -1.0152429638991012 * `ADS_sca_2_OUT`.scaler_52 + -0.043149175650301894 * `ADS_sca_2_OUT`.scaler_53 + -0.3883682601608537 * `ADS_sca_2_OUT`.scaler_54 + -0.04014934439900015 * `ADS_sca_2_OUT`.scaler_55 + 0.2019096241901136 * `ADS_sca_2_OUT`.scaler_56 + -0.12422036143103106 * `ADS_sca_2_OUT`.scaler_57 + -0.1661123143158752 * `ADS_sca_2_OUT`.scaler_58 + -0.12512525945632025 * `ADS_sca_2_OUT`.scaler_59 + -0.15669904618817065 * `ADS_sca_2_OUT`.scaler_60 + -0.04062782449035155 * `ADS_sca_2_OUT`.scaler_61 + 0.03662641781598148 * `ADS_sca_2_OUT`.scaler_62 + 0.34539500595082995 * `ADS_sca_2_OUT`.scaler_63 + -0.33537973090964485 * `ADS_sca_2_OUT`.scaler_64 + 0.3660634264282293 * `ADS_sca_2_OUT`.scaler_65 + -0.10831004366858488 * `ADS_sca_2_OUT`.scaler_66 + 0.1848284622664579 * `ADS_sca_2_OUT`.scaler_67 + -0.26645665392894363 * `ADS_sca_2_OUT`.scaler_68 + 0.022282085562804 * `ADS_sca_2_OUT`.scaler_69 + 0.12862989130188895 * `ADS_sca_2_OUT`.scaler_70 + 0.18754727881058275 * `ADS_sca_2_OUT`.scaler_71 + 0.039358801047415605 * `ADS_sca_2_OUT`.scaler_72 + 0.003405788786115507 * `ADS_sca_2_OUT`.scaler_73 + -0.07049567832095123 * `ADS_sca_2_OUT`.scaler_74 + -0.044758386169247405 * `ADS_sca_2_OUT`.scaler_75 + -0.17105231755086311 * `ADS_sca_2_OUT`.scaler_76 + -0.10432640621337695 * `ADS_sca_2_OUT`.scaler_77 + -0.3004369856849521 * `ADS_sca_2_OUT`.scaler_78 + -0.07101374018187546 * `ADS_sca_2_OUT`.scaler_79 + -0.10838110793762624 * `ADS_sca_2_OUT`.scaler_80 + -0.04718507523401658 * `ADS_sca_2_OUT`.scaler_81 + -0.047801479055429676 * `ADS_sca_2_OUT`.scaler_82 + -0.023987465899193035 * `ADS_sca_2_OUT`.scaler_83 + 0.041582341097328876 * `ADS_sca_2_OUT`.scaler_84 + 0.1990287237401569 * `ADS_sca_2_OUT`.scaler_85 + -0.17460219154054593 * `ADS_sca_2_OUT`.scaler_86 + 0.17106223616658797 * `ADS_sca_2_OUT`.scaler_87 + -0.5580826443124471 * `ADS_sca_2_OUT`.scaler_88 + 0.029679476242206557 * `ADS_sca_2_OUT`.scaler_89 + 0.19731610169309927 * `ADS_sca_2_OUT`.scaler_90 + 0.19947936654951373 * `ADS_sca_2_OUT`.scaler_91 + -0.15304826656245163 * `ADS_sca_2_OUT`.scaler_92 + -0.14005979163558666 * `ADS_sca_2_OUT`.scaler_93 + -0.26778171609997165 * `ADS_sca_2_OUT`.scaler_94 + 0.2590883424932863 * `ADS_sca_2_OUT`.scaler_95 + -0.5026931348660195 * `ADS_sca_2_OUT`.scaler_96 + 1.1482296945924444 * `ADS_sca_2_OUT`.scaler_97 + -0.008040955679680746 * `ADS_sca_2_OUT`.scaler_98 + 0.15255380276615366 * `ADS_sca_2_OUT`.scaler_99 + -0.014267346906501478 * `ADS_sca_2_OUT`.scaler_100 + -0.47818186094886556 * `ADS_sca_2_OUT`.scaler_101 + 0.00643016531146 AS linear_combination 
FROM `ADS_sca_2_OUT`)
 SELECT linear_model_cte.`KEY` AS `KEY`, -linear_model_cte.linear_combination AS `Score_0`, linear_model_cte.linear_combination AS `Score_1`, 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) AS `Proba_0`, 1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) AS `Proba_1`, CASE WHEN (1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) IS NULL OR 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) > 0.0) THEN ln(1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination)))) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(-(-linear_model_cte.linear_combination)))) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS `Decision` 
FROM linear_model_cte