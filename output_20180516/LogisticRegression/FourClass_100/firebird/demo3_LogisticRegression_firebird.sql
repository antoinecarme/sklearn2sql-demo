-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : LogisticRegression
-- Dataset : FourClass_100
-- Database : firebird


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE PRECISION) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE PRECISION) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE PRECISION) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE PRECISION) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE PRECISION) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE PRECISION) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE PRECISION) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE PRECISION) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE PRECISION) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE PRECISION) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE PRECISION) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE PRECISION) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE PRECISION) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE PRECISION) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE PRECISION) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE PRECISION) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE PRECISION) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE PRECISION) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE PRECISION) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE PRECISION) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE PRECISION) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE PRECISION) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE PRECISION) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE PRECISION) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE PRECISION) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE PRECISION) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE PRECISION) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE PRECISION) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE PRECISION) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE PRECISION) AS "Feature_29", CAST("ADS"."Feature_30" AS DOUBLE PRECISION) AS "Feature_30", CAST("ADS"."Feature_31" AS DOUBLE PRECISION) AS "Feature_31", CAST("ADS"."Feature_32" AS DOUBLE PRECISION) AS "Feature_32", CAST("ADS"."Feature_33" AS DOUBLE PRECISION) AS "Feature_33", CAST("ADS"."Feature_34" AS DOUBLE PRECISION) AS "Feature_34", CAST("ADS"."Feature_35" AS DOUBLE PRECISION) AS "Feature_35", CAST("ADS"."Feature_36" AS DOUBLE PRECISION) AS "Feature_36", CAST("ADS"."Feature_37" AS DOUBLE PRECISION) AS "Feature_37", CAST("ADS"."Feature_38" AS DOUBLE PRECISION) AS "Feature_38", CAST("ADS"."Feature_39" AS DOUBLE PRECISION) AS "Feature_39", CAST("ADS"."Feature_40" AS DOUBLE PRECISION) AS "Feature_40", CAST("ADS"."Feature_41" AS DOUBLE PRECISION) AS "Feature_41", CAST("ADS"."Feature_42" AS DOUBLE PRECISION) AS "Feature_42", CAST("ADS"."Feature_43" AS DOUBLE PRECISION) AS "Feature_43", CAST("ADS"."Feature_44" AS DOUBLE PRECISION) AS "Feature_44", CAST("ADS"."Feature_45" AS DOUBLE PRECISION) AS "Feature_45", CAST("ADS"."Feature_46" AS DOUBLE PRECISION) AS "Feature_46", CAST("ADS"."Feature_47" AS DOUBLE PRECISION) AS "Feature_47", CAST("ADS"."Feature_48" AS DOUBLE PRECISION) AS "Feature_48", CAST("ADS"."Feature_49" AS DOUBLE PRECISION) AS "Feature_49", CAST("ADS"."Feature_50" AS DOUBLE PRECISION) AS "Feature_50", CAST("ADS"."Feature_51" AS DOUBLE PRECISION) AS "Feature_51", CAST("ADS"."Feature_52" AS DOUBLE PRECISION) AS "Feature_52", CAST("ADS"."Feature_53" AS DOUBLE PRECISION) AS "Feature_53", CAST("ADS"."Feature_54" AS DOUBLE PRECISION) AS "Feature_54", CAST("ADS"."Feature_55" AS DOUBLE PRECISION) AS "Feature_55", CAST("ADS"."Feature_56" AS DOUBLE PRECISION) AS "Feature_56", CAST("ADS"."Feature_57" AS DOUBLE PRECISION) AS "Feature_57", CAST("ADS"."Feature_58" AS DOUBLE PRECISION) AS "Feature_58", CAST("ADS"."Feature_59" AS DOUBLE PRECISION) AS "Feature_59", CAST("ADS"."Feature_60" AS DOUBLE PRECISION) AS "Feature_60", CAST("ADS"."Feature_61" AS DOUBLE PRECISION) AS "Feature_61", CAST("ADS"."Feature_62" AS DOUBLE PRECISION) AS "Feature_62", CAST("ADS"."Feature_63" AS DOUBLE PRECISION) AS "Feature_63", CAST("ADS"."Feature_64" AS DOUBLE PRECISION) AS "Feature_64", CAST("ADS"."Feature_65" AS DOUBLE PRECISION) AS "Feature_65", CAST("ADS"."Feature_66" AS DOUBLE PRECISION) AS "Feature_66", CAST("ADS"."Feature_67" AS DOUBLE PRECISION) AS "Feature_67", CAST("ADS"."Feature_68" AS DOUBLE PRECISION) AS "Feature_68", CAST("ADS"."Feature_69" AS DOUBLE PRECISION) AS "Feature_69", CAST("ADS"."Feature_70" AS DOUBLE PRECISION) AS "Feature_70", CAST("ADS"."Feature_71" AS DOUBLE PRECISION) AS "Feature_71", CAST("ADS"."Feature_72" AS DOUBLE PRECISION) AS "Feature_72", CAST("ADS"."Feature_73" AS DOUBLE PRECISION) AS "Feature_73", CAST("ADS"."Feature_74" AS DOUBLE PRECISION) AS "Feature_74", CAST("ADS"."Feature_75" AS DOUBLE PRECISION) AS "Feature_75", CAST("ADS"."Feature_76" AS DOUBLE PRECISION) AS "Feature_76", CAST("ADS"."Feature_77" AS DOUBLE PRECISION) AS "Feature_77", CAST("ADS"."Feature_78" AS DOUBLE PRECISION) AS "Feature_78", CAST("ADS"."Feature_79" AS DOUBLE PRECISION) AS "Feature_79", CAST("ADS"."Feature_80" AS DOUBLE PRECISION) AS "Feature_80", CAST("ADS"."Feature_81" AS DOUBLE PRECISION) AS "Feature_81", CAST("ADS"."Feature_82" AS DOUBLE PRECISION) AS "Feature_82", CAST("ADS"."Feature_83" AS DOUBLE PRECISION) AS "Feature_83", CAST("ADS"."Feature_84" AS DOUBLE PRECISION) AS "Feature_84", CAST("ADS"."Feature_85" AS DOUBLE PRECISION) AS "Feature_85", CAST("ADS"."Feature_86" AS DOUBLE PRECISION) AS "Feature_86", CAST("ADS"."Feature_87" AS DOUBLE PRECISION) AS "Feature_87", CAST("ADS"."Feature_88" AS DOUBLE PRECISION) AS "Feature_88", CAST("ADS"."Feature_89" AS DOUBLE PRECISION) AS "Feature_89", CAST("ADS"."Feature_90" AS DOUBLE PRECISION) AS "Feature_90", CAST("ADS"."Feature_91" AS DOUBLE PRECISION) AS "Feature_91", CAST("ADS"."Feature_92" AS DOUBLE PRECISION) AS "Feature_92", CAST("ADS"."Feature_93" AS DOUBLE PRECISION) AS "Feature_93", CAST("ADS"."Feature_94" AS DOUBLE PRECISION) AS "Feature_94", CAST("ADS"."Feature_95" AS DOUBLE PRECISION) AS "Feature_95", CAST("ADS"."Feature_96" AS DOUBLE PRECISION) AS "Feature_96", CAST("ADS"."Feature_97" AS DOUBLE PRECISION) AS "Feature_97", CAST("ADS"."Feature_98" AS DOUBLE PRECISION) AS "Feature_98", CAST("ADS"."Feature_99" AS DOUBLE PRECISION) AS "Feature_99" 
FROM "FourClass_100" AS "ADS"), 
linear_model_cte AS 
(SELECT linear_input."KEY" AS "KEY", -0.23828823003985866 * linear_input."Feature_0" + -0.03639113624826227 * linear_input."Feature_1" + -0.1581640606813339 * linear_input."Feature_2" + -0.08938103668472452 * linear_input."Feature_3" + 0.2029942140665313 * linear_input."Feature_4" + 0.2662148617659377 * linear_input."Feature_5" + 0.1829527546393574 * linear_input."Feature_6" + -0.18429391944508172 * linear_input."Feature_7" + 0.06776860226229142 * linear_input."Feature_8" + -0.03344801836809256 * linear_input."Feature_9" + 0.5667719405705115 * linear_input."Feature_10" + -0.18898351701332275 * linear_input."Feature_11" + 0.053893019223257045 * linear_input."Feature_12" + 0.4340907574170286 * linear_input."Feature_13" + 0.299981755847462 * linear_input."Feature_14" + 0.514039250540861 * linear_input."Feature_15" + 0.17427743896107284 * linear_input."Feature_16" + 0.03323341514068895 * linear_input."Feature_17" + 0.19698231356650983 * linear_input."Feature_18" + 0.5045479211024677 * linear_input."Feature_19" + -0.629671982336095 * linear_input."Feature_20" + 0.09918943010611654 * linear_input."Feature_21" + 0.2138757966142263 * linear_input."Feature_22" + 0.1822466565676455 * linear_input."Feature_23" + 0.3349250105945036 * linear_input."Feature_24" + -0.21355133926755432 * linear_input."Feature_25" + 0.04949170204501559 * linear_input."Feature_26" + -0.36378396483535463 * linear_input."Feature_27" + 0.15545592075250428 * linear_input."Feature_28" + -0.16620696771573487 * linear_input."Feature_29" + 0.3670643792397331 * linear_input."Feature_30" + -0.06039657907889317 * linear_input."Feature_31" + 0.012417408849398836 * linear_input."Feature_32" + -0.2465874958037753 * linear_input."Feature_33" + -0.2019766577224492 * linear_input."Feature_34" + 0.16043964597863067 * linear_input."Feature_35" + -0.0902537945383216 * linear_input."Feature_36" + 0.3370826609096322 * linear_input."Feature_37" + -0.5299050977076506 * linear_input."Feature_38" + -0.4424103919096343 * linear_input."Feature_39" + 0.20724909146378556 * linear_input."Feature_40" + -0.42684171302478136 * linear_input."Feature_41" + 0.050456652327389696 * linear_input."Feature_42" + 0.3297266467131079 * linear_input."Feature_43" + -0.18190886690301367 * linear_input."Feature_44" + -0.016804838152244764 * linear_input."Feature_45" + -0.42211241440667385 * linear_input."Feature_46" + -0.21516731084441906 * linear_input."Feature_47" + -0.35226466560647457 * linear_input."Feature_48" + 0.23212724632310403 * linear_input."Feature_49" + 0.5845139856228208 * linear_input."Feature_50" + -0.04920512593028005 * linear_input."Feature_51" + 0.14844523721650502 * linear_input."Feature_52" + -0.4382306708464058 * linear_input."Feature_53" + 0.11577803218090921 * linear_input."Feature_54" + -0.19587662728622796 * linear_input."Feature_55" + 0.2020298121015131 * linear_input."Feature_56" + 0.33637374102858403 * linear_input."Feature_57" + -0.03786524681071163 * linear_input."Feature_58" + 0.2317849587776395 * linear_input."Feature_59" + 0.03851872027007484 * linear_input."Feature_60" + 0.24061346351350166 * linear_input."Feature_61" + 0.3273612993471331 * linear_input."Feature_62" + -0.26140365870627186 * linear_input."Feature_63" + 0.04222600965543487 * linear_input."Feature_64" + -0.37293279849384653 * linear_input."Feature_65" + -0.30930594433756703 * linear_input."Feature_66" + 0.11361489562417804 * linear_input."Feature_67" + 0.36758812695967663 * linear_input."Feature_68" + 0.11309345716148507 * linear_input."Feature_69" + -0.18734859598460776 * linear_input."Feature_70" + -0.019249868005013156 * linear_input."Feature_71" + 0.013420593938207078 * linear_input."Feature_72" + 0.32191407054322524 * linear_input."Feature_73" + -0.20241640214536027 * linear_input."Feature_74" + 0.09702025993916549 * linear_input."Feature_75" + -0.13038675061566204 * linear_input."Feature_76" + 0.09064183925108094 * linear_input."Feature_77" + 0.75307784807777 * linear_input."Feature_78" + -0.6524062720234115 * linear_input."Feature_79" + 0.16614293452888718 * linear_input."Feature_80" + -0.12234523134216103 * linear_input."Feature_81" + -0.5188042748394734 * linear_input."Feature_82" + 0.15976641247535212 * linear_input."Feature_83" + 0.08392891759274473 * linear_input."Feature_84" + 0.1018686875687978 * linear_input."Feature_85" + 0.19392099450970007 * linear_input."Feature_86" + -0.21757912305823032 * linear_input."Feature_87" + -0.2512436393917086 * linear_input."Feature_88" + -0.18522000147927287 * linear_input."Feature_89" + -0.10604788363660746 * linear_input."Feature_90" + -0.26441696078891236 * linear_input."Feature_91" + -0.7071003187463176 * linear_input."Feature_92" + 0.2991330898963785 * linear_input."Feature_93" + -0.3120427526699573 * linear_input."Feature_94" + 0.3963770735519572 * linear_input."Feature_95" + -0.12542549078787815 * linear_input."Feature_96" + -0.18779919351972849 * linear_input."Feature_97" + 0.12887249875937168 * linear_input."Feature_98" + 0.4653999069817825 * linear_input."Feature_99" + -0.9299094534983313 AS "Score_0", -0.02606363914538734 * linear_input."Feature_0" + -0.0816341402163234 * linear_input."Feature_1" + 0.6134152094400442 * linear_input."Feature_2" + 0.35956572785350294 * linear_input."Feature_3" + -0.25033807847963346 * linear_input."Feature_4" + 0.06337670611795963 * linear_input."Feature_5" + -0.058975234118536425 * linear_input."Feature_6" + 0.38950286400632844 * linear_input."Feature_7" + -0.34412771581359 * linear_input."Feature_8" + 0.6675002634527902 * linear_input."Feature_9" + 0.03853021012465312 * linear_input."Feature_10" + -0.018328562918536986 * linear_input."Feature_11" + 0.036900105015128484 * linear_input."Feature_12" + -0.34393972519885024 * linear_input."Feature_13" + -0.45301491192766813 * linear_input."Feature_14" + -0.11566032435173276 * linear_input."Feature_15" + 0.27130420000585226 * linear_input."Feature_16" + 0.18811121657768695 * linear_input."Feature_17" + -0.30878319931844583 * linear_input."Feature_18" + -0.3368431502887533 * linear_input."Feature_19" + -0.32851110059562455 * linear_input."Feature_20" + -0.15614658493727654 * linear_input."Feature_21" + 0.07323060408653942 * linear_input."Feature_22" + -0.3670342357633989 * linear_input."Feature_23" + -0.3105941090757426 * linear_input."Feature_24" + -0.6665694452542706 * linear_input."Feature_25" + 0.301577453914597 * linear_input."Feature_26" + 0.12777261836413897 * linear_input."Feature_27" + -0.24939961041404735 * linear_input."Feature_28" + -0.2559209450050327 * linear_input."Feature_29" + -0.12407283973209522 * linear_input."Feature_30" + 0.05006150378664399 * linear_input."Feature_31" + -0.13079656795799968 * linear_input."Feature_32" + 0.2003855432726222 * linear_input."Feature_33" + -0.2109895270270379 * linear_input."Feature_34" + 0.33861451429463707 * linear_input."Feature_35" + -0.16272002616514414 * linear_input."Feature_36" + 0.21112103962561923 * linear_input."Feature_37" + -0.36745431835355513 * linear_input."Feature_38" + 0.3039128766511857 * linear_input."Feature_39" + -0.4783529514929833 * linear_input."Feature_40" + 0.31323498340941675 * linear_input."Feature_41" + -0.10731502314461097 * linear_input."Feature_42" + -0.1803583998134837 * linear_input."Feature_43" + 0.4463154813409622 * linear_input."Feature_44" + 0.22154119452257448 * linear_input."Feature_45" + -0.13039841577861325 * linear_input."Feature_46" + 0.2358455428025017 * linear_input."Feature_47" + 0.23388106282086357 * linear_input."Feature_48" + 0.19978703556588456 * linear_input."Feature_49" + -0.2839199067381819 * linear_input."Feature_50" + -0.089058984135451 * linear_input."Feature_51" + -0.34744010322759117 * linear_input."Feature_52" + -0.3157977918788169 * linear_input."Feature_53" + 0.2052059870808584 * linear_input."Feature_54" + 0.5032435420987424 * linear_input."Feature_55" + 0.02206111140047425 * linear_input."Feature_56" + 0.25287947885960516 * linear_input."Feature_57" + 0.04476203826165025 * linear_input."Feature_58" + 0.015015977482134854 * linear_input."Feature_59" + 0.5473458714907151 * linear_input."Feature_60" + 0.14552841270201688 * linear_input."Feature_61" + -0.2542669504207584 * linear_input."Feature_62" + -0.040081623281795355 * linear_input."Feature_63" + 0.7047208932445964 * linear_input."Feature_64" + 0.7082222686509994 * linear_input."Feature_65" + 0.09070421774307584 * linear_input."Feature_66" + -0.7141382997862711 * linear_input."Feature_67" + 0.505521392971525 * linear_input."Feature_68" + -0.42943447415292973 * linear_input."Feature_69" + 0.1954995152827373 * linear_input."Feature_70" + -0.4791553042065284 * linear_input."Feature_71" + 0.1993055950233799 * linear_input."Feature_72" + -0.05824341002042118 * linear_input."Feature_73" + 0.7353082285349334 * linear_input."Feature_74" + 0.26204793357676404 * linear_input."Feature_75" + -0.09126409733444536 * linear_input."Feature_76" + 0.07764258592118485 * linear_input."Feature_77" + 0.16093552024067215 * linear_input."Feature_78" + -0.21170351492607833 * linear_input."Feature_79" + -0.6088760257263158 * linear_input."Feature_80" + 0.15812139722144014 * linear_input."Feature_81" + -0.008384166388118456 * linear_input."Feature_82" + -0.12718703222433209 * linear_input."Feature_83" + 0.18539416004009213 * linear_input."Feature_84" + -0.010559002608174597 * linear_input."Feature_85" + 0.010771747295394485 * linear_input."Feature_86" + 0.1115605393044974 * linear_input."Feature_87" + 0.2610017852038815 * linear_input."Feature_88" + -0.32797591916869157 * linear_input."Feature_89" + 0.456405397354371 * linear_input."Feature_90" + 0.40259530977136704 * linear_input."Feature_91" + 0.579136312734489 * linear_input."Feature_92" + 0.3089988358854976 * linear_input."Feature_93" + 0.5992529093680578 * linear_input."Feature_94" + -0.08080833635201004 * linear_input."Feature_95" + -0.2353248017815706 * linear_input."Feature_96" + 0.17174676375218476 * linear_input."Feature_97" + 0.1810996945715042 * linear_input."Feature_98" + -0.25829490308145503 * linear_input."Feature_99" + -1.4182480200707581 AS "Score_1", -0.03868057615058286 * linear_input."Feature_0" + -0.2242730299389413 * linear_input."Feature_1" + -0.46654845355106905 * linear_input."Feature_2" + -0.0941920939083213 * linear_input."Feature_3" + 0.036663360395730996 * linear_input."Feature_4" + 0.4635947170325326 * linear_input."Feature_5" + -0.23570493292558553 * linear_input."Feature_6" + -0.1623804823286186 * linear_input."Feature_7" + -0.009836251083553517 * linear_input."Feature_8" + 0.268195193288686 * linear_input."Feature_9" + -0.2639325602005384 * linear_input."Feature_10" + 0.14891925103229514 * linear_input."Feature_11" + 0.059738594243139084 * linear_input."Feature_12" + -0.26714752226610006 * linear_input."Feature_13" + -0.13196504817387694 * linear_input."Feature_14" + -0.21655210039321296 * linear_input."Feature_15" + -0.2716611808704232 * linear_input."Feature_16" + -0.17974702228360895 * linear_input."Feature_17" + -0.14413880761267223 * linear_input."Feature_18" + -0.14480867054008584 * linear_input."Feature_19" + 0.28089009533661813 * linear_input."Feature_20" + 0.057711498878041556 * linear_input."Feature_21" + 0.02533534239464392 * linear_input."Feature_22" + 0.16406449104799134 * linear_input."Feature_23" + 0.17286763701801536 * linear_input."Feature_24" + 0.07762448336466908 * linear_input."Feature_25" + 0.0769464917440873 * linear_input."Feature_26" + 0.33964846355433287 * linear_input."Feature_27" + 0.5061213990221469 * linear_input."Feature_28" + 0.24985852743766926 * linear_input."Feature_29" + 0.21310847983758713 * linear_input."Feature_30" + 0.174768672416954 * linear_input."Feature_31" + 0.17554534243392916 * linear_input."Feature_32" + 0.06253635048726025 * linear_input."Feature_33" + 0.006481050542504787 * linear_input."Feature_34" + -0.09380392602149477 * linear_input."Feature_35" + -0.09420838289347691 * linear_input."Feature_36" + -0.2889190175276914 * linear_input."Feature_37" + 0.6149191283791786 * linear_input."Feature_38" + -0.04620718412405658 * linear_input."Feature_39" + 0.18651889810239616 * linear_input."Feature_40" + -0.05795215148563893 * linear_input."Feature_41" + -0.2522286189256639 * linear_input."Feature_42" + -0.5102090965315194 * linear_input."Feature_43" + -0.8344273540942457 * linear_input."Feature_44" + -0.11943253921998441 * linear_input."Feature_45" + 0.0418907295604229 * linear_input."Feature_46" + 0.6686878560783449 * linear_input."Feature_47" + 0.12473089839679821 * linear_input."Feature_48" + -0.043466092737280054 * linear_input."Feature_49" + 0.21703347198607917 * linear_input."Feature_50" + -0.4671200677471695 * linear_input."Feature_51" + 0.2290596633782226 * linear_input."Feature_52" + 0.4120823917410809 * linear_input."Feature_53" + -0.39287959123398813 * linear_input."Feature_54" + 0.29607726875181356 * linear_input."Feature_55" + -0.33462238099803543 * linear_input."Feature_56" + 0.16596579345961443 * linear_input."Feature_57" + 0.06970365427003175 * linear_input."Feature_58" + -0.24381950018608187 * linear_input."Feature_59" + -0.0732240916917911 * linear_input."Feature_60" + -0.47131856395770916 * linear_input."Feature_61" + -0.15269440575480658 * linear_input."Feature_62" + 0.019523035437099902 * linear_input."Feature_63" + 0.037581432915528616 * linear_input."Feature_64" + 0.0036201094522295262 * linear_input."Feature_65" + -0.09863908233020607 * linear_input."Feature_66" + 0.04901238874705367 * linear_input."Feature_67" + -0.5377606267887236 * linear_input."Feature_68" + -0.586971898646968 * linear_input."Feature_69" + 0.11243968532534791 * linear_input."Feature_70" + 0.29015015691714185 * linear_input."Feature_71" + 0.24248601698609168 * linear_input."Feature_72" + -0.36385653133076196 * linear_input."Feature_73" + -0.14107310126029943 * linear_input."Feature_74" + -0.3491785297164227 * linear_input."Feature_75" + 0.279822851676981 * linear_input."Feature_76" + -0.08560706133471581 * linear_input."Feature_77" + -0.3175436610117259 * linear_input."Feature_78" + 0.31441390337923597 * linear_input."Feature_79" + 0.21902532898830837 * linear_input."Feature_80" + 0.5083564996612175 * linear_input."Feature_81" + -0.19840599393940378 * linear_input."Feature_82" + 0.2742810868179781 * linear_input."Feature_83" + -0.025595052676709158 * linear_input."Feature_84" + 0.24892237610434767 * linear_input."Feature_85" + 0.18836557499443812 * linear_input."Feature_86" + -0.1469612588647305 * linear_input."Feature_87" + 0.0016730935300368092 * linear_input."Feature_88" + 0.2890453660675847 * linear_input."Feature_89" + -0.37186033888864767 * linear_input."Feature_90" + -0.09026725593728561 * linear_input."Feature_91" + 0.15475001924925008 * linear_input."Feature_92" + -0.34544592818482756 * linear_input."Feature_93" + 0.02168724600429243 * linear_input."Feature_94" + 0.03563622203071013 * linear_input."Feature_95" + 0.021199116052346 * linear_input."Feature_96" + 0.1921831345663421 * linear_input."Feature_97" + -0.04130113056041122 * linear_input."Feature_98" + 0.18742429676371478 * linear_input."Feature_99" + -1.5595039642279038 AS "Score_2", 0.3648252185269553 * linear_input."Feature_0" + -0.007985949998747454 * linear_input."Feature_1" + 0.35607147472822614 * linear_input."Feature_2" + -0.22145852920513565 * linear_input."Feature_3" + 0.045192201336962806 * linear_input."Feature_4" + 0.03855601040703366 * linear_input."Feature_5" + -0.16019377134369567 * linear_input."Feature_6" + 0.12275183739796111 * linear_input."Feature_7" + 0.07583625548026807 * linear_input."Feature_8" + -0.11900469581164541 * linear_input."Feature_9" + 0.1901135676389397 * linear_input."Feature_10" + 0.11921328165171842 * linear_input."Feature_11" + 0.19265033895869008 * linear_input."Feature_12" + 0.40956430559608015 * linear_input."Feature_13" + 0.2131956252611782 * linear_input."Feature_14" + 0.31043150849561657 * linear_input."Feature_15" + -0.10824764175084166 * linear_input."Feature_16" + 0.3184221949486637 * linear_input."Feature_17" + 0.10270314327727834 * linear_input."Feature_18" + 0.4486986228810285 * linear_input."Feature_19" + 0.6252796470758925 * linear_input."Feature_20" + 0.11542408006842746 * linear_input."Feature_21" + -0.040570698143585396 * linear_input."Feature_22" + 0.17283421950776456 * linear_input."Feature_23" + 0.37890183787843623 * linear_input."Feature_24" + 0.263027736211486 * linear_input."Feature_25" + -0.17428000222296952 * linear_input."Feature_26" + -0.4207359157276457 * linear_input."Feature_27" + 0.09079227202805616 * linear_input."Feature_28" + 0.3530379370431274 * linear_input."Feature_29" + -0.24429473249459716 * linear_input."Feature_30" + -0.03698541822717231 * linear_input."Feature_31" + -0.014064365176317291 * linear_input."Feature_32" + 0.023623235226627067 * linear_input."Feature_33" + 0.22893685637377628 * linear_input."Feature_34" + 0.2634793239624147 * linear_input."Feature_35" + 0.34541492306603144 * linear_input."Feature_36" + -0.5405998436132476 * linear_input."Feature_37" + 0.09304490693566486 * linear_input."Feature_38" + 0.27816224675209666 * linear_input."Feature_39" + -0.1688492740308164 * linear_input."Feature_40" + 0.02850864846673157 * linear_input."Feature_41" + -0.031060284149412875 * linear_input."Feature_42" + 0.25234474492057124 * linear_input."Feature_43" + 0.5445286868968512 * linear_input."Feature_44" + -0.3209248899665014 * linear_input."Feature_45" + -0.20056690054091522 * linear_input."Feature_46" + -0.21425820075222696 * linear_input."Feature_47" + 0.0034506145206396463 * linear_input."Feature_48" + 0.31691410757628785 * linear_input."Feature_49" + 0.17283498273167439 * linear_input."Feature_50" + 0.3194256988519536 * linear_input."Feature_51" + -0.21625731349028623 * linear_input."Feature_52" + 0.11721473017495121 * linear_input."Feature_53" + 0.3609816679157498 * linear_input."Feature_54" + -0.13524039921986838 * linear_input."Feature_55" + 0.18943287039611367 * linear_input."Feature_56" + -0.2848977224153503 * linear_input."Feature_57" + -0.1647955631868527 * linear_input."Feature_58" + 0.1371920787050275 * linear_input."Feature_59" + 0.13211584527041964 * linear_input."Feature_60" + -0.06890098961107187 * linear_input."Feature_61" + -0.05389861769446194 * linear_input."Feature_62" + -0.22250438912391987 * linear_input."Feature_63" + 0.017531939808573392 * linear_input."Feature_64" + 0.2396623360950188 * linear_input."Feature_65" + -0.02844098144507271 * linear_input."Feature_66" + 0.3285781870182182 * linear_input."Feature_67" + -0.3091858264414245 * linear_input."Feature_68" + 0.1602354573614537 * linear_input."Feature_69" + -0.15995362448169193 * linear_input."Feature_70" + -0.5551641500845864 * linear_input."Feature_71" + -0.23591157402845314 * linear_input."Feature_72" + 0.09144913924729345 * linear_input."Feature_73" + -0.4093389298924217 * linear_input."Feature_74" + 0.008772800698876102 * linear_input."Feature_75" + 0.03600001463156939 * linear_input."Feature_76" + -0.12022106381179086 * linear_input."Feature_77" + -0.31120223622987775 * linear_input."Feature_78" + -0.006730754379643849 * linear_input."Feature_79" + 0.4922602178209531 * linear_input."Feature_80" + -0.07780923688509482 * linear_input."Feature_81" + 0.09822373230280104 * linear_input."Feature_82" + -0.1928647669337525 * linear_input."Feature_83" + 0.09034786840053748 * linear_input."Feature_84" + -0.8166679673000996 * linear_input."Feature_85" + -0.09488238993268294 * linear_input."Feature_86" + -0.12480373662200263 * linear_input."Feature_87" + -0.22503467321694137 * linear_input."Feature_88" + 0.41197851425421034 * linear_input."Feature_89" + -0.38984900211148504 * linear_input."Feature_90" + -0.05572193806049833 * linear_input."Feature_91" + -0.0427109862405296 * linear_input."Feature_92" + -0.4503124312124131 * linear_input."Feature_93" + -0.0889814961521602 * linear_input."Feature_94" + 0.06463120381887191 * linear_input."Feature_95" + 0.11069549622437724 * linear_input."Feature_96" + -0.31984391852037397 * linear_input."Feature_97" + 0.16684781583002745 * linear_input."Feature_98" + -0.5690726155274382 * linear_input."Feature_99" + -1.4199427656228543 AS "Score_3" 
FROM linear_input), 
linear_model_cte_logistic AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", 1.0 / (1.0 + exp(CASE WHEN (minvalue(maxvalue(-100.0, -linear_model_cte."Score_0"), 100.0) >= -709.782712893384) THEN minvalue(maxvalue(-100.0, -linear_model_cte."Score_0"), 100.0) ELSE -709.782712893384 END)) AS "Logistic_0", linear_model_cte."Score_1" AS "Score_1", 1.0 / (1.0 + exp(CASE WHEN (minvalue(maxvalue(-100.0, -linear_model_cte."Score_1"), 100.0) >= -709.782712893384) THEN minvalue(maxvalue(-100.0, -linear_model_cte."Score_1"), 100.0) ELSE -709.782712893384 END)) AS "Logistic_1", linear_model_cte."Score_2" AS "Score_2", 1.0 / (1.0 + exp(CASE WHEN (minvalue(maxvalue(-100.0, -linear_model_cte."Score_2"), 100.0) >= -709.782712893384) THEN minvalue(maxvalue(-100.0, -linear_model_cte."Score_2"), 100.0) ELSE -709.782712893384 END)) AS "Logistic_2", linear_model_cte."Score_3" AS "Score_3", 1.0 / (1.0 + exp(CASE WHEN (minvalue(maxvalue(-100.0, -linear_model_cte."Score_3"), 100.0) >= -709.782712893384) THEN minvalue(maxvalue(-100.0, -linear_model_cte."Score_3"), 100.0) ELSE -709.782712893384 END)) AS "Logistic_3" 
FROM linear_model_cte), 
orig_cte AS 
(SELECT linear_model_cte_logistic."KEY" AS "KEY", linear_model_cte_logistic."Score_0" AS "Score_0", linear_model_cte_logistic."Score_1" AS "Score_1", linear_model_cte_logistic."Score_2" AS "Score_2", linear_model_cte_logistic."Score_3" AS "Score_3", linear_model_cte_logistic."Logistic_0" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_0", linear_model_cte_logistic."Logistic_1" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_1", linear_model_cte_logistic."Logistic_2" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_2", linear_model_cte_logistic."Logistic_3" / (linear_model_cte_logistic."Logistic_0" + linear_model_cte_logistic."Logistic_1" + linear_model_cte_logistic."Logistic_2" + linear_model_cte_logistic."Logistic_3") AS "Proba_3", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_2", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM linear_model_cte_logistic), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Proba" AS "max_Proba" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Proba") AS "max_Proba" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Proba" AS "max_Proba", "arg_max_t_Proba"."KEY_Proba" AS "KEY_Proba", "arg_max_t_Proba"."arg_max_Proba" AS "arg_max_Proba" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Proba", min(union_with_max.class) AS "arg_max_Proba" 
FROM union_with_max 
WHERE union_with_max."max_Proba" <= union_with_max."Proba" GROUP BY union_with_max."KEY") AS "arg_max_t_Proba" ON score_max."KEY" = "arg_max_t_Proba"."KEY_Proba")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Proba" AS "Decision", arg_max_cte."max_Proba" AS "DecisionProba" 
FROM arg_max_cte