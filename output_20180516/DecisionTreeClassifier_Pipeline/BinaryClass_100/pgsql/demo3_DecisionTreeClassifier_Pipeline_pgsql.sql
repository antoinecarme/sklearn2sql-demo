-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeClassifier_Pipeline
-- Dataset : BinaryClass_100
-- Database : pgsql


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT" (
	"KEY" BIGINT NOT NULL, 
	impter_2 FLOAT, 
	impter_3 FLOAT, 
	impter_4 FLOAT, 
	impter_5 FLOAT, 
	impter_6 FLOAT, 
	impter_7 FLOAT, 
	impter_8 FLOAT, 
	impter_9 FLOAT, 
	impter_10 FLOAT, 
	impter_11 FLOAT, 
	impter_12 FLOAT, 
	impter_13 FLOAT, 
	impter_14 FLOAT, 
	impter_15 FLOAT, 
	impter_16 FLOAT, 
	impter_17 FLOAT, 
	impter_18 FLOAT, 
	impter_19 FLOAT, 
	impter_20 FLOAT, 
	impter_21 FLOAT, 
	impter_22 FLOAT, 
	impter_23 FLOAT, 
	impter_24 FLOAT, 
	impter_25 FLOAT, 
	impter_26 FLOAT, 
	impter_27 FLOAT, 
	impter_28 FLOAT, 
	impter_29 FLOAT, 
	impter_30 FLOAT, 
	impter_31 FLOAT, 
	impter_32 FLOAT, 
	impter_33 FLOAT, 
	impter_34 FLOAT, 
	impter_35 FLOAT, 
	impter_36 FLOAT, 
	impter_37 FLOAT, 
	impter_38 FLOAT, 
	impter_39 FLOAT, 
	impter_40 FLOAT, 
	impter_41 FLOAT, 
	impter_42 FLOAT, 
	impter_43 FLOAT, 
	impter_44 FLOAT, 
	impter_45 FLOAT, 
	impter_46 FLOAT, 
	impter_47 FLOAT, 
	impter_48 FLOAT, 
	impter_49 FLOAT, 
	impter_50 FLOAT, 
	impter_51 FLOAT, 
	impter_52 FLOAT, 
	impter_53 FLOAT, 
	impter_54 FLOAT, 
	impter_55 FLOAT, 
	impter_56 FLOAT, 
	impter_57 FLOAT, 
	impter_58 FLOAT, 
	impter_59 FLOAT, 
	impter_60 FLOAT, 
	impter_61 FLOAT, 
	impter_62 FLOAT, 
	impter_63 FLOAT, 
	impter_64 FLOAT, 
	impter_65 FLOAT, 
	impter_66 FLOAT, 
	impter_67 FLOAT, 
	impter_68 FLOAT, 
	impter_69 FLOAT, 
	impter_70 FLOAT, 
	impter_71 FLOAT, 
	impter_72 FLOAT, 
	impter_73 FLOAT, 
	impter_74 FLOAT, 
	impter_75 FLOAT, 
	impter_76 FLOAT, 
	impter_77 FLOAT, 
	impter_78 FLOAT, 
	impter_79 FLOAT, 
	impter_80 FLOAT, 
	impter_81 FLOAT, 
	impter_82 FLOAT, 
	impter_83 FLOAT, 
	impter_84 FLOAT, 
	impter_85 FLOAT, 
	impter_86 FLOAT, 
	impter_87 FLOAT, 
	impter_88 FLOAT, 
	impter_89 FLOAT, 
	impter_90 FLOAT, 
	impter_91 FLOAT, 
	impter_92 FLOAT, 
	impter_93 FLOAT, 
	impter_94 FLOAT, 
	impter_95 FLOAT, 
	impter_96 FLOAT, 
	impter_97 FLOAT, 
	impter_98 FLOAT, 
	impter_99 FLOAT, 
	impter_100 FLOAT, 
	impter_101 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31, impter_32, impter_33, impter_34, impter_35, impter_36, impter_37, impter_38, impter_39, impter_40, impter_41, impter_42, impter_43, impter_44, impter_45, impter_46, impter_47, impter_48, impter_49, impter_50, impter_51, impter_52, impter_53, impter_54, impter_55, impter_56, impter_57, impter_58, impter_59, impter_60, impter_61, impter_62, impter_63, impter_64, impter_65, impter_66, impter_67, impter_68, impter_69, impter_70, impter_71, impter_72, impter_73, impter_74, impter_75, impter_76, impter_77, impter_78, impter_79, impter_80, impter_81, impter_82, impter_83, impter_84, impter_85, impter_86, impter_87, impter_88, impter_89, impter_90, impter_91, impter_92, impter_93, impter_94, impter_95, impter_96, impter_97, impter_98, impter_99, impter_100, impter_101) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31, "ADS_imp_1_OUT".impter_32, "ADS_imp_1_OUT".impter_33, "ADS_imp_1_OUT".impter_34, "ADS_imp_1_OUT".impter_35, "ADS_imp_1_OUT".impter_36, "ADS_imp_1_OUT".impter_37, "ADS_imp_1_OUT".impter_38, "ADS_imp_1_OUT".impter_39, "ADS_imp_1_OUT".impter_40, "ADS_imp_1_OUT".impter_41, "ADS_imp_1_OUT".impter_42, "ADS_imp_1_OUT".impter_43, "ADS_imp_1_OUT".impter_44, "ADS_imp_1_OUT".impter_45, "ADS_imp_1_OUT".impter_46, "ADS_imp_1_OUT".impter_47, "ADS_imp_1_OUT".impter_48, "ADS_imp_1_OUT".impter_49, "ADS_imp_1_OUT".impter_50, "ADS_imp_1_OUT".impter_51, "ADS_imp_1_OUT".impter_52, "ADS_imp_1_OUT".impter_53, "ADS_imp_1_OUT".impter_54, "ADS_imp_1_OUT".impter_55, "ADS_imp_1_OUT".impter_56, "ADS_imp_1_OUT".impter_57, "ADS_imp_1_OUT".impter_58, "ADS_imp_1_OUT".impter_59, "ADS_imp_1_OUT".impter_60, "ADS_imp_1_OUT".impter_61, "ADS_imp_1_OUT".impter_62, "ADS_imp_1_OUT".impter_63, "ADS_imp_1_OUT".impter_64, "ADS_imp_1_OUT".impter_65, "ADS_imp_1_OUT".impter_66, "ADS_imp_1_OUT".impter_67, "ADS_imp_1_OUT".impter_68, "ADS_imp_1_OUT".impter_69, "ADS_imp_1_OUT".impter_70, "ADS_imp_1_OUT".impter_71, "ADS_imp_1_OUT".impter_72, "ADS_imp_1_OUT".impter_73, "ADS_imp_1_OUT".impter_74, "ADS_imp_1_OUT".impter_75, "ADS_imp_1_OUT".impter_76, "ADS_imp_1_OUT".impter_77, "ADS_imp_1_OUT".impter_78, "ADS_imp_1_OUT".impter_79, "ADS_imp_1_OUT".impter_80, "ADS_imp_1_OUT".impter_81, "ADS_imp_1_OUT".impter_82, "ADS_imp_1_OUT".impter_83, "ADS_imp_1_OUT".impter_84, "ADS_imp_1_OUT".impter_85, "ADS_imp_1_OUT".impter_86, "ADS_imp_1_OUT".impter_87, "ADS_imp_1_OUT".impter_88, "ADS_imp_1_OUT".impter_89, "ADS_imp_1_OUT".impter_90, "ADS_imp_1_OUT".impter_91, "ADS_imp_1_OUT".impter_92, "ADS_imp_1_OUT".impter_93, "ADS_imp_1_OUT".impter_94, "ADS_imp_1_OUT".impter_95, "ADS_imp_1_OUT".impter_96, "ADS_imp_1_OUT".impter_97, "ADS_imp_1_OUT".impter_98, "ADS_imp_1_OUT".impter_99, "ADS_imp_1_OUT".impter_100, "ADS_imp_1_OUT".impter_101 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.14903440845324958 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.03367636493032261 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.11933316355610842 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.17369203130189262 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.06534355492106358 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.2436228993764152 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.11367357911147091 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.21176443876708548 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.11513979914587343 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.029111924938589835 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.1107718926861467 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 0.0014580375424568769 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN -0.0773739291867229 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.1139572875884789 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN -0.12567631285043362 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN -0.05799597833985687 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.14181264174476002 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN -0.1265454286904762 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.07812248683518369 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN -0.07648737683022465 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 0.05864262427869482 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 0.10844037074552852 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 0.060065969333441514 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.15255771271935042 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN -0.047123256877991036 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN -0.05696296914089203 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.09614684099943512 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.10433833409752227 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.03257716191960926 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.06142905749366723 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN -0.014540423460679405 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN -0.1123380099941879 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.1189128446049145 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 0.2286864930078044 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 0.23566181549921908 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 0.07316970399964386 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN -0.03319409827469623 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN 0.2734938774177451 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN -0.023289567742236165 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.030288379260645946 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN -0.10736826233135917 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 0.026402950097887946 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN -0.09677146654911453 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 0.005974248342970334 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN 0.036917268127071114 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN -0.14525717382374131 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN -0.16675269881177787 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.25084465695652713 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN 0.14623398322257627 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.10185431133406106 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN -0.13292560945085755 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN -0.042191791365440365 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 0.15214028404681929 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN -0.15821372314298002 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN 0.17926260535776073 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.05077533210437681 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN -0.011884551362322174 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN -0.04948745069141103 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN -0.13256733552482858 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 0.11866238202513515 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN -0.06590828520229039 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 0.1554857338869047 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN -0.006608301490984002 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN -0.01827580148493827 ELSE "ADS"."Feature_63" END AS impter_65, CASE WHEN ("ADS"."Feature_64" IS NULL) THEN -0.027366317428668574 ELSE "ADS"."Feature_64" END AS impter_66, CASE WHEN ("ADS"."Feature_65" IS NULL) THEN 0.01436625003668961 ELSE "ADS"."Feature_65" END AS impter_67, CASE WHEN ("ADS"."Feature_66" IS NULL) THEN 0.054075300089557875 ELSE "ADS"."Feature_66" END AS impter_68, CASE WHEN ("ADS"."Feature_67" IS NULL) THEN -0.23085273383923544 ELSE "ADS"."Feature_67" END AS impter_69, CASE WHEN ("ADS"."Feature_68" IS NULL) THEN -0.24396528808375115 ELSE "ADS"."Feature_68" END AS impter_70, CASE WHEN ("ADS"."Feature_69" IS NULL) THEN 0.06545065787659607 ELSE "ADS"."Feature_69" END AS impter_71, CASE WHEN ("ADS"."Feature_70" IS NULL) THEN 0.04266518302023082 ELSE "ADS"."Feature_70" END AS impter_72, CASE WHEN ("ADS"."Feature_71" IS NULL) THEN -0.1540451820349279 ELSE "ADS"."Feature_71" END AS impter_73, CASE WHEN ("ADS"."Feature_72" IS NULL) THEN -0.2222352564572451 ELSE "ADS"."Feature_72" END AS impter_74, CASE WHEN ("ADS"."Feature_73" IS NULL) THEN 0.0685606372972674 ELSE "ADS"."Feature_73" END AS impter_75, CASE WHEN ("ADS"."Feature_74" IS NULL) THEN -0.09639592085393558 ELSE "ADS"."Feature_74" END AS impter_76, CASE WHEN ("ADS"."Feature_75" IS NULL) THEN 0.20747518927524572 ELSE "ADS"."Feature_75" END AS impter_77, CASE WHEN ("ADS"."Feature_76" IS NULL) THEN -0.13945256367132464 ELSE "ADS"."Feature_76" END AS impter_78, CASE WHEN ("ADS"."Feature_77" IS NULL) THEN 0.021954208773706758 ELSE "ADS"."Feature_77" END AS impter_79, CASE WHEN ("ADS"."Feature_78" IS NULL) THEN 0.07033517037026028 ELSE "ADS"."Feature_78" END AS impter_80, CASE WHEN ("ADS"."Feature_79" IS NULL) THEN 0.12062472190694748 ELSE "ADS"."Feature_79" END AS impter_81, CASE WHEN ("ADS"."Feature_80" IS NULL) THEN -0.03376594744247921 ELSE "ADS"."Feature_80" END AS impter_82, CASE WHEN ("ADS"."Feature_81" IS NULL) THEN -0.11063521313283846 ELSE "ADS"."Feature_81" END AS impter_83, CASE WHEN ("ADS"."Feature_82" IS NULL) THEN 0.040264280436689885 ELSE "ADS"."Feature_82" END AS impter_84, CASE WHEN ("ADS"."Feature_83" IS NULL) THEN 0.047619698634703535 ELSE "ADS"."Feature_83" END AS impter_85, CASE WHEN ("ADS"."Feature_84" IS NULL) THEN 0.10294542896565007 ELSE "ADS"."Feature_84" END AS impter_86, CASE WHEN ("ADS"."Feature_85" IS NULL) THEN 0.03543139086541035 ELSE "ADS"."Feature_85" END AS impter_87, CASE WHEN ("ADS"."Feature_86" IS NULL) THEN 0.15812674995414752 ELSE "ADS"."Feature_86" END AS impter_88, CASE WHEN ("ADS"."Feature_87" IS NULL) THEN -0.09370679202503561 ELSE "ADS"."Feature_87" END AS impter_89, CASE WHEN ("ADS"."Feature_88" IS NULL) THEN -0.05352174133125283 ELSE "ADS"."Feature_88" END AS impter_90, CASE WHEN ("ADS"."Feature_89" IS NULL) THEN -0.05671142135749989 ELSE "ADS"."Feature_89" END AS impter_91, CASE WHEN ("ADS"."Feature_90" IS NULL) THEN 0.1683501919918398 ELSE "ADS"."Feature_90" END AS impter_92, CASE WHEN ("ADS"."Feature_91" IS NULL) THEN -0.08014687785959375 ELSE "ADS"."Feature_91" END AS impter_93, CASE WHEN ("ADS"."Feature_92" IS NULL) THEN 0.06732751721128641 ELSE "ADS"."Feature_92" END AS impter_94, CASE WHEN ("ADS"."Feature_93" IS NULL) THEN -0.00888651681786575 ELSE "ADS"."Feature_93" END AS impter_95, CASE WHEN ("ADS"."Feature_94" IS NULL) THEN 0.026095385517810564 ELSE "ADS"."Feature_94" END AS impter_96, CASE WHEN ("ADS"."Feature_95" IS NULL) THEN 0.04435425200996614 ELSE "ADS"."Feature_95" END AS impter_97, CASE WHEN ("ADS"."Feature_96" IS NULL) THEN 0.026895408070568623 ELSE "ADS"."Feature_96" END AS impter_98, CASE WHEN ("ADS"."Feature_97" IS NULL) THEN 0.18232971539070067 ELSE "ADS"."Feature_97" END AS impter_99, CASE WHEN ("ADS"."Feature_98" IS NULL) THEN -0.12132540363011564 ELSE "ADS"."Feature_98" END AS impter_100, CASE WHEN ("ADS"."Feature_99" IS NULL) THEN 0.004420132524286926 ELSE "ADS"."Feature_99" END AS impter_101 
