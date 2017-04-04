-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN -0.0193318171341 ELSE "ADS"."Feature_0" END AS impute_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 0.101962742496 ELSE "ADS"."Feature_1" END AS impute_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.106130225645 ELSE "ADS"."Feature_2" END AS impute_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.0595779062906 ELSE "ADS"."Feature_3" END AS impute_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN -0.0361899936467 ELSE "ADS"."Feature_4" END AS impute_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN -0.22012198794 ELSE "ADS"."Feature_5" END AS impute_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.114483698317 ELSE "ADS"."Feature_6" END AS impute_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0531781954966 ELSE "ADS"."Feature_7" END AS impute_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.166014941758 ELSE "ADS"."Feature_8" END AS impute_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.0374446711894 ELSE "ADS"."Feature_9" END AS impute_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN -0.335214785976 ELSE "ADS"."Feature_10" END AS impute_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 0.100821928987 ELSE "ADS"."Feature_11" END AS impute_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 0.0131333038674 ELSE "ADS"."Feature_12" END AS impute_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN -0.0652517603955 ELSE "ADS"."Feature_13" END AS impute_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.364319039088 ELSE "ADS"."Feature_14" END AS impute_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN -0.0294969156186 ELSE "ADS"."Feature_15" END AS impute_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN -0.00883136454898 ELSE "ADS"."Feature_16" END AS impute_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0470465310598 ELSE "ADS"."Feature_17" END AS impute_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN -0.0183343864352 ELSE "ADS"."Feature_18" END AS impute_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.081784711838 ELSE "ADS"."Feature_19" END AS impute_21 
FROM "INPUT_DATA" "ADS"), 
"CenteredDataForPCA" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", "ADS_imp_1_OUT".impute_2 - -0.0193318171341 AS impute_2, "ADS_imp_1_OUT".impute_3 - 0.101962742496 AS impute_3, "ADS_imp_1_OUT".impute_4 - 0.106130225645 AS impute_4, "ADS_imp_1_OUT".impute_5 - -0.0595779062906 AS impute_5, "ADS_imp_1_OUT".impute_6 - -0.0361899936467 AS impute_6, "ADS_imp_1_OUT".impute_7 - -0.22012198794 AS impute_7, "ADS_imp_1_OUT".impute_8 - 0.114483698317 AS impute_8, "ADS_imp_1_OUT".impute_9 - 0.0531781954966 AS impute_9, "ADS_imp_1_OUT".impute_10 - 0.166014941758 AS impute_10, "ADS_imp_1_OUT".impute_11 - -0.0374446711894 AS impute_11, "ADS_imp_1_OUT".impute_12 - -0.335214785976 AS impute_12, "ADS_imp_1_OUT".impute_13 - 0.100821928987 AS impute_13, "ADS_imp_1_OUT".impute_14 - 0.0131333038674 AS impute_14, "ADS_imp_1_OUT".impute_15 - -0.0652517603955 AS impute_15, "ADS_imp_1_OUT".impute_16 - 0.364319039088 AS impute_16, "ADS_imp_1_OUT".impute_17 - -0.0294969156186 AS impute_17, "ADS_imp_1_OUT".impute_18 - -0.00883136454898 AS impute_18, "ADS_imp_1_OUT".impute_19 - 0.0470465310598 AS impute_19, "ADS_imp_1_OUT".impute_20 - -0.0183343864352 AS impute_20, "ADS_imp_1_OUT".impute_21 - 0.081784711838 AS impute_21 
FROM "ADS_imp_1_OUT"), 
"ADS_ano_2_OUT" AS 
(SELECT "CenteredDataForPCA"."KEY" AS "KEY", "CenteredDataForPCA".impute_2 * -0.090976606624 + "CenteredDataForPCA".impute_3 * 0.0414711669043 + "CenteredDataForPCA".impute_4 * 0.0613774685764 + "CenteredDataForPCA".impute_5 * 0.26981442935 + "CenteredDataForPCA".impute_6 * -0.0587566813337 + "CenteredDataForPCA".impute_7 * 0.689847204274 + "CenteredDataForPCA".impute_8 * 0.0237783363655 + "CenteredDataForPCA".impute_9 * -0.0417806689012 + "CenteredDataForPCA".impute_10 * 0.0256856473162 + "CenteredDataForPCA".impute_11 * -0.129695854116 + "CenteredDataForPCA".impute_12 * 0.199928455276 + "CenteredDataForPCA".impute_13 * 0.0445620821807 + "CenteredDataForPCA".impute_14 * 0.291866033762 + "CenteredDataForPCA".impute_15 * -0.0160508894296 + "CenteredDataForPCA".impute_16 * 0.0384228072858 + "CenteredDataForPCA".impute_17 * 0.00175681917011 + "CenteredDataForPCA".impute_18 * -0.0386737888364 + "CenteredDataForPCA".impute_19 * 0.531054901065 + "CenteredDataForPCA".impute_20 * -0.0362705116012 + "CenteredDataForPCA".impute_21 * -0.0243427280623 AS anoova_2, "CenteredDataForPCA".impute_2 * 0.110659788692 + "CenteredDataForPCA".impute_3 * -0.0930494238792 + "CenteredDataForPCA".impute_4 * 0.0328910652761 + "CenteredDataForPCA".impute_5 * -0.00319968546209 + "CenteredDataForPCA".impute_6 * -0.149123245318 + "CenteredDataForPCA".impute_7 * 0.199196532891 + "CenteredDataForPCA".impute_8 * -0.00928150942872 + "CenteredDataForPCA".impute_9 * 0.00496337733485 + "CenteredDataForPCA".impute_10 * 0.0204964381056 + "CenteredDataForPCA".impute_11 * 0.0784791420873 + "CenteredDataForPCA".impute_12 * 0.638863192158 + "CenteredDataForPCA".impute_13 * -0.068827955308 + "CenteredDataForPCA".impute_14 * -0.0444800160291 + "CenteredDataForPCA".impute_15 * -0.0621703545875 + "CenteredDataForPCA".impute_16 * -0.564467062751 + "CenteredDataForPCA".impute_17 * -0.0347095852371 + "CenteredDataForPCA".impute_18 * 0.0828173722921 + "CenteredDataForPCA".impute_19 * -0.400500745619 + "CenteredDataForPCA".impute_20 * -0.00514740322835 + "CenteredDataForPCA".impute_21 * -0.0596349103046 AS anoova_3, "CenteredDataForPCA".impute_2 * 0.123462886009 + "CenteredDataForPCA".impute_3 * -0.0931625268171 + "CenteredDataForPCA".impute_4 * 0.110786653661 + "CenteredDataForPCA".impute_5 * -0.430394838971 + "CenteredDataForPCA".impute_6 * 0.0962318363588 + "CenteredDataForPCA".impute_7 * 0.132185699502 + "CenteredDataForPCA".impute_8 * -0.0589628381255 + "CenteredDataForPCA".impute_9 * 0.106213591977 + "CenteredDataForPCA".impute_10 * -0.167790453097 + "CenteredDataForPCA".impute_11 * -0.141207717588 + "CenteredDataForPCA".impute_12 * 0.223491457865 + "CenteredDataForPCA".impute_13 * -0.0528271325375 + "CenteredDataForPCA".impute_14 * -0.692898952389 + "CenteredDataForPCA".impute_15 * -0.0122435064277 + "CenteredDataForPCA".impute_16 * 0.113516346496 + "CenteredDataForPCA".impute_17 * -0.0186873934476 + "CenteredDataForPCA".impute_18 * -0.0594212628787 + "CenteredDataForPCA".impute_19 * 0.349329821135 + "CenteredDataForPCA".impute_20 * 0.102173030451 + "CenteredDataForPCA".impute_21 * -0.0821262277691 AS anoova_4, "CenteredDataForPCA".impute_2 * 0.0351707452352 + "CenteredDataForPCA".impute_3 * -0.0466082303914 + "CenteredDataForPCA".impute_4 * 0.0339998048765 + "CenteredDataForPCA".impute_5 * -0.172285582736 + "CenteredDataForPCA".impute_6 * -0.0983301165352 + "CenteredDataForPCA".impute_7 * 0.153143888723 + "CenteredDataForPCA".impute_8 * -0.327903449008 + "CenteredDataForPCA".impute_9 * 0.106506393644 + "CenteredDataForPCA".impute_10 * -0.120574889108 + "CenteredDataForPCA".impute_11 * -0.0476825000772 + "CenteredDataForPCA".impute_12 * 0.309921396448 + "CenteredDataForPCA".impute_13 * -0.0507739525826 + "CenteredDataForPCA".impute_14 * 0.218276256885 + "CenteredDataForPCA".impute_15 * -0.0361403771099 + "CenteredDataForPCA".impute_16 * 0.681538809341 + "CenteredDataForPCA".impute_17 * 0.0996447618546 + "CenteredDataForPCA".impute_18 * -0.0112561469654 + "CenteredDataForPCA".impute_19 * -0.379820320005 + "CenteredDataForPCA".impute_20 * -0.060206989807 + "CenteredDataForPCA".impute_21 * 0.164119192328 AS anoova_5, "CenteredDataForPCA".impute_2 * -0.435842615796 + "CenteredDataForPCA".impute_3 * 0.300857575021 + "CenteredDataForPCA".impute_4 * 0.213809892789 + "CenteredDataForPCA".impute_5 * 0.00843810462435 + "CenteredDataForPCA".impute_6 * 0.380326032103 + "CenteredDataForPCA".impute_7 * 0.00493737810362 + "CenteredDataForPCA".impute_8 * 0.0662602046608 + "CenteredDataForPCA".impute_9 * 0.268812885161 + "CenteredDataForPCA".impute_10 * -0.143243024711 + "CenteredDataForPCA".impute_11 * -0.0651947755008 + "CenteredDataForPCA".impute_12 * 0.079192469697 + "CenteredDataForPCA".impute_13 * -0.00866319843231 + "CenteredDataForPCA".impute_14 * 0.000163139322692 + "CenteredDataForPCA".impute_15 * -0.221267268612 + "CenteredDataForPCA".impute_16 * -0.106096508684 + "CenteredDataForPCA".impute_17 * -0.277782776784 + "CenteredDataForPCA".impute_18 * -0.0305183276415 + "CenteredDataForPCA".impute_19 * -0.0768262526574 + "CenteredDataForPCA".impute_20 * 0.18002777361 + "CenteredDataForPCA".impute_21 * 0.494650360108 AS anoova_6, "CenteredDataForPCA".impute_2 * 0.135577822204 + "CenteredDataForPCA".impute_3 * -0.723915835323 + "CenteredDataForPCA".impute_4 * 0.313440092465 + "CenteredDataForPCA".impute_5 * 0.112619121279 + "CenteredDataForPCA".impute_6 * -0.123396558633 + "CenteredDataForPCA".impute_7 * -0.0320232779028 + "CenteredDataForPCA".impute_8 * -0.0330409715297 + "CenteredDataForPCA".impute_9 * -0.0114293484846 + "CenteredDataForPCA".impute_10 * -0.110919001785 + "CenteredDataForPCA".impute_11 * 0.0312994565622 + "CenteredDataForPCA".impute_12 * -0.150616517931 + "CenteredDataForPCA".impute_13 * -0.0764551266489 + "CenteredDataForPCA".impute_14 * 0.0892540878725 + "CenteredDataForPCA".impute_15 * -0.0859824549052 + "CenteredDataForPCA".impute_16 * -0.07386725074 + "CenteredDataForPCA".impute_17 * 0.0312983895787 + "CenteredDataForPCA".impute_18 * 0.0491462569812 + "CenteredDataForPCA".impute_19 * 0.0882071758775 + "CenteredDataForPCA".impute_20 * 0.329713333744 + "CenteredDataForPCA".impute_21 * 0.382944959828 AS anoova_7, "CenteredDataForPCA".impute_2 * 0.481074298554 + "CenteredDataForPCA".impute_3 * 0.0096574784293 + "CenteredDataForPCA".impute_4 * 0.0158465382036 + "CenteredDataForPCA".impute_5 * 0.0128014939177 + "CenteredDataForPCA".impute_6 * 0.54888147884 + "CenteredDataForPCA".impute_7 * 0.0768832286048 + "CenteredDataForPCA".impute_8 * 0.0221014015788 + "CenteredDataForPCA".impute_9 * -0.143041673216 + "CenteredDataForPCA".impute_10 * 0.398864365093 + "CenteredDataForPCA".impute_11 * 0.245401951785 + "CenteredDataForPCA".impute_12 * 0.0602743921944 + "CenteredDataForPCA".impute_13 * -0.160192557303 + "CenteredDataForPCA".impute_14 * 0.0586693486612 + "CenteredDataForPCA".impute_15 * -0.130060555003 + "CenteredDataForPCA".impute_16 * 0.0580219441588 + "CenteredDataForPCA".impute_17 * -0.0137520625949 + "CenteredDataForPCA".impute_18 * -0.391753662507 + "CenteredDataForPCA".impute_19 * -0.00984120764838 + "CenteredDataForPCA".impute_20 * 0.00437227284626 + "CenteredDataForPCA".impute_21 * 0.117549985682 AS anoova_8, "CenteredDataForPCA".impute_2 * -0.563221853622 + "CenteredDataForPCA".impute_3 * -0.30383499386 + "CenteredDataForPCA".impute_4 * -0.0745375471062 + "CenteredDataForPCA".impute_5 * -0.150336110823 + "CenteredDataForPCA".impute_6 * 0.0149107747089 + "CenteredDataForPCA".impute_7 * 0.036774212653 + "CenteredDataForPCA".impute_8 * 0.36233254798 + "CenteredDataForPCA".impute_9 * -0.184949507486 + "CenteredDataForPCA".impute_10 * 0.427875007242 + "CenteredDataForPCA".impute_11 * 0.105586221808 + "CenteredDataForPCA".impute_12 * 0.158936665451 + "CenteredDataForPCA".impute_13 * 0.191847930633 + "CenteredDataForPCA".impute_14 * -0.092738652333 + "CenteredDataForPCA".impute_15 * -0.0090737183396 + "CenteredDataForPCA".impute_16 * 0.179964324679 + "CenteredDataForPCA".impute_17 * 0.157365859279 + "CenteredDataForPCA".impute_18 * -0.154661584689 + "CenteredDataForPCA".impute_19 * -0.101551617634 + "CenteredDataForPCA".impute_20 * 0.17671936939 + "CenteredDataForPCA".impute_21 * -0.0874881709941 AS anoova_9, "CenteredDataForPCA".impute_2 * 0.182632086762 + "CenteredDataForPCA".impute_3 * -0.095022662176 + "CenteredDataForPCA".impute_4 * -0.00613024088666 + "CenteredDataForPCA".impute_5 * -0.0280810916828 + "CenteredDataForPCA".impute_6 * 0.146763279515 + "CenteredDataForPCA".impute_7 * 0.0356248865197 + "CenteredDataForPCA".impute_8 * 0.0382774598119 + "CenteredDataForPCA".impute_9 * 0.163527043571 + "CenteredDataForPCA".impute_10 * 0.105039610941 + "CenteredDataForPCA".impute_11 * 0.0113287272519 + "CenteredDataForPCA".impute_12 * 0.0692864963988 + "CenteredDataForPCA".impute_13 * 0.688088452377 + "CenteredDataForPCA".impute_14 * -0.0476748678857 + "CenteredDataForPCA".impute_15 * 0.468288992317 + "CenteredDataForPCA".impute_16 * -0.0306670481921 + "CenteredDataForPCA".impute_17 * -0.0367539589344 + "CenteredDataForPCA".impute_18 * 0.14937831565 + "CenteredDataForPCA".impute_19 * 0.000375724558539 + "CenteredDataForPCA".impute_20 * -0.248291437917 + "CenteredDataForPCA".impute_21 * 0.329432518633 AS anoova_10, "CenteredDataForPCA".impute_2 * 0.0194354376932 + "CenteredDataForPCA".impute_3 * -0.3015160336 + "CenteredDataForPCA".impute_4 * -0.32360459285 + "CenteredDataForPCA".impute_5 * 0.0104163951515 + "CenteredDataForPCA".impute_6 * 0.160438593258 + "CenteredDataForPCA".impute_7 * -0.0412345086772 + "CenteredDataForPCA".impute_8 * 0.0415107680093 + "CenteredDataForPCA".impute_9 * -0.195816431572 + "CenteredDataForPCA".impute_10 * 0.0125670446067 + "CenteredDataForPCA".impute_11 * -0.689579847438 + "CenteredDataForPCA".impute_12 * 0.0118205375491 + "CenteredDataForPCA".impute_13 * -0.028812825078 + "CenteredDataForPCA".impute_14 * 0.0517803619942 + "CenteredDataForPCA".impute_15 * -0.0917574063775 + "CenteredDataForPCA".impute_16 * -0.000372780662243 + "CenteredDataForPCA".impute_17 * -0.448235435244 + "CenteredDataForPCA".impute_18 * -0.0625718197019 + "CenteredDataForPCA".impute_19 * -0.105451261125 + "CenteredDataForPCA".impute_20 * -0.17973815303 + "CenteredDataForPCA".impute_21 * -0.0192064718443 AS anoova_11, "CenteredDataForPCA".impute_2 * 0.119031100952 + "CenteredDataForPCA".impute_3 * 0.0227296452132 + "CenteredDataForPCA".impute_4 * 0.41643742517 + "CenteredDataForPCA".impute_5 * -0.0281920184321 + "CenteredDataForPCA".impute_6 * -0.229511944107 + "CenteredDataForPCA".impute_7 * -0.0235639667191 + "CenteredDataForPCA".impute_8 * 0.485758554638 + "CenteredDataForPCA".impute_9 * -0.0951684011004 + "CenteredDataForPCA".impute_10 * -0.317496775011 + "CenteredDataForPCA".impute_11 * 0.139805815827 + "CenteredDataForPCA".impute_12 * 0.00922966411636 + "CenteredDataForPCA".impute_13 * 0.141384434753 + "CenteredDataForPCA".impute_14 * 0.0505683198256 + "CenteredDataForPCA".impute_15 * -0.0327381523712 + "CenteredDataForPCA".impute_16 * 0.135419776206 + "CenteredDataForPCA".impute_17 * -0.351001668162 + "CenteredDataForPCA".impute_18 * -0.38301529524 + "CenteredDataForPCA".impute_19 * -0.0923818665285 + "CenteredDataForPCA".impute_20 * -0.232726739642 + "CenteredDataForPCA".impute_21 * -0.133639617866 AS anoova_12, "CenteredDataForPCA".impute_2 * -0.163902646841 + "CenteredDataForPCA".impute_3 * -0.20926832827 + "CenteredDataForPCA".impute_4 * 0.337314164822 + "CenteredDataForPCA".impute_5 * -0.00927482322719 + "CenteredDataForPCA".impute_6 * 0.387393617066 + "CenteredDataForPCA".impute_7 * 0.0270181028835 + "CenteredDataForPCA".impute_8 * 0.0666480012125 + "CenteredDataForPCA".impute_9 * -0.0506967141905 + "CenteredDataForPCA".impute_10 * 0.018408068289 + "CenteredDataForPCA".impute_11 * 0.160993594841 + "CenteredDataForPCA".impute_12 * 0.00716767028879 + "CenteredDataForPCA".impute_13 * -0.314411541027 + "CenteredDataForPCA".impute_14 * 0.0288195674817 + "CenteredDataForPCA".impute_15 * 0.136741109742 + "CenteredDataForPCA".impute_16 * 0.090770958552 + "CenteredDataForPCA".impute_17 * -0.0998514253338 + "CenteredDataForPCA".impute_18 * 0.53254830106 + "CenteredDataForPCA".impute_19 * 0.000116900192176 + "CenteredDataForPCA".impute_20 * -0.40468059878 + "CenteredDataForPCA".impute_21 * -0.217677886382 AS anoova_13, "CenteredDataForPCA".impute_2 * -0.152905925924 + "CenteredDataForPCA".impute_3 * -0.18785705839 + "CenteredDataForPCA".impute_4 * -0.432545533897 + "CenteredDataForPCA".impute_5 * -0.037726721985 + "CenteredDataForPCA".impute_6 * -0.139613062109 + "CenteredDataForPCA".impute_7 * 0.0389076220702 + "CenteredDataForPCA".impute_8 * -0.140591054578 + "CenteredDataForPCA".impute_9 * 0.0066039038826 + "CenteredDataForPCA".impute_10 * -0.102611777518 + "CenteredDataForPCA".impute_11 * 0.477629458574 + "CenteredDataForPCA".impute_12 * -0.0235903552032 + "CenteredDataForPCA".impute_13 * -0.00585232379018 + "CenteredDataForPCA".impute_14 * -0.127579072529 + "CenteredDataForPCA".impute_15 * -0.346125183172 + "CenteredDataForPCA".impute_16 * -0.0245122556193 + "CenteredDataForPCA".impute_17 * -0.180564168207 + "CenteredDataForPCA".impute_18 * -0.0505915262975 + "CenteredDataForPCA".impute_19 * 0.168263917707 + "CenteredDataForPCA".impute_20 * -0.456227063823 + "CenteredDataForPCA".impute_21 * 0.253864033529 AS anoova_14, "CenteredDataForPCA".impute_2 * 0.207649531146 + "CenteredDataForPCA".impute_3 * 0.196586653997 + "CenteredDataForPCA".impute_4 * -0.300600219613 + "CenteredDataForPCA".impute_5 * -0.076997551023 + "CenteredDataForPCA".impute_6 * -0.0838673743431 + "CenteredDataForPCA".impute_7 * 0.0817530529747 + "CenteredDataForPCA".impute_8 * 0.467281632789 + "CenteredDataForPCA".impute_9 * -0.367468064817 + "CenteredDataForPCA".impute_10 * -0.126469098355 + "CenteredDataForPCA".impute_11 * 0.0982843909283 + "CenteredDataForPCA".impute_12 * 0.0848926350352 + "CenteredDataForPCA".impute_13 * -0.18165333084 + "CenteredDataForPCA".impute_14 * -0.033238104255 + "CenteredDataForPCA".impute_15 * 0.108887342628 + "CenteredDataForPCA".impute_16 * 0.167798328621 + "CenteredDataForPCA".impute_17 * -0.0830809065274 + "CenteredDataForPCA".impute_18 * 0.412643943491 + "CenteredDataForPCA".impute_19 * 0.0139688134121 + "CenteredDataForPCA".impute_20 * 0.247344022237 + "CenteredDataForPCA".impute_21 * 0.330629609911 AS anoova_15, "CenteredDataForPCA".impute_2 * 0.0769752699627 + "CenteredDataForPCA".impute_3 * 0.0756341878235 + "CenteredDataForPCA".impute_4 * 0.104337833905 + "CenteredDataForPCA".impute_5 * -0.045801689542 + "CenteredDataForPCA".impute_6 * -0.394288799794 + "CenteredDataForPCA".impute_7 * -0.00901325951568 + "CenteredDataForPCA".impute_8 * -0.0343252434281 + "CenteredDataForPCA".impute_9 * 0.33856653101 + "CenteredDataForPCA".impute_10 * 0.601941569788 + "CenteredDataForPCA".impute_11 * 0.0290573657786 + "CenteredDataForPCA".impute_12 * -0.0466497364679 + "CenteredDataForPCA".impute_13 * -0.167352597735 + "CenteredDataForPCA".impute_14 * -0.0476894289021 + "CenteredDataForPCA".impute_15 * 0.0520758987477 + "CenteredDataForPCA".impute_16 * 0.107729347296 + "CenteredDataForPCA".impute_17 * -0.515927639274 + "CenteredDataForPCA".impute_18 * 0.129423063056 + "CenteredDataForPCA".impute_19 * 0.0622644432775 + "CenteredDataForPCA".impute_20 * 0.0800129755109 + "CenteredDataForPCA".impute_21 * 0.0292612718794 AS anoova_16, "CenteredDataForPCA".impute_2 * -0.122109661307 + "CenteredDataForPCA".impute_3 * 0.161872556489 + "CenteredDataForPCA".impute_4 * 0.279313876942 + "CenteredDataForPCA".impute_5 * -0.0465595414889 + "CenteredDataForPCA".impute_6 * -0.0788337986883 + "CenteredDataForPCA".impute_7 * -0.0330265273432 + "CenteredDataForPCA".impute_8 * -0.487016637425 + "CenteredDataForPCA".impute_9 * -0.712201552557 + "CenteredDataForPCA".impute_10 * 0.0847698231573 + "CenteredDataForPCA".impute_11 * 0.0627112724027 + "CenteredDataForPCA".impute_12 * -0.000618916691556 + "CenteredDataForPCA".impute_13 * 0.189390868173 + "CenteredDataForPCA".impute_14 * -0.0953831508568 + "CenteredDataForPCA".impute_15 * 0.035706937185 + "CenteredDataForPCA".impute_16 * -0.0361559495323 + "CenteredDataForPCA".impute_17 * -0.238149348621 + "CenteredDataForPCA".impute_18 * 0.0285442809417 + "CenteredDataForPCA".impute_19 * 0.0202824424501 + "CenteredDataForPCA".impute_20 * 0.063134394499 + "CenteredDataForPCA".impute_21 * 0.0799086090949 AS anoova_17, "CenteredDataForPCA".impute_2 * 0.123815672653 + "CenteredDataForPCA".impute_3 * -0.0785842772558 + "CenteredDataForPCA".impute_4 * -0.132438294142 + "CenteredDataForPCA".impute_5 * 0.0331258679824 + "CenteredDataForPCA".impute_6 * 0.208934564221 + "CenteredDataForPCA".impute_7 * 0.0458994694991 + "CenteredDataForPCA".impute_8 * -0.0695007613714 + "CenteredDataForPCA".impute_9 * 0.107169327544 + "CenteredDataForPCA".impute_10 * -0.135412228161 + "CenteredDataForPCA".impute_11 * 0.229972497962 + "CenteredDataForPCA".impute_12 * 0.00183450367887 + "CenteredDataForPCA".impute_13 * 0.419432724717 + "CenteredDataForPCA".impute_14 * 0.113077285835 + "CenteredDataForPCA".impute_15 * -0.333919441362 + "CenteredDataForPCA".impute_16 * 0.115784125716 + "CenteredDataForPCA".impute_17 * -0.306248134893 + "CenteredDataForPCA".impute_18 * 0.271821476719 + "CenteredDataForPCA".impute_19 * -0.0243028915216 + "CenteredDataForPCA".impute_20 * 0.401758668447 + "CenteredDataForPCA".impute_21 * -0.428088555258 AS anoova_18, "CenteredDataForPCA".impute_2 * -0.16904616413 + "CenteredDataForPCA".impute_3 * -0.124521286259 + "CenteredDataForPCA".impute_4 * -0.236849844707 + "CenteredDataForPCA".impute_5 * 0.0449802059156 + "CenteredDataForPCA".impute_6 * 0.11011607938 + "CenteredDataForPCA".impute_7 * 0.0549601593552 + "CenteredDataForPCA".impute_8 * -0.16184034981 + "CenteredDataForPCA".impute_9 * 0.0584312514342 + "CenteredDataForPCA".impute_10 * -0.233501271198 + "CenteredDataForPCA".impute_11 * 0.248271567989 + "CenteredDataForPCA".impute_12 * 0.0372632997605 + "CenteredDataForPCA".impute_13 * -0.231405819766 + "CenteredDataForPCA".impute_14 * 0.0669568399901 + "CenteredDataForPCA".impute_15 * 0.653022836676 + "CenteredDataForPCA".impute_16 * -0.0232258024197 + "CenteredDataForPCA".impute_17 * -0.306250409909 + "CenteredDataForPCA".impute_18 * -0.293983167192 + "CenteredDataForPCA".impute_19 * -0.00872297478721 + "CenteredDataForPCA".impute_20 * 0.243354045548 + "CenteredDataForPCA".impute_21 * -0.104742991394 AS anoova_19, "CenteredDataForPCA".impute_2 * 4.5367948268e-17 + "CenteredDataForPCA".impute_3 * -3.29997759588e-16 + "CenteredDataForPCA".impute_4 * -3.37812735175e-16 + "CenteredDataForPCA".impute_5 * -0.0479762013421 + "CenteredDataForPCA".impute_6 * 3.22951153938e-16 + "CenteredDataForPCA".impute_7 * 0.640994505939 + "CenteredDataForPCA".impute_8 * 2.0267859616e-16 + "CenteredDataForPCA".impute_9 * -1.68753893158e-16 + "CenteredDataForPCA".impute_10 * -2.25492436725e-17 + "CenteredDataForPCA".impute_11 * 5.90402397544e-17 + "CenteredDataForPCA".impute_12 * -0.558389926467 + "CenteredDataForPCA".impute_13 * 1.14077955414e-16 + "CenteredDataForPCA".impute_14 * -0.264720777355 + "CenteredDataForPCA".impute_15 * -7.05442951661e-18 + "CenteredDataForPCA".impute_16 * -0.0669772964988 + "CenteredDataForPCA".impute_17 * 2.69329624558e-16 + "CenteredDataForPCA".impute_18 * 1.89117848629e-16 + "CenteredDataForPCA".impute_19 * -0.447729794933 + "CenteredDataForPCA".impute_20 * 2.01456468357e-16 + "CenteredDataForPCA".impute_21 * -8.50549946149e-17 AS anoova_20, "CenteredDataForPCA".impute_2 * -3.82764169987e-17 + "CenteredDataForPCA".impute_3 * -4.94227720784e-17 + "CenteredDataForPCA".impute_4 * 1.24574837218e-16 + "CenteredDataForPCA".impute_5 * 0.811129564536 + "CenteredDataForPCA".impute_6 * 9.50266180381e-17 + "CenteredDataForPCA".impute_7 * -0.0746115061378 + "CenteredDataForPCA".impute_8 * -6.32510927341e-17 + "CenteredDataForPCA".impute_9 * 1.4888030396e-16 + "CenteredDataForPCA".impute_10 * 6.80014656294e-17 + "CenteredDataForPCA".impute_11 * 2.19198139344e-16 + "CenteredDataForPCA".impute_12 * 0.140798089333 + "CenteredDataForPCA".impute_13 * 1.50050456838e-16 + "CenteredDataForPCA".impute_14 * -0.490541919016 + "CenteredDataForPCA".impute_15 * -8.84543534504e-17 + "CenteredDataForPCA".impute_16 * 0.249866214596 + "CenteredDataForPCA".impute_17 * 6.32557658029e-17 + "CenteredDataForPCA".impute_18 * -9.73102520352e-17 + "CenteredDataForPCA".impute_19 * -0.116676266736 + "CenteredDataForPCA".impute_20 * 5.88846049377e-17 + "CenteredDataForPCA".impute_21 * -4.10873610452e-17 AS anoova_21 
FROM "CenteredDataForPCA"), 
linear_model_cte AS 
(SELECT "ADS_ano_2_OUT"."KEY" AS "KEY", -0.19340506885549108 * "ADS_ano_2_OUT".anoova_2 + -0.06240135156659249 * "ADS_ano_2_OUT".anoova_3 + -0.12141658030145812 * "ADS_ano_2_OUT".anoova_4 + 0.059898613707997456 * "ADS_ano_2_OUT".anoova_5 + -0.009554129189833921 * "ADS_ano_2_OUT".anoova_6 + -0.048821071979679456 * "ADS_ano_2_OUT".anoova_7 + 0.03709143230097329 * "ADS_ano_2_OUT".anoova_8 + 0.046272268346235865 * "ADS_ano_2_OUT".anoova_9 + -0.01535836054353834 * "ADS_ano_2_OUT".anoova_10 + 0.007779475575247288 * "ADS_ano_2_OUT".anoova_11 + 0.10981985107452434 * "ADS_ano_2_OUT".anoova_12 + -0.08983192048551615 * "ADS_ano_2_OUT".anoova_13 + -0.014728666624568995 * "ADS_ano_2_OUT".anoova_14 + -0.004362144433527865 * "ADS_ano_2_OUT".anoova_15 + -0.07122456191008983 * "ADS_ano_2_OUT".anoova_16 + -0.030831832222459804 * "ADS_ano_2_OUT".anoova_17 + -0.053305928271913515 * "ADS_ano_2_OUT".anoova_18 + 0.09650353692514557 * "ADS_ano_2_OUT".anoova_19 + -3.4097592661925363e-16 * "ADS_ano_2_OUT".anoova_20 + -9.854599049766069e-17 * "ADS_ano_2_OUT".anoova_21 + -0.5 AS "Score_0", -0.007660679618294988 * "ADS_ano_2_OUT".anoova_2 + 0.11986128480515137 * "ADS_ano_2_OUT".anoova_3 + 0.2320645245614683 * "ADS_ano_2_OUT".anoova_4 + 0.06431243761245233 * "ADS_ano_2_OUT".anoova_5 + -0.005189001650016822 * "ADS_ano_2_OUT".anoova_6 + 0.07635562383057684 * "ADS_ano_2_OUT".anoova_7 + 0.05872757450694388 * "ADS_ano_2_OUT".anoova_8 + 0.09229346903763308 * "ADS_ano_2_OUT".anoova_9 + 0.06547585152642478 * "ADS_ano_2_OUT".anoova_10 + 0.04790507303089062 * "ADS_ano_2_OUT".anoova_11 + -0.13842473597200206 * "ADS_ano_2_OUT".anoova_12 + 0.05385138251944229 * "ADS_ano_2_OUT".anoova_13 + -0.026521771937835274 * "ADS_ano_2_OUT".anoova_14 + 0.08957855402238424 * "ADS_ano_2_OUT".anoova_15 + 0.030157387926635124 * "ADS_ano_2_OUT".anoova_16 + 0.021168714738449487 * "ADS_ano_2_OUT".anoova_17 + 0.04454357558445496 * "ADS_ano_2_OUT".anoova_18 + -0.02361652608510506 * "ADS_ano_2_OUT".anoova_19 + 5.442118408638789e-16 * "ADS_ano_2_OUT".anoova_20 + 2.789795831254575e-16 * "ADS_ano_2_OUT".anoova_21 + -0.5 AS "Score_1", 0.1507230253061345 * "ADS_ano_2_OUT".anoova_2 + -0.06163962993118819 * "ADS_ano_2_OUT".anoova_3 + -0.1839073835685694 * "ADS_ano_2_OUT".anoova_4 + -0.07944721754341139 * "ADS_ano_2_OUT".anoova_5 + 0.04022476925273169 * "ADS_ano_2_OUT".anoova_6 + 0.08196845380078155 * "ADS_ano_2_OUT".anoova_7 + -0.12451526230000802 * "ADS_ano_2_OUT".anoova_8 + -0.07176080805047319 * "ADS_ano_2_OUT".anoova_9 + -0.030958225185576616 * "ADS_ano_2_OUT".anoova_10 + -0.035440634185229435 * "ADS_ano_2_OUT".anoova_11 + -0.12067538801568017 * "ADS_ano_2_OUT".anoova_12 + 0.02976520163971924 * "ADS_ano_2_OUT".anoova_13 + -0.035703180404029713 * "ADS_ano_2_OUT".anoova_14 + -0.00970206419556112 * "ADS_ano_2_OUT".anoova_15 + -0.15645140548323141 * "ADS_ano_2_OUT".anoova_16 + -0.16848825320774913 * "ADS_ano_2_OUT".anoova_17 + 0.05197486469376375 * "ADS_ano_2_OUT".anoova_18 + -0.013105346402396453 * "ADS_ano_2_OUT".anoova_19 + 3.404719437270189e-16 * "ADS_ano_2_OUT".anoova_20 + -4.3001037517014134e-17 * "ADS_ano_2_OUT".anoova_21 + -0.52 AS "Score_2", 0.05034272316765398 * "ADS_ano_2_OUT".anoova_2 + 0.004179696692626127 * "ADS_ano_2_OUT".anoova_3 + 0.07325943930855626 * "ADS_ano_2_OUT".anoova_4 + -0.04476383377703816 * "ADS_ano_2_OUT".anoova_5 + -0.025481638412881327 * "ADS_ano_2_OUT".anoova_6 + -0.10950300565167842 * "ADS_ano_2_OUT".anoova_7 + 0.02869625549208921 * "ADS_ano_2_OUT".anoova_8 + -0.06680492933339645 * "ADS_ano_2_OUT".anoova_9 + -0.019159265797309893 * "ADS_ano_2_OUT".anoova_10 + -0.02024391442090974 * "ADS_ano_2_OUT".anoova_11 + 0.14928027291315898 * "ADS_ano_2_OUT".anoova_12 + 0.006215336326353543 * "ADS_ano_2_OUT".anoova_13 + 0.07695361896643424 * "ADS_ano_2_OUT".anoova_14 + -0.07551434539329549 * "ADS_ano_2_OUT".anoova_15 + 0.19751857946668575 * "ADS_ano_2_OUT".anoova_16 + 0.1781513706917589 * "ADS_ano_2_OUT".anoova_17 + -0.04321251200630527 * "ADS_ano_2_OUT".anoova_18 + -0.05978166443764385 * "ADS_ano_2_OUT".anoova_19 + -5.437078579716445e-16 * "ADS_ano_2_OUT".anoova_20 + -1.3743255511078245e-16 * "ADS_ano_2_OUT".anoova_21 + -0.48 AS "Score_3" 
FROM "ADS_ano_2_OUT"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS FLOAT) AS "Decision" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY" AS "KEY", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", (SELECT max(score_class_union."LogProba") AS max_1 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_LogProba", (SELECT max(score_class_union."Proba") AS max_2 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Proba", (SELECT max(score_class_union."Score") AS max_3 
FROM score_class_union 
WHERE orig_cte."KEY" = score_class_union."KEY") AS "max_Score" 
FROM orig_cte), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", (SELECT min(score_class_union.class) AS min_1 
FROM score_class_union 
WHERE score_max."max_LogProba" = score_class_union."LogProba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_LogProba", (SELECT min(score_class_union.class) AS min_2 
FROM score_class_union 
WHERE score_max."max_Proba" = score_class_union."Proba" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Proba", (SELECT min(score_class_union.class) AS min_3 
FROM score_class_union 
WHERE score_max."max_Score" = score_class_union."Score" AND score_max."KEY" = score_class_union."KEY") AS "arg_max_Score" 
FROM score_max)
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte