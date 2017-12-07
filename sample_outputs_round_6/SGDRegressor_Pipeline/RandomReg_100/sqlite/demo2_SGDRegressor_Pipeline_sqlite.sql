-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.241343415298 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.176484237077 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.00807877833616 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0833713558008 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0818441590186 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.139707411807 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0663643217917 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.295322880527 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0841625622713 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.194478749303 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN -0.213497820829 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 0.0700104151509 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 0.024970462076 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 0.0516521845627 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.113321403181 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0150793276635 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.092705231514 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.11187951389 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.00947937880195 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.0242958892964 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.0566457983986 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.0954194553268 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN -0.0966142197984 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN -0.00414861502465 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.00219591551833 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.167691075514 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.0469999990327 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN -0.0748183371036 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN -0.060418239772 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN -0.103075394797 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN 0.227738049372 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN -0.0693941905351 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.145278668809 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.0461634360507 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.154767963921 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.146213087393 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN 0.0432410140359 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.112226019756 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.269719949266 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.135267055946 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.00737883232017 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 0.0639140593348 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.0161930054366 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 0.114965155789 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.0138011625964 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN -0.0118164836064 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.14613420175 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.0264827721301 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.0842586955947 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.0152766656917 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 0.291917066019 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.0860774106306 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.147112763215 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN -0.110417937381 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.142055485331 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN -0.127024443657 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.0748852801057 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN -0.0749566728098 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN 0.12739743831 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN -0.00555867501482 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 0.148594916538 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN -0.215710983315 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 0.207481116977 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN 0.108555550928 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN 0.30565398491 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.0855333593796 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN 0.0384121010929 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.00561801245561 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.00415012724289 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.243386493651 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN -0.0472445201745 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN -0.0271161313263 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.0963573565653 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN -0.0134996729008 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN -0.153497488298 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN -0.00066665327761 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN 0.115514356334 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN -0.0621497816853 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN -0.218881521682 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.073286961819 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN 0.045031502061 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN -0.0356846885171 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN -0.0804224431952 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN -0.0744449337652 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN -0.0422284483886 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN -0.0789869743224 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN 0.376217770188 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.136989983376 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN -0.00351152721533 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN -0.235984236612 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.196784021037 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.104941444077 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN 0.117340262791 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.142910394477 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN 0.202461006518 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN -0.101065915318 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN -0.0623572145616 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.328995164858 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN 0.205263241092 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN -0.0853618864431 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "RandomReg_100" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.241343415298) / 1.04741097589 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.176484237077) / 1.06198372963 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.00807877833616) / 1.11158192609 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0833713558008) / 0.983445949039 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - -0.0818441590186) / 1.06253453777 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.139707411807) / 0.899890041433 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.0663643217917) / 0.85600752902 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.295322880527) / 0.957939353288 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0841625622713) / 0.950071863947 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.194478749303) / 0.998060096169 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - -0.213497820829) / 1.0655292281 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 0.0700104151509) / 0.869416128314 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 0.024970462076) / 0.761677170938 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 0.0516521845627) / 0.951734656357 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.113321403181) / 0.962713287831 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0150793276635) / 0.85209573785 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - -0.092705231514) / 0.961655250172 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.11187951389) / 0.85465133025 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.00947937880195) / 1.13430637217 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - -0.0242958892964) / 0.98503206431 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - -0.0566457983986) / 0.941150030827 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 0.0954194553268) / 0.995107597418 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - -0.0966142197984) / 1.06908018561 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - -0.00414861502465) / 1.02781750142 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - -0.00219591551833) / 1.15959112488 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.167691075514) / 0.995556145416 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.0469999990327) / 1.04874743607 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - -0.0748183371036) / 0.958197698314 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - -0.060418239772) / 0.939301454342 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - -0.103075394797) / 1.1611308298 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - 0.227738049372) / 1.11323432282 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - -0.0693941905351) / 0.796774477006 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.145278668809) / 1.21991364891 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - 0.0461634360507) / 1.01706684727 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - 0.154767963921) / 0.89202169279 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.146213087393) / 0.931818002794 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - 0.0432410140359) / 0.916875741551 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - -0.112226019756) / 0.952344585029 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - -0.269719949266) / 0.887852191679 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - 0.135267055946) / 1.0152304868 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - 0.00737883232017) / 1.06625348524 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - 0.0639140593348) / 1.05297074016 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - -0.0161930054366) / 0.911698570519 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - 0.114965155789) / 0.958140909173 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - -0.0138011625964) / 0.949212669228 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - -0.0118164836064) / 0.91415015816 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - -0.14613420175) / 1.08034716159 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.0264827721301) / 1.01644041744 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - -0.0842586955947) / 0.893058135756 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - 0.0152766656917) / 0.851868090879 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - 0.291917066019) / 0.965907701129 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - -0.0860774106306) / 1.19252008371 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - 0.147112763215) / 0.790435160788 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - -0.110417937381) / 0.884913160937 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - -0.142055485331) / 0.977692770201 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - -0.127024443657) / 1.07912027167 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - -0.0748852801057) / 0.943737290475 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - -0.0749566728098) / 0.893470289348 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - 0.12739743831) / 1.00458017459 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - -0.00555867501482) / 1.07496879255 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - 0.148594916538) / 1.152945552 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - -0.215710983315) / 1.04242657055 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - 0.207481116977) / 0.949305446375 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - 0.108555550928) / 1.02206674242 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - 0.30565398491) / 0.955126141519 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - -0.0855333593796) / 0.984882368136 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - 0.0384121010929) / 0.909026291582 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - -0.00561801245561) / 1.08393130375 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - 0.00415012724289) / 0.994078931701 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - -0.243386493651) / 0.898309787639 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - -0.0472445201745) / 0.931434611797 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - -0.0271161313263) / 0.805443915551 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - 0.0963573565653) / 1.06623900442 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - -0.0134996729008) / 1.00333968234 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - -0.153497488298) / 0.951393784508 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - -0.00066665327761) / 1.06458958081 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - 0.115514356334) / 1.00182038848 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - -0.0621497816853) / 0.93201544378 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - -0.218881521682) / 0.908529155334 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 0.073286961819) / 0.990035759354 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - 0.045031502061) / 0.971644343454 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - -0.0356846885171) / 0.881288494666 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - -0.0804224431952) / 0.984083939772 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - -0.0744449337652) / 0.996359199285 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - -0.0422284483886) / 1.08946570658 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - -0.0789869743224) / 0.911011469152 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - 0.376217770188) / 1.01877598762 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - -0.136989983376) / 0.881565070635 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - -0.00351152721533) / 0.968505166163 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - -0.235984236612) / 0.988732653247 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - 0.196784021037) / 1.03166687228 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - 0.104941444077) / 0.87872079944 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - 0.117340262791) / 1.09210958434 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - -0.142910394477) / 1.02992122772 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - 0.202461006518) / 0.913046304427 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - -0.101065915318) / 0.949440569853 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - -0.0623572145616) / 0.920416233585 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - 0.328995164858) / 0.981857841434 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - 0.205263241092) / 1.07518635993 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - -0.0853618864431) / 1.11076943747 AS scaler_101 
FROM "ADS_imp_1_OUT"), 
linear_model_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", 11.756550335625386 * "ADS_sca_2_OUT".scaler_2 + -1.2123434277546747 * "ADS_sca_2_OUT".scaler_3 + -4.862442848297519 * "ADS_sca_2_OUT".scaler_4 + -3.0144042332098904 * "ADS_sca_2_OUT".scaler_5 + 4.410615532177367 * "ADS_sca_2_OUT".scaler_6 + -3.2594120466757985 * "ADS_sca_2_OUT".scaler_7 + 1.15166238593207 * "ADS_sca_2_OUT".scaler_8 + -6.6013149955080115 * "ADS_sca_2_OUT".scaler_9 + -11.553179547754015 * "ADS_sca_2_OUT".scaler_10 + 8.69918613376677 * "ADS_sca_2_OUT".scaler_11 + -4.91859040885835 * "ADS_sca_2_OUT".scaler_12 + -3.5795803471451695 * "ADS_sca_2_OUT".scaler_13 + 8.445285021244683 * "ADS_sca_2_OUT".scaler_14 + -6.8723142425705905 * "ADS_sca_2_OUT".scaler_15 + -5.575283415276189 * "ADS_sca_2_OUT".scaler_16 + -2.3735843364406994 * "ADS_sca_2_OUT".scaler_17 + -7.688452650116207 * "ADS_sca_2_OUT".scaler_18 + 7.6789835667745265 * "ADS_sca_2_OUT".scaler_19 + -4.7425522542126535 * "ADS_sca_2_OUT".scaler_20 + -2.7181316586742867 * "ADS_sca_2_OUT".scaler_21 + 3.0265767789140696 * "ADS_sca_2_OUT".scaler_22 + -1.4829812899831307 * "ADS_sca_2_OUT".scaler_23 + -0.8298035547651386 * "ADS_sca_2_OUT".scaler_24 + 1.2137685203300885 * "ADS_sca_2_OUT".scaler_25 + -9.127927989079302 * "ADS_sca_2_OUT".scaler_26 + 0.6595678377700954 * "ADS_sca_2_OUT".scaler_27 + -6.66344496829359 * "ADS_sca_2_OUT".scaler_28 + 14.791942874700357 * "ADS_sca_2_OUT".scaler_29 + 10.32249852964703 * "ADS_sca_2_OUT".scaler_30 + -1.693535005950929 * "ADS_sca_2_OUT".scaler_31 + -1.7348729548580255 * "ADS_sca_2_OUT".scaler_32 + 9.13161711514242 * "ADS_sca_2_OUT".scaler_33 + -5.179177245607306 * "ADS_sca_2_OUT".scaler_34 + 31.378279528417607 * "ADS_sca_2_OUT".scaler_35 + 1.140870803939839 * "ADS_sca_2_OUT".scaler_36 + -9.599346489234453 * "ADS_sca_2_OUT".scaler_37 + 1.7164158737326747 * "ADS_sca_2_OUT".scaler_38 + 3.858758288163409 * "ADS_sca_2_OUT".scaler_39 + 2.9810583174649254 * "ADS_sca_2_OUT".scaler_40 + 6.465128589438895 * "ADS_sca_2_OUT".scaler_41 + 0.9961927628768763 * "ADS_sca_2_OUT".scaler_42 + -4.343962387710094 * "ADS_sca_2_OUT".scaler_43 + 8.121431663653675 * "ADS_sca_2_OUT".scaler_44 + 0.9730603574389561 * "ADS_sca_2_OUT".scaler_45 + -2.634217511262795 * "ADS_sca_2_OUT".scaler_46 + 0.3707742097994708 * "ADS_sca_2_OUT".scaler_47 + -3.4564571436096148 * "ADS_sca_2_OUT".scaler_48 + -2.924588327205125 * "ADS_sca_2_OUT".scaler_49 + 5.266395716135062 * "ADS_sca_2_OUT".scaler_50 + -0.7016816119911566 * "ADS_sca_2_OUT".scaler_51 + -4.807971782223889 * "ADS_sca_2_OUT".scaler_52 + -5.68868305079484 * "ADS_sca_2_OUT".scaler_53 + 13.580017147680678 * "ADS_sca_2_OUT".scaler_54 + -4.634565094201205 * "ADS_sca_2_OUT".scaler_55 + -3.994038505206707 * "ADS_sca_2_OUT".scaler_56 + -4.810741469780126 * "ADS_sca_2_OUT".scaler_57 + 2.3668810946148438 * "ADS_sca_2_OUT".scaler_58 + -3.165711442292324 * "ADS_sca_2_OUT".scaler_59 + -2.1012512028137333 * "ADS_sca_2_OUT".scaler_60 + 0.7454085844888287 * "ADS_sca_2_OUT".scaler_61 + -5.211101538678583 * "ADS_sca_2_OUT".scaler_62 + 22.52686207291124 * "ADS_sca_2_OUT".scaler_63 + 1.368217667532762 * "ADS_sca_2_OUT".scaler_64 + 6.742506065560366 * "ADS_sca_2_OUT".scaler_65 + 4.452490617515381 * "ADS_sca_2_OUT".scaler_66 + -2.4311172964143997 * "ADS_sca_2_OUT".scaler_67 + -3.3008296214524777 * "ADS_sca_2_OUT".scaler_68 + -4.050150300314146 * "ADS_sca_2_OUT".scaler_69 + -2.4167375624538865 * "ADS_sca_2_OUT".scaler_70 + 5.705741098922374 * "ADS_sca_2_OUT".scaler_71 + 1.402496484956226 * "ADS_sca_2_OUT".scaler_72 + 6.594115133947365 * "ADS_sca_2_OUT".scaler_73 + 7.780891083584483 * "ADS_sca_2_OUT".scaler_74 + -6.63430791390475 * "ADS_sca_2_OUT".scaler_75 + -0.384735256024177 * "ADS_sca_2_OUT".scaler_76 + -1.9289901241217127 * "ADS_sca_2_OUT".scaler_77 + -4.046326119542924 * "ADS_sca_2_OUT".scaler_78 + 32.06722778801446 * "ADS_sca_2_OUT".scaler_79 + -6.732357164957191 * "ADS_sca_2_OUT".scaler_80 + -1.3039588185617494 * "ADS_sca_2_OUT".scaler_81 + 0.3339044376511453 * "ADS_sca_2_OUT".scaler_82 + -5.236733333492085 * "ADS_sca_2_OUT".scaler_83 + 11.207529436618945 * "ADS_sca_2_OUT".scaler_84 + -5.997219063363318 * "ADS_sca_2_OUT".scaler_85 + 1.6162653622057999 * "ADS_sca_2_OUT".scaler_86 + 5.9453197668026165 * "ADS_sca_2_OUT".scaler_87 + -3.6645282955835214 * "ADS_sca_2_OUT".scaler_88 + -5.501089737389236 * "ADS_sca_2_OUT".scaler_89 + 2.6193153770717674 * "ADS_sca_2_OUT".scaler_90 + 0.9381285418681029 * "ADS_sca_2_OUT".scaler_91 + 23.60398401772058 * "ADS_sca_2_OUT".scaler_92 + -3.0836414455977703 * "ADS_sca_2_OUT".scaler_93 + 3.4302460886892416 * "ADS_sca_2_OUT".scaler_94 + -4.807948622287046 * "ADS_sca_2_OUT".scaler_95 + -1.3456050271526308 * "ADS_sca_2_OUT".scaler_96 + 7.788847439423606 * "ADS_sca_2_OUT".scaler_97 + -3.2408577689487474 * "ADS_sca_2_OUT".scaler_98 + 6.4432818219679815 * "ADS_sca_2_OUT".scaler_99 + 3.015894820867499 * "ADS_sca_2_OUT".scaler_100 + -3.1504660458109623 * "ADS_sca_2_OUT".scaler_101 + -6.15461397559 AS "Estimator" 
FROM "ADS_sca_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte