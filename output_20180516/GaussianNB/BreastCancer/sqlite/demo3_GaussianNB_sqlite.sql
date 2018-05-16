-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : GaussianNB
-- Dataset : BreastCancer
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores part 1. Create 


CREATE TEMPORARY TABLE "TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores" (
	"KEY" BIGINT NOT NULL, 
	"Score_0" FLOAT, 
	"Score_1" FLOAT, 
	PRIMARY KEY ("KEY")
)



-- Code For temporary table TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores part 2. Populate

WITH centered_data AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) - 17.640437500000008 AS "Feature_0_0", CAST("ADS"."Feature_1" AS FLOAT) - 21.23356249999999 AS "Feature_1_0", CAST("ADS"."Feature_2" AS FLOAT) - 116.71625000000002 AS "Feature_2_0", CAST("ADS"."Feature_3" AS FLOAT) - 997.9731250000001 AS "Feature_3_0", CAST("ADS"."Feature_4" AS FLOAT) - 0.10367662500000004 AS "Feature_4_0", CAST("ADS"."Feature_5" AS FLOAT) - 0.14956893750000003 AS "Feature_5_0", CAST("ADS"."Feature_6" AS FLOAT) - 0.16609156250000007 AS "Feature_6_0", CAST("ADS"."Feature_7" AS FLOAT) - 0.09101468749999998 AS "Feature_7_0", CAST("ADS"."Feature_8" AS FLOAT) - 0.19494124999999993 AS "Feature_8_0", CAST("ADS"."Feature_9" AS FLOAT) - 0.06299824999999996 AS "Feature_9_0", CAST("ADS"."Feature_10" AS FLOAT) - 0.6418068749999999 AS "Feature_10_0", CAST("ADS"."Feature_11" AS FLOAT) - 1.23094 AS "Feature_11_0", CAST("ADS"."Feature_12" AS FLOAT) - 4.582681250000002 AS "Feature_12_0", CAST("ADS"."Feature_13" AS FLOAT) - 77.180875 AS "Feature_13_0", CAST("ADS"."Feature_14" AS FLOAT) - 0.0068303437500000005 AS "Feature_14_0", CAST("ADS"."Feature_15" AS FLOAT) - 0.033086856250000005 AS "Feature_15_0", CAST("ADS"."Feature_16" AS FLOAT) - 0.042250062500000005 AS "Feature_16_0", CAST("ADS"."Feature_17" AS FLOAT) - 0.015666206250000002 AS "Feature_17_0", CAST("ADS"."Feature_18" AS FLOAT) - 0.0213653875 AS "Feature_18_0", CAST("ADS"."Feature_19" AS FLOAT) - 0.0041392562500000025 AS "Feature_19_0", CAST("ADS"."Feature_20" AS FLOAT) - 21.339374999999993 AS "Feature_20_0", CAST("ADS"."Feature_21" AS FLOAT) - 28.707562499999995 AS "Feature_21_0", CAST("ADS"."Feature_22" AS FLOAT) - 143.08187499999994 AS "Feature_22_0", CAST("ADS"."Feature_23" AS FLOAT) - 1445.1737500000002 AS "Feature_23_0", CAST("ADS"."Feature_24" AS FLOAT) - 0.14505743749999986 AS "Feature_24_0", CAST("ADS"."Feature_25" AS FLOAT) - 0.37679406249999975 AS "Feature_25_0", CAST("ADS"."Feature_26" AS FLOAT) - 0.44977674999999967 AS "Feature_26_0", CAST("ADS"."Feature_27" AS FLOAT) - 0.18633093750000013 AS "Feature_27_0", CAST("ADS"."Feature_28" AS FLOAT) - 0.32580749999999986 AS "Feature_28_0", CAST("ADS"."Feature_29" AS FLOAT) - 0.09126924999999997 AS "Feature_29_0", CAST("ADS"."Feature_0" AS FLOAT) - 12.145386440677964 AS "Feature_0_1", CAST("ADS"."Feature_1" AS FLOAT) - 17.84881355932203 AS "Feature_1_1", CAST("ADS"."Feature_2" AS FLOAT) - 78.0729152542372 AS "Feature_2_1", CAST("ADS"."Feature_3" AS FLOAT) - 462.7613559322033 AS "Feature_3_1", CAST("ADS"."Feature_4" AS FLOAT) - 0.09248705084745759 AS "Feature_4_1", CAST("ADS"."Feature_5" AS FLOAT) - 0.07992647457627115 AS "Feature_5_1", CAST("ADS"."Feature_6" AS FLOAT) - 0.04604985999999998 AS "Feature_6_1", CAST("ADS"."Feature_7" AS FLOAT) - 0.025466481355932213 AS "Feature_7_1", CAST("ADS"."Feature_8" AS FLOAT) - 0.1743464406779661 AS "Feature_8_1", CAST("ADS"."Feature_9" AS FLOAT) - 0.06290888135593216 AS "Feature_9_1", CAST("ADS"."Feature_10" AS FLOAT) - 0.284146779661017 AS "Feature_10_1", CAST("ADS"."Feature_11" AS FLOAT) - 1.2095464406779655 AS "Feature_11_1", CAST("ADS"."Feature_12" AS FLOAT) - 1.9954552542372879 AS "Feature_12_1", CAST("ADS"."Feature_13" AS FLOAT) - 21.19121355932202 AS "Feature_13_1", CAST("ADS"."Feature_14" AS FLOAT) - 0.007178345762711861 AS "Feature_14_1", CAST("ADS"."Feature_15" AS FLOAT) - 0.021489715254237294 AS "Feature_15_1", CAST("ADS"."Feature_16" AS FLOAT) - 0.026439496949152534 AS "Feature_16_1", CAST("ADS"."Feature_17" AS FLOAT) - 0.00996893220338983 AS "Feature_17_1", CAST("ADS"."Feature_18" AS FLOAT) - 0.020641725423728836 AS "Feature_18_1", CAST("ADS"."Feature_19" AS FLOAT) - 0.0036877969491525436 AS "Feature_19_1", CAST("ADS"."Feature_20" AS FLOAT) - 13.378247457627124 AS "Feature_20_1", CAST("ADS"."Feature_21" AS FLOAT) - 23.397932203389832 AS "Feature_21_1", CAST("ADS"."Feature_22" AS FLOAT) - 86.93901694915259 AS "Feature_22_1", CAST("ADS"."Feature_23" AS FLOAT) - 559.3738983050844 AS "Feature_23_1", CAST("ADS"."Feature_24" AS FLOAT) - 0.12465203389830506 AS "Feature_24_1", CAST("ADS"."Feature_25" AS FLOAT) - 0.18110396610169477 AS "Feature_25_1", CAST("ADS"."Feature_26" AS FLOAT) - 0.16549405084745772 AS "Feature_26_1", CAST("ADS"."Feature_27" AS FLOAT) - 0.07397993559322037 AS "Feature_27_1", CAST("ADS"."Feature_28" AS FLOAT) - 0.27025220338983036 AS "Feature_28_1", CAST("ADS"."Feature_29" AS FLOAT) - 0.07950433898305088 AS "Feature_29_1" 
FROM "BreastCancer" AS "ADS"), 
"NaiveBayes_data" AS 
(SELECT "Values"."KEY" AS "KEY", CAST("Values"."Feature" AS FLOAT) AS "Feature", CAST("Values".log_proba_0 AS FLOAT) AS log_proba_0, CAST("Values".log_proba_1 AS FLOAT) AS log_proba_1 
FROM (SELECT centered_data."KEY" AS "KEY", 0 AS "Feature", -0.5 * 4.172570201510648 - (0.5 * centered_data."Feature_0_0" * centered_data."Feature_0_0") / 10.326290666987266 AS log_proba_0, -0.5 * 2.9904215044750164 - (0.5 * centered_data."Feature_0_1" * centered_data."Feature_0_1") / 3.1662389679554206 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 1 AS "Feature", -0.5 * 4.452423362655724 - (0.5 * centered_data."Feature_1_0" * centered_data."Feature_1_0") / 13.661016916987258 AS log_proba_0, -0.5 * 4.564659847014308 - (0.5 * centered_data."Feature_1_1" * centered_data."Feature_1_1") / 15.28363702490457 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 2 AS "Feature", -0.5 * 8.015373857751564 - (0.5 * centered_data."Feature_2_0" * centered_data."Feature_2_0") / 481.78443867089345 AS log_proba_0, -0.5 * 6.777260904754837 - (0.5 * centered_data."Feature_2_1" * centered_data."Feature_2_1") / 139.68415501858448 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 3 AS "Feature", -0.5 * 13.695371221206408 - (0.5 * centered_data."Feature_3_0" * centered_data."Feature_3_0") / 141138.1045367178 AS log_proba_0, -0.5 * 11.62865656487327 - (0.5 * centered_data."Feature_3_1" * centered_data."Feature_3_1") / 17868.228997610935 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 4 AS "Feature", -0.5 * -5.781553259650073 - (0.5 * centered_data."Feature_4_0" * centered_data."Feature_4_0") / 0.0004908213596233952 AS log_proba_0, -0.5 * -5.77001182544145 - (0.5 * centered_data."Feature_4_1" * centered_data."Feature_4_1") / 0.0004965189580368584 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 5 AS "Feature", -0.5 * -3.8729872051781618 - (0.5 * centered_data."Feature_5_0" * centered_data."Feature_5_0") / 0.0033098107330101125 AS log_proba_0, -0.5 * -4.737734563179293 - (0.5 * centered_data."Feature_5_1" * centered_data."Feature_5_1") / 0.0013939530746447297 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 6 AS "Feature", -0.5 * -3.217293468649047 - (0.5 * centered_data."Feature_6_0" * centered_data."Feature_6_0") / 0.006376279290447614 AS log_proba_0, -0.5 * -4.228768891278335 - (0.5 * centered_data."Feature_6_1" * centered_data."Feature_6_1") / 0.0023189379977747223 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 7 AS "Feature", -0.5 * -4.667117616083856 - (0.5 * centered_data."Feature_7_0" * centered_data."Feature_7_0") / 0.0014959487134163644 AS log_proba_0, -0.5 * -5.6414163854194275 - (0.5 * centered_data."Feature_7_1" * centered_data."Feature_7_1") / 0.0005646562314924864 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 8 AS "Feature", -0.5 * -4.96836689783642 - (0.5 * centered_data."Feature_8_0" * centered_data."Feature_8_0") / 0.0011068424419515208 AS log_proba_0, -0.5 * -5.134383993548121 - (0.5 * centered_data."Feature_8_1" * centered_data."Feature_8_1") / 0.0009375306944045692 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 9 AS "Feature", -0.5 * -6.0319855385011225 - (0.5 * centered_data."Feature_9_0" * centered_data."Feature_9_0") / 0.0003820868554515203 AS log_proba_0, -0.5 * -6.078817030098811 - (0.5 * centered_data."Feature_9_1" * centered_data."Feature_9_1") / 0.00036460568751689297 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 10 AS "Feature", -0.5 * -0.17494389131516314 - (0.5 * centered_data."Feature_10_0" * centered_data."Feature_10_0") / 0.13361123090874846 AS log_proba_0, -0.5 * -2.4424241701633846 - (0.5 * centered_data."Feature_10_1" * centered_data."Feature_10_1") / 0.013838492798397668 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 11 AS "Feature", -0.5 * 0.5216471040484074 - (0.5 * centered_data."Feature_11_0" * centered_data."Feature_11_0") / 0.26814431291851415 AS log_proba_0, -0.5 * 0.6294367395246522 - (0.5 * centered_data."Feature_11_1" * centered_data."Feature_11_1") / 0.2986627325927097 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 12 AS "Feature", -0.5 * 3.8601648854864283 - (0.5 * centered_data."Feature_12_0" * centered_data."Feature_12_0") / 7.555591000541953 AS log_proba_0, -0.5 * 1.3736697138309029 - (0.5 * centered_data."Feature_12_1" * centered_data."Feature_12_1") / 0.628633192238788 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 13 AS "Feature", -0.5 * 10.234061575615794 - (0.5 * centered_data."Feature_13_0" * centered_data."Feature_13_0") / 4430.131334467768 AS log_proba_0, -0.5 * 6.242633932627197 - (0.5 * centered_data."Feature_13_1" * centered_data."Feature_13_1") / 81.83924253948085 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 14 AS "Feature", -0.5 * -6.185041885151993 - (0.5 * centered_data."Feature_14_0" * centered_data."Feature_14_0") / 0.00032786161255210614 AS log_proba_0, -0.5 * -6.1766345823500615 - (0.5 * centered_data."Feature_14_1" * centered_data."Feature_14_1") / 0.00033062966402497686 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 15 AS "Feature", -0.5 * -5.530032132344976 - (0.5 * centered_data."Feature_15_0" * centered_data."Feature_15_0") / 0.000631186485949606 AS log_proba_0, -0.5 * -5.575707327126337 - (0.5 * centered_data."Feature_15_1" * centered_data."Feature_15_1") / 0.0006030054075481944 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 16 AS "Feature", -0.5 * -5.347943126320397 - (0.5 * centered_data."Feature_16_0" * centered_data."Feature_16_0") / 0.0007572476641351138 AS log_proba_0, -0.5 * -4.635681829545936 - (0.5 * centered_data."Feature_16_1" * centered_data."Feature_16_1") / 0.0015437219991494353 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 17 AS "Feature", -0.5 * -6.112545891822505 - (0.5 * centered_data."Feature_17_0" * centered_data."Feature_17_0") / 0.00035251303480273116 AS log_proba_0, -0.5 * -6.1019797329933265 - (0.5 * centered_data."Feature_17_1" * centered_data."Feature_17_1") / 0.00035625749093993233 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 18 AS "Feature", -0.5 * -5.89704573381262 - (0.5 * centered_data."Feature_18_0" * centered_data."Feature_18_0") / 0.0004372861375138639 AS log_proba_0, -0.5 * -6.0584387539077 - (0.5 * centered_data."Feature_18_1" * centered_data."Feature_18_1") / 0.0003721119454555773 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 19 AS "Feature", -0.5 * -6.192682980938167 - (0.5 * centered_data."Feature_19_0" * centered_data."Feature_19_0") / 0.00032536593755460615 AS log_proba_0, -0.5 * -6.1757690266447876 - (0.5 * centered_data."Feature_19_1" * centered_data."Feature_19_1") / 0.0003309159663044177 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 20 AS "Feature", -0.5 * 4.706163810435783 - (0.5 * centered_data."Feature_20_0" * centered_data."Feature_20_0") / 17.606827342768515 AS log_proba_0, -0.5 * 3.2138598030801484 - (0.5 * centered_data."Feature_20_1" * centered_data."Feature_20_1") / 3.9589654323277315 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 21 AS "Feature", -0.5 * 5.158822580111128 - (0.5 * centered_data."Feature_21_0" * centered_data."Feature_21_0") / 27.686516166987257 AS log_proba_0, -0.5 * 5.211555485583606 - (0.5 * centered_data."Feature_21_1" * centered_data."Feature_21_1") / 29.185687038119188 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 22 AS "Feature", -0.5 * 8.577149859442487 - (0.5 * centered_data."Feature_22_0" * centered_data."Feature_22_0") / 844.9460617177685 AS log_proba_0, -0.5 * 7.06028716211734 - (0.5 * centered_data."Feature_22_1" * centered_data."Feature_22_1") / 185.38043068649608 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 23 AS "Feature", -0.5 * 14.620602684679373 - (0.5 * centered_data."Feature_23_0" * centered_data."Feature_23_0") / 356014.1008824211 AS log_proba_0, -0.5 * 12.035414914018736 - (0.5 * centered_data."Feature_23_1" * centered_data."Feature_23_1") / 26837.02780967645 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 24 AS "Feature", -0.5 * -5.264825005222549 - (0.5 * centered_data."Feature_24_0" * centered_data."Feature_24_0") / 0.0008228784400726135 AS log_proba_0, -0.5 * -5.424741399865948 - (0.5 * centered_data."Feature_24_1" * centered_data."Feature_24_1") / 0.0007012693792077864 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 25 AS "Feature", -0.5 * -1.7616770996391198 - (0.5 * centered_data."Feature_25_0" * centered_data."Feature_25_0") / 0.027335907006385118 AS log_proba_0, -0.5 * -2.983144254489076 - (0.5 * centered_data."Feature_25_1" * centered_data."Feature_25_1") / 0.008058552566597618 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 26 AS "Feature", -0.5 * -1.5698382196783103 - (0.5 * centered_data."Feature_26_0" * centered_data."Feature_26_0") / 0.0331167763679515 AS log_proba_0, -0.5 * -2.0663337838174827 - (0.5 * centered_data."Feature_26_1" * centered_data."Feature_26_1") / 0.020156854994070727 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 27 AS "Feature", -0.5 * -4.198949608958731 - (0.5 * centered_data."Feature_27_0" * centered_data."Feature_27_0") / 0.002389128377010113 AS log_proba_0, -0.5 * -4.6266459246011795 - (0.5 * centered_data."Feature_27_1" * centered_data."Feature_27_1") / 0.0015577341352217375 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 28 AS "Feature", -0.5 * -3.2488521824643195 - (0.5 * centered_data."Feature_28_0" * centered_data."Feature_28_0") / 0.0061781942122640186 AS log_proba_0, -0.5 * -4.362958819109133 - (0.5 * centered_data."Feature_28_1" * centered_data."Feature_28_1") / 0.002027734973404855 AS log_proba_1 
FROM centered_data UNION ALL SELECT centered_data."KEY" AS "KEY", 29 AS "Feature", -0.5 * -5.388172426262818 - (0.5 * centered_data."Feature_29_0" * centered_data."Feature_29_0") / 0.0007273887492015202 AS log_proba_0, -0.5 * -5.759377683054396 - (0.5 * centered_data."Feature_29_1" * centered_data."Feature_29_1") / 0.000501827185534704 AS log_proba_1 
FROM centered_data) AS "Values")
 INSERT INTO "TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores" ("KEY", "Score_0", "Score_1") SELECT "NaiveBayes_Scores"."KEY", "NaiveBayes_Scores"."Score_0", "NaiveBayes_Scores"."Score_1" 
