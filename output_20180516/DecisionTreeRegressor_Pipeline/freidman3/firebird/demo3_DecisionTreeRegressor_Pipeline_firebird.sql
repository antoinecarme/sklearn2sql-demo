-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor_Pipeline
-- Dataset : freidman3
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516_CODEGEN_6MJ9FU_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_6MJ9FU_ADS" (
	"KEY" BIGINT NOT NULL, 
	imputer_output_2 DOUBLE PRECISION, 
	imputer_output_3 DOUBLE PRECISION, 
	imputer_output_4 DOUBLE PRECISION, 
	imputer_output_5 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_6MJ9FU_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_6MJ9FU_ADS" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM freidman3 AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_6MJ9FU_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_1a8b" ON "TMP_20180516_CODEGEN_6MJ9FU_ADS" ("KEY")

-- Code For temporary table TMP_20180516_CODEGEN_7HP6X8_ADS part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "TMP_20180516_CODEGEN_7HP6X8_ADS" (
	"KEY" BIGINT NOT NULL, 
	scaler_output_2 DOUBLE PRECISION, 
	scaler_output_3 DOUBLE PRECISION, 
	scaler_output_4 DOUBLE PRECISION, 
	scaler_output_5 DOUBLE PRECISION, 
	PRIMARY KEY ("KEY")
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table TMP_20180516_CODEGEN_7HP6X8_ADS part 2. Populate

INSERT INTO "TMP_20180516_CODEGEN_7HP6X8_ADS" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS DOUBLE PRECISION) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS DOUBLE PRECISION) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS DOUBLE PRECISION) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS DOUBLE PRECISION) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "TMP_20180516_CODEGEN_6MJ9FU_ADS" AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Code For temporary table TMP_20180516_CODEGEN_7HP6X8_ADS part 3. Create Index 

CREATE INDEX "ix_TMP_20180516_CODEGEN_c8f6" ON "TMP_20180516_CODEGEN_7HP6X8_ADS" ("KEY")

-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.4309000968933105) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.5874325633049011) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.7431707382202148) THEN 3 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.4679744839668274) THEN 5 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.341475486755371) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.9926323890686035) THEN 8 ELSE 9 END ELSE 10 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.084075689315796) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.0887349471449852) THEN 13 ELSE 14 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.14987096190452576) THEN 16 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.2956656813621521) THEN 18 ELSE 19 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.6816338896751404) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.4988391399383545) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5453606247901917) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.0005476325750350952) THEN 24 ELSE 25 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.7171177864074707) THEN 27 ELSE 28 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.1697484254837036) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.1073124408721924) THEN 31 ELSE 32 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.9979358315467834) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -1.3966397047042847) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.6280219554901123) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.020498842000961304) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.012352705001831) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7431471347808838) THEN 39 ELSE 40 END ELSE 41 END ELSE 42 END ELSE 43 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.232205331325531) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.4927690029144287) THEN 46 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.46476495265960693) THEN 48 ELSE 49 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.4570233225822449) THEN 51 ELSE 52 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.013251647353172302) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.07885412126779556) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.7572466135025024) THEN 56 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.6148404479026794) THEN 58 ELSE 59 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.2677711248397827) THEN 61 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.7974013090133667) THEN 63 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.23644034564495087) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.380851149559021) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.567314863204956) THEN 67 ELSE 68 END ELSE 69 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 1.26242196559906) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.369677871465683) THEN 72 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.1107220649719238) THEN 74 ELSE 75 END END ELSE 76 END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.5779826641082764) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.2896973192691803) THEN 79 ELSE 80 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 0.3047986328601837) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.35247907042503357) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.1869203746318817) THEN 84 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.19583165645599365) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.3807009756565094) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.4673061966896057) THEN 88 ELSE 89 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.8735226988792419) THEN 91 ELSE 92 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.35755085945129395) THEN 94 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.7350868582725525) THEN 96 ELSE 97 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.579698383808136) THEN 99 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= -0.06669343262910843) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.5970724821090698) THEN 102 ELSE 103 END ELSE 104 END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.824400007724762) THEN 106 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 1.3279410600662231) THEN 108 ELSE 109 END END END END END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.20375587046146393) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.7887826561927795) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.494538426399231) THEN 113 ELSE 114 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.388088583946228) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.3915177583694458) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= -0.11814114451408386) THEN 118 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -0.6551733016967773) THEN 120 ELSE 121 END END ELSE 122 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= -1.5442689657211304) THEN 124 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.054462283849716187) THEN 126 ELSE 127 END END END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -1.0818235874176025) THEN 129 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= -0.4965199828147888) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.3182849586009979) THEN 132 ELSE 133 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 1.2776389122009277) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_5 <= 0.955989420413971) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.38377708196640015) THEN 137 ELSE 138 END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.5762916803359985) THEN CASE WHEN ("ADS_sca_2_OUT".scaler_output_4 <= 0.7659375667572021) THEN 141 ELSE 142 END ELSE 143 END END ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_3 <= 0.2843315601348877) THEN 145 ELSE CASE WHEN ("ADS_sca_2_OUT".scaler_output_2 <= 1.2282309532165527) THEN 147 ELSE 148 END END END END END END END END AS node_id_2 
FROM "TMP_20180516_CODEGEN_7HP6X8_ADS" AS "ADS_sca_2_OUT"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 3 AS nid, 0.6100168381304848 AS "E" FROM rdb$database UNION ALL SELECT 5 AS nid, 1.1409162524546155 AS "E" FROM rdb$database UNION ALL SELECT 8 AS nid, 1.350090108150775 AS "E" FROM rdb$database UNION ALL SELECT 9 AS nid, 1.3687175770364277 AS "E" FROM rdb$database UNION ALL SELECT 10 AS nid, 1.4092998433520778 AS "E" FROM rdb$database UNION ALL SELECT 13 AS nid, 0.8079109230317987 AS "E" FROM rdb$database UNION ALL SELECT 14 AS nid, 0.7050714675464733 AS "E" FROM rdb$database UNION ALL SELECT 16 AS nid, 0.4848669214064692 AS "E" FROM rdb$database UNION ALL SELECT 18 AS nid, 0.3751675659770648 AS "E" FROM rdb$database UNION ALL SELECT 19 AS nid, 0.38342473185592096 AS "E" FROM rdb$database UNION ALL SELECT 24 AS nid, 1.1156147639563705 AS "E" FROM rdb$database UNION ALL SELECT 25 AS nid, 1.1610071359052208 AS "E" FROM rdb$database UNION ALL SELECT 27 AS nid, 1.5359670902044162 AS "E" FROM rdb$database UNION ALL SELECT 28 AS nid, 1.4518609404362353 AS "E" FROM rdb$database UNION ALL SELECT 31 AS nid, 1.314325621172093 AS "E" FROM rdb$database UNION ALL SELECT 32 AS nid, 1.341344197483337 AS "E" FROM rdb$database UNION ALL SELECT 39 AS nid, 1.5696790399866454 AS "E" FROM rdb$database UNION ALL SELECT 40 AS nid, 1.570583991203967 AS "E" FROM rdb$database UNION ALL SELECT 41 AS nid, 1.5684866939082733 AS "E" FROM rdb$database UNION ALL SELECT 42 AS nid, 1.5644407243483047 AS "E" FROM rdb$database UNION ALL SELECT 43 AS nid, 1.5543288470291443 AS "E" FROM rdb$database UNION ALL SELECT 46 AS nid, 1.5278745466047203 AS "E" FROM rdb$database UNION ALL SELECT 48 AS nid, 1.536711230505171 AS "E" FROM rdb$database UNION ALL SELECT 49 AS nid, 1.541589567106448 AS "E" FROM rdb$database UNION ALL SELECT 51 AS nid, 1.556101969927248 AS "E" FROM rdb$database UNION ALL SELECT 52 AS nid, 1.5623228105763816 AS "E" FROM rdb$database UNION ALL SELECT 56 AS nid, 1.3678941404936502 AS "E" FROM rdb$database UNION ALL SELECT 58 AS nid, 1.410743936534041 AS "E" FROM rdb$database UNION ALL SELECT 59 AS nid, 1.4251802174855326 AS "E" FROM rdb$database UNION ALL SELECT 61 AS nid, 1.3844945172080796 AS "E" FROM rdb$database UNION ALL SELECT 63 AS nid, 1.534059281886407 AS "E" FROM rdb$database UNION ALL SELECT 67 AS nid, 1.496561917506885 AS "E" FROM rdb$database UNION ALL SELECT 68 AS nid, 1.499027385598966 AS "E" FROM rdb$database UNION ALL SELECT 69 AS nid, 1.4872578515104244 AS "E" FROM rdb$database UNION ALL SELECT 72 AS nid, 1.467648677980467 AS "E" FROM rdb$database UNION ALL SELECT 74 AS nid, 1.4642487267988717 AS "E" FROM rdb$database UNION ALL SELECT 75 AS nid, 1.4608890093126605 AS "E" FROM rdb$database UNION ALL SELECT 76 AS nid, 1.4929217934494698 AS "E" FROM rdb$database UNION ALL SELECT 79 AS nid, 1.4771263961886638 AS "E" FROM rdb$database UNION ALL SELECT 80 AS nid, 1.477951453333812 AS "E" FROM rdb$database UNION ALL SELECT 84 AS nid, 1.50778906671016 AS "E" FROM rdb$database UNION ALL SELECT 88 AS nid, 1.527762553523396 AS "E" FROM rdb$database UNION ALL SELECT 89 AS nid, 1.5318155845359613 AS "E" FROM rdb$database UNION ALL SELECT 91 AS nid, 1.5352537026948319 AS "E" FROM rdb$database UNION ALL SELECT 92 AS nid, 1.5325692862833142 AS "E" FROM rdb$database UNION ALL SELECT 94 AS nid, 1.5309500463495263 AS "E" FROM rdb$database UNION ALL SELECT 96 AS nid, 1.5218889384499552 AS "E" FROM rdb$database UNION ALL SELECT 97 AS nid, 1.521297715153797 AS "E" FROM rdb$database UNION ALL SELECT 99 AS nid, 1.5248539791622286 AS "E" FROM rdb$database UNION ALL SELECT 102 AS nid, 1.54561918356505 AS "E" FROM rdb$database UNION ALL SELECT 103 AS nid, 1.5438983791624072 AS "E" FROM rdb$database UNION ALL SELECT 104 AS nid, 1.5374002322115805 AS "E" FROM rdb$database UNION ALL SELECT 106 AS nid, 1.484710993001392 AS "E" FROM rdb$database UNION ALL SELECT 108 AS nid, 1.5032073896269296 AS "E" FROM rdb$database UNION ALL SELECT 109 AS nid, 1.5126619620701551 AS "E" FROM rdb$database UNION ALL SELECT 113 AS nid, 1.0274843519223331 AS "E" FROM rdb$database UNION ALL SELECT 114 AS nid, 1.076547084481779 AS "E" FROM rdb$database UNION ALL SELECT 118 AS nid, 1.1577860434316234 AS "E" FROM rdb$database UNION ALL SELECT 120 AS nid, 1.1082904037450438 AS "E" FROM rdb$database UNION ALL SELECT 121 AS nid, 1.1063441203172228 AS "E" FROM rdb$database UNION ALL SELECT 122 AS nid, 1.1968265037681187 AS "E" FROM rdb$database UNION ALL SELECT 124 AS nid, 1.1440564349145939 AS "E" FROM rdb$database UNION ALL SELECT 126 AS nid, 1.2791824090500283 AS "E" FROM rdb$database UNION ALL SELECT 127 AS nid, 1.26722341655496 AS "E" FROM rdb$database UNION ALL SELECT 129 AS nid, 1.0818920012987259 AS "E" FROM rdb$database UNION ALL SELECT 132 AS nid, 1.3498429932286293 AS "E" FROM rdb$database UNION ALL SELECT 133 AS nid, 1.3463614795691619 AS "E" FROM rdb$database UNION ALL SELECT 137 AS nid, 1.4719390289797578 AS "E" FROM rdb$database UNION ALL SELECT 138 AS nid, 1.4670826204003844 AS "E" FROM rdb$database UNION ALL SELECT 141 AS nid, 1.4860572646626233 AS "E" FROM rdb$database UNION ALL SELECT 142 AS nid, 1.4783281269798374 AS "E" FROM rdb$database UNION ALL SELECT 143 AS nid, 1.4949662645575934 AS "E" FROM rdb$database UNION ALL SELECT 145 AS nid, 1.4932233184960249 AS "E" FROM rdb$database UNION ALL SELECT 147 AS nid, 1.5028235051542993 AS "E" FROM rdb$database UNION ALL SELECT 148 AS nid, 1.5099001489420028 AS "E" FROM rdb$database) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"