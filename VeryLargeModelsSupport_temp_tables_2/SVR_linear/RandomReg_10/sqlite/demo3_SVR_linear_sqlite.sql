-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : SVR_linear
-- Dataset : RandomReg_10
-- Database : sqlite


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH kernel_input AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."TGT" AS FLOAT) AS "TGT" 
FROM "RandomReg_10" AS "ADS"), 
"SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, CAST("Values".dual_coeff AS FLOAT) AS dual_coeff, CAST("Values".sv_0 AS FLOAT) AS sv_0, CAST("Values".sv_1 AS FLOAT) AS sv_1, CAST("Values".sv_2 AS FLOAT) AS sv_2, CAST("Values".sv_3 AS FLOAT) AS sv_3, CAST("Values".sv_4 AS FLOAT) AS sv_4, CAST("Values".sv_5 AS FLOAT) AS sv_5, CAST("Values".sv_6 AS FLOAT) AS sv_6, CAST("Values".sv_7 AS FLOAT) AS sv_7, CAST("Values".sv_8 AS FLOAT) AS sv_8, CAST("Values".sv_9 AS FLOAT) AS sv_9 
FROM (SELECT 0 AS sv_idx, -0.1 AS dual_coeff, -1.7827096318579896 AS sv_0, 0.5599017905399861 AS sv_1, 0.13311377770499075 AS sv_2, 0.1771057854239862 AS sv_3, -1.4384357380521113 AS sv_4, 0.5580745537466728 AS sv_5, 0.3301863923758512 AS sv_6, 1.0074027483815893 AS sv_7, -0.735232683578599 AS sv_8, 0.5301726912233747 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -0.1 AS dual_coeff, 0.6623298870476911 AS sv_0, -0.14466184364459408 AS sv_1, -0.4233378333961578 AS sv_2, -1.2495795813027977 AS sv_3, -0.548574995285362 AS sv_4, -1.1371915662299197 AS sv_5, 0.01663158436200757 AS sv_6, -0.032340697730724274 AS sv_7, -0.08042811833495835 AS sv_8, 0.6392020587185764 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 0.1 AS dual_coeff, 0.8694658553563811 AS sv_0, 0.32231600917934444 AS sv_1, -0.437992766776364 AS sv_2, -0.14731619631935533 AS sv_3, -0.4039889236312651 AS sv_4, 1.8922719905980423 AS sv_5, 0.07634987343553191 AS sv_6, -0.8323998527814014 AS sv_7, -0.09948630772462574 AS sv_8, 0.8155312969289258 AS sv_9 UNION ALL SELECT 3 AS sv_idx, -0.1 AS dual_coeff, 0.4443892983426857 AS sv_0, -0.6087374876863917 AS sv_1, -1.7368938491583985 AS sv_2, 1.4704670843488727 AS sv_3, -1.4697913688875572 AS sv_4, 0.4517222860649883 AS sv_5, -0.33760275685003066 AS sv_6, -0.08936038423557587 AS sv_7, -0.24829220161063323 AS sv_8, 0.6138413720482201 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -0.1 AS dual_coeff, 0.5711322440763456 AS sv_0, -0.014980996492931432 AS sv_1, -1.5232512983910809 AS sv_2, 1.8936063378793577 AS sv_3, 0.44597598519855775 AS sv_4, -1.1214027916147937 AS sv_5, -0.338919141995621 AS sv_6, -0.07593007910264404 AS sv_7, -0.15060743742917457 AS sv_8, 0.9172937856716435 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 0.1 AS dual_coeff, -0.29157358796271793 AS sv_0, 1.061984565910281 AS sv_1, 1.7327983780353353 AS sv_2, 0.5522043442253135 AS sv_3, 0.4715198809820012 AS sv_4, 0.6134728139942742 AS sv_5, 0.22418695911281536 AS sv_6, -0.5758290809477716 AS sv_7, 0.03846674558083296 AS sv_8, -0.11352248037217438 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -0.1 AS dual_coeff, 2.434235523534455 AS sv_0, -0.14752596910266838 AS sv_1, 0.31899439638934446 AS sv_2, -3.9912885179936213 AS sv_3, -2.1277947525067775 AS sv_4, 2.0466987867534647 AS sv_5, -1.2939361435540477 AS sv_6, -2.063295162834261 AS sv_7, -1.6533000080360474 AS sv_8, 0.01559558553610639 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -0.1 AS dual_coeff, 0.6311035489040773 AS sv_0, 0.5234378276312774 AS sv_1, 0.38748490651690554 AS sv_2, -1.8316894690704832 AS sv_3, -2.8012908337953695 AS sv_4, 1.1813381968736358 AS sv_5, -0.24046266634057512 AS sv_6, -1.2066366796746637 AS sv_7, -0.4025380964924924 AS sv_8, -2.408589671078978 AS sv_9 UNION ALL SELECT 8 AS sv_idx, 0.1 AS dual_coeff, 0.6800389448678937 AS sv_0, -0.9405029222707214 AS sv_1, 1.9966011707973088 AS sv_2, 1.9737574262819368 AS sv_3, 0.15007426791522938 AS sv_4, -0.5243777808662209 AS sv_5, -0.11125683859707515 AS sv_6, 0.002809569219270865 AS sv_7, 0.021022926526784357 AS sv_8, 0.3358890911364689 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.1 AS dual_coeff, -0.3292842942877819 AS sv_0, -0.3870102338535069 AS sv_1, 0.8669609737617006 AS sv_2, -0.8479737534640933 AS sv_3, 0.8587294067401514 AS sv_4, 1.3825524761202033 AS sv_5, 0.12240188653634958 AS sv_6, -0.1682619880379936 AS sv_7, -1.4901396843996222 AS sv_8, -0.19753543035285562 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 0.1 AS dual_coeff, -1.4113130571285446 AS sv_0, 0.5225386626750229 AS sv_1, -0.03277253020320722 AS sv_2, -1.2710077669151731 AS sv_3, 0.999564916000194 AS sv_4, 0.45828793876616447 AS sv_5, 0.6430072393302189 AS sv_6, -0.4957144018056562 AS sv_7, 0.7668437757754999 AS sv_8, -0.6614220432878031 AS sv_9 UNION ALL SELECT 11 AS sv_idx, 0.1 AS dual_coeff, -0.7932309459422675 AS sv_0, -0.45933373732420313 AS sv_1, 0.5946771946702072 AS sv_2, 0.39411425825101476 AS sv_3, 0.1835186463845854 AS sv_4, 1.2259126830124203 AS sv_5, -0.23083301281521054 AS sv_6, -0.6110319040746274 AS sv_7, -0.03830316399091625 AS sv_8, 0.7383661741607511 AS sv_9 UNION ALL SELECT 12 AS sv_idx, 0.1 AS dual_coeff, 0.9982712581526261 AS sv_0, 0.23587535234668064 AS sv_1, 1.6687535011141577 AS sv_2, 0.14029315922137522 AS sv_3, -0.3495703224537293 AS sv_4, 0.4344720049661924 AS sv_5, -0.11851970432064364 AS sv_6, 0.0854563955714447 AS sv_7, -2.304579465727078 AS sv_8, 1.873681027604768 AS sv_9 UNION ALL SELECT 13 AS sv_idx, -0.1 AS dual_coeff, 1.4884859009409979 AS sv_0, -1.4351076301626604 AS sv_1, 0.055110257451533966 AS sv_2, -0.4338126575601065 AS sv_3, -1.3572720613204745 AS sv_4, -1.5916936297783382 AS sv_5, 0.4825405498748673 AS sv_6, -0.09421672249011982 AS sv_7, -0.008092575630246896 AS sv_8, -0.7147936716508372 AS sv_9 UNION ALL SELECT 14 AS sv_idx, 0.1 AS dual_coeff, 0.391610882673137 AS sv_0, 0.7316261211346499 AS sv_1, -0.12875022488078935 AS sv_2, 0.49557191205319456 AS sv_3, 1.4684153292982585 AS sv_4, 0.2588801619086689 AS sv_5, -0.1821711947159624 AS sv_6, -0.060347655827979255 AS sv_7, -0.3474333598007753 AS sv_8, -1.2817421055315223 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 0.1 AS dual_coeff, 2.158241115300078 AS sv_0, 0.2676507811668582 AS sv_1, 0.9519093576303396 AS sv_2, 1.970456348555097 AS sv_3, -0.01805437836471338 AS sv_4, -1.2494742219861754 AS sv_5, 1.2566586429636435 AS sv_6, 0.6098850048713202 AS sv_7, -0.16838677020388274 AS sv_8, 0.6044433177877142 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 0.1 AS dual_coeff, -0.3530817633578635 AS sv_0, 1.0897810277953779 AS sv_1, -2.099147669338375 AS sv_2, -0.1404220734465099 AS sv_3, -1.4031583677536585 AS sv_4, 0.3945813760489362 AS sv_5, 0.038458128118578315 AS sv_6, 0.9309738981628217 AS sv_7, 1.1302135009452585 AS sv_8, 1.6803714050238034 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -0.1 AS dual_coeff, -1.9215804094971576 AS sv_0, -0.6550736725587594 AS sv_1, 0.11724716882794144 AS sv_2, -0.45810323508021167 AS sv_3, 1.008404476310951 AS sv_4, -1.0404259064095096 AS sv_5, -0.4013417111980933 AS sv_6, 0.2966329388539434 AS sv_7, -1.2495409208803328 AS sv_8, 1.1899325389869864 AS sv_9 UNION ALL SELECT 18 AS sv_idx, 0.1 AS dual_coeff, -0.7706707136524124 AS sv_0, -0.22534264711586277 AS sv_1, 0.7379869754948905 AS sv_2, -0.21472348589688536 AS sv_3, 0.15853523281812312 AS sv_4, -0.24873961548043694 AS sv_5, 0.32142977152454844 AS sv_6, 1.2505521474548902 AS sv_7, -0.07117113335021549 AS sv_8, 0.008195345837626634 AS sv_9 UNION ALL SELECT 19 AS sv_idx, -0.1 AS dual_coeff, -1.6226254382964573 AS sv_0, 0.8053668932168558 AS sv_1, -0.9343241704311581 AS sv_2, 0.8650836338581496 AS sv_3, -0.9779584193508374 AS sv_4, 0.6872455269774304 AS sv_5, -0.1318742310367551 AS sv_6, -0.48598849209747075 AS sv_7, 0.2313907955512947 AS sv_8, 0.7319977152616035 AS sv_9 UNION ALL SELECT 20 AS sv_idx, 0.1 AS dual_coeff, 1.5757873390426083 AS sv_0, 0.14213492779170553 AS sv_1, -0.15297007247808136 AS sv_2, 0.5916745225960053 AS sv_3, 0.6707163752018087 AS sv_4, 0.6625939275396716 AS sv_5, 0.08626154821212027 AS sv_6, 0.8116567839201924 AS sv_7, -0.025872082992278587 AS sv_8, 0.710438044049209 AS sv_9 UNION ALL SELECT 21 AS sv_idx, -0.1 AS dual_coeff, -0.18191751180117813 AS sv_0, -1.8320546125322572 AS sv_1, -1.5593298867936973 AS sv_2, -1.013319697958156 AS sv_3, -1.1387911534776063 AS sv_4, -0.7506181799438272 AS sv_5, -0.7240629456303459 AS sv_6, -0.5662611699355061 AS sv_7, 0.25273823590779587 AS sv_8, 0.30851758315283234 AS sv_9 UNION ALL SELECT 22 AS sv_idx, 0.1 AS dual_coeff, 0.05082224025280411 AS sv_0, 1.343474402139517 AS sv_1, 1.1862464913767061 AS sv_2, -0.6627390212031201 AS sv_3, -0.387893863234298 AS sv_4, 0.11816448421992835 AS sv_5, 0.40160082936950897 AS sv_6, -0.1799005852915881 AS sv_7, -0.6990499225311589 AS sv_8, 0.23205386101078684 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.1 AS dual_coeff, -0.6042951551042015 AS sv_0, -0.48017811399063987 AS sv_1, -0.7542825692024804 AS sv_2, 0.43359156063777593 AS sv_3, 1.209321437249917 AS sv_4, -1.753119623650515 AS sv_5, 0.5156105986092256 AS sv_6, 0.11294939926527063 AS sv_7, 0.1357802035153995 AS sv_8, -0.7604854545960222 AS sv_9 UNION ALL SELECT 24 AS sv_idx, 0.1 AS dual_coeff, 0.6008116937038641 AS sv_0, 0.8037679440680124 AS sv_1, 1.6998893753270106 AS sv_2, -0.0867360316949045 AS sv_3, -1.0950674272441343 AS sv_4, 0.5014356702225439 AS sv_5, -1.7206740883924276 AS sv_6, -0.8148060664558938 AS sv_7, 0.4931714251821265 AS sv_8, 0.36860794553175896 AS sv_9 UNION ALL SELECT 25 AS sv_idx, -0.1 AS dual_coeff, 1.738741177599107 AS sv_0, 0.2405781237046412 AS sv_1, -1.074653972221543 AS sv_2, 0.5413315485891246 AS sv_3, -0.8044509059315914 AS sv_4, -0.4299666693658347 AS sv_5, -0.4980035136027024 AS sv_6, 0.40298773311385333 AS sv_7, -1.012696716665257 AS sv_8, 0.6307891862477114 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 0.1 AS dual_coeff, 0.9122481516887383 AS sv_0, 0.5407473106323089 AS sv_1, 1.016323135866299 AS sv_2, -0.08196737041614892 AS sv_3, 1.810402402770992 AS sv_4, -1.421576239154909 AS sv_5, -0.9773916285069058 AS sv_6, 0.8382817661390957 AS sv_7, 1.7550829759782132 AS sv_8, 0.636305156382388 AS sv_9 UNION ALL SELECT 27 AS sv_idx, -0.1 AS dual_coeff, 0.3634169263838288 AS sv_0, 3.070620490630201 AS sv_1, -0.3134723767948273 AS sv_2, -0.016060972879918152 AS sv_3, 0.6151679794075329 AS sv_4, -0.6267878620072483 AS sv_5, -0.2215306594419873 AS sv_6, 0.3319921748636244 AS sv_7, -1.1837022225187166 AS sv_8, -2.0059250471778616 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 0.1 AS dual_coeff, 1.0402493250202867 AS sv_0, -1.429673956113182 AS sv_1, 0.7939394135047745 AS sv_2, 1.3984516222766565 AS sv_3, 1.4956347318288359 AS sv_4, -0.3679721028796168 AS sv_5, 0.40120861131295915 AS sv_6, 1.9048968112034605 AS sv_7, 0.025123124359675737 AS sv_8, -1.3143870737800836 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 0.1 AS dual_coeff, 1.1881458623855992 AS sv_0, 0.6415798860062177 AS sv_1, -0.26049856698744567 AS sv_2, -0.2481794932367823 AS sv_3, 0.08356159071541129 AS sv_4, 1.583422676885443 AS sv_5, 0.7613972728564218 AS sv_6, 1.0126518503429274 AS sv_7, 0.6647997056493935 AS sv_8, 1.270641951361375 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 0.1 AS dual_coeff, 0.39318564387781163 AS sv_0, -0.16263678202300752 AS sv_1, 2.4700338835817313 AS sv_2, 0.7629042454446997 AS sv_3, 0.6181828355867455 AS sv_4, -0.3609251947482264 AS sv_5, -0.4837068427590092 AS sv_6, -0.6341929930213883 AS sv_7, -0.15206514397570287 AS sv_8, 1.7692639439055955 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -0.1 AS dual_coeff, -1.3342320628586 AS sv_0, -0.5101817887266062 AS sv_1, -0.4251497690198057 AS sv_2, 0.8165643472198515 AS sv_3, -0.8471113585352369 AS sv_4, -0.9508264565581138 AS sv_5, 0.44060160930812425 AS sv_6, 0.18376726928792192 AS sv_7, 1.3718580990261264 AS sv_8, -0.22984797680336783 AS sv_9 UNION ALL SELECT 32 AS sv_idx, 0.1 AS dual_coeff, -1.8284277610636617 AS sv_0, -0.16326356176940165 AS sv_1, -0.9773055618428319 AS sv_2, -0.6892640771787257 AS sv_3, -0.4963821225633215 AS sv_4, 1.0572822091985636 AS sv_5, -1.5778325384498009 AS sv_6, 0.5334606167410998 AS sv_7, 1.7578932956001991 AS sv_8, 2.1829513638464273 AS sv_9 UNION ALL SELECT 33 AS sv_idx, 0.1 AS dual_coeff, -0.3730218255300593 AS sv_0, -0.9525626479423205 AS sv_1, -0.13443087191076483 AS sv_2, -0.8003637530947717 AS sv_3, -0.031156963502157804 AS sv_4, 0.7970231121864289 AS sv_5, 0.8243327192443618 AS sv_6, -1.079364555162556 AS sv_7, 1.3154285230387475 AS sv_8, -0.1648432505778448 AS sv_9 UNION ALL SELECT 34 AS sv_idx, -0.1 AS dual_coeff, -0.8929040237718665 AS sv_0, -0.6481408566108926 AS sv_1, -0.8751805171556316 AS sv_2, 1.24001560892114 AS sv_3, -1.0395478021448894 AS sv_4, 1.0501978491512216 AS sv_5, 2.625769014638022 AS sv_6, 0.35277317071054987 AS sv_7, -0.9085204716516203 AS sv_8, 0.913876855606588 AS sv_9 UNION ALL SELECT 35 AS sv_idx, 0.1 AS dual_coeff, 0.27988285098167726 AS sv_0, 0.6779919322360048 AS sv_1, 1.4670208699267915 AS sv_2, -0.15575405296659442 AS sv_3, -0.8462732575021674 AS sv_4, -0.6314193013700002 AS sv_5, 2.300788317276629 AS sv_6, -0.7402709529379303 AS sv_7, 0.970141400173321 AS sv_8, 0.6107310496604722 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 0.1 AS dual_coeff, 1.5235357221633312 AS sv_0, 0.738275982301284 AS sv_1, -1.4731268041595753 AS sv_2, -0.46089293180940766 AS sv_3, -0.20550758304272917 AS sv_4, 1.124026130806446 AS sv_5, -0.13694221346809365 AS sv_6, 1.4321952389465753 AS sv_7, 1.87537250288579 AS sv_8, -0.01178577032390541 AS sv_9 UNION ALL SELECT 37 AS sv_idx, -0.1 AS dual_coeff, 1.1646152166358184 AS sv_0, -1.2473374587336772 AS sv_1, 0.46891997076276926 AS sv_2, -0.4394617001393151 AS sv_3, -1.3631221654569208 AS sv_4, 0.5220718295742688 AS sv_5, 0.9475980125219733 AS sv_6, 1.1639267114953848 AS sv_7, -0.9017238789248192 AS sv_8, 0.6299116301591762 AS sv_9 UNION ALL SELECT 38 AS sv_idx, -0.1 AS dual_coeff, 0.9345774254716126 AS sv_0, -1.9001775986599596 AS sv_1, 0.17933865710548139 AS sv_2, 0.1875901783233878 AS sv_3, -0.5387631944075266 AS sv_4, 1.2871465673488465 AS sv_5, -2.5665062657480977 AS sv_6, 0.6232385849324242 AS sv_7, -0.24894790224859287 AS sv_8, -0.14490823792584728 AS sv_9 UNION ALL SELECT 39 AS sv_idx, -0.1 AS dual_coeff, -1.1050845959954028 AS sv_0, -0.6219775856788415 AS sv_1, 0.6578905110082953 AS sv_2, 0.19732089993804675 AS sv_3, -2.6504348078772666 AS sv_4, -0.7253957871116793 AS sv_5, 0.05934698255193573 AS sv_6, -0.8122104669373016 AS sv_7, -0.011096455452549066 AS sv_8, -0.7906605853093821 AS sv_9 UNION ALL SELECT 40 AS sv_idx, -0.1 AS dual_coeff, -0.16127737985308307 AS sv_0, -1.6764109618678866 AS sv_1, -0.1773195593611974 AS sv_2, -0.14203846294725717 AS sv_3, -1.0568757321691962 AS sv_4, 0.0384435666740488 AS sv_5, 0.8192724944956098 AS sv_6, -1.7621345635739472 AS sv_7, -0.4339036561674381 AS sv_8, 1.029430205600887 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -0.1 AS dual_coeff, -0.0030773090682687846 AS sv_0, -0.6120665005682058 AS sv_1, 0.5485049111325756 AS sv_2, 0.7554488928463763 AS sv_3, -2.0693302021355904 AS sv_4, 0.7491792114879661 AS sv_5, 0.0942146697818402 AS sv_6, -0.8300214134281432 AS sv_7, 1.1349097915558093 AS sv_8, -1.11848880136501 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 0.1 AS dual_coeff, -0.1521026655376468 AS sv_0, -0.16467186566030662 AS sv_1, 0.5040578163877221 AS sv_2, 0.680639781253891 AS sv_3, 1.0415788701799007 AS sv_4, -0.5062877939242316 AS sv_5, -0.8116451610289523 AS sv_6, 1.182789744087736 AS sv_7, 1.3163150783217819 AS sv_8, 0.556768733025668 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 0.1 AS dual_coeff, 1.1521313128676907 AS sv_0, 1.6194344903687652 AS sv_1, -0.09700332282502283 AS sv_2, -0.3772931228289678 AS sv_3, -0.2969255935667437 AS sv_4, 0.6671623942486472 AS sv_5, -1.0774168163779443 AS sv_6, 0.1428234375544994 AS sv_7, -1.8972489128697798 AS sv_8, 0.839976257563523 AS sv_9 UNION ALL SELECT 44 AS sv_idx, -0.1 AS dual_coeff, -1.0495224376120962 AS sv_0, -2.3647574020068047 AS sv_1, 0.9380136904955607 AS sv_2, -2.040113803171429 AS sv_3, -0.26852046676993463 AS sv_4, 1.7226040722993716 AS sv_5, -0.08032563816377523 AS sv_6, 0.6711947190599098 AS sv_7, -0.16372009255828124 AS sv_8, 0.41071007855143443 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -0.1 AS dual_coeff, -0.7157387078725475 AS sv_0, -0.7528135009116936 AS sv_1, -0.7051913326628592 AS sv_2, -1.1082675388202876 AS sv_3, 0.9905487636276048 AS sv_4, 1.9172560396556215 AS sv_5, 1.1271871590114204 AS sv_6, -1.9079776035767597 AS sv_7, -0.050316833668158624 AS sv_8, -0.3095495631506292 AS sv_9 UNION ALL SELECT 46 AS sv_idx, -0.1 AS dual_coeff, 0.6594088240218963 AS sv_0, -1.117434817605979 AS sv_1, 0.029100875461091216 AS sv_2, 0.9959381235678008 AS sv_3, 1.0503797085149378 AS sv_4, 0.993953501299861 AS sv_5, -2.7844237984466416 AS sv_6, -0.8234440790714608 AS sv_7, -2.594699659221376 AS sv_8, 1.379437953273724 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 0.1 AS dual_coeff, 0.6777703512300358 AS sv_0, -0.07158079137427009 AS sv_1, 0.3315447565439609 AS sv_2, 0.8642991859054625 AS sv_3, -0.01281511578613812 AS sv_4, -0.0060346296139561755 AS sv_5, 1.5448738735848198 AS sv_6, 1.7606775540319757 AS sv_7, 0.3804535114147103 AS sv_8, -0.5575756217344349 AS sv_9 UNION ALL SELECT 48 AS sv_idx, 0.1 AS dual_coeff, 0.398000944613371 AS sv_0, 0.8271203687685157 AS sv_1, 0.29504140222013553 AS sv_2, 1.217484890053481 AS sv_3, -0.918191245064267 AS sv_4, 0.20448033407081023 AS sv_5, 1.9116583486725016 AS sv_6, -2.199743786421981 AS sv_7, 0.20856145222461037 AS sv_8, 0.44800912362444234 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -0.1 AS dual_coeff, 0.7375569752405429 AS sv_0, -1.189570689903679 AS sv_1, -0.5273034378934962 AS sv_2, -1.1351433835074642 AS sv_3, -0.5580918930264211 AS sv_4, -0.7073458532617333 AS sv_5, -0.21353407611882896 AS sv_6, 0.005572703655874979 AS sv_7, -1.741340144986494 AS sv_8, -0.48500142773150146 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.1 AS dual_coeff, -1.1955601829328215 AS sv_0, -0.5438633888600009 AS sv_1, 1.3928489477376786 AS sv_2, 0.29725908131785506 AS sv_3, -0.09904085910169363 AS sv_4, 1.7981919360309893 AS sv_5, -0.2982856641323979 AS sv_6, -0.7260115874357913 AS sv_7, -0.08798278697012904 AS sv_8, 1.4746098318690724 AS sv_9 UNION ALL SELECT 51 AS sv_idx, -0.1 AS dual_coeff, 0.7685123075625041 AS sv_0, -1.095359900156557 AS sv_1, 0.4207483878965611 AS sv_2, -1.118434513766733 AS sv_3, 0.94213843478248 AS sv_4, -1.6565102786456245 AS sv_5, -1.115219434341902 AS sv_6, 1.10029713039155 AS sv_7, -1.7173876090846873 AS sv_8, -0.09595174515519661 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 0.1 AS dual_coeff, 1.9281234723864962 AS sv_0, -0.5240372776217319 AS sv_1, 2.0958556488784024 AS sv_2, 1.4050432480605073 AS sv_3, 0.5386834807895613 AS sv_4, 0.9128267937845747 AS sv_5, -0.7857194492739092 AS sv_6, -1.1221448073812108 AS sv_7, 2.989596347044145 AS sv_8, -1.738666070442788 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 0.1 AS dual_coeff, 1.8207530511515095 AS sv_0, 0.8436828957649024 AS sv_1, 0.6030337587390456 AS sv_2, 1.058171013210782 AS sv_3, -0.9675784633481913 AS sv_4, 0.2367724290863154 AS sv_5, 1.070088205789964 AS sv_6, -1.4285817946055637 AS sv_7, 1.6359734751574904 AS sv_8, -0.16104490427296092 AS sv_9 UNION ALL SELECT 54 AS sv_idx, 0.1 AS dual_coeff, -1.0447998742641398 AS sv_0, 1.1193750188066534 AS sv_1, -0.5290618831927314 AS sv_2, -1.1087580100802648 AS sv_3, 1.2408346836340327 AS sv_4, 0.9741194261580279 AS sv_5, 0.6882659841162968 AS sv_6, -1.2861876748861645 AS sv_7, -0.12009890074340625 AS sv_8, -0.9624026138193565 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -0.1 AS dual_coeff, -1.2258282194591732 AS sv_0, -0.39503053455188475 AS sv_1, -0.7556900866570333 AS sv_2, 1.9027715712909363 AS sv_3, 0.27130689959861487 AS sv_4, 0.6069251466869219 AS sv_5, -1.1268099477298654 AS sv_6, -1.3563483157998104 AS sv_7, -1.3501159801679619 AS sv_8, 0.7867553861791049 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -0.1 AS dual_coeff, -0.8130182708809013 AS sv_0, -0.7673072786425086 AS sv_1, 0.6493939666501483 AS sv_2, -0.431508021053887 AS sv_3, -0.8712378800310411 AS sv_4, -0.9993654351388768 AS sv_5, -0.32383965502683 AS sv_6, 1.2531841429786232 AS sv_7, 0.47501051078812284 AS sv_8, 0.39361012248315863 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -0.1 AS dual_coeff, 0.4434717408763967 AS sv_0, -0.9630387748738439 AS sv_1, 0.03698694704325669 AS sv_2, 1.5454270693209808 AS sv_3, 1.5547544560226256 AS sv_4, -0.2662260018709619 AS sv_5, 0.5616515631128071 AS sv_6, 0.4329310829188612 AS sv_7, -1.6702920432003687 AS sv_8, 0.1206207624047862 AS sv_9 UNION ALL SELECT 58 AS sv_idx, -0.1 AS dual_coeff, 0.6197347986319731 AS sv_0, 0.13520582022086736 AS sv_1, 0.22916036970459389 AS sv_2, 0.19019454677242392 AS sv_3, -0.7909057983300439 AS sv_4, 0.7534535995653877 AS sv_5, 1.235580504196008 AS sv_6, 0.3046585722264628 AS sv_7, -2.0380997713438007 AS sv_8, 0.5745901873736575 AS sv_9 UNION ALL SELECT 59 AS sv_idx, 0.1 AS dual_coeff, 0.3494158747839881 AS sv_0, -1.1850456651959491 AS sv_1, 0.3928388355825836 AS sv_2, 1.1352549387252504 AS sv_3, -0.4786555924059382 AS sv_4, 1.0978825983775917 AS sv_5, 0.5622815503608488 AS sv_6, 0.6635392845773066 AS sv_7, -1.7516253433919915 AS sv_8, 0.9567405573635612 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 0.1 AS dual_coeff, -0.919723457692772 AS sv_0, -0.9541511016410574 AS sv_1, 0.5686299031785073 AS sv_2, 1.421875453224298 AS sv_3, 0.6575038895002946 AS sv_4, 0.31951315402216107 AS sv_5, 1.3310869796087246 AS sv_6, -0.34219217399760216 AS sv_7, -0.50121130930097 AS sv_8, -0.23929647235393137 AS sv_9 UNION ALL SELECT 61 AS sv_idx, -0.1 AS dual_coeff, 0.24594990629716912 AS sv_0, -1.8286407264562279 AS sv_1, -1.2436146969691546 AS sv_2, 0.14170018501642553 AS sv_3, 1.9905315781888306 AS sv_4, -1.3237146661924357 AS sv_5, -2.5843929186548933 AS sv_6, 0.022887095709767578 AS sv_7, 0.48689622731431514 AS sv_8, 1.0483485856748747 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 0.1 AS dual_coeff, -1.3157115383923255 AS sv_0, -0.2543842002580888 AS sv_1, 0.36596290608041254 AS sv_2, 1.8302433276613608 AS sv_3, 0.6429642863228179 AS sv_4, 0.6610814484957174 AS sv_5, 0.06129702661697322 AS sv_6, 0.6761804068245167 AS sv_7, 1.4964566535823185 AS sv_8, 0.7323942062420845 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -0.1 AS dual_coeff, 0.3621419246928801 AS sv_0, -0.4083097367481784 AS sv_1, 1.0204981928097123 AS sv_2, -0.41932073881689574 AS sv_3, 0.5470800628024794 AS sv_4, 0.5023258289185895 AS sv_5, -1.2738681089740524 AS sv_6, 0.8379918645778929 AS sv_7, -1.9275505151287338 AS sv_8, 0.37117363571065687 AS sv_9 UNION ALL SELECT 64 AS sv_idx, 0.1 AS dual_coeff, 2.8107702281511435 AS sv_0, 0.2479598674358872 AS sv_1, 0.6172442977370132 AS sv_2, -0.23487363635190292 AS sv_3, 1.996147651770403 AS sv_4, 0.552805168880046 AS sv_5, 0.8693112756683995 AS sv_6, 2.614818878550584 AS sv_7, -0.0650419737088196 AS sv_8, 0.501049774810359 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 0.1 AS dual_coeff, 0.5603600953691231 AS sv_0, 1.456377543159662 AS sv_1, 1.5569195964287441 AS sv_2, -1.2195669450232594 AS sv_3, 1.1876901315295343 AS sv_4, 0.35764181456961197 AS sv_5, -0.08419770648067697 AS sv_6, -1.2701421722716257 AS sv_7, -0.1306274931517295 AS sv_8, 1.4264140211857006 AS sv_9 UNION ALL SELECT 66 AS sv_idx, -0.1 AS dual_coeff, -0.5026674914419033 AS sv_0, 0.143574433900628 AS sv_1, -0.872761441196829 AS sv_2, -0.3401373446391501 AS sv_3, 0.7409637700356684 AS sv_4, -0.019092341726665664 AS sv_5, -1.1057905836314752 AS sv_6, -0.24282406881234603 AS sv_7, -0.5979733826917706 AS sv_8, -0.38130269865003463 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -0.1 AS dual_coeff, -0.5303212005433303 AS sv_0, -0.3653894159197561 AS sv_1, -0.9615662898307464 AS sv_2, -1.8130818762045466 AS sv_3, -0.5362164085336691 AS sv_4, -0.8100387031157575 AS sv_5, -0.4595236871795928 AS sv_6, -0.5303271526476072 AS sv_7, -1.277994412610604 AS sv_8, 1.43629280498466 AS sv_9 UNION ALL SELECT 68 AS sv_idx, -0.1 AS dual_coeff, -1.1182778334078747 AS sv_0, 0.8644006299002615 AS sv_1, 0.45776861236436783 AS sv_2, -1.819962407026388 AS sv_3, 0.3304737044689873 AS sv_4, 0.31429933236347446 AS sv_5, -0.5047314478596443 AS sv_6, -0.01685310360797014 AS sv_7, -1.518667497757524 AS sv_8, -1.045608822526576 AS sv_9 UNION ALL SELECT 69 AS sv_idx, 0.1 AS dual_coeff, 1.0225965404741875 AS sv_0, 0.1109836453347228 AS sv_1, 0.1888688624711014 AS sv_2, 1.0177323969292706 AS sv_3, -0.7573078864848414 AS sv_4, 1.2533880835073579 AS sv_5, 1.9378098213560637 AS sv_6, 1.4639499794023008 AS sv_7, 1.9009645965187745 AS sv_8, -1.3637383386684128 AS sv_9 UNION ALL SELECT 70 AS sv_idx, 0.1 AS dual_coeff, -0.8100836790794957 AS sv_0, 2.1349324856704786 AS sv_1, 1.2677590217581047 AS sv_2, 0.5957530556545604 AS sv_3, 0.3001204991813368 AS sv_4, 0.5223126891662067 AS sv_5, -2.3121256842155526 AS sv_6, 0.877453233191471 AS sv_7, -0.3792582630656641 AS sv_8, 0.3038362285511924 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 0.1 AS dual_coeff, 0.10715851196782991 AS sv_0, 0.21308828842752156 AS sv_1, 0.6433592121809218 AS sv_2, 0.22885481609230923 AS sv_3, 0.33291056374103883 AS sv_4, 0.7359394469163053 AS sv_5, 0.26152125787538144 AS sv_6, 1.0901295605582688 AS sv_7, 0.46238060129166486 AS sv_8, -0.18440779099069243 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -0.1 AS dual_coeff, 1.139213943498887 AS sv_0, 0.29555831849829717 AS sv_1, 0.21351935978155798 AS sv_2, 0.21616985546375272 AS sv_3, 1.2621190656210834 AS sv_4, -0.46884983781022405 AS sv_5, -2.8951397669851433 AS sv_6, -0.9937390191746367 AS sv_7, -0.3093235091111961 AS sv_8, -0.04690948394036747 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -0.1 AS dual_coeff, -0.5135675470364792 AS sv_0, -0.8003673053468898 AS sv_1, 0.19378283133606997 AS sv_2, 1.0965351526985396 AS sv_3, -0.32058268918214206 AS sv_4, 0.21636519172841728 AS sv_5, 1.46903207688595 AS sv_6, -0.20086204414810277 AS sv_7, -2.019076907942007 AS sv_8, -0.6080326284525016 AS sv_9 UNION ALL SELECT 74 AS sv_idx, -0.1 AS dual_coeff, 0.7024601634400496 AS sv_0, 1.0597774221088758 AS sv_1, -0.92259520661707 AS sv_2, -1.0080192103774277 AS sv_3, -0.35992947582286433 AS sv_4, -1.7654497366924988 AS sv_5, 1.173904485168846 AS sv_6, 0.6916038439055038 AS sv_7, 0.5363879326031334 AS sv_8, 0.36130330235485497 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -0.1 AS dual_coeff, 1.0831079837281372 AS sv_0, -0.985104768416336 AS sv_1, -0.5427918958620014 AS sv_2, 1.0387824703914883 AS sv_3, -1.3156332352170856 AS sv_4, 0.7267781109547563 AS sv_5, 0.8222812037947991 AS sv_6, -0.40306224069204966 AS sv_7, 0.7169830756754006 AS sv_8, -0.7025036800087415 AS sv_9 UNION ALL SELECT 76 AS sv_idx, 0.1 AS dual_coeff, -0.27710610995910573 AS sv_0, -1.3323675799679833 AS sv_1, 0.8418759587614627 AS sv_2, -1.412843646332525 AS sv_3, 1.9361974989562825 AS sv_4, 1.2093596431060374 AS sv_5, 0.01757527731681911 AS sv_6, 1.864733751994399 AS sv_7, 1.3836821873064789 AS sv_8, 0.559883772656571 AS sv_9 UNION ALL SELECT 77 AS sv_idx, 0.1 AS dual_coeff, 0.4043527991246496 AS sv_0, -1.6436380581233299 AS sv_1, 1.5727543369521997 AS sv_2, -0.9683101899830961 AS sv_3, -1.702744325643868 AS sv_4, 1.048541605941504 AS sv_5, 2.314056471083925 AS sv_6, 1.1316188042775364 AS sv_7, -1.2428254887599448 AS sv_8, -0.28178865040767564 AS sv_9 UNION ALL SELECT 78 AS sv_idx, -0.1 AS dual_coeff, 0.03841579954222735 AS sv_0, -1.92055033045521 AS sv_1, 0.6635298189266661 AS sv_2, -0.23935928580898716 AS sv_3, -1.3000349756396508 AS sv_4, -0.5336312908433302 AS sv_5, 1.589409294320567 AS sv_6, 0.7443039312093164 AS sv_7, -2.0832276526580147 AS sv_8, 0.36458131758527834 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -0.1 AS dual_coeff, 0.16236293759589615 AS sv_0, 0.4102158211004136 AS sv_1, -0.16963933508179477 AS sv_2, 1.110791677109241 AS sv_3, -0.7282070187946046 AS sv_4, -0.35352099457869224 AS sv_5, 1.6210770708935722 AS sv_6, -0.29791387497881033 AS sv_7, -1.374675619349566 AS sv_8, -9.617149215920775e-05 AS sv_9) AS "Values"), 
kernel_dp AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(CAST(full_join_data_sv.dot_prod1 AS FLOAT)) + 8.178203703164431 AS dot_product 
FROM (SELECT kernel_input."KEY" AS "KEY", "SV_data".dual_coeff * (kernel_input."Feature_0" * "SV_data".sv_0 + kernel_input."Feature_1" * "SV_data".sv_1 + kernel_input."Feature_2" * "SV_data".sv_2 + kernel_input."Feature_3" * "SV_data".sv_3 + kernel_input."Feature_4" * "SV_data".sv_4 + kernel_input."Feature_5" * "SV_data".sv_5 + kernel_input."Feature_6" * "SV_data".sv_6 + kernel_input."Feature_7" * "SV_data".sv_7 + kernel_input."Feature_8" * "SV_data".sv_8 + kernel_input."Feature_9" * "SV_data".sv_9) AS dot_prod1 
FROM kernel_input, "SV_data") AS full_join_data_sv GROUP BY full_join_data_sv."KEY") AS t)
 SELECT kernel_dp."KEY" AS "KEY", kernel_dp.dot_product AS "Estimator" 
FROM kernel_dp