FROM "BinaryClass_100" AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT_KEY" ON "TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT" (
	"KEY" BIGINT NOT NULL, 
	scaler_2 FLOAT, 
	scaler_3 FLOAT, 
	scaler_4 FLOAT, 
	scaler_5 FLOAT, 
	scaler_6 FLOAT, 
	scaler_7 FLOAT, 
	scaler_8 FLOAT, 
	scaler_9 FLOAT, 
	scaler_10 FLOAT, 
	scaler_11 FLOAT, 
	scaler_12 FLOAT, 
	scaler_13 FLOAT, 
	scaler_14 FLOAT, 
	scaler_15 FLOAT, 
	scaler_16 FLOAT, 
	scaler_17 FLOAT, 
	scaler_18 FLOAT, 
	scaler_19 FLOAT, 
	scaler_20 FLOAT, 
	scaler_21 FLOAT, 
	scaler_22 FLOAT, 
	scaler_23 FLOAT, 
	scaler_24 FLOAT, 
	scaler_25 FLOAT, 
	scaler_26 FLOAT, 
	scaler_27 FLOAT, 
	scaler_28 FLOAT, 
	scaler_29 FLOAT, 
	scaler_30 FLOAT, 
	scaler_31 FLOAT, 
	scaler_32 FLOAT, 
	scaler_33 FLOAT, 
	scaler_34 FLOAT, 
	scaler_35 FLOAT, 
	scaler_36 FLOAT, 
	scaler_37 FLOAT, 
	scaler_38 FLOAT, 
	scaler_39 FLOAT, 
	scaler_40 FLOAT, 
	scaler_41 FLOAT, 
	scaler_42 FLOAT, 
	scaler_43 FLOAT, 
	scaler_44 FLOAT, 
	scaler_45 FLOAT, 
	scaler_46 FLOAT, 
	scaler_47 FLOAT, 
	scaler_48 FLOAT, 
	scaler_49 FLOAT, 
	scaler_50 FLOAT, 
	scaler_51 FLOAT, 
	scaler_52 FLOAT, 
	scaler_53 FLOAT, 
	scaler_54 FLOAT, 
	scaler_55 FLOAT, 
	scaler_56 FLOAT, 
	scaler_57 FLOAT, 
	scaler_58 FLOAT, 
	scaler_59 FLOAT, 
	scaler_60 FLOAT, 
	scaler_61 FLOAT, 
	scaler_62 FLOAT, 
	scaler_63 FLOAT, 
	scaler_64 FLOAT, 
	scaler_65 FLOAT, 
	scaler_66 FLOAT, 
	scaler_67 FLOAT, 
	scaler_68 FLOAT, 
	scaler_69 FLOAT, 
	scaler_70 FLOAT, 
	scaler_71 FLOAT, 
	scaler_72 FLOAT, 
	scaler_73 FLOAT, 
	scaler_74 FLOAT, 
	scaler_75 FLOAT, 
	scaler_76 FLOAT, 
	scaler_77 FLOAT, 
	scaler_78 FLOAT, 
	scaler_79 FLOAT, 
	scaler_80 FLOAT, 
	scaler_81 FLOAT, 
	scaler_82 FLOAT, 
	scaler_83 FLOAT, 
	scaler_84 FLOAT, 
	scaler_85 FLOAT, 
	scaler_86 FLOAT, 
	scaler_87 FLOAT, 
	scaler_88 FLOAT, 
	scaler_89 FLOAT, 
	scaler_90 FLOAT, 
	scaler_91 FLOAT, 
	scaler_92 FLOAT, 
	scaler_93 FLOAT, 
	scaler_94 FLOAT, 
	scaler_95 FLOAT, 
	scaler_96 FLOAT, 
	scaler_97 FLOAT, 
	scaler_98 FLOAT, 
	scaler_99 FLOAT, 
	scaler_100 FLOAT, 
	scaler_101 FLOAT, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31, scaler_32, scaler_33, scaler_34, scaler_35, scaler_36, scaler_37, scaler_38, scaler_39, scaler_40, scaler_41, scaler_42, scaler_43, scaler_44, scaler_45, scaler_46, scaler_47, scaler_48, scaler_49, scaler_50, scaler_51, scaler_52, scaler_53, scaler_54, scaler_55, scaler_56, scaler_57, scaler_58, scaler_59, scaler_60, scaler_61, scaler_62, scaler_63, scaler_64, scaler_65, scaler_66, scaler_67, scaler_68, scaler_69, scaler_70, scaler_71, scaler_72, scaler_73, scaler_74, scaler_75, scaler_76, scaler_77, scaler_78, scaler_79, scaler_80, scaler_81, scaler_82, scaler_83, scaler_84, scaler_85, scaler_86, scaler_87, scaler_88, scaler_89, scaler_90, scaler_91, scaler_92, scaler_93, scaler_94, scaler_95, scaler_96, scaler_97, scaler_98, scaler_99, scaler_100, scaler_101) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31, "ADS_sca_2_OUT".scaler_32, "ADS_sca_2_OUT".scaler_33, "ADS_sca_2_OUT".scaler_34, "ADS_sca_2_OUT".scaler_35, "ADS_sca_2_OUT".scaler_36, "ADS_sca_2_OUT".scaler_37, "ADS_sca_2_OUT".scaler_38, "ADS_sca_2_OUT".scaler_39, "ADS_sca_2_OUT".scaler_40, "ADS_sca_2_OUT".scaler_41, "ADS_sca_2_OUT".scaler_42, "ADS_sca_2_OUT".scaler_43, "ADS_sca_2_OUT".scaler_44, "ADS_sca_2_OUT".scaler_45, "ADS_sca_2_OUT".scaler_46, "ADS_sca_2_OUT".scaler_47, "ADS_sca_2_OUT".scaler_48, "ADS_sca_2_OUT".scaler_49, "ADS_sca_2_OUT".scaler_50, "ADS_sca_2_OUT".scaler_51, "ADS_sca_2_OUT".scaler_52, "ADS_sca_2_OUT".scaler_53, "ADS_sca_2_OUT".scaler_54, "ADS_sca_2_OUT".scaler_55, "ADS_sca_2_OUT".scaler_56, "ADS_sca_2_OUT".scaler_57, "ADS_sca_2_OUT".scaler_58, "ADS_sca_2_OUT".scaler_59, "ADS_sca_2_OUT".scaler_60, "ADS_sca_2_OUT".scaler_61, "ADS_sca_2_OUT".scaler_62, "ADS_sca_2_OUT".scaler_63, "ADS_sca_2_OUT".scaler_64, "ADS_sca_2_OUT".scaler_65, "ADS_sca_2_OUT".scaler_66, "ADS_sca_2_OUT".scaler_67, "ADS_sca_2_OUT".scaler_68, "ADS_sca_2_OUT".scaler_69, "ADS_sca_2_OUT".scaler_70, "ADS_sca_2_OUT".scaler_71, "ADS_sca_2_OUT".scaler_72, "ADS_sca_2_OUT".scaler_73, "ADS_sca_2_OUT".scaler_74, "ADS_sca_2_OUT".scaler_75, "ADS_sca_2_OUT".scaler_76, "ADS_sca_2_OUT".scaler_77, "ADS_sca_2_OUT".scaler_78, "ADS_sca_2_OUT".scaler_79, "ADS_sca_2_OUT".scaler_80, "ADS_sca_2_OUT".scaler_81, "ADS_sca_2_OUT".scaler_82, "ADS_sca_2_OUT".scaler_83, "ADS_sca_2_OUT".scaler_84, "ADS_sca_2_OUT".scaler_85, "ADS_sca_2_OUT".scaler_86, "ADS_sca_2_OUT".scaler_87, "ADS_sca_2_OUT".scaler_88, "ADS_sca_2_OUT".scaler_89, "ADS_sca_2_OUT".scaler_90, "ADS_sca_2_OUT".scaler_91, "ADS_sca_2_OUT".scaler_92, "ADS_sca_2_OUT".scaler_93, "ADS_sca_2_OUT".scaler_94, "ADS_sca_2_OUT".scaler_95, "ADS_sca_2_OUT".scaler_96, "ADS_sca_2_OUT".scaler_97, "ADS_sca_2_OUT".scaler_98, "ADS_sca_2_OUT".scaler_99, "ADS_sca_2_OUT".scaler_100, "ADS_sca_2_OUT".scaler_101 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.14903440845324958) / 0.8636609678928474 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.03367636493032261) / 0.9578461188823892 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.11933316355610842) / 0.988940710894537 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.17369203130189262) / 0.9255555424369695 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.06534355492106358) / 1.2549066590522007 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.2436228993764152) / 1.0289985897454397 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - -0.11367357911147091) / 0.8923136895775531 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.21176443876708548) / 0.9002988999952058 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.11513979914587343) / 1.0407931178174141 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.029111924938589835) / 0.8191882677751 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.1107718926861467) / 1.1250344343026408 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 0.0014580375424568769) / 1.0581752782303462 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - -0.0773739291867229) / 0.9419092604618728 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - -0.1139572875884789) / 0.9844340172570488 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - -0.12567631285043362) / 1.0696960659875883 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - -0.05799597833985687) / 0.9572246869765944 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - -0.14181264174476002) / 0.9402782318020427 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - -0.1265454286904762) / 1.0394075774622935 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - -0.07812248683518369) / 1.3223760230644108 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - -0.07648737683022465) / 0.9488949379248575 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 0.05864262427869482) / 0.9538581426644901 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 0.10844037074552852) / 1.210930082570065 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 0.060065969333441514) / 0.9191502156507799 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 0.15255771271935042) / 0.9299576154754636 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - -0.047123256877991036) / 0.7721855440773565 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - -0.05696296914089203) / 0.8655084393513448 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.09614684099943512) / 0.96937898078964 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.10433833409752227) / 1.0974731508769155 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.03257716191960926) / 0.9435063968783003 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.06142905749366723) / 1.1170732733267863 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - -0.014540423460679405) / 1.0573168197323033 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - -0.1123380099941879) / 0.9786151659749657 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.1189128446049145) / 1.0063563400772833 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - 0.2286864930078044) / 0.9987517899102172 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - 0.23566181549921908) / 0.8892125575448739 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 0.07316970399964386) / 0.8478593314579883 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - -0.03319409827469623) / 0.9417761591755847 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - 0.2734938774177451) / 0.8842710941098582 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - -0.023289567742236165) / 0.9947645749252034 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - 0.030288379260645946) / 1.038539402148216 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - -0.10736826233135917) / 0.9830117951146878 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - 0.026402950097887946) / 1.0398287539710105 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - -0.09677146654911453) / 1.0015225564098231 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - 0.005974248342970334) / 0.9192248357286628 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - 0.036917268127071114) / 1.069754938973098 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - -0.14525717382374131) / 1.0022143023048327 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - -0.16675269881177787) / 1.0264976173555715 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.25084465695652713) / 1.0176351295531831 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - 0.14623398322257627) / 0.9499010882454708 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - 0.10185431133406106) / 1.0834913023248847 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - -0.13292560945085755) / 1.203043012940759 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - -0.042191791365440365) / 1.0890718481954653 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - 0.15214028404681929) / 1.0355928162656227 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - -0.15821372314298002) / 0.8130848573586256 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - 0.17926260535776073) / 1.0704671463335236 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - 0.05077533210437681) / 1.0052564941217246 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - -0.011884551362322174) / 0.9691413097866551 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - -0.04948745069141103) / 1.2609768269937562 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - -0.13256733552482858) / 0.8686251022330442 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - 0.11866238202513515) / 1.0631654849592418 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - -0.06590828520229039) / 1.0418727908296095 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - 0.1554857338869047) / 0.8946519794042862 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - -0.006608301490984002) / 0.9166153141716471 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - -0.01827580148493827) / 1.037281466599587 AS scaler_65, (CAST("ADS_imp_1_OUT".impter_66 AS FLOAT) - -0.027366317428668574) / 0.8876680722044222 AS scaler_66, (CAST("ADS_imp_1_OUT".impter_67 AS FLOAT) - 0.01436625003668961) / 0.9184976645949744 AS scaler_67, (CAST("ADS_imp_1_OUT".impter_68 AS FLOAT) - 0.054075300089557875) / 0.929588489370402 AS scaler_68, (CAST("ADS_imp_1_OUT".impter_69 AS FLOAT) - -0.23085273383923544) / 0.944088767881375 AS scaler_69, (CAST("ADS_imp_1_OUT".impter_70 AS FLOAT) - -0.24396528808375115) / 1.04592379692413 AS scaler_70, (CAST("ADS_imp_1_OUT".impter_71 AS FLOAT) - 0.06545065787659607) / 0.8967701639849762 AS scaler_71, (CAST("ADS_imp_1_OUT".impter_72 AS FLOAT) - 0.04266518302023082) / 0.8835391881690846 AS scaler_72, (CAST("ADS_imp_1_OUT".impter_73 AS FLOAT) - -0.1540451820349279) / 0.9869791561020547 AS scaler_73, (CAST("ADS_imp_1_OUT".impter_74 AS FLOAT) - -0.2222352564572451) / 0.9537927411956955 AS scaler_74, (CAST("ADS_imp_1_OUT".impter_75 AS FLOAT) - 0.0685606372972674) / 0.953717717145669 AS scaler_75, (CAST("ADS_imp_1_OUT".impter_76 AS FLOAT) - -0.09639592085393558) / 1.035877532027052 AS scaler_76, (CAST("ADS_imp_1_OUT".impter_77 AS FLOAT) - 0.20747518927524572) / 1.0611076222257592 AS scaler_77, (CAST("ADS_imp_1_OUT".impter_78 AS FLOAT) - -0.13945256367132464) / 1.022370053319208 AS scaler_78, (CAST("ADS_imp_1_OUT".impter_79 AS FLOAT) - 0.021954208773706758) / 0.48752447532965937 AS scaler_79, (CAST("ADS_imp_1_OUT".impter_80 AS FLOAT) - 0.07033517037026028) / 0.9984278761892057 AS scaler_80, (CAST("ADS_imp_1_OUT".impter_81 AS FLOAT) - 0.12062472190694748) / 1.0482914370539298 AS scaler_81, (CAST("ADS_imp_1_OUT".impter_82 AS FLOAT) - -0.03376594744247921) / 1.0120395039819923 AS scaler_82, (CAST("ADS_imp_1_OUT".impter_83 AS FLOAT) - -0.11063521313283846) / 0.8487965281981553 AS scaler_83, (CAST("ADS_imp_1_OUT".impter_84 AS FLOAT) - 0.040264280436689885) / 0.9278865519978795 AS scaler_84, (CAST("ADS_imp_1_OUT".impter_85 AS FLOAT) - 0.047619698634703535) / 1.0173681676828843 AS scaler_85, (CAST("ADS_imp_1_OUT".impter_86 AS FLOAT) - 0.10294542896565007) / 0.9363751138268347 AS scaler_86, (CAST("ADS_imp_1_OUT".impter_87 AS FLOAT) - 0.03543139086541035) / 0.9766573952044824 AS scaler_87, (CAST("ADS_imp_1_OUT".impter_88 AS FLOAT) - 0.15812674995414752) / 1.0065679998415296 AS scaler_88, (CAST("ADS_imp_1_OUT".impter_89 AS FLOAT) - -0.09370679202503561) / 0.9521441609239362 AS scaler_89, (CAST("ADS_imp_1_OUT".impter_90 AS FLOAT) - -0.05352174133125283) / 1.0336679876781851 AS scaler_90, (CAST("ADS_imp_1_OUT".impter_91 AS FLOAT) - -0.05671142135749989) / 1.0851107811586167 AS scaler_91, (CAST("ADS_imp_1_OUT".impter_92 AS FLOAT) - 0.1683501919918398) / 0.8286544432716997 AS scaler_92, (CAST("ADS_imp_1_OUT".impter_93 AS FLOAT) - -0.08014687785959375) / 1.070420432549587 AS scaler_93, (CAST("ADS_imp_1_OUT".impter_94 AS FLOAT) - 0.06732751721128641) / 1.1749792199760318 AS scaler_94, (CAST("ADS_imp_1_OUT".impter_95 AS FLOAT) - -0.00888651681786575) / 1.0750073377154254 AS scaler_95, (CAST("ADS_imp_1_OUT".impter_96 AS FLOAT) - 0.026095385517810564) / 1.1078183878209036 AS scaler_96, (CAST("ADS_imp_1_OUT".impter_97 AS FLOAT) - 0.04435425200996614) / 0.8861375411199117 AS scaler_97, (CAST("ADS_imp_1_OUT".impter_98 AS FLOAT) - 0.026895408070568623) / 1.0095288823928932 AS scaler_98, (CAST("ADS_imp_1_OUT".impter_99 AS FLOAT) - 0.18232971539070067) / 0.9551382056239349 AS scaler_99, (CAST("ADS_imp_1_OUT".impter_100 AS FLOAT) - -0.12132540363011564) / 0.9258857556869412 AS scaler_100, (CAST("ADS_imp_1_OUT".impter_101 AS FLOAT) - 0.004420132524286926) / 0.9371965982210728 AS scaler_101 
