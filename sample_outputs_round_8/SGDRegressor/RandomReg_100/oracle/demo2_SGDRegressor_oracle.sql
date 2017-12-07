-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 2.2199828260290326 * "ADS"."Feature_0" + -3.9884500229654556 * "ADS"."Feature_1" + -10.307437389639478 * "ADS"."Feature_2" + 8.785877349453706 * "ADS"."Feature_3" + 10.312569426520371 * "ADS"."Feature_4" + 6.107654958307932 * "ADS"."Feature_5" + -8.176972813872425 * "ADS"."Feature_6" + -6.375147792420435 * "ADS"."Feature_7" + 6.414225097287268 * "ADS"."Feature_8" + -0.9106212063805736 * "ADS"."Feature_9" + -6.068475173006432 * "ADS"."Feature_10" + -3.9760433889105027 * "ADS"."Feature_11" + 9.024587691968987 * "ADS"."Feature_12" + 3.9055126210293016 * "ADS"."Feature_13" + -15.187234262907676 * "ADS"."Feature_14" + -0.2819056764984401 * "ADS"."Feature_15" + 19.51107322911273 * "ADS"."Feature_16" + -0.5476583928894495 * "ADS"."Feature_17" + 8.406612621500322 * "ADS"."Feature_18" + -20.138789382587213 * "ADS"."Feature_19" + 12.655970124882087 * "ADS"."Feature_20" + 3.6378623680497677 * "ADS"."Feature_21" + -8.00615784958005 * "ADS"."Feature_22" + 2.769338702771587 * "ADS"."Feature_23" + 8.419272394961236 * "ADS"."Feature_24" + 12.810744471549237 * "ADS"."Feature_25" + 12.684358350198966 * "ADS"."Feature_26" + 3.1818225228402315 * "ADS"."Feature_27" + 9.7613807962721 * "ADS"."Feature_28" + -5.097285521603197 * "ADS"."Feature_29" + -2.5180576731815 * "ADS"."Feature_30" + 2.1283174387985113 * "ADS"."Feature_31" + 7.994050262336017 * "ADS"."Feature_32" + 12.800478721588412 * "ADS"."Feature_33" + -17.96321569190996 * "ADS"."Feature_34" + 12.406348627913204 * "ADS"."Feature_35" + -8.479991926489603 * "ADS"."Feature_36" + -9.46479073829856 * "ADS"."Feature_37" + 7.916217025843807 * "ADS"."Feature_38" + 17.885507473890442 * "ADS"."Feature_39" + -7.996178956897518 * "ADS"."Feature_40" + 19.779167991607974 * "ADS"."Feature_41" + 6.1345118453687695 * "ADS"."Feature_42" + -0.2438133566233435 * "ADS"."Feature_43" + -1.395368622076009 * "ADS"."Feature_44" + 0.4087865323927413 * "ADS"."Feature_45" + -12.971649591777092 * "ADS"."Feature_46" + -4.365729322851967 * "ADS"."Feature_47" + 2.5370755697497245 * "ADS"."Feature_48" + -0.5186313307814701 * "ADS"."Feature_49" + -1.198799585578926 * "ADS"."Feature_50" + 10.30157647692251 * "ADS"."Feature_51" + -6.962720552658776 * "ADS"."Feature_52" + -7.427865703551235 * "ADS"."Feature_53" + 8.57182551578407 * "ADS"."Feature_54" + -16.912745631166064 * "ADS"."Feature_55" + -8.51698892387087 * "ADS"."Feature_56" + 9.631564617931245 * "ADS"."Feature_57" + 4.248574698436569 * "ADS"."Feature_58" + 5.121461284785247 * "ADS"."Feature_59" + 2.8714137047820176 * "ADS"."Feature_60" + -11.789686702066012 * "ADS"."Feature_61" + -7.8012588495779855 * "ADS"."Feature_62" + 36.187815021420114 * "ADS"."Feature_63" + 7.234362088624082 * "ADS"."Feature_64" + -4.9490012113788895 * "ADS"."Feature_65" + -2.6043947826075433 * "ADS"."Feature_66" + -12.030467907244695 * "ADS"."Feature_67" + 10.118784246647818 * "ADS"."Feature_68" + 0.3795540229790087 * "ADS"."Feature_69" + 0.5059940611125642 * "ADS"."Feature_70" + 10.608551336990491 * "ADS"."Feature_71" + -4.595608751350444 * "ADS"."Feature_72" + 2.463766311723084 * "ADS"."Feature_73" + 0.8160273828943916 * "ADS"."Feature_74" + 6.787920101846743 * "ADS"."Feature_75" + -2.294275927089637 * "ADS"."Feature_76" + -7.066479496294872 * "ADS"."Feature_77" + 5.255064774579662 * "ADS"."Feature_78" + 12.345414233336344 * "ADS"."Feature_79" + 29.779271507940535 * "ADS"."Feature_80" + 9.421224070841813 * "ADS"."Feature_81" + -3.0817578294597525 * "ADS"."Feature_82" + 8.908368190868101 * "ADS"."Feature_83" + -0.5327732062865341 * "ADS"."Feature_84" + -6.516484190045445 * "ADS"."Feature_85" + -2.53037032416443 * "ADS"."Feature_86" + 4.273798190046927 * "ADS"."Feature_87" + -4.797874075152457 * "ADS"."Feature_88" + -8.704444648177157 * "ADS"."Feature_89" + -3.406294447638216 * "ADS"."Feature_90" + 11.773231007900781 * "ADS"."Feature_91" + -0.5057313004731935 * "ADS"."Feature_92" + -9.492325089838031 * "ADS"."Feature_93" + -14.190387826680967 * "ADS"."Feature_94" + 32.38085360906391 * "ADS"."Feature_95" + 0.7287290902667072 * "ADS"."Feature_96" + 6.710852712043331 * "ADS"."Feature_97" + 5.798014674374993 * "ADS"."Feature_98" + -8.453016606274383 * "ADS"."Feature_99" + -0.540790549636 AS "Estimator" 
FROM "RandomReg_100" "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte