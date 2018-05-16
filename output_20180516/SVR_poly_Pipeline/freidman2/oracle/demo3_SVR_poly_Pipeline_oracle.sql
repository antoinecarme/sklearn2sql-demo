-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_poly_Pipeline
-- Dataset : freidman2
-- Database : oracle


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table DEGEN_C72GJ2_ADS_IMP_1_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_C72GJ2_ADS_IMP_1_OUT" (
	"KEY" NUMBER(19), 
	imputer_output_2 BINARY_DOUBLE, 
	imputer_output_3 BINARY_DOUBLE, 
	imputer_output_4 BINARY_DOUBLE, 
	imputer_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_C72GJ2_ADS_IMP_1_OUT part 2. Populate

INSERT INTO "DEGEN_C72GJ2_ADS_IMP_1_OUT" ("KEY", imputer_output_2, imputer_output_3, imputer_output_4, imputer_output_5) SELECT "U"."KEY", "U".imputer_output_2, "U".imputer_output_3, "U".imputer_output_4, "U".imputer_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY", "ADS_imp_1_OUT".imputer_output_2, "ADS_imp_1_OUT".imputer_output_3, "ADS_imp_1_OUT".imputer_output_4, "ADS_imp_1_OUT".imputer_output_5 
FROM (SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 43.79128122207401 ELSE "ADS"."Feature_0" END AS imputer_output_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN 945.9672833084396 ELSE "ADS"."Feature_1" END AS imputer_output_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.5310009099975209 ELSE "ADS"."Feature_2" END AS imputer_output_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN 6.139967152050499 ELSE "ADS"."Feature_3" END AS imputer_output_5 
FROM "FREIDMAN2" "ADS") "ADS_imp_1_OUT") "U"

-- Code For temporary table DEGEN_9PNZVE_ADS_SCA_2_OUT part 1. Create 


CREATE GLOBAL TEMPORARY TABLE "DEGEN_9PNZVE_ADS_SCA_2_OUT" (
	"KEY" NUMBER(19), 
	scaler_output_2 BINARY_DOUBLE, 
	scaler_output_3 BINARY_DOUBLE, 
	scaler_output_4 BINARY_DOUBLE, 
	scaler_output_5 BINARY_DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table DEGEN_9PNZVE_ADS_SCA_2_OUT part 2. Populate

INSERT INTO "DEGEN_9PNZVE_ADS_SCA_2_OUT" ("KEY", scaler_output_2, scaler_output_3, scaler_output_4, scaler_output_5) SELECT "U"."KEY", "U".scaler_output_2, "U".scaler_output_3, "U".scaler_output_4, "U".scaler_output_5 
FROM (SELECT "ADS_sca_2_OUT"."KEY", "ADS_sca_2_OUT".scaler_output_2, "ADS_sca_2_OUT".scaler_output_3, "ADS_sca_2_OUT".scaler_output_4, "ADS_sca_2_OUT".scaler_output_5 
FROM (SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".imputer_output_2 AS BINARY_DOUBLE) - 43.79128122207401) / 26.03562357622511 AS scaler_output_2, (CAST("ADS_imp_1_OUT".imputer_output_3 AS BINARY_DOUBLE) - 945.9672833084396) / 461.4552766146446 AS scaler_output_3, (CAST("ADS_imp_1_OUT".imputer_output_4 AS BINARY_DOUBLE) - 0.5310009099975209) / 0.2901863282144786 AS scaler_output_4, (CAST("ADS_imp_1_OUT".imputer_output_5 AS BINARY_DOUBLE) - 6.139967152050499) / 3.072917242564058 AS scaler_output_5 
FROM "DEGEN_C72GJ2_ADS_IMP_1_OUT" "ADS_imp_1_OUT") "ADS_sca_2_OUT") "U"

-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", CAST("ADS_sca_2_OUT".scaler_output_2 AS BINARY_DOUBLE) AS scaler_output_2, CAST("ADS_sca_2_OUT".scaler_output_3 AS BINARY_DOUBLE) AS scaler_output_3, CAST("ADS_sca_2_OUT".scaler_output_4 AS BINARY_DOUBLE) AS scaler_output_4, CAST("ADS_sca_2_OUT".scaler_output_5 AS BINARY_DOUBLE) AS scaler_output_5 
FROM "DEGEN_9PNZVE_ADS_SCA_2_OUT" "ADS_sca_2_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS BINARY_DOUBLE) AS dual_coeff, CAST("Values".sv_0 AS BINARY_DOUBLE) AS sv_0, CAST("Values".sv_1 AS BINARY_DOUBLE) AS sv_1, CAST("Values".sv_2 AS BINARY_DOUBLE) AS sv_2, CAST("Values".sv_3 AS BINARY_DOUBLE) AS sv_3 
FROM (SELECT 0 AS sv_idx, 0.1 AS dual_coeff, 0.40702154782483735 AS sv_0, 1.520613475009886 AS sv_1, 0.12464927450374029 AS sv_2, -0.9895648537599753 AS sv_3 FROM DUAL UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, -0.8921793030014273 AS sv_0, 1.5645253459007122 AS sv_1, -0.14279939028360805 AS sv_2, 0.40084524186194526 AS sv_3 FROM DUAL UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, -0.12862954071664834 AS sv_0, -0.855762437264239 AS sv_1, -1.6966276928077146 AS sv_2, -0.5082762490187378 AS sv_3 FROM DUAL UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 0.3204125863989899 AS sv_0, -0.10562148859165936 AS sv_1, 0.736170121759815 AS sv_2, 1.3362046591037193 AS sv_3 FROM DUAL UNION ALL SELECT 4 AS sv_idx, 0.1 AS dual_coeff, 0.1883228378676173 AS sv_0, 1.5565712024611758 AS sv_1, -0.7565916122656656 AS sv_2, -0.4905250260509675 AS sv_3 FROM DUAL UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 0.7152231158680631 AS sv_0, 0.1838248936695358 AS sv_1, 0.6265331259707688 AS sv_2, 1.3879167794348906 AS sv_3 FROM DUAL UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 0.17728290952482118 AS sv_0, 1.4845444591497252 AS sv_1, -1.3919734037449252 AS sv_2, -0.6111678339689317 AS sv_3 FROM DUAL UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, -0.061839864587314934 AS sv_0, 0.3798332127452269 AS sv_1, 0.8082514748524611 AS sv_2, 0.3041129230705171 AS sv_3 FROM DUAL UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, -0.21286186615867886 AS sv_0, -1.7554500325668299 AS sv_1, 0.40296624747161036 AS sv_2, -1.2888423126888915 AS sv_3 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, 0.0420296246498354 AS sv_0, 1.4766638453802332 AS sv_1, 1.0151430432640347 AS sv_2, 1.2767938173826323 AS sv_3 FROM DUAL UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -0.040689933380933935 AS sv_0, 0.33526848922414837 AS sv_1, 1.5259455850157382 AS sv_2, -1.0847803987113356 AS sv_3 FROM DUAL UNION ALL SELECT 11 AS sv_idx, -0.1 AS dual_coeff, 0.4876325883301258 AS sv_0, 0.730080318016083 AS sv_1, -1.2512568460058004 AS sv_2, -0.4779428282614248 AS sv_3 FROM DUAL UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 0.26229505103186884 AS sv_0, -1.156436226701534 AS sv_1, -1.469826707772466 AS sv_2, -1.0591196409203139 AS sv_3 FROM DUAL UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, -1.3354814047760004 AS sv_0, -0.97426350987175 AS sv_1, -0.3716476350789736 AS sv_2, 0.7811055410829204 AS sv_3 FROM DUAL UNION ALL SELECT 14 AS sv_idx, -0.1 AS dual_coeff, 1.4868985426195895 AS sv_0, -0.9329759232521928 AS sv_1, 0.00976547361007169 AS sv_2, -0.44029399823160686 AS sv_3 FROM DUAL UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 2.1576338377007738 AS sv_0, -1.5960266405607315 AS sv_1, 0.8932409458054494 AS sv_2, -1.4115808580223888 AS sv_3 FROM DUAL UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, -1.4402772034545301 AS sv_0, 0.5497779769126867 AS sv_1, 0.9408051741120003 AS sv_2, -0.21130417564629184 AS sv_3 FROM DUAL UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, 0.7344011353085581 AS sv_0, -1.0612795690667527 AS sv_1, -1.6427206707260704 AS sv_2, 1.2838987122205305 AS sv_3 FROM DUAL UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, -0.18528042847112391 AS sv_0, 0.4699482106570824 AS sv_1, -1.7832778948365522 AS sv_2, 0.2085342932233457 AS sv_3 FROM DUAL UNION ALL SELECT 19 AS sv_idx, 0.1 AS dual_coeff, -1.072806128611992 AS sv_0, -0.011274498105027463 AS sv_1, 0.15871010003956737 AS sv_2, 1.3663000362383564 AS sv_3 FROM DUAL UNION ALL SELECT 20 AS sv_idx, -0.1 AS dual_coeff, 0.6869825665216268 AS sv_0, -0.2738851339637735 AS sv_1, -1.169037010406918 AS sv_2, 0.7600639278823567 AS sv_3 FROM DUAL UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -1.1306530181901988 AS sv_0, 1.693815859594952 AS sv_1, -1.8098491932723488 AS sv_2, -0.8531150536577624 AS sv_3 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, 0.6762852164834068 AS sv_0, -0.29765284731305813 AS sv_1, 0.6166668855195521 AS sv_2, 1.1886392674933517 AS sv_3 FROM DUAL UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, 1.6772961249786977 AS sv_0, -0.6222112154145893 AS sv_1, -0.7859425854784102 AS sv_2, -0.772226260957586 AS sv_3 FROM DUAL UNION ALL SELECT 24 AS sv_idx, -0.1 AS dual_coeff, -1.468587753657723 AS sv_0, 0.7062658577112757 AS sv_1, -0.9158552800517019 AS sv_2, -1.2834679369913997 AS sv_3 FROM DUAL UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, -0.1349195295380887 AS sv_0, -1.2563536013919576 AS sv_1, 1.6047772375274936 AS sv_2, -1.4588678661050256 AS sv_3 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, -1.677429392157608 AS sv_0, -0.836641293061437 AS sv_1, 1.6009951386266825 AS sv_2, 0.7288109585406721 AS sv_3 FROM DUAL UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 1.1002502144389539 AS sv_0, 0.38118663941813774 AS sv_1, 1.4385506168190079 AS sv_2, 0.09357932935775139 AS sv_3 FROM DUAL UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 0.645167022605794 AS sv_0, 1.135268744400895 AS sv_1, 0.2686215691113733 AS sv_2, -1.2376422787275594 AS sv_3 FROM DUAL UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, -0.8839139388095921 AS sv_0, -0.21046333550084623 AS sv_1, 0.46521912268682564 AS sv_2, 0.7304618228853951 AS sv_3 FROM DUAL UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, -1.3038701382176308 AS sv_0, 1.5082277717144996 AS sv_1, 0.6083460261972142 AS sv_2, -0.0497929633220157 AS sv_3 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, -0.32982342717029806 AS sv_0, 1.6548655840938589 AS sv_1, 0.02553297616587394 AS sv_2, -0.7602522010542218 AS sv_3 FROM DUAL UNION ALL SELECT 32 AS sv_idx, -0.1 AS dual_coeff, 0.9728908499577125 AS sv_0, 0.5638179474733811 AS sv_1, -0.9647633676782364 AS sv_2, -0.35511879074667424 AS sv_3 FROM DUAL UNION ALL SELECT 33 AS sv_idx, -0.1 AS dual_coeff, -0.7108886199867888 AS sv_0, -0.9144078676440471 AS sv_1, 0.4058045686346802 AS sv_2, -0.7553415501998626 AS sv_3 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, 2.0227140301827005 AS sv_0, 0.09590994147659597 AS sv_1, -1.1988837577428815 AS sv_2, -1.6290287341379313 AS sv_3 FROM DUAL UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, -0.5937704322674143 AS sv_0, 0.0020387784582886763 AS sv_1, 0.4128585674748309 AS sv_2, 1.0111214968580546 AS sv_3 FROM DUAL UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, 1.0009695683627862 AS sv_0, 1.502114679360407 AS sv_1, -0.34917308534153296 AS sv_2, 0.4309174307293153 AS sv_3 FROM DUAL UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, -0.17541648253457842 AS sv_0, 1.157357979471062 AS sv_1, 1.5460776435053638 AS sv_2, 1.5614840452774303 AS sv_3 FROM DUAL UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.4848162101302757 AS sv_0, -1.2791886870678837 AS sv_1, 1.0699363276492089 AS sv_2, 1.204217021484958 AS sv_3 FROM DUAL UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 0.6164412059817497 AS sv_0, 0.5135313271464818 AS sv_1, 0.1901494810656995 AS sv_2, -1.1516753084142997 AS sv_3 FROM DUAL UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, 0.21542040586608754 AS sv_0, -1.521343805623405 AS sv_1, -0.40406152244102767 AS sv_2, -0.03926368695421065 AS sv_3 FROM DUAL UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, -1.093292998226496 AS sv_0, -1.6587268388267802 AS sv_1, 0.6182842943393686 AS sv_2, 1.1299849932080799 AS sv_3 FROM DUAL UNION ALL SELECT 42 AS sv_idx, -0.1 AS dual_coeff, 1.2264841754879965 AS sv_0, 0.07275199619597457 AS sv_1, -0.6438669259586074 AS sv_2, 0.17898018904797883 AS sv_3 FROM DUAL UNION ALL SELECT 43 AS sv_idx, -0.1 AS dual_coeff, 1.8270803081155385 AS sv_0, -1.3930501356795733 AS sv_1, 0.0975290193831754 AS sv_2, -0.8053390167713217 AS sv_3 FROM DUAL UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, 1.103975266447476 AS sv_0, -1.1711387753116582 AS sv_1, 0.13772455742680387 AS sv_2, 0.2713707991033707 AS sv_3 FROM DUAL UNION ALL SELECT 45 AS sv_idx, 0.1 AS dual_coeff, 0.06983222981743986 AS sv_0, 0.6639649839228917 AS sv_1, 0.7444642020285951 AS sv_2, -1.467244646493467 AS sv_3 FROM DUAL UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, -0.5031732278135369 AS sv_0, 0.679095067810605 AS sv_1, -0.9279147679691655 AS sv_2, -0.08886958441441088 AS sv_3 FROM DUAL UNION ALL SELECT 47 AS sv_idx, 0.1 AS dual_coeff, 1.3409510329682315 AS sv_0, -0.1336266063564132 AS sv_1, 1.116727246485082 AS sv_2, 0.8675103253586427 AS sv_3 FROM DUAL UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, -0.5990247050169021 AS sv_0, 1.5445552441125192 AS sv_1, 0.3594355719477703 AS sv_2, 0.7932996852316486 AS sv_3 FROM DUAL UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 1.3233525794634255 AS sv_0, -0.5091503888631336 AS sv_1, -1.072924105292282 AS sv_2, 1.1341411732514546 AS sv_3 FROM DUAL UNION ALL SELECT 50 AS sv_idx, -0.1 AS dual_coeff, -1.2241246362115 AS sv_0, 1.512795119938024 AS sv_1, -1.676492473707462 AS sv_2, -1.3541232354999226 AS sv_3 FROM DUAL UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 0.965886790803339 AS sv_0, -0.8011962199051502 AS sv_1, -1.0029751799208821 AS sv_2, 0.5359440051467831 AS sv_3 FROM DUAL UNION ALL SELECT 52 AS sv_idx, 0.1 AS dual_coeff, -0.6434216904322567 AS sv_0, 0.45815375284895515 AS sv_1, 0.045617052824859526 AS sv_2, -0.4284187571613101 AS sv_3 FROM DUAL UNION ALL SELECT 53 AS sv_idx, 0.1 AS dual_coeff, -0.008171275924262379 AS sv_0, 1.5559548187720833 AS sv_1, -0.3993737228327069 AS sv_2, -0.9940891152017115 AS sv_3 FROM DUAL UNION ALL SELECT 54 AS sv_idx, 0.1 AS dual_coeff, -0.662693251554997 AS sv_0, 0.4764585986108267 AS sv_1, 0.18145143547685438 AS sv_2, -1.1762142104318254 AS sv_3 FROM DUAL UNION ALL SELECT 55 AS sv_idx, -0.1 AS dual_coeff, -0.026701854468432252 AS sv_0, -0.028542073748357124 AS sv_1, -0.7442367085789723 AS sv_2, 0.1618427895801297 AS sv_3 FROM DUAL UNION ALL SELECT 56 AS sv_idx, -0.1 AS dual_coeff, -0.9956800042405372 AS sv_0, 1.1701559764456562 AS sv_1, -1.645167643293654 AS sv_2, 0.06585228049036436 AS sv_3 FROM DUAL UNION ALL SELECT 57 AS sv_idx, -0.1 AS dual_coeff, -1.3530021564771337 AS sv_0, 0.47937339709127175 AS sv_1, -1.0882400181353251 AS sv_2, 1.4264179411454836 AS sv_3 FROM DUAL UNION ALL SELECT 58 AS sv_idx, 0.1 AS dual_coeff, 0.3018648262452086 AS sv_0, -0.14159550970547072 AS sv_1, 0.1226888473162467 AS sv_2, 1.09668931957472 AS sv_3 FROM DUAL UNION ALL SELECT 59 AS sv_idx, -0.1 AS dual_coeff, 1.2560974505775302 AS sv_0, -1.5734959921280032 AS sv_1, 0.806979259164098 AS sv_2, 0.18593850041668145 AS sv_3 FROM DUAL UNION ALL SELECT 60 AS sv_idx, -0.1 AS dual_coeff, -0.08482514143628933 AS sv_0, -1.1068716787463535 AS sv_1, -1.4854147384149081 AS sv_2, -1.1904103710707925 AS sv_3 FROM DUAL UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, -1.6763217237163097 AS sv_0, -1.4763345216405568 AS sv_1, -0.11470085787237269 AS sv_2, 0.8503538460077694 AS sv_3 FROM DUAL UNION ALL SELECT 62 AS sv_idx, -0.1 AS dual_coeff, -1.6242802893869952 AS sv_0, -1.775508653244122 AS sv_1, -0.6568131609880984 AS sv_2, 1.1953045443253554 AS sv_3 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 0.1 AS dual_coeff, 0.9906526079000334 AS sv_0, -0.0012687796111743863 AS sv_1, 0.9053420656856961 AS sv_2, 1.4770111795319902 AS sv_3 FROM DUAL UNION ALL SELECT 64 AS sv_idx, -0.1 AS dual_coeff, -1.0669924080933233 AS sv_0, -0.7524462900242421 AS sv_1, -1.628861728957462 AS sv_2, 1.2775885380398857 AS sv_3 FROM DUAL UNION ALL SELECT 65 AS sv_idx, 0.1 AS dual_coeff, -1.3142788612334164 AS sv_0, 0.2280521766091662 AS sv_1, 0.3057005634138972 AS sv_2, 0.7101816208601218 AS sv_3 FROM DUAL UNION ALL SELECT 66 AS sv_idx, 0.1 AS dual_coeff, 0.20257570443348924 AS sv_0, 0.806208754598517 AS sv_1, 0.7597634162717884 AS sv_2, -1.2448937505253275 AS sv_3 FROM DUAL UNION ALL SELECT 67 AS sv_idx, 0.1 AS dual_coeff, -1.5704880612339405 AS sv_0, 0.3075457547535036 AS sv_1, -0.3438102857110602 AS sv_2, 1.2752554901076483 AS sv_3 FROM DUAL UNION ALL SELECT 68 AS sv_idx, 0.1 AS dual_coeff, 1.766853106149782 AS sv_0, 0.9687584624669229 AS sv_1, 1.0938510756852322 AS sv_2, 1.0444684650769975 AS sv_3 FROM DUAL UNION ALL SELECT 69 AS sv_idx, -0.1 AS dual_coeff, 0.983310970922164 AS sv_0, -1.515041962798084 AS sv_1, 1.3939188366118407 AS sv_2, -0.16244622652803076 AS sv_3 FROM DUAL UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, 1.3152118563668307 AS sv_0, 0.18747648187700344 AS sv_1, 1.5208796066082104 AS sv_2, -1.597675604172523 AS sv_3 FROM DUAL UNION ALL SELECT 71 AS sv_idx, -0.1 AS dual_coeff, 0.16718440174526195 AS sv_0, -0.4007044787483432 AS sv_1, -0.770256515182922 AS sv_2, -1.6235051493651826 AS sv_3 FROM DUAL UNION ALL SELECT 72 AS sv_idx, 0.1 AS dual_coeff, -0.4237411627373897 AS sv_0, -0.8006377086475062 AS sv_1, 0.8938663043435349 AS sv_2, 0.4705431389492595 AS sv_3 FROM DUAL UNION ALL SELECT 73 AS sv_idx, 0.1 AS dual_coeff, -1.6143668628687107 AS sv_0, -0.2665480603895422 AS sv_1, 1.3614338477237014 AS sv_2, 1.174351653344988 AS sv_3 FROM DUAL UNION ALL SELECT 74 AS sv_idx, -0.1 AS dual_coeff, -0.923065553671842 AS sv_0, -1.460057588221313 AS sv_1, -0.28039707608225506 AS sv_2, -1.3915237626329608 AS sv_3 FROM DUAL UNION ALL SELECT 75 AS sv_idx, 0.1 AS dual_coeff, 1.3562116028371412 AS sv_0, 0.8003265486926757 AS sv_1, 1.5692019046439172 AS sv_2, -0.07435688826148117 AS sv_3 FROM DUAL UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, -0.3379611642294123 AS sv_0, -0.5730815375077578 AS sv_1, 0.28324125434683584 AS sv_2, 1.5770952885864475 AS sv_3 FROM DUAL UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, -0.3815315849937636 AS sv_0, 0.21390512132680975 AS sv_1, 0.7558550941684732 AS sv_2, -1.567869367101613 AS sv_3 FROM DUAL UNION ALL SELECT 78 AS sv_idx, 0.1 AS dual_coeff, -0.37987034364209094 AS sv_0, 0.0921798220403697 AS sv_1, 1.4938727410627377 AS sv_2, -1.0832566670605472 AS sv_3 FROM DUAL UNION ALL SELECT 79 AS sv_idx, -0.1 AS dual_coeff, -0.9895847396176948 AS sv_0, -0.18350270449479794 AS sv_1, -1.4778113595148206 AS sv_2, 0.21429408872787353 AS sv_3 FROM DUAL) "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS BINARY_DOUBLE)) + 393.3240252220968 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * power(0.25 * (kernel_input.scaler_output_2 * "SV_data".sv_0 + kernel_input.scaler_output_3 * "SV_data".sv_1 + kernel_input.scaler_output_4 * "SV_data".sv_2 + kernel_input.scaler_output_5 * "SV_data".sv_3) + 0.0, 3) AS dot_prod1 
FROM kernel_input, "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp