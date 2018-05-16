-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf_Pipeline
-- Dataset : diabetes
-- Database : monetdb


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516115617_codegen_ga8hgt_ads_imp_1_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516115617_codegen_ga8hgt_ads_imp_1_out (
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
	impter_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516115617_codegen_ga8hgt_ads_imp_1_out part 2. Populate

INSERT INTO tmp_20180516115617_codegen_ga8hgt_ads_imp_1_out ("KEY", impter_2, impter_3, impter_4, impter_5, impter_6, impter_7, impter_8, impter_9, impter_10, impter_11) SELECT "U"."KEY", "U".impter_2, "U".impter_3, "U".impter_4, "U".impter_5, "U".impter_6, "U".impter_7, "U".impter_8, "U".impter_9, "U".impter_10, "U".impter_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".impter_2, "ADS_imp_1_OUT".impter_3, "ADS_imp_1_OUT".impter_4, "ADS_imp_1_OUT".impter_5, "ADS_imp_1_OUT".impter_6, "ADS_imp_1_OUT".impter_7, "ADS_imp_1_OUT".impter_8, "ADS_imp_1_OUT".impter_9, "ADS_imp_1_OUT".impter_10, "ADS_imp_1_OUT".impter_11 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.004293298838942205 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.0007936290934574536 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0002824745489547694 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.002204787388070217 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.0018434032681274757 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.004385424578350862 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN -0.0029764625631508506 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN 0.0012897359179628153 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -8.887371853471437e-05 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN -0.0023203295749167937 ELSE "ADS"."Feature_9" END AS impter_11 
FROM diabetes AS "ADS") AS "ADS_imp_1_OUT") AS "U"

