-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 4.352165517215004 * "ADS"."Feature_0" + -6.213005548689709 * "ADS"."Feature_1" + -9.667164699480256 * "ADS"."Feature_2" + 10.288229552257977 * "ADS"."Feature_3" + 9.529236460016548 * "ADS"."Feature_4" + 5.364045103582575 * "ADS"."Feature_5" + -7.7702732282256575 * "ADS"."Feature_6" + -4.334153310825531 * "ADS"."Feature_7" + 6.919648642724361 * "ADS"."Feature_8" + -0.04412096718548075 * "ADS"."Feature_9" + -5.350411168039024 * "ADS"."Feature_10" + -2.0608424960132075 * "ADS"."Feature_11" + 9.61674974821404 * "ADS"."Feature_12" + 3.2165465829424065 * "ADS"."Feature_13" + -17.507017074130577 * "ADS"."Feature_14" + -1.1479358186419342 * "ADS"."Feature_15" + 24.04388372066517 * "ADS"."Feature_16" + -0.8389904911478752 * "ADS"."Feature_17" + 8.929622466447078 * "ADS"."Feature_18" + -22.40093200479505 * "ADS"."Feature_19" + 12.395946242343005 * "ADS"."Feature_20" + 5.655683830143216 * "ADS"."Feature_21" + -8.640559002429168 * "ADS"."Feature_22" + 2.234340529957922 * "ADS"."Feature_23" + 7.781185270802943 * "ADS"."Feature_24" + 14.245761705373464 * "ADS"."Feature_25" + 13.301402552218502 * "ADS"."Feature_26" + 2.7938189902111223 * "ADS"."Feature_27" + 10.11605146075889 * "ADS"."Feature_28" + -4.021961274490243 * "ADS"."Feature_29" + -3.103592892622223 * "ADS"."Feature_30" + -0.49779521365255386 * "ADS"."Feature_31" + 7.561443858899116 * "ADS"."Feature_32" + 15.496150180498544 * "ADS"."Feature_33" + -22.18589857968162 * "ADS"."Feature_34" + 12.946881347542348 * "ADS"."Feature_35" + -6.917538539528168 * "ADS"."Feature_36" + -10.622258460938106 * "ADS"."Feature_37" + 10.523447779569114 * "ADS"."Feature_38" + 20.41762962366796 * "ADS"."Feature_39" + -7.842116383371815 * "ADS"."Feature_40" + 23.63290426276668 * "ADS"."Feature_41" + 6.472457654598511 * "ADS"."Feature_42" + 0.21056244681992475 * "ADS"."Feature_43" + -0.4607623839058408 * "ADS"."Feature_44" + -2.2776380104681864 * "ADS"."Feature_45" + -15.498142034898656 * "ADS"."Feature_46" + -7.727339304561348 * "ADS"."Feature_47" + 3.402459101283677 * "ADS"."Feature_48" + -0.3137894130533221 * "ADS"."Feature_49" + -1.9977451425713877 * "ADS"."Feature_50" + 10.438309759198512 * "ADS"."Feature_51" + -9.773537630349344 * "ADS"."Feature_52" + -7.1490853452019065 * "ADS"."Feature_53" + 9.476674491908293 * "ADS"."Feature_54" + -19.02748366678726 * "ADS"."Feature_55" + -9.500393770242525 * "ADS"."Feature_56" + 12.52192962155825 * "ADS"."Feature_57" + 6.5853912354606 * "ADS"."Feature_58" + 8.729436289172698 * "ADS"."Feature_59" + 2.4152289102632696 * "ADS"."Feature_60" + -9.755674805014635 * "ADS"."Feature_61" + -7.372395308846493 * "ADS"."Feature_62" + 41.8193466976469 * "ADS"."Feature_63" + 6.595010161199997 * "ADS"."Feature_64" + -6.754176752240908 * "ADS"."Feature_65" + -1.592791174709138 * "ADS"."Feature_66" + -11.37122002562618 * "ADS"."Feature_67" + 12.806191671142042 * "ADS"."Feature_68" + 2.597281522222314 * "ADS"."Feature_69" + 2.1158944587150192 * "ADS"."Feature_70" + 11.86715624072703 * "ADS"."Feature_71" + -5.742053318783676 * "ADS"."Feature_72" + 5.859479660919212 * "ADS"."Feature_73" + 0.08174184178054134 * "ADS"."Feature_74" + 6.131452334267336 * "ADS"."Feature_75" + -4.082427511121532 * "ADS"."Feature_76" + -7.809078501009363 * "ADS"."Feature_77" + 6.202870905728032 * "ADS"."Feature_78" + 12.198730999590953 * "ADS"."Feature_79" + 30.872056765626894 * "ADS"."Feature_80" + 8.503594544184216 * "ADS"."Feature_81" + -4.418212524065212 * "ADS"."Feature_82" + 9.178987277403833 * "ADS"."Feature_83" + -0.27470447774608286 * "ADS"."Feature_84" + -6.686217887520655 * "ADS"."Feature_85" + -0.8815795959254884 * "ADS"."Feature_86" + 4.898903154704272 * "ADS"."Feature_87" + -4.288236045579645 * "ADS"."Feature_88" + -7.4415745623651475 * "ADS"."Feature_89" + -3.983622272689267 * "ADS"."Feature_90" + 10.37573006714241 * "ADS"."Feature_91" + -4.467980722553644 * "ADS"."Feature_92" + -10.813465319125905 * "ADS"."Feature_93" + -17.645726345735056 * "ADS"."Feature_94" + 34.697583381592736 * "ADS"."Feature_95" + 0.36445505344155116 * "ADS"."Feature_96" + 8.874373890367764 * "ADS"."Feature_97" + 5.722643922660113 * "ADS"."Feature_98" + -10.200376751847182 * "ADS"."Feature_99" + -6.06905179624 AS "Estimator" 
FROM "RandomReg_100" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte