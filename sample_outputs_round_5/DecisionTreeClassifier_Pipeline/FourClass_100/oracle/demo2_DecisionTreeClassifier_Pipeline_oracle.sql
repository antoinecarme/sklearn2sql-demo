-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.131836656934 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.016100573799 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 1.03147937128 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.0839446873542 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.252348146378 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.102009891342 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0820365231335 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.340731385964 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.201043597462 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.159260291505 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.691611423208 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.342405883004 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.0727253785464 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 0.703629491475 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.10598920811 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.330859581936 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.336459949946 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.186064542975 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.170610253396 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.206216213939 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 0.337408215335 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.0775558907966 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN -0.0954134715989 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.0459446480455 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.458867713773 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN -0.260263250832 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.0027186915204 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN -0.583590127938 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN -0.0485844991665 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN -0.110605940304 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN 0.114006440341 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN -0.589989951062 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.00263812822212 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN -0.0295353915009 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.0191206411401 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.191051282827 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.0700509894288 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.853449103938 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN 0.230432932387 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN -0.166840713089 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.0565664215222 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 1.74211863354 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN 0.374104538388 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN -0.283447999234 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN 0.647195061837 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 1.27756248151 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN 0.289827097123 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.0862906196279 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.812842777806 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN -0.217943824108 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN -0.113739841534 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.250096192387 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN -0.194988613366 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.0524407846327 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.954522254657 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.0492425256404 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.187094393986 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.207400074687 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN 0.13326397249 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN -0.0140642860419 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN -0.181746349162 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN -0.300836885341 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN -0.0637200327104 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.103982408315 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.00878725306472 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN 0.234595101063 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN -0.727979552155 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.0420550723659 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.154714983538 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.241807261551 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN -0.305061444069 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN 1.40805186611 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.00565158472398 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN 0.553107650541 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.351321216879 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN 0.518519956478 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN 0.476822995541 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN 0.809728000892 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN -0.252722115285 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 7.0011934509 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.0972325440318 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN -0.0335277076766 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN -0.110226527029 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN 0.115527044638 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN 0.175337713764 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN -0.126621051463 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN 0.37341866491 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.0622186745828 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN -1.20087552151 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN -0.0446920134311 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.0805837097322 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.565224357933 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN -0.852156474016 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN 0.842153745052 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN 0.212024963727 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN -0.472586988231 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN -0.816466106459 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.0270605486427 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN -0.0365398569377 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.0131429057248 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "FourClass_100" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.131836656934) / 1.00353680368 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.016100573799) / 0.949372502013 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 1.03147937128) / 4.27492306356 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 0.0839446873542) / 0.937011220829 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.252348146378) / 4.03046189846 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.102009891342) / 1.04994039709 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0820365231335) / 1.10577895311 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.340731385964) / 4.12260955711 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.201043597462) / 1.07096334723 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - -0.159260291505) / 1.01434814717 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.691611423208) / 3.87348091581 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - -0.342405883004) / 0.954298747042 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - -0.0727253785464) / 0.93883329718 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 0.703629491475) / 4.48757463772 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.10598920811) / 0.915786940157 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.330859581936) / 3.83704762152 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - -0.336459949946) / 3.97272854832 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.186064542975) / 0.920780835153 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.170610253396) / 3.46898097047 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.206216213939) / 4.30654879225 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 0.337408215335) / 3.99605749182 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 0.0775558907966) / 0.924851712921 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - -0.0954134715989) / 1.17914620662 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 0.0459446480455) / 1.04421025977 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.458867713773) / 3.51372446871 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - -0.260263250832) / 3.55965976239 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.0027186915204) / 0.972236636866 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - -0.583590127938) / 3.94613019359 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - -0.0485844991665) / 0.803814497635 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - -0.110605940304) / 1.01569344724 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - 0.114006440341) / 0.949340584302 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - -0.589989951062) / 4.08931922644 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.00263812822212) / 1.02658592997 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - -0.0295353915009) / 1.00289805911 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - 0.0191206411401) / 1.03640129817 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.191051282827) / 3.81284206229 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - -0.0700509894288) / 1.0902199572 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - -0.853449103938) / 4.38903923683 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - 0.230432932387) / 4.36007928738 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - -0.166840713089) / 0.994297903133 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - 0.0565664215222) / 1.03212704567 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - 1.74211863354) / 16.7757080994 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - 0.374104538388) / 3.05362072542 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - -0.283447999234) / 4.50741600832 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - 0.647195061837) / 4.24479679223 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - 1.27756248151) / 3.54958928733 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - 0.289827097123) / 1.01560509496 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.0862906196279) / 0.954006897533 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - -0.812842777806) / 3.49725122156 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - -0.217943824108) / 3.66648844277 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - -0.113739841534) / 0.892370759313 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - -0.250096192387) / 0.87645078875 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - -0.194988613366) / 1.0297888102 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - 0.0524407846327) / 0.9882323271 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - -0.954522254657) / 4.05344298767 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - 0.0492425256404) / 3.72349295076 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - -0.187094393986) / 3.79945349523 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - 0.207400074687) / 4.40983096146 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - 0.13326397249) / 0.899598613787 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - -0.0140642860419) / 1.03130898047 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - -0.181746349162) / 0.972716964771 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - -0.300836885341) / 4.4897871135 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - -0.0637200327104) / 3.85625746607 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - -0.103982408315) / 0.947677346462 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - -0.00878725306472) / 1.06204088903 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - 0.234595101063) / 1.02781288191 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - -0.727979552155) / 4.69704623748 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - -0.0420550723659) / 1.00725667027 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - 0.154714983538) / 0.967460648382 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - -0.241807261551) / 0.996942366236 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - -0.305061444069) / 3.78002864745 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - 1.40805186611) / 4.17168630334 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - 0.00565158472398) / 1.12622994275 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - 0.553107650541) / 4.19636617436 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - 0.351321216879) / 3.34706206979 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - 0.518519956478) / 3.98785286143 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - 0.476822995541) / 3.81620255329 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - 0.809728000892) / 4.13166593063 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - -0.252722115285) / 3.94480576246 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 7.0011934509) / 18.4484374126 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - -0.0972325440318) / 1.1877105064 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - -0.0335277076766) / 4.05663485362 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - -0.110226527029) / 1.0466370474 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - 0.115527044638) / 3.69516011068 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - 0.175337713764) / 0.90345502142 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - -0.126621051463) / 4.31907304105 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - 0.37341866491) / 4.10051758627 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - -0.0622186745828) / 1.06478257672 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - -1.20087552151) / 4.40913852905 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - -0.0446920134311) / 4.48316221056 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - 0.0805837097322) / 1.0074174579 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - 0.565224357933) / 4.52321184387 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - -0.852156474016) / 4.76698701623 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - 0.842153745052) / 3.73829091514 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - 0.212024963727) / 0.925191896334 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - -0.472586988231) / 3.97840090628 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - -0.816466106459) / 4.71348483113 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - 0.0270605486427) / 0.841574552091 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - -0.0365398569377) / 3.70429207817 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - 0.0131429057248) / 0.960174224945 AS scaler_101 
FROM "ADS_imp_1_OUT"), 
"DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= 0.26854121685028076) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= -0.17191313207149506) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_26 <= 0.49848222732543945) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_31 <= -1.0280872583389282) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_23 <= -0.3044038712978363) THEN 5 ELSE 6 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_79 <= 1.4843037128448486) THEN 8 ELSE 9 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_63 <= -0.2030106782913208) THEN 11 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= -0.7583114504814148) THEN 13 ELSE 14 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_70 <= 0.40874427556991577) THEN 16 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_43 <= -0.6757478713989258) THEN 18 ELSE 19 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_70 <= -0.0868879184126854) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= 0.44090789556503296) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_96 <= 0.5043869614601135) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_96 <= -0.43599897623062134) THEN 24 ELSE 25 END ELSE 26 END ELSE 27 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_42 <= 0.6278390884399414) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_49 <= 0.07106343656778336) THEN 30 ELSE 31 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_12 <= -1.6206485033035278) THEN 33 ELSE 34 END END END END AS node_id_2 
FROM "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".node_id AS node_id, "Values".feature AS feature, "Values".threshold AS threshold, "Values".count AS count, "Values".depth AS depth, "Values".parent_id AS parent_id, "Values"."Proba_0" AS "Proba_0", "Values"."LogProba_0" AS "LogProba_0", "Values"."Proba_1" AS "Proba_1", "Values"."LogProba_1" AS "LogProba_1", "Values"."Proba_2" AS "Proba_2", "Values"."LogProba_2" AS "LogProba_2", "Values"."Proba_3" AS "Proba_3", "Values"."LogProba_3" AS "LogProba_3", "Values"."Decision" AS "Decision" 
FROM (SELECT 0 AS node_id, 'scaler_42' AS feature, 0.26854121685028076 AS threshold, 67 AS count, 0 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.22388059701492538 AS "Proba_0", -1.49664241829 AS "LogProba_0", 0.26865671641791045 AS "Proba_1", -1.31432086149 AS "LogProba_1", 0.23880597014925373 AS "Proba_2", -1.43210389715 AS "LogProba_2", 0.26865671641791045 AS "Proba_3", -1.31432086149 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 1 AS node_id, 'scaler_42' AS feature, -0.17191313207149506 AS threshold, 41 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.12195121951219512 AS "Proba_0", -2.10413415427 AS "LogProba_0", 0.14634146341463414 AS "Proba_1", -1.92181259748 AS "LogProba_1", 0.34146341463414637 AS "Proba_2", -1.07451473709 AS "LogProba_2", 0.3902439024390244 AS "Proba_3", -0.940983344465 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 2 AS node_id, 'scaler_26' AS feature, 0.49848222732543945 AS threshold, 30 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.16666666666666666 AS "Proba_0", -1.79175946923 AS "LogProba_0", 0.16666666666666666 AS "Proba_1", -1.79175946923 AS "LogProba_1", 0.16666666666666666 AS "Proba_2", -1.79175946923 AS "LogProba_2", 0.5 AS "Proba_3", -0.69314718056 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 3 AS node_id, 'scaler_31' AS feature, -1.0280872583389282 AS threshold, 22 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.13636363636363635 AS "Proba_0", -1.99243016469 AS "LogProba_0", 0.13636363636363635 AS "Proba_1", -1.99243016469 AS "LogProba_1", 0.045454545454545456 AS "Proba_2", -3.09104245336 AS "LogProba_2", 0.6818181818181818 AS "Proba_3", -0.382992252256 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 4 AS node_id, 'scaler_23' AS feature, -0.3044038712978363 AS threshold, 5 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.6 AS "Proba_0", -0.510825623766 AS "LogProba_0", 0.2 AS "Proba_1", -1.60943791243 AS "LogProba_1", 0.2 AS "Proba_2", -1.60943791243 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 5 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 6 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 3 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 7 AS node_id, 'scaler_79' AS feature, 1.4843037128448486 AS threshold, 17 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.11764705882352941 AS "Proba_1", -2.1400661635 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.8823529411764706 AS "Proba_3", -0.125163142954 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 8 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 15 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 9 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 10 AS node_id, 'scaler_63' AS feature, -0.2030106782913208 AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.25 AS "Proba_0", -1.38629436112 AS "LogProba_0", 0.25 AS "Proba_1", -1.38629436112 AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 11 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 12 AS node_id, 'scaler_42' AS feature, -0.7583114504814148 AS threshold, 4 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 13 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 14 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 15 AS node_id, 'scaler_70' AS feature, 0.40874427556991577 AS threshold, 11 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.09090909090909091 AS "Proba_1", -2.3978952728 AS "LogProba_1", 0.8181818181818182 AS "Proba_2", -0.200670695462 AS "LogProba_2", 0.09090909090909091 AS "Proba_3", -2.3978952728 AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 16 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 9 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 17 AS node_id, 'scaler_43' AS feature, -0.6757478713989258 AS threshold, 2 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.5 AS "Proba_3", -0.69314718056 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 18 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 19 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 20 AS node_id, 'scaler_70' AS feature, -0.0868879184126854 AS threshold, 26 AS count, 1 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.38461538461538464 AS "Proba_0", -0.955511445027 AS "LogProba_0", 0.46153846153846156 AS "Proba_1", -0.773189888233 AS "LogProba_1", 0.07692307692307693 AS "Proba_2", -2.56494935746 AS "LogProba_2", 0.07692307692307693 AS "Proba_3", -2.56494935746 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 21 AS node_id, 'scaler_42' AS feature, 0.44090789556503296 AS threshold, 12 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.75 AS "Proba_0", -0.287682072452 AS "LogProba_0", 0.16666666666666666 AS "Proba_1", -1.79175946923 AS "LogProba_1", 0.08333333333333333 AS "Proba_2", -2.48490664979 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 22 AS node_id, 'scaler_96' AS feature, 0.5043869614601135 AS threshold, 4 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.25 AS "Proba_0", -1.38629436112 AS "LogProba_0", 0.5 AS "Proba_1", -0.69314718056 AS "LogProba_1", 0.25 AS "Proba_2", -1.38629436112 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 23 AS node_id, 'scaler_96' AS feature, -0.43599897623062134 AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.5 AS "Proba_0", -0.69314718056 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.5 AS "Proba_2", -0.69314718056 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 24 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 25 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 5 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 26 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 27 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 8 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 28 AS node_id, 'scaler_42' AS feature, 0.6278390884399414 AS threshold, 14 AS count, 2 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.07142857142857142 AS "Proba_0", -2.63905732962 AS "LogProba_0", 0.7142857142857143 AS "Proba_1", -0.336472236621 AS "LogProba_1", 0.07142857142857142 AS "Proba_2", -2.63905732962 AS "LogProba_2", 0.14285714285714285 AS "Proba_3", -1.94591014906 AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 29 AS node_id, 'scaler_49' AS feature, 0.07106343656778336 AS threshold, 3 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.3333333333333333 AS "Proba_0", -1.09861228867 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.6666666666666666 AS "Proba_3", -0.405465108108 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 30 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 2 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 1.0 AS "Proba_3", 0.0 AS "LogProba_3", 3 AS "Decision" FROM DUAL UNION ALL SELECT 31 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 1.0 AS "Proba_0", 0.0 AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 0 AS "Decision" FROM DUAL UNION ALL SELECT 32 AS node_id, 'scaler_12' AS feature, -1.6206485033035278 AS threshold, 11 AS count, 3 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.9090909090909091 AS "Proba_1", -0.0953101798043 AS "LogProba_1", 0.09090909090909091 AS "Proba_2", -2.3978952728 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL UNION ALL SELECT 33 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 1 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 0.0 AS "Proba_1", -BINARY_FLOAT_INFINITY AS "LogProba_1", 1.0 AS "Proba_2", 0.0 AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 2 AS "Decision" FROM DUAL UNION ALL SELECT 34 AS node_id, CAST(NULL AS VARCHAR2(256 CHAR)) AS feature, CAST(NULL AS FLOAT) AS threshold, 10 AS count, 4 AS depth, CAST(NULL AS INTEGER) AS parent_id, 0.0 AS "Proba_0", -BINARY_FLOAT_INFINITY AS "LogProba_0", 1.0 AS "Proba_1", 0.0 AS "LogProba_1", 0.0 AS "Proba_2", -BINARY_FLOAT_INFINITY AS "LogProba_2", 0.0 AS "Proba_3", -BINARY_FLOAT_INFINITY AS "LogProba_3", 1 AS "Decision" FROM DUAL) "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".node_id AS node_id, "DT_node_data".feature AS feature, "DT_node_data".threshold AS threshold, "DT_node_data".count AS count, "DT_node_data".depth AS depth, "DT_node_data".parent_id AS parent_id, "DT_node_data"."Proba_0" AS "Proba_0", "DT_node_data"."LogProba_0" AS "LogProba_0", "DT_node_data"."Proba_1" AS "Proba_1", "DT_node_data"."LogProba_1" AS "LogProba_1", "DT_node_data"."Proba_2" AS "Proba_2", "DT_node_data"."LogProba_2" AS "LogProba_2", "DT_node_data"."Proba_3" AS "Proba_3", "DT_node_data"."LogProba_3" AS "LogProba_3", "DT_node_data"."Decision" AS "Decision" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".node_id)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", "DT_Output"."Proba_0" AS "Proba_0", "DT_Output"."Proba_1" AS "Proba_1", "DT_Output"."Proba_2" AS "Proba_2", "DT_Output"."Proba_3" AS "Proba_3", "DT_Output"."LogProba_0" AS "LogProba_0", "DT_Output"."LogProba_1" AS "LogProba_1", "DT_Output"."LogProba_2" AS "LogProba_2", "DT_Output"."LogProba_3" AS "LogProba_3", "DT_Output"."Decision" AS "Decision" 
FROM "DT_Output"