-- Code For temporary table tmp_20180516115617_codegen_dd6hrq_ads_sca_2_out part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516115617_codegen_dd6hrq_ads_sca_2_out (
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
	scaler_11 DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516115617_codegen_dd6hrq_ads_sca_2_out part 2. Populate

INSERT INTO tmp_20180516115617_codegen_dd6hrq_ads_sca_2_out ("KEY", scaler_2, scaler_3, scaler_4, scaler_5, scaler_6, scaler_7, scaler_8, scaler_9, scaler_10, scaler_11) SELECT "U"."KEY", "U".scaler_2, "U".scaler_3, "U".scaler_4, "U".scaler_5, "U".scaler_6, "U".scaler_7, "U".scaler_8, "U".scaler_9, "U".scaler_10, "U".scaler_11 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_2, "ADS_sca_2_OUT".scaler_3, "ADS_sca_2_OUT".scaler_4, "ADS_sca_2_OUT".scaler_5, "ADS_sca_2_OUT".scaler_6, "ADS_sca_2_OUT".scaler_7, "ADS_sca_2_OUT".scaler_8, "ADS_sca_2_OUT".scaler_9, "ADS_sca_2_OUT".scaler_10, "ADS_sca_2_OUT".scaler_11 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS DOUBLE) - 0.004293298838942205) / 0.05047660201166468 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS DOUBLE) - -0.0007936290934574536) / 0.04750811800730214 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS DOUBLE) - 0.0002824745489547694) / 0.0468170053213414 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS DOUBLE) - -0.002204787388070217) / 0.05153711023029127 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS DOUBLE) - 0.0018434032681274757) / 0.04910069218274836 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS DOUBLE) - 0.004385424578350862) / 0.047477809652101154 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS DOUBLE) - -0.0029764625631508506) / 0.042295529345104395 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS DOUBLE) - 0.0012897359179628153) / 0.04318277829795974 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS DOUBLE) - -8.887371853471437e-05) / 0.0444460047545711 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS DOUBLE) - -0.0023203295749167937) / 0.046930272417797694 AS scaler_11 
FROM tmp_20180516115617_codegen_ga8hgt_ads_imp_1_out AS "ADS_imp_1_OUT") AS "ADS_sca_2_OUT") AS "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_2 AS DOUBLE) AS scaler_2, CAST("ADS_sca_2_OUT".scaler_3 AS DOUBLE) AS scaler_3, CAST("ADS_sca_2_OUT".scaler_4 AS DOUBLE) AS scaler_4, CAST("ADS_sca_2_OUT".scaler_5 AS DOUBLE) AS scaler_5, CAST("ADS_sca_2_OUT".scaler_6 AS DOUBLE) AS scaler_6, CAST("ADS_sca_2_OUT".scaler_7 AS DOUBLE) AS scaler_7, CAST("ADS_sca_2_OUT".scaler_8 AS DOUBLE) AS scaler_8, CAST("ADS_sca_2_OUT".scaler_9 AS DOUBLE) AS scaler_9, CAST("ADS_sca_2_OUT".scaler_10 AS DOUBLE) AS scaler_10, CAST("ADS_sca_2_OUT".scaler_11 AS DOUBLE) AS scaler_11 
FROM tmp_20180516115617_codegen_dd6hrq_ads_sca_2_out AS "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS DOUBLE) AS sv_0, CAST("Values".sv_1 AS DOUBLE) AS sv_1, CAST("Values".sv_2 AS DOUBLE) AS sv_2, CAST("Values".sv_3 AS DOUBLE) AS sv_3, CAST("Values".sv_4 AS DOUBLE) AS sv_4, CAST("Values".sv_5 AS DOUBLE) AS sv_5, CAST("Values".sv_6 AS DOUBLE) AS sv_6, CAST("Values".sv_7 AS DOUBLE) AS sv_7, CAST("Values".sv_8 AS DOUBLE) AS sv_8, CAST("Values".sv_9 AS DOUBLE) AS sv_9 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 1.3169557974266162 AS sv_0, -0.9229582069908973 AS sv_1, 0.2527794439217936 AS sv_2, 0.8680030049327582 AS sv_3, 1.4157262414468494 AS sv_4, 1.0342026973947738 AS sv_5, 1.3074242283667856 AS sv_6, -0.08989690031891831 AS sv_7, 0.5733250665542304 AS sv_8, -0.061782612608162014 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, -0.12234015604509564 AS sv_0, 1.0834726777719228 AS sv_1, 1.5189788442586414 AS sv_2, 1.9368625287522194 AS sv_3, 1.7520032584175984 AS sv_4, 1.4959003301602989 AS sv_5, -0.43348686133599196 AS sv_6, 1.619169645668123 AS sv_7, 1.608983909667523 AS sv_8, 0.5560435134734569 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.16551903464924736 AS sv_0, -0.9229582069908973 AS sv_1, 0.7132155894988292 AS sv_2, 0.6898597487360592 AS sv_3, 0.5750336990199784 AS sv_4, 0.4801655380761449 AS sv_5, 0.0017409110897029956 AS sv_6, 0.17500841430907257 AS sv_7, 0.7038172405838073 AS sv_8, 0.6443043886279736 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 0.4533782253435895 AS sv_0, -0.9229582069908973 AS sv_1, 1.9794149898356772 AS sv_2, -0.9802332552277383 AS sv_3, 0.1266643430589816 AS sv_4, 0.7439927567993019 AS sv_5, -0.6075779703062686 AS sv_6, 0.45700439439693474 AS sv_7, -1.0861010196735965 AS sv_8, 0.4677826383189402 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.8132022137115182 AS sv_0, 1.0834726777719228 AS sv_1, -0.18463489437639113 AS sv_2, -0.6016788403190012 AS sv_3, -0.18158958916420415 AS sv_4, -0.06727594077440481 AS sv_5, -0.8687146337616847 AS sv_6, 0.7646363726746026 AS sv_7, 0.6755280318413616 AS sv_8, 0.6443043886279736 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 1.2449909997530315 AS sv_0, 1.0834726777719228 AS sv_1, -0.13859127981868755 AS sv_2, 1.2688253263650566 AS sv_3, -0.910189792600825 AS sv_4, -2.11193688587887 AS sv_5, 1.3074242283667856 AS sv_6, -1.7989634463059587 AS sv_7, 1.3389881608471945 AS sv_8, 1.1738696395550736 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 0.1 AS dual_coeff, 0.5253430230171761 AS sv_0, 1.0834726777719228 AS sv_1, 1.265738964191272 AS sv_2, 1.1352178858876245 AS sv_3, -0.4898435213873905 AS sv_4, -0.06727594077440481 AS sv_5, -0.694623524791408 AS sv_6, -0.08989690031891831 AS sv_7, -0.5557825467177778 AS sv_8, -0.32656523807171206 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 0.2374838323228319 AS sv_0, -0.9229582069908973 AS sv_1, 1.565022458816347 AS sv_2, -0.7575541873199928 AS sv_3, -0.12554341966907942 AS sv_4, -0.37727292277411445 AS sv_5, -0.2593957523657131 AS sv_6, -0.05571556939917758 AS sv_7, 0.9671186836347224 AS sv_8, 0.9973478892460401 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -1.4896713118432232 AS sv_0, 1.0834726777719228 AS sv_1, -1.611986945665203 AS sv_2, -0.7352862807964334 AS sv_3, -1.0783283010861995 AS sv_4, -0.4102513251145077 AS sv_5, -0.8687146337616847 AS sv_6, -0.08989690031891831 AS sv_7, -2.1676717559937857 AS sv_8, -0.679608738689781 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 1.1730262020794469 AS sv_0, 1.0834726777719228 AS sv_1, -0.0925476652609842 AS sv_2, -0.20085651888670283 AS sv_3, 2.060257190640794 AS sv_4, 0.9352674903735897 AS sv_5, 1.3944697828519228 AS sv_6, -0.08989690031891831 AS sv_7, 1.903076697174647 AS sv_8, -0.32656523807171206 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -0.1 AS dual_coeff, -1.84949530021115 AS sv_0, -0.9229582069908973 AS sv_1, -1.3127034510401296 AS sv_2, -0.4680713998415671 AS sv_3, -1.1623975553288868 AS sv_4, -1.241307064092452 AS sv_5, 1.0462875649113672 AS sv_6, -1.7989634463059587 AS sv_7, -2.11147823765933 AS sv_8, -1.1209131144623643 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, -1.2737769188224655 AS sv_0, 1.0834726777719228 AS sv_1, -0.23067850893409597 AS sv_2, -0.24539233260185858 AS sv_3, -1.0503052163386377 AS sv_4, -0.5883346977526391 AS sv_5, -1.3039424061873797 AS sv_6, 0.3373697361778413 AS sv_7, -0.2211691174246448 AS sv_8, -0.679608738689781 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 0.021589439302075675 AS sv_0, 1.0834726777719228 AS sv_1, -0.6220492326745762 AS sv_2, -0.13405279864798594 AS sv_3, -0.686005114620327 AS sv_4, -0.7004612657099817 AS sv_5, 0.26287757454511906 AS sv_6, -0.9444301733124383 AS sv_7, -0.4056471147163736 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, -1.7055657048639792 AS sv_0, -0.9229582069908973 AS sv_1, -1.7501177893383135 AS sv_2, -0.7352862807964334 AS sv_3, 0.014572004068732158 AS sv_4, -0.4828038102633767 AS sv_5, 1.742652000792478 AS sv_6, -0.9444301733124383 AS sv_7, -0.24334160491062018 AS sv_8, -1.9152609908530167 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, -0.7700233351073659 AS sv_0, -0.9229582069908973 AS sv_1, -0.8062236909053905 AS sv_2, -1.1361086022287297 AS sv_3, 0.378872105787042 AS sv_4, 0.8231409224162491 AS sv_5, -0.2593957523657131 AS sv_6, -0.08989690031891831 AS sv_7, -0.6898783437417529 AS sv_8, -1.473956615080431 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, -0.12234015604509564 AS sv_0, 1.0834726777719228 AS sv_1, -0.529962003559169 AS sv_2, 1.0684141656489075 AS sv_3, 0.5189875295248548 AS sv_4, 0.5395266622888554 AS sv_5, 0.7851509014559512 AS sv_6, -0.08989690031891831 AS sv_7, -0.47934133426546444 AS sv_8, 0.820826138937007 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, -0.05037535837150988 AS sv_0, -0.9229582069908973 AS sv_1, -0.852267305463094 AS sv_2, -1.9154853385697654 AS sv_3, -0.6299589451252013 AS sv_4, -0.7268439875822967 AS sv_5, 1.1333331193965066 AS sv_6, -1.1922448224805584 AS sv_7, -1.5353656708338554 AS sv_8, -2.7096088672436602 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -2.065389693231908 AS sv_0, -0.9229582069908973 AS sv_1, -1.4508342947132404 AS sv_2, -2.071360685570757 AS sv_3, -1.5547207417947593 AS sv_4, -1.6238565312410298 AS sv_5, 0.43696868351539564 AS sv_6, -0.9444301733124383 AS sv_7, -1.1200015455062078 AS sv_8, -0.15004348776267867 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -1.9934248955583231 AS sv_0, -0.9229582069908973 AS sv_1, -0.7832018836265386 AS sv_2, -1.4033234831835961 AS sv_3, -0.8261205383581377 AS sv_4, -0.6740785438376645 AS sv_5, 0.43696868351539564 AS sv_6, -0.9444301733124383 AS sv_7, -1.6649414988281948 AS sv_8, 0.02647826254635487 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -0.9859177281281234 AS sv_0, -0.9229582069908973 AS sv_1, -0.8292454981842423 AS sv_2, -0.4680713998415671 AS sv_3, -0.34972809764957774 AS sv_4, -0.07387162124248377 AS sv_5, -0.694623524791408 AS sv_6, -0.08989690031891831 AS sv_7, 0.02773412604471449 AS sv_8, -0.7678696138442977 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 0.021589439302075675 AS sv_0, -0.9229582069908973 AS sv_1, -1.0364417636939083 AS sv_2, -0.20085651888670283 AS sv_3, -0.013451080678830205 AS sv_4, -0.2321679524763778 AS sv_5, 1.5685608918222016 AS sv_6, -0.9444301733124383 AS sv_7, -1.1544718546782449 AS sv_8, -1.209173989616881 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.12234015604509564 AS sv_0, -0.9229582069908973 AS sv_1, 1.4499134224220882 AS sv_2, -0.06724907840926969 AS sv_3, 2.396534207611531 AS sv_4, 2.6501444120741104 AS sv_5, -0.5205324158211291 AS sv_6, 1.978073620325401 AS sv_7, 1.0399405978823293 AS sv_8, 0.02647826254635487 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, 0.7412374160379317 AS sv_0, -0.9229582069908973 AS sv_1, -0.967376341857353 AS sv_2, 0.7121276599358779 AS sv_3, 0.8552645464956019 AS sv_4, -0.42344268605066626 AS sv_5, 0.9592420104262301 AS sv_6, -0.3633475476768441 AS sv_7, 2.0246491781007796 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, -0.9139529304545368 AS sv_0, 1.0834726777719228 AS sv_1, 0.09162679296983049 AS sv_2, -1.0025011617512976 AS sv_3, -0.9382128773483889 AS sv_4, -0.6674828633695863 AS sv_5, -1.826215733098212 AS sv_6, 1.619169645668123 AS sv_7, 0.8265010930629372 AS sv_8, 0.4677826383189402 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.021589439302075675 AS sv_0, -0.9229582069908973 AS sv_1, -0.06952585798213198 AS sv_2, 1.0016104454101904 AS sv_3, 1.471772410941975 AS sv_4, 1.3969651231391147 AS sv_5, 1.1333331193965066 AS sv_6, -0.08989690031891831 AS sv_7, -0.03171743128638289 AS sv_8, -0.15004348776267867 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, -1.3457417164960501 AS sv_0, 1.0834726777719228 AS sv_1, 2.0484804116722324 AS sv_2, 2.070469969229649 AS sv_3, -0.0975203349215173 AS sv_4, -0.19259386966790415 AS sv_5, -0.08530464339543577 AS sv_6, -0.08989690031891831 AS sv_7, 0.512552172261024 AS sv_8, 1.615174015327659 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 2.1085685718360563 AS sv_0, 1.0834726777719228 AS sv_1, 0.13767040752753384 AS sv_2, 0.6007881239778939 AS sv_3, -0.6019358603776396 AS sv_4, -0.24535931341253575 AS sv_5, -1.0428057427319612 AS sv_6, 0.7646363726746026 AS sv_7, 0.04717441488692785 AS sv_8, 1.7034348904821757 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 1.3169557974266162 AS sv_0, 1.0834726777719228 AS sv_1, 0.2527794439217936 AS sv_2, 1.1352178858876245 AS sv_3, 0.6591029532626657 AS sv_4, 0.9484588513097483 AS sv_5, -0.8687146337616847 AS sv_6, 0.7646363726746026 AS sv_7, 0.6177513909913335 AS sv_8, 0.02647826254635487 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 1.2449909997530315 AS sv_0, 1.0834726777719228 AS sv_1, -0.3227657380495031 AS sv_2, 1.1797537016068913 AS sv_3, -1.2464668095715743 AS sv_4, -0.8191835141354005 AS sv_5, -1.3909879606725168 AS sv_6, 0.26900707433836024 AS sv_7, -0.11376577691627866 AS sv_8, 1.0856087644005568 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.4533782253435895 AS sv_0, -0.9229582069908973 AS sv_1, 1.058542698681606 AS sv_2, -1.024769068274857 AS sv_3, -0.0975203349215173 AS sv_4, 0.7637797982035387 AS sv_5, -1.3039424061873797 AS sv_6, 1.1919030091713618 AS sv_7, -1.1895314283614709 AS sv_8, -0.061782612608162014 AS sv_9 UNION ALL SELECT 30 AS sv_idx, -0.1 AS dual_coeff, 0.6692726183643474 AS sv_0, 1.0834726777719228 AS sv_1, 0.18371402208523738 AS sv_2, 0.8680030049327582 AS sv_3, -0.910189792600825 AS sv_4, -0.535569254008009 AS sv_5, -0.8687146337616847 AS sv_6, -0.08989690031891831 AS sv_7, -0.4056471147163736 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -1.057882525801708 AS sv_0, -0.9229582069908973 AS sv_1, -1.2206162219247225 AS sv_2, -0.8020900010351485 AS sv_3, -0.9662359620959505 AS sv_4, -1.0038625672416122 AS sv_5, 0.08878646557484171 AS sv_6, -0.9444301733124383 AS sv_7, -0.2657564194621697 AS sv_8, 0.3795217631644214 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -0.9139529304545368 AS sv_0, -0.9229582069908973 AS sv_1, 1.0124990841239023 AS sv_2, 1.2020216061263396 AS sv_3, 2.564672716096909 AS sv_4, 2.603974648797552 AS sv_5, -0.5205324158211291 AS sv_6, 2.473702918661632 AS sv_7, 1.4395443349448371 AS sv_8, 0.9090870140915236 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, 0.16551903464924736 AS sv_0, -0.9229582069908973 AS sv_1, 0.13767040752753384 AS sv_2, -1.0470369754664555 AS sv_3, -1.5827438265423213 AS sv_4, -1.4919429218794524 AS sv_5, -0.43348686133599196 AS sv_6, -0.9017035096627636 AS sv_7, -0.4056471147163736 AS sv_8, -1.9152609908530167 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.1 AS dual_coeff, 0.5253430230171761 AS sv_0, 1.0834726777719228 AS sv_1, 0.9894772768450506 AS sv_2, -0.26766023912541786 AS sv_3, 0.378872105787042 AS sv_4, 0.9748415731820654 AS sv_5, -1.3039424061873797 AS sv_6, 1.619169645668123 AS sv_7, 0.1417042852291998 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -0.1 AS dual_coeff, -0.41019934673943903 AS sv_0, -0.9229582069908973 AS sv_1, -0.23067850893409597 AS sv_2, 0.06635836206816284 AS sv_3, -0.7980974536105759 AS sv_4, -0.8455662360077176 AS sv_5, 0.3499231290302585 AS sv_6, -0.9444301733124383 AS sv_7, -0.47934133426546444 AS sv_8, -0.679608738689781 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 0.2374838323228319 AS sv_0, 1.0834726777719228 AS sv_1, 1.542000651537493 AS sv_2, 1.5360402073199209 AS sv_3, -0.20961267391176652 AS sv_4, 0.025063585778700003 AS sv_5, -0.08530464339543577 AS sv_6, -0.08989690031891831 AS sv_7, -0.5299842805595879 AS sv_8, 1.350391389864107 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, -1.2018121211488793 AS sv_0, -0.9229582069908973 AS sv_1, -1.5889651383863512 AS sv_2, -0.9356974415125825 AS sv_3, -0.545889690882514 AS sv_4, -1.0830107328585574 AS sv_5, 2.26492532770331 AS sv_6, -1.7989634463059587 AS sv_7, -1.3744254790306467 AS sv_8, -0.9443913641533309 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.8851670113851029 AS sv_0, 1.0834726777719228 AS sv_1, 0.06860498569097828 AS sv_2, 1.4024327668424887 AS sv_3, -0.20961267391176652 AS sv_4, 0.189955597480673 AS sv_5, -1.21689685170224 AS sv_6, 0.7646363726746026 AS sv_7, 0.3015983484113671 AS sv_8, 0.820826138937007 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, -0.2662697513922667 AS sv_0, -0.9229582069908973 AS sv_1, 0.22975763664294177 AS sv_2, -1.0693048819900146 AS sv_3, -0.545889690882514 AS sv_4, -0.9972668867735319 AS sv_5, 0.7851509014559512 AS sv_6, -0.9444301733124383 AS sv_7, 0.38532161052233543 AS sv_8, -0.061782612608162014 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, 0.3094486299964185 AS sv_0, -0.9229582069908973 AS sv_1, 0.09162679296983049 AS sv_2, -0.4680713998415671 AS sv_3, 0.4349182752821676 AS sv_4, 0.12399879279988431 AS sv_5, 1.6556064463073386 AS sv_6, -0.9444301733124383 AS sv_7, -0.5299842805595879 AS sv_8, -0.9443913641533309 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 0.16551903464924736 AS sv_0, 1.0834726777719228 AS sv_1, -0.43787477444376194 AS sv_2, -0.0004453581705534258 AS sv_3, 0.7431722075053528 AS sv_4, 1.0276070169266955 AS sv_5, -0.08530464339543577 AS sv_6, 0.7646363726746026 AS sv_7, -0.11376577691627866 AS sv_8, -0.15004348776267867 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.6260937397601947 AS sv_0, -0.9229582069908973 AS sv_1, 1.8873277607202699 AS sv_2, -0.4458034933180077 AS sv_3, 0.4068951905346058 AS sv_4, 0.8033538810120123 AS sv_5, -0.694623524791408 AS sv_6, 0.7646363726746026 AS sv_7, 0.06643216311070517 AS sv_8, 1.7034348904821757 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, -0.33823454906585254 AS sv_0, -0.9229582069908973 AS sv_1, 1.2887607714701237 AS sv_2, 1.0684141656489075 AS sv_3, 0.9393338007382892 AS sv_4, 0.5263353013526968 AS sv_5, -0.3464413068508525 AS sv_6, 0.7646363726746026 AS sv_7, 1.5816983393679458 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, 0.7412374160379317 AS sv_0, -0.9229582069908973 AS sv_1, -0.6911146545111315 AS sv_2, -1.158376508752291 AS sv_3, 1.5838647499322238 AS sv_4, 0.9814372536501437 AS sv_5, 1.3944697828519228 AS sv_6, -0.2608035549176224 AS sv_7, 1.015952779201199 AS sv_8, -1.209173989616881 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 0.1 AS dual_coeff, 2.1085685718360563 AS sv_0, 1.0834726777719228 AS sv_1, -0.7141364617899834 AS sv_2, -0.401267679602852 AS sv_3, -0.12554341966907942 AS sv_4, 0.335060567778409 AS sv_5, -1.3909879606725168 AS sv_6, 1.619169645668123 AS sv_7, 0.35224129470549065 AS sv_8, 0.9973478892460401 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.1 AS dual_coeff, 1.2449909997530315 AS sv_0, 1.0834726777719228 AS sv_1, -0.6680928472322798 AS sv_2, 0.13316208230687912 AS sv_3, 0.4629413600297293 AS sv_4, 0.6582489107142764 AS sv_5, -0.6075779703062686 AS sv_6, 0.7646363726746026 AS sv_7, 0.5279150539608931 AS sv_8, 1.7916957656366925 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -0.1 AS dual_coeff, -0.05037535837150988 AS sv_0, -0.9229582069908973 AS sv_1, -0.9903981491362047 AS sv_2, -0.6016788403190012 AS sv_3, -1.5266976570471957 AS sv_4, -1.8085355843472395 AS sv_5, 1.1333331193965066 AS sv_6, -1.6366021244371907 AS sv_7, -1.3744254790306467 AS sv_8, -1.6504783653894666 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.7412374160379317 AS sv_0, 1.0834726777719228 AS sv_1, 0.41393209487375604 AS sv_2, 1.2020216061263396 AS sv_3, -0.1535665044166418 AS sv_4, -0.1464241063913521 AS sv_5, -0.6075779703062686 AS sv_6, -0.08989690031891831 AS sv_7, 0.7038172405838073 AS sv_8, 0.20300001285538866 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.1 AS dual_coeff, 0.021589439302075675 AS sv_0, 1.0834726777719228 AS sv_1, -0.046504050703280626 AS sv_2, 0.19996580254559557 AS sv_3, -0.12554341966907942 AS sv_4, -0.42344268605066626 AS sv_5, 0.0017409110897029956 AS sv_6, -0.08989690031891831 AS sv_7, 0.8658173471997993 AS sv_8, -0.23830436291719537 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS DOUBLE)) + 135.2572224214673 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(CASE WHEN (CASE WHEN (-100.0 <= -0.1 * (power(kernel_input.scaler_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_11 - "SV_data".sv_9, 2))) THEN -0.1 * (power(kernel_input.scaler_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_11 - "SV_data".sv_9, 2)) ELSE -100.0 END <= 100.0) THEN CASE WHEN (-100.0 <= -0.1 * (power(kernel_input.scaler_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_11 - "SV_data".sv_9, 2))) THEN -0.1 * (power(kernel_input.scaler_2 - "SV_data".sv_0, 2) + power(kernel_input.scaler_3 - "SV_data".sv_1, 2) + power(kernel_input.scaler_4 - "SV_data".sv_2, 2) + power(kernel_input.scaler_5 - "SV_data".sv_3, 2) + power(kernel_input.scaler_6 - "SV_data".sv_4, 2) + power(kernel_input.scaler_7 - "SV_data".sv_5, 2) + power(kernel_input.scaler_8 - "SV_data".sv_6, 2) + power(kernel_input.scaler_9 - "SV_data".sv_7, 2) + power(kernel_input.scaler_10 - "SV_data".sv_8, 2) + power(kernel_input.scaler_11 - "SV_data".sv_9, 2)) ELSE -100.0 END ELSE 100.0 END) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp