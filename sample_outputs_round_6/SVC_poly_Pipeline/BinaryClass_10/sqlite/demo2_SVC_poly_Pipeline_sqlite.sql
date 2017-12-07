-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "ADS_imp_1_OUT" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_0" IS NULL) THEN 0.0443670253063 ELSE "ADS"."Feature_0" END AS impter_2, CASE WHEN ("ADS"."Feature_1" IS NULL) THEN -0.108443943804 ELSE "ADS"."Feature_1" END AS impter_3, CASE WHEN ("ADS"."Feature_2" IS NULL) THEN 0.0860998189089 ELSE "ADS"."Feature_2" END AS impter_4, CASE WHEN ("ADS"."Feature_3" IS NULL) THEN -0.117330528578 ELSE "ADS"."Feature_3" END AS impter_5, CASE WHEN ("ADS"."Feature_4" IS NULL) THEN 0.041767354518 ELSE "ADS"."Feature_4" END AS impter_6, CASE WHEN ("ADS"."Feature_5" IS NULL) THEN 0.0526057817946 ELSE "ADS"."Feature_5" END AS impter_7, CASE WHEN ("ADS"."Feature_6" IS NULL) THEN 0.131357455155 ELSE "ADS"."Feature_6" END AS impter_8, CASE WHEN ("ADS"."Feature_7" IS NULL) THEN -0.0117112673472 ELSE "ADS"."Feature_7" END AS impter_9, CASE WHEN ("ADS"."Feature_8" IS NULL) THEN -0.0258439667412 ELSE "ADS"."Feature_8" END AS impter_10, CASE WHEN ("ADS"."Feature_9" IS NULL) THEN 0.176403280666 ELSE "ADS"."Feature_9" END AS impter_11 
FROM "BinaryClass_10" AS "ADS"), 
"ADS_sca_2_OUT" AS 
(SELECT "ADS_imp_1_OUT"."KEY" AS "KEY", (CAST("ADS_imp_1_OUT".impter_2 AS FLOAT) - 0.0443670253063) / 1.46294773503 AS scaler_2, (CAST("ADS_imp_1_OUT".impter_3 AS FLOAT) - -0.108443943804) / 1.2139207506 AS scaler_3, (CAST("ADS_imp_1_OUT".impter_4 AS FLOAT) - 0.0860998189089) / 1.21577118198 AS scaler_4, (CAST("ADS_imp_1_OUT".impter_5 AS FLOAT) - -0.117330528578) / 1.61458683761 AS scaler_5, (CAST("ADS_imp_1_OUT".impter_6 AS FLOAT) - 0.041767354518) / 1.12641836698 AS scaler_6, (CAST("ADS_imp_1_OUT".impter_7 AS FLOAT) - 0.0526057817946) / 0.904234317785 AS scaler_7, (CAST("ADS_imp_1_OUT".impter_8 AS FLOAT) - 0.131357455155) / 0.911380957121 AS scaler_8, (CAST("ADS_imp_1_OUT".impter_9 AS FLOAT) - -0.0117112673472) / 1.1923075513 AS scaler_9, (CAST("ADS_imp_1_OUT".impter_10 AS FLOAT) - -0.0258439667412) / 1.01352160031 AS scaler_10, (CAST("ADS_imp_1_OUT".impter_11 AS FLOAT) - 0.176403280666) / 0.97699113857 AS scaler_11 
FROM "ADS_imp_1_OUT"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.537027877817 AS dual_coeff, -0.910974648456 AS sv_0, -0.961367666823 AS sv_1, 1.35705222034 AS sv_2, 0.138725555806 AS sv_3, -0.607034265032 AS sv_4, 1.01379496746 AS sv_5, 0.532778407107 AS sv_6, -0.157534527521 AS sv_7, 0.600077928541 AS sv_8, -0.262133842849 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.510575891345 AS sv_0, -0.918037239973 AS sv_1, 1.12311259825 AS sv_2, -0.134926488442 AS sv_3, -0.3344104013 AS sv_4, 0.577298691233 AS sv_5, 1.1747089821 AS sv_6, 0.614636306237 AS sv_7, -0.132013433517 AS sv_8, -1.15504223522 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -1.0 AS dual_coeff, -1.04206021293 AS sv_0, -0.617238779078 AS sv_1, 1.0911009807 AS sv_2, 0.429271140993 AS sv_3, 0.0652466668827 AS sv_4, -0.403781728601 AS sv_5, -1.04199927563 AS sv_6, -0.800805242688 AS sv_7, 0.657377268928 AS sv_8, 0.815424866155 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -1.0 AS dual_coeff, -0.341844993982 AS sv_0, 0.00512390672683 AS sv_1, 0.159465068713 AS sv_2, 0.257254640353 AS sv_3, 0.62492020934 AS sv_4, 0.370324897856 AS sv_5, -0.0408697460506 AS sv_6, -0.405597642257 AS sv_7, 1.42422205023 AS sv_8, 1.51076053453 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.0500674801757 AS dual_coeff, 0.862806784883 AS sv_0, -0.963015727814 AS sv_1, 0.505771168081 AS sv_2, -1.18214274372 AS sv_3, -0.983534034335 AS sv_4, 0.385565742359 AS sv_5, -0.763906595801 AS sv_6, 1.39977379296 AS sv_7, 0.499726182708 AS sv_8, 1.89902535476 AS sv_9 UNION ALL SELECT 5 AS sv_idx, -1.0 AS dual_coeff, 0.698531394498 AS sv_0, -0.0919595215108 AS sv_1, -0.247951670115 AS sv_2, -0.571380141203 AS sv_3, -0.0169835134979 AS sv_4, -0.487963220865 AS sv_5, -1.04901426137 AS sv_6, 0.653517629502 AS sv_7, -0.61241367971 AS sv_8, -0.303188134837 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.0470975190147 AS dual_coeff, 1.13217853948 AS sv_0, -0.756288063913 AS sv_1, 0.178627206607 AS sv_2, -1.26665335289 AS sv_3, 0.015729460067 AS sv_4, 1.80345601581 AS sv_5, -1.43157301121 AS sv_6, -2.24781186386 AS sv_7, 0.25872293454 AS sv_8, 2.34949941304 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.121455530932 AS dual_coeff, -0.59475886275 AS sv_0, -0.696223990964 AS sv_1, 0.951540770839 AS sv_2, 0.0521180922549 AS sv_3, -1.81155584526 AS sv_4, -0.00597954971624 AS sv_5, 1.00966166074 AS sv_6, 2.89356344358 AS sv_7, 0.382481800832 AS sv_8, 1.25862916372 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.0839555750074 AS dual_coeff, 0.265765948162 AS sv_0, -0.725163950954 AS sv_1, 0.565455449856 AS sv_2, -0.604464485725 AS sv_3, 0.460169411971 AS sv_4, 1.17019832292 AS sv_5, -0.0643618091941 AS sv_6, -0.0682124627263 AS sv_7, 3.04839571618 AS sv_8, -1.79637121941 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.29807220484 AS sv_0, -0.149269915457 AS sv_1, 0.286015292601 AS sv_2, 0.138092095475 AS sv_3, 0.60632475179 AS sv_4, -1.50421969339 AS sv_5, 1.46632172329 AS sv_6, 0.975370845285 AS sv_7, 0.493380747878 AS sv_8, 0.536508229518 AS sv_9 UNION ALL SELECT 10 AS sv_idx, -1.0 AS dual_coeff, 0.8965076974 AS sv_0, -0.678769040587 AS sv_1, 0.217834430785 AS sv_2, -1.0478055935 AS sv_3, -0.156176311241 AS sv_4, -0.574255864203 AS sv_5, 1.58540613031 AS sv_6, 0.342300177551 AS sv_7, -0.477262584792 AS sv_8, -0.118140630427 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.0429001010206 AS dual_coeff, 1.10678569646 AS sv_0, -0.771064581098 AS sv_1, 0.204962397501 AS sv_2, -1.25604467266 AS sv_3, -1.12108961172 AS sv_4, -0.329019525444 AS sv_5, 0.956870504691 AS sv_6, -0.268284223759 AS sv_7, -1.54031388912 AS sv_8, -0.76233983596 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, -0.404779790628 AS sv_0, -0.30949797588 AS sv_1, 0.490495774624 AS sv_2, 0.127636168463 AS sv_3, 1.17486139185 AS sv_4, -0.224511283841 AS sv_5, -0.609760771148 AS sv_6, 0.10662756703 AS sv_7, -0.540146297677 AS sv_8, -1.18248292089 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.0889212737451 AS sv_0, 0.142288650109 AS sv_1, -0.178778958658 AS sv_2, 0.0136304133862 AS sv_3, 0.124881207413 AS sv_4, -1.49634305944 AS sv_5, -1.57396376957 AS sv_6, -1.24598775708 AS sv_7, 0.948099618787 AS sv_8, 0.686605262046 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, -0.44359213056 AS sv_0, -0.906263157045 AS sv_1, 1.07965022186 AS sv_2, -0.178168557164 AS sv_3, -0.461501241023 AS sv_4, -0.225478141099 AS sv_5, 1.18799467806 AS sv_6, -0.643395124734 AS sv_7, 0.482460661281 AS sv_8, -0.596914410771 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.185665905523 AS dual_coeff, 1.07376460157 AS sv_0, -0.964689117986 AS sv_1, 0.405939700636 AS sv_2, -1.34006366144 AS sv_3, 0.0478902444824 AS sv_4, 1.87851163132 AS sv_5, 0.504049072721 AS sv_6, -0.135816036364 AS sv_7, 0.680297933988 AS sv_8, -1.17079896522 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -1.0 AS dual_coeff, 0.126892548853 AS sv_0, -0.233046996234 AS sv_1, 0.16177571096 AS sv_2, -0.225126815568 AS sv_3, -0.958250999142 AS sv_4, -0.235498222765 AS sv_5, -0.354670570832 AS sv_6, 0.338337697344 AS sv_7, 0.487246128916 AS sv_8, 0.2703351616 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.288552742527 AS sv_0, -0.495407993257 AS sv_1, 0.334858169356 AS sv_2, -0.492565978638 AS sv_3, 0.184655703498 AS sv_4, 0.66784846155 AS sv_5, 0.17271727757 AS sv_6, -0.336444020503 AS sv_7, 0.369357167243 AS sv_8, 0.220900030523 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -0.113385859062 AS dual_coeff, -1.05371150331 AS sv_0, -1.17215839464 AS sv_1, 1.62719270977 AS sv_2, 0.126723199888 AS sv_3, 0.0960375522751 AS sv_4, 0.90945291408 AS sv_5, 0.731899003893 AS sv_6, 0.539285111488 AS sv_7, -1.29137743879 AS sv_8, 0.701726466065 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.00688429565606 AS dual_coeff, -0.327328078655 AS sv_0, -0.398287522633 AS sv_1, 0.538136656275 AS sv_2, 0.0202048971269 AS sv_3, 2.66696137256 AS sv_4, -0.495077803558 AS sv_5, -1.08465696431 AS sv_6, -2.02572519664 AS sv_7, -1.63026749942 AS sv_8, 0.0573705146844 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -0.0776948731812 AS dual_coeff, 0.71431155722 AS sv_0, -0.318106206184 AS sv_1, -0.0393482477378 AS sv_2, -0.709953708248 AS sv_3, 2.83459622326 AS sv_4, 2.14353275099 AS sv_5, -0.216225567126 AS sv_6, 0.459117068411 AS sv_7, 1.39105548437 AS sv_8, 0.942922556585 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -1.0 AS dual_coeff, 1.06749266524 AS sv_0, -0.49090427454 AS sv_1, -0.0439714475644 AS sv_2, -1.06968149862 AS sv_3, -1.03393355265 AS sv_4, -0.147330941117 AS sv_5, -0.204597053684 AS sv_6, 0.586590649522 AS sv_7, 0.652570294782 AS sv_8, -0.787178122753 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -0.788070793556 AS sv_0, -0.5139057764 AS sv_1, 0.870195819312 AS sv_2, 0.298219854186 AS sv_3, 0.196211452808 AS sv_4, 0.670025361803 AS sv_5, 0.532632787151 AS sv_6, -0.930342334321 AS sv_7, 0.205748393907 AS sv_8, 1.01626011431 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -1.0 AS dual_coeff, 0.403921731135 AS sv_0, 1.16202364545 AS sv_1, -1.30507699145 AS sv_2, 0.351128283042 AS sv_3, 0.0357899561792 AS sv_4, 0.983513411977 AS sv_5, 0.739354452773 AS sv_6, -1.74286343123 AS sv_7, -0.842953440361 AS sv_8, -0.183341075872 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -0.501843040287 AS dual_coeff, 1.12072112799 AS sv_0, -0.519525045223 AS sv_1, -0.0422036060931 AS sv_2, -1.12534251559 AS sv_3, -1.41052673071 AS sv_4, 0.0769845648839 AS sv_5, -0.925816986164 AS sv_6, 0.63916357388 AS sv_7, -1.67606960163 AS sv_8, 0.363732786652 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -1.0 AS dual_coeff, -0.591392702681 AS sv_0, -0.513490385984 AS sv_1, 0.775233401346 AS sv_2, 0.152096530618 AS sv_3, 0.0345270398776 AS sv_4, -1.25207572557 AS sv_5, 1.16949471273 AS sv_6, -1.04615328931 AS sv_7, -0.789164570064 AS sv_8, 0.610363914221 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.874314615084 AS sv_0, 0.776981143182 AS sv_1, -1.16315658527 AS sv_2, -0.214855662286 AS sv_3, -1.02824427175 AS sv_4, 0.768043008296 AS sv_5, 1.31202315848 AS sv_6, 0.140732268723 AS sv_7, 0.266085505505 AS sv_8, -0.662524293919 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.599562317822 AS sv_0, 0.743100365559 AS sv_1, -0.998663005581 AS sv_2, -0.0294026464681 AS sv_3, 0.185044382882 AS sv_4, 0.754087991418 AS sv_5, -0.315168465362 AS sv_6, -0.72789859842 AS sv_7, 0.404901887684 AS sv_8, 1.19768695027 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.314509599105 AS sv_0, 0.978654762934 AS sv_1, -1.08679031996 AS sv_2, 0.314823919886 AS sv_3, -0.43275823665 AS sv_4, -0.495487831816 AS sv_5, 0.565819619518 AS sv_6, 0.229382071204 AS sv_7, 0.268650656722 AS sv_8, 1.12831334153 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 1.03292539789 AS sv_0, 0.611594834456 AS sv_1, -1.0813133724 AS sv_2, -0.425638867611 AS sv_3, -1.34400661351 AS sv_4, 1.1868772216 AS sv_5, -0.636741631981 AS sv_6, 0.180398841222 AS sv_7, 1.03891695995 AS sv_8, 1.41568999173 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.633199435164 AS dual_coeff, 1.10953068043 AS sv_0, 1.15500778936 AS sv_1, -1.63763571539 AS sv_2, -0.177879208221 AS sv_3, 1.72418736538 AS sv_4, -0.774645694298 AS sv_5, -0.119160179139 AS sv_6, -0.227612425859 AS sv_7, -0.698053903765 AS sv_8, -0.765754963059 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 1.0 AS dual_coeff, 0.27182074603 AS sv_0, 0.730583296798 AS sv_1, -0.829114697678 AS sv_2, 0.207463384774 AS sv_3, -1.63828784524 AS sv_4, -0.452383483057 AS sv_5, -0.826393592684 AS sv_6, 0.0567988086367 AS sv_7, -0.228140537742 AS sv_8, -0.373534165871 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, -0.340462310093 AS sv_0, 0.357472162093 AS sv_1, -0.1780360963 AS sv_2, 0.45383483803 AS sv_3, -0.730355112404 AS sv_4, 0.116321874436 AS sv_5, 0.627679637769 AS sv_6, -0.32912820045 AS sv_7, -1.15572294108 AS sv_8, -0.974742925125 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.46691984316 AS dual_coeff, -1.2708934621 AS sv_0, 0.799048293243 AS sv_1, -0.152809054634 AS sv_2, 1.39385827298 AS sv_3, 0.538003642983 AS sv_4, 0.60037163399 AS sv_5, 2.20132862033 AS sv_6, -0.658313761975 AS sv_7, -1.74791437704 AS sv_8, 0.877649782896 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 0.281742234696 AS sv_0, -0.543400565083 AS sv_1, 0.384012477836 AS sv_2, -0.514413895671 AS sv_3, -0.841680792056 AS sv_4, -0.818335242312 AS sv_5, 0.34137451985 AS sv_6, -0.111125084251 AS sv_7, 1.1309316647 AS sv_8, 2.19634633183 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, 0.314324101603 AS sv_0, 1.03648764642 AS sv_1, -1.1419879589 AS sv_2, 0.347396641101 AS sv_3, 0.468499491187 AS sv_4, -0.0587804944217 AS sv_5, -1.46362490178 AS sv_6, 0.961768581148 AS sv_7, -1.06952515579 AS sv_8, -0.768452066521 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.0626770441957 AS dual_coeff, -1.23914363308 AS sv_0, 1.31602811797 AS sv_1, -0.662294899122 AS sv_2, 1.6601721123 AS sv_3, 0.235610710682 AS sv_4, 0.140835896671 AS sv_5, -1.43483446835 AS sv_6, -2.35894362446 AS sv_7, -0.378978581595 AS sv_8, 0.437854068654 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.461744815784 AS sv_0, 0.69890920278 AS sv_1, -0.890152931025 AS sv_2, 0.0483691125041 AS sv_3, -0.632581717124 AS sv_4, 0.744748162889 AS sv_5, 1.42684965732 AS sv_6, -0.743785923485 AS sv_7, -0.288703831303 AS sv_8, -1.15791554209 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, -0.748435145204 AS sv_0, 1.0398333669 AS sv_1, -0.634198292283 AS sv_2, 1.14011607744 AS sv_3, 1.03058934385 AS sv_4, -0.50515576791 AS sv_5, -0.0584967352399 AS sv_6, -0.36883183297 AS sv_7, 0.106114358295 AS sv_8, 1.14776374958 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.253415508503 AS dual_coeff, 1.83139200129 AS sv_0, 0.69319095267 AS sv_1, -1.54323012134 AS sv_2, -0.974048908254 AS sv_3, 1.01100100909 AS sv_4, 0.773610028685 AS sv_5, 0.318921932028 AS sv_6, 0.617990093015 AS sv_7, 1.35166303127 AS sv_8, -0.925585504062 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 0.0761085285972 AS sv_0, -0.0393724227575 AS sv_1, 0.00104513388982 AS sv_2, -0.0787169177681 AS sv_3, 0.106401373072 AS sv_4, -0.0627267552592 AS sv_5, -1.35895487048 AS sv_6, 0.581245393838 AS sv_7, 1.28094393316 AS sv_8, -0.797156518346 AS sv_9 UNION ALL SELECT 41 AS sv_idx, 0.908918476194 AS dual_coeff, -0.127430366843 AS sv_0, 1.66935203245 AS sv_1, -1.53458976453 AS sv_2, 1.03105665789 AS sv_3, -0.388276250904 AS sv_4, 1.14602443135 AS sv_5, 0.166449241008 AS sv_6, 1.05785780663 AS sv_7, -0.423885477243 AS sv_8, 0.186954940965 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.0541642276524 AS dual_coeff, 0.781862383537 AS sv_0, 0.955918655205 AS sv_1, -1.28976428716 AS sv_2, -0.0457037825238 AS sv_3, -0.871290515105 AS sv_4, 1.58651652688 AS sv_5, -1.02028280718 AS sv_6, -0.69044457751 AS sv_7, 0.264177514264 AS sv_8, 1.32868018544 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, -0.331424514265 AS sv_0, 0.735538191334 AS sv_1, -0.543803501645 AS sv_2, 0.659141969474 AS sv_3, -0.102494619173 AS sv_4, 0.697916324104 AS sv_5, -1.46080636473 AS sv_6, -0.0840543660635 AS sv_7, 0.495713583332 AS sv_8, -0.566709319018 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.527311866234 AS sv_0, 0.739208170054 AS sv_1, -0.960203230071 AS sv_2, 0.0221790199207 AS sv_3, 1.21876558526 AS sv_4, 0.606523055744 AS sv_5, 0.437042392739 AS sv_6, 0.0147478786413 AS sv_7, 0.609929246208 AS sv_8, -0.497300800805 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, -1.37268753026 AS sv_0, 0.845100154684 AS sv_1, -0.147889636829 AS sv_2, 1.49543492202 AS sv_3, 0.813457092492 AS sv_4, -0.570872925144 AS sv_5, -0.580656173466 AS sv_6, -0.215129903629 AS sv_7, -0.0189154483054 AS sv_8, -1.97657673788 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.0185266914081 AS dual_coeff, -1.83873372641 AS sv_0, 1.35808398364 AS sv_1, -0.414208778676 AS sv_2, 2.12993824643 AS sv_3, -2.0380670999 AS sv_4, 0.17595437449 AS sv_5, 1.16706534644 AS sv_6, 0.190433315043 AS sv_7, -0.759818620635 AS sv_8, 0.640916226575 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.3701568314 AS dual_coeff, -1.42823189751 AS sv_0, 0.734791236249 AS sv_1, -0.0157305619949 AS sv_2, 1.47490271584 AS sv_3, 0.551236659242 AS sv_4, -0.800542590498 AS sv_5, 0.202344124852 AS sv_6, 2.27792814512 AS sv_7, 1.66615296388 AS sv_8, 0.919777003341 AS sv_9) AS "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) + -0.36093832144 AS dot_product 
FROM (SELECT "ADS_sca_2_OUT"."KEY" AS "KEY", "SV_data".dual_coeff * power(0.1 * ("ADS_sca_2_OUT".scaler_2 * "SV_data".sv_0 + "ADS_sca_2_OUT".scaler_3 * "SV_data".sv_1 + "ADS_sca_2_OUT".scaler_4 * "SV_data".sv_2 + "ADS_sca_2_OUT".scaler_5 * "SV_data".sv_3 + "ADS_sca_2_OUT".scaler_6 * "SV_data".sv_4 + "ADS_sca_2_OUT".scaler_7 * "SV_data".sv_5 + "ADS_sca_2_OUT".scaler_8 * "SV_data".sv_6 + "ADS_sca_2_OUT".scaler_9 * "SV_data".sv_7 + "ADS_sca_2_OUT".scaler_10 * "SV_data".sv_8 + "ADS_sca_2_OUT".scaler_11 * "SV_data".sv_9) + 0.0, 3) AS dot_prod1 
FROM "ADS_sca_2_OUT", "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_cte."KEY" AS "KEY", -kernel_cte.dot_product AS "Score_0", kernel_cte.dot_product AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (kernel_cte.dot_product >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM kernel_cte