FROM "TMP_20180516110913_CODEGEN_9DCQAW_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT_KEY" ON "TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_59 <= 0.06653057038784027) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_19 <= 1.1668860912322998) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_11 <= 2.114020586013794) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_62 <= -0.5680299997329712) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_82 <= 0.3214264512062073) THEN 5 ELSE 6 END ELSE 7 END ELSE 8 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_59 <= -0.8933882713317871) THEN 10 ELSE 11 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_56 <= 1.2069389820098877) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_83 <= -2.0935401916503906) THEN 14 ELSE 15 END ELSE 16 END END AS node_id_2 
FROM "TMP_20180516110913_CODEGEN_K90GHX_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."P_0" AS FLOAT) AS "P_0", CAST("Values"."P_1" AS FLOAT) AS "P_1", CAST("Values"."D" AS FLOAT) AS "D", CAST("Values"."DP" AS FLOAT) AS "DP" 
FROM (SELECT 5 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 6 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 7 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 8 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 10 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 11 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 14 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP" UNION ALL SELECT 15 AS nid, 0.0 AS "P_0", 1.0 AS "P_1", 1 AS "D", 1.0 AS "DP" UNION ALL SELECT 16 AS nid, 1.0 AS "P_0", 0.0 AS "P_1", 0 AS "D", 1.0 AS "DP") AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."P_0" AS "P_0", "DT_node_data"."P_1" AS "P_1", "DT_node_data"."D" AS "D", "DT_node_data"."DP" AS "DP" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", "DT_Output"."P_0" AS "Proba_0", "DT_Output"."P_1" AS "Proba_1", CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN ln("DT_Output"."P_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN ln("DT_Output"."P_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", "DT_Output"."D" AS "Decision", "DT_Output"."DP" AS "DecisionProba" 
FROM "DT_Output"