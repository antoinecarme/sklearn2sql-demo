-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `IL` AS 
(SELECT `ADS`.`KEY` AS `KEY`, `ADS`.`Feature_0` AS `Feature_0`, `ADS`.`Feature_1` AS `Feature_1`, `ADS`.`Feature_2` AS `Feature_2`, `ADS`.`Feature_3` AS `Feature_3`, `ADS`.`Feature_4` AS `Feature_4`, `ADS`.`Feature_5` AS `Feature_5`, `ADS`.`Feature_6` AS `Feature_6`, `ADS`.`Feature_7` AS `Feature_7`, `ADS`.`Feature_8` AS `Feature_8`, `ADS`.`Feature_9` AS `Feature_9`, `ADS`.`Feature_10` AS `Feature_10`, `ADS`.`Feature_11` AS `Feature_11`, `ADS`.`Feature_12` AS `Feature_12`, `ADS`.`Feature_13` AS `Feature_13`, `ADS`.`Feature_14` AS `Feature_14`, `ADS`.`Feature_15` AS `Feature_15`, `ADS`.`Feature_16` AS `Feature_16`, `ADS`.`Feature_17` AS `Feature_17`, `ADS`.`Feature_18` AS `Feature_18`, `ADS`.`Feature_19` AS `Feature_19`, `ADS`.`Feature_20` AS `Feature_20`, `ADS`.`Feature_21` AS `Feature_21`, `ADS`.`Feature_22` AS `Feature_22`, `ADS`.`Feature_23` AS `Feature_23`, `ADS`.`Feature_24` AS `Feature_24`, `ADS`.`Feature_25` AS `Feature_25`, `ADS`.`Feature_26` AS `Feature_26`, `ADS`.`Feature_27` AS `Feature_27`, `ADS`.`Feature_28` AS `Feature_28`, `ADS`.`Feature_29` AS `Feature_29`, `ADS`.`Feature_30` AS `Feature_30`, `ADS`.`Feature_31` AS `Feature_31`, `ADS`.`Feature_32` AS `Feature_32`, `ADS`.`Feature_33` AS `Feature_33`, `ADS`.`Feature_34` AS `Feature_34`, `ADS`.`Feature_35` AS `Feature_35`, `ADS`.`Feature_36` AS `Feature_36`, `ADS`.`Feature_37` AS `Feature_37`, `ADS`.`Feature_38` AS `Feature_38`, `ADS`.`Feature_39` AS `Feature_39`, `ADS`.`Feature_40` AS `Feature_40`, `ADS`.`Feature_41` AS `Feature_41`, `ADS`.`Feature_42` AS `Feature_42`, `ADS`.`Feature_43` AS `Feature_43`, `ADS`.`Feature_44` AS `Feature_44`, `ADS`.`Feature_45` AS `Feature_45`, `ADS`.`Feature_46` AS `Feature_46`, `ADS`.`Feature_47` AS `Feature_47`, `ADS`.`Feature_48` AS `Feature_48`, `ADS`.`Feature_49` AS `Feature_49`, `ADS`.`Feature_50` AS `Feature_50`, `ADS`.`Feature_51` AS `Feature_51`, `ADS`.`Feature_52` AS `Feature_52`, `ADS`.`Feature_53` AS `Feature_53`, `ADS`.`Feature_54` AS `Feature_54`, `ADS`.`Feature_55` AS `Feature_55`, `ADS`.`Feature_56` AS `Feature_56`, `ADS`.`Feature_57` AS `Feature_57`, `ADS`.`Feature_58` AS `Feature_58`, `ADS`.`Feature_59` AS `Feature_59`, `ADS`.`Feature_60` AS `Feature_60`, `ADS`.`Feature_61` AS `Feature_61`, `ADS`.`Feature_62` AS `Feature_62`, `ADS`.`Feature_63` AS `Feature_63` 
FROM digits AS `ADS`), 
`HL_BA_1` AS 
(SELECT `IL`.`KEY` AS `KEY`, -0.0434989109338 * `IL`.`Feature_0` + 0.281561804802 * `IL`.`Feature_1` + 3.41896985109 * `IL`.`Feature_2` + 2.07357303193 * `IL`.`Feature_3` + -0.101219133299 * `IL`.`Feature_4` + -1.44546276223 * `IL`.`Feature_5` + -3.19305297711 * `IL`.`Feature_6` + -0.393860627431 * `IL`.`Feature_7` + -0.0204643461724 * `IL`.`Feature_8` + 1.83928340321 * `IL`.`Feature_9` + 0.526343406672 * `IL`.`Feature_10` + -2.32390396249 * `IL`.`Feature_11` + 1.43479849902 * `IL`.`Feature_12` + 2.85353819012 * `IL`.`Feature_13` + -5.63534148603 * `IL`.`Feature_14` + -0.321691603162 * `IL`.`Feature_15` + -0.0742663617351 * `IL`.`Feature_16` + 1.22608660402 * `IL`.`Feature_17` + -4.67213417603 * `IL`.`Feature_18` + -4.13281457436 * `IL`.`Feature_19` + 2.8918825137 * `IL`.`Feature_20` + 2.42571994766 * `IL`.`Feature_21` + -1.27534831046 * `IL`.`Feature_22` + -0.395704388168 * `IL`.`Feature_23` + 0.174167229318 * `IL`.`Feature_24` + 1.08218371279 * `IL`.`Feature_25` + -5.40696832803 * `IL`.`Feature_26` + -7.04501344798 * `IL`.`Feature_27` + -2.06540061129 * `IL`.`Feature_28` + -1.73831667361 * `IL`.`Feature_29` + -2.56203557389 * `IL`.`Feature_30` + 0.192465632211 * `IL`.`Feature_31` + -0.291009247795 * `IL`.`Feature_32` + 1.00286068099 * `IL`.`Feature_33` + -3.42485239052 * `IL`.`Feature_34` + -4.62149179336 * `IL`.`Feature_35` + -0.50862562823 * `IL`.`Feature_36` + -1.73310670788 * `IL`.`Feature_37` + -4.52753429619 * `IL`.`Feature_38` + 0.113526412311 * `IL`.`Feature_39` + 0.0262637942632 * `IL`.`Feature_40` + 1.92548961377 * `IL`.`Feature_41` + 4.01971836528 * `IL`.`Feature_42` + 1.39788709981 * `IL`.`Feature_43` + -2.73409556051 * `IL`.`Feature_44` + -1.49541718887 * `IL`.`Feature_45` + -3.7659321171 * `IL`.`Feature_46` + 0.164926743006 * `IL`.`Feature_47` + 0.0134241942458 * `IL`.`Feature_48` + 0.0732498694773 * `IL`.`Feature_49` + 2.79959731597 * `IL`.`Feature_50` + 2.67090930991 * `IL`.`Feature_51` + 5.45269157033 * `IL`.`Feature_52` + 5.09150415471 * `IL`.`Feature_53` + 1.16815071132 * `IL`.`Feature_54` + 0.319974485216 * `IL`.`Feature_55` + -0.136430087567 * `IL`.`Feature_56` + 0.435011915216 * `IL`.`Feature_57` + 4.18068794803 * `IL`.`Feature_58` + 0.0375840698423 * `IL`.`Feature_59` + 2.50684272328 * `IL`.`Feature_60` + 4.57881042141 * `IL`.`Feature_61` + 4.80607075034 * `IL`.`Feature_62` + 1.35202681149 * `IL`.`Feature_63` + -0.26360510944 AS `NEUR_1_1`, 0.0579579255636 * `IL`.`Feature_0` + 0.00135821445626 * `IL`.`Feature_1` + -0.212974676675 * `IL`.`Feature_2` + 0.128363121437 * `IL`.`Feature_3` + 0.0712505574902 * `IL`.`Feature_4` + 0.222666961013 * `IL`.`Feature_5` + -0.136424657448 * `IL`.`Feature_6` + -0.285854207871 * `IL`.`Feature_7` + 0.252205327229 * `IL`.`Feature_8` + -0.0491810201616 * `IL`.`Feature_9` + -0.212501972563 * `IL`.`Feature_10` + -0.0987344782185 * `IL`.`Feature_11` + -0.268801863809 * `IL`.`Feature_12` + 0.145819782215 * `IL`.`Feature_13` + 0.0387994315088 * `IL`.`Feature_14` + -0.141303088475 * `IL`.`Feature_15` + 0.0866254338989 * `IL`.`Feature_16` + -0.198882344758 * `IL`.`Feature_17` + 0.019362875702 * `IL`.`Feature_18` + 0.138124852554 * `IL`.`Feature_19` + -0.335279989472 * `IL`.`Feature_20` + 0.0125267076406 * `IL`.`Feature_21` + -0.203596532607 * `IL`.`Feature_22` + -0.00136677869822 * `IL`.`Feature_23` + 0.136579307389 * `IL`.`Feature_24` + -0.058221592436 * `IL`.`Feature_25` + 0.0251375750838 * `IL`.`Feature_26` + 0.13610425126 * `IL`.`Feature_27` + -0.0519259511723 * `IL`.`Feature_28` + -0.261556575654 * `IL`.`Feature_29` + -0.0308913801767 * `IL`.`Feature_30` + -0.211371070847 * `IL`.`Feature_31` + -0.240083127936 * `IL`.`Feature_32` + 0.0812984219794 * `IL`.`Feature_33` + -0.216030772224 * `IL`.`Feature_34` + 0.0648123075082 * `IL`.`Feature_35` + 0.231164398766 * `IL`.`Feature_36` + -0.283255411886 * `IL`.`Feature_37` + 0.241307904138 * `IL`.`Feature_38` + 0.147847592037 * `IL`.`Feature_39` + 0.258289534595 * `IL`.`Feature_40` + 0.0368165434503 * `IL`.`Feature_41` + 0.241257323624 * `IL`.`Feature_42` + -0.0164063902438 * `IL`.`Feature_43` + 0.221435133319 * `IL`.`Feature_44` + -0.177120656476 * `IL`.`Feature_45` + 0.0620396805855 * `IL`.`Feature_46` + 0.208198599703 * `IL`.`Feature_47` + -0.0458607229646 * `IL`.`Feature_48` + -0.0937745388084 * `IL`.`Feature_49` + 0.0828955434525 * `IL`.`Feature_50` + -0.147394925295 * `IL`.`Feature_51` + -0.254569685078 * `IL`.`Feature_52` + -0.0590997707619 * `IL`.`Feature_53` + 0.28208880988 * `IL`.`Feature_54` + -0.055920508279 * `IL`.`Feature_55` + 0.0817793384737 * `IL`.`Feature_56` + 0.0672561017914 * `IL`.`Feature_57` + 0.125434483875 * `IL`.`Feature_58` + -0.172054976509 * `IL`.`Feature_59` + -0.144720715005 * `IL`.`Feature_60` + 0.245824154391 * `IL`.`Feature_61` + -0.158259474464 * `IL`.`Feature_62` + 0.0826479846172 * `IL`.`Feature_63` + 0.285255480582 AS `NEUR_1_2`, 0.283570351546 * `IL`.`Feature_0` + -0.197720469156 * `IL`.`Feature_1` + 0.0939036733724 * `IL`.`Feature_2` + -0.0741817880838 * `IL`.`Feature_3` + -0.283732980992 * `IL`.`Feature_4` + -0.148565628666 * `IL`.`Feature_5` + 0.179500128389 * `IL`.`Feature_6` + -0.179985536049 * `IL`.`Feature_7` + -0.223195421511 * `IL`.`Feature_8` + 0.228122266744 * `IL`.`Feature_9` + -0.106713579914 * `IL`.`Feature_10` + -0.116020424553 * `IL`.`Feature_11` + 0.0963922108499 * `IL`.`Feature_12` + -0.233577175625 * `IL`.`Feature_13` + -0.27369169522 * `IL`.`Feature_14` + -0.228122152902 * `IL`.`Feature_15` + 0.0599398179616 * `IL`.`Feature_16` + -0.058485751242 * `IL`.`Feature_17` + 0.108670572093 * `IL`.`Feature_18` + -0.111154100857 * `IL`.`Feature_19` + -0.180729447191 * `IL`.`Feature_20` + 0.0826152083329 * `IL`.`Feature_21` + -0.302333928618 * `IL`.`Feature_22` + 0.164742267892 * `IL`.`Feature_23` + 0.291082836417 * `IL`.`Feature_24` + 0.0399652653061 * `IL`.`Feature_25` + 0.0290356544708 * `IL`.`Feature_26` + 0.185276977409 * `IL`.`Feature_27` + -0.00312090235738 * `IL`.`Feature_28` + 0.0322497424875 * `IL`.`Feature_29` + -0.273530151742 * `IL`.`Feature_30` + 0.109938832761 * `IL`.`Feature_31` + -0.218328994987 * `IL`.`Feature_32` + -0.151013977821 * `IL`.`Feature_33` + -0.120050613092 * `IL`.`Feature_34` + -0.307749343601 * `IL`.`Feature_35` + 0.109199232987 * `IL`.`Feature_36` + -0.00308578444879 * `IL`.`Feature_37` + -0.047117047052 * `IL`.`Feature_38` + -0.261465691256 * `IL`.`Feature_39` + 0.040119603387 * `IL`.`Feature_40` + -0.088906715396 * `IL`.`Feature_41` + -0.173877233335 * `IL`.`Feature_42` + -0.144011335901 * `IL`.`Feature_43` + -0.117420060837 * `IL`.`Feature_44` + -0.334066181853 * `IL`.`Feature_45` + 0.21720371757 * `IL`.`Feature_46` + 0.200466250988 * `IL`.`Feature_47` + -0.0516492832329 * `IL`.`Feature_48` + -0.140261755703 * `IL`.`Feature_49` + 0.0830054261979 * `IL`.`Feature_50` + -0.0626990062937 * `IL`.`Feature_51` + 0.193186214515 * `IL`.`Feature_52` + 0.117834977545 * `IL`.`Feature_53` + -0.0732860564231 * `IL`.`Feature_54` + -0.179062228755 * `IL`.`Feature_55` + 0.0500277636316 * `IL`.`Feature_56` + -0.0483211505134 * `IL`.`Feature_57` + -0.181816559911 * `IL`.`Feature_58` + -0.122157429651 * `IL`.`Feature_59` + -0.256754216473 * `IL`.`Feature_60` + -0.295929572712 * `IL`.`Feature_61` + -0.160283891323 * `IL`.`Feature_62` + 0.183092483353 * `IL`.`Feature_63` + -0.304947424711 AS `NEUR_1_3` 
FROM `IL`), 
`HL_1_relu` AS 
(SELECT `HL_BA_1`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_1`.`NEUR_1_1` >= 0.0) THEN `HL_BA_1`.`NEUR_1_1` ELSE 0.0 END AS `NEUR_1_1`, CASE WHEN (`HL_BA_1`.`NEUR_1_2` >= 0.0) THEN `HL_BA_1`.`NEUR_1_2` ELSE 0.0 END AS `NEUR_1_2`, CASE WHEN (`HL_BA_1`.`NEUR_1_3` >= 0.0) THEN `HL_BA_1`.`NEUR_1_3` ELSE 0.0 END AS `NEUR_1_3` 
FROM `HL_BA_1`), 
`HL_BA_2` AS 
(SELECT `HL_1_relu`.`KEY` AS `KEY`, -0.280141537356 * `HL_1_relu`.`NEUR_1_1` + -0.86423657197 * `HL_1_relu`.`NEUR_1_2` + -0.27670410824 * `HL_1_relu`.`NEUR_1_3` + 0.75468473009 AS `NEUR_2_1`, -0.258931331243 * `HL_1_relu`.`NEUR_1_1` + -0.405644835638 * `HL_1_relu`.`NEUR_1_2` + 0.179833739727 * `HL_1_relu`.`NEUR_1_3` + -0.8197508304 AS `NEUR_2_2`, -0.0537408390731 * `HL_1_relu`.`NEUR_1_1` + 0.844201600594 * `HL_1_relu`.`NEUR_1_2` + 0.789232295148 * `HL_1_relu`.`NEUR_1_3` + -0.286314880801 AS `NEUR_2_3`, 0.212792549985 * `HL_1_relu`.`NEUR_1_1` + 0.387747325168 * `HL_1_relu`.`NEUR_1_2` + -0.287295818285 * `HL_1_relu`.`NEUR_1_3` + -0.580440282905 AS `NEUR_2_4`, 0.904404584705 * `HL_1_relu`.`NEUR_1_1` + -0.262125752003 * `HL_1_relu`.`NEUR_1_2` + 0.115038539043 * `HL_1_relu`.`NEUR_1_3` + -1.83625520704 AS `NEUR_2_5` 
FROM `HL_1_relu`), 
`HL_2_relu` AS 
(SELECT `HL_BA_2`.`KEY` AS `KEY`, CASE WHEN (`HL_BA_2`.`NEUR_2_1` >= 0.0) THEN `HL_BA_2`.`NEUR_2_1` ELSE 0.0 END AS `NEUR_2_1`, CASE WHEN (`HL_BA_2`.`NEUR_2_2` >= 0.0) THEN `HL_BA_2`.`NEUR_2_2` ELSE 0.0 END AS `NEUR_2_2`, CASE WHEN (`HL_BA_2`.`NEUR_2_3` >= 0.0) THEN `HL_BA_2`.`NEUR_2_3` ELSE 0.0 END AS `NEUR_2_3`, CASE WHEN (`HL_BA_2`.`NEUR_2_4` >= 0.0) THEN `HL_BA_2`.`NEUR_2_4` ELSE 0.0 END AS `NEUR_2_4`, CASE WHEN (`HL_BA_2`.`NEUR_2_5` >= 0.0) THEN `HL_BA_2`.`NEUR_2_5` ELSE 0.0 END AS `NEUR_2_5` 
FROM `HL_BA_2`), 
`OL_BA` AS 
(SELECT `HL_2_relu`.`KEY` AS `KEY`, -0.600988830133 * `HL_2_relu`.`NEUR_2_1` + 0.32375226684 * `HL_2_relu`.`NEUR_2_2` + -0.309383992358 * `HL_2_relu`.`NEUR_2_3` + -0.21421600806 * `HL_2_relu`.`NEUR_2_4` + 0.182015390417 * `HL_2_relu`.`NEUR_2_5` + -0.475598451567 AS `NEUR_3_1`, 0.338948797941 * `HL_2_relu`.`NEUR_2_1` + 0.369122124975 * `HL_2_relu`.`NEUR_2_2` + -0.550270770913 * `HL_2_relu`.`NEUR_2_3` + -0.75041104158 * `HL_2_relu`.`NEUR_2_4` + 0.275244263546 * `HL_2_relu`.`NEUR_2_5` + 0.746310232628 AS `NEUR_3_2`, -1.62593745779 * `HL_2_relu`.`NEUR_2_1` + 0.197049782286 * `HL_2_relu`.`NEUR_2_2` + -0.289011663473 * `HL_2_relu`.`NEUR_2_3` + 1.32504181732 * `HL_2_relu`.`NEUR_2_4` + -0.149386591807 * `HL_2_relu`.`NEUR_2_5` + -4.98588860753 AS `NEUR_3_3`, -1.38656175168 * `HL_2_relu`.`NEUR_2_1` + 0.339502976106 * `HL_2_relu`.`NEUR_2_2` + 0.356353365346 * `HL_2_relu`.`NEUR_2_3` + 0.625595375376 * `HL_2_relu`.`NEUR_2_4` + -0.00183852249917 * `HL_2_relu`.`NEUR_2_5` + -1.98975292625 AS `NEUR_3_4`, 0.64011933562 * `HL_2_relu`.`NEUR_2_1` + 0.0697630246262 * `HL_2_relu`.`NEUR_2_2` + -0.0548929440728 * `HL_2_relu`.`NEUR_2_3` + -0.197591100402 * `HL_2_relu`.`NEUR_2_4` + -0.529777008014 * `HL_2_relu`.`NEUR_2_5` + 0.693486723584 AS `NEUR_3_5`, 1.01070436344 * `HL_2_relu`.`NEUR_2_1` + 0.598644037625 * `HL_2_relu`.`NEUR_2_2` + -0.507990420761 * `HL_2_relu`.`NEUR_2_3` + 0.0859379770956 * `HL_2_relu`.`NEUR_2_4` + -1.40811836169 * `HL_2_relu`.`NEUR_2_5` + 0.257639271881 AS `NEUR_3_6`, 0.0866632135509 * `HL_2_relu`.`NEUR_2_1` + -0.603346335696 * `HL_2_relu`.`NEUR_2_2` + 0.202989073762 * `HL_2_relu`.`NEUR_2_3` + -0.341298677208 * `HL_2_relu`.`NEUR_2_4` + 0.172263621066 * `HL_2_relu`.`NEUR_2_5` + 0.916679080838 AS `NEUR_3_7`, 0.43645692675 * `HL_2_relu`.`NEUR_2_1` + 0.248295167376 * `HL_2_relu`.`NEUR_2_2` + -0.360746256536 * `HL_2_relu`.`NEUR_2_3` + 0.343586448438 * `HL_2_relu`.`NEUR_2_4` + -0.0840885756338 * `HL_2_relu`.`NEUR_2_5` + 1.34126750553 AS `NEUR_3_8`, 0.302660558535 * `HL_2_relu`.`NEUR_2_1` + 0.546836833784 * `HL_2_relu`.`NEUR_2_2` + 0.51513532526 * `HL_2_relu`.`NEUR_2_3` + -0.458792752815 * `HL_2_relu`.`NEUR_2_4` + 0.204607810069 * `HL_2_relu`.`NEUR_2_5` + 0.778512634129 AS `NEUR_3_9`, 0.475846954827 * `HL_2_relu`.`NEUR_2_1` + -0.428324773972 * `HL_2_relu`.`NEUR_2_2` + -0.39724997351 * `HL_2_relu`.`NEUR_2_3` + -0.45048597028 * `HL_2_relu`.`NEUR_2_4` + 0.217477069971 * `HL_2_relu`.`NEUR_2_5` + 0.110147854663 AS `NEUR_3_10` 
FROM `HL_2_relu`), 
`OL_softmax` AS 
(SELECT `OL_BA`.`KEY` AS `KEY`, `OL_BA`.`NEUR_3_1` AS `NEUR_3_1`, `OL_BA`.`NEUR_3_2` AS `NEUR_3_2`, `OL_BA`.`NEUR_3_3` AS `NEUR_3_3`, `OL_BA`.`NEUR_3_4` AS `NEUR_3_4`, `OL_BA`.`NEUR_3_5` AS `NEUR_3_5`, `OL_BA`.`NEUR_3_6` AS `NEUR_3_6`, `OL_BA`.`NEUR_3_7` AS `NEUR_3_7`, `OL_BA`.`NEUR_3_8` AS `NEUR_3_8`, `OL_BA`.`NEUR_3_9` AS `NEUR_3_9`, `OL_BA`.`NEUR_3_10` AS `NEUR_3_10` 
FROM `OL_BA`), 
orig_cte AS 
(SELECT `OL_softmax`.`KEY` AS `KEY`, `OL_softmax`.`NEUR_3_1` AS `Score_0`, `OL_softmax`.`NEUR_3_2` AS `Score_1`, `OL_softmax`.`NEUR_3_3` AS `Score_2`, `OL_softmax`.`NEUR_3_4` AS `Score_3`, `OL_softmax`.`NEUR_3_5` AS `Score_4`, `OL_softmax`.`NEUR_3_6` AS `Score_5`, `OL_softmax`.`NEUR_3_7` AS `Score_6`, `OL_softmax`.`NEUR_3_8` AS `Score_7`, `OL_softmax`.`NEUR_3_9` AS `Score_8`, `OL_softmax`.`NEUR_3_10` AS `Score_9`, NULL AS `Proba_0`, NULL AS `Proba_1`, NULL AS `Proba_2`, NULL AS `Proba_3`, NULL AS `Proba_4`, NULL AS `Proba_5`, NULL AS `Proba_6`, NULL AS `Proba_7`, NULL AS `Proba_8`, NULL AS `Proba_9`, NULL AS `LogProba_0`, NULL AS `LogProba_1`, NULL AS `LogProba_2`, NULL AS `LogProba_3`, NULL AS `LogProba_4`, NULL AS `LogProba_5`, NULL AS `LogProba_6`, NULL AS `LogProba_7`, NULL AS `LogProba_8`, NULL AS `LogProba_9`, NULL AS `Decision` 
FROM `OL_softmax`), 
score_class_union AS 
(SELECT scu.`KEY_u` AS `KEY_u`, scu.class AS class, scu.`LogProba` AS `LogProba`, scu.`Proba` AS `Proba`, scu.`Score` AS `Score` 
FROM (SELECT orig_cte.`KEY` AS `KEY_u`, 0 AS class, orig_cte.`LogProba_0` AS `LogProba`, orig_cte.`Proba_0` AS `Proba`, orig_cte.`Score_0` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 1 AS class, orig_cte.`LogProba_1` AS `LogProba`, orig_cte.`Proba_1` AS `Proba`, orig_cte.`Score_1` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 2 AS class, orig_cte.`LogProba_2` AS `LogProba`, orig_cte.`Proba_2` AS `Proba`, orig_cte.`Score_2` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 3 AS class, orig_cte.`LogProba_3` AS `LogProba`, orig_cte.`Proba_3` AS `Proba`, orig_cte.`Score_3` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 4 AS class, orig_cte.`LogProba_4` AS `LogProba`, orig_cte.`Proba_4` AS `Proba`, orig_cte.`Score_4` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 5 AS class, orig_cte.`LogProba_5` AS `LogProba`, orig_cte.`Proba_5` AS `Proba`, orig_cte.`Score_5` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 6 AS class, orig_cte.`LogProba_6` AS `LogProba`, orig_cte.`Proba_6` AS `Proba`, orig_cte.`Score_6` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 7 AS class, orig_cte.`LogProba_7` AS `LogProba`, orig_cte.`Proba_7` AS `Proba`, orig_cte.`Score_7` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 8 AS class, orig_cte.`LogProba_8` AS `LogProba`, orig_cte.`Proba_8` AS `Proba`, orig_cte.`Score_8` AS `Score` 
FROM orig_cte UNION ALL SELECT orig_cte.`KEY` AS `KEY_u`, 9 AS class, orig_cte.`LogProba_9` AS `LogProba`, orig_cte.`Proba_9` AS `Proba`, orig_cte.`Score_9` AS `Score` 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte.`KEY` AS `KEY`, orig_cte.`Score_0` AS `Score_0`, orig_cte.`Score_1` AS `Score_1`, orig_cte.`Score_2` AS `Score_2`, orig_cte.`Score_3` AS `Score_3`, orig_cte.`Score_4` AS `Score_4`, orig_cte.`Score_5` AS `Score_5`, orig_cte.`Score_6` AS `Score_6`, orig_cte.`Score_7` AS `Score_7`, orig_cte.`Score_8` AS `Score_8`, orig_cte.`Score_9` AS `Score_9`, orig_cte.`Proba_0` AS `Proba_0`, orig_cte.`Proba_1` AS `Proba_1`, orig_cte.`Proba_2` AS `Proba_2`, orig_cte.`Proba_3` AS `Proba_3`, orig_cte.`Proba_4` AS `Proba_4`, orig_cte.`Proba_5` AS `Proba_5`, orig_cte.`Proba_6` AS `Proba_6`, orig_cte.`Proba_7` AS `Proba_7`, orig_cte.`Proba_8` AS `Proba_8`, orig_cte.`Proba_9` AS `Proba_9`, orig_cte.`LogProba_0` AS `LogProba_0`, orig_cte.`LogProba_1` AS `LogProba_1`, orig_cte.`LogProba_2` AS `LogProba_2`, orig_cte.`LogProba_3` AS `LogProba_3`, orig_cte.`LogProba_4` AS `LogProba_4`, orig_cte.`LogProba_5` AS `LogProba_5`, orig_cte.`LogProba_6` AS `LogProba_6`, orig_cte.`LogProba_7` AS `LogProba_7`, orig_cte.`LogProba_8` AS `LogProba_8`, orig_cte.`LogProba_9` AS `LogProba_9`, orig_cte.`Decision` AS `Decision`, max_select.`KEY_m` AS `KEY_m`, max_select.`max_LogProba` AS `max_LogProba`, max_select.`max_Proba` AS `max_Proba`, max_select.`max_Score` AS `max_Score` 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union.`KEY_u` AS `KEY_m`, max(score_class_union.`LogProba`) AS `max_LogProba`, max(score_class_union.`Proba`) AS `max_Proba`, max(score_class_union.`Score`) AS `max_Score` 
FROM score_class_union GROUP BY score_class_union.`KEY_u`) AS max_select ON orig_cte.`KEY` = max_select.`KEY_m`), 
score_soft_max_deltas AS 
(SELECT score_max.`KEY` AS `KEY`, score_max.`Score_0` AS `Score_0`, score_max.`Score_1` AS `Score_1`, score_max.`Score_2` AS `Score_2`, score_max.`Score_3` AS `Score_3`, score_max.`Score_4` AS `Score_4`, score_max.`Score_5` AS `Score_5`, score_max.`Score_6` AS `Score_6`, score_max.`Score_7` AS `Score_7`, score_max.`Score_8` AS `Score_8`, score_max.`Score_9` AS `Score_9`, score_max.`Proba_0` AS `Proba_0`, score_max.`Proba_1` AS `Proba_1`, score_max.`Proba_2` AS `Proba_2`, score_max.`Proba_3` AS `Proba_3`, score_max.`Proba_4` AS `Proba_4`, score_max.`Proba_5` AS `Proba_5`, score_max.`Proba_6` AS `Proba_6`, score_max.`Proba_7` AS `Proba_7`, score_max.`Proba_8` AS `Proba_8`, score_max.`Proba_9` AS `Proba_9`, score_max.`LogProba_0` AS `LogProba_0`, score_max.`LogProba_1` AS `LogProba_1`, score_max.`LogProba_2` AS `LogProba_2`, score_max.`LogProba_3` AS `LogProba_3`, score_max.`LogProba_4` AS `LogProba_4`, score_max.`LogProba_5` AS `LogProba_5`, score_max.`LogProba_6` AS `LogProba_6`, score_max.`LogProba_7` AS `LogProba_7`, score_max.`LogProba_8` AS `LogProba_8`, score_max.`LogProba_9` AS `LogProba_9`, score_max.`Decision` AS `Decision`, score_max.`KEY_m` AS `KEY_m`, score_max.`max_LogProba` AS `max_LogProba`, score_max.`max_Proba` AS `max_Proba`, score_max.`max_Score` AS `max_Score`, exp(score_max.`Score_0` - score_max.`max_Score`) AS `exp_delta_Score_0`, exp(score_max.`Score_1` - score_max.`max_Score`) AS `exp_delta_Score_1`, exp(score_max.`Score_2` - score_max.`max_Score`) AS `exp_delta_Score_2`, exp(score_max.`Score_3` - score_max.`max_Score`) AS `exp_delta_Score_3`, exp(score_max.`Score_4` - score_max.`max_Score`) AS `exp_delta_Score_4`, exp(score_max.`Score_5` - score_max.`max_Score`) AS `exp_delta_Score_5`, exp(score_max.`Score_6` - score_max.`max_Score`) AS `exp_delta_Score_6`, exp(score_max.`Score_7` - score_max.`max_Score`) AS `exp_delta_Score_7`, exp(score_max.`Score_8` - score_max.`max_Score`) AS `exp_delta_Score_8`, exp(score_max.`Score_9` - score_max.`max_Score`) AS `exp_delta_Score_9` 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu.`KEY` AS `KEY`, soft_scu.class AS class, soft_scu.`exp_delta_Score` AS `exp_delta_Score` 
FROM (SELECT score_soft_max_deltas.`KEY` AS `KEY`, 0 AS class, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 1 AS class, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 2 AS class, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 3 AS class, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 4 AS class, score_soft_max_deltas.`exp_delta_Score_4` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 5 AS class, score_soft_max_deltas.`exp_delta_Score_5` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 6 AS class, score_soft_max_deltas.`exp_delta_Score_6` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 7 AS class, score_soft_max_deltas.`exp_delta_Score_7` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 8 AS class, score_soft_max_deltas.`exp_delta_Score_8` AS `exp_delta_Score` 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas.`KEY` AS `KEY`, 9 AS class, score_soft_max_deltas.`exp_delta_Score_9` AS `exp_delta_Score` 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas.`KEY` AS `KEY`, score_soft_max_deltas.`Score_0` AS `Score_0`, score_soft_max_deltas.`Score_1` AS `Score_1`, score_soft_max_deltas.`Score_2` AS `Score_2`, score_soft_max_deltas.`Score_3` AS `Score_3`, score_soft_max_deltas.`Score_4` AS `Score_4`, score_soft_max_deltas.`Score_5` AS `Score_5`, score_soft_max_deltas.`Score_6` AS `Score_6`, score_soft_max_deltas.`Score_7` AS `Score_7`, score_soft_max_deltas.`Score_8` AS `Score_8`, score_soft_max_deltas.`Score_9` AS `Score_9`, score_soft_max_deltas.`Proba_0` AS `Proba_0`, score_soft_max_deltas.`Proba_1` AS `Proba_1`, score_soft_max_deltas.`Proba_2` AS `Proba_2`, score_soft_max_deltas.`Proba_3` AS `Proba_3`, score_soft_max_deltas.`Proba_4` AS `Proba_4`, score_soft_max_deltas.`Proba_5` AS `Proba_5`, score_soft_max_deltas.`Proba_6` AS `Proba_6`, score_soft_max_deltas.`Proba_7` AS `Proba_7`, score_soft_max_deltas.`Proba_8` AS `Proba_8`, score_soft_max_deltas.`Proba_9` AS `Proba_9`, score_soft_max_deltas.`LogProba_0` AS `LogProba_0`, score_soft_max_deltas.`LogProba_1` AS `LogProba_1`, score_soft_max_deltas.`LogProba_2` AS `LogProba_2`, score_soft_max_deltas.`LogProba_3` AS `LogProba_3`, score_soft_max_deltas.`LogProba_4` AS `LogProba_4`, score_soft_max_deltas.`LogProba_5` AS `LogProba_5`, score_soft_max_deltas.`LogProba_6` AS `LogProba_6`, score_soft_max_deltas.`LogProba_7` AS `LogProba_7`, score_soft_max_deltas.`LogProba_8` AS `LogProba_8`, score_soft_max_deltas.`LogProba_9` AS `LogProba_9`, score_soft_max_deltas.`Decision` AS `Decision`, score_soft_max_deltas.`KEY_m` AS `KEY_m`, score_soft_max_deltas.`max_LogProba` AS `max_LogProba`, score_soft_max_deltas.`max_Proba` AS `max_Proba`, score_soft_max_deltas.`max_Score` AS `max_Score`, score_soft_max_deltas.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max_deltas.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max_deltas.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max_deltas.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max_deltas.`exp_delta_Score_4` AS `exp_delta_Score_4`, score_soft_max_deltas.`exp_delta_Score_5` AS `exp_delta_Score_5`, score_soft_max_deltas.`exp_delta_Score_6` AS `exp_delta_Score_6`, score_soft_max_deltas.`exp_delta_Score_7` AS `exp_delta_Score_7`, score_soft_max_deltas.`exp_delta_Score_8` AS `exp_delta_Score_8`, score_soft_max_deltas.`exp_delta_Score_9` AS `exp_delta_Score_9`, sum_exp_t.`KEY_sum` AS `KEY_sum`, sum_exp_t.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft.`KEY` AS `KEY_sum`, sum(score_class_union_soft.`exp_delta_Score`) AS `sum_ExpDeltaScore` 
FROM score_class_union_soft GROUP BY score_class_union_soft.`KEY`) AS sum_exp_t ON score_soft_max_deltas.`KEY` = sum_exp_t.`KEY_sum`), 
union_with_max AS 
(SELECT score_class_union.`KEY_u` AS `KEY_u`, score_class_union.class AS class, score_class_union.`LogProba` AS `LogProba`, score_class_union.`Proba` AS `Proba`, score_class_union.`Score` AS `Score`, score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Score_4` AS `Score_4`, score_soft_max.`Score_5` AS `Score_5`, score_soft_max.`Score_6` AS `Score_6`, score_soft_max.`Score_7` AS `Score_7`, score_soft_max.`Score_8` AS `Score_8`, score_soft_max.`Score_9` AS `Score_9`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`Proba_4` AS `Proba_4`, score_soft_max.`Proba_5` AS `Proba_5`, score_soft_max.`Proba_6` AS `Proba_6`, score_soft_max.`Proba_7` AS `Proba_7`, score_soft_max.`Proba_8` AS `Proba_8`, score_soft_max.`Proba_9` AS `Proba_9`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`LogProba_4` AS `LogProba_4`, score_soft_max.`LogProba_5` AS `LogProba_5`, score_soft_max.`LogProba_6` AS `LogProba_6`, score_soft_max.`LogProba_7` AS `LogProba_7`, score_soft_max.`LogProba_8` AS `LogProba_8`, score_soft_max.`LogProba_9` AS `LogProba_9`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_LogProba` AS `max_LogProba`, score_soft_max.`max_Proba` AS `max_Proba`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`exp_delta_Score_4` AS `exp_delta_Score_4`, score_soft_max.`exp_delta_Score_5` AS `exp_delta_Score_5`, score_soft_max.`exp_delta_Score_6` AS `exp_delta_Score_6`, score_soft_max.`exp_delta_Score_7` AS `exp_delta_Score_7`, score_soft_max.`exp_delta_Score_8` AS `exp_delta_Score_8`, score_soft_max.`exp_delta_Score_9` AS `exp_delta_Score_9`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore` 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union.`KEY_u` = score_soft_max.`KEY`), 
arg_max_cte AS 
(SELECT score_soft_max.`KEY` AS `KEY`, score_soft_max.`Score_0` AS `Score_0`, score_soft_max.`Score_1` AS `Score_1`, score_soft_max.`Score_2` AS `Score_2`, score_soft_max.`Score_3` AS `Score_3`, score_soft_max.`Score_4` AS `Score_4`, score_soft_max.`Score_5` AS `Score_5`, score_soft_max.`Score_6` AS `Score_6`, score_soft_max.`Score_7` AS `Score_7`, score_soft_max.`Score_8` AS `Score_8`, score_soft_max.`Score_9` AS `Score_9`, score_soft_max.`Proba_0` AS `Proba_0`, score_soft_max.`Proba_1` AS `Proba_1`, score_soft_max.`Proba_2` AS `Proba_2`, score_soft_max.`Proba_3` AS `Proba_3`, score_soft_max.`Proba_4` AS `Proba_4`, score_soft_max.`Proba_5` AS `Proba_5`, score_soft_max.`Proba_6` AS `Proba_6`, score_soft_max.`Proba_7` AS `Proba_7`, score_soft_max.`Proba_8` AS `Proba_8`, score_soft_max.`Proba_9` AS `Proba_9`, score_soft_max.`LogProba_0` AS `LogProba_0`, score_soft_max.`LogProba_1` AS `LogProba_1`, score_soft_max.`LogProba_2` AS `LogProba_2`, score_soft_max.`LogProba_3` AS `LogProba_3`, score_soft_max.`LogProba_4` AS `LogProba_4`, score_soft_max.`LogProba_5` AS `LogProba_5`, score_soft_max.`LogProba_6` AS `LogProba_6`, score_soft_max.`LogProba_7` AS `LogProba_7`, score_soft_max.`LogProba_8` AS `LogProba_8`, score_soft_max.`LogProba_9` AS `LogProba_9`, score_soft_max.`Decision` AS `Decision`, score_soft_max.`KEY_m` AS `KEY_m`, score_soft_max.`max_LogProba` AS `max_LogProba`, score_soft_max.`max_Proba` AS `max_Proba`, score_soft_max.`max_Score` AS `max_Score`, score_soft_max.`exp_delta_Score_0` AS `exp_delta_Score_0`, score_soft_max.`exp_delta_Score_1` AS `exp_delta_Score_1`, score_soft_max.`exp_delta_Score_2` AS `exp_delta_Score_2`, score_soft_max.`exp_delta_Score_3` AS `exp_delta_Score_3`, score_soft_max.`exp_delta_Score_4` AS `exp_delta_Score_4`, score_soft_max.`exp_delta_Score_5` AS `exp_delta_Score_5`, score_soft_max.`exp_delta_Score_6` AS `exp_delta_Score_6`, score_soft_max.`exp_delta_Score_7` AS `exp_delta_Score_7`, score_soft_max.`exp_delta_Score_8` AS `exp_delta_Score_8`, score_soft_max.`exp_delta_Score_9` AS `exp_delta_Score_9`, score_soft_max.`KEY_sum` AS `KEY_sum`, score_soft_max.`sum_ExpDeltaScore` AS `sum_ExpDeltaScore`, `arg_max_t_Score`.`KEY_Score` AS `KEY_Score`, `arg_max_t_Score`.`arg_max_Score` AS `arg_max_Score`, soft_max_comp.`KEY_softmax` AS `KEY_softmax`, soft_max_comp.`SoftProba_0` AS `SoftProba_0`, soft_max_comp.`SoftProba_1` AS `SoftProba_1`, soft_max_comp.`SoftProba_2` AS `SoftProba_2`, soft_max_comp.`SoftProba_3` AS `SoftProba_3`, soft_max_comp.`SoftProba_4` AS `SoftProba_4`, soft_max_comp.`SoftProba_5` AS `SoftProba_5`, soft_max_comp.`SoftProba_6` AS `SoftProba_6`, soft_max_comp.`SoftProba_7` AS `SoftProba_7`, soft_max_comp.`SoftProba_8` AS `SoftProba_8`, soft_max_comp.`SoftProba_9` AS `SoftProba_9` 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max.`KEY` AS `KEY_Score`, min(union_with_max.class) AS `arg_max_Score` 
FROM union_with_max 
WHERE union_with_max.`max_Score` = union_with_max.`Score` GROUP BY union_with_max.`KEY`) AS `arg_max_t_Score` ON score_soft_max.`KEY` = `arg_max_t_Score`.`KEY_Score` LEFT OUTER JOIN (SELECT score_soft_max.`KEY` AS `KEY_softmax`, score_soft_max.`exp_delta_Score_0` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_0`, score_soft_max.`exp_delta_Score_1` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_1`, score_soft_max.`exp_delta_Score_2` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_2`, score_soft_max.`exp_delta_Score_3` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_3`, score_soft_max.`exp_delta_Score_4` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_4`, score_soft_max.`exp_delta_Score_5` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_5`, score_soft_max.`exp_delta_Score_6` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_6`, score_soft_max.`exp_delta_Score_7` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_7`, score_soft_max.`exp_delta_Score_8` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_8`, score_soft_max.`exp_delta_Score_9` / score_soft_max.`sum_ExpDeltaScore` AS `SoftProba_9` 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp.`KEY_softmax` = `arg_max_t_Score`.`KEY_Score`)
 SELECT arg_max_cte.`KEY` AS `KEY`, NULL AS `Score_0`, NULL AS `Score_1`, NULL AS `Score_2`, NULL AS `Score_3`, NULL AS `Score_4`, NULL AS `Score_5`, NULL AS `Score_6`, NULL AS `Score_7`, NULL AS `Score_8`, NULL AS `Score_9`, arg_max_cte.`SoftProba_0` AS `Proba_0`, arg_max_cte.`SoftProba_1` AS `Proba_1`, arg_max_cte.`SoftProba_2` AS `Proba_2`, arg_max_cte.`SoftProba_3` AS `Proba_3`, arg_max_cte.`SoftProba_4` AS `Proba_4`, arg_max_cte.`SoftProba_5` AS `Proba_5`, arg_max_cte.`SoftProba_6` AS `Proba_6`, arg_max_cte.`SoftProba_7` AS `Proba_7`, arg_max_cte.`SoftProba_8` AS `Proba_8`, arg_max_cte.`SoftProba_9` AS `Proba_9`, CASE WHEN (arg_max_cte.`SoftProba_0` IS NULL OR arg_max_cte.`SoftProba_0` > 0.0) THEN ln(arg_max_cte.`SoftProba_0`) ELSE -1.79769313486231e+308 END AS `LogProba_0`, CASE WHEN (arg_max_cte.`SoftProba_1` IS NULL OR arg_max_cte.`SoftProba_1` > 0.0) THEN ln(arg_max_cte.`SoftProba_1`) ELSE -1.79769313486231e+308 END AS `LogProba_1`, CASE WHEN (arg_max_cte.`SoftProba_2` IS NULL OR arg_max_cte.`SoftProba_2` > 0.0) THEN ln(arg_max_cte.`SoftProba_2`) ELSE -1.79769313486231e+308 END AS `LogProba_2`, CASE WHEN (arg_max_cte.`SoftProba_3` IS NULL OR arg_max_cte.`SoftProba_3` > 0.0) THEN ln(arg_max_cte.`SoftProba_3`) ELSE -1.79769313486231e+308 END AS `LogProba_3`, CASE WHEN (arg_max_cte.`SoftProba_4` IS NULL OR arg_max_cte.`SoftProba_4` > 0.0) THEN ln(arg_max_cte.`SoftProba_4`) ELSE -1.79769313486231e+308 END AS `LogProba_4`, CASE WHEN (arg_max_cte.`SoftProba_5` IS NULL OR arg_max_cte.`SoftProba_5` > 0.0) THEN ln(arg_max_cte.`SoftProba_5`) ELSE -1.79769313486231e+308 END AS `LogProba_5`, CASE WHEN (arg_max_cte.`SoftProba_6` IS NULL OR arg_max_cte.`SoftProba_6` > 0.0) THEN ln(arg_max_cte.`SoftProba_6`) ELSE -1.79769313486231e+308 END AS `LogProba_6`, CASE WHEN (arg_max_cte.`SoftProba_7` IS NULL OR arg_max_cte.`SoftProba_7` > 0.0) THEN ln(arg_max_cte.`SoftProba_7`) ELSE -1.79769313486231e+308 END AS `LogProba_7`, CASE WHEN (arg_max_cte.`SoftProba_8` IS NULL OR arg_max_cte.`SoftProba_8` > 0.0) THEN ln(arg_max_cte.`SoftProba_8`) ELSE -1.79769313486231e+308 END AS `LogProba_8`, CASE WHEN (arg_max_cte.`SoftProba_9` IS NULL OR arg_max_cte.`SoftProba_9` > 0.0) THEN ln(arg_max_cte.`SoftProba_9`) ELSE -1.79769313486231e+308 END AS `LogProba_9`, arg_max_cte.`arg_max_Score` AS `Decision` 
FROM arg_max_cte