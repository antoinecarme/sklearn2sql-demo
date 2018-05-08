-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DummyClassifier_Pipeline
-- Dataset : digits
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT" (
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
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT part 2. Populate

INSERT INTO "TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT" ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11, impter_12, impter_13, impter_14, impter_15, impter_16, impter_17, impter_18, impter_19, impter_20, impter_21, impter_22, impter_23, impter_24, impter_25, impter_26, impter_27, impter_28, impter_29, impter_30, impter_31, impter_32, impter_33, impter_34, impter_35, impter_36, impter_37, impter_38, impter_39, impter_40, impter_41, impter_42, impter_43, impter_44, impter_45, impter_46, impter_47, impter_48, impter_49, impter_50, impter_51, impter_52, impter_53, impter_54, impter_55, impter_56, impter_57, impter_58, impter_59, impter_60, impter_61, impter_62, impter_63, impter_64, impter_65) SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11, "ADS_imp_1_OUT".impter_12, "ADS_imp_1_OUT".impter_13, "ADS_imp_1_OUT".impter_14, "ADS_imp_1_OUT".impter_15, "ADS_imp_1_OUT".impter_16, "ADS_imp_1_OUT".impter_17, "ADS_imp_1_OUT".impter_18, "ADS_imp_1_OUT".impter_19, "ADS_imp_1_OUT".impter_20, "ADS_imp_1_OUT".impter_21, "ADS_imp_1_OUT".impter_22, "ADS_imp_1_OUT".impter_23, "ADS_imp_1_OUT".impter_24, "ADS_imp_1_OUT".impter_25, "ADS_imp_1_OUT".impter_26, "ADS_imp_1_OUT".impter_27, "ADS_imp_1_OUT".impter_28, "ADS_imp_1_OUT".impter_29, "ADS_imp_1_OUT".impter_30, "ADS_imp_1_OUT".impter_31, "ADS_imp_1_OUT".impter_32, "ADS_imp_1_OUT".impter_33, "ADS_imp_1_OUT".impter_34, "ADS_imp_1_OUT".impter_35, "ADS_imp_1_OUT".impter_36, "ADS_imp_1_OUT".impter_37, "ADS_imp_1_OUT".impter_38, "ADS_imp_1_OUT".impter_39, "ADS_imp_1_OUT".impter_40, "ADS_imp_1_OUT".impter_41, "ADS_imp_1_OUT".impter_42, "ADS_imp_1_OUT".impter_43, "ADS_imp_1_OUT".impter_44, "ADS_imp_1_OUT".impter_45, "ADS_imp_1_OUT".impter_46, "ADS_imp_1_OUT".impter_47, "ADS_imp_1_OUT".impter_48, "ADS_imp_1_OUT".impter_49, "ADS_imp_1_OUT".impter_50, "ADS_imp_1_OUT".impter_51, "ADS_imp_1_OUT".impter_52, "ADS_imp_1_OUT".impter_53, "ADS_imp_1_OUT".impter_54, "ADS_imp_1_OUT".impter_55, "ADS_imp_1_OUT".impter_56, "ADS_imp_1_OUT".impter_57, "ADS_imp_1_OUT".impter_58, "ADS_imp_1_OUT".impter_59, "ADS_imp_1_OUT".impter_60, "ADS_imp_1_OUT".impter_61, "ADS_imp_1_OUT".impter_62, "ADS_imp_1_OUT".impter_63, "ADS_imp_1_OUT".impter_64, "ADS_imp_1_OUT".impter_65 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.2950591510090466 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 5.104384133611691 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 11.791927627000696 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 11.84829505915101 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 5.823242867084203 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 1.394572025052192 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.13430758524704245 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.0055671537926235215 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 1.977035490605428 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 10.362560890744607 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 12.03061934585943 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 10.271398747390396 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 8.121781489213639 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 1.8921363952679193 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.11760612386917188 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.0020876826722338203 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 2.5427974947807934 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 9.935281837160751 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 7.099512874043145 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 7.132915796798887 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 7.81419624217119 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 1.8434237995824634 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 0.05775922059846903 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.0006958942240779402 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 2.4808629088378567 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 9.143354210160055 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 8.960334029227557 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 10.03688239387613 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 7.5949895615866385 ELSE "ADS"."Feature_29" END AS impter_31, CASE WHEN ("ADS"."Feature_30" IS NULL) THEN 2.337508698677801 ELSE "ADS"."Feature_30" END AS impter_32, CASE WHEN ("ADS"."Feature_31" IS NULL) THEN 0.0027835768963117608 ELSE "ADS"."Feature_31" END AS impter_33, CASE WHEN ("ADS"."Feature_32" IS NULL) THEN 0.0 ELSE "ADS"."Feature_32" END AS impter_34, CASE WHEN ("ADS"."Feature_33" IS NULL) THEN 2.3319415448851775 ELSE "ADS"."Feature_33" END AS impter_35, CASE WHEN ("ADS"."Feature_34" IS NULL) THEN 7.608907446068198 ELSE "ADS"."Feature_34" END AS impter_36, CASE WHEN ("ADS"."Feature_35" IS NULL) THEN 9.028531663187195 ELSE "ADS"."Feature_35" END AS impter_37, CASE WHEN ("ADS"."Feature_36" IS NULL) THEN 10.270006958942242 ELSE "ADS"."Feature_36" END AS impter_38, CASE WHEN ("ADS"."Feature_37" IS NULL) THEN 8.806541405706332 ELSE "ADS"."Feature_37" END AS impter_39, CASE WHEN ("ADS"."Feature_38" IS NULL) THEN 2.8754349338900487 ELSE "ADS"."Feature_38" END AS impter_40, CASE WHEN ("ADS"."Feature_39" IS NULL) THEN 0.0 ELSE "ADS"."Feature_39" END AS impter_41, CASE WHEN ("ADS"."Feature_40" IS NULL) THEN 0.010438413361169102 ELSE "ADS"."Feature_40" END AS impter_42, CASE WHEN ("ADS"."Feature_41" IS NULL) THEN 1.5755045233124565 ELSE "ADS"."Feature_41" END AS impter_43, CASE WHEN ("ADS"."Feature_42" IS NULL) THEN 6.858733472512178 ELSE "ADS"."Feature_42" END AS impter_44, CASE WHEN ("ADS"."Feature_43" IS NULL) THEN 7.258872651356993 ELSE "ADS"."Feature_43" END AS impter_45, CASE WHEN ("ADS"."Feature_44" IS NULL) THEN 7.710508002783577 ELSE "ADS"."Feature_44" END AS impter_46, CASE WHEN ("ADS"."Feature_45" IS NULL) THEN 8.281141266527488 ELSE "ADS"."Feature_45" END AS impter_47, CASE WHEN ("ADS"."Feature_46" IS NULL) THEN 3.432150313152401 ELSE "ADS"."Feature_46" END AS impter_48, CASE WHEN ("ADS"."Feature_47" IS NULL) THEN 0.031315240083507306 ELSE "ADS"."Feature_47" END AS impter_49, CASE WHEN ("ADS"."Feature_48" IS NULL) THEN 0.009046624913013222 ELSE "ADS"."Feature_48" END AS impter_50, CASE WHEN ("ADS"."Feature_49" IS NULL) THEN 0.708420320111343 ELSE "ADS"."Feature_49" END AS impter_51, CASE WHEN ("ADS"."Feature_50" IS NULL) THEN 7.492693110647181 ELSE "ADS"."Feature_50" END AS impter_52, CASE WHEN ("ADS"."Feature_51" IS NULL) THEN 9.529575504523313 ELSE "ADS"."Feature_51" END AS impter_53, CASE WHEN ("ADS"."Feature_52" IS NULL) THEN 9.541405706332638 ELSE "ADS"."Feature_52" END AS impter_54, CASE WHEN ("ADS"."Feature_53" IS NULL) THEN 8.754349338900488 ELSE "ADS"."Feature_53" END AS impter_55, CASE WHEN ("ADS"."Feature_54" IS NULL) THEN 3.7397355601948505 ELSE "ADS"."Feature_54" END AS impter_56, CASE WHEN ("ADS"."Feature_55" IS NULL) THEN 0.21920668058455114 ELSE "ADS"."Feature_55" END AS impter_57, CASE WHEN ("ADS"."Feature_56" IS NULL) THEN 0.0006958942240779402 ELSE "ADS"."Feature_56" END AS impter_58, CASE WHEN ("ADS"."Feature_57" IS NULL) THEN 0.26374391092553934 ELSE "ADS"."Feature_57" END AS impter_59, CASE WHEN ("ADS"."Feature_58" IS NULL) THEN 5.474599860821155 ELSE "ADS"."Feature_58" END AS impter_60, CASE WHEN ("ADS"."Feature_59" IS NULL) THEN 12.097425191370911 ELSE "ADS"."Feature_59" END AS impter_61, CASE WHEN ("ADS"."Feature_60" IS NULL) THEN 11.8580375782881 ELSE "ADS"."Feature_60" END AS impter_62, CASE WHEN ("ADS"."Feature_61" IS NULL) THEN 6.716771050800278 ELSE "ADS"."Feature_61" END AS impter_63, CASE WHEN ("ADS"."Feature_62" IS NULL) THEN 2.0869867780097424 ELSE "ADS"."Feature_62" END AS impter_64, CASE WHEN ("ADS"."Feature_63" IS NULL) THEN 0.3862212943632568 ELSE "ADS"."Feature_63" END AS impter_65 
FROM digits AS "ADS") AS "ADS_imp_1_OUT"

-- Code For temporary table TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT_KEY" ON "TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT" ("KEY")

-- Code For temporary table TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT" (
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
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT part 2. Populate

INSERT INTO "TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT" ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11, scaler_12, scaler_13, scaler_14, scaler_15, scaler_16, scaler_17, scaler_18, scaler_19, scaler_20, scaler_21, scaler_22, scaler_23, scaler_24, scaler_25, scaler_26, scaler_27, scaler_28, scaler_29, scaler_30, scaler_31, scaler_32, scaler_33, scaler_34, scaler_35, scaler_36, scaler_37, scaler_38, scaler_39, scaler_40, scaler_41, scaler_42, scaler_43, scaler_44, scaler_45, scaler_46, scaler_47, scaler_48, scaler_49, scaler_50, scaler_51, scaler_52, scaler_53, scaler_54, scaler_55, scaler_56, scaler_57, scaler_58, scaler_59, scaler_60, scaler_61, scaler_62, scaler_63, scaler_64, scaler_65) SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11, "ADS_sca_2_OUT".scaler_12, "ADS_sca_2_OUT".scaler_13, "ADS_sca_2_OUT".scaler_14, "ADS_sca_2_OUT".scaler_15, "ADS_sca_2_OUT".scaler_16, "ADS_sca_2_OUT".scaler_17, "ADS_sca_2_OUT".scaler_18, "ADS_sca_2_OUT".scaler_19, "ADS_sca_2_OUT".scaler_20, "ADS_sca_2_OUT".scaler_21, "ADS_sca_2_OUT".scaler_22, "ADS_sca_2_OUT".scaler_23, "ADS_sca_2_OUT".scaler_24, "ADS_sca_2_OUT".scaler_25, "ADS_sca_2_OUT".scaler_26, "ADS_sca_2_OUT".scaler_27, "ADS_sca_2_OUT".scaler_28, "ADS_sca_2_OUT".scaler_29, "ADS_sca_2_OUT".scaler_30, "ADS_sca_2_OUT".scaler_31, "ADS_sca_2_OUT".scaler_32, "ADS_sca_2_OUT".scaler_33, "ADS_sca_2_OUT".scaler_34, "ADS_sca_2_OUT".scaler_35, "ADS_sca_2_OUT".scaler_36, "ADS_sca_2_OUT".scaler_37, "ADS_sca_2_OUT".scaler_38, "ADS_sca_2_OUT".scaler_39, "ADS_sca_2_OUT".scaler_40, "ADS_sca_2_OUT".scaler_41, "ADS_sca_2_OUT".scaler_42, "ADS_sca_2_OUT".scaler_43, "ADS_sca_2_OUT".scaler_44, "ADS_sca_2_OUT".scaler_45, "ADS_sca_2_OUT".scaler_46, "ADS_sca_2_OUT".scaler_47, "ADS_sca_2_OUT".scaler_48, "ADS_sca_2_OUT".scaler_49, "ADS_sca_2_OUT".scaler_50, "ADS_sca_2_OUT".scaler_51, "ADS_sca_2_OUT".scaler_52, "ADS_sca_2_OUT".scaler_53, "ADS_sca_2_OUT".scaler_54, "ADS_sca_2_OUT".scaler_55, "ADS_sca_2_OUT".scaler_56, "ADS_sca_2_OUT".scaler_57, "ADS_sca_2_OUT".scaler_58, "ADS_sca_2_OUT".scaler_59, "ADS_sca_2_OUT".scaler_60, "ADS_sca_2_OUT".scaler_61, "ADS_sca_2_OUT".scaler_62, "ADS_sca_2_OUT".scaler_63, "ADS_sca_2_OUT".scaler_64, "ADS_sca_2_OUT".scaler_65 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0) / 1.0 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 0.2950591510090466) / 0.886335971513945 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 5.104384133611691) / 4.714562522364591 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 11.791927627000696) / 4.242705177561994 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 11.84829505915101) / 4.298607850485783 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 5.823242867084203) / 5.664052593352563 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 1.394572025052192) / 3.3672537498889787 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.13430758524704245) / 1.0738488961060884 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.0055671537926235215) / 0.09121259500521199 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 1.977035490605428) / 3.1765759513448373 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 10.362560890744607) / 5.427455768043861 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 12.03061934585943) / 3.9240043126958595 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 10.271398747390396) / 4.751306782008032 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 8.121781489213639) / 6.055742470420089 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 1.8921363952679193) / 3.6358496015605493 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.11760612386917188) / 0.8809135848407257 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.0020876826722338203) / 0.04564344699180706 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 2.5427974947807934) / 3.535939148296097 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 9.935281837160751) / 5.674233427535142 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 7.099512874043145) / 5.828968622118506 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 7.132915796798887) / 6.164166380758013 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 7.81419624217119) / 6.237214641441282 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 1.8434237995824634) / 3.3552968495259408 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 0.05775922059846903) / 0.47057168084472595 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.0006958942240779402) / 0.0263706267522565 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 2.4808629088378567) / 3.1579531140532993 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 9.143354210160055) / 6.211448620771221 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 8.960334029227557) / 5.872499336895779 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 10.03688239387613) / 6.131194138822921 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 7.5949895615866385) / 5.883009512311774 AS scaler_31, (CAST("ADS_imp_1_OUT".impter_32 AS FLOAT) - 2.337508698677801) / 3.7555163121005397 AS scaler_32, (CAST("ADS_imp_1_OUT".impter_33 AS FLOAT) - 0.0027835768963117608) / 0.05268613286220741 AS scaler_33, (CAST("ADS_imp_1_OUT".impter_34 AS FLOAT) - 0.0) / 1.0 AS scaler_34, (CAST("ADS_imp_1_OUT".impter_35 AS FLOAT) - 2.3319415448851775) / 3.520361676701363 AS scaler_35, (CAST("ADS_imp_1_OUT".impter_36 AS FLOAT) - 7.608907446068198) / 6.337427127154217 AS scaler_36, (CAST("ADS_imp_1_OUT".impter_37 AS FLOAT) - 9.028531663187195) / 6.255398792908601 AS scaler_37, (CAST("ADS_imp_1_OUT".impter_38 AS FLOAT) - 10.270006958942242) / 5.918328236602452 AS scaler_38, (CAST("ADS_imp_1_OUT".impter_39 AS FLOAT) - 8.806541405706332) / 5.862505948752236 AS scaler_39, (CAST("ADS_imp_1_OUT".impter_40 AS FLOAT) - 2.8754349338900487) / 3.521551388880749 AS scaler_40, (CAST("ADS_imp_1_OUT".impter_41 AS FLOAT) - 0.0) / 1.0 AS scaler_41, (CAST("ADS_imp_1_OUT".impter_42 AS FLOAT) - 0.010438413361169102) / 0.16012222149778146 AS scaler_42, (CAST("ADS_imp_1_OUT".impter_43 AS FLOAT) - 1.5755045233124565) / 3.0148158575591246 AS scaler_43, (CAST("ADS_imp_1_OUT".impter_44 AS FLOAT) - 6.858733472512178) / 6.5422093407655435 AS scaler_44, (CAST("ADS_imp_1_OUT".impter_45 AS FLOAT) - 7.258872651356993) / 6.490917554434448 AS scaler_45, (CAST("ADS_imp_1_OUT".impter_46 AS FLOAT) - 7.710508002783577) / 6.292873620677289 AS scaler_46, (CAST("ADS_imp_1_OUT".impter_47 AS FLOAT) - 8.281141266527488) / 5.713309549149251 AS scaler_47, (CAST("ADS_imp_1_OUT".impter_48 AS FLOAT) - 3.432150313152401) / 4.326500259143386 AS scaler_48, (CAST("ADS_imp_1_OUT".impter_49 AS FLOAT) - 0.031315240083507306) / 0.33325414598330405 AS scaler_49, (CAST("ADS_imp_1_OUT".impter_50 AS FLOAT) - 0.009046624913013222) / 0.22827664222063312 AS scaler_50, (CAST("ADS_imp_1_OUT".impter_51 AS FLOAT) - 0.708420320111343) / 1.7630768232183456 AS scaler_51, (CAST("ADS_imp_1_OUT".impter_52 AS FLOAT) - 7.492693110647181) / 5.6747357473393345 AS scaler_52, (CAST("ADS_imp_1_OUT".impter_53 AS FLOAT) - 9.529575504523313) / 5.230790022511772 AS scaler_53, (CAST("ADS_imp_1_OUT".impter_54 AS FLOAT) - 9.541405706332638) / 5.2515555146947035 AS scaler_54, (CAST("ADS_imp_1_OUT".impter_55 AS FLOAT) - 8.754349338900488) / 6.0343648977583975 AS scaler_55, (CAST("ADS_imp_1_OUT".impter_56 AS FLOAT) - 3.7397355601948505) / 4.953834269857758 AS scaler_56, (CAST("ADS_imp_1_OUT".impter_57 AS FLOAT) - 0.21920668058455114) / 1.0257471420649142 AS scaler_57, (CAST("ADS_imp_1_OUT".impter_58 AS FLOAT) - 0.0006958942240779402) / 0.02637062675225659 AS scaler_58, (CAST("ADS_imp_1_OUT".impter_59 AS FLOAT) - 0.26374391092553934) / 0.893431165157604 AS scaler_59, (CAST("ADS_imp_1_OUT".impter_60 AS FLOAT) - 5.474599860821155) / 5.06659361292149 AS scaler_60, (CAST("ADS_imp_1_OUT".impter_61 AS FLOAT) - 12.097425191370911) / 4.359965306758356 AS scaler_61, (CAST("ADS_imp_1_OUT".impter_62 AS FLOAT) - 11.8580375782881) / 4.889242282258171 AS scaler_62, (CAST("ADS_imp_1_OUT".impter_63 AS FLOAT) - 6.716771050800278) / 5.87255780345831 AS scaler_63, (CAST("ADS_imp_1_OUT".impter_64 AS FLOAT) - 2.0869867780097424) / 4.12826085471658 AS scaler_64, (CAST("ADS_imp_1_OUT".impter_65 AS FLOAT) - 0.3862212943632568) / 1.915153500596726 AS scaler_65 
FROM "TMP_20180508183820_CODEGEN_BFWYGW_ADS_imp_1_OUT" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT"

