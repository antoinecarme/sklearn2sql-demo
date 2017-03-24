-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH [ADS_imp_1_OUT] AS 
(SELECT [ADS].[KEY] AS [KEY], CASE WHEN ([ADS].[Feature_0] IS NULL) THEN 0.504968635617 ELSE [ADS].[Feature_0] END AS impute_2, CASE WHEN ([ADS].[Feature_1] IS NULL) THEN 0.502044027838 ELSE [ADS].[Feature_1] END AS impute_3, CASE WHEN ([ADS].[Feature_2] IS NULL) THEN 0.475170485759 ELSE [ADS].[Feature_2] END AS impute_4, CASE WHEN ([ADS].[Feature_3] IS NULL) THEN 0.446948028754 ELSE [ADS].[Feature_3] END AS impute_5, CASE WHEN ([ADS].[Feature_4] IS NULL) THEN 0.493232423096 ELSE [ADS].[Feature_4] END AS impute_6, CASE WHEN ([ADS].[Feature_5] IS NULL) THEN 0.529653097314 ELSE [ADS].[Feature_5] END AS impute_7, CASE WHEN ([ADS].[Feature_6] IS NULL) THEN 0.485688994019 ELSE [ADS].[Feature_6] END AS impute_8, CASE WHEN ([ADS].[Feature_7] IS NULL) THEN 0.486115813977 ELSE [ADS].[Feature_7] END AS impute_9, CASE WHEN ([ADS].[Feature_8] IS NULL) THEN 0.518133885981 ELSE [ADS].[Feature_8] END AS impute_10, CASE WHEN ([ADS].[Feature_9] IS NULL) THEN 0.476879676876 ELSE [ADS].[Feature_9] END AS impute_11 
FROM [INPUT_DATA] AS [ADS]), 
[CenteredDataForPCA] AS 
(SELECT [ADS_imp_1_OUT].[KEY] AS [KEY], [ADS_imp_1_OUT].impute_2 - 0.504968635617 AS impute_2, [ADS_imp_1_OUT].impute_3 - 0.502044027838 AS impute_3, [ADS_imp_1_OUT].impute_4 - 0.475170485759 AS impute_4, [ADS_imp_1_OUT].impute_5 - 0.446948028754 AS impute_5, [ADS_imp_1_OUT].impute_6 - 0.493232423096 AS impute_6, [ADS_imp_1_OUT].impute_7 - 0.529653097314 AS impute_7, [ADS_imp_1_OUT].impute_8 - 0.485688994019 AS impute_8, [ADS_imp_1_OUT].impute_9 - 0.486115813977 AS impute_9, [ADS_imp_1_OUT].impute_10 - 0.518133885981 AS impute_10, [ADS_imp_1_OUT].impute_11 - 0.476879676876 AS impute_11 
FROM [ADS_imp_1_OUT]), 
[ADS_ano_2_OUT] AS 
(SELECT [CenteredDataForPCA].[KEY] AS [KEY], [CenteredDataForPCA].impute_2 * 0.076849934055 + [CenteredDataForPCA].impute_3 * 0.201804669793 + [CenteredDataForPCA].impute_4 * -0.0415829802335 + [CenteredDataForPCA].impute_5 * -0.46611253675 + [CenteredDataForPCA].impute_6 * -0.248955548573 + [CenteredDataForPCA].impute_7 * 0.412260982154 + [CenteredDataForPCA].impute_8 * -0.13720806537 + [CenteredDataForPCA].impute_9 * 0.399360405662 + [CenteredDataForPCA].impute_10 * -0.557700857227 + [CenteredDataForPCA].impute_11 * 0.114437346125 AS anoova_2, [CenteredDataForPCA].impute_2 * -0.484193629644 + [CenteredDataForPCA].impute_3 * -0.154486519272 + [CenteredDataForPCA].impute_4 * -0.0379448899254 + [CenteredDataForPCA].impute_5 * -0.176346812975 + [CenteredDataForPCA].impute_6 * -0.452460301834 + [CenteredDataForPCA].impute_7 * -0.259132253536 + [CenteredDataForPCA].impute_8 * -0.301438432184 + [CenteredDataForPCA].impute_9 * 0.423306829925 + [CenteredDataForPCA].impute_10 * 0.406864689511 + [CenteredDataForPCA].impute_11 * -0.0411084598271 AS anoova_3, [CenteredDataForPCA].impute_2 * 0.0363655041119 + [CenteredDataForPCA].impute_3 * 0.396819744651 + [CenteredDataForPCA].impute_4 * -0.414257000925 + [CenteredDataForPCA].impute_5 * 0.0226735793913 + [CenteredDataForPCA].impute_6 * 0.141434705341 + [CenteredDataForPCA].impute_7 * -0.366644745222 + [CenteredDataForPCA].impute_8 * -0.659734596508 + [CenteredDataForPCA].impute_9 * -0.224573862829 + [CenteredDataForPCA].impute_10 * -0.160496154032 + [CenteredDataForPCA].impute_11 * 0.0566953976905 AS anoova_4, [CenteredDataForPCA].impute_2 * -0.262557842448 + [CenteredDataForPCA].impute_3 * 0.429789997884 + [CenteredDataForPCA].impute_4 * 0.672634587817 + [CenteredDataForPCA].impute_5 * 0.0121826076057 + [CenteredDataForPCA].impute_6 * 0.269075315841 + [CenteredDataForPCA].impute_7 * 0.178472321092 + [CenteredDataForPCA].impute_8 * -0.272480097724 + [CenteredDataForPCA].impute_9 * 0.0149242127648 + [CenteredDataForPCA].impute_10 * 0.080960497932 + [CenteredDataForPCA].impute_11 * -0.329365449666 AS anoova_5, [CenteredDataForPCA].impute_2 * -0.0225281357471 + [CenteredDataForPCA].impute_3 * -0.0851817375124 + [CenteredDataForPCA].impute_4 * 0.282778752485 + [CenteredDataForPCA].impute_5 * 0.69754380646 + [CenteredDataForPCA].impute_6 * -0.231723431008 + [CenteredDataForPCA].impute_7 * -0.232131026824 + [CenteredDataForPCA].impute_8 * -0.0901262855942 + [CenteredDataForPCA].impute_9 * 0.263987109533 + [CenteredDataForPCA].impute_10 * -0.460398844967 + [CenteredDataForPCA].impute_11 * 0.168362020695 AS anoova_6, [CenteredDataForPCA].impute_2 * -0.548763040719 + [CenteredDataForPCA].impute_3 * -0.332811926047 + [CenteredDataForPCA].impute_4 * -0.137351383374 + [CenteredDataForPCA].impute_5 * -0.0095994104037 + [CenteredDataForPCA].impute_6 * 0.62881197492 + [CenteredDataForPCA].impute_7 * 0.127447990988 + [CenteredDataForPCA].impute_8 * -0.059310976882 + [CenteredDataForPCA].impute_9 * 0.14621160812 + [CenteredDataForPCA].impute_10 * -0.180030885239 + [CenteredDataForPCA].impute_11 * 0.316517866241 AS anoova_7, [CenteredDataForPCA].impute_2 * 0.281423150966 + [CenteredDataForPCA].impute_3 * -0.495447356956 + [CenteredDataForPCA].impute_4 * 0.475499490855 + [CenteredDataForPCA].impute_5 * -0.41980214947 + [CenteredDataForPCA].impute_6 * 0.0532307532368 + [CenteredDataForPCA].impute_7 * -0.326578759185 + [CenteredDataForPCA].impute_8 * -0.289772195652 + [CenteredDataForPCA].impute_9 * -0.199781500511 + [CenteredDataForPCA].impute_10 * -0.131337110684 + [CenteredDataForPCA].impute_11 * 0.149606507479 AS anoova_8, [CenteredDataForPCA].impute_2 * 0.136340851328 + [CenteredDataForPCA].impute_3 * -0.366107682675 + [CenteredDataForPCA].impute_4 * -0.214517270142 + [CenteredDataForPCA].impute_5 * 0.0636415042804 + [CenteredDataForPCA].impute_6 * 0.166876120257 + [CenteredDataForPCA].impute_7 * -0.00166947433368 + [CenteredDataForPCA].impute_8 * -0.136296533833 + [CenteredDataForPCA].impute_9 * 0.223238688285 + [CenteredDataForPCA].impute_10 * -0.200051891981 + [CenteredDataForPCA].impute_11 * -0.813034435596 AS anoova_9, [CenteredDataForPCA].impute_2 * 0.371313075596 + [CenteredDataForPCA].impute_3 * 0.239884960141 + [CenteredDataForPCA].impute_4 * 0.0345421300866 + [CenteredDataForPCA].impute_5 * -0.092644805895 + [CenteredDataForPCA].impute_6 * 0.398154945786 + [CenteredDataForPCA].impute_7 * -0.385604130472 + [CenteredDataForPCA].impute_8 * 0.18863727889 + [CenteredDataForPCA].impute_9 * 0.635937820982 + [CenteredDataForPCA].impute_10 * 0.183290761114 + [CenteredDataForPCA].impute_11 * 0.11828458241 AS anoova_10, [CenteredDataForPCA].impute_2 * 0.389976841131 + [CenteredDataForPCA].impute_3 * -0.195335657605 + [CenteredDataForPCA].impute_4 * -0.0253984335245 + [CenteredDataForPCA].impute_5 * 0.27468480313 + [CenteredDataForPCA].impute_6 * 0.0508600716919 + [CenteredDataForPCA].impute_7 * 0.520707016107 + [CenteredDataForPCA].impute_8 * -0.480670827163 + [CenteredDataForPCA].impute_9 * 0.159481477726 + [CenteredDataForPCA].impute_10 * 0.394807985315 + [CenteredDataForPCA].impute_11 * 0.218152579967 AS anoova_11 
FROM [CenteredDataForPCA]), 
[SV_data] AS 
(SELECT [Values].sv_idx AS sv_idx, [Values].dual_coeff AS dual_coeff, [Values].sv_0 AS sv_0, [Values].sv_1 AS sv_1, [Values].sv_2 AS sv_2, [Values].sv_3 AS sv_3, [Values].sv_4 AS sv_4, [Values].sv_5 AS sv_5, [Values].sv_6 AS sv_6, [Values].sv_7 AS sv_7, [Values].sv_8 AS sv_8, [Values].sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.0 AS dual_coeff, 0.176019670755 AS sv_0, -0.222732824181 AS sv_1, -0.418842124208 AS sv_2, -0.331707056411 AS sv_3, -0.510688429807 AS sv_4, 0.541961274997 AS sv_5, -0.00841193097732 AS sv_6, -0.183705669895 AS sv_7, 0.0144475835398 AS sv_8, 0.0813949751799 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, -0.0167946948426 AS sv_0, 0.420701669941 AS sv_1, 0.142955709986 AS sv_2, 0.16384798601 AS sv_3, 0.0676514806081 AS sv_4, 0.0150935420323 AS sv_5, -0.0661172449803 AS sv_6, -0.320053283505 AS sv_7, -0.369780921207 AS sv_8, -0.0188564540273 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, -0.315544212814 AS sv_0, 0.120391664649 AS sv_1, -0.506917703033 AS sv_2, 0.166566378454 AS sv_3, -0.00157946537478 AS sv_4, 0.376480942612 AS sv_5, 0.0678344278954 AS sv_6, -0.395257731484 AS sv_7, 0.442028212582 AS sv_8, 0.137717129193 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, -0.36755967741 AS sv_0, -0.0595309835509 AS sv_1, -0.151815822748 AS sv_2, -0.405937866311 AS sv_3, 0.0913248238203 AS sv_4, -0.225537168912 AS sv_5, -0.236611405951 AS sv_6, 0.171933712625 AS sv_7, -0.4180011623 AS sv_8, -0.050930816241 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, -0.176145957751 AS sv_0, 0.520977539535 AS sv_1, 0.185309468923 AS sv_2, -0.226968304975 AS sv_3, 0.127506459473 AS sv_4, -0.127029519526 AS sv_5, 0.356636904549 AS sv_6, 0.143078226733 AS sv_7, -0.309597596436 AS sv_8, 0.112327406164 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.150499159982 AS sv_0, 0.0620098481954 AS sv_1, 0.291675342729 AS sv_2, -0.106286065553 AS sv_3, 0.454927753133 AS sv_4, 0.331948342455 AS sv_5, -0.247385008589 AS sv_6, -0.105063252375 AS sv_7, 0.320645291486 AS sv_8, -0.128336732366 AS sv_9 UNION ALL SELECT 6 AS sv_idx, 1.0 AS dual_coeff, 0.486952433425 AS sv_0, 0.151687086385 AS sv_1, 0.479696019795 AS sv_2, 0.149307402694 AS sv_3, -0.0514900254637 AS sv_4, -0.1260077952 AS sv_5, -0.128201840388 AS sv_6, 0.204057613102 AS sv_7, 0.285782996003 AS sv_8, 0.118194958539 AS sv_9 UNION ALL SELECT 7 AS sv_idx, 1.0 AS dual_coeff, 0.127440773609 AS sv_0, -0.599567564983 AS sv_1, 0.126856170311 AS sv_2, -0.19793435541 AS sv_3, -0.205524815334 AS sv_4, 0.0838073963057 AS sv_5, -0.280354218708 AS sv_6, 0.361736192022 AS sv_7, 0.0915061562322 AS sv_8, -0.473893919787 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, -0.304040865627 AS sv_0, 0.0382402430218 AS sv_1, -0.581916852569 AS sv_2, -0.574055494916 AS sv_3, 0.452731565131 AS sv_4, -0.180661657366 AS sv_5, -0.0729027200084 AS sv_6, -0.0583072704683 AS sv_7, 0.140844610368 AS sv_8, 0.346695352215 AS sv_9 UNION ALL SELECT 9 AS sv_idx, -1.0 AS dual_coeff, -0.287775950205 AS sv_0, 0.829694906369 AS sv_1, 0.431382668385 AS sv_2, 0.197721124237 AS sv_3, 0.356203677143 AS sv_4, -0.130335405943 AS sv_5, -0.473446407984 AS sv_6, 0.0349896653893 AS sv_7, 0.0545278772844 AS sv_8, 0.0339622681501 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, -0.718553159183 AS sv_0, -0.0743174642282 AS sv_1, -0.191994163361 AS sv_2, 0.19494114766 AS sv_3, -0.160651627489 AS sv_4, -0.104070803101 AS sv_5, 0.225759245104 AS sv_6, 0.268808705762 AS sv_7, 0.217328133778 AS sv_8, -0.151419891788 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -1.0 AS dual_coeff, 0.296147015929 AS sv_0, -0.357718070164 AS sv_1, -0.307649414694 AS sv_2, -0.29231293894 AS sv_3, 0.068708252785 AS sv_4, 0.181829618072 AS sv_5, 0.566241541005 AS sv_6, 0.00162131975875 AS sv_7, -0.0886559170252 AS sv_8, -0.114919579224 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 1.0 AS dual_coeff, -0.471630431666 AS sv_0, -0.368213948388 AS sv_1, -0.208153361028 AS sv_2, 0.301457031458 AS sv_3, 0.198453674979 AS sv_4, 0.106353761351 AS sv_5, 0.119913769056 AS sv_6, -0.172869620443 AS sv_7, 0.0304812808971 AS sv_8, 0.0829613546368 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -1.0 AS dual_coeff, 0.209756863104 AS sv_0, 0.213276623108 AS sv_1, -0.30912631561 AS sv_2, 0.481711538281 AS sv_3, -0.043451919778 AS sv_4, -0.0771279837674 AS sv_5, 0.032293671572 AS sv_6, -0.301119461585 AS sv_7, -0.0640682207987 AS sv_8, -0.314194645672 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 1.0 AS dual_coeff, 0.55896233369 AS sv_0, -0.239974678125 AS sv_1, -0.0594633243048 AS sv_2, -0.448176674441 AS sv_3, -0.0158256657488 AS sv_4, -0.00427020268393 AS sv_5, -0.209269414894 AS sv_6, 0.289488038303 AS sv_7, -0.000847811929245 AS sv_8, -0.0478947783814 AS sv_9 UNION ALL SELECT 15 AS sv_idx, -1.0 AS dual_coeff, 0.0977428810899 AS sv_0, 0.204394801402 AS sv_1, 0.185763097661 AS sv_2, 0.577051489428 AS sv_3, 0.333934806092 AS sv_4, -0.0163694847917 AS sv_5, -0.497140380127 AS sv_6, -0.212691858422 AS sv_7, -0.38383327485 AS sv_8, 0.157013521231 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, -0.334608518491 AS sv_0, -0.0265031609719 AS sv_1, -0.385972593672 AS sv_2, 0.69528507738 AS sv_3, 0.0812615304936 AS sv_4, 0.317962720926 AS sv_5, -0.0409055762989 AS sv_6, 0.299686465724 AS sv_7, -0.327707443263 AS sv_8, 0.268251864752 AS sv_9 UNION ALL SELECT 17 AS sv_idx, 1.0 AS dual_coeff, -0.0490717057169 AS sv_0, -0.622794823451 AS sv_1, 0.0353366318826 AS sv_2, -0.403424043365 AS sv_3, -0.0267717888993 AS sv_4, 0.215349091819 AS sv_5, -0.109204230332 AS sv_6, -0.124431317363 AS sv_7, -0.0446116788581 AS sv_8, -0.378256836503 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 1.0 AS dual_coeff, 0.141865083431 AS sv_0, -0.183160576787 AS sv_1, -0.143818189856 AS sv_2, 0.483785671322 AS sv_3, 0.333060734552 AS sv_4, -0.0582158777025 AS sv_5, -0.255095976148 AS sv_6, 0.381490328351 AS sv_7, 0.210969925662 AS sv_8, 0.445543209247 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, -0.116566992763 AS sv_0, -0.396017794864 AS sv_1, 0.690828072917 AS sv_2, -0.371524162057 AS sv_3, 0.283569102314 AS sv_4, -0.184216958898 AS sv_5, 0.186627219688 AS sv_6, 0.505324941632 AS sv_7, -0.18243476128 AS sv_8, 0.0901981191013 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 1.0 AS dual_coeff, -0.549696066474 AS sv_0, -0.268489115854 AS sv_1, 0.395064276297 AS sv_2, -0.046822782195 AS sv_3, -0.569108604907 AS sv_4, 0.00525972660022 AS sv_5, -0.261072940283 AS sv_6, 0.0246609578046 AS sv_7, 0.104008652934 AS sv_8, 0.0866629142345 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, -0.721893513606 AS sv_0, -0.084336858203 AS sv_1, 0.237569810585 AS sv_2, 0.197554646508 AS sv_3, -0.137370693836 AS sv_4, -0.232933784063 AS sv_5, 0.732807396571 AS sv_6, 0.218423243849 AS sv_7, 0.0118659949166 AS sv_8, 0.326401716434 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, -0.209721051117 AS sv_0, 0.1714226123 AS sv_1, -0.644930349244 AS sv_2, -0.115895380078 AS sv_3, -0.38047510545 AS sv_4, -0.0814192442333 AS sv_5, 0.187291302405 AS sv_6, 0.00440693937715 AS sv_7, 0.16562593782 AS sv_8, -0.121915694828 AS sv_9 UNION ALL SELECT 23 AS sv_idx, 1.0 AS dual_coeff, -0.354563906356 AS sv_0, -0.284763918307 AS sv_1, -0.121521382688 AS sv_2, -0.13843928333 AS sv_3, 0.696009212058 AS sv_4, 0.402599604855 AS sv_5, 0.218117790224 AS sv_6, -0.207790917388 AS sv_7, 0.188660747577 AS sv_8, -0.134629853162 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 1.0 AS dual_coeff, -0.129314291676 AS sv_0, -0.470030419842 AS sv_1, 0.0101994540438 AS sv_2, 0.420738268245 AS sv_3, -0.0171647142737 AS sv_4, -0.179339567347 AS sv_5, 0.175085432329 AS sv_6, 0.150365337319 AS sv_7, -0.294861379835 AS sv_8, 0.52764534892 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, -0.231378987056 AS sv_0, -0.131420558995 AS sv_1, 0.156797143569 AS sv_2, -0.143581167379 AS sv_3, -0.0640555483663 AS sv_4, 0.0512606652757 AS sv_5, -0.532747085102 AS sv_6, -0.114676714191 AS sv_7, 0.559646134606 AS sv_8, -0.314036980693 AS sv_9 UNION ALL SELECT 26 AS sv_idx, -1.0 AS dual_coeff, 0.342007639443 AS sv_0, 0.409783453872 AS sv_1, -0.522892889199 AS sv_2, -0.180181603918 AS sv_3, -0.383368511732 AS sv_4, -0.000213752248069 AS sv_5, -0.174626020121 AS sv_6, 0.420899244964 AS sv_7, -0.158975386061 AS sv_8, 0.122082591508 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, -0.0176399878793 AS sv_0, -0.625345375085 AS sv_1, 0.118375775128 AS sv_2, -0.527236069818 AS sv_3, 0.482546930967 AS sv_4, 0.00722412919795 AS sv_5, 0.0889297857982 AS sv_6, -0.140998222417 AS sv_7, 0.00558129169652 AS sv_8, 0.105501167803 AS sv_9 UNION ALL SELECT 28 AS sv_idx, -1.0 AS dual_coeff, 0.308966602218 AS sv_0, -0.0430715884209 AS sv_1, -0.115508781612 AS sv_2, 0.163375118366 AS sv_3, -0.148553298912 AS sv_4, 0.715302537927 AS sv_5, 0.164820025414 AS sv_6, -0.120982566345 AS sv_7, -0.102665931481 AS sv_8, -0.245008871672 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, -0.356141641508 AS sv_0, -0.749186166331 AS sv_1, -0.0266850454338 AS sv_2, 0.506371853525 AS sv_3, 0.01867636228 AS sv_4, -0.293895381165 AS sv_5, -0.0934081387532 AS sv_6, 0.0223212038482 AS sv_7, 0.316250575209 AS sv_8, -0.119690360483 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, -0.851769955011 AS sv_0, -0.134819437762 AS sv_1, -0.275115305858 AS sv_2, -0.176405428671 AS sv_3, -0.14280012406 AS sv_4, -0.40729427431 AS sv_5, -0.00450771885751 AS sv_6, 0.155365702335 AS sv_7, 0.00231268090727 AS sv_8, -0.214465283507 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, -0.0814994750388 AS sv_0, 0.426478657533 AS sv_1, -0.109518194637 AS sv_2, 0.293523109802 AS sv_3, 0.555921821194 AS sv_4, 0.283881203685 AS sv_5, -0.0860289370209 AS sv_6, 0.187881206308 AS sv_7, -0.00679270372765 AS sv_8, 0.233032638829 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 1.0 AS dual_coeff, 0.0350270368779 AS sv_0, -0.242878656143 AS sv_1, -0.178265343284 AS sv_2, -0.269536684991 AS sv_3, -0.403901229905 AS sv_4, -0.171916312111 AS sv_5, -0.164092688847 AS sv_6, -0.0980621844358 AS sv_7, -0.060020746683 AS sv_8, 0.0989084835211 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 1.0 AS dual_coeff, 0.422045914191 AS sv_0, -0.185650410302 AS sv_1, -0.0237766631854 AS sv_2, 0.360518079599 AS sv_3, 0.38116247541 AS sv_4, 0.0798368101416 AS sv_5, 0.0905356094092 AS sv_6, 0.0268894176438 AS sv_7, -0.248669988885 AS sv_8, 0.219271400704 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 0.303923058044 AS sv_0, -0.534117909768 AS sv_1, -0.0162473938269 AS sv_2, 0.156034611511 AS sv_3, 0.0850431140926 AS sv_4, 0.162883903945 AS sv_5, 0.214857130255 AS sv_6, 0.124676000916 AS sv_7, -0.0646166398112 AS sv_8, 0.00106550676103 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 1.0 AS dual_coeff, -0.189803735735 AS sv_0, -0.384949252446 AS sv_1, -0.293043037832 AS sv_2, 0.10240278733 AS sv_3, -0.358234235888 AS sv_4, -0.217678970964 AS sv_5, 0.0997235559781 AS sv_6, -0.0171745702839 AS sv_7, -0.294303071721 AS sv_8, 0.314372145779 AS sv_9 UNION ALL SELECT 36 AS sv_idx, -1.0 AS dual_coeff, 0.485168680997 AS sv_0, -0.261243431257 AS sv_1, -0.219057137938 AS sv_2, 0.216519783949 AS sv_3, -0.0469343679147 AS sv_4, -0.487261935547 AS sv_5, 0.0944070711581 AS sv_6, -0.315732721992 AS sv_7, 0.0345066461782 AS sv_8, 0.316492216976 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.272430868041 AS sv_0, -0.0946185632619 AS sv_1, -0.265481850344 AS sv_2, 0.329610845834 AS sv_3, 0.409238121662 AS sv_4, -0.0218786048387 AS sv_5, -0.0459434518108 AS sv_6, -0.130607404628 AS sv_7, -0.313172989025 AS sv_8, 0.066756533178 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.259470086552 AS sv_0, -0.246952312438 AS sv_1, -0.206224179026 AS sv_2, -0.206094666089 AS sv_3, -0.420181625799 AS sv_4, 0.33246820431 AS sv_5, -0.376859678376 AS sv_6, 0.238290011855 AS sv_7, 0.229970075929 AS sv_8, 0.0439764051192 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -1.0 AS dual_coeff, 0.270974344156 AS sv_0, 0.259415129238 AS sv_1, 0.151064699343 AS sv_2, -0.0364174264308 AS sv_3, 0.188755453757 AS sv_4, 0.0833115878469 AS sv_5, -0.0878464815701 AS sv_6, 0.668094733144 AS sv_7, -0.160365495198 AS sv_8, 0.228585190583 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -1.0 AS dual_coeff, 0.358846874107 AS sv_0, -0.0234626126559 AS sv_1, 0.0760072087635 AS sv_2, 0.0381590796957 AS sv_3, -0.00407809890988 AS sv_4, -0.431322482805 AS sv_5, 0.525217782068 AS sv_6, 0.192048398256 AS sv_7, 0.00572436929167 AS sv_8, -0.118720632849 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 0.019347081887 AS sv_0, 0.196860648103 AS sv_1, 0.371701950001 AS sv_2, -0.165636284253 AS sv_3, -0.222678140896 AS sv_4, -0.404546272453 AS sv_5, 0.272072447794 AS sv_6, -0.595506009967 AS sv_7, 0.048150025126 AS sv_8, 0.331200723188 AS sv_9 UNION ALL SELECT 42 AS sv_idx, -1.0 AS dual_coeff, -0.358296602478 AS sv_0, 0.514780429236 AS sv_1, 0.520526611508 AS sv_2, -0.0835728683435 AS sv_3, -0.454053813936 AS sv_4, 0.291876748518 AS sv_5, 0.0801202429863 AS sv_6, 0.0579433686447 AS sv_7, -0.344266843548 AS sv_8, -0.0280723187279 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.0636581229868 AS sv_0, -0.104967280734 AS sv_1, 0.790259549078 AS sv_2, -0.069756335786 AS sv_3, 0.348952828263 AS sv_4, -0.201877498458 AS sv_5, 0.126450326992 AS sv_6, -0.242046160997 AS sv_7, 0.236892469371 AS sv_8, -0.0472498419015 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -1.0 AS dual_coeff, -0.543417923189 AS sv_0, 0.299603461379 AS sv_1, -0.0776294780264 AS sv_2, -0.447179357981 AS sv_3, 0.0307022259299 AS sv_4, -0.314492940287 AS sv_5, 0.228493581246 AS sv_6, 0.0425677366618 AS sv_7, 0.184742229347 AS sv_8, 0.0841079232971 AS sv_9 UNION ALL SELECT 45 AS sv_idx, 1.0 AS dual_coeff, 0.261433618372 AS sv_0, 0.1932204193 AS sv_1, 0.282155650661 AS sv_2, 0.0504734384286 AS sv_3, -0.255755296834 AS sv_4, 0.284947477561 AS sv_5, -0.0521475819207 AS sv_6, -0.292286643298 AS sv_7, 0.665246715839 AS sv_8, 0.220526238771 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -1.0 AS dual_coeff, 0.987860910698 AS sv_0, 0.0588909717067 AS sv_1, 0.0859535003196 AS sv_2, -0.250504672897 AS sv_3, -0.000908619583652 AS sv_4, -0.0790608987984 AS sv_5, 0.0356874713779 AS sv_6, -0.0103880834797 AS sv_7, 0.134975916229 AS sv_8, 0.315209471771 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, -0.0436977437455 AS sv_0, 0.438308557916 AS sv_1, 0.200984146 AS sv_2, 0.928417469138 AS sv_3, -0.364746726311 AS sv_4, -0.126366166337 AS sv_5, 0.137031613713 AS sv_6, 0.135091129691 AS sv_7, 0.39314849658 AS sv_8, 0.00635984910363 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 1.0 AS dual_coeff, 0.119077251378 AS sv_0, -0.565640814498 AS sv_1, 0.387913707449 AS sv_2, -0.179568804811 AS sv_3, 0.120864167514 AS sv_4, 0.216333046843 AS sv_5, -0.409234259953 AS sv_6, -0.374876376191 AS sv_7, -0.406273504671 AS sv_8, 0.184169819029 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -1.0 AS dual_coeff, 0.575904121977 AS sv_0, 0.402635855153 AS sv_1, -0.151362243697 AS sv_2, -0.281570181027 AS sv_3, 0.174829143054 AS sv_4, 0.15999626372 AS sv_5, 0.255336448139 AS sv_6, -0.0779667530164 AS sv_7, -0.193594962692 AS sv_8, 0.185227698174 AS sv_9 UNION ALL SELECT 50 AS sv_idx, -1.0 AS dual_coeff, 0.248666866604 AS sv_0, 0.727712482393 AS sv_1, 0.366151500449 AS sv_2, 0.14287325682 AS sv_3, 0.298394941338 AS sv_4, -0.184337466938 AS sv_5, -0.375330402326 AS sv_6, 0.217415128877 AS sv_7, 0.0177772925975 AS sv_8, -0.0866944908724 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -1.0 AS dual_coeff, -0.192366262228 AS sv_0, 0.576965925932 AS sv_1, -0.200662794489 AS sv_2, -0.0568390001393 AS sv_3, -0.287630677231 AS sv_4, -0.383866033358 AS sv_5, -0.142092043028 AS sv_6, -0.090076201021 AS sv_7, -0.00485835253845 AS sv_8, -0.479724058886 AS sv_9 UNION ALL SELECT 52 AS sv_idx, -1.0 AS dual_coeff, -0.115778046068 AS sv_0, -0.156658658777 AS sv_1, -0.2890010552 AS sv_2, 0.148682725456 AS sv_3, 0.0899584194367 AS sv_4, -0.227709822925 AS sv_5, -0.595078898505 AS sv_6, -0.381529444463 AS sv_7, -0.388127258376 AS sv_8, -0.23791377797 AS sv_9 UNION ALL SELECT 53 AS sv_idx, -1.0 AS dual_coeff, 0.677605771072 AS sv_0, -0.180142968817 AS sv_1, -0.26796190794 AS sv_2, -0.176256122496 AS sv_3, -0.0689590742521 AS sv_4, -0.394989904264 AS sv_5, 0.0975586224623 AS sv_6, -0.168248485952 AS sv_7, 0.152435990813 AS sv_8, 0.0857517984079 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, -0.0867010733762 AS sv_0, 0.701338842455 AS sv_1, -0.0311913499598 AS sv_2, -0.23085854903 AS sv_3, 0.258659274822 AS sv_4, 0.157755182977 AS sv_5, -0.242598809751 AS sv_6, 0.296449889051 AS sv_7, -0.0194592566614 AS sv_8, -0.0297779978313 AS sv_9 UNION ALL SELECT 55 AS sv_idx, 1.0 AS dual_coeff, 0.230165546974 AS sv_0, -0.538837848113 AS sv_1, -0.24496765277 AS sv_2, 0.432739983991 AS sv_3, -0.211790052544 AS sv_4, -0.143492754806 AS sv_5, 0.344987755518 AS sv_6, 0.295591003882 AS sv_7, 0.111838664881 AS sv_8, -0.105449534091 AS sv_9 UNION ALL SELECT 56 AS sv_idx, 1.0 AS dual_coeff, -0.676760824054 AS sv_0, 0.0470924143859 AS sv_1, 0.32056509275 AS sv_2, -0.310544617736 AS sv_3, 0.2122470451 AS sv_4, 0.537417175458 AS sv_5, 0.152927076505 AS sv_6, -0.193425891933 AS sv_7, 0.2855369378 AS sv_8, 0.158234580264 AS sv_9 UNION ALL SELECT 57 AS sv_idx, 1.0 AS dual_coeff, -0.16704333036 AS sv_0, -0.20577446164 AS sv_1, 0.441879495589 AS sv_2, -0.0213860930816 AS sv_3, -0.385831313019 AS sv_4, 0.170713097219 AS sv_5, 0.442303177079 AS sv_6, -0.262916158732 AS sv_7, -0.00696190274262 AS sv_8, 0.12004455262 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, -0.069757018581 AS sv_0, -0.02234496398 AS sv_1, 0.328333755363 AS sv_2, -0.138313546938 AS sv_3, -0.0347777891166 AS sv_4, 0.471097495259 AS sv_5, -0.0457424755564 AS sv_6, -0.0931539473005 AS sv_7, 0.220673555316 AS sv_8, 0.256860121271 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.455134267488 AS sv_0, -0.163394067919 AS sv_1, 0.0118448809268 AS sv_2, -0.247408643404 AS sv_3, -0.190422569557 AS sv_4, 0.724155459468 AS sv_5, 0.167017861019 AS sv_6, 0.156184739165 AS sv_7, -0.0927473187742 AS sv_8, 0.276028681832 AS sv_9 UNION ALL SELECT 60 AS sv_idx, -1.0 AS dual_coeff, -0.525036152075 AS sv_0, 0.0284748057627 AS sv_1, -0.144848739322 AS sv_2, 0.149504951802 AS sv_3, -0.22833518919 AS sv_4, 0.164092825918 AS sv_5, 0.0842374265241 AS sv_6, -0.0884369345637 AS sv_7, -0.0358335338572 AS sv_8, 0.0170622593954 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -1.0 AS dual_coeff, 0.252763252909 AS sv_0, -0.130253764137 AS sv_1, -0.120875061498 AS sv_2, -0.28481081459 AS sv_3, 0.16851373561 AS sv_4, 0.0978743046406 AS sv_5, 0.202968840076 AS sv_6, 0.101525697317 AS sv_7, 0.398794510437 AS sv_8, 0.106008388313 AS sv_9 UNION ALL SELECT 62 AS sv_idx, -1.0 AS dual_coeff, -0.291929495483 AS sv_0, 0.043049182807 AS sv_1, 0.175171724182 AS sv_2, 0.0653457879692 AS sv_3, -0.630082109487 AS sv_4, 0.223562859275 AS sv_5, 0.0153243726835 AS sv_6, 0.166665718474 AS sv_7, -0.176430642347 AS sv_8, 0.187642824994 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.208777390572 AS sv_0, 0.619267366307 AS sv_1, -0.644199068489 AS sv_2, -0.379250328585 AS sv_3, -0.163707097411 AS sv_4, 0.180400684541 AS sv_5, -0.00104885493572 AS sv_6, -0.13700325873 AS sv_7, -0.13512741862 AS sv_8, -0.186868256012 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 1.0 AS dual_coeff, 0.496963524794 AS sv_0, -0.110239715628 AS sv_1, -0.0800108965163 AS sv_2, -0.000307187297712 AS sv_3, -0.113908929824 AS sv_4, 0.111870001229 AS sv_5, -0.495339563632 AS sv_6, 0.503949026008 AS sv_7, 0.233021912791 AS sv_8, -0.249792106421 AS sv_9 UNION ALL SELECT 65 AS sv_idx, -1.0 AS dual_coeff, -0.160896252998 AS sv_0, -0.183718284762 AS sv_1, -0.56977516615 AS sv_2, -0.0313424850324 AS sv_3, -0.144247126831 AS sv_4, -0.0750891822875 AS sv_5, 0.0021562191557 AS sv_6, -0.128807116844 AS sv_7, -0.216582192411 AS sv_8, -0.0224790229236 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -1.0 AS dual_coeff, 0.201695635816 AS sv_0, 0.0731181146866 AS sv_1, -0.200854223018 AS sv_2, 0.415648035899 AS sv_3, -0.0132902435524 AS sv_4, 0.00187381836385 AS sv_5, -0.109857276372 AS sv_6, -0.609534447509 AS sv_7, -0.0679861612817 AS sv_8, -0.471135686093 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, 0.469935827038 AS sv_0, 0.0206646664956 AS sv_1, 0.0641024067392 AS sv_2, 0.537668970661 AS sv_3, -0.237440538273 AS sv_4, -0.0116935810999 AS sv_5, -0.030983904636 AS sv_6, 0.00114479596104 AS sv_7, 0.198774086814 AS sv_8, -0.148097059161 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -1.0 AS dual_coeff, -0.289387375794 AS sv_0, 0.189565103603 AS sv_1, -0.00597805755404 AS sv_2, -0.209723577392 AS sv_3, 0.224030840837 AS sv_4, 0.0334993344316 AS sv_5, -0.0438813178419 AS sv_6, 0.326834457919 AS sv_7, -0.390740279887 AS sv_8, -0.517517236569 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 1.0 AS dual_coeff, -0.114948115355 AS sv_0, -0.29599765874 AS sv_1, -0.3939207907 AS sv_2, -0.15163455851 AS sv_3, 0.15642553929 AS sv_4, -0.575214054131 AS sv_5, -0.346545439618 AS sv_6, -0.52347696367 AS sv_7, 0.00189032905339 AS sv_8, 0.282513267685 AS sv_9 UNION ALL SELECT 70 AS sv_idx, -1.0 AS dual_coeff, -0.0864715541353 AS sv_0, 0.705730142986 AS sv_1, -0.59459683723 AS sv_2, 0.00305104336668 AS sv_3, -0.00472589635023 AS sv_4, -0.109569231415 AS sv_5, 0.115709113386 AS sv_6, 0.098939861795 AS sv_7, -0.0633938509278 AS sv_8, 0.179830759084 AS sv_9 UNION ALL SELECT 71 AS sv_idx, -1.0 AS dual_coeff, -0.0356679182358 AS sv_0, 0.316437628292 AS sv_1, 0.490652910278 AS sv_2, -0.204306708436 AS sv_3, -0.526514664375 AS sv_4, -0.571346952991 AS sv_5, 0.143281474749 AS sv_6, -0.0397875308452 AS sv_7, 0.130372951864 AS sv_8, 0.156672806367 AS sv_9 UNION ALL SELECT 72 AS sv_idx, 1.0 AS dual_coeff, -0.298451346719 AS sv_0, 0.177389074722 AS sv_1, 0.33919139399 AS sv_2, 0.564787697116 AS sv_3, -0.149933799199 AS sv_4, 0.0864724142588 AS sv_5, 0.0622143495038 AS sv_6, 0.143127570287 AS sv_7, 0.225327858202 AS sv_8, 0.112141231125 AS sv_9 UNION ALL SELECT 73 AS sv_idx, 1.0 AS dual_coeff, 0.174283473287 AS sv_0, -0.052553848043 AS sv_1, -0.00665177846038 AS sv_2, 0.38604812457 AS sv_3, 0.169785216497 AS sv_4, 0.267451162312 AS sv_5, 0.413997611972 AS sv_6, 0.11395558319 AS sv_7, 0.111907947419 AS sv_8, -0.0689073521913 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -1.0 AS dual_coeff, 0.434221392644 AS sv_0, 0.144910424888 AS sv_1, -0.333010756291 AS sv_2, 0.546913757156 AS sv_3, -0.146346381387 AS sv_4, -0.0506790312649 AS sv_5, 0.0691562543517 AS sv_6, -0.235425101539 AS sv_7, -0.312844464065 AS sv_8, -0.129474869742 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, 0.384555313546 AS sv_0, -0.142706773918 AS sv_1, 0.735138947767 AS sv_2, -0.480124270101 AS sv_3, -0.0566124763323 AS sv_4, -0.459350954427 AS sv_5, 0.402139900377 AS sv_6, -0.518840969819 AS sv_7, -0.128155342606 AS sv_8, -0.211196728337 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 1.0 AS dual_coeff, -0.314721489469 AS sv_0, -0.29793965669 AS sv_1, -0.339826907044 AS sv_2, 0.104625936709 AS sv_3, 0.405193119266 AS sv_4, -0.257867808347 AS sv_5, -0.151705613766 AS sv_6, -0.0548597373836 AS sv_7, 0.0596395312599 AS sv_8, -0.26784068096 AS sv_9 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, -0.176881723758 AS sv_0, -0.0774697811184 AS sv_1, -0.176347854671 AS sv_2, 0.300271501951 AS sv_3, 0.00442803861938 AS sv_4, -0.0103554548476 AS sv_5, 0.347177211968 AS sv_6, 0.25659286387 AS sv_7, -0.263051473698 AS sv_8, -0.360124622643 AS sv_9 UNION ALL SELECT 78 AS sv_idx, 1.0 AS dual_coeff, -0.186212673479 AS sv_0, -0.133056444077 AS sv_1, 0.8008588871 AS sv_2, 0.130800817734 AS sv_3, -0.00231854996431 AS sv_4, -0.259761991759 AS sv_5, 0.108312224521 AS sv_6, 0.23079922719 AS sv_7, -0.171795646804 AS sv_8, -0.364135710775 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, -0.113569107228 AS sv_0, 0.591601675098 AS sv_1, -0.175083845422 AS sv_2, -0.533362597717 AS sv_3, -0.0400712682631 AS sv_4, 0.266364660426 AS sv_5, 0.200874155179 AS sv_6, -0.0414240786485 AS sv_7, 0.254901998173 AS sv_8, -0.180840490546 AS sv_9 UNION ALL SELECT 80 AS sv_idx, 1.0 AS dual_coeff, -0.0611292977404 AS sv_0, 0.45401692956 AS sv_1, 0.417676821851 AS sv_2, -0.146909720568 AS sv_3, -0.0815457732175 AS sv_4, -0.0379230119615 AS sv_5, -0.412403756601 AS sv_6, -0.507099302196 AS sv_7, -0.461357073114 AS sv_8, 0.413650306424 AS sv_9 UNION ALL SELECT 81 AS sv_idx, -1.0 AS dual_coeff, 0.2597730081 AS sv_0, -0.0110138711221 AS sv_1, 0.366049831502 AS sv_2, -0.172785436541 AS sv_3, -0.153892967511 AS sv_4, 0.401121616805 AS sv_5, -0.0124443008777 AS sv_6, 0.350631429046 AS sv_7, -0.420778687531 AS sv_8, -0.047033806602 AS sv_9 UNION ALL SELECT 82 AS sv_idx, 1.0 AS dual_coeff, 0.410699362911 AS sv_0, -0.416330959505 AS sv_1, 0.0254196013014 AS sv_2, -0.12001870242 AS sv_3, 0.0809403241193 AS sv_4, -0.237213444647 AS sv_5, -0.368870470364 AS sv_6, 0.00193772504414 AS sv_7, -0.0703298938144 AS sv_8, 0.194251922911 AS sv_9 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, -0.37109864024 AS sv_0, -0.0190848427693 AS sv_1, 0.499315754398 AS sv_2, 0.328183817644 AS sv_3, -0.367468378 AS sv_4, 0.320001846978 AS sv_5, -0.485522003178 AS sv_6, -0.010079557206 AS sv_7, -0.0535321630219 AS sv_8, -0.229823774652 AS sv_9 UNION ALL SELECT 84 AS sv_idx, -1.0 AS dual_coeff, 0.546807216722 AS sv_0, 0.120615602537 AS sv_1, 0.228092519742 AS sv_2, -0.0164703597105 AS sv_3, 0.0945739283405 AS sv_4, 0.238664314028 AS sv_5, 0.302839832262 AS sv_6, -0.319617631883 AS sv_7, 0.122062916414 AS sv_8, -0.108853335869 AS sv_9 UNION ALL SELECT 85 AS sv_idx, -1.0 AS dual_coeff, 0.429460866123 AS sv_0, 0.246527685916 AS sv_1, -0.0247929463768 AS sv_2, -0.153412176676 AS sv_3, -0.222881542029 AS sv_4, -0.384198214393 AS sv_5, -0.0736531017666 AS sv_6, 0.397043910296 AS sv_7, 0.224100708455 AS sv_8, -0.128802133655 AS sv_9 UNION ALL SELECT 86 AS sv_idx, -1.0 AS dual_coeff, -0.0588444836838 AS sv_0, 0.428221384512 AS sv_1, -0.29243125109 AS sv_2, -0.699022729646 AS sv_3, -0.0509100993618 AS sv_4, -0.412642928505 AS sv_5, 0.1580859559 AS sv_6, 0.141022937392 AS sv_7, 0.392211270274 AS sv_8, -0.0404204439244 AS sv_9 UNION ALL SELECT 87 AS sv_idx, 1.0 AS dual_coeff, 0.186220567353 AS sv_0, -0.454204803994 AS sv_1, 0.502879696863 AS sv_2, 0.00489426596836 AS sv_3, -0.081067885799 AS sv_4, 0.0591552616954 AS sv_5, -0.00304134182931 AS sv_6, -0.0491462615255 AS sv_7, 0.160999326005 AS sv_8, -0.195087109228 AS sv_9 UNION ALL SELECT 88 AS sv_idx, 1.0 AS dual_coeff, -0.452007532145 AS sv_0, -0.102155236043 AS sv_1, -0.44213459194 AS sv_2, -0.388907850081 AS sv_3, -0.132907660254 AS sv_4, 0.599709052634 AS sv_5, -0.453791253494 AS sv_6, -0.0199474636405 AS sv_7, 0.231362638727 AS sv_8, 0.294995308819 AS sv_9 UNION ALL SELECT 89 AS sv_idx, -1.0 AS dual_coeff, -0.0719075512552 AS sv_0, 0.282428772102 AS sv_1, 0.0401797937289 AS sv_2, -0.16573962068 AS sv_3, -0.607267222088 AS sv_4, -0.170901021511 AS sv_5, -0.00321300145112 AS sv_6, 0.0667212196898 AS sv_7, -0.271794860257 AS sv_8, -0.0525219132414 AS sv_9 UNION ALL SELECT 90 AS sv_idx, 1.0 AS dual_coeff, -0.400610434425 AS sv_0, -0.68479351981 AS sv_1, 0.121857803348 AS sv_2, -0.00368060720346 AS sv_3, -0.157545060234 AS sv_4, -0.350460334585 AS sv_5, -0.631996386976 AS sv_6, 0.161853269439 AS sv_7, 0.156086250921 AS sv_8, 0.225214837421 AS sv_9 UNION ALL SELECT 91 AS sv_idx, 1.0 AS dual_coeff, -0.408749341318 AS sv_0, -0.263723577002 AS sv_1, -0.490033795182 AS sv_2, 0.0409118147752 AS sv_3, 0.164216733255 AS sv_4, -0.246110997061 AS sv_5, 0.14445148853 AS sv_6, -0.118986202364 AS sv_7, 0.0220505103362 AS sv_8, -0.0557756907327 AS sv_9 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, -0.524045075577 AS sv_0, 0.435411592918 AS sv_1, 0.182917144096 AS sv_2, -0.292183060265 AS sv_3, 0.496747982942 AS sv_4, 0.0893586767594 AS sv_5, 0.0574249396856 AS sv_6, -0.216220796286 AS sv_7, -0.271281954617 AS sv_8, 0.0207672731828 AS sv_9 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, -0.0993092754448 AS sv_0, -0.134370290464 AS sv_1, 0.036716144492 AS sv_2, 0.0292423890062 AS sv_3, 0.218015818335 AS sv_4, 0.421130759726 AS sv_5, 0.454249521066 AS sv_6, -0.10242212262 AS sv_7, -0.332129688884 AS sv_8, -0.384445694358 AS sv_9 UNION ALL SELECT 94 AS sv_idx, 1.0 AS dual_coeff, -0.110352598741 AS sv_0, 0.00109261497723 AS sv_1, -0.0165761227486 AS sv_2, 0.187945168864 AS sv_3, 0.683856590942 AS sv_4, 0.0176465117262 AS sv_5, 0.262448663424 AS sv_6, 0.272129145196 AS sv_7, 0.29830858446 AS sv_8, -0.0448057043576 AS sv_9 UNION ALL SELECT 95 AS sv_idx, 1.0 AS dual_coeff, -0.118286267331 AS sv_0, -0.180345071672 AS sv_1, 0.261943746755 AS sv_2, -0.183147689587 AS sv_3, 0.470566513839 AS sv_4, -0.0548757651385 AS sv_5, -0.0819724276623 AS sv_6, -0.00476648112026 AS sv_7, -0.113567435446 AS sv_8, -0.392561307431 AS sv_9 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 0.692764210049 AS sv_0, 0.130229418054 AS sv_1, -0.240713725745 AS sv_2, 0.0376618268862 AS sv_3, 0.135195347644 AS sv_4, -0.309524755092 AS sv_5, -0.0834293346799 AS sv_6, -0.0863408743079 AS sv_7, 0.0879326818183 AS sv_8, -0.352474488241 AS sv_9 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, 0.147197274473 AS sv_0, -0.10481716064 AS sv_1, -0.111054501097 AS sv_2, 0.156087743346 AS sv_3, -0.412238546494 AS sv_4, 0.127394525517 AS sv_5, 0.0619315715443 AS sv_6, -0.084577117874 AS sv_7, -0.433952461856 AS sv_8, 0.0438279000129 AS sv_9 UNION ALL SELECT 98 AS sv_idx, 1.0 AS dual_coeff, 0.157664201892 AS sv_0, 0.134433141342 AS sv_1, -0.179334920069 AS sv_2, -0.0251189634577 AS sv_3, 0.512044173008 AS sv_4, -0.276348751453 AS sv_5, -0.0148908871378 AS sv_6, 0.46889912706 AS sv_7, -0.0145745525292 AS sv_8, 0.195105586638 AS sv_9 UNION ALL SELECT 99 AS sv_idx, 1.0 AS dual_coeff, -0.0208360926744 AS sv_0, 0.519335230304 AS sv_1, 0.0184492193431 AS sv_2, 0.611328421151 AS sv_3, 0.109194076607 AS sv_4, 0.0641127504219 AS sv_5, 0.022926791816 AS sv_6, -0.402809294017 AS sv_7, 0.561632815731 AS sv_8, -0.0453519727314 AS sv_9) AS [Values]), 
kernel_cte AS 
(SELECT t.[KEY] AS [KEY], t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.[KEY] AS [KEY], sum(full_join_data_sv.dot_prod1) + 14.1300840205 AS dot_product 
FROM (SELECT [ADS_ano_2_OUT].[KEY] AS [KEY], [SV_data].dual_coeff * power(0.1 * ([ADS_ano_2_OUT].anoova_2 * [SV_data].sv_0 + [ADS_ano_2_OUT].anoova_3 * [SV_data].sv_1 + [ADS_ano_2_OUT].anoova_4 * [SV_data].sv_2 + [ADS_ano_2_OUT].anoova_5 * [SV_data].sv_3 + [ADS_ano_2_OUT].anoova_6 * [SV_data].sv_4 + [ADS_ano_2_OUT].anoova_7 * [SV_data].sv_5 + [ADS_ano_2_OUT].anoova_8 * [SV_data].sv_6 + [ADS_ano_2_OUT].anoova_9 * [SV_data].sv_7 + [ADS_ano_2_OUT].anoova_10 * [SV_data].sv_8 + [ADS_ano_2_OUT].anoova_11 * [SV_data].sv_9) + 0.0, 3) AS dot_prod1 
FROM [ADS_ano_2_OUT], [SV_data]) AS full_join_data_sv GROUP BY full_join_data_sv.[KEY]) AS t)
 SELECT kernel_cte.[KEY] AS [KEY], kernel_cte.dot_product AS [Estimator] 
FROM kernel_cte