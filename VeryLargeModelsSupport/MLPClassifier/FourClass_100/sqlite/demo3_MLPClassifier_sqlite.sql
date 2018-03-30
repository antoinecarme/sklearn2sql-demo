-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.


-- Code For temporary table TMP_20180329233214_S8F33C_HL_1_relu_1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329233214_S8F33C_HL_1_relu_1" (
	"KEY" BIGINT, 
	"NEUR_1_1" FLOAT, 
	"NEUR_1_2" FLOAT, 
	"NEUR_1_3" FLOAT
)


-- Code For temporary table TMP_20180329233214_S8F33C_HL_1_relu_1 part 2/2. Populate

WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS FLOAT) AS "Feature_0", CAST("ADS"."Feature_1" AS FLOAT) AS "Feature_1", CAST("ADS"."Feature_2" AS FLOAT) AS "Feature_2", CAST("ADS"."Feature_3" AS FLOAT) AS "Feature_3", CAST("ADS"."Feature_4" AS FLOAT) AS "Feature_4", CAST("ADS"."Feature_5" AS FLOAT) AS "Feature_5", CAST("ADS"."Feature_6" AS FLOAT) AS "Feature_6", CAST("ADS"."Feature_7" AS FLOAT) AS "Feature_7", CAST("ADS"."Feature_8" AS FLOAT) AS "Feature_8", CAST("ADS"."Feature_9" AS FLOAT) AS "Feature_9", CAST("ADS"."Feature_10" AS FLOAT) AS "Feature_10", CAST("ADS"."Feature_11" AS FLOAT) AS "Feature_11", CAST("ADS"."Feature_12" AS FLOAT) AS "Feature_12", CAST("ADS"."Feature_13" AS FLOAT) AS "Feature_13", CAST("ADS"."Feature_14" AS FLOAT) AS "Feature_14", CAST("ADS"."Feature_15" AS FLOAT) AS "Feature_15", CAST("ADS"."Feature_16" AS FLOAT) AS "Feature_16", CAST("ADS"."Feature_17" AS FLOAT) AS "Feature_17", CAST("ADS"."Feature_18" AS FLOAT) AS "Feature_18", CAST("ADS"."Feature_19" AS FLOAT) AS "Feature_19", CAST("ADS"."Feature_20" AS FLOAT) AS "Feature_20", CAST("ADS"."Feature_21" AS FLOAT) AS "Feature_21", CAST("ADS"."Feature_22" AS FLOAT) AS "Feature_22", CAST("ADS"."Feature_23" AS FLOAT) AS "Feature_23", CAST("ADS"."Feature_24" AS FLOAT) AS "Feature_24", CAST("ADS"."Feature_25" AS FLOAT) AS "Feature_25", CAST("ADS"."Feature_26" AS FLOAT) AS "Feature_26", CAST("ADS"."Feature_27" AS FLOAT) AS "Feature_27", CAST("ADS"."Feature_28" AS FLOAT) AS "Feature_28", CAST("ADS"."Feature_29" AS FLOAT) AS "Feature_29", CAST("ADS"."Feature_30" AS FLOAT) AS "Feature_30", CAST("ADS"."Feature_31" AS FLOAT) AS "Feature_31", CAST("ADS"."Feature_32" AS FLOAT) AS "Feature_32", CAST("ADS"."Feature_33" AS FLOAT) AS "Feature_33", CAST("ADS"."Feature_34" AS FLOAT) AS "Feature_34", CAST("ADS"."Feature_35" AS FLOAT) AS "Feature_35", CAST("ADS"."Feature_36" AS FLOAT) AS "Feature_36", CAST("ADS"."Feature_37" AS FLOAT) AS "Feature_37", CAST("ADS"."Feature_38" AS FLOAT) AS "Feature_38", CAST("ADS"."Feature_39" AS FLOAT) AS "Feature_39", CAST("ADS"."Feature_40" AS FLOAT) AS "Feature_40", CAST("ADS"."Feature_41" AS FLOAT) AS "Feature_41", CAST("ADS"."Feature_42" AS FLOAT) AS "Feature_42", CAST("ADS"."Feature_43" AS FLOAT) AS "Feature_43", CAST("ADS"."Feature_44" AS FLOAT) AS "Feature_44", CAST("ADS"."Feature_45" AS FLOAT) AS "Feature_45", CAST("ADS"."Feature_46" AS FLOAT) AS "Feature_46", CAST("ADS"."Feature_47" AS FLOAT) AS "Feature_47", CAST("ADS"."Feature_48" AS FLOAT) AS "Feature_48", CAST("ADS"."Feature_49" AS FLOAT) AS "Feature_49", CAST("ADS"."Feature_50" AS FLOAT) AS "Feature_50", CAST("ADS"."Feature_51" AS FLOAT) AS "Feature_51", CAST("ADS"."Feature_52" AS FLOAT) AS "Feature_52", CAST("ADS"."Feature_53" AS FLOAT) AS "Feature_53", CAST("ADS"."Feature_54" AS FLOAT) AS "Feature_54", CAST("ADS"."Feature_55" AS FLOAT) AS "Feature_55", CAST("ADS"."Feature_56" AS FLOAT) AS "Feature_56", CAST("ADS"."Feature_57" AS FLOAT) AS "Feature_57", CAST("ADS"."Feature_58" AS FLOAT) AS "Feature_58", CAST("ADS"."Feature_59" AS FLOAT) AS "Feature_59", CAST("ADS"."Feature_60" AS FLOAT) AS "Feature_60", CAST("ADS"."Feature_61" AS FLOAT) AS "Feature_61", CAST("ADS"."Feature_62" AS FLOAT) AS "Feature_62", CAST("ADS"."Feature_63" AS FLOAT) AS "Feature_63", CAST("ADS"."Feature_64" AS FLOAT) AS "Feature_64", CAST("ADS"."Feature_65" AS FLOAT) AS "Feature_65", CAST("ADS"."Feature_66" AS FLOAT) AS "Feature_66", CAST("ADS"."Feature_67" AS FLOAT) AS "Feature_67", CAST("ADS"."Feature_68" AS FLOAT) AS "Feature_68", CAST("ADS"."Feature_69" AS FLOAT) AS "Feature_69", CAST("ADS"."Feature_70" AS FLOAT) AS "Feature_70", CAST("ADS"."Feature_71" AS FLOAT) AS "Feature_71", CAST("ADS"."Feature_72" AS FLOAT) AS "Feature_72", CAST("ADS"."Feature_73" AS FLOAT) AS "Feature_73", CAST("ADS"."Feature_74" AS FLOAT) AS "Feature_74", CAST("ADS"."Feature_75" AS FLOAT) AS "Feature_75", CAST("ADS"."Feature_76" AS FLOAT) AS "Feature_76", CAST("ADS"."Feature_77" AS FLOAT) AS "Feature_77", CAST("ADS"."Feature_78" AS FLOAT) AS "Feature_78", CAST("ADS"."Feature_79" AS FLOAT) AS "Feature_79", CAST("ADS"."Feature_80" AS FLOAT) AS "Feature_80", CAST("ADS"."Feature_81" AS FLOAT) AS "Feature_81", CAST("ADS"."Feature_82" AS FLOAT) AS "Feature_82", CAST("ADS"."Feature_83" AS FLOAT) AS "Feature_83", CAST("ADS"."Feature_84" AS FLOAT) AS "Feature_84", CAST("ADS"."Feature_85" AS FLOAT) AS "Feature_85", CAST("ADS"."Feature_86" AS FLOAT) AS "Feature_86", CAST("ADS"."Feature_87" AS FLOAT) AS "Feature_87", CAST("ADS"."Feature_88" AS FLOAT) AS "Feature_88", CAST("ADS"."Feature_89" AS FLOAT) AS "Feature_89", CAST("ADS"."Feature_90" AS FLOAT) AS "Feature_90", CAST("ADS"."Feature_91" AS FLOAT) AS "Feature_91", CAST("ADS"."Feature_92" AS FLOAT) AS "Feature_92", CAST("ADS"."Feature_93" AS FLOAT) AS "Feature_93", CAST("ADS"."Feature_94" AS FLOAT) AS "Feature_94", CAST("ADS"."Feature_95" AS FLOAT) AS "Feature_95", CAST("ADS"."Feature_96" AS FLOAT) AS "Feature_96", CAST("ADS"."Feature_97" AS FLOAT) AS "Feature_97", CAST("ADS"."Feature_98" AS FLOAT) AS "Feature_98", CAST("ADS"."Feature_99" AS FLOAT) AS "Feature_99" 
FROM "FourClass_100" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.014328706576970877 * "IL"."Feature_0" + -0.27822925018473454 * "IL"."Feature_1" + -0.557902456661009 * "IL"."Feature_2" + -0.2719342024878126 * "IL"."Feature_3" + 0.6555645505925557 * "IL"."Feature_4" + 0.0877771951342273 * "IL"."Feature_5" + 0.027821972718344353 * "IL"."Feature_6" + -0.13655333173069215 * "IL"."Feature_7" + -0.34403327546328694 * "IL"."Feature_8" + 0.1764232106766417 * "IL"."Feature_9" + -0.3376810902911928 * "IL"."Feature_10" + -0.7398022672772774 * "IL"."Feature_11" + 0.3147357802329394 * "IL"."Feature_12" + 0.6157020903488554 * "IL"."Feature_13" + 0.1973535327331255 * "IL"."Feature_14" + -0.15805244838237945 * "IL"."Feature_15" + 0.41089726612660715 * "IL"."Feature_16" + -1.4961569529056291 * "IL"."Feature_17" + 0.04546982056212354 * "IL"."Feature_18" + 0.5083204969616287 * "IL"."Feature_19" + -0.5588872612417013 * "IL"."Feature_20" + -0.29057270830273885 * "IL"."Feature_21" + 0.46681272608338903 * "IL"."Feature_22" + -0.7788768446395313 * "IL"."Feature_23" + -0.34790064609677146 * "IL"."Feature_24" + 0.7917188497063575 * "IL"."Feature_25" + 0.13540909025966197 * "IL"."Feature_26" + 0.08697776314823039 * "IL"."Feature_27" + -0.26177157566772347 * "IL"."Feature_28" + 0.5347796072036742 * "IL"."Feature_29" + -0.2024038372916209 * "IL"."Feature_30" + 0.385349496067648 * "IL"."Feature_31" + -0.3560191239011315 * "IL"."Feature_32" + -0.5305563730621183 * "IL"."Feature_33" + 0.17371840475249176 * "IL"."Feature_34" + -0.22005931368213208 * "IL"."Feature_35" + -0.1600433066073692 * "IL"."Feature_36" + -0.3702205887584023 * "IL"."Feature_37" + 0.26854247664745 * "IL"."Feature_38" + 0.39701442824037564 * "IL"."Feature_39" + -0.31111733209739795 * "IL"."Feature_40" + -0.6043371718869852 * "IL"."Feature_41" + -0.14396671640851993 * "IL"."Feature_42" + 0.3640902312134141 * "IL"."Feature_43" + 0.07371205984891287 * "IL"."Feature_44" + 0.046492945966400925 * "IL"."Feature_45" + 0.2856348934764652 * "IL"."Feature_46" + 0.6901561330547824 * "IL"."Feature_47" + -0.2599007255357358 * "IL"."Feature_48" + 0.35330340823744255 * "IL"."Feature_49" + 0.6857053915983072 * "IL"."Feature_50" + 0.18030334270217996 * "IL"."Feature_51" + 0.19310686040692654 * "IL"."Feature_52" + 0.13403285964135672 * "IL"."Feature_53" + 0.5036085174683297 * "IL"."Feature_54" + -0.32870298354837096 * "IL"."Feature_55" + -0.3720793624998251 * "IL"."Feature_56" + -0.40216104950930903 * "IL"."Feature_57" + -0.42756611318080257 * "IL"."Feature_58" + 0.11525525588067889 * "IL"."Feature_59" + 0.6329988335386967 * "IL"."Feature_60" + 0.03230942392110407 * "IL"."Feature_61" + 0.03498694396191528 * "IL"."Feature_62" + -0.17279879878490312 * "IL"."Feature_63" + -0.7398443951875998 * "IL"."Feature_64" + -0.44035482969985923 * "IL"."Feature_65" + 0.04492273278728872 * "IL"."Feature_66" + 0.43643261236002295 * "IL"."Feature_67" + -0.8203834123186187 * "IL"."Feature_68" + 0.39759156778311117 * "IL"."Feature_69" + 0.10250010434062094 * "IL"."Feature_70" + 0.40376198741297403 * "IL"."Feature_71" + -0.24173411287540866 * "IL"."Feature_72" + -0.016963600004872705 * "IL"."Feature_73" + -0.08171445945399201 * "IL"."Feature_74" + 0.040572050886617035 * "IL"."Feature_75" + -0.4323551650089489 * "IL"."Feature_76" + -0.3974295322414639 * "IL"."Feature_77" + -0.11133874875860353 * "IL"."Feature_78" + 0.40124076162074407 * "IL"."Feature_79" + -0.18099725134526906 * "IL"."Feature_80" + -0.002736638290721161 * "IL"."Feature_81" + -0.677472997973835 * "IL"."Feature_82" + 0.16863500026813208 * "IL"."Feature_83" + 0.37495853339805246 * "IL"."Feature_84" + -0.7449163068505635 * "IL"."Feature_85" + 0.22900773908546124 * "IL"."Feature_86" + 0.22485622949614248 * "IL"."Feature_87" + -0.484809958120607 * "IL"."Feature_88" + -0.37852740826921566 * "IL"."Feature_89" + 0.027669050297055336 * "IL"."Feature_90" + 0.07836378475458189 * "IL"."Feature_91" + 0.042665955963905655 * "IL"."Feature_92" + -0.4639550415605168 * "IL"."Feature_93" + 4.528467935054859e-05 * "IL"."Feature_94" + 0.08692300479512143 * "IL"."Feature_95" + 0.1679389683314431 * "IL"."Feature_96" + -0.09049662141179365 * "IL"."Feature_97" + 0.0747677842785065 * "IL"."Feature_98" + 0.23486806846795538 * "IL"."Feature_99" + 0.025600085821706704 AS "NEUR_1_1", 0.693816467588264 * "IL"."Feature_0" + -0.4649377486632188 * "IL"."Feature_1" + -0.27646439398646355 * "IL"."Feature_2" + 0.3260106819874855 * "IL"."Feature_3" + -0.7083004257386899 * "IL"."Feature_4" + 0.4920882101892048 * "IL"."Feature_5" + -0.9185063294227318 * "IL"."Feature_6" + 0.03402078608969278 * "IL"."Feature_7" + 0.49039750291419365 * "IL"."Feature_8" + 0.2567405009676726 * "IL"."Feature_9" + -0.6353155126881579 * "IL"."Feature_10" + 0.23286729427168168 * "IL"."Feature_11" + -0.12775964287556435 * "IL"."Feature_12" + 0.48519637782317243 * "IL"."Feature_13" + 0.1568965350960247 * "IL"."Feature_14" + -0.3949906993935469 * "IL"."Feature_15" + -0.1801175532292535 * "IL"."Feature_16" + 0.18124294721760778 * "IL"."Feature_17" + -0.19836245420972434 * "IL"."Feature_18" + -0.09903803408225591 * "IL"."Feature_19" + -0.5324623660070694 * "IL"."Feature_20" + -0.014829733532914042 * "IL"."Feature_21" + -1.0819925606579288 * "IL"."Feature_22" + -0.056923091831044596 * "IL"."Feature_23" + 0.06564055767387578 * "IL"."Feature_24" + 0.2952472845910471 * "IL"."Feature_25" + 0.04525599124541672 * "IL"."Feature_26" + 0.34082319952561274 * "IL"."Feature_27" + 0.19614657304933322 * "IL"."Feature_28" + -0.3756564683717395 * "IL"."Feature_29" + -0.5104568565998195 * "IL"."Feature_30" + 0.08644555697643877 * "IL"."Feature_31" + -0.03784983076195977 * "IL"."Feature_32" + -0.07825956360969508 * "IL"."Feature_33" + -0.8237368797226738 * "IL"."Feature_34" + -0.4262343290288116 * "IL"."Feature_35" + 0.28559767144940174 * "IL"."Feature_36" + 0.3676318586240787 * "IL"."Feature_37" + -0.4032519897640613 * "IL"."Feature_38" + 0.3500807559687782 * "IL"."Feature_39" + 0.13163743505196598 * "IL"."Feature_40" + 1.0258539574975383 * "IL"."Feature_41" + 0.1609515641992277 * "IL"."Feature_42" + -0.4383262933610344 * "IL"."Feature_43" + -0.4666749088799926 * "IL"."Feature_44" + -0.15591497687993808 * "IL"."Feature_45" + 0.06300669212039967 * "IL"."Feature_46" + -0.24250770403327326 * "IL"."Feature_47" + 0.5449083332764496 * "IL"."Feature_48" + -0.4697525190812603 * "IL"."Feature_49" + 0.16000785926877917 * "IL"."Feature_50" + -0.6313272961011213 * "IL"."Feature_51" + -0.6367195381434045 * "IL"."Feature_52" + 0.10602483277160096 * "IL"."Feature_53" + 0.050058103086054274 * "IL"."Feature_54" + 0.28948347424375626 * "IL"."Feature_55" + -0.37566781024427554 * "IL"."Feature_56" + 0.04845060538390954 * "IL"."Feature_57" + 0.2380112632227111 * "IL"."Feature_58" + 0.0028019854153855128 * "IL"."Feature_59" + 0.0887408619660835 * "IL"."Feature_60" + -0.0662102475695412 * "IL"."Feature_61" + -0.006569852208888366 * "IL"."Feature_62" + 0.31462856034014897 * "IL"."Feature_63" + 0.9279811524929499 * "IL"."Feature_64" + 0.6643613956896901 * "IL"."Feature_65" + 0.10228036427532197 * "IL"."Feature_66" + 0.06862264566867124 * "IL"."Feature_67" + 0.743294711082247 * "IL"."Feature_68" + -0.16535963200142118 * "IL"."Feature_69" + 0.11563924890103883 * "IL"."Feature_70" + 0.2546187631749298 * "IL"."Feature_71" + -0.16566853245297106 * "IL"."Feature_72" + 0.5468076857879448 * "IL"."Feature_73" + 0.02606100570530606 * "IL"."Feature_74" + 0.4268927122639698 * "IL"."Feature_75" + 0.7673653041939246 * "IL"."Feature_76" + -0.10768443146628756 * "IL"."Feature_77" + -0.05538524769010591 * "IL"."Feature_78" + 0.6542378440332214 * "IL"."Feature_79" + -0.301187683110552 * "IL"."Feature_80" + 0.5590796859622517 * "IL"."Feature_81" + 0.011601118808768712 * "IL"."Feature_82" + 0.07559792380567014 * "IL"."Feature_83" + -0.6351199575774262 * "IL"."Feature_84" + -9.61263979633114e-05 * "IL"."Feature_85" + -0.33674594466573426 * "IL"."Feature_86" + -0.3051557309903018 * "IL"."Feature_87" + 0.3688212528335753 * "IL"."Feature_88" + -0.12086946134080102 * "IL"."Feature_89" + -0.22750511844207186 * "IL"."Feature_90" + -0.54032772800074 * "IL"."Feature_91" + 0.6267394386288192 * "IL"."Feature_92" + -0.18725692072218034 * "IL"."Feature_93" + 0.44394726048174354 * "IL"."Feature_94" + -0.5665688941107113 * "IL"."Feature_95" + -0.27508322600163 * "IL"."Feature_96" + -1.111806007025929 * "IL"."Feature_97" + 0.33450222210788333 * "IL"."Feature_98" + 0.03332280272580451 * "IL"."Feature_99" + -0.4282925142079947 AS "NEUR_1_2", -0.20510404647506425 * "IL"."Feature_0" + 0.16284066960632987 * "IL"."Feature_1" + 0.37823479681202654 * "IL"."Feature_2" + 0.39916785771345525 * "IL"."Feature_3" + -0.4080637249823706 * "IL"."Feature_4" + 0.2641079358442743 * "IL"."Feature_5" + 0.8496291241801072 * "IL"."Feature_6" + -0.1524979410262424 * "IL"."Feature_7" + 0.14381151876432818 * "IL"."Feature_8" + 0.20134283702150968 * "IL"."Feature_9" + 0.07050990920312665 * "IL"."Feature_10" + 0.21708659413014286 * "IL"."Feature_11" + -0.21146744982687707 * "IL"."Feature_12" + -0.3426252773019748 * "IL"."Feature_13" + -0.26222325992047896 * "IL"."Feature_14" + -1.2838378694326118 * "IL"."Feature_15" + 0.34354354345301324 * "IL"."Feature_16" + -0.13100412393009622 * "IL"."Feature_17" + 0.544311213887644 * "IL"."Feature_18" + -0.020879204679997234 * "IL"."Feature_19" + 0.14503495480651313 * "IL"."Feature_20" + -0.11978406674978466 * "IL"."Feature_21" + 0.2118730945649426 * "IL"."Feature_22" + -0.29384128673646637 * "IL"."Feature_23" + 0.4079086091890237 * "IL"."Feature_24" + 0.027347030074618067 * "IL"."Feature_25" + 0.42177974838705024 * "IL"."Feature_26" + 0.08555596761263459 * "IL"."Feature_27" + -0.5306420063366112 * "IL"."Feature_28" + 0.5084232805047296 * "IL"."Feature_29" + 0.2094401531682595 * "IL"."Feature_30" + 0.2536126463666736 * "IL"."Feature_31" + -0.4282793231611003 * "IL"."Feature_32" + 0.38579379124449803 * "IL"."Feature_33" + -0.5285462883143254 * "IL"."Feature_34" + -1.540294255974941 * "IL"."Feature_35" + 0.31013074994836054 * "IL"."Feature_36" + 0.3885603716557944 * "IL"."Feature_37" + 1.5316105674925629 * "IL"."Feature_38" + -0.7900344854905768 * "IL"."Feature_39" + -0.9760404050488379 * "IL"."Feature_40" + -0.13813255293096902 * "IL"."Feature_41" + -0.3111006071501537 * "IL"."Feature_42" + 0.5689094622473904 * "IL"."Feature_43" + -0.29068339057659237 * "IL"."Feature_44" + -0.006342881248073148 * "IL"."Feature_45" + 0.3149892500068092 * "IL"."Feature_46" + -0.33473253562988325 * "IL"."Feature_47" + 0.34272330680096635 * "IL"."Feature_48" + 0.09248638740448561 * "IL"."Feature_49" + 0.1078602678030391 * "IL"."Feature_50" + -0.5804818797090919 * "IL"."Feature_51" + -0.4219878067500181 * "IL"."Feature_52" + 0.5556621417246638 * "IL"."Feature_53" + -0.07022180560207354 * "IL"."Feature_54" + 0.05069892488977195 * "IL"."Feature_55" + 1.1829685644914454 * "IL"."Feature_56" + 0.1138896455576577 * "IL"."Feature_57" + -0.14581665172596153 * "IL"."Feature_58" + -0.4716949252295945 * "IL"."Feature_59" + -0.2791819013242327 * "IL"."Feature_60" + -0.8736017490347142 * "IL"."Feature_61" + 0.014478569102621066 * "IL"."Feature_62" + 0.11488004863211176 * "IL"."Feature_63" + -0.322000265334917 * "IL"."Feature_64" + -0.15088707287487976 * "IL"."Feature_65" + 0.9663937640329395 * "IL"."Feature_66" + 0.4339737745020604 * "IL"."Feature_67" + 0.16039071230536095 * "IL"."Feature_68" + -0.05778919614930508 * "IL"."Feature_69" + -0.4031454999987259 * "IL"."Feature_70" + -0.6674355443200912 * "IL"."Feature_71" + 0.49542637412200086 * "IL"."Feature_72" + 0.16219040321223657 * "IL"."Feature_73" + -0.44716142627983707 * "IL"."Feature_74" + -0.9086048310501648 * "IL"."Feature_75" + 0.42900598784332683 * "IL"."Feature_76" + 0.2421184689256419 * "IL"."Feature_77" + -0.3679797597237261 * "IL"."Feature_78" + 0.3070673359046317 * "IL"."Feature_79" + 0.027702217497261684 * "IL"."Feature_80" + 0.12091592662267343 * "IL"."Feature_81" + 0.16715541208445173 * "IL"."Feature_82" + -0.5941819984916745 * "IL"."Feature_83" + 0.4444345569650828 * "IL"."Feature_84" + 0.3798085958177722 * "IL"."Feature_85" + -0.6237453735265067 * "IL"."Feature_86" + -0.18319348623700063 * "IL"."Feature_87" + 0.17259543471368696 * "IL"."Feature_88" + -0.03341464753399947 * "IL"."Feature_89" + 0.12067946345810432 * "IL"."Feature_90" + -0.2494812917763018 * "IL"."Feature_91" + 0.07706396243629518 * "IL"."Feature_92" + -0.023946825651399634 * "IL"."Feature_93" + 0.5567215285644604 * "IL"."Feature_94" + 0.031073813218061564 * "IL"."Feature_95" + -0.7229526036911597 * "IL"."Feature_96" + 0.6966094873981471 * "IL"."Feature_97" + -0.020329786841307006 * "IL"."Feature_98" + 0.38110811050092475 * "IL"."Feature_99" + -0.03716530499003485 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CAST(max("HL_BA_1"."NEUR_1_1", 0.0) AS FLOAT) AS "NEUR_1_1", CAST(max("HL_BA_1"."NEUR_1_2", 0.0) AS FLOAT) AS "NEUR_1_2", CAST(max("HL_BA_1"."NEUR_1_3", 0.0) AS FLOAT) AS "NEUR_1_3" 
FROM "HL_BA_1")
 INSERT INTO "TMP_20180329233214_S8F33C_HL_1_relu_1" ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1"
-- Code For temporary table TMP_20180329233214_W1E1E3_OL_softmax_1 part 1/2. Create 


CREATE TEMPORARY TABLE "TMP_20180329233214_W1E1E3_OL_softmax_1" (
	"KEY" BIGINT, 
	"NEUR_3_1" FLOAT, 
	"NEUR_3_2" FLOAT, 
	"NEUR_3_3" FLOAT, 
	"NEUR_3_4" FLOAT
)


-- Code For temporary table TMP_20180329233214_W1E1E3_OL_softmax_1 part 2/2. Populate

WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -0.7871761675480414 * "HL_1_relu_1"."NEUR_1_1" + 0.49924229972723494 * "HL_1_relu_1"."NEUR_1_2" + 1.3061944683591562 * "HL_1_relu_1"."NEUR_1_3" + -0.8763428577765335 AS "NEUR_2_1", -0.7378730514232709 * "HL_1_relu_1"."NEUR_1_1" + 0.017288746851913752 * "HL_1_relu_1"."NEUR_1_2" + -0.6645294743734708 * "HL_1_relu_1"."NEUR_1_3" + 0.44738317460366683 AS "NEUR_2_2", -1.5913145031631608 * "HL_1_relu_1"."NEUR_1_1" + 1.7800859506659013 * "HL_1_relu_1"."NEUR_1_2" + 0.17599368133453508 * "HL_1_relu_1"."NEUR_1_3" + -0.38264430183493386 AS "NEUR_2_3", -0.8078289866829615 * "HL_1_relu_1"."NEUR_1_1" + -0.016887612276829122 * "HL_1_relu_1"."NEUR_1_2" + -0.7401275771170891 * "HL_1_relu_1"."NEUR_1_3" + 1.3524846875251648 AS "NEUR_2_4", -0.6093447500232567 * "HL_1_relu_1"."NEUR_1_1" + -0.3776672193434496 * "HL_1_relu_1"."NEUR_1_2" + -0.6729994029430566 * "HL_1_relu_1"."NEUR_1_3" + -0.01807831622698608 AS "NEUR_2_5" 
FROM "TMP_20180329233214_S8F33C_HL_1_relu_1" AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CAST(max("HL_BA_2"."NEUR_2_1", 0.0) AS FLOAT) AS "NEUR_2_1", CAST(max("HL_BA_2"."NEUR_2_2", 0.0) AS FLOAT) AS "NEUR_2_2", CAST(max("HL_BA_2"."NEUR_2_3", 0.0) AS FLOAT) AS "NEUR_2_3", CAST(max("HL_BA_2"."NEUR_2_4", 0.0) AS FLOAT) AS "NEUR_2_4", CAST(max("HL_BA_2"."NEUR_2_5", 0.0) AS FLOAT) AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", -1.3451028620460612 * "HL_2_relu"."NEUR_2_1" + -0.6439874346140754 * "HL_2_relu"."NEUR_2_2" + -1.912751509895332 * "HL_2_relu"."NEUR_2_3" + -0.0403082141560778 * "HL_2_relu"."NEUR_2_4" + 0.5898869944394443 * "HL_2_relu"."NEUR_2_5" + 1.110150521830317 AS "NEUR_3_1", 0.7369504150533746 * "HL_2_relu"."NEUR_2_1" + -0.06301189399946115 * "HL_2_relu"."NEUR_2_2" + -0.7298337224329383 * "HL_2_relu"."NEUR_2_3" + -0.41392563855640513 * "HL_2_relu"."NEUR_2_4" + 0.39610310948825905 * "HL_2_relu"."NEUR_2_5" + 0.3968937898386979 AS "NEUR_3_2", 0.6872389217103837 * "HL_2_relu"."NEUR_2_1" + 0.2851940836567267 * "HL_2_relu"."NEUR_2_2" + 0.9064547686391342 * "HL_2_relu"."NEUR_2_3" + -0.9483157266092589 * "HL_2_relu"."NEUR_2_4" + 0.6635046101198987 * "HL_2_relu"."NEUR_2_5" + -1.3389874259506078 AS "NEUR_3_3", 0.5371870160319979 * "HL_2_relu"."NEUR_2_1" + 0.7864582298187645 * "HL_2_relu"."NEUR_2_2" + 0.944109012516611 * "HL_2_relu"."NEUR_2_3" + 1.1267807554322147 * "HL_2_relu"."NEUR_2_4" + -0.4855256473589421 * "HL_2_relu"."NEUR_2_5" + -1.485507105372623 AS "NEUR_3_4" 
FROM "HL_2_relu"), 
"OL_softmax" AS 
(SELECT "OL_BA"."KEY" AS "KEY", CAST("OL_BA"."NEUR_3_1" AS FLOAT) AS "NEUR_3_1", CAST("OL_BA"."NEUR_3_2" AS FLOAT) AS "NEUR_3_2", CAST("OL_BA"."NEUR_3_3" AS FLOAT) AS "NEUR_3_3", CAST("OL_BA"."NEUR_3_4" AS FLOAT) AS "NEUR_3_4" 
FROM "OL_BA")
 INSERT INTO "TMP_20180329233214_W1E1E3_OL_softmax_1" ("KEY", "NEUR_3_1", "NEUR_3_2", "NEUR_3_3", "NEUR_3_4") SELECT "OL_softmax_1"."KEY", "OL_softmax_1"."NEUR_3_1", "OL_softmax_1"."NEUR_3_2", "OL_softmax_1"."NEUR_3_3", "OL_softmax_1"."NEUR_3_4" 