-- Code For temporary table TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT part 3. Create Index 

CREATE INDEX "ix_TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT_KEY" ON "TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT" ("KEY")

-- Model deployment code

WITH random_number_cte AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", random() AS uniform 
FROM "TMP_20180508183820_CODEGEN_LE7QPP_ADS_sca_2_OUT" AS "ADS_sca_2_OUT"), 
multinomial_cte AS 
(SELECT random_number_cte."KEY" AS "KEY", CASE WHEN (random_number_cte.uniform <= 0.09603340292275574) THEN 0 ELSE CASE WHEN (random_number_cte.uniform <= 0.19832985386221294) THEN 1 ELSE CASE WHEN (random_number_cte.uniform <= 0.3013221990257481) THEN 2 ELSE CASE WHEN (random_number_cte.uniform <= 0.4022268615170494) THEN 3 ELSE CASE WHEN (random_number_cte.uniform <= 0.5073068893528183) THEN 4 ELSE CASE WHEN (random_number_cte.uniform <= 0.6075156576200417) THEN 5 ELSE CASE WHEN (random_number_cte.uniform <= 0.7063326374391092) THEN 6 ELSE CASE WHEN (random_number_cte.uniform <= 0.8037578288100209) THEN 7 ELSE CASE WHEN (random_number_cte.uniform <= 0.8977035490605428) THEN 8 ELSE CASE WHEN (random_number_cte.uniform <= 1.0) THEN 9 END END END END END END END END END END AS multinomial_expr 
FROM random_number_cte), 
dummy_class_reg_cte AS 
(SELECT multinomial_cte."KEY" AS "KEY", 0.09603340292275574 AS "Proba_0", CASE WHEN (0.09603340292275574 IS NULL OR 0.09603340292275574 > 0.0) THEN ln(0.09603340292275574) ELSE -1.79769313486231e+308 END AS "LogProba_0", 0.1022964509394572 AS "Proba_1", CASE WHEN (0.1022964509394572 IS NULL OR 0.1022964509394572 > 0.0) THEN ln(0.1022964509394572) ELSE -1.79769313486231e+308 END AS "LogProba_1", 0.10299234516353514 AS "Proba_2", CASE WHEN (0.10299234516353514 IS NULL OR 0.10299234516353514 > 0.0) THEN ln(0.10299234516353514) ELSE -1.79769313486231e+308 END AS "LogProba_2", 0.10090466249130133 AS "Proba_3", CASE WHEN (0.10090466249130133 IS NULL OR 0.10090466249130133 > 0.0) THEN ln(0.10090466249130133) ELSE -1.79769313486231e+308 END AS "LogProba_3", 0.10508002783576896 AS "Proba_4", CASE WHEN (0.10508002783576896 IS NULL OR 0.10508002783576896 > 0.0) THEN ln(0.10508002783576896) ELSE -1.79769313486231e+308 END AS "LogProba_4", 0.10020876826722339 AS "Proba_5", CASE WHEN (0.10020876826722339 IS NULL OR 0.10020876826722339 > 0.0) THEN ln(0.10020876826722339) ELSE -1.79769313486231e+308 END AS "LogProba_5", 0.09881697981906751 AS "Proba_6", CASE WHEN (0.09881697981906751 IS NULL OR 0.09881697981906751 > 0.0) THEN ln(0.09881697981906751) ELSE -1.79769313486231e+308 END AS "LogProba_6", 0.09742519137091162 AS "Proba_7", CASE WHEN (0.09742519137091162 IS NULL OR 0.09742519137091162 > 0.0) THEN ln(0.09742519137091162) ELSE -1.79769313486231e+308 END AS "LogProba_7", 0.09394572025052192 AS "Proba_8", CASE WHEN (0.09394572025052192 IS NULL OR 0.09394572025052192 > 0.0) THEN ln(0.09394572025052192) ELSE -1.79769313486231e+308 END AS "LogProba_8", 0.1022964509394572 AS "Proba_9", CASE WHEN (0.1022964509394572 IS NULL OR 0.1022964509394572 > 0.0) THEN ln(0.1022964509394572) ELSE -1.79769313486231e+308 END AS "LogProba_9", multinomial_cte.multinomial_expr AS "Decision" 
FROM multinomial_cte)
 SELECT dummy_class_reg_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", CAST(NULL AS FLOAT) AS "Score_4", CAST(NULL AS FLOAT) AS "Score_5", CAST(NULL AS FLOAT) AS "Score_6", CAST(NULL AS FLOAT) AS "Score_7", CAST(NULL AS FLOAT) AS "Score_8", CAST(NULL AS FLOAT) AS "Score_9", dummy_class_reg_cte."Proba_0" AS "Proba_0", dummy_class_reg_cte."Proba_1" AS "Proba_1", dummy_class_reg_cte."Proba_2" AS "Proba_2", dummy_class_reg_cte."Proba_3" AS "Proba_3", dummy_class_reg_cte."Proba_4" AS "Proba_4", dummy_class_reg_cte."Proba_5" AS "Proba_5", dummy_class_reg_cte."Proba_6" AS "Proba_6", dummy_class_reg_cte."Proba_7" AS "Proba_7", dummy_class_reg_cte."Proba_8" AS "Proba_8", dummy_class_reg_cte."Proba_9" AS "Proba_9", dummy_class_reg_cte."LogProba_0" AS "LogProba_0", dummy_class_reg_cte."LogProba_1" AS "LogProba_1", dummy_class_reg_cte."LogProba_2" AS "LogProba_2", dummy_class_reg_cte."LogProba_3" AS "LogProba_3", dummy_class_reg_cte."LogProba_4" AS "LogProba_4", dummy_class_reg_cte."LogProba_5" AS "LogProba_5", dummy_class_reg_cte."LogProba_6" AS "LogProba_6", dummy_class_reg_cte."LogProba_7" AS "LogProba_7", dummy_class_reg_cte."LogProba_8" AS "LogProba_8", dummy_class_reg_cte."LogProba_9" AS "LogProba_9", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM dummy_class_reg_cte