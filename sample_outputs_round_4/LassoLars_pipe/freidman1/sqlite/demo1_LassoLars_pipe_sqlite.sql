-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.504324471103 ELSE "ADS"."Feature_0" END AS impute_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.543174976424 ELSE "ADS"."Feature_1" END AS impute_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.501026872866 ELSE "ADS"."Feature_2" END AS impute_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 0.503560224642 ELSE "ADS"."Feature_3" END AS impute_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.488877081619 ELSE "ADS"."Feature_4" END AS impute_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.417466697736 ELSE "ADS"."Feature_5" END AS impute_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.545516101869 ELSE "ADS"."Feature_6" END AS impute_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.491227216039 ELSE "ADS"."Feature_7" END AS impute_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.472059102246 ELSE "ADS"."Feature_8" END AS impute_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.480446706666 ELSE "ADS"."Feature_9" END AS impute_11 
FROM "INPUT_DATA" AS "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_2 - 0.504324471103 AS impute_2, "ADS_imp_1_OUT".impute_3 - 0.543174976424 AS impute_3, "ADS_imp_1_OUT".impute_4 - 0.501026872866 AS impute_4, "ADS_imp_1_OUT".impute_5 - 0.503560224642 AS impute_5, "ADS_imp_1_OUT".impute_6 - 0.488877081619 AS impute_6, "ADS_imp_1_OUT".impute_7 - 0.417466697736 AS impute_7, "ADS_imp_1_OUT".impute_8 - 0.545516101869 AS impute_8, "ADS_imp_1_OUT".impute_9 - 0.491227216039 AS impute_9, "ADS_imp_1_OUT".impute_10 - 0.472059102246 AS impute_10, "ADS_imp_1_OUT".impute_11 - 0.480446706666 AS impute_11 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_2 * 0.556479700031 + "CenteredDataForPCA".impute_3 * -0.206895104086 + "CenteredDataForPCA".impute_4 * -0.267368623701 + "CenteredDataForPCA".impute_5 * -0.0244812740123 + "CenteredDataForPCA".impute_6 * 0.334968564909 + "CenteredDataForPCA".impute_7 * 0.307977461569 + "CenteredDataForPCA".impute_8 * 0.357737470774 + "CenteredDataForPCA".impute_9 * -0.0782305468795 + "CenteredDataForPCA".impute_10 * -0.0175050045289 + "CenteredDataForPCA".impute_11 * 0.483717735549 AS anoova_2, "CenteredDataForPCA".impute_2 * -0.198424175143 + "CenteredDataForPCA".impute_3 * -0.263474122601 + "CenteredDataForPCA".impute_4 * -0.389452189188 + "CenteredDataForPCA".impute_5 * 0.158880364907 + "CenteredDataForPCA".impute_6 * -0.647053012342 + "CenteredDataForPCA".impute_7 * 0.169290011442 + "CenteredDataForPCA".impute_8 * -0.128525575499 + "CenteredDataForPCA".impute_9 * 0.083786552288 + "CenteredDataForPCA".impute_10 * 0.327391050261 + "CenteredDataForPCA".impute_11 * 0.369097056307 AS anoova_3, "CenteredDataForPCA".impute_2 * -0.176827430503 + "CenteredDataForPCA".impute_3 * 0.086332780566 + "CenteredDataForPCA".impute_4 * -0.0242851110977 + "CenteredDataForPCA".impute_5 * -0.554765932404 + "CenteredDataForPCA".impute_6 * 0.150662108867 + "CenteredDataForPCA".impute_7 * 0.308997842231 + "CenteredDataForPCA".impute_8 * -0.246028320308 + "CenteredDataForPCA".impute_9 * -0.569096250401 + "CenteredDataForPCA".impute_10 * 0.387738953459 + "CenteredDataForPCA".impute_11 * 0.00173039010391 AS anoova_4, "CenteredDataForPCA".impute_2 * 0.12538866018 + "CenteredDataForPCA".impute_3 * -0.236149967162 + "CenteredDataForPCA".impute_4 * 0.330433766345 + "CenteredDataForPCA".impute_5 * -0.577921729554 + "CenteredDataForPCA".impute_6 * -0.268197816276 + "CenteredDataForPCA".impute_7 * 0.377468503939 + "CenteredDataForPCA".impute_8 * 0.039357116157 + "CenteredDataForPCA".impute_9 * 0.483554988813 + "CenteredDataForPCA".impute_10 * -0.157853789548 + "CenteredDataForPCA".impute_11 * -0.103083018399 AS anoova_5, "CenteredDataForPCA".impute_2 * 0.14980365681 + "CenteredDataForPCA".impute_3 * 0.0130191054326 + "CenteredDataForPCA".impute_4 * -0.313977168824 + "CenteredDataForPCA".impute_5 * 0.239422205727 + "CenteredDataForPCA".impute_6 * 0.199023791084 + "CenteredDataForPCA".impute_7 * 0.377909276865 + "CenteredDataForPCA".impute_8 * -0.0376418772255 + "CenteredDataForPCA".impute_9 * 0.290857802214 + "CenteredDataForPCA".impute_10 * 0.415582461061 + "CenteredDataForPCA".impute_11 * -0.616712953677 AS anoova_6, "CenteredDataForPCA".impute_2 * 0.669435516951 + "CenteredDataForPCA".impute_3 * 0.400147417829 + "CenteredDataForPCA".impute_4 * -0.203691050694 + "CenteredDataForPCA".impute_5 * -0.206543007632 + "CenteredDataForPCA".impute_6 * -0.399546769675 + "CenteredDataForPCA".impute_7 * -0.280975709836 + "CenteredDataForPCA".impute_8 * -0.212777036482 + "CenteredDataForPCA".impute_9 * -0.0905904227395 + "CenteredDataForPCA".impute_10 * 0.0196666439824 + "CenteredDataForPCA".impute_11 * -0.12302696862 AS anoova_7, "CenteredDataForPCA".impute_2 * 0.317656739753 + "CenteredDataForPCA".impute_3 * -0.11894173588 + "CenteredDataForPCA".impute_4 * 0.716673041017 + "CenteredDataForPCA".impute_5 * 0.359859010907 + "CenteredDataForPCA".impute_6 * -0.116893910194 + "CenteredDataForPCA".impute_7 * 0.0762437672151 + "CenteredDataForPCA".impute_8 * -0.0764204219679 + "CenteredDataForPCA".impute_9 * -0.161731235733 + "CenteredDataForPCA".impute_10 * 0.429564771244 + "CenteredDataForPCA".impute_11 * 0.076341595639 AS anoova_8, "CenteredDataForPCA".impute_2 * 0.0255090924769 + "CenteredDataForPCA".impute_3 * -0.487517397931 + "CenteredDataForPCA".impute_4 * -0.0650076316668 + "CenteredDataForPCA".impute_5 * -0.147911932657 + "CenteredDataForPCA".impute_6 * -0.203294365791 + "CenteredDataForPCA".impute_7 * -0.327450802762 + "CenteredDataForPCA".impute_8 * 0.559237858711 + "CenteredDataForPCA".impute_9 * -0.321114597933 + "CenteredDataForPCA".impute_10 * 0.129720240765 + "CenteredDataForPCA".impute_11 * -0.392849341403 AS anoova_9, "CenteredDataForPCA".impute_2 * 0.178208995516 + "CenteredDataForPCA".impute_3 * -0.632831987693 + "CenteredDataForPCA".impute_4 * -0.0949366888972 + "CenteredDataForPCA".impute_5 * 0.0508955591125 + "CenteredDataForPCA".impute_6 * 0.15710795069 + "CenteredDataForPCA".impute_7 * -0.108410283271 + "CenteredDataForPCA".impute_8 * -0.648817202755 + "CenteredDataForPCA".impute_9 * -0.116949282889 + "CenteredDataForPCA".impute_10 * -0.268430583606 + "CenteredDataForPCA".impute_11 * -0.114150440955 AS anoova_10, "CenteredDataForPCA".impute_2 * 0.00824152595139 + "CenteredDataForPCA".impute_3 * 0.109414437191 + "CenteredDataForPCA".impute_4 * 0.0115693286547 + "CenteredDataForPCA".impute_5 * 0.280087699724 + "CenteredDataForPCA".impute_6 * -0.309136759203 + "CenteredDataForPCA".impute_7 * 0.540347977118 + "CenteredDataForPCA".impute_8 * 0.084760587451 + "CenteredDataForPCA".impute_9 * -0.439784296648 + "CenteredDataForPCA".impute_10 * -0.52033219151 + "CenteredDataForPCA".impute_11 * -0.224713023056 AS anoova_11 
FROM "CenteredDataForPCA"), 
linear_model_cte AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", 0.0 * "ADS_ano_2_OUT".anoova_2 + 0.0 * "ADS_ano_2_OUT".anoova_3 + 0.0 * "ADS_ano_2_OUT".anoova_4 + 0.0 * "ADS_ano_2_OUT".anoova_5 + 0.0 * "ADS_ano_2_OUT".anoova_6 + 0.0 * "ADS_ano_2_OUT".anoova_7 + 0.0 * "ADS_ano_2_OUT".anoova_8 + 0.0 * "ADS_ano_2_OUT".anoova_9 + 0.0 * "ADS_ano_2_OUT".anoova_10 + 0.0 * "ADS_ano_2_OUT".anoova_11 + 14.6104244759 AS "Estimator" 
FROM "ADS_ano_2_OUT")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte