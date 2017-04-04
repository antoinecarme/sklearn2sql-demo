-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `ADS_imp_1_OUT` AS 
(SELECT `ADS`.`KEY` AS `KEY`, CASE WHEN (`ADS`.`Feature_0` IS NULL) THEN 0.492136326179 ELSE `ADS`.`Feature_0` END AS impute_2, CASE WHEN (`ADS`.`Feature_1` IS NULL) THEN 0.495468726297 ELSE `ADS`.`Feature_1` END AS impute_3, CASE WHEN (`ADS`.`Feature_2` IS NULL) THEN 0.515381771522 ELSE `ADS`.`Feature_2` END AS impute_4, CASE WHEN (`ADS`.`Feature_3` IS NULL) THEN 0.498080638906 ELSE `ADS`.`Feature_3` END AS impute_5, CASE WHEN (`ADS`.`Feature_4` IS NULL) THEN 0.508379104166 ELSE `ADS`.`Feature_4` END AS impute_6, CASE WHEN (`ADS`.`Feature_5` IS NULL) THEN 0.497674994682 ELSE `ADS`.`Feature_5` END AS impute_7, CASE WHEN (`ADS`.`Feature_6` IS NULL) THEN 0.485177902083 ELSE `ADS`.`Feature_6` END AS impute_8, CASE WHEN (`ADS`.`Feature_7` IS NULL) THEN 0.486501025813 ELSE `ADS`.`Feature_7` END AS impute_9, CASE WHEN (`ADS`.`Feature_8` IS NULL) THEN 0.524610391639 ELSE `ADS`.`Feature_8` END AS impute_10, CASE WHEN (`ADS`.`Feature_9` IS NULL) THEN 0.561765200038 ELSE `ADS`.`Feature_9` END AS impute_11 
FROM `INPUT_DATA` AS `ADS`), 
`CenteredDataForPCA` AS 
(SELECT `ADS_imp_1_OUT`.`KEY` AS `KEY`, `ADS_imp_1_OUT`.impute_2 - 0.492136326179 AS impute_2, `ADS_imp_1_OUT`.impute_3 - 0.495468726297 AS impute_3, `ADS_imp_1_OUT`.impute_4 - 0.515381771522 AS impute_4, `ADS_imp_1_OUT`.impute_5 - 0.498080638906 AS impute_5, `ADS_imp_1_OUT`.impute_6 - 0.508379104166 AS impute_6, `ADS_imp_1_OUT`.impute_7 - 0.497674994682 AS impute_7, `ADS_imp_1_OUT`.impute_8 - 0.485177902083 AS impute_8, `ADS_imp_1_OUT`.impute_9 - 0.486501025813 AS impute_9, `ADS_imp_1_OUT`.impute_10 - 0.524610391639 AS impute_10, `ADS_imp_1_OUT`.impute_11 - 0.561765200038 AS impute_11 
FROM `ADS_imp_1_OUT`), 
`ADS_ano_2_OUT` AS 
(SELECT `CenteredDataForPCA`.`KEY` AS `KEY`, `CenteredDataForPCA`.impute_2 * -0.0741652897639 + `CenteredDataForPCA`.impute_3 * -0.0883977430476 + `CenteredDataForPCA`.impute_4 * -0.00505143894404 + `CenteredDataForPCA`.impute_5 * 0.457760635858 + `CenteredDataForPCA`.impute_6 * -0.0441856074726 + `CenteredDataForPCA`.impute_7 * 0.552646150197 + `CenteredDataForPCA`.impute_8 * -0.152683567461 + `CenteredDataForPCA`.impute_9 * -0.057083606965 + `CenteredDataForPCA`.impute_10 * -0.594757095093 + `CenteredDataForPCA`.impute_11 * -0.299062008097 AS anoova_2, `CenteredDataForPCA`.impute_2 * 0.539766178395 + `CenteredDataForPCA`.impute_3 * 0.386192993238 + `CenteredDataForPCA`.impute_4 * 0.402946719042 + `CenteredDataForPCA`.impute_5 * 0.162839672123 + `CenteredDataForPCA`.impute_6 * 0.0804671515325 + `CenteredDataForPCA`.impute_7 * -0.0797691563703 + `CenteredDataForPCA`.impute_8 * -0.481100594581 + `CenteredDataForPCA`.impute_9 * 0.0893843880469 + `CenteredDataForPCA`.impute_10 * 0.17956907112 + `CenteredDataForPCA`.impute_11 * -0.293418036956 AS anoova_3, `CenteredDataForPCA`.impute_2 * 0.39146698856 + `CenteredDataForPCA`.impute_3 * 0.137859888907 + `CenteredDataForPCA`.impute_4 * 0.2770468517 + `CenteredDataForPCA`.impute_5 * -0.318521099899 + `CenteredDataForPCA`.impute_6 * -0.0173683983175 + `CenteredDataForPCA`.impute_7 * 0.617960157626 + `CenteredDataForPCA`.impute_8 * 0.488400285537 + `CenteredDataForPCA`.impute_9 * -0.0199314994969 + `CenteredDataForPCA`.impute_10 * 0.0550895695492 + `CenteredDataForPCA`.impute_11 * 0.15935563012 AS anoova_4, `CenteredDataForPCA`.impute_2 * 0.0870288974341 + `CenteredDataForPCA`.impute_3 * 0.255993433771 + `CenteredDataForPCA`.impute_4 * -0.222148383697 + `CenteredDataForPCA`.impute_5 * -0.0787940923553 + `CenteredDataForPCA`.impute_6 * 0.155574742152 + `CenteredDataForPCA`.impute_7 * -0.0594030300338 + `CenteredDataForPCA`.impute_8 * 0.0190438674757 + `CenteredDataForPCA`.impute_9 * -0.909795245203 + `CenteredDataForPCA`.impute_10 * -0.0313737196389 + `CenteredDataForPCA`.impute_11 * -0.120533529648 AS anoova_5, `CenteredDataForPCA`.impute_2 * -0.422046293939 + `CenteredDataForPCA`.impute_3 * 0.748132883307 + `CenteredDataForPCA`.impute_4 * -0.00150275460835 + `CenteredDataForPCA`.impute_5 * -0.00533026576964 + `CenteredDataForPCA`.impute_6 * -0.499902490599 + `CenteredDataForPCA`.impute_7 * 0.0470461911321 + `CenteredDataForPCA`.impute_8 * 0.0531186667244 + `CenteredDataForPCA`.impute_9 * 0.08453346638 + `CenteredDataForPCA`.impute_10 * 0.00034349095177 + `CenteredDataForPCA`.impute_11 * -0.00774485612619 AS anoova_6, `CenteredDataForPCA`.impute_2 * 0.193202947666 + `CenteredDataForPCA`.impute_3 * 0.103476646762 + `CenteredDataForPCA`.impute_4 * -0.678294508856 + `CenteredDataForPCA`.impute_5 * -0.174959349168 + `CenteredDataForPCA`.impute_6 * 0.079700774361 + `CenteredDataForPCA`.impute_7 * 0.115480306137 + `CenteredDataForPCA`.impute_8 * 0.120309020181 + `CenteredDataForPCA`.impute_9 * 0.305513837037 + `CenteredDataForPCA`.impute_10 * 0.152940432276 + `CenteredDataForPCA`.impute_11 * -0.557116984717 AS anoova_7, `CenteredDataForPCA`.impute_2 * -0.318698180963 + `CenteredDataForPCA`.impute_3 * 0.114705764176 + `CenteredDataForPCA`.impute_4 * -0.135073434897 + `CenteredDataForPCA`.impute_5 * -0.222316357046 + `CenteredDataForPCA`.impute_6 * 0.433605654867 + `CenteredDataForPCA`.impute_7 * 0.461017166494 + `CenteredDataForPCA`.impute_8 * -0.529244198234 + `CenteredDataForPCA`.impute_9 * 0.0419048503894 + `CenteredDataForPCA`.impute_10 * 0.241179632836 + `CenteredDataForPCA`.impute_11 * 0.277544441144 AS anoova_8, `CenteredDataForPCA`.impute_2 * 0.147988261638 + `CenteredDataForPCA`.impute_3 * -0.330313536361 + `CenteredDataForPCA`.impute_4 * -0.172596571288 + `CenteredDataForPCA`.impute_5 * 0.122330928012 + `CenteredDataForPCA`.impute_6 * -0.661007525525 + `CenteredDataForPCA`.impute_7 * 0.24608964822 + `CenteredDataForPCA`.impute_8 * -0.266013440949 + `CenteredDataForPCA`.impute_9 * -0.207194335772 + `CenteredDataForPCA`.impute_10 * 0.455892874653 + `CenteredDataForPCA`.impute_11 * 0.072221806147 AS anoova_9, `CenteredDataForPCA`.impute_2 * -0.431203398746 + `CenteredDataForPCA`.impute_3 * -0.237973397883 + `CenteredDataForPCA`.impute_4 * 0.450971562318 + `CenteredDataForPCA`.impute_5 * -0.262014757178 + `CenteredDataForPCA`.impute_6 * 0.0118615082351 + `CenteredDataForPCA`.impute_7 * 0.0752651958697 + `CenteredDataForPCA`.impute_8 * 0.0606166519869 + `CenteredDataForPCA`.impute_9 * -0.12346686474 + `CenteredDataForPCA`.impute_10 * 0.26350930172 + `CenteredDataForPCA`.impute_11 * -0.625495056291 AS anoova_10, `CenteredDataForPCA`.impute_2 * -0.132195574426 + `CenteredDataForPCA`.impute_3 * 0.0959000190062 + `CenteredDataForPCA`.impute_4 * -0.00284673336096 + `CenteredDataForPCA`.impute_5 * 0.701850343192 + `CenteredDataForPCA`.impute_6 * 0.292792223785 + `CenteredDataForPCA`.impute_7 * 0.0922214741631 + `CenteredDataForPCA`.impute_8 * 0.36674191825 + `CenteredDataForPCA`.impute_9 * -0.014596321901 + `CenteredDataForPCA`.impute_10 * 0.501164445285 + `CenteredDataForPCA`.impute_11 * 0.0247978484581 AS anoova_11 
FROM `CenteredDataForPCA`), 
`SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.0975958267425 AS sv_0, -0.276677011397 AS sv_1, -0.571042134751 AS sv_2, -0.0691358090306 AS sv_3, -0.0508941075896 AS sv_4, -0.147948478606 AS sv_5, 0.115425215125 AS sv_6, -0.103425533471 AS sv_7, -0.0908837756477 AS sv_8, 0.229747204035 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.265913990063 AS sv_0, 0.109513387037 AS sv_1, 0.272609506234 AS sv_2, -0.256062851965 AS sv_3, 0.235801100907 AS sv_4, -0.107194066006 AS sv_5, 0.697219245695 AS sv_6, 0.391291192565 AS sv_7, -0.0182768729146 AS sv_8, -0.167413461788 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.469655512839 AS sv_0, 0.0996596977116 AS sv_1, 0.0360103833461 AS sv_2, 0.1377050444 AS sv_3, 0.483237529629 AS sv_4, -0.164683654171 AS sv_5, -0.262433173535 AS sv_6, 0.187205344589 AS sv_7, 0.432305147489 AS sv_8, 0.199629014752 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.665110180734 AS sv_0, 0.345834435646 AS sv_1, 0.565635869076 AS sv_2, -0.276026635152 AS sv_3, 0.100947200057 AS sv_4, 0.315919581055 AS sv_5, -0.454019919888 AS sv_6, -0.233188436433 AS sv_7, 0.0888981792317 AS sv_8, -0.0948040522077 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 1.0 AS dual_coeff, 0.495423838985 AS sv_0, -0.101153838257 AS sv_1, -0.10199337404 AS sv_2, 0.0719643657998 AS sv_3, -0.395169460388 AS sv_4, 0.552644968993 AS sv_5, -0.00210331046967 AS sv_6, -0.139501755348 AS sv_7, -0.105411166153 AS sv_8, -0.229598680222 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.230569706163 AS sv_0, -0.410221441866 AS sv_1, 0.398282023316 AS sv_2, 0.261224516356 AS sv_3, -0.104417390225 AS sv_4, 0.00430380238392 AS sv_5, -0.270885236271 AS sv_6, 0.273851251524 AS sv_7, -0.241805955343 AS sv_8, 0.00932060968425 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, -0.668767187577 AS sv_0, 0.0517485145225 AS sv_1, -0.13250892887 AS sv_2, -0.390738570605 AS sv_3, 0.25638430481 AS sv_4, -0.116327274213 AS sv_5, -0.10764986818 AS sv_6, 0.0529085946353 AS sv_7, 0.524171686949 AS sv_8, -0.21631052177 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, -0.234602200589 AS sv_0, 0.353013616607 AS sv_1, -0.111487352098 AS sv_2, -0.243242201814 AS sv_3, 0.0483884171475 AS sv_4, 0.336872470559 AS sv_5, -0.0831373981029 AS sv_6, -0.0383725179188 AS sv_7, -0.37726278367 AS sv_8, 0.301957169414 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 1.0 AS dual_coeff, -0.329839368063 AS sv_0, 0.804060529449 AS sv_1, -0.281544210709 AS sv_2, 0.222418128425 AS sv_3, 0.162283416469 AS sv_4, -0.0330829460674 AS sv_5, -0.00949447952194 AS sv_6, 0.0449592277996 AS sv_7, -0.0769012428645 AS sv_8, 0.269343701344 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 1.0 AS dual_coeff, 0.54546320004 AS sv_0, -0.0145921495307 AS sv_1, -0.252814483788 AS sv_2, -0.135811400168 AS sv_3, 0.0403078142754 AS sv_4, 0.480282890468 AS sv_5, 0.465096573584 AS sv_6, -0.0411144779037 AS sv_7, -0.177595796831 AS sv_8, -0.137337271781 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.661773683728 AS sv_0, 0.0734842781569 AS sv_1, -0.20179186846 AS sv_2, -0.00497197001202 AS sv_3, 0.382222413049 AS sv_4, -0.00137178902284 AS sv_5, 0.174291203195 AS sv_6, 0.18277558217 AS sv_7, 0.131411995982 AS sv_8, 0.0442130487658 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.328056382714 AS sv_0, 0.0883645294752 AS sv_1, -0.0246154074278 AS sv_2, -0.021801865977 AS sv_3, 0.625945413594 AS sv_4, -0.31232341548 AS sv_5, -0.0548751869107 AS sv_6, 0.0843480387281 AS sv_7, 0.404203726523 AS sv_8, -0.00185110861173 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -0.0773667341408 AS sv_0, 0.228451982769 AS sv_1, -0.432331967545 AS sv_2, -0.092063640799 AS sv_3, -0.0574749861839 AS sv_4, 0.0630347303155 AS sv_5, -0.0919442645653 AS sv_6, 0.00566395824973 AS sv_7, -0.213209551809 AS sv_8, 0.340355620829 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, -0.518330404022 AS sv_0, 0.0627971117458 AS sv_1, 0.577329948991 AS sv_2, 0.251467368319 AS sv_3, -0.392363287295 AS sv_4, 0.0257873619496 AS sv_5, 0.310550909741 AS sv_6, 0.0903711360456 AS sv_7, -0.104049710744 AS sv_8, -0.0144761395418 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.17500053169 AS sv_0, 0.109514658637 AS sv_1, 0.603600129239 AS sv_2, -0.573351436244 AS sv_3, -0.257390980901 AS sv_4, 0.190567230724 AS sv_5, -0.226958337386 AS sv_6, 0.0626658211297 AS sv_7, 0.310708251041 AS sv_8, 0.0769039151716 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, -0.0494590315807 AS sv_0, -0.241367351871 AS sv_1, -0.18702813039 AS sv_2, -0.620450767141 AS sv_3, 0.00630139217116 AS sv_4, -0.0481301580418 AS sv_5, -0.536781855997 AS sv_6, 0.177038326408 AS sv_7, -0.0205003981945 AS sv_8, -0.0135270051844 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, -0.464416221274 AS sv_0, -0.466781065598 AS sv_1, 0.362367776046 AS sv_2, -0.381562692053 AS sv_3, 0.297984628033 AS sv_4, 0.180257513504 AS sv_5, -0.0443980415428 AS sv_6, -0.0732305452416 AS sv_7, -0.0125521785366 AS sv_8, -0.088021892633 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, -0.202357643433 AS sv_0, -0.116378203088 AS sv_1, -0.427322161386 AS sv_2, 0.252456927004 AS sv_3, 0.28183556862 AS sv_4, -0.0650680583191 AS sv_5, 0.251003180114 AS sv_6, 0.409062393614 AS sv_7, -0.320526805222 AS sv_8, 0.0822824349778 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, -0.353773086042 AS sv_0, 0.224957406157 AS sv_1, 0.741400370593 AS sv_2, -0.127580208971 AS sv_3, 0.0968289023529 AS sv_4, -0.206385417785 AS sv_5, 0.0475817140554 AS sv_6, -0.39026568925 AS sv_7, -0.136467931592 AS sv_8, 0.286614827752 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.0293721702733 AS sv_0, 0.294239524336 AS sv_1, -0.359050997169 AS sv_2, -0.158317850046 AS sv_3, 0.29533392566 AS sv_4, -0.475307961747 AS sv_5, -0.227235212427 AS sv_6, -0.291675567463 AS sv_7, -0.00216153384989 AS sv_8, -0.365202050569 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, 0.358949982042 AS sv_0, 0.879004701753 AS sv_1, 0.000831902763577 AS sv_2, -0.315618463897 AS sv_3, 0.0488637198454 AS sv_4, -0.0338183411828 AS sv_5, -0.162127777838 AS sv_6, -0.276681218619 AS sv_7, -0.136414507815 AS sv_8, 0.0287591496516 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.36114932556 AS sv_0, 0.322180273885 AS sv_1, 0.54340074755 AS sv_2, -0.051731311961 AS sv_3, -0.413217136475 AS sv_4, -0.0199383258552 AS sv_5, -0.173495748852 AS sv_6, -0.0105501483523 AS sv_7, 0.281474589108 AS sv_8, -0.0361726271743 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -0.60775359432 AS sv_0, -0.389636242521 AS sv_1, 0.024095818456 AS sv_2, 0.105698910832 AS sv_3, 0.331961190189 AS sv_4, 0.137699625857 AS sv_5, -0.0401111480441 AS sv_6, 0.0689463609694 AS sv_7, -0.057805528672 AS sv_8, -0.154804887779 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, 0.38447861232 AS sv_0, 0.643511631399 AS sv_1, -0.187826257064 AS sv_2, 0.160032977997 AS sv_3, -0.160684675591 AS sv_4, 0.169595588944 AS sv_5, -0.246803812211 AS sv_6, 0.128277906348 AS sv_7, -0.0701083030161 AS sv_8, -0.0657399785689 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -0.500688821785 AS sv_0, 0.571033417099 AS sv_1, -0.15182681977 AS sv_2, 0.388542983656 AS sv_3, -0.0459902914769 AS sv_4, 0.160597478403 AS sv_5, -0.0967382531357 AS sv_6, -0.0424445017464 AS sv_7, 0.250943018888 AS sv_8, -0.196175081849 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, 0.211492346864 AS sv_0, -0.15452747962 AS sv_1, 0.181678616856 AS sv_2, 0.0929038148285 AS sv_3, -0.373673333989 AS sv_4, -0.335112214437 AS sv_5, 0.487604113569 AS sv_6, 0.188224110267 AS sv_7, 0.197973306759 AS sv_8, 0.024548827711 AS sv_9 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, -0.0593992098274 AS sv_0, -0.460039621489 AS sv_1, -0.0138112319749 AS sv_2, 0.0140021086683 AS sv_3, -0.0432369351163 AS sv_4, 0.110541951748 AS sv_5, 0.0347464861712 AS sv_6, 0.236627163505 AS sv_7, 0.509063793959 AS sv_8, 0.0899703856378 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, -0.277576601622 AS sv_0, 0.383553003945 AS sv_1, 0.523204331073 AS sv_2, 0.457020665464 AS sv_3, 0.106122355038 AS sv_4, -0.124633998582 AS sv_5, 0.318386917999 AS sv_6, -0.00956155231358 AS sv_7, 0.503067508503 AS sv_8, -0.0135684647507 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.238557817003 AS sv_0, -0.632619496798 AS sv_1, 0.439499371659 AS sv_2, -0.485524927194 AS sv_3, -0.0427901991886 AS sv_4, -0.476153237567 AS sv_5, -0.121050904084 AS sv_6, 0.0705594016578 AS sv_7, 0.0608035896315 AS sv_8, -0.148659214193 AS sv_9 UNION ALL SELECT 29 AS sv_idx, -1.0 AS dual_coeff, 0.0174950874938 AS sv_0, -0.404063755814 AS sv_1, -0.445322824623 AS sv_2, 0.144659605263 AS sv_3, 0.133235090412 AS sv_4, -0.480436669944 AS sv_5, -0.18397752352 AS sv_6, 0.15354323091 AS sv_7, -0.0948521902512 AS sv_8, -0.0203245298383 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.29729130725 AS sv_0, -0.211845878342 AS sv_1, 0.2648311198 AS sv_2, -0.295090980184 AS sv_3, -0.0111064028183 AS sv_4, 0.265739019155 AS sv_5, -0.0521712731569 AS sv_6, -0.0192012964069 AS sv_7, -0.163137042937 AS sv_8, 0.136440870633 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.676517191145 AS sv_0, 0.210578048709 AS sv_1, -0.40156801686 AS sv_2, -0.229526217231 AS sv_3, 0.259080036406 AS sv_4, 0.436894910655 AS sv_5, 0.391380164112 AS sv_6, -0.425333317538 AS sv_7, -0.0859430800614 AS sv_8, 0.0929391985537 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, 0.0147303146026 AS sv_0, -0.306764851289 AS sv_1, 0.332454306619 AS sv_2, -0.109988127484 AS sv_3, -0.0262544027233 AS sv_4, -0.389054725987 AS sv_5, -0.0429543401565 AS sv_6, 0.0748358484536 AS sv_7, 0.12124504101 AS sv_8, 0.0914465080298 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.269813418563 AS sv_0, -0.0865746022631 AS sv_1, -0.149363110277 AS sv_2, -0.38937098181 AS sv_3, -0.0578099459633 AS sv_4, 0.157108370689 AS sv_5, -0.435817079545 AS sv_6, -0.255996287085 AS sv_7, 0.0108843707019 AS sv_8, -0.19985953271 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, -0.542572146082 AS sv_0, 0.638613586662 AS sv_1, -0.0548507589189 AS sv_2, 0.10114561723 AS sv_3, -0.267620626486 AS sv_4, -0.123947018736 AS sv_5, -0.0718651669547 AS sv_6, 0.24880682163 AS sv_7, 0.267927913373 AS sv_8, -0.344794486034 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, 0.187925578993 AS sv_0, -0.0675298622901 AS sv_1, -0.0763998725069 AS sv_2, 0.258316600618 AS sv_3, -0.226585493914 AS sv_4, -0.207238627984 AS sv_5, 0.017328443233 AS sv_6, -0.363325421242 AS sv_7, 0.500908623391 AS sv_8, -0.0648821593476 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 0.754018999094 AS sv_0, 0.145303234506 AS sv_1, 0.0222284160691 AS sv_2, 0.476681198754 AS sv_3, -0.12698083791 AS sv_4, -0.113003319124 AS sv_5, 0.200703932047 AS sv_6, -0.126927554255 AS sv_7, 0.113749019472 AS sv_8, -0.168039651663 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.0136033852937 AS sv_0, 0.0199814032408 AS sv_1, -0.13322250931 AS sv_2, 0.413692739906 AS sv_3, -0.0820351798691 AS sv_4, -0.0456164208314 AS sv_5, 0.175223316852 AS sv_6, 0.486828467562 AS sv_7, -0.429806783182 AS sv_8, -0.164924210643 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -0.348734019339 AS sv_0, 0.178458735775 AS sv_1, 0.903829063427 AS sv_2, -0.243784777134 AS sv_3, 0.028880687061 AS sv_4, -0.097149185117 AS sv_5, 0.0619673323487 AS sv_6, 0.0481806913375 AS sv_7, -0.0747570726634 AS sv_8, 0.277476819209 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, -0.303312055795 AS sv_0, -0.556945672476 AS sv_1, 0.00561533328068 AS sv_2, 0.431473998672 AS sv_3, 0.02756668879 AS sv_4, -0.0734874964297 AS sv_5, -0.226502002506 AS sv_6, -0.331789493736 AS sv_7, -0.218935201615 AS sv_8, -0.210459117646 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, -0.320918114348 AS sv_0, 0.609597525457 AS sv_1, -0.139327153926 AS sv_2, -0.0315663018282 AS sv_3, -0.202252633286 AS sv_4, -0.0122488240607 AS sv_5, -0.00056477442585 AS sv_6, -0.211424865249 AS sv_7, 0.0153441974168 AS sv_8, 0.0864987763082 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 1.0 AS dual_coeff, 0.25691797327 AS sv_0, 0.0378552760459 AS sv_1, 0.25190036596 AS sv_2, -0.389245350954 AS sv_3, 0.372829430567 AS sv_4, -0.338917541757 AS sv_5, 0.3159111612 AS sv_6, -0.551993852071 AS sv_7, -0.231757537944 AS sv_8, -0.0625167113617 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 0.502321061759 AS sv_0, 0.353372960165 AS sv_1, 0.0935331697763 AS sv_2, -0.283503797212 AS sv_3, 0.26775217064 AS sv_4, 0.335093507596 AS sv_5, -0.0430733334974 AS sv_6, 0.295047313688 AS sv_7, 0.249917008817 AS sv_8, -0.0761597608393 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.151617579992 AS sv_0, -0.11192652264 AS sv_1, -0.331567251127 AS sv_2, 0.238616670928 AS sv_3, -0.211536799192 AS sv_4, 0.158034799994 AS sv_5, -0.257047096683 AS sv_6, 0.119412565799 AS sv_7, -0.181432338361 AS sv_8, -0.152952831126 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.428217357872 AS sv_0, 0.444231260683 AS sv_1, -0.0139607712686 AS sv_2, 0.627249107481 AS sv_3, -0.207337455076 AS sv_4, 0.0830257401947 AS sv_5, -0.0658622625137 AS sv_6, -0.44333425844 AS sv_7, -0.108212716079 AS sv_8, -0.0629511880524 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, -0.339065244273 AS sv_0, 0.106903031435 AS sv_1, 0.506904597236 AS sv_2, 0.214496178163 AS sv_3, -0.0515373000652 AS sv_4, 0.244934148365 AS sv_5, -0.108726963564 AS sv_6, 0.201805044104 AS sv_7, -0.127629908347 AS sv_8, 0.109370276264 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 1.0 AS dual_coeff, -0.268288739218 AS sv_0, 0.0877002595864 AS sv_1, 0.37207746014 AS sv_2, -0.0138488685983 AS sv_3, 0.0512817963637 AS sv_4, -0.0123757633585 AS sv_5, -0.311497750086 AS sv_6, 0.257123272187 AS sv_7, -0.0784462574612 AS sv_8, 0.320159075947 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, -0.0318599774205 AS sv_0, 0.10657980759 AS sv_1, -0.338921614678 AS sv_2, 0.390285812343 AS sv_3, -0.347649489137 AS sv_4, 0.200248602052 AS sv_5, -0.371781202854 AS sv_6, 0.0882084838529 AS sv_7, -0.0712608326269 AS sv_8, 0.450572032408 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, -0.192685559799 AS sv_0, -0.5696444046 AS sv_1, -0.0665828003368 AS sv_2, -0.162866553938 AS sv_3, -0.092360035202 AS sv_4, -0.176244009043 AS sv_5, 0.290706325291 AS sv_6, 0.0677262944075 AS sv_7, 0.187242059326 AS sv_8, -0.169490635584 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 1.0 AS dual_coeff, -0.132598193144 AS sv_0, 0.286832871539 AS sv_1, 0.525280069257 AS sv_2, -0.118863048896 AS sv_3, 0.0143602377399 AS sv_4, -0.245259426782 AS sv_5, -0.0589512668095 AS sv_6, -0.10989663181 AS sv_7, -0.167116196941 AS sv_8, -0.0775272863016 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 1.0 AS dual_coeff, -0.455585065975 AS sv_0, -0.0052453640977 AS sv_1, 0.238406336642 AS sv_2, 0.564425037216 AS sv_3, 0.15276657139 AS sv_4, 0.0981784367576 AS sv_5, 0.00489789518132 AS sv_6, -0.176686511471 AS sv_7, 0.103506258778 AS sv_8, 0.303393723616 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, -0.478262121178 AS sv_0, 0.510691090199 AS sv_1, -0.0340266345552 AS sv_2, 0.238183145946 AS sv_3, -0.0253538491079 AS sv_4, 0.386085070307 AS sv_5, -0.0729166463022 AS sv_6, -0.370237622446 AS sv_7, 0.0951854948441 AS sv_8, -0.329959668893 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.210725774118 AS sv_0, 0.269818986106 AS sv_1, -0.331338826447 AS sv_2, -0.174867998516 AS sv_3, 0.0224898293783 AS sv_4, -0.364950576169 AS sv_5, 0.33201358723 AS sv_6, -0.529610511416 AS sv_7, 0.175886852359 AS sv_8, 0.0372168314906 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, -0.163032356477 AS sv_0, -0.337755521188 AS sv_1, -0.267451786471 AS sv_2, -0.0900080403979 AS sv_3, -0.099102366574 AS sv_4, 0.064014993755 AS sv_5, 0.106625552967 AS sv_6, -0.246714784999 AS sv_7, 0.274664463245 AS sv_8, -0.168977002126 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 0.405021874829 AS sv_0, -0.178860384037 AS sv_1, -0.295524545777 AS sv_2, -0.157793549647 AS sv_3, -0.0816358844086 AS sv_4, -0.142551438785 AS sv_5, 0.380488839967 AS sv_6, 0.514578565537 AS sv_7, 0.418412685652 AS sv_8, 0.0228148484211 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, 0.731555209238 AS sv_0, 0.224505604455 AS sv_1, 0.213469261701 AS sv_2, 0.289460010421 AS sv_3, 0.37171243257 AS sv_4, 0.354110134131 AS sv_5, -0.104701325844 AS sv_6, -0.0981520460175 AS sv_7, -0.112728918893 AS sv_8, 0.052083003302 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, -0.135196065671 AS sv_0, -0.548991320379 AS sv_1, -0.202636064508 AS sv_2, 0.289150507335 AS sv_3, 0.518683748788 AS sv_4, -0.408089194848 AS sv_5, -0.360491791649 AS sv_6, -0.144389068465 AS sv_7, -0.177531997038 AS sv_8, 0.0937048736036 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 0.148868491197 AS sv_0, -0.597513280146 AS sv_1, 0.30742296281 AS sv_2, 0.0996036798582 AS sv_3, -0.00769269750804 AS sv_4, 0.23458868647 AS sv_5, 0.0793856487805 AS sv_6, -0.293378795943 AS sv_7, -0.0819695201121 AS sv_8, 0.0174959654347 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -1.0 AS dual_coeff, 0.141350004859 AS sv_0, -0.289279013171 AS sv_1, -0.289371474867 AS sv_2, 0.112474069072 AS sv_3, -0.251548111038 AS sv_4, 0.216038501051 AS sv_5, -0.0888544657857 AS sv_6, 0.0623806297871 AS sv_7, 0.0899349866412 AS sv_8, -0.0168125537374 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 1.0 AS dual_coeff, 0.194185845012 AS sv_0, -0.284847744634 AS sv_1, -0.0888807883521 AS sv_2, -0.262962768446 AS sv_3, 0.215162637046 AS sv_4, 0.424934785192 AS sv_5, 0.0411187653412 AS sv_6, -0.0448776798988 AS sv_7, -0.035631384855 AS sv_8, 0.500198735336 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, 0.124256960515 AS sv_0, -0.539436400059 AS sv_1, -0.313091074007 AS sv_2, 0.0444867964205 AS sv_3, -0.0973695861576 AS sv_4, -0.415075759495 AS sv_5, -0.4242459914 AS sv_6, -0.305461337336 AS sv_7, -0.06808392718 AS sv_8, 0.218912905704 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, -0.117161423509 AS sv_0, 0.221306181972 AS sv_1, -0.374935502138 AS sv_2, 0.426955316194 AS sv_3, 0.087687518917 AS sv_4, -0.455042082146 AS sv_5, 0.580350549809 AS sv_6, -0.119733383059 AS sv_7, 0.169497267006 AS sv_8, 0.268207430807 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, 0.20641903333 AS sv_0, 0.134872380251 AS sv_1, -0.0643974083121 AS sv_2, -0.38848477128 AS sv_3, -0.583521731471 AS sv_4, -0.101945967755 AS sv_5, 0.384334040654 AS sv_6, -0.0546861353192 AS sv_7, -0.182832362132 AS sv_8, 0.036060138493 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, -0.413026826014 AS sv_0, -0.542375893705 AS sv_1, -0.147042926955 AS sv_2, -0.05322077438 AS sv_3, -0.0648037496015 AS sv_4, 0.351693956779 AS sv_5, -0.312551337014 AS sv_6, -0.139696292213 AS sv_7, 0.245670053259 AS sv_8, -0.268060665027 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, -0.351106024133 AS sv_0, 0.00139317786352 AS sv_1, -0.179736372926 AS sv_2, -0.218008766159 AS sv_3, -0.427485800631 AS sv_4, 0.543421576418 AS sv_5, -0.131176005298 AS sv_6, 0.184656579178 AS sv_7, 0.0163026552907 AS sv_8, -0.0684026800887 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, -0.26929880407 AS sv_0, 0.0807846606677 AS sv_1, -0.352476690208 AS sv_2, 0.375481146713 AS sv_3, 0.174376226394 AS sv_4, 0.563922309257 AS sv_5, 0.53341453374 AS sv_6, 0.024114681167 AS sv_7, 0.251208053328 AS sv_8, -0.0624213188938 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.0816091289362 AS sv_0, 0.572328635919 AS sv_1, -0.202700294814 AS sv_2, 0.356691498888 AS sv_3, 0.0552100794127 AS sv_4, 0.210308416374 AS sv_5, -0.250778590455 AS sv_6, -0.168214349146 AS sv_7, 0.11819611208 AS sv_8, 0.298426994459 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, -0.164156265484 AS sv_0, -0.145093911741 AS sv_1, 0.497043804407 AS sv_2, -0.392274061541 AS sv_3, 0.433689348394 AS sv_4, 0.470199478695 AS sv_5, 0.0271335476371 AS sv_6, 0.118162710905 AS sv_7, 0.193661607711 AS sv_8, 0.153466239099 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, 0.542733160537 AS sv_0, -0.451548549304 AS sv_1, -0.0863319483328 AS sv_2, -0.324752293199 AS sv_3, -0.108417947683 AS sv_4, -0.349613772898 AS sv_5, 0.188435897253 AS sv_6, 0.0409425237555 AS sv_7, -0.0206634837314 AS sv_8, 0.164033107978 AS sv_9 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 0.764653766362 AS sv_0, -0.397583381035 AS sv_1, -0.212069130492 AS sv_2, 0.141754547866 AS sv_3, 0.0526481249035 AS sv_4, 0.196367178891 AS sv_5, -0.146689076341 AS sv_6, 0.322249539229 AS sv_7, 0.320101081235 AS sv_8, 0.0854353958105 AS sv_9 UNION ALL SELECT 70 AS sv_idx, -1.0 AS dual_coeff, -0.23358143863 AS sv_0, 0.341117373082 AS sv_1, -0.144128361247 AS sv_2, -0.203974573571 AS sv_3, 0.427324354283 AS sv_4, -0.0134867002848 AS sv_5, -0.402211236354 AS sv_6, 0.0187592066747 AS sv_7, -0.277981184578 AS sv_8, -0.293893814292 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 1.0 AS dual_coeff, -0.156355086448 AS sv_0, 0.119677208898 AS sv_1, -0.208740589736 AS sv_2, 0.138182771349 AS sv_3, 0.256289218948 AS sv_4, -0.11212830379 AS sv_5, 0.184250629263 AS sv_6, 0.0848186578847 AS sv_7, -0.318372413545 AS sv_8, 0.0671073714316 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, -0.105966229446 AS sv_0, -0.272960167031 AS sv_1, 0.386530246087 AS sv_2, 0.319733495237 AS sv_3, -0.336797122731 AS sv_4, -0.235446460167 AS sv_5, 0.0984487505748 AS sv_6, -0.142877977054 AS sv_7, -0.199501233501 AS sv_8, 0.567336149307 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, -0.713092175094 AS sv_0, -0.651271533535 AS sv_1, -0.139116297179 AS sv_2, -0.119282398855 AS sv_3, -0.100442887836 AS sv_4, 0.182929534858 AS sv_5, 0.254812116817 AS sv_6, -0.386857129868 AS sv_7, 0.0124222111 AS sv_8, 0.242644901481 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, 0.131553156482 AS sv_0, 0.282200346522 AS sv_1, 0.0652914188764 AS sv_2, -0.253677456507 AS sv_3, -0.236247513568 AS sv_4, -0.0267406678783 AS sv_5, 0.171363901565 AS sv_6, 0.255299878525 AS sv_7, -0.326974448897 AS sv_8, 0.225247696302 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, -0.391259657138 AS sv_0, 0.25305451521 AS sv_1, -0.434978606889 AS sv_2, -0.38637942952 AS sv_3, -0.430679610756 AS sv_4, 0.205155667205 AS sv_5, 0.108143404721 AS sv_6, 0.123941360228 AS sv_7, 0.111676280969 AS sv_8, -0.0770831944678 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, 0.367086130503 AS sv_0, 0.00156138804839 AS sv_1, -0.29029516734 AS sv_2, -0.600023743724 AS sv_3, -0.424885497303 AS sv_4, -0.507746915332 AS sv_5, 0.043947249038 AS sv_6, -0.269067761454 AS sv_7, -0.347375393205 AS sv_8, 0.0650879787756 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 1.0 AS dual_coeff, -0.157896919204 AS sv_0, 0.00951287890216 AS sv_1, 0.244373987124 AS sv_2, 0.218905013179 AS sv_3, 0.365228591945 AS sv_4, -0.0645532227406 AS sv_5, -0.117677654084 AS sv_6, 0.0833886459633 AS sv_7, -0.436904982675 AS sv_8, -0.0791933143808 AS sv_9 UNION ALL SELECT 78 AS sv_idx, 1.0 AS dual_coeff, 0.455655596987 AS sv_0, -0.00413393243498 AS sv_1, 0.337733563267 AS sv_2, 0.253138881485 AS sv_3, 0.388785822877 AS sv_4, -0.305609812567 AS sv_5, 0.118442562187 AS sv_6, 0.282772593461 AS sv_7, -0.500325950979 AS sv_8, -0.422496705601 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, -0.0139333892586 AS sv_0, -0.198550530311 AS sv_1, 0.175091213836 AS sv_2, -0.212521534665 AS sv_3, 0.283266560707 AS sv_4, 0.0956315083321 AS sv_5, 0.0660621258185 AS sv_6, -0.291750604798 AS sv_7, 0.328602079505 AS sv_8, -0.214709930396 AS sv_9 UNION ALL SELECT 80 AS sv_idx, -1.0 AS dual_coeff, 0.116160207104 AS sv_0, 0.162641777748 AS sv_1, -0.665096981846 AS sv_2, -0.474686571137 AS sv_3, 0.42423554755 AS sv_4, -0.395892340601 AS sv_5, -0.246542965431 AS sv_6, 0.0478211587367 AS sv_7, -0.131795923841 AS sv_8, -0.0044459228163 AS sv_9 UNION ALL SELECT 81 AS sv_idx, 1.0 AS dual_coeff, 0.0144296639357 AS sv_0, -0.0959335182304 AS sv_1, 0.200771166637 AS sv_2, 0.217041062731 AS sv_3, 0.0478981830261 AS sv_4, 0.0405062698661 AS sv_5, 0.696466775627 AS sv_6, -0.0124022214494 AS sv_7, -0.157985866792 AS sv_8, 0.086461312537 AS sv_9 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, -0.247780055776 AS sv_0, -0.568443668434 AS sv_1, -0.356896176111 AS sv_2, 0.335105373583 AS sv_3, -0.326072007506 AS sv_4, 0.060120144276 AS sv_5, -0.0717590721644 AS sv_6, -0.233275580527 AS sv_7, -0.0316138484407 AS sv_8, -0.0512537446234 AS sv_9 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, -0.174087887658 AS sv_0, 0.05112106379 AS sv_1, -0.295221020705 AS sv_2, -0.526294370231 AS sv_3, -0.222553592913 AS sv_4, 0.376358315105 AS sv_5, -0.0475738981363 AS sv_6, 0.651196926333 AS sv_7, -0.247705929301 AS sv_8, -0.0424505049261 AS sv_9 UNION ALL SELECT 84 AS sv_idx, 1.0 AS dual_coeff, 0.471094021868 AS sv_0, 0.198822530978 AS sv_1, 0.244452435016 AS sv_2, 0.173609988785 AS sv_3, 0.301694865538 AS sv_4, 0.0270124215877 AS sv_5, -0.101975118891 AS sv_6, 0.305825092852 AS sv_7, 0.221260444018 AS sv_8, 0.276002346934 AS sv_9 UNION ALL SELECT 85 AS sv_idx, 1.0 AS dual_coeff, -0.0243308185828 AS sv_0, 0.217190807627 AS sv_1, -0.0371485431114 AS sv_2, -0.439797445119 AS sv_3, 0.0668576313206 AS sv_4, -0.0380523123191 AS sv_5, 0.0143203890598 AS sv_6, 0.31238851404 AS sv_7, -0.212201178255 AS sv_8, 0.0367964135046 AS sv_9 UNION ALL SELECT 86 AS sv_idx, 1.0 AS dual_coeff, -0.331155878207 AS sv_0, 0.419937051758 AS sv_1, -0.132485095366 AS sv_2, 0.2750945827 AS sv_3, -0.570435117303 AS sv_4, -0.491110141222 AS sv_5, -0.345320450939 AS sv_6, 0.229847829058 AS sv_7, 0.123159578239 AS sv_8, -0.00467551486839 AS sv_9 UNION ALL SELECT 87 AS sv_idx, 1.0 AS dual_coeff, 0.142909356109 AS sv_0, -0.157695353434 AS sv_1, -0.117014500241 AS sv_2, 0.0161512200737 AS sv_3, 0.164823990765 AS sv_4, 0.272603234925 AS sv_5, 0.116058887002 AS sv_6, -0.070496405256 AS sv_7, -0.256103872493 AS sv_8, -0.219167385865 AS sv_9 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, -0.611809343144 AS sv_0, -0.196508305063 AS sv_1, -0.0256756819959 AS sv_2, -0.416216709185 AS sv_3, -0.488137978179 AS sv_4, -0.119875591945 AS sv_5, -0.104370527462 AS sv_6, -0.192996286152 AS sv_7, 0.0411773908665 AS sv_8, 0.137448151141 AS sv_9 UNION ALL SELECT 89 AS sv_idx, -1.0 AS dual_coeff, 0.0285778099491 AS sv_0, -0.034413578002 AS sv_1, 0.503104633845 AS sv_2, 0.364291061747 AS sv_3, 0.166881533836 AS sv_4, -0.291656319643 AS sv_5, -0.199353265692 AS sv_6, -0.173276502202 AS sv_7, -0.300054967955 AS sv_8, -0.346144700009 AS sv_9 UNION ALL SELECT 90 AS sv_idx, -1.0 AS dual_coeff, 0.285558591196 AS sv_0, -0.0765774681081 AS sv_1, 0.528541335223 AS sv_2, 0.158256929854 AS sv_3, -0.317687601439 AS sv_4, -0.415334754993 AS sv_5, -0.0641619797845 AS sv_6, 0.393514328092 AS sv_7, 0.264517414243 AS sv_8, -0.234693618557 AS sv_9 UNION ALL SELECT 91 AS sv_idx, 1.0 AS dual_coeff, -0.535378752309 AS sv_0, 0.619887697285 AS sv_1, 0.139414872356 AS sv_2, -0.352267540543 AS sv_3, 0.0511918070121 AS sv_4, -0.213806483323 AS sv_5, 0.308534048157 AS sv_6, -0.151596760742 AS sv_7, -0.117095509985 AS sv_8, -0.253778596899 AS sv_9 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, -0.404354754215 AS sv_0, -0.416472346956 AS sv_1, -0.0213359920844 AS sv_2, -0.199072952036 AS sv_3, 0.268316079013 AS sv_4, 0.482883292775 AS sv_5, 0.18125807391 AS sv_6, -0.456126346901 AS sv_7, 0.154754171499 AS sv_8, -0.0454650130961 AS sv_9 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, -0.449716935238 AS sv_0, 0.188819519531 AS sv_1, -0.214943405977 AS sv_2, -0.240529675521 AS sv_3, -0.565531639223 AS sv_4, -0.27329423249 AS sv_5, -0.00964454446317 AS sv_6, 0.130122171592 AS sv_7, -0.0575039928051 AS sv_8, -0.118671138282 AS sv_9 UNION ALL SELECT 94 AS sv_idx, -1.0 AS dual_coeff, 0.612368904523 AS sv_0, -0.209373431843 AS sv_1, 0.0201638245096 AS sv_2, -0.0494491833572 AS sv_3, -0.195394358252 AS sv_4, 0.220465400716 AS sv_5, 0.196410634654 AS sv_6, 0.244012556772 AS sv_7, -0.0527818925583 AS sv_8, -0.377366442059 AS sv_9 UNION ALL SELECT 95 AS sv_idx, -1.0 AS dual_coeff, 0.0991409195893 AS sv_0, -0.30197173115 AS sv_1, 0.0692034517451 AS sv_2, 0.532448359707 AS sv_3, -0.438624992806 AS sv_4, 0.0769355178244 AS sv_5, 0.0290391715064 AS sv_6, -0.122460345497 AS sv_7, -0.331816843539 AS sv_8, -0.515772606545 AS sv_9 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, -0.729759350652 AS sv_0, -0.252152854945 AS sv_1, -0.106295155934 AS sv_2, 0.524997372187 AS sv_3, 0.638195514621 AS sv_4, 0.118420679778 AS sv_5, -0.179906065612 AS sv_6, 0.287514611742 AS sv_7, 0.0408653358526 AS sv_8, -0.0429784526659 AS sv_9 UNION ALL SELECT 97 AS sv_idx, 1.0 AS dual_coeff, 0.606189163199 AS sv_0, -0.357873217921 AS sv_1, 0.399482663382 AS sv_2, 0.46738090995 AS sv_3, -0.511518421188 AS sv_4, 0.216469834472 AS sv_5, -0.242792388204 AS sv_6, -0.0198376839252 AS sv_7, -0.00703168791049 AS sv_8, 0.218859221135 AS sv_9) AS `Values`), 
kernel_cte AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 14.3372409094 AS dot_product 
FROM (SELECT `ADS_ano_2_OUT`.`KEY` AS `KEY`, `SV_data`.dual_coeff * power(0.1 * (`ADS_ano_2_OUT`.anoova_2 * `SV_data`.sv_0 + `ADS_ano_2_OUT`.anoova_3 * `SV_data`.sv_1 + `ADS_ano_2_OUT`.anoova_4 * `SV_data`.sv_2 + `ADS_ano_2_OUT`.anoova_5 * `SV_data`.sv_3 + `ADS_ano_2_OUT`.anoova_6 * `SV_data`.sv_4 + `ADS_ano_2_OUT`.anoova_7 * `SV_data`.sv_5 + `ADS_ano_2_OUT`.anoova_8 * `SV_data`.sv_6 + `ADS_ano_2_OUT`.anoova_9 * `SV_data`.sv_7 + `ADS_ano_2_OUT`.anoova_10 * `SV_data`.sv_8 + `ADS_ano_2_OUT`.anoova_11 * `SV_data`.sv_9) + 0.0, 3) AS dot_prod1 
FROM `ADS_ano_2_OUT`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_cte.`KEY` AS `KEY`, kernel_cte.dot_product AS `Estimator` 
FROM kernel_cte