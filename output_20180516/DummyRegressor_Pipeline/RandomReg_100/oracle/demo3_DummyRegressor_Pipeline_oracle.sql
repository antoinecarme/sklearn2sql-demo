-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyRegressor_Pipeline
-- Dataset : RandomReg_100
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table DEGEN_R7AMD5_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_R7AMD5_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	impter_2 BINARY_DOUBLE, 
	impter_3 BINARY_DOUBLE, 
	impter_4 BINARY_DOUBLE, 
	impter_5 BINARY_DOUBLE, 
	impter_6 BINARY_DOUBLE, 
	impter_7 BINARY_DOUBLE, 
	impter_8 BINARY_DOUBLE, 
	impter_9 BINARY_DOUBLE, 
	impter_10 BINARY_DOUBLE, 
	impter_11 BINARY_DOUBLE, 
	impter_12 BINARY_DOUBLE, 
	impter_13 BINARY_DOUBLE, 
	impter_14 BINARY_DOUBLE, 
	impter_15 BINARY_DOUBLE, 
	impter_16 BINARY_DOUBLE, 
	impter_17 BINARY_DOUBLE, 
	impter_18 BINARY_DOUBLE, 
	impter_19 BINARY_DOUBLE, 
	impter_20 BINARY_DOUBLE, 
	impter_21 BINARY_DOUBLE, 
	impter_22 BINARY_DOUBLE, 
	impter_23 BINARY_DOUBLE, 
	impter_24 BINARY_DOUBLE, 
	impter_25 BINARY_DOUBLE, 
	impter_26 BINARY_DOUBLE, 
	impter_27 BINARY_DOUBLE, 
	impter_28 BINARY_DOUBLE, 
	impter_29 BINARY_DOUBLE, 
	impter_30 BINARY_DOUBLE, 
	impter_31 BINARY_DOUBLE, 
	impter_32 BINARY_DOUBLE, 
	impter_33 BINARY_DOUBLE, 
	impter_34 BINARY_DOUBLE, 
	impter_35 BINARY_DOUBLE, 
	impter_36 BINARY_DOUBLE, 
	impter_37 BINARY_DOUBLE, 
	impter_38 BINARY_DOUBLE, 
	impter_39 BINARY_DOUBLE, 
	impter_40 BINARY_DOUBLE, 
	impter_41 BINARY_DOUBLE, 
	impter_42 BINARY_DOUBLE, 
	impter_43 BINARY_DOUBLE, 
	impter_44 BINARY_DOUBLE, 
	impter_45 BINARY_DOUBLE, 
	impter_46 BINARY_DOUBLE, 
	impter_47 BINARY_DOUBLE, 
	impter_48 BINARY_DOUBLE, 
	impter_49 BINARY_DOUBLE, 
	impter_50 BINARY_DOUBLE, 
	impter_51 BINARY_DOUBLE, 
	impter_52 BINARY_DOUBLE, 
	impter_53 BINARY_DOUBLE, 
	impter_54 BINARY_DOUBLE, 
	impter_55 BINARY_DOUBLE, 
	impter_56 BINARY_DOUBLE, 
	impter_57 BINARY_DOUBLE, 
	impter_58 BINARY_DOUBLE, 
	impter_59 BINARY_DOUBLE, 
	impter_60 BINARY_DOUBLE, 
	impter_61 BINARY_DOUBLE, 
	impter_62 BINARY_DOUBLE, 
	impter_63 BINARY_DOUBLE, 
	impter_64 BINARY_DOUBLE, 
	impter_65 BINARY_DOUBLE, 
	impter_66 BINARY_DOUBLE, 
	impter_67 BINARY_DOUBLE, 
	impter_68 BINARY_DOUBLE, 
	impter_69 BINARY_DOUBLE, 
	impter_70 BINARY_DOUBLE, 
	impter_71 BINARY_DOUBLE, 
	impter_72 BINARY_DOUBLE, 
	impter_73 BINARY_DOUBLE, 
	impter_74 BINARY_DOUBLE, 
	impter_75 BINARY_DOUBLE, 
	impter_76 BINARY_DOUBLE, 
	impter_77 BINARY_DOUBLE, 
	impter_78 BINARY_DOUBLE, 
	impter_79 BINARY_DOUBLE, 
	impter_80 BINARY_DOUBLE, 
	impter_81 BINARY_DOUBLE, 
	impter_82 BINARY_DOUBLE, 
	impter_83 BINARY_DOUBLE, 
	impter_84 BINARY_DOUBLE, 
	impter_85 BINARY_DOUBLE, 
	impter_86 BINARY_DOUBLE, 
	impter_87 BINARY_DOUBLE, 
	impter_88 BINARY_DOUBLE, 
	impter_89 BINARY_DOUBLE, 
	impter_90 BINARY_DOUBLE, 
	impter_91 BINARY_DOUBLE, 
	impter_92 BINARY_DOUBLE, 
	impter_93 BINARY_DOUBLE, 
	impter_94 BINARY_DOUBLE, 
	impter_95 BINARY_DOUBLE, 
	impter_96 BINARY_DOUBLE, 
	impter_97 BINARY_DOUBLE, 
	impter_98 BINARY_DOUBLE, 
	impter_99 BINARY_DOUBLE, 
	impter_100 BINARY_DOUBLE, 
	impter_101 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_R7AMD5_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "DEGEN_R7AMD5_ADS_IMP_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31, impter_32, impter_33, impter_34, impter_35, impter_36, impter_37, impter_38, impter_39, impter_40, impter_41, impter_42, impter_43, impter_44, impter_45, impter_46, impter_47, impter_48, impter_49, impter_50, impter_51, impter_52, impter_53, impter_54, impter_55, impter_56, impter_57, impter_58, impter_59, impter_60, impter_61, impter_62, impter_63, impter_64, impter_65, impter_66, impter_67, impter_68, impter_69, impter_70, impter_71, impter_72, impter_73, impter_74, impter_75, impter_76, impter_77, impter_78, impter_79, impter_80, impter_81, impter_82, impter_83, impter_84, impter_85, impter_86, impter_87, impter_88, impter_89, impter_90, impter_91, impter_92, impter_93, impter_94, impter_95, impter_96, impter_97, impter_98, impter_99, impter_100, impter_101) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11, "U".impter_12, "U".impter_13, "U".impter_14, "U".impter_15, "U".impter_16, "U".impter_17, "U".impter_18, "U".impter_19, "U".impter_20, "U".impter_21, "U".impter_22, "U".impter_23, "U".impter_24, "U".impter_25, "U".impter_26, "U".impter_27, "U".impter_28, "U".impter_29, "U".impter_30, "U".impter_31, "U".impter_32, "U".impter_33, "U".impter_34, "U".impter_35, "U".impter_36, "U".impter_37, "U".impter_38, "U".impter_39, "U".impter_40, "U".impter_41, "U".impter_42, "U".impter_43, "U".impter_44, "U".impter_45, "U".impter_46, "U".impter_47, "U".impter_48, "U".impter_49, "U".impter_50, "U".impter_51, "U".impter_52, "U".impter_53, "U".impter_54, "U".impter_55, "U".impter_56, "U".impter_57, "U".impter_58, "U".impter_59, "U".impter_60, "U".impter_61, "U".impter_62, "U".impter_63, "U".impter_64, "U".impter_65, "U".impter_66, "U".impter_67, "U".impter_68, "U".impter_69, "U".impter_70, "U".impter_71, "U".impter_72, "U".impter_73, "U".impter_74, "U".impter_75, "U".impter_76, "U".impter_77, "U".impter_78, "U".impter_79, "U".impter_80, "U".impter_81, "U".impter_82, "U".impter_83, "U".impter_84, "U".impter_85, "U".impter_86, "U".impter_87, "U".impter_88, "U".impter_89, "U".impter_90, "U".impter_91, "U".impter_92, "U".impter_93, "U".impter_94, "U".impter_95, "U".impter_96, "U".impter_97, "U".impter_98, "U".impter_99, "U".impter_100, "U".impter_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31, "ADS_imp_1_OUT".impter_32, "ADS_imp_1_OUT".impter_33, "ADS_imp_1_OUT".impter_34, "ADS_imp_1_OUT".impter_35, "ADS_imp_1_OUT".impter_36, "ADS_imp_1_OUT".impter_37, "ADS_imp_1_OUT".impter_38, "ADS_imp_1_OUT".impter_39, "ADS_imp_1_OUT".impter_40, "ADS_imp_1_OUT".impter_41, "ADS_imp_1_OUT".impter_42, "ADS_imp_1_OUT".impter_43, "ADS_imp_1_OUT".impter_44, "ADS_imp_1_OUT".impter_45, "ADS_imp_1_OUT".impter_46, "ADS_imp_1_OUT".impter_47, "ADS_imp_1_OUT".impter_48, "ADS_imp_1_OUT".impter_49, "ADS_imp_1_OUT".impter_50, "ADS_imp_1_OUT".impter_51, "ADS_imp_1_OUT".impter_52, "ADS_imp_1_OUT".impter_53, "ADS_imp_1_OUT".impter_54, "ADS_imp_1_OUT".impter_55, "ADS_imp_1_OUT".impter_56, "ADS_imp_1_OUT".impter_57, "ADS_imp_1_OUT".impter_58, "ADS_imp_1_OUT".impter_59, "ADS_imp_1_OUT".impter_60, "ADS_imp_1_OUT".impter_61, "ADS_imp_1_OUT".impter_62, "ADS_imp_1_OUT".impter_63, "ADS_imp_1_OUT".impter_64, "ADS_imp_1_OUT".impter_65, "ADS_imp_1_OUT".impter_66, "ADS_imp_1_OUT".impter_67, "ADS_imp_1_OUT".impter_68, "ADS_imp_1_OUT".impter_69, "ADS_imp_1_OUT".impter_70, "ADS_imp_1_OUT".impter_71, "ADS_imp_1_OUT".impter_72, "ADS_imp_1_OUT".impter_73, "ADS_imp_1_OUT".impter_74, "ADS_imp_1_OUT".impter_75, "ADS_imp_1_OUT".impter_76, "ADS_imp_1_OUT".impter_77, "ADS_imp_1_OUT".impter_78, "ADS_imp_1_OUT".impter_79, "ADS_imp_1_OUT".impter_80, "ADS_imp_1_OUT".impter_81, "ADS_imp_1_OUT".impter_82, "ADS_imp_1_OUT".impter_83, "ADS_imp_1_OUT".impter_84, "ADS_imp_1_OUT".impter_85, "ADS_imp_1_OUT".impter_86, "ADS_imp_1_OUT".impter_87, "ADS_imp_1_OUT".impter_88, "ADS_imp_1_OUT".impter_89, "ADS_imp_1_OUT".impter_90, "ADS_imp_1_OUT".impter_91, "ADS_imp_1_OUT".impter_92, "ADS_imp_1_OUT".impter_93, "ADS_imp_1_OUT".impter_94, "ADS_imp_1_OUT".impter_95, "ADS_imp_1_OUT".impter_96, "ADS_imp_1_OUT".impter_97, "ADS_imp_1_OUT".impter_98, "ADS_imp_1_OUT".impter_99, "ADS_imp_1_OUT".impter_100, "ADS_imp_1_OUT".impter_101 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.08128085300192169 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.13436805172534722 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN -0.1171335439265335 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.10314525691526008 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.04859877061601238 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.09985694677353979 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0672774556565916 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.1622384092846963 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.04069362852608218 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.051659905088603277 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.10179067839269526 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN -0.1759747362698276 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.09675138494095058 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.04608656912634662 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.10165852286085655 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.11179903010835046 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.006110233359380335 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.07144704068910084 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.08808458650118434 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.07182799000884085 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN -0.07230200847310368 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.02896693079944173 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.21388217632997558 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN -0.06669297919409706 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.046152348549980085 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.03249513222766133 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.05224239330612866 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.018745871966632584 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.015553079229790346 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.2258153729902979 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.16989857778838335 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.036044309156992346 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN -0.17199324162640067 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.13781418887864322 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN -0.002438210964217244 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.060833749131451356 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.18905998689974024 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN -0.09635219278465344 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.10160667507355636 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.06475250541578681 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN -0.30264305036051603 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN -0.13264155681878692 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.1334054780733323 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN -0.0011436009702802522 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN -0.05335157908923337 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 0.01714537002687063 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.059059449572612485 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN -0.09528879968183994 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN -0.15781363463365924 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN -0.23794433392453432 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 0.13863850693032237 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.01699621991492915 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.19701490003754304 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 0.05162990473238551 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN -0.13453002098662553 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.14789370104559646 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.013142759438358454 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN -0.09299162994657897 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.24689492768975088 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.13499727108287438 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 0.0025544005507731047 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 0.12527368663465327 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN -0.03739962296055886 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.02998869580177853 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.04286088516871345 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN -0.1438347006651433 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN -0.05269793910889183 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN 0.029267940271277926 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN 0.10431080888322372 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN -0.09619687433047125 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN 0.0067333192983315745 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN 0.03289665935367682 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN 0.08064277275460055 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN -0.10603556755491854 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN 0.09489100148295918 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN -0.19664887110008689 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN 0.11652643514949582 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN 0.19340218348071325 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN 0.11209709087907249 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.10709013621222807 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.01033042920922311 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN 0.11026552104356717 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN 0.01191634589453312 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN 0.013369825695028714 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN -0.1500512000702785 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN -0.09022177579448487 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN -0.16029625657228264 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.10127017293489289 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN 0.3323543006292627 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN 0.051731173060791114 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.1078879212202887 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN 0.21454931874740585 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN -0.16317337769942666 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.2242384076879583 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN -0.27695847565296017 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN 0.037863552135044866 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN -0.02758852803141265 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.1052877881031243 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN 0.06640703380221318 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.06569930995842384 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "RANDOMREG_100" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table DEGEN_MSXWIV_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_MSXWIV_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_2 BINARY_DOUBLE, 
	scaler_3 BINARY_DOUBLE, 
	scaler_4 BINARY_DOUBLE, 
	scaler_5 BINARY_DOUBLE, 
	scaler_6 BINARY_DOUBLE, 
	scaler_7 BINARY_DOUBLE, 
	scaler_8 BINARY_DOUBLE, 
	scaler_9 BINARY_DOUBLE, 
	scaler_10 BINARY_DOUBLE, 
	scaler_11 BINARY_DOUBLE, 
	scaler_12 BINARY_DOUBLE, 
	scaler_13 BINARY_DOUBLE, 
	scaler_14 BINARY_DOUBLE, 
	scaler_15 BINARY_DOUBLE, 
	scaler_16 BINARY_DOUBLE, 
	scaler_17 BINARY_DOUBLE, 
	scaler_18 BINARY_DOUBLE, 
	scaler_19 BINARY_DOUBLE, 
	scaler_20 BINARY_DOUBLE, 
	scaler_21 BINARY_DOUBLE, 
	scaler_22 BINARY_DOUBLE, 
	scaler_23 BINARY_DOUBLE, 
	scaler_24 BINARY_DOUBLE, 
	scaler_25 BINARY_DOUBLE, 
	scaler_26 BINARY_DOUBLE, 
	scaler_27 BINARY_DOUBLE, 
	scaler_28 BINARY_DOUBLE, 
	scaler_29 BINARY_DOUBLE, 
	scaler_30 BINARY_DOUBLE, 
	scaler_31 BINARY_DOUBLE, 
	scaler_32 BINARY_DOUBLE, 
	scaler_33 BINARY_DOUBLE, 
	scaler_34 BINARY_DOUBLE, 
	scaler_35 BINARY_DOUBLE, 
	scaler_36 BINARY_DOUBLE, 
	scaler_37 BINARY_DOUBLE, 
	scaler_38 BINARY_DOUBLE, 
	scaler_39 BINARY_DOUBLE, 
	scaler_40 BINARY_DOUBLE, 
	scaler_41 BINARY_DOUBLE, 
	scaler_42 BINARY_DOUBLE, 
	scaler_43 BINARY_DOUBLE, 
	scaler_44 BINARY_DOUBLE, 
	scaler_45 BINARY_DOUBLE, 
	scaler_46 BINARY_DOUBLE, 
	scaler_47 BINARY_DOUBLE, 
	scaler_48 BINARY_DOUBLE, 
	scaler_49 BINARY_DOUBLE, 
	scaler_50 BINARY_DOUBLE, 
	scaler_51 BINARY_DOUBLE, 
	scaler_52 BINARY_DOUBLE, 
	scaler_53 BINARY_DOUBLE, 
	scaler_54 BINARY_DOUBLE, 
	scaler_55 BINARY_DOUBLE, 
	scaler_56 BINARY_DOUBLE, 
	scaler_57 BINARY_DOUBLE, 
	scaler_58 BINARY_DOUBLE, 
	scaler_59 BINARY_DOUBLE, 
	scaler_60 BINARY_DOUBLE, 
	scaler_61 BINARY_DOUBLE, 
	scaler_62 BINARY_DOUBLE, 
	scaler_63 BINARY_DOUBLE, 
	scaler_64 BINARY_DOUBLE, 
	scaler_65 BINARY_DOUBLE, 
	scaler_66 BINARY_DOUBLE, 
	scaler_67 BINARY_DOUBLE, 
	scaler_68 BINARY_DOUBLE, 
	scaler_69 BINARY_DOUBLE, 
	scaler_70 BINARY_DOUBLE, 
	scaler_71 BINARY_DOUBLE, 
	scaler_72 BINARY_DOUBLE, 
	scaler_73 BINARY_DOUBLE, 
	scaler_74 BINARY_DOUBLE, 
	scaler_75 BINARY_DOUBLE, 
	scaler_76 BINARY_DOUBLE, 
	scaler_77 BINARY_DOUBLE, 
	scaler_78 BINARY_DOUBLE, 
	scaler_79 BINARY_DOUBLE, 
	scaler_80 BINARY_DOUBLE, 
	scaler_81 BINARY_DOUBLE, 
	scaler_82 BINARY_DOUBLE, 
	scaler_83 BINARY_DOUBLE, 
	scaler_84 BINARY_DOUBLE, 
	scaler_85 BINARY_DOUBLE, 
	scaler_86 BINARY_DOUBLE, 
	scaler_87 BINARY_DOUBLE, 
	scaler_88 BINARY_DOUBLE, 
	scaler_89 BINARY_DOUBLE, 
	scaler_90 BINARY_DOUBLE, 
	scaler_91 BINARY_DOUBLE, 
	scaler_92 BINARY_DOUBLE, 
	scaler_93 BINARY_DOUBLE, 
	scaler_94 BINARY_DOUBLE, 
	scaler_95 BINARY_DOUBLE, 
	scaler_96 BINARY_DOUBLE, 
	scaler_97 BINARY_DOUBLE, 
	scaler_98 BINARY_DOUBLE, 
	scaler_99 BINARY_DOUBLE, 
	scaler_100 BINARY_DOUBLE, 
	scaler_101 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_MSXWIV_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "DEGEN_MSXWIV_ADS_SCA_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31, scaler_32, scaler_33, scaler_34, scaler_35, scaler_36, scaler_37, scaler_38, scaler_39, scaler_40, scaler_41, scaler_42, scaler_43, scaler_44, scaler_45, scaler_46, scaler_47, scaler_48, scaler_49, scaler_50, scaler_51, scaler_52, scaler_53, scaler_54, scaler_55, scaler_56, scaler_57, scaler_58, scaler_59, scaler_60, scaler_61, scaler_62, scaler_63, scaler_64, scaler_65, scaler_66, scaler_67, scaler_68, scaler_69, scaler_70, scaler_71, scaler_72, scaler_73, scaler_74, scaler_75, scaler_76, scaler_77, scaler_78, scaler_79, scaler_80, scaler_81, scaler_82, scaler_83, scaler_84, scaler_85, scaler_86, scaler_87, scaler_88, scaler_89, scaler_90, scaler_91, scaler_92, scaler_93, scaler_94, scaler_95, scaler_96, scaler_97, scaler_98, scaler_99, scaler_100, scaler_101) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11, "U".scaler_12, "U".scaler_13, "U".scaler_14, "U".scaler_15, "U".scaler_16, "U".scaler_17, "U".scaler_18, "U".scaler_19, "U".scaler_20, "U".scaler_21, "U".scaler_22, "U".scaler_23, "U".scaler_24, "U".scaler_25, "U".scaler_26, "U".scaler_27, "U".scaler_28, "U".scaler_29, "U".scaler_30, "U".scaler_31, "U".scaler_32, "U".scaler_33, "U".scaler_34, "U".scaler_35, "U".scaler_36, "U".scaler_37, "U".scaler_38, "U".scaler_39, "U".scaler_40, "U".scaler_41, "U".scaler_42, "U".scaler_43, "U".scaler_44, "U".scaler_45, "U".scaler_46, "U".scaler_47, "U".scaler_48, "U".scaler_49, "U".scaler_50, "U".scaler_51, "U".scaler_52, "U".scaler_53, "U".scaler_54, "U".scaler_55, "U".scaler_56, "U".scaler_57, "U".scaler_58, "U".scaler_59, "U".scaler_60, "U".scaler_61, "U".scaler_62, "U".scaler_63, "U".scaler_64, "U".scaler_65, "U".scaler_66, "U".scaler_67, "U".scaler_68, "U".scaler_69, "U".scaler_70, "U".scaler_71, "U".scaler_72, "U".scaler_73, "U".scaler_74, "U".scaler_75, "U".scaler_76, "U".scaler_77, "U".scaler_78, "U".scaler_79, "U".scaler_80, "U".scaler_81, "U".scaler_82, "U".scaler_83, "U".scaler_84, "U".scaler_85, "U".scaler_86, "U".scaler_87, "U".scaler_88, "U".scaler_89, "U".scaler_90, "U".scaler_91, "U".scaler_92, "U".scaler_93, "U".scaler_94, "U".scaler_95, "U".scaler_96, "U".scaler_97, "U".scaler_98, "U".scaler_99, "U".scaler_100, "U".scaler_101 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31, "ADS_sca_2_OUT".scaler_32, "ADS_sca_2_OUT".scaler_33, "ADS_sca_2_OUT".scaler_34, "ADS_sca_2_OUT".scaler_35, "ADS_sca_2_OUT".scaler_36, "ADS_sca_2_OUT".scaler_37, "ADS_sca_2_OUT".scaler_38, "ADS_sca_2_OUT".scaler_39, "ADS_sca_2_OUT".scaler_40, "ADS_sca_2_OUT".scaler_41, "ADS_sca_2_OUT".scaler_42, "ADS_sca_2_OUT".scaler_43, "ADS_sca_2_OUT".scaler_44, "ADS_sca_2_OUT".scaler_45, "ADS_sca_2_OUT".scaler_46, "ADS_sca_2_OUT".scaler_47, "ADS_sca_2_OUT".scaler_48, "ADS_sca_2_OUT".scaler_49, "ADS_sca_2_OUT".scaler_50, "ADS_sca_2_OUT".scaler_51, "ADS_sca_2_OUT".scaler_52, "ADS_sca_2_OUT".scaler_53, "ADS_sca_2_OUT".scaler_54, "ADS_sca_2_OUT".scaler_55, "ADS_sca_2_OUT".scaler_56, "ADS_sca_2_OUT".scaler_57, "ADS_sca_2_OUT".scaler_58, "ADS_sca_2_OUT".scaler_59, "ADS_sca_2_OUT".scaler_60, "ADS_sca_2_OUT".scaler_61, "ADS_sca_2_OUT".scaler_62, "ADS_sca_2_OUT".scaler_63, "ADS_sca_2_OUT".scaler_64, "ADS_sca_2_OUT".scaler_65, "ADS_sca_2_OUT".scaler_66, "ADS_sca_2_OUT".scaler_67, "ADS_sca_2_OUT".scaler_68, "ADS_sca_2_OUT".scaler_69, "ADS_sca_2_OUT".scaler_70, "ADS_sca_2_OUT".scaler_71, "ADS_sca_2_OUT".scaler_72, "ADS_sca_2_OUT".scaler_73, "ADS_sca_2_OUT".scaler_74, "ADS_sca_2_OUT".scaler_75, "ADS_sca_2_OUT".scaler_76, "ADS_sca_2_OUT".scaler_77, "ADS_sca_2_OUT".scaler_78, "ADS_sca_2_OUT".scaler_79, "ADS_sca_2_OUT".scaler_80, "ADS_sca_2_OUT".scaler_81, "ADS_sca_2_OUT".scaler_82, "ADS_sca_2_OUT".scaler_83, "ADS_sca_2_OUT".scaler_84, "ADS_sca_2_OUT".scaler_85, "ADS_sca_2_OUT".scaler_86, "ADS_sca_2_OUT".scaler_87, "ADS_sca_2_OUT".scaler_88, "ADS_sca_2_OUT".scaler_89, "ADS_sca_2_OUT".scaler_90, "ADS_sca_2_OUT".scaler_91, "ADS_sca_2_OUT".scaler_92, "ADS_sca_2_OUT".scaler_93, "ADS_sca_2_OUT".scaler_94, "ADS_sca_2_OUT".scaler_95, "ADS_sca_2_OUT".scaler_96, "ADS_sca_2_OUT".scaler_97, "ADS_sca_2_OUT".scaler_98, "ADS_sca_2_OUT".scaler_99, "ADS_sca_2_OUT".scaler_100, "ADS_sca_2_OUT".scaler_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS BINARY_DOUBLE) - -0.08128085300192169) / 1.0000403559305833 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS BINARY_DOUBLE) - -0.13436805172534722) / 0.8837904988184502 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS BINARY_DOUBLE) - -0.1171335439265335) / 0.8570569022899862 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS BINARY_DOUBLE) - 0.10314525691526008) / 1.0029176283530983 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS BINARY_DOUBLE) - 0.04859877061601238) / 0.9128966632538227 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS BINARY_DOUBLE) - 0.09985694677353979) / 0.8987090594452791 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS BINARY_DOUBLE) - 0.0672774556565916) / 1.0142447611518557 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS BINARY_DOUBLE) - 0.1622384092846963) / 1.0747662307530297 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS BINARY_DOUBLE) - 0.04069362852608218) / 1.026267867232466 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS BINARY_DOUBLE) - 0.051659905088603277) / 0.8402436043740567 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS BINARY_DOUBLE) - 0.10179067839269526) / 1.0068242363938393 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS BINARY_DOUBLE) - -0.1759747362698276) / 0.9240710764915452 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS BINARY_DOUBLE) - -0.09675138494095058) / 0.9783790869772869 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS BINARY_DOUBLE) - -0.04608656912634662) / 0.9781135354292492 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS BINARY_DOUBLE) - 0.10165852286085655) / 0.9014456978711726 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS BINARY_DOUBLE) - 0.11179903010835046) / 0.9779155034856741 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS BINARY_DOUBLE) - -0.006110233359380335) / 0.9981020697621527 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS BINARY_DOUBLE) - 0.07144704068910084) / 0.8874816465174282 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS BINARY_DOUBLE) - -0.08808458650118434) / 0.8392925703736469 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS BINARY_DOUBLE) - -0.07182799000884085) / 0.9507419765776924 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS BINARY_DOUBLE) - -0.07230200847310368) / 1.066826998652098 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS BINARY_DOUBLE) - 0.02896693079944173) / 0.9902823724923776 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS BINARY_DOUBLE) - 0.21388217632997558) / 0.8623253968778218 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS BINARY_DOUBLE) - -0.06669297919409706) / 0.9598770564082906 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS BINARY_DOUBLE) - 0.046152348549980085) / 0.9878502885847017 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS BINARY_DOUBLE) - 0.03249513222766133) / 0.9583954740248698 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS BINARY_DOUBLE) - 0.05224239330612866) / 0.9771107275041324 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS BINARY_DOUBLE) - 0.018745871966632584) / 1.0557199260759529 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS BINARY_DOUBLE) - 0.015553079229790346) / 0.9376481022022428 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS BINARY_DOUBLE) - 0.2258153729902979) / 1.0513597556957384 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS BINARY_DOUBLE) - -0.16989857778838335) / 1.0578168863571897 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS BINARY_DOUBLE) - 0.036044309156992346) / 0.9200106573435598 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS BINARY_DOUBLE) - -0.17199324162640067) / 0.9814800251435433 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS BINARY_DOUBLE) - 0.13781418887864322) / 0.9177012051168076 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS BINARY_DOUBLE) - -0.002438210964217244) / 0.8944380116105023 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS BINARY_DOUBLE) - 0.060833749131451356) / 0.9361651054882097 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS BINARY_DOUBLE) - -0.18905998689974024) / 1.1290398175800667 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS BINARY_DOUBLE) - -0.09635219278465344) / 1.0703546254505507 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS BINARY_DOUBLE) - -0.10160667507355636) / 0.920646499226522 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS BINARY_DOUBLE) - 0.06475250541578681) / 0.8986109106193976 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS BINARY_DOUBLE) - -0.30264305036051603) / 1.1304324059677955 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS BINARY_DOUBLE) - -0.13264155681878692) / 0.8585260796845616 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS BINARY_DOUBLE) - -0.1334054780733323) / 0.962489523355931 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS BINARY_DOUBLE) - -0.0011436009702802522) / 0.9049370484050282 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS BINARY_DOUBLE) - -0.05335157908923337) / 1.0610026457631268 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS BINARY_DOUBLE) - 0.01714537002687063) / 0.9557097858300829 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS BINARY_DOUBLE) - -0.059059449572612485) / 1.0894822012599163 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS BINARY_DOUBLE) - -0.09528879968183994) / 0.8571475953382788 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS BINARY_DOUBLE) - -0.15781363463365924) / 0.9919635867517769 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS BINARY_DOUBLE) - -0.23794433392453432) / 1.0067503129721596 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS BINARY_DOUBLE) - 0.13863850693032237) / 1.0279273388893944 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS BINARY_DOUBLE) - -0.01699621991492915) / 0.974408927553762 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS BINARY_DOUBLE) - 0.19701490003754304) / 0.8684920711659356 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS BINARY_DOUBLE) - 0.05162990473238551) / 0.8943974752234072 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS BINARY_DOUBLE) - -0.13453002098662553) / 0.9634839659318408 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS BINARY_DOUBLE) - 0.14789370104559646) / 1.0615399626185422 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS BINARY_DOUBLE) - -0.013142759438358454) / 0.9772015278495697 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS BINARY_DOUBLE) - -0.09299162994657897) / 1.007175843550957 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS BINARY_DOUBLE) - -0.24689492768975088) / 0.9237354128048836 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS BINARY_DOUBLE) - 0.13499727108287438) / 1.1015843688177136 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS BINARY_DOUBLE) - 0.0025544005507731047) / 1.0664451639404966 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS BINARY_DOUBLE) - 0.12527368663465327) / 1.1035677221918443 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS BINARY_DOUBLE) - -0.03739962296055886) / 1.0321694444223468 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS BINARY_DOUBLE) - -0.02998869580177853) / 1.0714904800508076 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS BINARY_DOUBLE) - -0.04286088516871345) / 1.1900007472884844 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS BINARY_DOUBLE) - -0.1438347006651433) / 0.9838632536243364 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS BINARY_DOUBLE) - -0.05269793910889183) / 1.133004109638514 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS BINARY_DOUBLE) - 0.029267940271277926) / 0.9505911883818412 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS BINARY_DOUBLE) - 0.10431080888322372) / 0.9124892804740817 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS BINARY_DOUBLE) - -0.09619687433047125) / 1.0435263748552108 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS BINARY_DOUBLE) - 0.0067333192983315745) / 1.0686226130046215 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS BINARY_DOUBLE) - 0.03289665935367682) / 0.859185924601115 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS BINARY_DOUBLE) - 0.08064277275460055) / 1.031072803981909 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS BINARY_DOUBLE) - -0.10603556755491854) / 0.9757644491800123 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS BINARY_DOUBLE) - 0.09489100148295918) / 0.9082861753672621 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS BINARY_DOUBLE) - -0.19664887110008689) / 0.9570091111503233 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS BINARY_DOUBLE) - 0.11652643514949582) / 0.8906993645060894 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS BINARY_DOUBLE) - 0.19340218348071325) / 1.015190635438741 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS BINARY_DOUBLE) - 0.11209709087907249) / 1.0005941329026147 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS BINARY_DOUBLE) - 0.10709013621222807) / 0.9981990995405838 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS BINARY_DOUBLE) - -0.01033042920922311) / 1.1261340687039605 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS BINARY_DOUBLE) - 0.11026552104356717) / 1.0203631595796565 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS BINARY_DOUBLE) - 0.01191634589453312) / 0.9520198315890641 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS BINARY_DOUBLE) - 0.013369825695028714) / 1.0539650476886062 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS BINARY_DOUBLE) - -0.1500512000702785) / 0.9981993823991944 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS BINARY_DOUBLE) - -0.09022177579448487) / 0.9119054985661357 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS BINARY_DOUBLE) - -0.16029625657228264) / 1.0530611443946694 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS BINARY_DOUBLE) - -0.10127017293489289) / 1.0673088162334932 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS BINARY_DOUBLE) - 0.3323543006292627) / 0.8517398608796033 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS BINARY_DOUBLE) - 0.051731173060791114) / 0.9036571972083375 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS BINARY_DOUBLE) - 0.1078879212202887) / 0.9679161746442023 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS BINARY_DOUBLE) - 0.21454931874740585) / 0.9059278397749674 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS BINARY_DOUBLE) - -0.16317337769942666) / 1.097718994991099 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS BINARY_DOUBLE) - -0.2242384076879583) / 0.7859624368027274 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS BINARY_DOUBLE) - -0.27695847565296017) / 1.000759742410346 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS BINARY_DOUBLE) - 0.037863552135044866) / 0.9617491014855645 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS BINARY_DOUBLE) - -0.02758852803141265) / 0.888578840707713 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS BINARY_DOUBLE) - 0.1052877881031243) / 0.9881179437649864 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS BINARY_DOUBLE) - 0.06640703380221318) / 0.8931321524560405 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS BINARY_DOUBLE) - 0.06569930995842384) / 0.9367001351824711 AS scaler_101 
FROM "DEGEN_R7AMD5_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Model deployment code

WITH dummy_class_reg_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", -11.471614782695335 AS "Constant" 
FROM "DEGEN_MSXWIV_ADS_SCA_2_OUT" "ADS_sca_2_OUT")
 SELECT dummy_class_reg_cte."KEY" AS "KEY", dummy_class_reg_cte."Constant" AS "Estimator" 
FROM dummy_class_reg_cte