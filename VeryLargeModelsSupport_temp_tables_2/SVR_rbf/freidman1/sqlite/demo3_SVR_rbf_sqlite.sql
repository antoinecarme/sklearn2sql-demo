-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_rbf
-- Dataset : freidman1
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM freidman1 AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3, CAST("Values".sv_4 AS FLOAT) AS sv_4, CAST("Values".sv_5 AS FLOAT) AS sv_5, CAST("Values".sv_6 AS FLOAT) AS sv_6, CAST("Values".sv_7 AS FLOAT) AS sv_7, CAST("Values".sv_8 AS FLOAT) AS sv_8, CAST("Values".sv_9 AS FLOAT) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, 0.693923955193759 AS sv_0, 0.0741781212105147 AS sv_1, 0.9354970990229087 AS sv_2, 0.4640783341563046 AS sv_3, 0.41582805769838727 AS sv_4, 0.189475061881763 AS sv_5, 0.09995386118122851 AS sv_6, 0.14819345970599818 AS sv_7, 0.7870377755058512 AS sv_8, 0.46439017391795956 AS sv_9 UNION ALL SELECT 1 AS sv_idx, 0.1 AS dual_coeff, 0.9365282886230081 AS sv_0, 0.32590269318167553 AS sv_1, 0.8759603694390158 AS sv_2, 0.79533946782015 AS sv_3, 0.9456469694233068 AS sv_4, 0.7086688273455976 AS sv_5, 0.7591552800283827 AS sv_6, 0.7964480648423423 AS sv_7, 0.3938107344146389 AS sv_8, 0.5301399518704369 AS sv_9 UNION ALL SELECT 2 AS sv_idx, -0.1 AS dual_coeff, 0.3615698457796095 AS sv_0, 0.5929801883894559 AS sv_1, 0.35635338649589077 AS sv_2, 0.2677803732331451 AS sv_3, 0.17066870867496198 AS sv_4, 0.012307267911704223 AS sv_5, 0.33802568469988337 AS sv_6, 0.13989914886952015 AS sv_7, 0.5457899619549169 AS sv_8, 0.5049507612883856 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 0.1 AS dual_coeff, 0.30069635129007477 AS sv_0, 0.7204188000602999 AS sv_1, 0.5829040809418105 AS sv_2, 0.6426497763057181 AS sv_3, 0.9190510905934363 AS sv_4, 0.6645343120400884 AS sv_5, 0.6843112802137344 AS sv_6, 0.4055338962001863 AS sv_7, 0.019985592777493122 AS sv_8, 0.12320942082046549 AS sv_9 UNION ALL SELECT 4 AS sv_idx, 0.1 AS dual_coeff, 0.8558166339180842 AS sv_0, 0.8683631198596637 AS sv_1, 0.32368540331494966 AS sv_2, 0.9423047942542754 AS sv_3, 0.030289584991099905 AS sv_4, 0.3594900817370913 AS sv_5, 0.3807384106815942 AS sv_6, 0.43864670012997886 AS sv_7, 0.15288481675519405 AS sv_8, 0.003622023715767142 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, 0.7113399330260444 AS sv_0, 0.8276251380809095 AS sv_1, 0.6966767109883927 AS sv_2, 0.5713051217834823 AS sv_3, 0.6527047802045267 AS sv_4, 0.41755845353693377 AS sv_5, 0.46371995112452347 AS sv_6, 0.9037753969878485 AS sv_7, 0.9143864801316212 AS sv_8, 0.8647669667038388 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 0.015021310253122144 AS sv_0, 0.0006034056357101525 AS sv_1, 0.3404027104874394 AS sv_2, 0.8813039096423059 AS sv_3, 0.4906546600839298 AS sv_4, 0.7298679563207288 AS sv_5, 0.7514738660771196 AS sv_6, 0.13145116809009816 AS sv_7, 0.0014719983074734655 AS sv_8, 0.08511191458315925 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 0.1 AS dual_coeff, 0.6508068217649317 AS sv_0, 0.8247059834072795 AS sv_1, 0.14354024845151192 AS sv_2, 0.980592685000836 AS sv_3, 0.005807417979881824 AS sv_4, 0.2518415193774599 AS sv_5, 0.5213342271064282 AS sv_6, 0.4723008536699548 AS sv_7, 0.7446274145722073 AS sv_8, 0.9246013488604747 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -0.1 AS dual_coeff, 0.4044233091919264 AS sv_0, 0.26040655407607516 AS sv_1, 0.03866274947464787 AS sv_2, 0.35780763024550366 AS sv_3, 0.1975869393049412 AS sv_4, 0.089709703055459 AS sv_5, 0.44963351204713553 AS sv_6, 0.08639297884180575 AS sv_7, 0.25282852707475845 AS sv_8, 0.24384082410665975 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -0.1 AS dual_coeff, 0.6487598477422791 AS sv_0, 0.2818865078416276 AS sv_1, 0.6291187273491999 AS sv_2, 0.20235358579738383 AS sv_3, 0.054305830277497025 AS sv_4, 0.9085281642538757 AS sv_5, 0.48144031373730045 AS sv_6, 0.38894798027734434 AS sv_7, 0.307483000073309 AS sv_8, 0.015107018517469206 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, 0.44078068561234063 AS sv_0, 0.8286410350022047 AS sv_1, 0.003919208797683704 AS sv_2, 0.5571236322358512 AS sv_3, 0.7141812905982134 AS sv_4, 0.934252008705201 AS sv_5, 0.38564510799136065 AS sv_6, 0.08956531528989586 AS sv_7, 0.9071506984172727 AS sv_8, 0.3627692472499402 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, 0.7651752581595906 AS sv_0, 0.5711340776037424 AS sv_1, 0.6877221464619643 AS sv_2, 0.6396386067545966 AS sv_3, 0.18000679872560887 AS sv_4, 0.8884389875708198 AS sv_5, 0.8746073175788042 AS sv_6, 0.32637838598406343 AS sv_7, 0.30293111693014707 AS sv_8, 0.2766979759593161 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -0.1 AS dual_coeff, 0.018569394722334986 AS sv_0, 0.7669783085671145 AS sv_1, 0.9369392482819459 AS sv_2, 0.7535269717445015 AS sv_3, 0.12450748302261394 AS sv_4, 0.9844996586806277 AS sv_5, 0.5757020106557555 AS sv_6, 0.07600389087024861 AS sv_7, 0.7985736277571945 AS sv_8, 0.6273009161955346 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 0.1 AS dual_coeff, 0.6972654712022256 AS sv_0, 0.9444972613447818 AS sv_1, 0.006541511214480322 AS sv_2, 0.8785989417171546 AS sv_3, 0.0657377691465626 AS sv_4, 0.8975156369365571 AS sv_5, 0.343137976778491 AS sv_6, 0.5442232419540632 AS sv_7, 0.9442967183771754 AS sv_8, 0.1511660522155277 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 0.6643742352789134 AS sv_0, 0.8031389634304898 AS sv_1, 0.3440457365849323 AS sv_2, 0.6336641679630896 AS sv_3, 0.7724779253775678 AS sv_4, 0.9400631649358863 AS sv_5, 0.6875457518238411 AS sv_6, 0.6223146535100572 AS sv_7, 0.1351649533369088 AS sv_8, 0.8927924694418754 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -0.1 AS dual_coeff, 0.8250361197375535 AS sv_0, 0.2385958562844518 AS sv_1, 0.533834716927703 AS sv_2, 0.37869801330871256 AS sv_3, 0.9719219616360474 AS sv_4, 0.7582697267753132 AS sv_5, 0.7914114764541101 AS sv_6, 0.6407258973480201 AS sv_7, 0.7803364203742906 AS sv_8, 0.5550930132964156 AS sv_9 UNION ALL SELECT 16 AS sv_idx, -0.1 AS dual_coeff, 0.7797905623008367 AS sv_0, 0.004283194536650381 AS sv_1, 0.45736238588110856 AS sv_2, 0.7591698137341283 AS sv_3, 0.5727811851412551 AS sv_4, 0.9156145402080297 AS sv_5, 0.1579290629800708 AS sv_6, 0.048856981406643296 AS sv_7, 0.48396329258009607 AS sv_8, 0.9403621871414916 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 0.1 AS dual_coeff, 0.4805360591852459 AS sv_0, 0.7264611586160685 AS sv_1, 0.9530009720103574 AS sv_2, 0.2880612751081213 AS sv_3, 0.8375661114941836 AS sv_4, 0.23586610851414558 AS sv_5, 0.8696933635755417 AS sv_6, 0.6905325918196634 AS sv_7, 0.6041894756986094 AS sv_8, 0.4847756716791647 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -0.1 AS dual_coeff, 0.8668252431496181 AS sv_0, 0.1072168963991238 AS sv_1, 0.30160597930503374 AS sv_2, 0.10871860932955102 AS sv_3, 0.5608345556620697 AS sv_4, 0.7997834844596228 AS sv_5, 0.8186187306957274 AS sv_6, 0.19773740246826788 AS sv_7, 0.7929933027541831 AS sv_8, 0.24728590737880873 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, 0.9905100509818122 AS sv_0, 0.03266022032489613 AS sv_1, 0.3920948845870472 AS sv_2, 0.8082040549619474 AS sv_3, 0.39680841547582124 AS sv_4, 0.9056123453666111 AS sv_5, 0.8810248170488273 AS sv_6, 0.4280039175885251 AS sv_7, 0.15137669757753114 AS sv_8, 0.3573584313699357 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 0.6879782669900801 AS sv_0, 0.7139083874563263 AS sv_1, 0.22817076971416228 AS sv_2, 0.32444789256042306 AS sv_3, 0.4391937147026179 AS sv_4, 0.6653185629710004 AS sv_5, 0.6277642001440132 AS sv_6, 0.2836608858087605 AS sv_7, 0.7532051572559786 AS sv_8, 0.4750745345624974 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, 0.14898823012279883 AS sv_0, 0.5016443617767753 AS sv_1, 0.20234456185371796 AS sv_2, 0.9774053424912685 AS sv_3, 0.287194457958574 AS sv_4, 0.4407289885227632 AS sv_5, 0.07289425728619492 AS sv_6, 0.33658313027829456 AS sv_7, 0.8551789677713602 AS sv_8, 0.03020099888736394 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -0.1 AS dual_coeff, 0.7642931245692377 AS sv_0, 0.20858810711332798 AS sv_1, 0.7501154847733108 AS sv_2, 0.5459253313470611 AS sv_3, 0.05555683279187529 AS sv_4, 0.7016368216615959 AS sv_5, 0.26523222910347455 AS sv_6, 0.11959763981915061 AS sv_7, 0.37591049526769804 AS sv_8, 0.6447399191046476 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 0.1 AS dual_coeff, 0.8255815423347828 AS sv_0, 0.9063448888684774 AS sv_1, 0.029026452288315685 AS sv_2, 0.5890092986610974 AS sv_3, 0.43123186558465754 AS sv_4, 0.9058721736276769 AS sv_5, 0.4560940687108932 AS sv_6, 0.6896879818609426 AS sv_7, 0.7470342432713207 AS sv_8, 0.06312457787809178 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.3454797097579463 AS sv_0, 0.9107314550687862 AS sv_1, 0.7243698164486757 AS sv_2, 0.609810834299298 AS sv_3, 0.9484486314429021 AS sv_4, 0.5427528686781514 AS sv_5, 0.613987885486019 AS sv_6, 0.41805724741390926 AS sv_7, 0.709949209237898 AS sv_8, 0.8792557252319532 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 0.1 AS dual_coeff, 0.27048614951616645 AS sv_0, 0.7155578115522746 AS sv_1, 0.10252882697920429 AS sv_2, 0.945603049026875 AS sv_3, 0.19508133595183474 AS sv_4, 0.18512101536678838 AS sv_5, 0.8387549476151748 AS sv_6, 0.9615704236086727 AS sv_7, 0.4879740995944759 AS sv_8, 0.48177324436256974 AS sv_9 UNION ALL SELECT 26 AS sv_idx, -0.1 AS dual_coeff, 0.07500600165004045 AS sv_0, 0.21797094655971583 AS sv_1, 0.3424709139847716 AS sv_2, 0.45256108182367927 AS sv_3, 0.4394226980931042 AS sv_4, 0.7775882873135233 AS sv_5, 0.813848795251494 AS sv_6, 0.35300739741813236 AS sv_7, 0.8266197960226379 AS sv_8, 0.864682228562219 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 0.1 AS dual_coeff, 0.6401480486313595 AS sv_0, 0.5610337010040864 AS sv_1, 0.1799438731349703 AS sv_2, 0.9473253216087352 AS sv_3, 0.4943022917928076 AS sv_4, 0.5681853819194683 AS sv_5, 0.8137150168169013 AS sv_6, 0.780963766676324 AS sv_7, 0.648147203260239 AS sv_8, 0.3707972314948712 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -0.1 AS dual_coeff, 0.7503397244364791 AS sv_0, 0.032203433979595575 AS sv_1, 0.33901119947237257 AS sv_2, 0.5281743135167912 AS sv_3, 0.9645023555462153 AS sv_4, 0.18112090617176702 AS sv_5, 0.38967389730358126 AS sv_6, 0.6348835503026178 AS sv_7, 0.013518045508856713 AS sv_8, 0.5780775777362427 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 0.38016834265134203 AS sv_0, 0.8175652657300848 AS sv_1, 0.09504745946367044 AS sv_2, 0.0759379199279675 AS sv_3, 0.7954087582385554 AS sv_4, 0.8288932024690606 AS sv_5, 0.04583748113370778 AS sv_6, 0.8825781792474706 AS sv_7, 0.04200922317476452 AS sv_8, 0.6077304058727953 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, 0.5913895792688406 AS sv_0, 0.6678313046060772 AS sv_1, 0.8731690017137779 AS sv_2, 0.7764874780202456 AS sv_3, 0.9406064572716946 AS sv_4, 0.9782254861027883 AS sv_5, 0.540624983940059 AS sv_6, 0.8701343751155143 AS sv_7, 0.7131899958464704 AS sv_8, 0.42047567808180897 AS sv_9 UNION ALL SELECT 31 AS sv_idx, 0.1 AS dual_coeff, 0.6355254589142619 AS sv_0, 0.3104345307175761 AS sv_1, 0.34782116643449046 AS sv_2, 0.7485420201652111 AS sv_3, 0.8500581711383688 AS sv_4, 0.7900702963170074 AS sv_5, 0.12236838619467139 AS sv_6, 0.3596340972484052 AS sv_7, 0.3103367860367532 AS sv_8, 0.1426493813730133 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -0.1 AS dual_coeff, 0.30218992230977715 AS sv_0, 0.10447884771648441 AS sv_1, 0.6868310612594289 AS sv_2, 0.7948889514969302 AS sv_3, 0.6386171734947204 AS sv_4, 0.764941145919249 AS sv_5, 0.5471047301856969 AS sv_6, 0.9292093148893652 AS sv_7, 0.42926522555935076 AS sv_8, 0.8386388959149511 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -0.1 AS dual_coeff, 0.6910044567030683 AS sv_0, 0.20605940031875558 AS sv_1, 0.8431429271568792 AS sv_2, 0.2929347293172372 AS sv_3, 0.6300575841476006 AS sv_4, 0.9114331956103373 AS sv_5, 0.11155576673797052 AS sv_6, 0.4476196701736098 AS sv_7, 0.04309416057688986 AS sv_8, 0.9940891801131571 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 0.1 AS dual_coeff, 0.8358381420053874 AS sv_0, 0.6033663665946328 AS sv_1, 0.961895650382551 AS sv_2, 0.05268808199440811 AS sv_3, 0.6199067842944327 AS sv_4, 0.8351083446448072 AS sv_5, 0.4358960437269215 AS sv_6, 0.3375309253598989 AS sv_7, 0.42172706484900324 AS sv_8, 0.01846427693956154 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -0.1 AS dual_coeff, 0.5384102305994837 AS sv_0, 0.28037750547337037 AS sv_1, 0.15860104687264842 AS sv_2, 0.49895129783425696 AS sv_3, 0.5770564111785556 AS sv_4, 0.9338494091923242 AS sv_5, 0.15326716261726414 AS sv_6, 0.03359107390665783 AS sv_7, 0.7104185591645422 AS sv_8, 0.8612317521518238 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -0.1 AS dual_coeff, 0.325182019676443 AS sv_0, 0.5573384881257594 AS sv_1, 0.07674688939759333 AS sv_2, 0.25363173619843116 AS sv_3, 0.8063183503343665 AS sv_4, 0.048747149966324343 AS sv_5, 0.4815932648354033 AS sv_6, 0.4123158344477229 AS sv_7, 0.5784034259311219 AS sv_8, 0.8906071874858213 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 0.1 AS dual_coeff, 0.8040097090382655 AS sv_0, 0.4490646907281224 AS sv_1, 0.06631122256497202 AS sv_2, 0.8215852294504924 AS sv_3, 0.14682622275619406 AS sv_4, 0.6836935994910014 AS sv_5, 0.013761108155101898 AS sv_6, 0.09885208129108058 AS sv_7, 0.13520042959385026 AS sv_8, 0.04958261937647712 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 0.1 AS dual_coeff, 0.6800240853783431 AS sv_0, 0.5542972199729062 AS sv_1, 0.33538391269758494 AS sv_2, 0.3788112374887743 AS sv_3, 0.929127828049707 AS sv_4, 0.3743966905426851 AS sv_5, 0.9665551150753051 AS sv_6, 0.29077736034104595 AS sv_7, 0.7833479636539578 AS sv_8, 0.34626559922186095 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 0.1 AS dual_coeff, 0.6958353961616501 AS sv_0, 0.5017776396250101 AS sv_1, 0.7937187998169644 AS sv_2, 0.9678700273094228 AS sv_3, 0.20778030637448996 AS sv_4, 0.44268589962930094 AS sv_5, 0.6660011390251719 AS sv_6, 0.7384615882629801 AS sv_7, 0.06292766107513681 AS sv_8, 0.6574332757074332 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 0.1 AS dual_coeff, 0.7953951578925526 AS sv_0, 0.6900239013470612 AS sv_1, 0.02488339715856036 AS sv_2, 0.7542655552309983 AS sv_3, 0.3642076466292469 AS sv_4, 0.349217663055282 AS sv_5, 0.46616907766543325 AS sv_6, 0.9730883934542683 AS sv_7, 0.014718275423886706 AS sv_8, 0.39151009572836204 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, 0.09021190074277752 AS sv_0, 0.2269332423928172 AS sv_1, 0.4231538473843591 AS sv_2, 0.7540239837506534 AS sv_3, 0.11920432983287899 AS sv_4, 0.9294592774599648 AS sv_5, 0.044505714773144245 AS sv_6, 0.09788585131261551 AS sv_7, 0.3315202647270574 AS sv_8, 0.6285535124494456 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, 0.43484572122581433 AS sv_0, 0.9513170803117559 AS sv_1, 0.7186834936502194 AS sv_2, 0.5645075531365155 AS sv_3, 0.22490981039116453 AS sv_4, 0.654030475759852 AS sv_5, 0.33790536258448345 AS sv_6, 0.5885363495861798 AS sv_7, 0.21719666219398392 AS sv_8, 0.8322119322360952 AS sv_9 UNION ALL SELECT 43 AS sv_idx, -0.1 AS dual_coeff, 0.4877654317656115 AS sv_0, 0.32888758087186887 AS sv_1, 0.24756530669032106 AS sv_2, 0.5023812174636523 AS sv_3, 0.40936589052375116 AS sv_4, 0.4448843691563812 AS sv_5, 0.4981914680990417 AS sv_6, 0.5011030003415967 AS sv_7, 0.5263406714517238 AS sv_8, 0.6690042863220514 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 0.1 AS dual_coeff, 0.777615543480557 AS sv_0, 0.22799087239402005 AS sv_1, 0.26771418034857686 AS sv_2, 0.645180479099038 AS sv_3, 0.6970894087750684 AS sv_4, 0.7054993400803966 AS sv_5, 0.25643725071749246 AS sv_6, 0.8261214402277887 AS sv_7, 0.7530735802510689 AS sv_8, 0.24345096744635186 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, 0.24444268786670065 AS sv_0, 0.12232799475175549 AS sv_1, 0.08683393028667263 AS sv_2, 0.49096166785048057 AS sv_3, 0.2442604658565246 AS sv_4, 0.12881897216333205 AS sv_5, 0.36808010885570785 AS sv_6, 0.6482601086634314 AS sv_7, 0.16484155649355747 AS sv_8, 0.2127778238442638 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 0.30334793538245497 AS sv_0, 0.44247984033924814 AS sv_1, 0.24243646824053056 AS sv_2, 0.2830243931772205 AS sv_3, 0.9739564501996593 AS sv_4, 0.7012851268790045 AS sv_5, 0.13597022162039407 AS sv_6, 0.3694461065450365 AS sv_7, 0.08227721743073002 AS sv_8, 0.3005639808285524 AS sv_9 UNION ALL SELECT 47 AS sv_idx, -0.1 AS dual_coeff, 0.2836992071685661 AS sv_0, 0.5562543811545124 AS sv_1, 0.4033606609472742 AS sv_2, 0.010190616347653503 AS sv_3, 0.43473021523220345 AS sv_4, 0.8975339397682865 AS sv_5, 0.8680577939446797 AS sv_6, 0.22029473364357433 AS sv_7, 0.9363830929504634 AS sv_8, 0.7556297313287261 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -0.1 AS dual_coeff, 0.7538397918551462 AS sv_0, 0.14622430343179615 AS sv_1, 0.42050374948151836 AS sv_2, 0.3152331202112455 AS sv_3, 0.06143081371307535 AS sv_4, 0.3093215198935122 AS sv_5, 0.21825174115349721 AS sv_6, 0.462650975512517 AS sv_7, 0.910120788230267 AS sv_8, 0.5584579470472817 AS sv_9 UNION ALL SELECT 49 AS sv_idx, 0.1 AS dual_coeff, 0.8133947386214724 AS sv_0, 0.9526118388272407 AS sv_1, 0.8642819550705241 AS sv_2, 0.7722729180897906 AS sv_3, 0.40511112356740564 AS sv_4, 0.3509015729148923 AS sv_5, 0.19965000129258226 AS sv_6, 0.08694569048556866 AS sv_7, 0.04260837057858313 AS sv_8, 0.9004731099719213 AS sv_9 UNION ALL SELECT 50 AS sv_idx, -0.1 AS dual_coeff, 0.20562836726629963 AS sv_0, 0.9440716513312936 AS sv_1, 0.4895624792598544 AS sv_2, 0.6371731407367831 AS sv_3, 0.48694383739601765 AS sv_4, 0.9418248233771972 AS sv_5, 0.31144836807627496 AS sv_6, 0.36326243415892967 AS sv_7, 0.3520412262564764 AS sv_8, 0.9695902975683174 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 0.5452345124150317 AS sv_0, 0.8246564255606178 AS sv_1, 0.0605716539053518 AS sv_2, 0.14652046211665237 AS sv_3, 0.09975787679697001 AS sv_4, 0.6812391525293781 AS sv_5, 0.3279897179640998 AS sv_6, 0.6638046647489093 AS sv_7, 0.8460554165207508 AS sv_8, 0.3622710665229335 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -0.1 AS dual_coeff, 0.8855079299658417 AS sv_0, 0.15294734058996418 AS sv_1, 0.45628995073903356 AS sv_2, 0.3166518637587832 AS sv_3, 0.5425695400794094 AS sv_4, 0.12224714877720355 AS sv_5, 0.8849044067315783 AS sv_6, 0.7665229961000211 AS sv_7, 0.3466930553461237 AS sv_8, 0.7105182294811924 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -0.1 AS dual_coeff, 0.2572806806019938 AS sv_0, 0.01807732386109706 AS sv_1, 0.633597305054058 AS sv_2, 0.7325037070939067 AS sv_3, 0.4747965292587836 AS sv_4, 0.3230682282323345 AS sv_5, 0.5084128330498919 AS sv_6, 0.5887161092173093 AS sv_7, 0.4396138466261482 AS sv_8, 0.9651837394277827 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 0.1 AS dual_coeff, 0.8981731423166632 AS sv_0, 0.20481625102153989 AS sv_1, 0.6590117398404622 AS sv_2, 0.5547859500579124 AS sv_3, 0.9616624958244633 AS sv_4, 0.006159313154717183 AS sv_5, 0.8826656803523376 AS sv_6, 0.8303290306421373 AS sv_7, 0.666652340150686 AS sv_8, 0.45623122655513515 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 0.1 AS dual_coeff, 0.3244841690667478 AS sv_0, 0.8231632932589577 AS sv_1, 0.09919892723504464 AS sv_2, 0.5011973151070838 AS sv_3, 0.8587032782051556 AS sv_4, 0.03168081701194747 AS sv_5, 0.932092047764723 AS sv_6, 0.07485402658997453 AS sv_7, 0.5303613355149399 AS sv_8, 0.9850914252499385 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -0.1 AS dual_coeff, 0.3126275727624964 AS sv_0, 0.536080872850707 AS sv_1, 0.7849493833229624 AS sv_2, 0.037252973398734124 AS sv_3, 0.6220274689978966 AS sv_4, 0.2158607820965983 AS sv_5, 0.149543511914061 AS sv_6, 0.8026680423072734 AS sv_7, 0.8246314185786778 AS sv_8, 0.6597952329357618 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 0.1 AS dual_coeff, 0.8197168575512769 AS sv_0, 0.4599346029523994 AS sv_1, 0.022329347863018878 AS sv_2, 0.2004114184458654 AS sv_3, 0.4840695232096023 AS sv_4, 0.9214792385200912 AS sv_5, 0.12706925899257115 AS sv_6, 0.3261898976946841 AS sv_7, 0.42937250103733116 AS sv_8, 0.9187412327916503 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -0.1 AS dual_coeff, 0.28333204770330667 AS sv_0, 0.35738268140862905 AS sv_1, 0.7494669153820812 AS sv_2, 0.07808246369915006 AS sv_3, 0.12822958143870788 AS sv_4, 0.26293750193770205 AS sv_5, 0.9171232159502948 AS sv_6, 0.19423494194296742 AS sv_7, 0.6787264625845483 AS sv_8, 0.23327435515201644 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -0.1 AS dual_coeff, 0.5836556358077957 AS sv_0, 0.15255582238656729 AS sv_1, 0.6167730072746012 AS sv_2, 0.4247709763231319 AS sv_3, 0.19176235240070616 AS sv_4, 0.7475580701491157 AS sv_5, 0.30690852469086605 AS sv_6, 0.6939618167100556 AS sv_7, 0.2617327305845589 AS sv_8, 0.4866878273763954 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 0.1 AS dual_coeff, 0.7903886907696169 AS sv_0, 0.6585907277097893 AS sv_1, 0.7572356153727631 AS sv_2, 0.5226864841199097 AS sv_3, 0.3441595308948491 AS sv_4, 0.5689958461053408 AS sv_5, 0.4027856713793895 AS sv_6, 0.14725050747370605 AS sv_7, 0.9966853241577984 AS sv_8, 0.0656986931673732 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, 0.0011836099216243623 AS sv_0, 0.26580775429778813 AS sv_1, 0.995587810764828 AS sv_2, 0.7379542913119769 AS sv_3, 0.34992251566814236 AS sv_4, 0.3402561761617129 AS sv_5, 0.6131936495952924 AS sv_6, 0.9986250457514332 AS sv_7, 0.33857868492735843 AS sv_8, 0.5625583810454307 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 0.1 AS dual_coeff, 0.6598865220210027 AS sv_0, 0.028145303590523474 AS sv_1, 0.9190469129397445 AS sv_2, 0.9789510608844573 AS sv_3, 0.9218113431296101 AS sv_4, 0.7005527362676132 AS sv_5, 0.9010795705377558 AS sv_6, 0.28822294561209894 AS sv_7, 0.702518266508555 AS sv_8, 0.5716987344950712 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -0.1 AS dual_coeff, 0.6010111234543326 AS sv_0, 0.31053482917377706 AS sv_1, 0.21225847148006283 AS sv_2, 0.7116493232854302 AS sv_3, 0.32341545113161696 AS sv_4, 0.664776157266962 AS sv_5, 0.19709449652295807 AS sv_6, 0.7115988097231233 AS sv_7, 0.29387625252045546 AS sv_8, 0.6432904976493615 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 0.1 AS dual_coeff, 0.3922420371373826 AS sv_0, 0.8290580074557435 AS sv_1, 0.979651504500836 AS sv_2, 0.993827839877219 AS sv_3, 0.43578536957972447 AS sv_4, 0.941650711844808 AS sv_5, 0.41510811578335083 AS sv_6, 0.20852135693019114 AS sv_7, 0.26537649178083456 AS sv_8, 0.6367225568226381 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -0.1 AS dual_coeff, 0.9996662363577734 AS sv_0, 0.05130216489494721 AS sv_1, 0.7902072202716324 AS sv_2, 0.08022959941601326 AS sv_3, 0.43096081790346763 AS sv_4, 0.4940736800304265 AS sv_5, 0.31503359221256 AS sv_6, 0.5637296650735946 AS sv_7, 0.6058860696643238 AS sv_8, 0.8228184027494011 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -0.1 AS dual_coeff, 0.1679032802018684 AS sv_0, 0.36712883941261343 AS sv_1, 0.35581782004200124 AS sv_2, 0.1912561539685741 AS sv_3, 0.5217317448714821 AS sv_4, 0.4873614217193827 AS sv_5, 0.7253396569676331 AS sv_6, 0.17132136498288675 AS sv_7, 0.5709666936221692 AS sv_8, 0.5973867159743633 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -0.1 AS dual_coeff, 0.7456446012063542 AS sv_0, 0.14470389361259528 AS sv_1, 0.3182727668251967 AS sv_2, 0.024532253863200237 AS sv_3, 0.21246035065514002 AS sv_4, 0.4532224374265763 AS sv_5, 0.39302698928639446 AS sv_6, 0.5759636923366954 AS sv_7, 0.23964732894390617 AS sv_8, 0.8325946828342017 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, 0.804646338538296 AS sv_0, 0.6917833607322325 AS sv_1, 0.14038597953152565 AS sv_2, 0.09700721158453707 AS sv_3, 0.46158117311639546 AS sv_4, 0.6044504092190863 AS sv_5, 0.2630209432613737 AS sv_6, 0.925840437276973 AS sv_7, 0.7427228390963995 AS sv_8, 0.39552985330301427 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 0.1 AS dual_coeff, 0.9423405108913261 AS sv_0, 0.5568898847816935 AS sv_1, 0.5865578279980038 AS sv_2, 0.7305266227381803 AS sv_3, 0.13693177944281076 AS sv_4, 0.06576998179268967 AS sv_5, 0.04939721971337052 AS sv_6, 0.8384842091078928 AS sv_7, 0.3998051370494049 AS sv_8, 0.9339967072398855 AS sv_9 UNION ALL SELECT 70 AS sv_idx, -0.1 AS dual_coeff, 0.18310123438213766 AS sv_0, 0.013409666628574901 AS sv_1, 0.09573211516810987 AS sv_2, 0.5665545372020508 AS sv_3, 0.6197110340276971 AS sv_4, 0.7322296500143658 AS sv_5, 0.09844209111159175 AS sv_6, 0.9281691265162819 AS sv_7, 0.7075346096235595 AS sv_8, 0.49869574964999175 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 0.1 AS dual_coeff, 0.47269873473858026 AS sv_0, 0.798121831977326 AS sv_1, 0.8499104552530584 AS sv_2, 0.475194154583085 AS sv_3, 0.2104002382677912 AS sv_4, 0.6330637491983196 AS sv_5, 0.7574744396919333 AS sv_6, 0.5591447535427894 AS sv_7, 0.323754392936751 AS sv_8, 0.8617165391715425 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -0.1 AS dual_coeff, 0.43453372824559466 AS sv_0, 0.3890595694091993 AS sv_1, 0.836519225467029 AS sv_2, 0.06227641875537826 AS sv_3, 0.3564826401712665 AS sv_4, 0.005496067443431341 AS sv_5, 0.9227424252313905 AS sv_6, 0.3477644946250137 AS sv_7, 0.47864274321194167 AS sv_8, 0.9832576878086277 AS sv_9 UNION ALL SELECT 73 AS sv_idx, 0.1 AS dual_coeff, 0.6893874612467784 AS sv_0, 0.2758200179447676 AS sv_1, 0.23995122524602408 AS sv_2, 0.6786878726514889 AS sv_3, 0.9136045636770356 AS sv_4, 0.10863747556144898 AS sv_5, 0.5593024980266833 AS sv_6, 0.2665227001304319 AS sv_7, 0.2833209775686715 AS sv_8, 0.5027119343088761 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 0.1 AS dual_coeff, 0.7517017045713503 AS sv_0, 0.48060249854624393 AS sv_1, 0.6798380109522975 AS sv_2, 0.9097895986237146 AS sv_3, 0.3783965261206377 AS sv_4, 0.9365093951095842 AS sv_5, 0.4951605441100999 AS sv_6, 0.8368459411025978 AS sv_7, 0.5398561161386157 AS sv_8, 0.5436544096039538 AS sv_9 UNION ALL SELECT 75 AS sv_idx, 0.1 AS dual_coeff, 0.6635187411070482 AS sv_0, 0.28536564412656007 AS sv_1, 0.9734551721488216 AS sv_2, 0.6900072850059482 AS sv_3, 0.06641274821751897 AS sv_4, 0.5133701012153071 AS sv_5, 0.6378827553441019 AS sv_6, 0.034849662608985144 AS sv_7, 0.16066950672067215 AS sv_8, 0.8912243796619927 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, 0.9625822681873077 AS sv_0, 0.4859739316897721 AS sv_1, 0.32300556946926273 AS sv_2, 0.5174696648592829 AS sv_3, 0.44091884893912126 AS sv_4, 0.6383502603921138 AS sv_5, 0.7391833725165726 AS sv_6, 0.04162715200715006 AS sv_7, 0.38841742665128 AS sv_8, 0.06489002499420737 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, 0.5442383550607328 AS sv_0, 0.38234717661316453 AS sv_1, 0.6985214811522404 AS sv_2, 0.9264423451360423 AS sv_3, 0.4296756544509407 AS sv_4, 0.6464140755060015 AS sv_5, 0.19224045546548552 AS sv_6, 0.02453570252792925 AS sv_7, 0.8153468300830188 AS sv_8, 0.6030882085512868 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 16.11661645829854 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * exp(min(max(-100.0, -0.1 * (power(kernel_input."Feature_0" - "SV_data".sv_0, 2) + power(kernel_input."Feature_1" - "SV_data".sv_1, 2) + power(kernel_input."Feature_2" - "SV_data".sv_2, 2) + power(kernel_input."Feature_3" - "SV_data".sv_3, 2) + power(kernel_input."Feature_4" - "SV_data".sv_4, 2) + power(kernel_input."Feature_5" - "SV_data".sv_5, 2) + power(kernel_input."Feature_6" - "SV_data".sv_6, 2) + power(kernel_input."Feature_7" - "SV_data".sv_7, 2) + power(kernel_input."Feature_8" - "SV_data".sv_8, 2) + power(kernel_input."Feature_9" - "SV_data".sv_9, 2))), 100.0)) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp