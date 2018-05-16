-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : MLPRegressor
-- Dataset : RandomReg_100
-- Database : monetdb


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Code For temporary table tmp_20180516114257_codegen_iwrycs_hl_1_relu_1 part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516114257_codegen_iwrycs_hl_1_relu_1 (
	"KEY" BIGINT, 
	"NEUR_1_1" DOUBLE, 
	"NEUR_1_2" DOUBLE, 
	"NEUR_1_3" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114257_codegen_iwrycs_hl_1_relu_1 part 2. Populate

INSERT INTO tmp_20180516114257_codegen_iwrycs_hl_1_relu_1 ("KEY", "NEUR_1_1", "NEUR_1_2", "NEUR_1_3") SELECT "U"."KEY", "U"."NEUR_1_1", "U"."NEUR_1_2", "U"."NEUR_1_3" 
FROM (WITH "IL" AS 
(SELECT "ADS"."KEY" AS "KEY", CAST("ADS"."Feature_0" AS DOUBLE) AS "Feature_0", CAST("ADS"."Feature_1" AS DOUBLE) AS "Feature_1", CAST("ADS"."Feature_2" AS DOUBLE) AS "Feature_2", CAST("ADS"."Feature_3" AS DOUBLE) AS "Feature_3", CAST("ADS"."Feature_4" AS DOUBLE) AS "Feature_4", CAST("ADS"."Feature_5" AS DOUBLE) AS "Feature_5", CAST("ADS"."Feature_6" AS DOUBLE) AS "Feature_6", CAST("ADS"."Feature_7" AS DOUBLE) AS "Feature_7", CAST("ADS"."Feature_8" AS DOUBLE) AS "Feature_8", CAST("ADS"."Feature_9" AS DOUBLE) AS "Feature_9", CAST("ADS"."Feature_10" AS DOUBLE) AS "Feature_10", CAST("ADS"."Feature_11" AS DOUBLE) AS "Feature_11", CAST("ADS"."Feature_12" AS DOUBLE) AS "Feature_12", CAST("ADS"."Feature_13" AS DOUBLE) AS "Feature_13", CAST("ADS"."Feature_14" AS DOUBLE) AS "Feature_14", CAST("ADS"."Feature_15" AS DOUBLE) AS "Feature_15", CAST("ADS"."Feature_16" AS DOUBLE) AS "Feature_16", CAST("ADS"."Feature_17" AS DOUBLE) AS "Feature_17", CAST("ADS"."Feature_18" AS DOUBLE) AS "Feature_18", CAST("ADS"."Feature_19" AS DOUBLE) AS "Feature_19", CAST("ADS"."Feature_20" AS DOUBLE) AS "Feature_20", CAST("ADS"."Feature_21" AS DOUBLE) AS "Feature_21", CAST("ADS"."Feature_22" AS DOUBLE) AS "Feature_22", CAST("ADS"."Feature_23" AS DOUBLE) AS "Feature_23", CAST("ADS"."Feature_24" AS DOUBLE) AS "Feature_24", CAST("ADS"."Feature_25" AS DOUBLE) AS "Feature_25", CAST("ADS"."Feature_26" AS DOUBLE) AS "Feature_26", CAST("ADS"."Feature_27" AS DOUBLE) AS "Feature_27", CAST("ADS"."Feature_28" AS DOUBLE) AS "Feature_28", CAST("ADS"."Feature_29" AS DOUBLE) AS "Feature_29", CAST("ADS"."Feature_30" AS DOUBLE) AS "Feature_30", CAST("ADS"."Feature_31" AS DOUBLE) AS "Feature_31", CAST("ADS"."Feature_32" AS DOUBLE) AS "Feature_32", CAST("ADS"."Feature_33" AS DOUBLE) AS "Feature_33", CAST("ADS"."Feature_34" AS DOUBLE) AS "Feature_34", CAST("ADS"."Feature_35" AS DOUBLE) AS "Feature_35", CAST("ADS"."Feature_36" AS DOUBLE) AS "Feature_36", CAST("ADS"."Feature_37" AS DOUBLE) AS "Feature_37", CAST("ADS"."Feature_38" AS DOUBLE) AS "Feature_38", CAST("ADS"."Feature_39" AS DOUBLE) AS "Feature_39", CAST("ADS"."Feature_40" AS DOUBLE) AS "Feature_40", CAST("ADS"."Feature_41" AS DOUBLE) AS "Feature_41", CAST("ADS"."Feature_42" AS DOUBLE) AS "Feature_42", CAST("ADS"."Feature_43" AS DOUBLE) AS "Feature_43", CAST("ADS"."Feature_44" AS DOUBLE) AS "Feature_44", CAST("ADS"."Feature_45" AS DOUBLE) AS "Feature_45", CAST("ADS"."Feature_46" AS DOUBLE) AS "Feature_46", CAST("ADS"."Feature_47" AS DOUBLE) AS "Feature_47", CAST("ADS"."Feature_48" AS DOUBLE) AS "Feature_48", CAST("ADS"."Feature_49" AS DOUBLE) AS "Feature_49", CAST("ADS"."Feature_50" AS DOUBLE) AS "Feature_50", CAST("ADS"."Feature_51" AS DOUBLE) AS "Feature_51", CAST("ADS"."Feature_52" AS DOUBLE) AS "Feature_52", CAST("ADS"."Feature_53" AS DOUBLE) AS "Feature_53", CAST("ADS"."Feature_54" AS DOUBLE) AS "Feature_54", CAST("ADS"."Feature_55" AS DOUBLE) AS "Feature_55", CAST("ADS"."Feature_56" AS DOUBLE) AS "Feature_56", CAST("ADS"."Feature_57" AS DOUBLE) AS "Feature_57", CAST("ADS"."Feature_58" AS DOUBLE) AS "Feature_58", CAST("ADS"."Feature_59" AS DOUBLE) AS "Feature_59", CAST("ADS"."Feature_60" AS DOUBLE) AS "Feature_60", CAST("ADS"."Feature_61" AS DOUBLE) AS "Feature_61", CAST("ADS"."Feature_62" AS DOUBLE) AS "Feature_62", CAST("ADS"."Feature_63" AS DOUBLE) AS "Feature_63", CAST("ADS"."Feature_64" AS DOUBLE) AS "Feature_64", CAST("ADS"."Feature_65" AS DOUBLE) AS "Feature_65", CAST("ADS"."Feature_66" AS DOUBLE) AS "Feature_66", CAST("ADS"."Feature_67" AS DOUBLE) AS "Feature_67", CAST("ADS"."Feature_68" AS DOUBLE) AS "Feature_68", CAST("ADS"."Feature_69" AS DOUBLE) AS "Feature_69", CAST("ADS"."Feature_70" AS DOUBLE) AS "Feature_70", CAST("ADS"."Feature_71" AS DOUBLE) AS "Feature_71", CAST("ADS"."Feature_72" AS DOUBLE) AS "Feature_72", CAST("ADS"."Feature_73" AS DOUBLE) AS "Feature_73", CAST("ADS"."Feature_74" AS DOUBLE) AS "Feature_74", CAST("ADS"."Feature_75" AS DOUBLE) AS "Feature_75", CAST("ADS"."Feature_76" AS DOUBLE) AS "Feature_76", CAST("ADS"."Feature_77" AS DOUBLE) AS "Feature_77", CAST("ADS"."Feature_78" AS DOUBLE) AS "Feature_78", CAST("ADS"."Feature_79" AS DOUBLE) AS "Feature_79", CAST("ADS"."Feature_80" AS DOUBLE) AS "Feature_80", CAST("ADS"."Feature_81" AS DOUBLE) AS "Feature_81", CAST("ADS"."Feature_82" AS DOUBLE) AS "Feature_82", CAST("ADS"."Feature_83" AS DOUBLE) AS "Feature_83", CAST("ADS"."Feature_84" AS DOUBLE) AS "Feature_84", CAST("ADS"."Feature_85" AS DOUBLE) AS "Feature_85", CAST("ADS"."Feature_86" AS DOUBLE) AS "Feature_86", CAST("ADS"."Feature_87" AS DOUBLE) AS "Feature_87", CAST("ADS"."Feature_88" AS DOUBLE) AS "Feature_88", CAST("ADS"."Feature_89" AS DOUBLE) AS "Feature_89", CAST("ADS"."Feature_90" AS DOUBLE) AS "Feature_90", CAST("ADS"."Feature_91" AS DOUBLE) AS "Feature_91", CAST("ADS"."Feature_92" AS DOUBLE) AS "Feature_92", CAST("ADS"."Feature_93" AS DOUBLE) AS "Feature_93", CAST("ADS"."Feature_94" AS DOUBLE) AS "Feature_94", CAST("ADS"."Feature_95" AS DOUBLE) AS "Feature_95", CAST("ADS"."Feature_96" AS DOUBLE) AS "Feature_96", CAST("ADS"."Feature_97" AS DOUBLE) AS "Feature_97", CAST("ADS"."Feature_98" AS DOUBLE) AS "Feature_98", CAST("ADS"."Feature_99" AS DOUBLE) AS "Feature_99" 
FROM "RandomReg_100" AS "ADS"), 
"HL_BA_1" AS 
(SELECT "IL"."KEY" AS "KEY", 0.5089769297390757 * "IL"."Feature_0" + -0.5323091638589394 * "IL"."Feature_1" + 3.0350116708139048 * "IL"."Feature_2" + -4.123218041302044 * "IL"."Feature_3" + 0.3055986705474472 * "IL"."Feature_4" + -1.7369800541417046 * "IL"."Feature_5" + 1.115842499361796 * "IL"."Feature_6" + -3.1044493309806165 * "IL"."Feature_7" + 0.1240729316124313 * "IL"."Feature_8" + 1.281379104350354 * "IL"."Feature_9" + 0.7704135950985771 * "IL"."Feature_10" + 1.6314547169623645 * "IL"."Feature_11" + 1.259407407226662 * "IL"."Feature_12" + -0.09734327443725507 * "IL"."Feature_13" + -1.492890383087199 * "IL"."Feature_14" + -1.5728392428222808 * "IL"."Feature_15" + 1.4658795757494922 * "IL"."Feature_16" + 1.075033774330134 * "IL"."Feature_17" + -2.0373672451486677 * "IL"."Feature_18" + 2.000955334398197 * "IL"."Feature_19" + -1.5168108659527886 * "IL"."Feature_20" + -3.8222691250092304 * "IL"."Feature_21" + 1.2686948978938268 * "IL"."Feature_22" + 0.2120112546689173 * "IL"."Feature_23" + -2.9420948211474127 * "IL"."Feature_24" + -1.1502598849288772 * "IL"."Feature_25" + 2.4485789535566793 * "IL"."Feature_26" + -2.9210300518621883 * "IL"."Feature_27" + 0.31612925187282515 * "IL"."Feature_28" + -3.3493975743830005 * "IL"."Feature_29" + 0.15240056971105484 * "IL"."Feature_30" + 2.8579026797258567 * "IL"."Feature_31" + 2.7773063204147896 * "IL"."Feature_32" + 1.0129061243474178 * "IL"."Feature_33" + -2.604345400136123 * "IL"."Feature_34" + 0.949989845610115 * "IL"."Feature_35" + 2.9204536247369894 * "IL"."Feature_36" + 0.8749069790597812 * "IL"."Feature_37" + -0.44337425052573237 * "IL"."Feature_38" + -0.539470437285783 * "IL"."Feature_39" + -2.422906547587749 * "IL"."Feature_40" + -1.0622396981983124 * "IL"."Feature_41" + -0.684639033875382 * "IL"."Feature_42" + -0.0012707059026990791 * "IL"."Feature_43" + 4.449582619337779 * "IL"."Feature_44" + -2.396386310803572 * "IL"."Feature_45" + -0.5409269281740577 * "IL"."Feature_46" + -0.7545181537537333 * "IL"."Feature_47" + 1.375327755511914 * "IL"."Feature_48" + 1.5934517694414994 * "IL"."Feature_49" + -1.0945277761044865 * "IL"."Feature_50" + -0.49751773503833474 * "IL"."Feature_51" + 0.7791280512548814 * "IL"."Feature_52" + -1.5009964651334413 * "IL"."Feature_53" + -0.11628201980618749 * "IL"."Feature_54" + 1.1921248308839145 * "IL"."Feature_55" + 2.0877402142394796 * "IL"."Feature_56" + 0.5966481880609318 * "IL"."Feature_57" + 3.8573486101698147 * "IL"."Feature_58" + -3.422898878733198 * "IL"."Feature_59" + 1.5785635248033845 * "IL"."Feature_60" + 1.4367274397770393 * "IL"."Feature_61" + -1.1730251218277026 * "IL"."Feature_62" + 0.2538699511087708 * "IL"."Feature_63" + -0.0008489252234989003 * "IL"."Feature_64" + 2.9643273488965756 * "IL"."Feature_65" + -0.27329885492686323 * "IL"."Feature_66" + -0.24040198515204808 * "IL"."Feature_67" + -0.630642954696724 * "IL"."Feature_68" + 2.358929358836707 * "IL"."Feature_69" + 2.9583036124621156 * "IL"."Feature_70" + -1.7130426692125302 * "IL"."Feature_71" + -4.687902428575442 * "IL"."Feature_72" + 3.374698760676387 * "IL"."Feature_73" + -3.146106489742112 * "IL"."Feature_74" + 2.397011132119347 * "IL"."Feature_75" + 0.39377292829183735 * "IL"."Feature_76" + 0.4406719286223536 * "IL"."Feature_77" + 0.16036199143566904 * "IL"."Feature_78" + 3.782301407454723 * "IL"."Feature_79" + -1.6909132127805835 * "IL"."Feature_80" + -2.702853744947548 * "IL"."Feature_81" + -2.6449530850622325 * "IL"."Feature_82" + -0.7683686715193689 * "IL"."Feature_83" + -5.030728571896996 * "IL"."Feature_84" + -0.30645729780944414 * "IL"."Feature_85" + 0.06071685501322212 * "IL"."Feature_86" + -1.0770574262096066 * "IL"."Feature_87" + -2.3181611665838795 * "IL"."Feature_88" + 2.0201397513200563 * "IL"."Feature_89" + -0.15335729274404958 * "IL"."Feature_90" + -1.0852540521628766 * "IL"."Feature_91" + 1.1429486357254253 * "IL"."Feature_92" + 1.154244320241052 * "IL"."Feature_93" + 0.9757535019938773 * "IL"."Feature_94" + -3.4717147983980667 * "IL"."Feature_95" + -1.854861481244826 * "IL"."Feature_96" + -1.580857814913538 * "IL"."Feature_97" + -2.376937170298687 * "IL"."Feature_98" + -1.6610314291834394 * "IL"."Feature_99" + -6.675052190329697 AS "NEUR_1_1", -2.341674274066998 * "IL"."Feature_0" + 0.7031020608468926 * "IL"."Feature_1" + -3.212128243958964 * "IL"."Feature_2" + -2.219823904117352 * "IL"."Feature_3" + 0.6921809882932233 * "IL"."Feature_4" + 1.965580401624215 * "IL"."Feature_5" + -0.8804732462560794 * "IL"."Feature_6" + -1.3359870126121194 * "IL"."Feature_7" + -1.3423268824899512 * "IL"."Feature_8" + 1.1291990807941568 * "IL"."Feature_9" + -2.1988532440462842 * "IL"."Feature_10" + 1.2998219004293028 * "IL"."Feature_11" + -1.9138304515404831 * "IL"."Feature_12" + 3.3086586678688796 * "IL"."Feature_13" + 1.0068578986142316 * "IL"."Feature_14" + 2.40677294615533 * "IL"."Feature_15" + 1.1338515362281685 * "IL"."Feature_16" + -0.7196634665124471 * "IL"."Feature_17" + 0.4463622405237973 * "IL"."Feature_18" + -3.2003299590346903 * "IL"."Feature_19" + 0.49418894814950715 * "IL"."Feature_20" + 0.9838504964617191 * "IL"."Feature_21" + -1.0613349279590945 * "IL"."Feature_22" + -0.24078976260473572 * "IL"."Feature_23" + 5.457269561986675 * "IL"."Feature_24" + -0.057634626333242296 * "IL"."Feature_25" + -0.9805032656314151 * "IL"."Feature_26" + 2.2840560606031484 * "IL"."Feature_27" + -2.5346356954008704 * "IL"."Feature_28" + 2.4226463269866128 * "IL"."Feature_29" + -3.157307175088309 * "IL"."Feature_30" + -0.7128671811598241 * "IL"."Feature_31" + 0.8694333986998943 * "IL"."Feature_32" + 0.4653430830836222 * "IL"."Feature_33" + -1.3314206179594463 * "IL"."Feature_34" + 1.0833239913928918 * "IL"."Feature_35" + -0.5943228331713922 * "IL"."Feature_36" + -2.5076044684701952 * "IL"."Feature_37" + 1.9073803815192822 * "IL"."Feature_38" + 3.7075338658913783 * "IL"."Feature_39" + -2.025192828516486 * "IL"."Feature_40" + 0.6939459513003179 * "IL"."Feature_41" + -1.6955244895462793 * "IL"."Feature_42" + -1.4206239473709894 * "IL"."Feature_43" + -1.3475422650758826 * "IL"."Feature_44" + 3.5334376144998325 * "IL"."Feature_45" + 2.967078481501212 * "IL"."Feature_46" + -1.9983404070463597 * "IL"."Feature_47" + 0.7328202525944213 * "IL"."Feature_48" + 0.25011841377046395 * "IL"."Feature_49" + 0.060914407716047746 * "IL"."Feature_50" + 1.8640141582700211 * "IL"."Feature_51" + -0.9771479989699836 * "IL"."Feature_52" + 1.5216094597170757 * "IL"."Feature_53" + -3.4366041130244467 * "IL"."Feature_54" + 1.3422301814437374 * "IL"."Feature_55" + -4.4278765650445235 * "IL"."Feature_56" + 0.36820106921339946 * "IL"."Feature_57" + -2.665729842182843 * "IL"."Feature_58" + 1.0522210756309556 * "IL"."Feature_59" + 2.2802226961120766 * "IL"."Feature_60" + 0.4925654331096638 * "IL"."Feature_61" + -2.914004212228604 * "IL"."Feature_62" + 4.004587617309772 * "IL"."Feature_63" + -1.957944547780003 * "IL"."Feature_64" + -0.9107608081211639 * "IL"."Feature_65" + 0.4937289226087782 * "IL"."Feature_66" + 0.7042213795715045 * "IL"."Feature_67" + 3.5967647096937942 * "IL"."Feature_68" + -1.1719275834157228 * "IL"."Feature_69" + 0.06894560557062472 * "IL"."Feature_70" + 4.459502661091082 * "IL"."Feature_71" + -0.06846965510700351 * "IL"."Feature_72" + 1.2687077614933493 * "IL"."Feature_73" + 1.9991321032592428 * "IL"."Feature_74" + -2.0732940040985257 * "IL"."Feature_75" + 0.5419551903384029 * "IL"."Feature_76" + -4.83808282019726 * "IL"."Feature_77" + -1.0006227607247218 * "IL"."Feature_78" + -0.47751428816766717 * "IL"."Feature_79" + 6.9604422750838015 * "IL"."Feature_80" + 3.4734218174387332 * "IL"."Feature_81" + 2.687591460560823 * "IL"."Feature_82" + -0.29157386294113014 * "IL"."Feature_83" + 2.6943693754318074 * "IL"."Feature_84" + -1.6893378122772464 * "IL"."Feature_85" + -0.395257107989419 * "IL"."Feature_86" + -0.10760764455403785 * "IL"."Feature_87" + 0.9699706758024875 * "IL"."Feature_88" + 1.2842270643736458 * "IL"."Feature_89" + 0.9473770428394545 * "IL"."Feature_90" + -1.4972592842728942 * "IL"."Feature_91" + -3.469811892241835 * "IL"."Feature_92" + -1.9491058267908603 * "IL"."Feature_93" + -2.7040766768103053 * "IL"."Feature_94" + 1.9721123603684134 * "IL"."Feature_95" + 0.9058074988496596 * "IL"."Feature_96" + 0.847249716368956 * "IL"."Feature_97" + 0.7633211599603911 * "IL"."Feature_98" + 0.6513621481832937 * "IL"."Feature_99" + -0.06848834409353424 AS "NEUR_1_2", -2.9054493895995277 * "IL"."Feature_0" + -8.997724795202672 * "IL"."Feature_1" + -3.8227734821930377 * "IL"."Feature_2" + 0.7520950700196479 * "IL"."Feature_3" + 0.06964884416067096 * "IL"."Feature_4" + 0.5471876110486653 * "IL"."Feature_5" + 0.5260047171793835 * "IL"."Feature_6" + -2.4047677674131935 * "IL"."Feature_7" + 7.133448073581033 * "IL"."Feature_8" + 3.2543253093435744 * "IL"."Feature_9" + -0.8747234471875486 * "IL"."Feature_10" + -0.03144034329450158 * "IL"."Feature_11" + 3.764311793099807 * "IL"."Feature_12" + -1.4883101681795439 * "IL"."Feature_13" + 0.9779863054696223 * "IL"."Feature_14" + 1.0685672985843253 * "IL"."Feature_15" + 7.682657060231856 * "IL"."Feature_16" + 5.578665545537815 * "IL"."Feature_17" + 0.09243973230719613 * "IL"."Feature_18" + -6.182187596191429 * "IL"."Feature_19" + 5.531264942782028 * "IL"."Feature_20" + 0.049899735878185636 * "IL"."Feature_21" + 4.179050248147056 * "IL"."Feature_22" + -4.819085907243773 * "IL"."Feature_23" + 1.1932311024538762 * "IL"."Feature_24" + 3.8114719327290727 * "IL"."Feature_25" + 3.576728164713621 * "IL"."Feature_26" + 3.0842553870063574 * "IL"."Feature_27" + 2.160996081040555 * "IL"."Feature_28" + 0.9034417529025951 * "IL"."Feature_29" + 2.498635822607578 * "IL"."Feature_30" + 2.9447564183756407 * "IL"."Feature_31" + -1.7480478996126094 * "IL"."Feature_32" + 5.626076508329681 * "IL"."Feature_33" + -3.904960226795004 * "IL"."Feature_34" + 1.3112063227411181 * "IL"."Feature_35" + 1.0809367325342647 * "IL"."Feature_36" + -3.8408222826398215 * "IL"."Feature_37" + 3.3849317540315185 * "IL"."Feature_38" + 14.151518774135369 * "IL"."Feature_39" + -3.3006881885664034 * "IL"."Feature_40" + 10.89088308484341 * "IL"."Feature_41" + -0.9704416968450762 * "IL"."Feature_42" + 1.8079406620633287 * "IL"."Feature_43" + 2.482394558084678 * "IL"."Feature_44" + -3.108542021892468 * "IL"."Feature_45" + -2.213739011472874 * "IL"."Feature_46" + -0.4828538981984178 * "IL"."Feature_47" + 1.325834517610601 * "IL"."Feature_48" + 6.010169132325101 * "IL"."Feature_49" + 1.8985092190052355 * "IL"."Feature_50" + 1.9109729318325002 * "IL"."Feature_51" + 0.621550928122374 * "IL"."Feature_52" + 0.5387437734429275 * "IL"."Feature_53" + 1.7641653750575488 * "IL"."Feature_54" + -2.565155258167129 * "IL"."Feature_55" + -4.470004088991925 * "IL"."Feature_56" + 2.787883822741788 * "IL"."Feature_57" + 0.8368542078295805 * "IL"."Feature_58" + 1.5529928809686075 * "IL"."Feature_59" + 6.432174239526953 * "IL"."Feature_60" + -3.3310709093812068 * "IL"."Feature_61" + -3.3942105890378995 * "IL"."Feature_62" + 14.506160989875355 * "IL"."Feature_63" + 4.098279357986051 * "IL"."Feature_64" + -2.994463826140821 * "IL"."Feature_65" + 2.3687726180983795 * "IL"."Feature_66" + -6.582456814757096 * "IL"."Feature_67" + 4.019105980721581 * "IL"."Feature_68" + -5.35483323516875 * "IL"."Feature_69" + -2.0234838708443332 * "IL"."Feature_70" + 1.6306195867999147 * "IL"."Feature_71" + -1.469671355593999 * "IL"."Feature_72" + -3.310114580611921 * "IL"."Feature_73" + 2.4048176374487356 * "IL"."Feature_74" + 1.6151835380763693 * "IL"."Feature_75" + -1.819167204970741 * "IL"."Feature_76" + -7.6295029778694055 * "IL"."Feature_77" + 2.4897691384729588 * "IL"."Feature_78" + 5.034776503414805 * "IL"."Feature_79" + 22.461819882346568 * "IL"."Feature_80" + 4.35384622735029 * "IL"."Feature_81" + 2.327358249800162 * "IL"."Feature_82" + -0.1451545544066954 * "IL"."Feature_83" + -3.8891942981333516 * "IL"."Feature_84" + 1.366211566683286 * "IL"."Feature_85" + -1.3849846477239767 * "IL"."Feature_86" + 2.3714653178854808 * "IL"."Feature_87" + -1.3591957787640137 * "IL"."Feature_88" + 2.138539587333495 * "IL"."Feature_89" + -0.11829772767909957 * "IL"."Feature_90" + 5.613458304847611 * "IL"."Feature_91" + 4.730067795960069 * "IL"."Feature_92" + -4.527346125441433 * "IL"."Feature_93" + -4.476717733555694 * "IL"."Feature_94" + 12.045136379930462 * "IL"."Feature_95" + 1.0198159313184254 * "IL"."Feature_96" + 2.474315240324317 * "IL"."Feature_97" + -3.397986122788646 * "IL"."Feature_98" + 0.6961568381129334 * "IL"."Feature_99" + 1.1709353164475618 AS "NEUR_1_3" 
FROM "IL"), 
"HL_1_relu" AS 
(SELECT "HL_BA_1"."KEY" AS "KEY", CASE WHEN ("HL_BA_1"."NEUR_1_1" <= 0) THEN 0 ELSE "HL_BA_1"."NEUR_1_1" END AS "NEUR_1_1", CASE WHEN ("HL_BA_1"."NEUR_1_2" <= 0) THEN 0 ELSE "HL_BA_1"."NEUR_1_2" END AS "NEUR_1_2", CASE WHEN ("HL_BA_1"."NEUR_1_3" <= 0) THEN 0 ELSE "HL_BA_1"."NEUR_1_3" END AS "NEUR_1_3" 
FROM "HL_BA_1")
 SELECT "HL_1_relu_1"."KEY", "HL_1_relu_1"."NEUR_1_1", "HL_1_relu_1"."NEUR_1_2", "HL_1_relu_1"."NEUR_1_3" 
FROM (SELECT "HL_1_relu"."KEY" AS "KEY", "HL_1_relu"."NEUR_1_1" AS "NEUR_1_1", "HL_1_relu"."NEUR_1_2" AS "NEUR_1_2", "HL_1_relu"."NEUR_1_3" AS "NEUR_1_3" 
FROM "HL_1_relu") AS "HL_1_relu_1") AS "U"

-- Code For temporary table tmp_20180516114257_codegen_52ugqn_ol_identity_1 part 1. Create 


CREATE TEMPORARY TABLE tmp_20180516114257_codegen_52ugqn_ol_identity_1 (
	"KEY" BIGINT, 
	"NEUR_3_1" DOUBLE
)

 ON COMMIT PRESERVE ROWS

-- Code For temporary table tmp_20180516114257_codegen_52ugqn_ol_identity_1 part 2. Populate

INSERT INTO tmp_20180516114257_codegen_52ugqn_ol_identity_1 ("KEY", "NEUR_3_1") SELECT "U"."KEY", "U"."NEUR_3_1" 
FROM (WITH "HL_BA_2" AS 
(SELECT "HL_1_relu_1"."KEY" AS "KEY", -2.4078942705955395 * "HL_1_relu_1"."NEUR_1_1" + 1.9046982270613309 * "HL_1_relu_1"."NEUR_1_2" + 6.7552328405466096 * "HL_1_relu_1"."NEUR_1_3" + -1.09410343277604 AS "NEUR_2_1", 0.299660439075888 * "HL_1_relu_1"."NEUR_1_1" + -0.11898745824284299 * "HL_1_relu_1"."NEUR_1_2" + -7.712848484385972 * "HL_1_relu_1"."NEUR_1_3" + 13.252876337239904 AS "NEUR_2_2", 4.149634810181686 * "HL_1_relu_1"."NEUR_1_1" + 4.7906677341775055 * "HL_1_relu_1"."NEUR_1_2" + 5.880771569316317 * "HL_1_relu_1"."NEUR_1_3" + -3.4062475603356224 AS "NEUR_2_3", -0.27402567825305824 * "HL_1_relu_1"."NEUR_1_1" + 6.331942556211917 * "HL_1_relu_1"."NEUR_1_2" + 3.6914847526060415 * "HL_1_relu_1"."NEUR_1_3" + 7.194710136229631 AS "NEUR_2_4", -0.6093467240610312 * "HL_1_relu_1"."NEUR_1_1" + -0.37766844283696677 * "HL_1_relu_1"."NEUR_1_2" + -0.6730015831968268 * "HL_1_relu_1"."NEUR_1_3" + -0.01807831622698608 AS "NEUR_2_5" 
FROM tmp_20180516114257_codegen_iwrycs_hl_1_relu_1 AS "HL_1_relu_1"), 
"HL_2_relu" AS 
(SELECT "HL_BA_2"."KEY" AS "KEY", CASE WHEN ("HL_BA_2"."NEUR_2_1" <= 0) THEN 0 ELSE "HL_BA_2"."NEUR_2_1" END AS "NEUR_2_1", CASE WHEN ("HL_BA_2"."NEUR_2_2" <= 0) THEN 0 ELSE "HL_BA_2"."NEUR_2_2" END AS "NEUR_2_2", CASE WHEN ("HL_BA_2"."NEUR_2_3" <= 0) THEN 0 ELSE "HL_BA_2"."NEUR_2_3" END AS "NEUR_2_3", CASE WHEN ("HL_BA_2"."NEUR_2_4" <= 0) THEN 0 ELSE "HL_BA_2"."NEUR_2_4" END AS "NEUR_2_4", CASE WHEN ("HL_BA_2"."NEUR_2_5" <= 0) THEN 0 ELSE "HL_BA_2"."NEUR_2_5" END AS "NEUR_2_5" 
FROM "HL_BA_2"), 
"OL_BA" AS 
(SELECT "HL_2_relu"."KEY" AS "KEY", 0.2667265938732823 * "HL_2_relu"."NEUR_2_1" + -14.769765461375615 * "HL_2_relu"."NEUR_2_2" + 0.34396713250968164 * "HL_2_relu"."NEUR_2_3" + -0.31629651413662047 * "HL_2_relu"."NEUR_2_4" + -0.273475096602486 * "HL_2_relu"."NEUR_2_5" + -12.636120233148382 AS "NEUR_3_1" 
FROM "HL_2_relu"), 
"OL_identity" AS 
(SELECT "OL_BA"."KEY" AS "KEY", "OL_BA"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_BA")
 SELECT "OL_identity_1"."KEY", "OL_identity_1"."NEUR_3_1" 
FROM (SELECT "OL_identity"."KEY" AS "KEY", "OL_identity"."NEUR_3_1" AS "NEUR_3_1" 
FROM "OL_identity") AS "OL_identity_1") AS "U"

-- Model deployment code

SELECT "OL_identity_1"."KEY" AS "KEY", "OL_identity_1"."NEUR_3_1" AS "Estimator" 
FROM tmp_20180516114257_codegen_52ugqn_ol_identity_1 AS "OL_identity_1"