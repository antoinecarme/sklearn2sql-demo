-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : FourClass_100
-- Database : monetdb


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516112945_codegen_ts9uvy_ads_imp_1_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516112945_codegen_ts9uvy_ads_imp_1_out (
	"KEY" BIGINT, 
	impter_2 DOUBLE, 
	impter_3 DOUBLE, 
	impter_4 DOUBLE, 
	impter_5 DOUBLE, 
	impter_6 DOUBLE, 
	impter_7 DOUBLE, 
	impter_8 DOUBLE, 
	impter_9 DOUBLE, 
	impter_10 DOUBLE, 
	impter_11 DOUBLE, 
	impter_12 DOUBLE, 
	impter_13 DOUBLE, 
	impter_14 DOUBLE, 
	impter_15 DOUBLE, 
	impter_16 DOUBLE, 
	impter_17 DOUBLE, 
	impter_18 DOUBLE, 
	impter_19 DOUBLE, 
	impter_20 DOUBLE, 
	impter_21 DOUBLE, 
	impter_22 DOUBLE, 
	impter_23 DOUBLE, 
	impter_24 DOUBLE, 
	impter_25 DOUBLE, 
	impter_26 DOUBLE, 
	impter_27 DOUBLE, 
	impter_28 DOUBLE, 
	impter_29 DOUBLE, 
	impter_30 DOUBLE, 
	impter_31 DOUBLE, 
	impter_32 DOUBLE, 
	impter_33 DOUBLE, 
	impter_34 DOUBLE, 
	impter_35 DOUBLE, 
	impter_36 DOUBLE, 
	impter_37 DOUBLE, 
	impter_38 DOUBLE, 
	impter_39 DOUBLE, 
	impter_40 DOUBLE, 
	impter_41 DOUBLE, 
	impter_42 DOUBLE, 
	impter_43 DOUBLE, 
	impter_44 DOUBLE, 
	impter_45 DOUBLE, 
	impter_46 DOUBLE, 
	impter_47 DOUBLE, 
	impter_48 DOUBLE, 
	impter_49 DOUBLE, 
	impter_50 DOUBLE, 
	impter_51 DOUBLE, 
	impter_52 DOUBLE, 
	impter_53 DOUBLE, 
	impter_54 DOUBLE, 
	impter_55 DOUBLE, 
	impter_56 DOUBLE, 
	impter_57 DOUBLE, 
	impter_58 DOUBLE, 
	impter_59 DOUBLE, 
	impter_60 DOUBLE, 
	impter_61 DOUBLE, 
	impter_62 DOUBLE, 
	impter_63 DOUBLE, 
	impter_64 DOUBLE, 
	impter_65 DOUBLE, 
	impter_66 DOUBLE, 
	impter_67 DOUBLE, 
	impter_68 DOUBLE, 
	impter_69 DOUBLE, 
	impter_70 DOUBLE, 
	impter_71 DOUBLE, 
	impter_72 DOUBLE, 
	impter_73 DOUBLE, 
	impter_74 DOUBLE, 
	impter_75 DOUBLE, 
	impter_76 DOUBLE, 
	impter_77 DOUBLE, 
	impter_78 DOUBLE, 
	impter_79 DOUBLE, 
	impter_80 DOUBLE, 
	impter_81 DOUBLE, 
	impter_82 DOUBLE, 
	impter_83 DOUBLE, 
	impter_84 DOUBLE, 
	impter_85 DOUBLE, 
	impter_86 DOUBLE, 
	impter_87 DOUBLE, 
	impter_88 DOUBLE, 
	impter_89 DOUBLE, 
	impter_90 DOUBLE, 
	impter_91 DOUBLE, 
	impter_92 DOUBLE, 
	impter_93 DOUBLE, 
	impter_94 DOUBLE, 
	impter_95 DOUBLE, 
	impter_96 DOUBLE, 
	impter_97 DOUBLE, 
	impter_98 DOUBLE, 
	impter_99 DOUBLE, 
	impter_100 DOUBLE, 
	impter_101 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516112945_codegen_ts9uvy_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516112945_codegen_ts9uvy_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31, impter_32, impter_33, impter_34, impter_35, impter_36, impter_37, impter_38, impter_39, impter_40, impter_41, impter_42, impter_43, impter_44, impter_45, impter_46, impter_47, impter_48, impter_49, impter_50, impter_51, impter_52, impter_53, impter_54, impter_55, impter_56, impter_57, impter_58, impter_59, impter_60, impter_61, impter_62, impter_63, impter_64, impter_65, impter_66, impter_67, impter_68, impter_69, impter_70, impter_71, impter_72, impter_73, impter_74, impter_75, impter_76, impter_77, impter_78, impter_79, impter_80, impter_81, impter_82, impter_83, impter_84, impter_85, impter_86, impter_87, impter_88, impter_89, impter_90, impter_91, impter_92, impter_93, impter_94, impter_95, impter_96, impter_97, impter_98, impter_99, impter_100, impter_101) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31, "U".impter_32, "U".impter_33, "U".impter_34, "U".impter_35, "U".impter_36, "U".impter_37, "U".impter_38, "U".impter_39, "U".impter_40, "U".impter_41, "U".impter_42, "U".impter_43, "U".impter_44, "U".impter_45, "U".impter_46, "U".impter_47, "U".impter_48, "U".impter_49, "U".impter_50, "U".impter_51, "U".impter_52, "U".impter_53, "U".impter_54, "U".impter_55, "U".impter_56, "U".impter_57, "U".impter_58, "U".impter_59, "U".impter_60, "U".impter_61, "U".impter_62, "U".impter_63, "U".impter_64, "U".impter_65, "U".impter_66, "U".impter_67, "U".impter_68, "U".impter_69, "U".impter_70, "U".impter_71, "U".impter_72, "U".impter_73, "U".impter_74, "U".impter_75, "U".impter_76, "U".impter_77, "U".impter_78, "U".impter_79, "U".impter_80, "U".impter_81, "U".impter_82, "U".impter_83, "U".impter_84, "U".impter_85, "U".impter_86, "U".impter_87, "U".impter_88, "U".impter_89, "U".impter_90, "U".impter_91, "U".impter_92, "U".impter_93, "U".impter_94, "U".impter_95, "U".impter_96, "U".impter_97, "U".impter_98, "U".impter_99, "U".impter_100, "U".impter_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31, "ADS_imp_1_OUT".impter_32, "ADS_imp_1_OUT".impter_33, "ADS_imp_1_OUT".impter_34, "ADS_imp_1_OUT".impter_35, "ADS_imp_1_OUT".impter_36, "ADS_imp_1_OUT".impter_37, "ADS_imp_1_OUT".impter_38, "ADS_imp_1_OUT".impter_39, "ADS_imp_1_OUT".impter_40, "ADS_imp_1_OUT".impter_41, "ADS_imp_1_OUT".impter_42, "ADS_imp_1_OUT".impter_43, "ADS_imp_1_OUT".impter_44, "ADS_imp_1_OUT".impter_45, "ADS_imp_1_OUT".impter_46, "ADS_imp_1_OUT".impter_47, "ADS_imp_1_OUT".impter_48, "ADS_imp_1_OUT".impter_49, "ADS_imp_1_OUT".impter_50, "ADS_imp_1_OUT".impter_51, "ADS_imp_1_OUT".impter_52, "ADS_imp_1_OUT".impter_53, "ADS_imp_1_OUT".impter_54, "ADS_imp_1_OUT".impter_55, "ADS_imp_1_OUT".impter_56, "ADS_imp_1_OUT".impter_57, "ADS_imp_1_OUT".impter_58, "ADS_imp_1_OUT".impter_59, "ADS_imp_1_OUT".impter_60, "ADS_imp_1_OUT".impter_61, "ADS_imp_1_OUT".impter_62, "ADS_imp_1_OUT".impter_63, "ADS_imp_1_OUT".impter_64, "ADS_imp_1_OUT".impter_65, "ADS_imp_1_OUT".impter_66, "ADS_imp_1_OUT".impter_67, "ADS_imp_1_OUT".impter_68, "ADS_imp_1_OUT".impter_69, "ADS_imp_1_OUT".impter_70, "ADS_imp_1_OUT".impter_71, "ADS_imp_1_OUT".impter_72, "ADS_imp_1_OUT".impter_73, "ADS_imp_1_OUT".impter_74, "ADS_imp_1_OUT".impter_75, "ADS_imp_1_OUT".impter_76, "ADS_imp_1_OUT".impter_77, "ADS_imp_1_OUT".impter_78, "ADS_imp_1_OUT".impter_79, "ADS_imp_1_OUT".impter_80, "ADS_imp_1_OUT".impter_81, "ADS_imp_1_OUT".impter_82, "ADS_imp_1_OUT".impter_83, "ADS_imp_1_OUT".impter_84, "ADS_imp_1_OUT".impter_85, "ADS_imp_1_OUT".impter_86, "ADS_imp_1_OUT".impter_87, "ADS_imp_1_OUT".impter_88, "ADS_imp_1_OUT".impter_89, "ADS_imp_1_OUT".impter_90, "ADS_imp_1_OUT".impter_91, "ADS_imp_1_OUT".impter_92, "ADS_imp_1_OUT".impter_93, "ADS_imp_1_OUT".impter_94, "ADS_imp_1_OUT".impter_95, "ADS_imp_1_OUT".impter_96, "ADS_imp_1_OUT".impter_97, "ADS_imp_1_OUT".impter_98, "ADS_imp_1_OUT".impter_99, "ADS_imp_1_OUT".impter_100, "ADS_imp_1_OUT".impter_101 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0014807007689716506 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.08599214990681354 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.006358164676411468 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.024301807422776375 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.015786548044298444 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.13959329445651672 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.06476745048019888 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.025579810774090658 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.03173937260977112 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.1518141420862488 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN -0.13244576558492482 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 0.044172679762224144 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 0.010165946719810038 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.03645872019103299 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.06491512811593925 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN -0.11930146867074032 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.007738863934852773 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN -0.1226774060147726 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.019160881669086405 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.26340351121131067 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 0.035692361937735194 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN -0.010021324964069293 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN -0.1258614387723542 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.09372773898231128 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.1687929597880227 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.10006283199629364 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN -0.10297858086822659 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.19240514535870415 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN -0.052866434246092435 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.2624612146366151 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN 0.002677575140361194 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.09707041941284063 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN -0.032793219857333473 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN -0.003130273745908922 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.053446276216279974 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN -0.18668146437412367 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.029335964960866243 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN 0.07219772199502426 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.0007762839781489412 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.08270823712098274 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.10432022852347983 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 0.07058566385022276 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN 0.05096693098357383 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 0.0660758203367818 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.07075895636353369 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 0.08422536561649958 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN 0.21367580667795616 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN -0.055897457335624984 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.17453036726139817 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN -0.054944001818473996 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN -0.5961651261710368 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN 0.5020404526565605 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN -0.052340545201383926 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.05294307611674654 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN 0.03835884479069335 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN -0.13571979014964694 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.21903068431411843 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN -0.1191752362029383 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN 0.38058346912807667 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN -0.12720928974168508 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN -0.09072936496613782 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN -0.03915125937954538 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 0.07075412393313481 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN 0.10124894587016948 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.1945661449475579 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.1759482981261233 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN 0.07473228971855511 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN 0.0377705562115906 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.0139470898598917 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN 0.2582685725145942 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN 0.022975786233048922 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN 0.17445434061949525 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN -0.011413879692078346 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN 0.07898984156871978 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.0952547273770713 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN -0.03997776839639901 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN -0.020839895874293496 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN -0.07284631986613152 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN -0.27389951764434384 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.08057287885287609 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.06244274245437891 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN -0.12290855334066887 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN 0.11639531793890918 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN -0.03350462786128603 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN -0.03914049968144583 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN 0.24193903072305167 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN -0.07389719862221904 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN 0.1400756228320113 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN 0.2765301935136145 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN -0.07957147169250885 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.16295767680642717 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.07062813888509549 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN 0.012995630151896219 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN 0.1055212408190415 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN -0.1408434425354362 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN -0.1574012366732725 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN 0.05477536676313335 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.05673272205919614 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN -0.14226649213619527 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN -0.04042675289131955 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "FourClass_100" AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516112945_codegen_6sy11l_ads_sca_2_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516112945_codegen_6sy11l_ads_sca_2_out (
	"KEY" BIGINT, 
	scaler_2 DOUBLE, 
	scaler_3 DOUBLE, 
	scaler_4 DOUBLE, 
	scaler_5 DOUBLE, 
	scaler_6 DOUBLE, 
	scaler_7 DOUBLE, 
	scaler_8 DOUBLE, 
	scaler_9 DOUBLE, 
	scaler_10 DOUBLE, 
	scaler_11 DOUBLE, 
	scaler_12 DOUBLE, 
	scaler_13 DOUBLE, 
	scaler_14 DOUBLE, 
	scaler_15 DOUBLE, 
	scaler_16 DOUBLE, 
	scaler_17 DOUBLE, 
	scaler_18 DOUBLE, 
	scaler_19 DOUBLE, 
	scaler_20 DOUBLE, 
	scaler_21 DOUBLE, 
	scaler_22 DOUBLE, 
	scaler_23 DOUBLE, 
	scaler_24 DOUBLE, 
	scaler_25 DOUBLE, 
	scaler_26 DOUBLE, 
	scaler_27 DOUBLE, 
	scaler_28 DOUBLE, 
	scaler_29 DOUBLE, 
	scaler_30 DOUBLE, 
	scaler_31 DOUBLE, 
	scaler_32 DOUBLE, 
	scaler_33 DOUBLE, 
	scaler_34 DOUBLE, 
	scaler_35 DOUBLE, 
	scaler_36 DOUBLE, 
	scaler_37 DOUBLE, 
	scaler_38 DOUBLE, 
	scaler_39 DOUBLE, 
	scaler_40 DOUBLE, 
	scaler_41 DOUBLE, 
	scaler_42 DOUBLE, 
	scaler_43 DOUBLE, 
	scaler_44 DOUBLE, 
	scaler_45 DOUBLE, 
	scaler_46 DOUBLE, 
	scaler_47 DOUBLE, 
	scaler_48 DOUBLE, 
	scaler_49 DOUBLE, 
	scaler_50 DOUBLE, 
	scaler_51 DOUBLE, 
	scaler_52 DOUBLE, 
	scaler_53 DOUBLE, 
	scaler_54 DOUBLE, 
	scaler_55 DOUBLE, 
	scaler_56 DOUBLE, 
	scaler_57 DOUBLE, 
	scaler_58 DOUBLE, 
	scaler_59 DOUBLE, 
	scaler_60 DOUBLE, 
	scaler_61 DOUBLE, 
	scaler_62 DOUBLE, 
	scaler_63 DOUBLE, 
	scaler_64 DOUBLE, 
	scaler_65 DOUBLE, 
	scaler_66 DOUBLE, 
	scaler_67 DOUBLE, 
	scaler_68 DOUBLE, 
	scaler_69 DOUBLE, 
	scaler_70 DOUBLE, 
	scaler_71 DOUBLE, 
	scaler_72 DOUBLE, 
	scaler_73 DOUBLE, 
	scaler_74 DOUBLE, 
	scaler_75 DOUBLE, 
	scaler_76 DOUBLE, 
	scaler_77 DOUBLE, 
	scaler_78 DOUBLE, 
	scaler_79 DOUBLE, 
	scaler_80 DOUBLE, 
	scaler_81 DOUBLE, 
	scaler_82 DOUBLE, 
	scaler_83 DOUBLE, 
	scaler_84 DOUBLE, 
	scaler_85 DOUBLE, 
	scaler_86 DOUBLE, 
	scaler_87 DOUBLE, 
	scaler_88 DOUBLE, 
	scaler_89 DOUBLE, 
	scaler_90 DOUBLE, 
	scaler_91 DOUBLE, 
	scaler_92 DOUBLE, 
	scaler_93 DOUBLE, 
	scaler_94 DOUBLE, 
	scaler_95 DOUBLE, 
	scaler_96 DOUBLE, 
	scaler_97 DOUBLE, 
	scaler_98 DOUBLE, 
	scaler_99 DOUBLE, 
	scaler_100 DOUBLE, 
	scaler_101 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516112945_codegen_6sy11l_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516112945_codegen_6sy11l_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31, scaler_32, scaler_33, scaler_34, scaler_35, scaler_36, scaler_37, scaler_38, scaler_39, scaler_40, scaler_41, scaler_42, scaler_43, scaler_44, scaler_45, scaler_46, scaler_47, scaler_48, scaler_49, scaler_50, scaler_51, scaler_52, scaler_53, scaler_54, scaler_55, scaler_56, scaler_57, scaler_58, scaler_59, scaler_60, scaler_61, scaler_62, scaler_63, scaler_64, scaler_65, scaler_66, scaler_67, scaler_68, scaler_69, scaler_70, scaler_71, scaler_72, scaler_73, scaler_74, scaler_75, scaler_76, scaler_77, scaler_78, scaler_79, scaler_80, scaler_81, scaler_82, scaler_83, scaler_84, scaler_85, scaler_86, scaler_87, scaler_88, scaler_89, scaler_90, scaler_91, scaler_92, scaler_93, scaler_94, scaler_95, scaler_96, scaler_97, scaler_98, scaler_99, scaler_100, scaler_101) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31, "U".scaler_32, "U".scaler_33, "U".scaler_34, "U".scaler_35, "U".scaler_36, "U".scaler_37, "U".scaler_38, "U".scaler_39, "U".scaler_40, "U".scaler_41, "U".scaler_42, "U".scaler_43, "U".scaler_44, "U".scaler_45, "U".scaler_46, "U".scaler_47, "U".scaler_48, "U".scaler_49, "U".scaler_50, "U".scaler_51, "U".scaler_52, "U".scaler_53, "U".scaler_54, "U".scaler_55, "U".scaler_56, "U".scaler_57, "U".scaler_58, "U".scaler_59, "U".scaler_60, "U".scaler_61, "U".scaler_62, "U".scaler_63, "U".scaler_64, "U".scaler_65, "U".scaler_66, "U".scaler_67, "U".scaler_68, "U".scaler_69, "U".scaler_70, "U".scaler_71, "U".scaler_72, "U".scaler_73, "U".scaler_74, "U".scaler_75, "U".scaler_76, "U".scaler_77, "U".scaler_78, "U".scaler_79, "U".scaler_80, "U".scaler_81, "U".scaler_82, "U".scaler_83, "U".scaler_84, "U".scaler_85, "U".scaler_86, "U".scaler_87, "U".scaler_88, "U".scaler_89, "U".scaler_90, "U".scaler_91, "U".scaler_92, "U".scaler_93, "U".scaler_94, "U".scaler_95, "U".scaler_96, "U".scaler_97, "U".scaler_98, "U".scaler_99, "U".scaler_100, "U".scaler_101 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31, "ADS_sca_2_OUT".scaler_32, "ADS_sca_2_OUT".scaler_33, "ADS_sca_2_OUT".scaler_34, "ADS_sca_2_OUT".scaler_35, "ADS_sca_2_OUT".scaler_36, "ADS_sca_2_OUT".scaler_37, "ADS_sca_2_OUT".scaler_38, "ADS_sca_2_OUT".scaler_39, "ADS_sca_2_OUT".scaler_40, "ADS_sca_2_OUT".scaler_41, "ADS_sca_2_OUT".scaler_42, "ADS_sca_2_OUT".scaler_43, "ADS_sca_2_OUT".scaler_44, "ADS_sca_2_OUT".scaler_45, "ADS_sca_2_OUT".scaler_46, "ADS_sca_2_OUT".scaler_47, "ADS_sca_2_OUT".scaler_48, "ADS_sca_2_OUT".scaler_49, "ADS_sca_2_OUT".scaler_50, "ADS_sca_2_OUT".scaler_51, "ADS_sca_2_OUT".scaler_52, "ADS_sca_2_OUT".scaler_53, "ADS_sca_2_OUT".scaler_54, "ADS_sca_2_OUT".scaler_55, "ADS_sca_2_OUT".scaler_56, "ADS_sca_2_OUT".scaler_57, "ADS_sca_2_OUT".scaler_58, "ADS_sca_2_OUT".scaler_59, "ADS_sca_2_OUT".scaler_60, "ADS_sca_2_OUT".scaler_61, "ADS_sca_2_OUT".scaler_62, "ADS_sca_2_OUT".scaler_63, "ADS_sca_2_OUT".scaler_64, "ADS_sca_2_OUT".scaler_65, "ADS_sca_2_OUT".scaler_66, "ADS_sca_2_OUT".scaler_67, "ADS_sca_2_OUT".scaler_68, "ADS_sca_2_OUT".scaler_69, "ADS_sca_2_OUT".scaler_70, "ADS_sca_2_OUT".scaler_71, "ADS_sca_2_OUT".scaler_72, "ADS_sca_2_OUT".scaler_73, "ADS_sca_2_OUT".scaler_74, "ADS_sca_2_OUT".scaler_75, "ADS_sca_2_OUT".scaler_76, "ADS_sca_2_OUT".scaler_77, "ADS_sca_2_OUT".scaler_78, "ADS_sca_2_OUT".scaler_79, "ADS_sca_2_OUT".scaler_80, "ADS_sca_2_OUT".scaler_81, "ADS_sca_2_OUT".scaler_82, "ADS_sca_2_OUT".scaler_83, "ADS_sca_2_OUT".scaler_84, "ADS_sca_2_OUT".scaler_85, "ADS_sca_2_OUT".scaler_86, "ADS_sca_2_OUT".scaler_87, "ADS_sca_2_OUT".scaler_88, "ADS_sca_2_OUT".scaler_89, "ADS_sca_2_OUT".scaler_90, "ADS_sca_2_OUT".scaler_91, "ADS_sca_2_OUT".scaler_92, "ADS_sca_2_OUT".scaler_93, "ADS_sca_2_OUT".scaler_94, "ADS_sca_2_OUT".scaler_95, "ADS_sca_2_OUT".scaler_96, "ADS_sca_2_OUT".scaler_97, "ADS_sca_2_OUT".scaler_98, "ADS_sca_2_OUT".scaler_99, "ADS_sca_2_OUT".scaler_100, "ADS_sca_2_OUT".scaler_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - -0.0014807007689716506) / 0.9211229790312512 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - 0.08599214990681354) / 0.9627516809237073 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - -0.006358164676411468) / 0.7890687835102894 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - -0.024301807422776375) / 1.0265272189083172 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.015786548044298444) / 1.0198090908026474 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - -0.13959329445651672) / 0.9185551763293686 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - -0.06476745048019888) / 1.0393547249617474 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.025579810774090658) / 0.8722131294644917 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -0.03173937260977112) / 1.0164588299091024 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.1518141420862488) / 1.0075402114297496 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS DOUBLE) - -0.13244576558492482) / 0.9215325459816371 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS DOUBLE) - 0.044172679762224144) / 0.9053279964066308 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS DOUBLE) - 0.010165946719810038) / 1.2190371046063362 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS DOUBLE) - -0.03645872019103299) / 1.0879005786584215 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS DOUBLE) - 0.06491512811593925) / 1.0274670201407186 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS DOUBLE) - -0.11930146867074032) / 0.9506312349761404 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS DOUBLE) - 0.007738863934852773) / 1.0928477585203984 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS DOUBLE) - -0.1226774060147726) / 0.9830561715965196 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS DOUBLE) - 0.019160881669086405) / 1.2117417920836373 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS DOUBLE) - -0.26340351121131067) / 0.9807419262255984 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS DOUBLE) - 0.035692361937735194) / 1.115824498468156 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS DOUBLE) - -0.010021324964069293) / 1.0790959803413318 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS DOUBLE) - -0.1258614387723542) / 1.0279672611547366 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS DOUBLE) - 0.09372773898231128) / 0.9690760299303989 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS DOUBLE) - -0.1687929597880227) / 0.8845858581996813 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS DOUBLE) - 0.10006283199629364) / 0.9149346104000894 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS DOUBLE) - -0.10297858086822659) / 1.0761397500557328 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS DOUBLE) - 0.19240514535870415) / 2.089882492597775 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS DOUBLE) - -0.052866434246092435) / 1.0030777529896888 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS DOUBLE) - 0.2624612146366151) / 1.9778491038473625 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS DOUBLE) - 0.002677575140361194) / 0.8833924915211555 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS DOUBLE) - 0.09707041941284063) / 0.8720005351713555 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS DOUBLE) - -0.032793219857333473) / 0.8745989090443193 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS DOUBLE) - -0.003130273745908922) / 0.9967699097535561 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS DOUBLE) - 0.053446276216279974) / 0.9997289112199433 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS DOUBLE) - -0.18668146437412367) / 1.0272287171310865 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS DOUBLE) - -0.029335964960866243) / 1.0427555960451658 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS DOUBLE) - 0.07219772199502426) / 0.8328229890456742 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS DOUBLE) - -0.0007762839781489412) / 0.9666524356457794 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS DOUBLE) - 0.08270823712098274) / 1.083670494683493 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS DOUBLE) - 0.10432022852347983) / 1.075472547982714 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS DOUBLE) - 0.07058566385022276) / 0.9993462791463713 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS DOUBLE) - 0.05096693098357383) / 0.8876971252794036 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS DOUBLE) - 0.0660758203367818) / 1.041246125313479 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS DOUBLE) - -0.07075895636353369) / 2.238310207242139 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS DOUBLE) - 0.08422536561649958) / 0.9520959686676432 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS DOUBLE) - 0.21367580667795616) / 0.9907230316111766 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS DOUBLE) - -0.055897457335624984) / 1.0392400714320487 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS DOUBLE) - -0.17453036726139817) / 2.001507098381001 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS DOUBLE) - -0.054944001818473996) / 1.0041645540091246 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS DOUBLE) - -0.5961651261710368) / 2.467511153399545 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS DOUBLE) - 0.5020404526565605) / 2.1929325118287792 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS DOUBLE) - -0.052340545201383926) / 0.98465558791252 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS DOUBLE) - 0.05294307611674654) / 1.8137042567337183 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS DOUBLE) - 0.03835884479069335) / 0.9241326354411343 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS DOUBLE) - -0.13571979014964694) / 0.8679095755948701 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS DOUBLE) - -0.21903068431411843) / 4.150428869748413 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS DOUBLE) - -0.1191752362029383) / 0.9123333408128436 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS DOUBLE) - 0.38058346912807667) / 3.5635011086986927 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS DOUBLE) - -0.12720928974168508) / 0.9301024475991629 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS DOUBLE) - -0.09072936496613782) / 0.9490501277306023 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS DOUBLE) - -0.03915125937954538) / 0.9029504608473613 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS DOUBLE) - 0.07075412393313481) / 0.9726561682528103 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS DOUBLE) - 0.10124894587016948) / 0.9403075920249493 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS DOUBLE) - -0.1945661449475579) / 0.9400903625732654 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS DOUBLE) - -0.1759482981261233) / 0.9435422049943787 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS DOUBLE) - 0.07473228971855511) / 0.8871003964319768 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS DOUBLE) - 0.0377705562115906) / 1.0228978549196588 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS DOUBLE) - 0.0139470898598917) / 0.9465728329079491 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS DOUBLE) - 0.2582685725145942) / 1.1027232016521478 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS DOUBLE) - 0.022975786233048922) / 0.9200436904809381 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS DOUBLE) - 0.17445434061949525) / 0.9009964742482128 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS DOUBLE) - -0.011413879692078346) / 0.9483377025565977 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS DOUBLE) - 0.07898984156871978) / 0.9726668138861088 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS DOUBLE) - 0.0952547273770713) / 0.9607867245873394 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS DOUBLE) - -0.03997776839639901) / 1.0318828686080972 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS DOUBLE) - -0.020839895874293496) / 0.945141993694461 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS DOUBLE) - -0.07284631986613152) / 0.9103416784348913 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS DOUBLE) - -0.27389951764434384) / 2.0362603862996735 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS DOUBLE) - 0.08057287885287609) / 0.9919292944224015 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS DOUBLE) - -0.06244274245437891) / 0.8113039293824552 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS DOUBLE) - -0.12290855334066887) / 1.0307302654711112 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS DOUBLE) - 0.11639531793890918) / 0.9993591951135242 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS DOUBLE) - -0.03350462786128603) / 1.0197598648594488 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS DOUBLE) - -0.03914049968144583) / 0.9022051622058084 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS DOUBLE) - 0.24193903072305167) / 0.9625742678392476 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS DOUBLE) - -0.07389719862221904) / 1.0080070985430696 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS DOUBLE) - 0.1400756228320113) / 0.9315791274848828 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS DOUBLE) - 0.2765301935136145) / 1.9455982323178656 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS DOUBLE) - -0.07957147169250885) / 0.9688848077884671 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS DOUBLE) - 0.16295767680642717) / 0.8952741904110189 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS DOUBLE) - 0.07062813888509549) / 0.8331748322730601 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS DOUBLE) - 0.012995630151896219) / 1.059167248118017 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS DOUBLE) - 0.1055212408190415) / 1.0525988978000902 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS DOUBLE) - -0.1408434425354362) / 0.9172372033996682 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS DOUBLE) - -0.1574012366732725) / 0.9930125433643069 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS DOUBLE) - 0.05477536676313335) / 0.9803136353653645 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS DOUBLE) - 0.05673272205919614) / 0.9296338032188498 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS DOUBLE) - -0.14226649213619527) / 1.174442941822933 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS DOUBLE) - -0.04042675289131955) / 1.983747550989713 AS scaler_101 
FROM tmp_20180516112945_codegen_ts9uvy_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", rand() AS uniform 
FROM tmp_20180516112945_codegen_6sy11l_ads_sca_2_out AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.25) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.5104166666666667) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.7500000000000001) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 3 END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.25 AS "Proba_0", log(CASE WHEN (0.25 IS NULL OR 0.25 > 1e-100) THEN 0.25 ELSE 1e-100 END) AS "LogProba_0", 0.2604166666666667 AS "Proba_1", log(CASE WHEN (0.2604166666666667 IS NULL OR 0.2604166666666667 > 1e-100) THEN 0.2604166666666667 ELSE 1e-100 END) AS "LogProba_1", 0.23958333333333334 AS "Proba_2", log(CASE WHEN (0.23958333333333334 IS NULL OR 0.23958333333333334 > 1e-100) THEN 0.23958333333333334 ELSE 1e-100 END) AS "LogProba_2", 0.25 AS "Proba_3", log(CASE WHEN (0.25 IS NULL OR 0.25 > 1e-100) THEN 0.25 ELSE 1e-100 END) AS "LogProba_3", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS DOUBLE) AS "Score_0", CAST(NULL AS DOUBLE) AS "Score_1", CAST(NULL AS DOUBLE) AS "Score_2", CAST(NULL AS DOUBLE) AS "Score_3", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM dummy_class_reg_cte