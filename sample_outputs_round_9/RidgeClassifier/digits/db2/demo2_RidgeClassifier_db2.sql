-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.0 * "ADS"."Feature_0" + 0.05264849855737763 * "ADS"."Feature_1" + 0.0025679356495285823 * "ADS"."Feature_2" + 0.007969719518023952 * "ADS"."Feature_3" + -0.011836148139961115 * "ADS"."Feature_4" + -0.011597075757329984 * "ADS"."Feature_5" + 0.005140143514045759 * "ADS"."Feature_6" + 0.025844093125287102 * "ADS"."Feature_7" + 0.07908137918317269 * "ADS"."Feature_8" + -0.010307615187109945 * "ADS"."Feature_9" + -0.00016013194645305773 * "ADS"."Feature_10" + -0.004526603900194339 * "ADS"."Feature_11" + 0.014030283798336093 * "ADS"."Feature_12" + 0.016984416161360753 * "ADS"."Feature_13" + -0.005935013229732941 * "ADS"."Feature_14" + -0.05050191919721203 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.011623916994716257 * "ADS"."Feature_17" + 0.0007772548259839282 * "ADS"."Feature_18" + 0.0044166996156832375 * "ADS"."Feature_19" + -0.0033869367752424624 * "ADS"."Feature_20" + 0.016809654896540297 * "ADS"."Feature_21" + -0.0025437650990300592 * "ADS"."Feature_22" + 0.059810056495997264 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.018898024095513534 * "ADS"."Feature_25" + -0.0031227750353050887 * "ADS"."Feature_26" + -0.003551865284611777 * "ADS"."Feature_27" + -0.023952670379382982 * "ADS"."Feature_28" + -0.010553414189949208 * "ADS"."Feature_29" + 0.022294440375868252 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.005825511100750726 * "ADS"."Feature_33" + 0.010312483627304537 * "ADS"."Feature_34" + -0.018161043240859716 * "ADS"."Feature_35" + -0.003826302267715675 * "ADS"."Feature_36" + -0.012418922202735235 * "ADS"."Feature_37" + 0.013436179994898372 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.03924268226698462 * "ADS"."Feature_40" + -0.01532635480728243 * "ADS"."Feature_41" + 0.015288664499709509 * "ADS"."Feature_42" + -0.012446095965858507 * "ADS"."Feature_43" + -0.021942850080454324 * "ADS"."Feature_44" + 0.0059495170601238856 * "ADS"."Feature_45" + 0.01450743915204905 * "ADS"."Feature_46" + -0.024253182051380186 * "ADS"."Feature_47" + 0.02705070052508836 * "ADS"."Feature_48" + -0.018020792868071688 * "ADS"."Feature_49" + 0.0037669237795160656 * "ADS"."Feature_50" + 0.01400574024395954 * "ADS"."Feature_51" + 0.01809561459065512 * "ADS"."Feature_52" + 0.00203854527677023 * "ADS"."Feature_53" + -0.024476148462153968 * "ADS"."Feature_54" + 0.023878537131264692 * "ADS"."Feature_55" + -0.023650420308621516 * "ADS"."Feature_56" + -0.013838891112044555 * "ADS"."Feature_57" + -0.010765102384074311 * "ADS"."Feature_58" + 0.005590897963663686 * "ADS"."Feature_59" + -0.005670420871014517 * "ADS"."Feature_60" + -0.004902829240363024 * "ADS"."Feature_61" + 0.0067116532686243065 * "ADS"."Feature_62" + -0.00484144629960645 * "ADS"."Feature_63" + -0.709028369673 AS "Score_0", 0.0 * "ADS"."Feature_0" + 0.028760246747513474 * "ADS"."Feature_1" + 0.012180404503502011 * "ADS"."Feature_2" + 0.014167909916306828 * "ADS"."Feature_3" + -0.030156894737848886 * "ADS"."Feature_4" + 0.01863958624860106 * "ADS"."Feature_5" + -0.0002440705412179428 * "ADS"."Feature_6" + 0.03824134225985052 * "ADS"."Feature_7" + -0.00507590409505791 * "ADS"."Feature_8" + -0.002387583406419775 * "ADS"."Feature_9" + -0.027863680659558784 * "ADS"."Feature_10" + -0.006613289033802091 * "ADS"."Feature_11" + 0.003195501888550505 * "ADS"."Feature_12" + 0.027085061155409918 * "ADS"."Feature_13" + -0.021193353642748228 * "ADS"."Feature_14" + -0.0884351161570565 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.011372678177283655 * "ADS"."Feature_17" + -0.002276144243773429 * "ADS"."Feature_18" + 0.028740702096899735 * "ADS"."Feature_19" + 0.0233819320521652 * "ADS"."Feature_20" + -0.016432818795883663 * "ADS"."Feature_21" + 0.005832082078172895 * "ADS"."Feature_22" + 0.022969010333156993 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.032378092854704055 * "ADS"."Feature_25" + 0.003930634730343893 * "ADS"."Feature_26" + 0.015020557620135712 * "ADS"."Feature_27" + 0.00048488965527806007 * "ADS"."Feature_28" + -0.0014755509138209134 * "ADS"."Feature_29" + -0.005074693507226674 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.006146548017071863 * "ADS"."Feature_33" + -0.00041274335638306404 * "ADS"."Feature_34" + -0.00215470075433704 * "ADS"."Feature_35" + 0.005123599476591491 * "ADS"."Feature_36" + -0.008404851115029942 * "ADS"."Feature_37" + 0.012326680067314045 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.08709453879696472 * "ADS"."Feature_40" + -0.03686129262866638 * "ADS"."Feature_41" + -0.006551167718835562 * "ADS"."Feature_42" + -0.003974090557037048 * "ADS"."Feature_43" + 0.00892015563451728 * "ADS"."Feature_44" + -0.01508303790995331 * "ADS"."Feature_45" + 0.005244361815544154 * "ADS"."Feature_46" + -0.07366522178370609 * "ADS"."Feature_47" + -0.12137795017644529 * "ADS"."Feature_48" + -0.007855625286538671 * "ADS"."Feature_49" + 0.004610243990129994 * "ADS"."Feature_50" + 0.00984258746207108 * "ADS"."Feature_51" + 0.011002987073331357 * "ADS"."Feature_52" + -0.008280466443426789 * "ADS"."Feature_53" + -0.022066699546874746 * "ADS"."Feature_54" + 0.0518344223025456 * "ADS"."Feature_55" + -0.02451666660486077 * "ADS"."Feature_56" + -0.026590660138320267 * "ADS"."Feature_57" + -0.03489302484342742 * "ADS"."Feature_58" + -0.0006832702814406937 * "ADS"."Feature_59" + 0.01006298689838152 * "ADS"."Feature_60" + 0.020098376515987497 * "ADS"."Feature_61" + -0.010770345982366803 * "ADS"."Feature_62" + 0.01368137411701147 * "ADS"."Feature_63" + -0.985810527027 AS "Score_1", 0.0 * "ADS"."Feature_0" + -0.06240007974837409 * "ADS"."Feature_1" + -0.0015344456233849463 * "ADS"."Feature_2" + -0.010084173557090877 * "ADS"."Feature_3" + 0.0007497492673096594 * "ADS"."Feature_4" + -0.0013111992581233726 * "ADS"."Feature_5" + 0.004851136603561401 * "ADS"."Feature_6" + -0.02336321378614039 * "ADS"."Feature_7" + 0.14463878308051967 * "ADS"."Feature_8" + 0.011122851923162681 * "ADS"."Feature_9" + 0.004767486903629695 * "ADS"."Feature_10" + -0.00647812226194652 * "ADS"."Feature_11" + 0.016821386100528857 * "ADS"."Feature_12" + -0.015138746825760302 * "ADS"."Feature_13" + -0.005761333263477097 * "ADS"."Feature_14" + -0.007466343297277551 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.006262237797472523 * "ADS"."Feature_17" + 0.001359388380868377 * "ADS"."Feature_18" + -0.017684723479151322 * "ADS"."Feature_19" + -0.004790200871243433 * "ADS"."Feature_20" + 0.00019614634209687908 * "ADS"."Feature_21" + 0.02146533154042928 * "ADS"."Feature_22" + 0.06093796599350687 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.0026179940781505453 * "ADS"."Feature_25" + -0.013872674840983491 * "ADS"."Feature_26" + -0.01994447796172235 * "ADS"."Feature_27" + 0.008926343151637504 * "ADS"."Feature_28" + 0.008063304475607864 * "ADS"."Feature_29" + -0.014707330161468928 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.01073305694351531 * "ADS"."Feature_33" + -0.008502323529848421 * "ADS"."Feature_34" + -0.01200186508343232 * "ADS"."Feature_35" + -0.0021929855307326494 * "ADS"."Feature_36" + 0.0013927991690854714 * "ADS"."Feature_37" + -0.018094058902685013 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.21399987664577413 * "ADS"."Feature_40" + 0.0018202408687853844 * "ADS"."Feature_41" + 0.0036394773705521947 * "ADS"."Feature_42" + 0.040267226006729884 * "ADS"."Feature_43" + -0.03688355904730644 * "ADS"."Feature_44" + -0.03158668542085309 * "ADS"."Feature_45" + -0.05121065318676007 * "ADS"."Feature_46" + 0.23383035006391234 * "ADS"."Feature_47" + -0.05281955966194739 * "ADS"."Feature_48" + 0.04252634967191957 * "ADS"."Feature_49" + -0.004534956257125208 * "ADS"."Feature_50" + 0.00031635114209014665 * "ADS"."Feature_51" + 0.04671156722965866 * "ADS"."Feature_52" + 0.024992474681975546 * "ADS"."Feature_53" + 0.03892380999248313 * "ADS"."Feature_54" + -0.049216985276972616 * "ADS"."Feature_55" + 0.02629457047935067 * "ADS"."Feature_56" + 0.061136240954591844 * "ADS"."Feature_57" + 0.004003751420871616 * "ADS"."Feature_58" + 0.008731868845521467 * "ADS"."Feature_59" + -0.008428300995364972 * "ADS"."Feature_60" + 0.014001711051679947 * "ADS"."Feature_61" + 0.011297598990123116 * "ADS"."Feature_62" + 0.03159453462610933 * "ADS"."Feature_63" + -0.772846387593 AS "Score_2", 0.0 * "ADS"."Feature_0" + 0.02847062845314161 * "ADS"."Feature_1" + -0.0012056805325952893 * "ADS"."Feature_2" + 0.01662790158989418 * "ADS"."Feature_3" + 0.010463618124358467 * "ADS"."Feature_4" + 0.00886560896502885 * "ADS"."Feature_5" + -0.020554287160640762 * "ADS"."Feature_6" + 0.010708590101360924 * "ADS"."Feature_7" + -0.44485696278072195 * "ADS"."Feature_8" + 0.022381035675376165 * "ADS"."Feature_9" + -0.00775762088238201 * "ADS"."Feature_10" + 0.013188526594406032 * "ADS"."Feature_11" + -0.01431978163142547 * "ADS"."Feature_12" + 0.013949670739469325 * "ADS"."Feature_13" + 0.014184904811378664 * "ADS"."Feature_14" + -0.006029460066202721 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.019244881373116765 * "ADS"."Feature_17" + -0.022026460435433784 * "ADS"."Feature_18" + -0.01618864749606922 * "ADS"."Feature_19" + 0.02535062537171663 * "ADS"."Feature_20" + 0.001671263163819995 * "ADS"."Feature_21" + 0.0041350855955920845 * "ADS"."Feature_22" + -0.02035329061060526 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.01664683140422803 * "ADS"."Feature_25" + -0.002728379937781678 * "ADS"."Feature_26" + -0.004599431957739915 * "ADS"."Feature_27" + -0.004108353004057248 * "ADS"."Feature_28" + -0.021739081541507034 * "ADS"."Feature_29" + -0.004252927430047758 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.018312558363524897 * "ADS"."Feature_33" + 0.0029534390560198363 * "ADS"."Feature_34" + -0.007939941402060195 * "ADS"."Feature_35" + 0.008545920051710539 * "ADS"."Feature_36" + 0.0016987867669072693 * "ADS"."Feature_37" + -0.030041276827411638 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.020484098091296744 * "ADS"."Feature_40" + 0.010917174240686445 * "ADS"."Feature_41" + -0.009928364986591083 * "ADS"."Feature_42" + -0.014724449201491161 * "ADS"."Feature_43" + 0.000999529976699233 * "ADS"."Feature_44" + 0.021778229022907686 * "ADS"."Feature_45" + 0.041623906067301236 * "ADS"."Feature_46" + -0.13239726373910163 * "ADS"."Feature_47" + 0.14420498104151128 * "ADS"."Feature_48" + -0.015345187744703186 * "ADS"."Feature_49" + -0.01308873944618197 * "ADS"."Feature_50" + -0.005992907949015578 * "ADS"."Feature_51" + 0.005248719279959534 * "ADS"."Feature_52" + -0.010989439935571398 * "ADS"."Feature_53" + -0.004784852796039487 * "ADS"."Feature_54" + -0.005294269842185004 * "ADS"."Feature_55" + 0.04263319817895275 * "ADS"."Feature_56" + 0.018029250180461566 * "ADS"."Feature_57" + 0.016643566873874544 * "ADS"."Feature_58" + 0.013045901672616409 * "ADS"."Feature_59" + 0.0140880747204342 * "ADS"."Feature_60" + 0.0051410633479604196 * "ADS"."Feature_61" + -0.005007372124616395 * "ADS"."Feature_62" + -0.01752068236045843 * "ADS"."Feature_63" + -1.14737378884 AS "Score_3", 0.0 * "ADS"."Feature_0" + -0.05021943463702426 * "ADS"."Feature_1" + -0.00467968169656191 * "ADS"."Feature_2" + -0.02656403893857656 * "ADS"."Feature_3" + 0.010925281907142573 * "ADS"."Feature_4" + -0.02082849490793117 * "ADS"."Feature_5" + -0.016367836675413975 * "ADS"."Feature_6" + 0.027577452576348402 * "ADS"."Feature_7" + -0.0007096806449367337 * "ADS"."Feature_8" + 0.019011489007730618 * "ADS"."Feature_9" + -0.0035198405829936453 * "ADS"."Feature_10" + -0.004508758161436799 * "ADS"."Feature_11" + -0.01353869608181284 * "ADS"."Feature_12" + -0.01578379963095936 * "ADS"."Feature_13" + -0.003244306146001234 * "ADS"."Feature_14" + -0.03727851549125997 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.006956841298648839 * "ADS"."Feature_17" + 0.004124581427338612 * "ADS"."Feature_18" + 0.002345350148866219 * "ADS"."Feature_19" + -0.0013063270475156628 * "ADS"."Feature_20" + 0.01082582697598238 * "ADS"."Feature_21" + 0.0021567248143040695 * "ADS"."Feature_22" + 0.0754132694150834 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.017135804889109554 * "ADS"."Feature_25" + 0.005335157650807053 * "ADS"."Feature_26" + -0.0016433635577321561 * "ADS"."Feature_27" + 0.011146419406067466 * "ADS"."Feature_28" + -0.006185428574294178 * "ADS"."Feature_29" + 0.013365103984734892 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + 0.04640920609869232 * "ADS"."Feature_33" + 0.004220633152560487 * "ADS"."Feature_34" + -0.003872274878118846 * "ADS"."Feature_35" + 0.0036182922381358196 * "ADS"."Feature_36" + 0.016854888426764733 * "ADS"."Feature_37" + 0.0036064492545278366 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.018240480417905106 * "ADS"."Feature_40" + 0.04301794650194691 * "ADS"."Feature_41" + -0.015738114854084877 * "ADS"."Feature_42" + 0.02247423516090332 * "ADS"."Feature_43" + 0.004630322964290848 * "ADS"."Feature_44" + 0.009324316195142181 * "ADS"."Feature_45" + -0.01143449113361282 * "ADS"."Feature_46" + -0.10097420716294685 * "ADS"."Feature_47" + -0.20687668329723835 * "ADS"."Feature_48" + 0.033959703685758603 * "ADS"."Feature_49" + -0.012729137002369733 * "ADS"."Feature_50" + -0.005011561547830828 * "ADS"."Feature_51" + 0.004961316846319157 * "ADS"."Feature_52" + -0.014930675956608616 * "ADS"."Feature_53" + 0.0026521743861157394 * "ADS"."Feature_54" + 0.0027502785981632083 * "ADS"."Feature_55" + -0.039691721819421454 * "ADS"."Feature_56" + 0.026230149321696133 * "ADS"."Feature_57" + 0.013482672406524362 * "ADS"."Feature_58" + 0.002481317575281878 * "ADS"."Feature_59" + 0.017774122417532796 * "ADS"."Feature_60" + -0.01717861298365228 * "ADS"."Feature_61" + -0.0005856807876149742 * "ADS"."Feature_62" + 0.0012480146500371831 * "ADS"."Feature_63" + -0.86109700186 AS "Score_4", 0.0 * "ADS"."Feature_0" + -0.022579835757615154 * "ADS"."Feature_1" + 0.022296071554808998 * "ADS"."Feature_2" + -0.011837729466164364 * "ADS"."Feature_3" + 0.014413501132965061 * "ADS"."Feature_4" + 0.017365197428632153 * "ADS"."Feature_5" + 0.023057320708659054 * "ADS"."Feature_6" + -0.06943334789684191 * "ADS"."Feature_7" + 0.097099058358648 * "ADS"."Feature_8" + -0.009494558943996178 * "ADS"."Feature_9" + -0.004318860901868929 * "ADS"."Feature_10" + 0.0012968845261642685 * "ADS"."Feature_11" + 0.016694555985235393 * "ADS"."Feature_12" + -0.00708819591826652 * "ADS"."Feature_13" + -0.009038502227982767 * "ADS"."Feature_14" + 0.033280063606880156 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.00626498645472787 * "ADS"."Feature_17" + 0.01051497370312299 * "ADS"."Feature_18" + -0.006166480076884569 * "ADS"."Feature_19" + -0.03401511751275827 * "ADS"."Feature_20" + -0.03524197532229288 * "ADS"."Feature_21" + -0.023963280732101102 * "ADS"."Feature_22" + -0.022452439133004633 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.0193658396317314 * "ADS"."Feature_25" + -0.002075773786045886 * "ADS"."Feature_26" + 0.013490331371613689 * "ADS"."Feature_27" + 0.0063367386763054775 * "ADS"."Feature_28" + 0.006508202347938099 * "ADS"."Feature_29" + -0.02247542558052281 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.003957773844416471 * "ADS"."Feature_33" + 0.0050280632387393505 * "ADS"."Feature_34" + -0.0029549609416256485 * "ADS"."Feature_35" + -0.009227241739803497 * "ADS"."Feature_36" + 0.0008470861787693905 * "ADS"."Feature_37" + -0.00026822554554520545 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + -0.11542855538767503 * "ADS"."Feature_40" + -0.00022115468135009163 * "ADS"."Feature_41" + -0.0158621707968579 * "ADS"."Feature_42" + -0.006146952560966251 * "ADS"."Feature_43" + 0.0032534865743539315 * "ADS"."Feature_44" + 0.0010602599385819984 * "ADS"."Feature_45" + 0.008706791123321032 * "ADS"."Feature_46" + -0.0057641787464335955 * "ADS"."Feature_47" + -0.08037635512307366 * "ADS"."Feature_48" + 0.012460340117201029 * "ADS"."Feature_49" + 0.01028787424748342 * "ADS"."Feature_50" + -0.0074444639863176275 * "ADS"."Feature_51" + 0.005771304538221978 * "ADS"."Feature_52" + 0.004175329180545545 * "ADS"."Feature_53" + -0.024225343884201642 * "ADS"."Feature_54" + 0.015486188526034412 * "ADS"."Feature_55" + -0.04098673528219863 * "ADS"."Feature_56" + 0.0072917232506936455 * "ADS"."Feature_57" + 0.006663850318434781 * "ADS"."Feature_58" + 0.01220840430685153 * "ADS"."Feature_59" + -0.015351984419244166 * "ADS"."Feature_60" + -0.005890191906027013 * "ADS"."Feature_61" + 0.0047496562169853426 * "ADS"."Feature_62" + -0.009417643175294303 * "ADS"."Feature_63" + -0.672902109456 AS "Score_5", 0.0 * "ADS"."Feature_0" + -0.010439423895364508 * "ADS"."Feature_1" + -0.02903381143681954 * "ADS"."Feature_2" + 0.010188779701495168 * "ADS"."Feature_3" + -0.00417495618784487 * "ADS"."Feature_4" + 0.001834509219377233 * "ADS"."Feature_5" + -0.0012200726672717563 * "ADS"."Feature_6" + -0.022470707670216413 * "ADS"."Feature_7" + 0.0063898962688881625 * "ADS"."Feature_8" + 0.0012444830961219375 * "ADS"."Feature_9" + -0.013245504144184298 * "ADS"."Feature_10" + 0.0028672655588210362 * "ADS"."Feature_11" + -0.016038648557973642 * "ADS"."Feature_12" + -0.003878309448290234 * "ADS"."Feature_13" + 0.016496673959990448 * "ADS"."Feature_14" + 0.0012907729641157119 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.021000660971773805 * "ADS"."Feature_17" + 0.004658660931928108 * "ADS"."Feature_18" + -0.006270237123986019 * "ADS"."Feature_19" + -0.002810386925516845 * "ADS"."Feature_20" + -0.01790155233901315 * "ADS"."Feature_21" + -0.010065546851133589 * "ADS"."Feature_22" + 0.04686677329939018 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.004699517154429167 * "ADS"."Feature_25" + 0.005628577922527978 * "ADS"."Feature_26" + -0.0034880323074048462 * "ADS"."Feature_27" + -0.015408040383157675 * "ADS"."Feature_28" + -0.004215060604598281 * "ADS"."Feature_29" + -0.00857448410207773 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.006916931562437868 * "ADS"."Feature_33" + 0.009072340228969734 * "ADS"."Feature_34" + -0.004070261763508767 * "ADS"."Feature_35" + 0.008853862397249937 * "ADS"."Feature_36" + 0.003946124263800795 * "ADS"."Feature_37" + -0.003099939875741617 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.015720115577917262 * "ADS"."Feature_40" + -0.03822122557940669 * "ADS"."Feature_41" + 0.02231172840336911 * "ADS"."Feature_42" + -0.00551335156937701 * "ADS"."Feature_43" + 0.014651993825896463 * "ADS"."Feature_44" + -0.0027727326678960687 * "ADS"."Feature_45" + 0.023409319714878182 * "ADS"."Feature_46" + 0.17462284775816928 * "ADS"."Feature_47" + 0.06627006626318035 * "ADS"."Feature_48" + -0.02314397215506159 * "ADS"."Feature_49" + 0.0073281598730995995 * "ADS"."Feature_50" + 0.009939877678794366 * "ADS"."Feature_51" + -0.022681023995573785 * "ADS"."Feature_52" + 0.009968420249003032 * "ADS"."Feature_53" + 0.01989832211068632 * "ADS"."Feature_54" + -0.03516866311379612 * "ADS"."Feature_55" + 0.013756560657538629 * "ADS"."Feature_56" + 0.0228991315228453 * "ADS"."Feature_57" + 0.01581636898349417 * "ADS"."Feature_58" + -0.013715959175331189 * "ADS"."Feature_59" + 0.0005582661867516441 * "ADS"."Feature_60" + 0.006968077579723822 * "ADS"."Feature_61" + -0.002385185706649045 * "ADS"."Feature_62" + -0.006947997065061958 * "ADS"."Feature_63" + -0.445046717482 AS "Score_6", 0.0 * "ADS"."Feature_0" + 0.07808244835508191 * "ADS"."Feature_1" + -0.0010188247141295647 * "ADS"."Feature_2" + 0.014187068862494177 * "ADS"."Feature_3" + -0.0065741682950852046 * "ADS"."Feature_4" + 0.01565311837522097 * "ADS"."Feature_5" + 0.013028187177735443 * "ADS"."Feature_6" + 0.07231344178246646 * "ADS"."Feature_7" + -0.01663188771904731 * "ADS"."Feature_8" + -0.008011188558531146 * "ADS"."Feature_9" + 0.023672076082192524 * "ADS"."Feature_10" + 0.00872020680490607 * "ADS"."Feature_11" + 0.006048443497197672 * "ADS"."Feature_12" + -0.00019191838747151157 * "ADS"."Feature_13" + 0.00582602961635057 * "ADS"."Feature_14" + 0.03407546536468768 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + -0.011505825567142858 * "ADS"."Feature_17" + -0.02224373496925147 * "ADS"."Feature_18" + -0.002977882975373661 * "ADS"."Feature_19" + -0.0026199189607527405 * "ADS"."Feature_20" + -0.0022226003304698077 * "ADS"."Feature_21" + -0.019531768755444705 * "ADS"."Feature_22" + -0.029951553591577782 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + 0.0024196281799143105 * "ADS"."Feature_25" + -0.0029907629248197985 * "ADS"."Feature_26" + -0.009535716321374269 * "ADS"."Feature_27" + -0.0020364103112364322 * "ADS"."Feature_28" + 0.006984648849476223 * "ADS"."Feature_29" + 0.02993299191577302 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.02045877235721719 * "ADS"."Feature_33" + 0.0025998907500038066 * "ADS"."Feature_34" + 0.007014050928135041 * "ADS"."Feature_35" + 0.009279246699285959 * "ADS"."Feature_36" + 0.008992763584339787 * "ADS"."Feature_37" + 0.036229566838539055 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.07135169549326476 * "ADS"."Feature_40" + -0.006768981836971383 * "ADS"."Feature_41" + 0.005735222770849071 * "ADS"."Feature_42" + 0.006237546212986192 * "ADS"."Feature_43" + 0.012815437516051926 * "ADS"."Feature_44" + -0.005230221213059394 * "ADS"."Feature_45" + -0.022068684638809406 * "ADS"."Feature_46" + -0.061743348645130924 * "ADS"."Feature_47" + 0.14459420963922828 * "ADS"."Feature_48" + -0.0010712135205725357 * "ADS"."Feature_49" + -0.003972340476761721 * "ADS"."Feature_50" + 0.001153188663323297 * "ADS"."Feature_51" + -0.034553093518248854 * "ADS"."Feature_52" + -0.005779717379464173 * "ADS"."Feature_53" + 0.003343545305869535 * "ADS"."Feature_54" + 0.011709974031287729 * "ADS"."Feature_55" + -0.009487704320369664 * "ADS"."Feature_56" + -0.08242648896137814 * "ADS"."Feature_57" + -0.0031751557390395824 * "ADS"."Feature_58" + -0.01947308477213671 * "ADS"."Feature_59" + -0.03276381006132236 * "ADS"."Feature_60" + 0.0014242118190029526 * "ADS"."Feature_61" + -0.006918822440079472 * "ADS"."Feature_62" + 0.011050435853392482 * "ADS"."Feature_63" + -0.389242046288 AS "Score_7", 0.0 * "ADS"."Feature_0" + 0.007306454591713598 * "ADS"."Feature_1" + 0.026507469968152945 * "ADS"."Feature_2" + -0.022057389474593663 * "ADS"."Feature_3" + 0.01698963478666369 * "ADS"."Feature_4" + -0.008399926922889262 * "ADS"."Feature_5" + -0.015235050176843819 * "ADS"."Feature_6" + -3.704218565426475e-05 * "ADS"."Feature_7" + 0.10127492718160439 * "ADS"."Feature_8" + -0.018174140272798036 * "ADS"."Feature_9" + 0.01732261884580109 * "ADS"."Feature_10" + -0.005187180679784804 * "ADS"."Feature_11" + -0.009799445583737751 * "ADS"."Feature_12" + -0.008801269492701786 * "ADS"."Feature_13" + -0.000626746238812754 * "ADS"."Feature_14" + 0.06398181366007459 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.03190522949613 * "ADS"."Feature_17" + 0.010919127442970335 * "ADS"."Feature_18" + 0.007236040974128518 * "ADS"."Feature_19" + -0.006459274953908652 * "ADS"."Feature_20" + 0.017321819962795554 * "ADS"."Feature_21" + 0.018646276360880145 * "ADS"."Feature_22" + -0.1058090732615261 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.013687902429701672 * "ADS"."Feature_25" + 0.000753248429263369 * "ADS"."Feature_26" + 0.011198754383575626 * "ADS"."Feature_27" + 0.011482023771289084 * "ADS"."Feature_28" + 0.008483861089523535 * "ADS"."Feature_29" + -0.009759337193815255 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.03192989851891508 * "ADS"."Feature_33" + -0.019046672325298858 * "ADS"."Feature_34" + 0.02110130591235668 * "ADS"."Feature_35" + 0.019163147250701337 * "ADS"."Feature_36" + -0.014310896487791725 * "ADS"."Feature_37" + -0.022775567144611143 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.0065479729055879475 * "ADS"."Feature_40" + -0.0024713923858270593 * "ADS"."Feature_41" + 0.03401231165619254 * "ADS"."Feature_42" + -0.00645276164196247 * "ADS"."Feature_43" + 0.018968822461475562 * "ADS"."Feature_44" + 0.01330976534259847 * "ADS"."Feature_45" + 0.0034586283609827754 * "ADS"."Feature_46" + -0.0576285552525113 * "ADS"."Feature_47" + -0.044003196069916276 * "ADS"."Feature_48" + -0.001435945089763763 * "ADS"."Feature_49" + 0.01829965357227633 * "ADS"."Feature_50" + -0.01799731336985925 * "ADS"."Feature_51" + -0.02428086013064244 * "ADS"."Feature_52" + 0.022166830733958347 * "ADS"."Feature_53" + -0.012742933466006042 * "ADS"."Feature_54" + -0.003849213376843118 * "ADS"."Feature_55" + 0.01808632926498484 * "ADS"."Feature_56" + -0.024610554651133574 * "ADS"."Feature_57" + -0.031048228607693427 * "ADS"."Feature_58" + 0.01216717868032905 * "ADS"."Feature_59" + -0.0034596820394717643 * "ADS"."Feature_60" + -0.019622913140162734 * "ADS"."Feature_61" + -0.003973560551430308 * "ADS"."Feature_62" + 0.015377610000203738 * "ADS"."Feature_63" + -1.41495549215 AS "Score_8", 0.0 * "ADS"."Feature_0" + -0.04962950266645147 * "ADS"."Feature_1" + -0.02607943767250161 * "ADS"."Feature_2" + 0.007401951848211267 * "ADS"."Feature_3" + -0.0007996178576994721 * "ADS"."Feature_4" + -0.020221323390586615 * "ADS"."Feature_5" + 0.00754452921738782 * "ADS"."Feature_6" + -0.05938060830645736 * "ADS"."Feature_7" + 0.03879039116693352 * "ADS"."Feature_8" + -0.005384773333537331 * "ADS"."Feature_9" + 0.011103457285817946 * "ADS"."Feature_10" + 0.0012410705528675314 * "ADS"."Feature_11" + -0.003093599414898999 * "ADS"."Feature_12" + -0.007136908352790494 * "ADS"."Feature_13" + 0.009291646361034524 * "ADS"."Feature_14" + 0.057083238613244686 * "ADS"."Feature_15" + 0.0 * "ADS"."Feature_16" + 0.00011083404762176442 * "ADS"."Feature_17" + 0.014192352936245952 * "ADS"."Feature_18" + 0.006549178315887024 * "ADS"."Feature_19" + 0.00665560562305657 * "ADS"."Feature_20" + 0.024974235446424384 * "ADS"."Feature_21" + 0.003868861048330965 * "ADS"."Feature_22" + -0.0874307189404184 * "ADS"."Feature_23" + 0.0 * "ADS"."Feature_24" + -0.018273534806243916 * "ADS"."Feature_25" + 0.00914274779199384 * "ADS"."Feature_26" + 0.003053244015260083 * "ADS"."Feature_27" + 0.00712905941725663 * "ADS"."Feature_28" + 0.014128519061624023 * "ADS"."Feature_29" + -0.0007483383012165268 * "ADS"."Feature_30" + 0.0 * "ADS"."Feature_31" + 0.0 * "ADS"."Feature_32" + -0.024163504240569976 * "ADS"."Feature_33" + -0.0062251108420676516 * "ADS"."Feature_34" + 0.02303969122345124 * "ADS"."Feature_35" + -0.039337538575423575 * "ADS"."Feature_36" + 0.0014022214158896872 * "ADS"."Feature_37" + 0.008680192140714079 * "ADS"."Feature_38" + 0.0 * "ADS"."Feature_39" + 0.10722780931933908 * "ADS"."Feature_40" + 0.044115040308087154 * "ADS"."Feature_41" + -0.032907586344302873 * "ADS"."Feature_42" + -0.019721305883927488 * "ADS"."Feature_43" + -0.005413339825523621 * "ADS"."Feature_44" + 0.0032505896524071412 * "ADS"."Feature_45" + -0.012236617274891884 * "ADS"."Feature_46" + 0.04797275955910264 * "ADS"."Feature_47" + 0.1233337868596185 * "ADS"."Feature_48" + -0.022073656810168645 * "ADS"."Feature_49" + -0.00996768228006693 * "ADS"."Feature_50" + 0.0011885016627849621 * "ADS"."Feature_51" + -0.010276531913681114 * "ADS"."Feature_52" + -0.02336130040718118 * "ADS"."Feature_53" + 0.023478126360119263 * "ADS"."Feature_54" + -0.012130268979494567 * "ADS"."Feature_55" + 0.03756258975464717 * "ADS"."Feature_56" + 0.011880099632589002 * "ADS"."Feature_57" + 0.023271301571035907 * "ADS"."Feature_58" + -0.020353254815355565 * "ADS"."Feature_59" + 0.02319074816331775 * "ADS"."Feature_60" + -3.8893044149767835e-05 * "ADS"."Feature_61" + 0.006882059117025698 * "ADS"."Feature_62" + -0.034224200346336366 * "ADS"."Feature_63" + -0.601697559638 AS "Score_9" 
FROM digits AS "ADS"), 
orig_cte AS 
(SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Score_0" AS "Score_0", linear_model_cte."Score_1" AS "Score_1", linear_model_cte."Score_2" AS "Score_2", linear_model_cte."Score_3" AS "Score_3", linear_model_cte."Score_4" AS "Score_4", linear_model_cte."Score_5" AS "Score_5", linear_model_cte."Score_6" AS "Score_6", linear_model_cte."Score_7" AS "Score_7", linear_model_cte."Score_8" AS "Score_8", linear_model_cte."Score_9" AS "Score_9", CAST(NULL AS DOUBLE) AS "Proba_0", CAST(NULL AS DOUBLE) AS "Proba_1", CAST(NULL AS DOUBLE) AS "Proba_2", CAST(NULL AS DOUBLE) AS "Proba_3", CAST(NULL AS DOUBLE) AS "Proba_4", CAST(NULL AS DOUBLE) AS "Proba_5", CAST(NULL AS DOUBLE) AS "Proba_6", CAST(NULL AS DOUBLE) AS "Proba_7", CAST(NULL AS DOUBLE) AS "Proba_8", CAST(NULL AS DOUBLE) AS "Proba_9", CAST(NULL AS DOUBLE) AS "LogProba_0", CAST(NULL AS DOUBLE) AS "LogProba_1", CAST(NULL AS DOUBLE) AS "LogProba_2", CAST(NULL AS DOUBLE) AS "LogProba_3", CAST(NULL AS DOUBLE) AS "LogProba_4", CAST(NULL AS DOUBLE) AS "LogProba_5", CAST(NULL AS DOUBLE) AS "LogProba_6", CAST(NULL AS DOUBLE) AS "LogProba_7", CAST(NULL AS DOUBLE) AS "LogProba_8", CAST(NULL AS DOUBLE) AS "LogProba_9", NULL AS "Decision", CAST(NULL AS DOUBLE) AS "DecisionProba" 
FROM linear_model_cte), 
score_class_union AS 
(SELECT scu."KEY_u" AS "KEY_u", scu.class AS class, scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score" 
FROM (SELECT orig_cte."KEY" AS "KEY_u", 0 AS class, orig_cte."LogProba_0" AS "LogProba", orig_cte."Proba_0" AS "Proba", orig_cte."Score_0" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 1 AS class, orig_cte."LogProba_1" AS "LogProba", orig_cte."Proba_1" AS "Proba", orig_cte."Score_1" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 2 AS class, orig_cte."LogProba_2" AS "LogProba", orig_cte."Proba_2" AS "Proba", orig_cte."Score_2" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 3 AS class, orig_cte."LogProba_3" AS "LogProba", orig_cte."Proba_3" AS "Proba", orig_cte."Score_3" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 4 AS class, orig_cte."LogProba_4" AS "LogProba", orig_cte."Proba_4" AS "Proba", orig_cte."Score_4" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 5 AS class, orig_cte."LogProba_5" AS "LogProba", orig_cte."Proba_5" AS "Proba", orig_cte."Score_5" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 6 AS class, orig_cte."LogProba_6" AS "LogProba", orig_cte."Proba_6" AS "Proba", orig_cte."Score_6" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 7 AS class, orig_cte."LogProba_7" AS "LogProba", orig_cte."Proba_7" AS "Proba", orig_cte."Score_7" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 8 AS class, orig_cte."LogProba_8" AS "LogProba", orig_cte."Proba_8" AS "Proba", orig_cte."Score_8" AS "Score" 
FROM orig_cte UNION ALL SELECT orig_cte."KEY" AS "KEY_u", 9 AS class, orig_cte."LogProba_9" AS "LogProba", orig_cte."Proba_9" AS "Proba", orig_cte."Score_9" AS "Score" 
FROM orig_cte) AS scu), 
score_max AS 
(SELECT orig_cte."KEY" AS "KEY", orig_cte."Score_0" AS "Score_0", orig_cte."Score_1" AS "Score_1", orig_cte."Score_2" AS "Score_2", orig_cte."Score_3" AS "Score_3", orig_cte."Score_4" AS "Score_4", orig_cte."Score_5" AS "Score_5", orig_cte."Score_6" AS "Score_6", orig_cte."Score_7" AS "Score_7", orig_cte."Score_8" AS "Score_8", orig_cte."Score_9" AS "Score_9", orig_cte."Proba_0" AS "Proba_0", orig_cte."Proba_1" AS "Proba_1", orig_cte."Proba_2" AS "Proba_2", orig_cte."Proba_3" AS "Proba_3", orig_cte."Proba_4" AS "Proba_4", orig_cte."Proba_5" AS "Proba_5", orig_cte."Proba_6" AS "Proba_6", orig_cte."Proba_7" AS "Proba_7", orig_cte."Proba_8" AS "Proba_8", orig_cte."Proba_9" AS "Proba_9", orig_cte."LogProba_0" AS "LogProba_0", orig_cte."LogProba_1" AS "LogProba_1", orig_cte."LogProba_2" AS "LogProba_2", orig_cte."LogProba_3" AS "LogProba_3", orig_cte."LogProba_4" AS "LogProba_4", orig_cte."LogProba_5" AS "LogProba_5", orig_cte."LogProba_6" AS "LogProba_6", orig_cte."LogProba_7" AS "LogProba_7", orig_cte."LogProba_8" AS "LogProba_8", orig_cte."LogProba_9" AS "LogProba_9", orig_cte."Decision" AS "Decision", orig_cte."DecisionProba" AS "DecisionProba", max_select."KEY_m" AS "KEY_m", max_select."max_Score" AS "max_Score" 
FROM orig_cte LEFT OUTER JOIN (SELECT score_class_union."KEY_u" AS "KEY_m", max(score_class_union."Score") AS "max_Score" 
FROM score_class_union GROUP BY score_class_union."KEY_u") AS max_select ON orig_cte."KEY" = max_select."KEY_m"), 
union_with_max AS 
(SELECT score_class_union."KEY_u" AS "KEY_u", score_class_union.class AS class, score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score", score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score" 
FROM score_class_union LEFT OUTER JOIN score_max ON score_class_union."KEY_u" = score_max."KEY"), 
arg_max_cte AS 
(SELECT score_max."KEY" AS "KEY", score_max."Score_0" AS "Score_0", score_max."Score_1" AS "Score_1", score_max."Score_2" AS "Score_2", score_max."Score_3" AS "Score_3", score_max."Score_4" AS "Score_4", score_max."Score_5" AS "Score_5", score_max."Score_6" AS "Score_6", score_max."Score_7" AS "Score_7", score_max."Score_8" AS "Score_8", score_max."Score_9" AS "Score_9", score_max."Proba_0" AS "Proba_0", score_max."Proba_1" AS "Proba_1", score_max."Proba_2" AS "Proba_2", score_max."Proba_3" AS "Proba_3", score_max."Proba_4" AS "Proba_4", score_max."Proba_5" AS "Proba_5", score_max."Proba_6" AS "Proba_6", score_max."Proba_7" AS "Proba_7", score_max."Proba_8" AS "Proba_8", score_max."Proba_9" AS "Proba_9", score_max."LogProba_0" AS "LogProba_0", score_max."LogProba_1" AS "LogProba_1", score_max."LogProba_2" AS "LogProba_2", score_max."LogProba_3" AS "LogProba_3", score_max."LogProba_4" AS "LogProba_4", score_max."LogProba_5" AS "LogProba_5", score_max."LogProba_6" AS "LogProba_6", score_max."LogProba_7" AS "LogProba_7", score_max."LogProba_8" AS "LogProba_8", score_max."LogProba_9" AS "LogProba_9", score_max."Decision" AS "Decision", score_max."DecisionProba" AS "DecisionProba", score_max."KEY_m" AS "KEY_m", score_max."max_Score" AS "max_Score", "arg_max_t_Score"."KEY_Score" AS "KEY_Score", "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score" 
FROM score_max LEFT OUTER JOIN (SELECT union_with_max."KEY" AS "KEY_Score", min(union_with_max.class) AS "arg_max_Score" 
FROM union_with_max 
WHERE union_with_max."max_Score" <= union_with_max."Score" GROUP BY union_with_max."KEY") AS "arg_max_t_Score" ON score_max."KEY" = "arg_max_t_Score"."KEY_Score")
 SELECT arg_max_cte."KEY" AS "KEY", arg_max_cte."Score_0" AS "Score_0", arg_max_cte."Score_1" AS "Score_1", arg_max_cte."Score_2" AS "Score_2", arg_max_cte."Score_3" AS "Score_3", arg_max_cte."Score_4" AS "Score_4", arg_max_cte."Score_5" AS "Score_5", arg_max_cte."Score_6" AS "Score_6", arg_max_cte."Score_7" AS "Score_7", arg_max_cte."Score_8" AS "Score_8", arg_max_cte."Score_9" AS "Score_9", arg_max_cte."Proba_0" AS "Proba_0", arg_max_cte."Proba_1" AS "Proba_1", arg_max_cte."Proba_2" AS "Proba_2", arg_max_cte."Proba_3" AS "Proba_3", arg_max_cte."Proba_4" AS "Proba_4", arg_max_cte."Proba_5" AS "Proba_5", arg_max_cte."Proba_6" AS "Proba_6", arg_max_cte."Proba_7" AS "Proba_7", arg_max_cte."Proba_8" AS "Proba_8", arg_max_cte."Proba_9" AS "Proba_9", CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN ln(arg_max_cte."Proba_0") ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN ln(arg_max_cte."Proba_1") ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN ln(arg_max_cte."Proba_2") ELSE -1.79769313486231e+308 END AS "LogProba_2", CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN ln(arg_max_cte."Proba_3") ELSE -1.79769313486231e+308 END AS "LogProba_3", CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN ln(arg_max_cte."Proba_4") ELSE -1.79769313486231e+308 END AS "LogProba_4", CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN ln(arg_max_cte."Proba_5") ELSE -1.79769313486231e+308 END AS "LogProba_5", CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN ln(arg_max_cte."Proba_6") ELSE -1.79769313486231e+308 END AS "LogProba_6", CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN ln(arg_max_cte."Proba_7") ELSE -1.79769313486231e+308 END AS "LogProba_7", CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN ln(arg_max_cte."Proba_8") ELSE -1.79769313486231e+308 END AS "LogProba_8", CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN ln(arg_max_cte."Proba_9") ELSE -1.79769313486231e+308 END AS "LogProba_9", arg_max_cte."arg_max_Score" AS "Decision", CASE WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0" WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1" WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2" WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3" WHEN (arg_max_cte."arg_max_Score" = 4) THEN arg_max_cte."Proba_4" WHEN (arg_max_cte."arg_max_Score" = 5) THEN arg_max_cte."Proba_5" WHEN (arg_max_cte."arg_max_Score" = 6) THEN arg_max_cte."Proba_6" WHEN (arg_max_cte."arg_max_Score" = 7) THEN arg_max_cte."Proba_7" WHEN (arg_max_cte."arg_max_Score" = 8) THEN arg_max_cte."Proba_8" WHEN (arg_max_cte."arg_max_Score" = 9) THEN arg_max_cte."Proba_9" END AS "DecisionProba" 
FROM arg_max_cte