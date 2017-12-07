-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 13.8597887324 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 19.5079577465 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 90.2345774648 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 631.54084507 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0950171830986 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.103067887324 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.0864928380282 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0468693521127 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN 0.180978169014 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.0631552112676 ELSE "ADS"."Feature_9" END AS impter_11, CASE WHEN ("ADS"."Feature_10" IS NULL) THEN 0.412326056338 ELSE "ADS"."Feature_10" END AS impter_12, CASE WHEN ("ADS"."Feature_11" IS NULL) THEN 1.27143450704 ELSE "ADS"."Feature_11" END AS impter_13, CASE WHEN ("ADS"."Feature_12" IS NULL) THEN 2.98328169014 ELSE "ADS"."Feature_12" END AS impter_14, CASE WHEN ("ADS"."Feature_13" IS NULL) THEN 41.2231690141 ELSE "ADS"."Feature_13" END AS impter_15, CASE WHEN ("ADS"."Feature_14" IS NULL) THEN 0.00734775352113 ELSE "ADS"."Feature_14" END AS impter_16, CASE WHEN ("ADS"."Feature_15" IS NULL) THEN 0.0264921690141 ELSE "ADS"."Feature_15" END AS impter_17, CASE WHEN ("ADS"."Feature_16" IS NULL) THEN 0.032405528169 ELSE "ADS"."Feature_16" END AS impter_18, CASE WHEN ("ADS"."Feature_17" IS NULL) THEN 0.0118757676056 ELSE "ADS"."Feature_17" END AS impter_19, CASE WHEN ("ADS"."Feature_18" IS NULL) THEN 0.0213508450704 ELSE "ADS"."Feature_18" END AS impter_20, CASE WHEN ("ADS"."Feature_19" IS NULL) THEN 0.00392323450704 ELSE "ADS"."Feature_19" END AS impter_21, CASE WHEN ("ADS"."Feature_20" IS NULL) THEN 15.8818169014 ELSE "ADS"."Feature_20" END AS impter_22, CASE WHEN ("ADS"."Feature_21" IS NULL) THEN 25.8104225352 ELSE "ADS"."Feature_21" END AS impter_23, CASE WHEN ("ADS"."Feature_22" IS NULL) THEN 105.106619718 ELSE "ADS"."Feature_22" END AS impter_24, CASE WHEN ("ADS"."Feature_23" IS NULL) THEN 837.940140845 ELSE "ADS"."Feature_23" END AS impter_25, CASE WHEN ("ADS"."Feature_24" IS NULL) THEN 0.130144507042 ELSE "ADS"."Feature_24" END AS impter_26, CASE WHEN ("ADS"."Feature_25" IS NULL) THEN 0.248377464789 ELSE "ADS"."Feature_25" END AS impter_27, CASE WHEN ("ADS"."Feature_26" IS NULL) THEN 0.259110753521 ELSE "ADS"."Feature_26" END AS impter_28, CASE WHEN ("ADS"."Feature_27" IS NULL) THEN 0.109523584507 ELSE "ADS"."Feature_27" END AS impter_29, CASE WHEN ("ADS"."Feature_28" IS NULL) THEN 0.286747183099 ELSE "ADS"."Feature_28" END AS impter_30, CASE WHEN ("ADS"."Feature_29" IS NULL) THEN 0.0836747887324 ELSE "ADS"."Feature_29" END AS impter_31 
FROM "BreastCancer" "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 13.8597887324) / 3.48110212803 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - 19.5079577465) / 4.43362115357 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 90.2345774648) / 24.1038025643 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - 631.54084507) / 344.884606371 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.0950171830986) / 0.013946197592 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.103067887324) / 0.051633665263 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.0864928380282) / 0.0758957535964 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - 0.0468693521127) / 0.0384321726563 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - 0.180978169014) / 0.0276998070777 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.0631552112676) / 0.00648056962788 AS scaler_11, (CAST("ADS_imp_1_OUT".impter_12 AS FLOAT) - 0.412326056338) / 0.320867363603 AS scaler_12, (CAST("ADS_imp_1_OUT".impter_13 AS FLOAT) - 1.27143450704) / 0.550314789435 AS scaler_13, (CAST("ADS_imp_1_OUT".impter_14 AS FLOAT) - 2.98328169014) / 2.45069631007 AS scaler_14, (CAST("ADS_imp_1_OUT".impter_15 AS FLOAT) - 41.2231690141) / 52.9190319751 AS scaler_15, (CAST("ADS_imp_1_OUT".impter_16 AS FLOAT) - 0.00734775352113) / 0.00276275575882 AS scaler_16, (CAST("ADS_imp_1_OUT".impter_17 AS FLOAT) - 0.0264921690141) / 0.0174086380412 AS scaler_17, (CAST("ADS_imp_1_OUT".impter_18 AS FLOAT) - 0.032405528169) / 0.0245629776833 AS scaler_18, (CAST("ADS_imp_1_OUT".impter_19 AS FLOAT) - 0.0118757676056) / 0.00653221319467 AS scaler_19, (CAST("ADS_imp_1_OUT".impter_20 AS FLOAT) - 0.0213508450704) / 0.00782019780134 AS scaler_20, (CAST("ADS_imp_1_OUT".impter_21 AS FLOAT) - 0.00392323450704) / 0.00195872778537 AS scaler_21, (CAST("ADS_imp_1_OUT".impter_22 AS FLOAT) - 15.8818169014) / 4.65228595124 AS scaler_22, (CAST("ADS_imp_1_OUT".impter_23 AS FLOAT) - 25.8104225352) / 6.24340698716 AS scaler_23, (CAST("ADS_imp_1_OUT".impter_24 AS FLOAT) - 105.106619718) / 33.2876907395 AS scaler_24, (CAST("ADS_imp_1_OUT".impter_25 AS FLOAT) - 837.940140845) / 516.877799198 AS scaler_25, (CAST("ADS_imp_1_OUT".impter_26 AS FLOAT) - 0.130144507042) / 0.0225481406303 AS scaler_26, (CAST("ADS_imp_1_OUT".impter_27 AS FLOAT) - 0.248377464789) / 0.152062558695 AS scaler_27, (CAST("ADS_imp_1_OUT".impter_28 AS FLOAT) - 0.259110753521) / 0.192531701725 AS scaler_28, (CAST("ADS_imp_1_OUT".impter_29 AS FLOAT) - 0.109523584507) / 0.0679243013098 AS scaler_29, (CAST("ADS_imp_1_OUT".impter_30 AS FLOAT) - 0.286747183099) / 0.0597538503605 AS scaler_30, (CAST("ADS_imp_1_OUT".impter_31 AS FLOAT) - 0.0836747887324) / 0.0156791725456 AS scaler_31 
FROM "ADS_imp_1_OUT"), 
"RawScores" AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "Proba_0", -1.04380405217 + (-0.5 * 1.50954756202 - (0.5 * ("ADS_sca_2_OUT".scaler_2 - 1.0331817727) * ("ADS_sca_2_OUT".scaler_2 - 1.0331817727)) / 0.72012569603) + (-0.5 * 1.45476421915 - (0.5 * ("ADS_sca_2_OUT".scaler_3 - 0.415110400679) * ("ADS_sca_2_OUT".scaler_3 - 0.415110400679)) / 0.681735962911) + (-0.5 * 1.46611265484 - (0.5 * ("ADS_sca_2_OUT".scaler_4 - 1.05528671119) * ("ADS_sca_2_OUT".scaler_4 - 1.05528671119)) / 0.689516665542) + (-0.5 * 1.8968838132 - (0.5 * ("ADS_sca_2_OUT".scaler_5 - 0.996290204265) * ("ADS_sca_2_OUT".scaler_5 - 0.996290204265)) / 1.06078239759) + (-0.5 * 1.60399855798 - (0.5 * ("ADS_sca_2_OUT".scaler_6 - 0.59725361314) * ("ADS_sca_2_OUT".scaler_6 - 0.59725361314)) / 0.791457965528) + (-0.5 * 1.65414631192 - (0.5 * ("ADS_sca_2_OUT".scaler_7 - 0.921486251919) * ("ADS_sca_2_OUT".scaler_7 - 0.921486251919)) / 0.832159828966) + (-0.5 * 1.52232771084 - (0.5 * ("ADS_sca_2_OUT".scaler_8 - 1.03078180616) * ("ADS_sca_2_OUT".scaler_8 - 1.03078180616)) / 0.729388070789) + (-0.5 * 1.2974591353 - (0.5 * ("ADS_sca_2_OUT".scaler_9 - 1.12518873898) * ("ADS_sca_2_OUT".scaler_9 - 1.12518873898)) / 0.582504754636) + (-0.5 * 1.64792816182 - (0.5 * ("ADS_sca_2_OUT".scaler_10 - 0.394725889435) * ("ADS_sca_2_OUT".scaler_10 - 0.394725889435)) / 0.827001388839) + (-0.5 * 1.87695408015 - (0.5 * ("ADS_sca_2_OUT".scaler_11 - 0.0439758769303) * ("ADS_sca_2_OUT".scaler_11 - 0.0439758769303)) / 1.03985056335) + (-0.5 * 2.3617338002 - (0.5 * ("ADS_sca_2_OUT".scaler_12 - 0.777473722665) * ("ADS_sca_2_OUT".scaler_12 - 0.777473722665)) / 1.68852730824) + (-0.5 * 1.54072992329 - (0.5 * ("ADS_sca_2_OUT".scaler_13 - -0.0418569652942) * ("ADS_sca_2_OUT".scaler_13 - -0.0418569652942)) / 0.742934686592) + (-0.5 * 2.36597447191 - (0.5 * ("ADS_sca_2_OUT".scaler_14 - 0.782323906061) * ("ADS_sca_2_OUT".scaler_14 - 0.782323906061)) / 1.69570300235) + (-0.5 * 2.52003476505 - (0.5 * ("ADS_sca_2_OUT".scaler_15 - 0.72772364778) * ("ADS_sca_2_OUT".scaler_15 - 0.72772364778)) / 1.97814136369) + (-0.5 * 1.39471615693 - (0.5 * ("ADS_sca_2_OUT".scaler_16 - -0.0839355851078) * ("ADS_sca_2_OUT".scaler_16 - -0.0839355851078)) / 0.642003894263) + (-0.5 * 1.72888315197 - (0.5 * ("ADS_sca_2_OUT".scaler_17 - 0.515510229155) * ("ADS_sca_2_OUT".scaler_17 - 0.515510229155)) / 0.89673587462) + (-0.5 * 1.22149744923 - (0.5 * ("ADS_sca_2_OUT".scaler_18 - 0.485750220711) * ("ADS_sca_2_OUT".scaler_18 - 0.485750220711)) / 0.539895532117) + (-0.5 * 1.28320031728 - (0.5 * ("ADS_sca_2_OUT".scaler_19 - 0.627332922586) * ("ADS_sca_2_OUT".scaler_19 - 0.627332922586)) / 0.574257860549) + (-0.5 * 2.11064688248 - (0.5 * ("ADS_sca_2_OUT".scaler_20 - 0.0760792686696) * ("ADS_sca_2_OUT".scaler_20 - 0.0760792686696)) / 1.31359784091) + (-0.5 * 1.53348874277 - (0.5 * ("ADS_sca_2_OUT".scaler_21 - 0.183989575095) * ("ADS_sca_2_OUT".scaler_21 - 0.183989575095)) / 0.737574393259) + (-0.5 * 1.35126012844 - (0.5 * ("ADS_sca_2_OUT".scaler_22 - 1.11144997379) * ("ADS_sca_2_OUT".scaler_22 - 1.11144997379)) / 0.61470245702) + (-0.5 * 1.60595139729 - (0.5 * ("ADS_sca_2_OUT".scaler_23 - 0.502510483657) * ("ADS_sca_2_OUT".scaler_23 - 0.502510483657)) / 0.793005065882) + (-0.5 * 1.33086092094 - (0.5 * ("ADS_sca_2_OUT".scaler_24 - 1.12382023056) * ("ADS_sca_2_OUT".scaler_24 - 1.12382023056)) / 0.602290046146) + (-0.5 * 1.70132240884 - (0.5 * ("ADS_sca_2_OUT".scaler_25 - 1.08234066161) * ("ADS_sca_2_OUT".scaler_25 - 1.08234066161)) / 0.872358637955) + (-0.5 * 1.70804644546 - (0.5 * ("ADS_sca_2_OUT".scaler_26 - 0.631710312229) * ("ADS_sca_2_OUT".scaler_26 - 0.631710312229)) / 0.878244174488) + (-0.5 * 1.83914702015 - (0.5 * ("ADS_sca_2_OUT".scaler_27 - 0.872407621899) * ("ADS_sca_2_OUT".scaler_27 - 0.872407621899)) / 1.00127076048) + (-0.5 * 1.31629130726 - (0.5 * ("ADS_sca_2_OUT".scaler_28 - 0.971514014592) * ("ADS_sca_2_OUT".scaler_28 - 0.971514014592)) / 0.593578528674) + (-0.5 * 0.888401875932 - (0.5 * ("ADS_sca_2_OUT".scaler_29 - 1.1147146755) * ("ADS_sca_2_OUT".scaler_29 - 1.1147146755)) / 0.386944042095) + (-0.5 * 2.18420057427 - (0.5 * ("ADS_sca_2_OUT".scaler_30 - 0.550973982476) * ("ADS_sca_2_OUT".scaler_30 - 0.550973982476)) / 1.41385993665) + (-0.5 * 1.93597084009 - (0.5 * ("ADS_sca_2_OUT".scaler_31 - 0.420698939846) * ("ADS_sca_2_OUT".scaler_31 - 0.420698939846)) / 1.10306621883) AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "Proba_1", -0.434038480552 + (-0.5 * 0.47789847568 - (0.5 * ("ADS_sca_2_OUT".scaler_2 - -0.561511832992) * ("ADS_sca_2_OUT".scaler_2 - -0.561511832992)) / 0.256666271932) + (-0.5 * 1.8659029535 - (0.5 * ("ADS_sca_2_OUT".scaler_3 - -0.22560347863) * ("ADS_sca_2_OUT".scaler_3 - -0.22560347863)) / 1.02842230694) + (-0.5 * 0.38790080399 - (0.5 * ("ADS_sca_2_OUT".scaler_4 - -0.573525386514) * ("ADS_sca_2_OUT".scaler_4 - -0.573525386514)) / 0.234575856291) + (-0.5 * -0.169567100459 - (0.5 * ("ADS_sca_2_OUT".scaler_5 - -0.541462067535) * ("ADS_sca_2_OUT".scaler_5 - -0.541462067535)) / 0.134331565362) + (-0.5 * 1.63221902019 - (0.5 * ("ADS_sca_2_OUT".scaler_6 - -0.324594354967) * ("ADS_sca_2_OUT".scaler_6 - -0.324594354967)) / 0.814111417171) + (-0.5 * 0.867451204133 - (0.5 * ("ADS_sca_2_OUT".scaler_7 - -0.500807745608) * ("ADS_sca_2_OUT".scaler_7 - -0.500807745608)) / 0.378921635308) + (-0.5 * 0.474469017344 - (0.5 * ("ADS_sca_2_OUT".scaler_8 - -0.560207503347) * ("ADS_sca_2_OUT".scaler_8 - -0.560207503347)) / 0.255787553272) + (-0.5 * 0.0353260831244 - (0.5 * ("ADS_sca_2_OUT".scaler_9 - -0.611515619009) * ("ADS_sca_2_OUT".scaler_9 - -0.611515619009)) / 0.164877750906) + (-0.5 * 1.80050898392 - (0.5 * ("ADS_sca_2_OUT".scaler_10 - -0.21452493991) * ("ADS_sca_2_OUT".scaler_10 - -0.21452493991)) / 0.963321488315) + (-0.5 * 1.81432166279 - (0.5 * ("ADS_sca_2_OUT".scaler_11 - -0.0238999331143) * ("ADS_sca_2_OUT".scaler_11 - -0.0238999331143)) / 0.976719859359) + (-0.5 * -0.292887488379 - (0.5 * ("ADS_sca_2_OUT".scaler_12 - -0.422540066666) * ("ADS_sca_2_OUT".scaler_12 - -0.422540066666)) / 0.118746470954) + (-0.5 * 1.96736005358 - (0.5 * ("ADS_sca_2_OUT".scaler_13 - 0.0227483507033) * ("ADS_sca_2_OUT".scaler_13 - 0.0227483507033)) / 1.13823974662) + (-0.5 * -0.383123384597 - (0.5 * ("ADS_sca_2_OUT".scaler_14 - -0.425176035902) * ("ADS_sca_2_OUT".scaler_14 - -0.425176035902)) / 0.108500505068) + (-0.5 * -1.88503619232 - (0.5 * ("ADS_sca_2_OUT".scaler_15 - -0.395501982489) * ("ADS_sca_2_OUT".scaler_15 - -0.395501982489)) / 0.0241634707653) + (-0.5 * 2.01069802945 - (0.5 * ("ADS_sca_2_OUT".scaler_16 - 0.0456171658195) * ("ADS_sca_2_OUT".scaler_16 - 0.0456171658195)) / 1.18865327317) + (-0.5 * 1.65539259497 - (0.5 * ("ADS_sca_2_OUT".scaler_17 - -0.280168602802) * ("ADS_sca_2_OUT".scaler_17 - -0.280168602802)) / 0.833197582187) + (-0.5 * 1.8886919482 - (0.5 * ("ADS_sca_2_OUT".scaler_18 - -0.263994685169) * ("ADS_sca_2_OUT".scaler_18 - -0.263994685169)) / 1.05212810718) + (-0.5 * 1.73391142715 - (0.5 * ("ADS_sca_2_OUT".scaler_19 - -0.340941805753) * ("ADS_sca_2_OUT".scaler_19 - -0.340941805753)) / 0.901256264726) + (-0.5 * 1.64515493106 - (0.5 * ("ADS_sca_2_OUT".scaler_20 - -0.0413474286248) * ("ADS_sca_2_OUT".scaler_20 - -0.0413474286248)) / 0.824711100368) + (-0.5 * 1.94603690903 - (0.5 * ("ADS_sca_2_OUT".scaler_21 - -0.0999943342908) * ("ADS_sca_2_OUT".scaler_21 - -0.0999943342908)) / 1.11422583193) + (-0.5 * 0.0843126031261 - (0.5 * ("ADS_sca_2_OUT".scaler_22 - -0.604048898801) * ("ADS_sca_2_OUT".scaler_22 - -0.604048898801)) / 0.173155635233) + (-0.5 * 1.73326552562 - (0.5 * ("ADS_sca_2_OUT".scaler_23 - -0.273103523727) * ("ADS_sca_2_OUT".scaler_23 - -0.273103523727)) / 0.900674329879) + (-0.5 * -0.0155025133692 - (0.5 * ("ADS_sca_2_OUT".scaler_24 - -0.610771864434) * ("ADS_sca_2_OUT".scaler_24 - -0.610771864434)) / 0.156706667702) + (-0.5 * -0.607497654706 - (0.5 * ("ADS_sca_2_OUT".scaler_25 - -0.588228620439) * ("ADS_sca_2_OUT".scaler_25 - -0.588228620439)) / 0.0866936428758) + (-0.5 * 1.52511395185 - (0.5 * ("ADS_sca_2_OUT".scaler_26 - -0.343320821864) * ("ADS_sca_2_OUT".scaler_26 - -0.343320821864)) / 0.731423155544) + (-0.5 * 0.818631685636 - (0.5 * ("ADS_sca_2_OUT".scaler_27 - -0.474134577119) * ("ADS_sca_2_OUT".scaler_27 - -0.474134577119)) / 0.360867154744) + (-0.5 * 0.991915320149 - (0.5 * ("ADS_sca_2_OUT".scaler_28 - -0.527996747061) * ("ADS_sca_2_OUT".scaler_28 - -0.527996747061)) / 0.429144431625) + (-0.5 * 0.602897969283 - (0.5 * ("ADS_sca_2_OUT".scaler_29 - -0.605823193205) * ("ADS_sca_2_OUT".scaler_29 - -0.605823193205)) / 0.290840841714) + (-0.5 * 1.18476838243 - (0.5 * ("ADS_sca_2_OUT".scaler_30 - -0.29944238178) * ("ADS_sca_2_OUT".scaler_30 - -0.29944238178)) / 0.520425421312) + (-0.5 * 1.60911810018 - (0.5 * ("ADS_sca_2_OUT".scaler_31 - -0.228640728177) * ("ADS_sca_2_OUT".scaler_31 - -0.228640728177)) / 0.795520257646) AS "Score_1" 
FROM "ADS_sca_2_OUT"), 
orig_cte AS 
(SELECT "RawScores"."KEY" AS "KEY", "RawScores"."Score_0" AS "Score_0", "RawScores"."Score_1" AS "Score_1", "RawScores"."Proba_0" AS "Proba_0", "RawScores"."Proba_1" AS "Proba_1", "RawScores"."LogProba_0" AS "LogProba_0", "RawScores"."LogProba_1" AS "LogProba_1", CAST(NULL AS FLOAT) AS "Decision" 
FROM "RawScores"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte) scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."Decision" AS "Decision", max_select."KEY_m" AS "KEY_m", max_select."max_LogProba" AS "max_LogProba", max_select."max_Proba" AS "max_Proba", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."LogProba") AS "max_LogProba", max(score_class_union."Proba") AS "max_Proba", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."Decision" AS "Decision", score_max."KEY_m" AS "KEY_m", score_max."max_LogProba" AS "max_LogProba", score_max."max_Proba" AS "max_Proba", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas) soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_LogProba" AS "max_LogProba", score_soft_max_deltas."max_Proba" AS "max_Proba", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."Decision" AS "Decision", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_LogProba" AS "max_LogProba", score_soft_max."max_Proba" AS "max_Proba", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" = union_with_max."Score" GROUP BY union_with_max."KEY") "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1" 
FROM score_soft_max) soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -BINARY_FLOAT_INFINITY END AS "LogProba_1", arg_max_cte."arg_max_Score" AS "Decision" 
FROM arg_max_cte