FROM (SELECT nb_sums."KEY" AS "KEY", nb_sums."Score_0" AS "Score_0", nb_sums."Score_1" AS "Score_1" 
FROM (SELECT "NaiveBayes_data"."KEY" AS "KEY", -1.0451236037171234 + sum("NaiveBayes_data".log_proba_0) AS "Score_0", -0.43332206261113054 + sum("NaiveBayes_data".log_proba_1) AS "Score_1" 
FROM "NaiveBayes_data" GROUP BY "NaiveBayes_data"."KEY") AS nb_sums) AS "NaiveBayes_Scores"

-- Code For temporary table TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores part 3. Create Index 

CREATE INDEX "ix_TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores_KEY" ON "TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores" ("KEY")

-- Model deployment code

WITH orig_cte AS 
(SELECT "NaiveBayes_Scores"."KEY" AS "KEY", "NaiveBayes_Scores"."Score_0" AS "Score_0", "NaiveBayes_Scores"."Score_1" AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20180516111629_CODEGEN_GHC7UH_NaiveBayes_Scores" AS "NaiveBayes_Scores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(max(-100.0, score_max."Score_0" - score_max."max_Score")) AS "exp_delta_Score_0", exp(max(-100.0, score_max."Score_1" - score_max."max_Score")) AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision", max(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1") AS "DecisionProba" 
FROM arg_max_cte