FROM (SELECT "OL_softmax"."KEY" AS "KEY", "OL_softmax"."NEUR_3_1" AS "NEUR_3_1", "OL_softmax"."NEUR_3_2" AS "NEUR_3_2", "OL_softmax"."NEUR_3_3" AS "NEUR_3_3", "OL_softmax"."NEUR_3_4" AS "NEUR_3_4" 
FROM "OL_softmax") AS "OL_softmax_1"

-- Model deployment code

WITH orig_cte AS 
(SELECT "OL_softmax_1"."KEY" AS "KEY", "OL_softmax_1"."NEUR_3_1" AS "Score_0", "OL_softmax_1"."NEUR_3_2" AS "Score_1", "OL_softmax_1"."NEUR_3_3" AS "Score_2", "OL_softmax_1"."NEUR_3_4" AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CAST(NULL AS FLOAT) AS "LogProba_2", CAST(NULL AS FLOAT) AS "LogProba_3", CAST(NULL AS BIGINT) AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM "TMP_20180329233214_W1E1E3_OL_softmax_1" AS "OL_softmax_1"), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
score_soft_max_deltas AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", exp(score_max."Score_0" - score_max."max_Score") AS "exp_delta_Score_0", exp(score_max."Score_1" - score_max."max_Score") AS "exp_delta_Score_1", exp(score_max."Score_2" - score_max."max_Score") AS "exp_delta_Score_2", exp(score_max."Score_3" - score_max."max_Score") AS "exp_delta_Score_3" 
FROM score_max), 
score_class_union_soft AS 
(SELECT soft_scu."KEY" AS "KEY", soft_scu.class AS class, soft_scu."exp_delta_Score" AS "exp_delta_Score" 
FROM (SELECT score_soft_max_deltas."KEY" AS "KEY", 0 AS class, score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 1 AS class, score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 2 AS class, score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score" 
FROM score_soft_max_deltas UNION ALL SELECT score_soft_max_deltas."KEY" AS "KEY", 3 AS class, score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score" 
FROM score_soft_max_deltas) AS soft_scu), 
score_soft_max AS 
(SELECT score_soft_max_deltas."KEY" AS "KEY", score_soft_max_deltas."Score_0" AS "Score_0", score_soft_max_deltas."Score_1" AS "Score_1", score_soft_max_deltas."Score_2" AS "Score_2", score_soft_max_deltas."Score_3" AS "Score_3", score_soft_max_deltas."Proba_0" AS "Proba_0", score_soft_max_deltas."Proba_1" AS "Proba_1", score_soft_max_deltas."Proba_2" AS "Proba_2", score_soft_max_deltas."Proba_3" AS "Proba_3", score_soft_max_deltas."LogProba_0" AS "LogProba_0", score_soft_max_deltas."LogProba_1" AS "LogProba_1", score_soft_max_deltas."LogProba_2" AS "LogProba_2", score_soft_max_deltas."LogProba_3" AS "LogProba_3", score_soft_max_deltas."Decision" AS "Decision", score_soft_max_deltas."DecisionProba" AS "DecisionProba", score_soft_max_deltas."KEY_m" AS "KEY_m", score_soft_max_deltas."max_Score" AS "max_Score", score_soft_max_deltas."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max_deltas."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max_deltas."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max_deltas."exp_delta_Score_3" AS "exp_delta_Score_3", sum_exp_t."KEY_sum" AS "KEY_sum", sum_exp_t."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_soft_max_deltas LEFT OUTER JOIN (SELECT score_class_union_soft."KEY" AS "KEY_sum", sum(score_class_union_soft."exp_delta_Score") AS "sum_ExpDeltaScore" 
FROM score_class_union_soft GROUP BY score_class_union_soft."KEY") AS sum_exp_t ON score_soft_max_deltas."KEY" = sum_exp_t."KEY_sum"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore" 
FROM score_class_union LEFT OUTER JOIN score_soft_max ON score_class_union."KEY_u" = score_soft_max."KEY"), 
arg_max_cte AS 
(SELECT score_soft_max."KEY" AS "KEY", score_soft_max."Score_0" AS "Score_0", score_soft_max."Score_1" AS "Score_1", score_soft_max."Score_2" AS "Score_2", score_soft_max."Score_3" AS "Score_3", score_soft_max."Proba_0" AS "Proba_0", score_soft_max."Proba_1" AS "Proba_1", score_soft_max."Proba_2" AS "Proba_2", score_soft_max."Proba_3" AS "Proba_3", score_soft_max."LogProba_0" AS "LogProba_0", score_soft_max."LogProba_1" AS "LogProba_1", score_soft_max."LogProba_2" AS "LogProba_2", score_soft_max."LogProba_3" AS "LogProba_3", score_soft_max."Decision" AS "Decision", score_soft_max."DecisionProba" AS "DecisionProba", score_soft_max."KEY_m" AS "KEY_m", score_soft_max."max_Score" AS "max_Score", score_soft_max."exp_delta_Score_0" AS "exp_delta_Score_0", score_soft_max."exp_delta_Score_1" AS "exp_delta_Score_1", score_soft_max."exp_delta_Score_2" AS "exp_delta_Score_2", score_soft_max."exp_delta_Score_3" AS "exp_delta_Score_3", score_soft_max."KEY_sum" AS "KEY_sum", score_soft_max."sum_ExpDeltaScore" AS "sum_ExpDeltaScore", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score", soft_max_comp."KEY_softmax" AS "KEY_softmax", soft_max_comp."SoftProba_0" AS "SoftProba_0", soft_max_comp."SoftProba_1" AS "SoftProba_1", soft_max_comp."SoftProba_2" AS "SoftProba_2", soft_max_comp."SoftProba_3" AS "SoftProba_3" 
FROM score_soft_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."Score" >= union_with_max."max_Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_soft_max."KEY" = "arg_max_t_Score"."KEY_Score" LEFT OUTER JOIN (SELECT score_soft_max."KEY" AS "KEY_softmax", score_soft_max."exp_delta_Score_0" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_0", score_soft_max."exp_delta_Score_1" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_1", score_soft_max."exp_delta_Score_2" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_2", score_soft_max."exp_delta_Score_3" / score_soft_max."sum_ExpDeltaScore" AS "SoftProba_3" 
FROM score_soft_max) AS soft_max_comp ON soft_max_comp."KEY_softmax" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", CAST(NULL AS FLOAT) AS "Score_0", CAST(NULL AS FLOAT) AS "Score_1", CAST(NULL AS FLOAT) AS "Score_2", CAST(NULL AS FLOAT) AS "Score_3", arg_max_cte."SoftProba_0" AS "Proba_0", arg_max_cte."SoftProba_1" AS "Proba_1", arg_max_cte."SoftProba_2" AS "Proba_2", arg_max_cte."SoftProba_3" AS "Proba_3", CASE WHEN (arg_max_cte."SoftProba_0" IS NULL OR arg_max_cte."SoftProba_0" > 0.0) THEN ln(arg_max_cte."SoftProba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."SoftProba_1" IS NULL OR arg_max_cte."SoftProba_1" > 0.0) THEN ln(arg_max_cte."SoftProba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."SoftProba_2" IS NULL OR arg_max_cte."SoftProba_2" > 0.0) THEN ln(arg_max_cte."SoftProba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."SoftProba_3" IS NULL OR arg_max_cte."SoftProba_3" > 0.0) THEN ln(arg_max_cte."SoftProba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", arg_max_cte."arg_max_Score" AS "Decision", max(arg_max_cte."SoftProba_0", arg_max_cte."SoftProba_1", arg_max_cte."SoftProba_2", arg_max_cte."SoftProba_3") AS "DecisionProba" 
FROM arg_max_cte