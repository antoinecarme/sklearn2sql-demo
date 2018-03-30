-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.005459585443245233 * "ADS"."Feature_0" + -0.019678129989380174 * "ADS"."Feature_1" + -0.018651639907097724 * "ADS"."Feature_2" + -0.030722844040279394 * "ADS"."Feature_3" + 0.003899514696630997 * "ADS"."Feature_4" + 0.009581263102268343 * "ADS"."Feature_5" + 0.013423584029778756 * "ADS"."Feature_6" + 0.01952425660723507 * "ADS"."Feature_7" + 0.000639405783921063 * "ADS"."Feature_8" + 0.013616695552685121 * "ADS"."Feature_9" + 0.00960555741842635 * "ADS"."Feature_10" + -0.01859099880644039 * "ADS"."Feature_11" + -0.004342613070884705 * "ADS"."Feature_12" + 0.0004268806904146429 * "ADS"."Feature_13" + -0.0061516707570542055 * "ADS"."Feature_14" + -0.012968953424811573 * "ADS"."Feature_15" + 0.0324667453390462 * "ADS"."Feature_16" + -0.019117472061925354 * "ADS"."Feature_17" + 0.016454483130591762 * "ADS"."Feature_18" + 0.003073517525895711 * "ADS"."Feature_19" + 0.004459943842317947 * "ADS"."Feature_20" + 0.0025109799402946555 * "ADS"."Feature_21" + -0.004686815749878221 * "ADS"."Feature_22" + -0.013241346611050055 * "ADS"."Feature_23" + 0.001910196253532905 * "ADS"."Feature_24" + 0.004210393983029046 * "ADS"."Feature_25" + -0.007435657402395962 * "ADS"."Feature_26" + -0.029765512299241417 * "ADS"."Feature_27" + -0.008406528977987646 * "ADS"."Feature_28" + 0.009344863854089072 * "ADS"."Feature_29" + 0.0073284310752306766 * "ADS"."Feature_30" + 0.0028961944383834905 * "ADS"."Feature_31" + 0.015064689623821575 * "ADS"."Feature_32" + 0.014276597807973202 * "ADS"."Feature_33" + 0.020685739442085686 * "ADS"."Feature_34" + -0.008944763576315587 * "ADS"."Feature_35" + 0.002158233816523964 * "ADS"."Feature_36" + -0.01860179380793653 * "ADS"."Feature_37" + 0.015068484959647209 * "ADS"."Feature_38" + 0.040765342988784745 * "ADS"."Feature_39" + 0.004764281866819496 * "ADS"."Feature_40" + -0.011193976051146904 * "ADS"."Feature_41" + -0.008052155312563316 * "ADS"."Feature_42" + 0.020118919037554226 * "ADS"."Feature_43" + -8.159703437208513e-05 * "ADS"."Feature_44" + -0.008251763149017238 * "ADS"."Feature_45" + -0.02202865667502988 * "ADS"."Feature_46" + 0.010856918903698573 * "ADS"."Feature_47" + -0.045517585430082795 * "ADS"."Feature_48" + 0.010957797631897642 * "ADS"."Feature_49" + 0.012299611376264244 * "ADS"."Feature_50" + -0.004049227528368576 * "ADS"."Feature_51" + 0.016963299041924233 * "ADS"."Feature_52" + 0.01409718474338707 * "ADS"."Feature_53" + 0.002247689752568332 * "ADS"."Feature_54" + -0.03454085600511554 * "ADS"."Feature_55" + 0.014798270515468361 * "ADS"."Feature_56" + -0.013550443878335127 * "ADS"."Feature_57" + 0.021070936747605334 * "ADS"."Feature_58" + -0.0029885478868715443 * "ADS"."Feature_59" + -0.018956667903520616 * "ADS"."Feature_60" + -0.0002718788483850659 * "ADS"."Feature_61" + 0.005957828670760814 * "ADS"."Feature_62" + 0.01691647846022168 * "ADS"."Feature_63" + 0.0112395139031478 * "ADS"."Feature_64" + 0.018717233008985038 * "ADS"."Feature_65" + -0.015988527784495277 * "ADS"."Feature_66" + 0.019069423697964546 * "ADS"."Feature_67" + -0.02136819319831348 * "ADS"."Feature_68" + 0.030138126606122903 * "ADS"."Feature_69" + 0.02124163787872136 * "ADS"."Feature_70" + 0.004155228415351741 * "ADS"."Feature_71" + 0.02411631398820628 * "ADS"."Feature_72" + 0.0027739305267821144 * "ADS"."Feature_73" + -0.026191645087388152 * "ADS"."Feature_74" + -0.014511268779278481 * "ADS"."Feature_75" + -0.009650294167744504 * "ADS"."Feature_76" + -0.0041890227565554135 * "ADS"."Feature_77" + -0.03389266364971698 * "ADS"."Feature_78" + -0.004479675550128109 * "ADS"."Feature_79" + 0.026193953180320938 * "ADS"."Feature_80" + 0.018680441034697022 * "ADS"."Feature_81" + -0.02026108502209928 * "ADS"."Feature_82" + 0.0012528088036456546 * "ADS"."Feature_83" + -0.02639217226743372 * "ADS"."Feature_84" + 0.01410853262839287 * "ADS"."Feature_85" + 0.010732338885113416 * "ADS"."Feature_86" + 0.010280504902819686 * "ADS"."Feature_87" + -0.008737569082559734 * "ADS"."Feature_88" + -0.005227707838612106 * "ADS"."Feature_89" + 0.02116805586485267 * "ADS"."Feature_90" + 0.007386855703165503 * "ADS"."Feature_91" + 0.018420997601040587 * "ADS"."Feature_92" + 0.027295566048755594 * "ADS"."Feature_93" + 0.004466234945493725 * "ADS"."Feature_94" + 0.0038245611336482827 * "ADS"."Feature_95" + 0.020341821804750103 * "ADS"."Feature_96" + 0.0005626917183758672 * "ADS"."Feature_97" + -0.02242824579718486 * "ADS"."Feature_98" + -0.030678516252099573 * "ADS"."Feature_99" + -0.004159871198647656 * "ADS"."Feature_100" + -0.012368336885405106 * "ADS"."Feature_101" + -0.009842862657884525 * "ADS"."Feature_102" + 0.015686778884779453 * "ADS"."Feature_103" + -0.01351775748157857 * "ADS"."Feature_104" + 0.002634034436913322 * "ADS"."Feature_105" + 0.014514087916715811 * "ADS"."Feature_106" + 0.007917767162513925 * "ADS"."Feature_107" + -0.024291633990455593 * "ADS"."Feature_108" + 0.01980006707695242 * "ADS"."Feature_109" + 0.00808879122923256 * "ADS"."Feature_110" + 0.021077877285931 * "ADS"."Feature_111" + -0.02033122357112287 * "ADS"."Feature_112" + 0.03721142117679606 * "ADS"."Feature_113" + 0.007137282383556796 * "ADS"."Feature_114" + 0.024140048037545058 * "ADS"."Feature_115" + -0.011260358397620424 * "ADS"."Feature_116" + -0.005745130466115496 * "ADS"."Feature_117" + -0.016959943540837512 * "ADS"."Feature_118" + -0.009859512876303345 * "ADS"."Feature_119" + 0.009725469316525692 * "ADS"."Feature_120" + -0.002034820081588157 * "ADS"."Feature_121" + 0.040992738984484786 * "ADS"."Feature_122" + -0.0028020255750076154 * "ADS"."Feature_123" + 0.000825785022589562 * "ADS"."Feature_124" + 0.019536490105729637 * "ADS"."Feature_125" + 0.009360057773697326 * "ADS"."Feature_126" + -0.014391294698391361 * "ADS"."Feature_127" + -0.005280452769293802 * "ADS"."Feature_128" + -0.01646480512735249 * "ADS"."Feature_129" + 0.006517892472415705 * "ADS"."Feature_130" + -0.004028409746491748 * "ADS"."Feature_131" + 0.02284737710543679 * "ADS"."Feature_132" + 0.010338014421141746 * "ADS"."Feature_133" + -0.006398077790933739 * "ADS"."Feature_134" + -0.003953708923402077 * "ADS"."Feature_135" + 0.028911853966793848 * "ADS"."Feature_136" + -0.005337222499324573 * "ADS"."Feature_137" + 0.016222568918373162 * "ADS"."Feature_138" + -0.0215607479997143 * "ADS"."Feature_139" + -0.0026798829503173046 * "ADS"."Feature_140" + -0.00433465842264619 * "ADS"."Feature_141" + 0.0032405738133392905 * "ADS"."Feature_142" + -0.00029679773091027426 * "ADS"."Feature_143" + -0.014914424656099465 * "ADS"."Feature_144" + 0.0026946953423319384 * "ADS"."Feature_145" + -0.0037617624608735903 * "ADS"."Feature_146" + -0.0337976991276495 * "ADS"."Feature_147" + 0.014738579835876025 * "ADS"."Feature_148" + 0.002197055712863161 * "ADS"."Feature_149" + -0.025934770218579668 * "ADS"."Feature_150" + 0.00872630521336637 * "ADS"."Feature_151" + 0.022558588803788603 * "ADS"."Feature_152" + -0.017621822327851165 * "ADS"."Feature_153" + -0.005314671701213506 * "ADS"."Feature_154" + 0.001779451201064576 * "ADS"."Feature_155" + -0.015292261609361289 * "ADS"."Feature_156" + 0.015721481746864732 * "ADS"."Feature_157" + 0.0007350341465312583 * "ADS"."Feature_158" + -0.0014041294184551955 * "ADS"."Feature_159" + -0.0069768730118301425 * "ADS"."Feature_160" + 0.007954988650656893 * "ADS"."Feature_161" + 0.01374322539490218 * "ADS"."Feature_162" + 0.018396264236316868 * "ADS"."Feature_163" + -0.00237082856062485 * "ADS"."Feature_164" + -0.007975944367184021 * "ADS"."Feature_165" + -0.016154655317579963 * "ADS"."Feature_166" + -0.023639896496907013 * "ADS"."Feature_167" + -0.0005392841462970054 * "ADS"."Feature_168" + -0.0034118969675845058 * "ADS"."Feature_169" + 0.0032630479218120935 * "ADS"."Feature_170" + 0.018939230330912153 * "ADS"."Feature_171" + -0.007999431640383216 * "ADS"."Feature_172" + -0.029553372665687826 * "ADS"."Feature_173" + 0.010876852551476825 * "ADS"."Feature_174" + 0.006722227802455823 * "ADS"."Feature_175" + -0.006614937040043718 * "ADS"."Feature_176" + 0.01905705990403783 * "ADS"."Feature_177" + -0.001091377657988603 * "ADS"."Feature_178" + 0.028135062612976373 * "ADS"."Feature_179" + 0.00677445372122074 * "ADS"."Feature_180" + -0.018774394573603827 * "ADS"."Feature_181" + -0.010584287630558596 * "ADS"."Feature_182" + 0.008913849444491959 * "ADS"."Feature_183" + 0.016452701527177815 * "ADS"."Feature_184" + 0.010674664713009804 * "ADS"."Feature_185" + -0.0045002851621292386 * "ADS"."Feature_186" + -0.03941377879053225 * "ADS"."Feature_187" + 0.021435405173135705 * "ADS"."Feature_188" + 0.027361478812316757 * "ADS"."Feature_189" + 0.003922713974473268 * "ADS"."Feature_190" + -0.024933600863825706 * "ADS"."Feature_191" + 0.022316887076118154 * "ADS"."Feature_192" + -0.017712572304389138 * "ADS"."Feature_193" + 0.0007785256558265228 * "ADS"."Feature_194" + 0.007000468711701574 * "ADS"."Feature_195" + -0.007965444539063357 * "ADS"."Feature_196" + 0.010965865260176596 * "ADS"."Feature_197" + -0.01289703356520622 * "ADS"."Feature_198" + 0.010609050823142788 * "ADS"."Feature_199" + 0.018202305632262262 * "ADS"."Feature_200" + -0.0026242592621620727 * "ADS"."Feature_201" + -0.02072331411354085 * "ADS"."Feature_202" + -0.0025575028264146126 * "ADS"."Feature_203" + 0.010263128510034072 * "ADS"."Feature_204" + 0.005135120717110132 * "ADS"."Feature_205" + -0.016279047540185998 * "ADS"."Feature_206" + -0.02358428707254573 * "ADS"."Feature_207" + -0.008372381960267634 * "ADS"."Feature_208" + -0.014347914460540337 * "ADS"."Feature_209" + -0.010796471493780928 * "ADS"."Feature_210" + -0.003576988175200546 * "ADS"."Feature_211" + 0.004624284846234333 * "ADS"."Feature_212" + -0.01144503783202158 * "ADS"."Feature_213" + -0.0078016017428165566 * "ADS"."Feature_214" + 0.01779354797225296 * "ADS"."Feature_215" + 0.007057196412032905 * "ADS"."Feature_216" + -0.011504924175083501 * "ADS"."Feature_217" + 0.0038591390696966587 * "ADS"."Feature_218" + -0.014843441471944836 * "ADS"."Feature_219" + -0.02541057977907768 * "ADS"."Feature_220" + 0.006229339572716597 * "ADS"."Feature_221" + -0.0178590219405226 * "ADS"."Feature_222" + 0.016520877948818923 * "ADS"."Feature_223" + 0.023699222724400868 * "ADS"."Feature_224" + 0.005932250473237951 * "ADS"."Feature_225" + -0.011567138467665614 * "ADS"."Feature_226" + 0.01995122487883453 * "ADS"."Feature_227" + -0.030516199478319527 * "ADS"."Feature_228" + 0.0038150713867234048 * "ADS"."Feature_229" + -0.0009372442910681282 * "ADS"."Feature_230" + 0.010836098601702154 * "ADS"."Feature_231" + 0.042798217044886906 * "ADS"."Feature_232" + 0.027854687885197415 * "ADS"."Feature_233" + -0.01654120226971089 * "ADS"."Feature_234" + -0.010129024989263408 * "ADS"."Feature_235" + -0.017164231831664833 * "ADS"."Feature_236" + -0.02426926095599643 * "ADS"."Feature_237" + -0.01070625646177754 * "ADS"."Feature_238" + 0.002917062037084129 * "ADS"."Feature_239" + -0.0004259467251681811 * "ADS"."Feature_240" + -0.00849095939299514 * "ADS"."Feature_241" + -0.019238937703084644 * "ADS"."Feature_242" + -0.00329051185940605 * "ADS"."Feature_243" + 0.08629012846144853 * "ADS"."Feature_244" + -0.02174834952476646 * "ADS"."Feature_245" + -0.009291921800901798 * "ADS"."Feature_246" + -0.021376452239057778 * "ADS"."Feature_247" + -0.000556660368963441 * "ADS"."Feature_248" + -0.011213920397395691 * "ADS"."Feature_249" + 0.01836328133509451 * "ADS"."Feature_250" + 0.013595720067397472 * "ADS"."Feature_251" + -0.021243321424604597 * "ADS"."Feature_252" + 0.029567568347401135 * "ADS"."Feature_253" + 0.0380421832256003 * "ADS"."Feature_254" + -0.005296370220335283 * "ADS"."Feature_255" + 0.022421952044456333 * "ADS"."Feature_256" + 0.004176436439675538 * "ADS"."Feature_257" + -0.013968979991105005 * "ADS"."Feature_258" + -0.00015044567230883005 * "ADS"."Feature_259" + 0.0105966782895841 * "ADS"."Feature_260" + -0.010908670022789058 * "ADS"."Feature_261" + -0.023843323989832417 * "ADS"."Feature_262" + 0.00667979918119491 * "ADS"."Feature_263" + -0.009015600836482675 * "ADS"."Feature_264" + 0.010436612558684177 * "ADS"."Feature_265" + 0.012203394816158605 * "ADS"."Feature_266" + 0.00332461516743697 * "ADS"."Feature_267" + -0.003505393410872226 * "ADS"."Feature_268" + -0.01749636135114805 * "ADS"."Feature_269" + -0.026025659681760394 * "ADS"."Feature_270" + -0.01583122312840524 * "ADS"."Feature_271" + -0.012450179682765471 * "ADS"."Feature_272" + -0.006009795444050702 * "ADS"."Feature_273" + -0.018599279974834123 * "ADS"."Feature_274" + -0.004840081833774957 * "ADS"."Feature_275" + -0.0054023159192033805 * "ADS"."Feature_276" + 0.0121699796316131 * "ADS"."Feature_277" + -0.03512469588038994 * "ADS"."Feature_278" + 0.005129687033062035 * "ADS"."Feature_279" + -0.005355317762392856 * "ADS"."Feature_280" + -0.003588878281439209 * "ADS"."Feature_281" + 0.021307036853304307 * "ADS"."Feature_282" + -0.004041506991480988 * "ADS"."Feature_283" + 0.007988269736790819 * "ADS"."Feature_284" + -0.019610577884696948 * "ADS"."Feature_285" + -0.016646322078432897 * "ADS"."Feature_286" + -0.004807419375166981 * "ADS"."Feature_287" + 0.013490721453258999 * "ADS"."Feature_288" + -0.0027779904481042305 * "ADS"."Feature_289" + -0.011005770778675606 * "ADS"."Feature_290" + -0.006102737089020696 * "ADS"."Feature_291" + 0.03737986644802944 * "ADS"."Feature_292" + 0.0004173301342552862 * "ADS"."Feature_293" + 0.017500796959121347 * "ADS"."Feature_294" + -0.017598116620902046 * "ADS"."Feature_295" + -0.035801352053610826 * "ADS"."Feature_296" + -0.0021121384899347347 * "ADS"."Feature_297" + -0.007458357365179965 * "ADS"."Feature_298" + -0.019499968829122062 * "ADS"."Feature_299" + 0.004738850365503723 * "ADS"."Feature_300" + 0.011605492093665768 * "ADS"."Feature_301" + 0.011275299998195211 * "ADS"."Feature_302" + -0.0077364139145577075 * "ADS"."Feature_303" + -0.018160256931726206 * "ADS"."Feature_304" + 0.01515940824184194 * "ADS"."Feature_305" + -0.0041256326914992 * "ADS"."Feature_306" + -0.006542944528579549 * "ADS"."Feature_307" + 0.024156869499985918 * "ADS"."Feature_308" + -0.018145806363685676 * "ADS"."Feature_309" + 0.011028938794187908 * "ADS"."Feature_310" + -0.002171579442902853 * "ADS"."Feature_311" + -0.02160595819915813 * "ADS"."Feature_312" + 0.0025746238216897946 * "ADS"."Feature_313" + -0.011085832695982319 * "ADS"."Feature_314" + -0.027484178649985258 * "ADS"."Feature_315" + -0.08000908748297998 * "ADS"."Feature_316" + -0.0002564042157174838 * "ADS"."Feature_317" + 0.006147520593566338 * "ADS"."Feature_318" + 0.032045283518274834 * "ADS"."Feature_319" + 0.008423808455858356 * "ADS"."Feature_320" + 0.017767434198953498 * "ADS"."Feature_321" + -0.03726282958935055 * "ADS"."Feature_322" + -0.004447444749463813 * "ADS"."Feature_323" + 0.015289369271092354 * "ADS"."Feature_324" + -0.0025696011111706945 * "ADS"."Feature_325" + -0.006911045633949033 * "ADS"."Feature_326" + 0.010210999211659175 * "ADS"."Feature_327" + -0.027760040470788568 * "ADS"."Feature_328" + -0.007548441679378968 * "ADS"."Feature_329" + -0.008744846871530569 * "ADS"."Feature_330" + -0.021862890289714994 * "ADS"."Feature_331" + -0.010488188455921133 * "ADS"."Feature_332" + 0.039215241620459994 * "ADS"."Feature_333" + 0.0009490970837064301 * "ADS"."Feature_334" + -0.01447552460950344 * "ADS"."Feature_335" + 0.00045236667609213806 * "ADS"."Feature_336" + -0.01827985624245597 * "ADS"."Feature_337" + -0.010821728373187494 * "ADS"."Feature_338" + -0.005972716271622219 * "ADS"."Feature_339" + -0.027884725576956777 * "ADS"."Feature_340" + 0.003512809087590508 * "ADS"."Feature_341" + 0.02129848240877528 * "ADS"."Feature_342" + -0.010710683954805893 * "ADS"."Feature_343" + -0.014457333087309909 * "ADS"."Feature_344" + -0.018036360958474405 * "ADS"."Feature_345" + 0.0036688142774417036 * "ADS"."Feature_346" + -0.006222626738750407 * "ADS"."Feature_347" + 0.009266636177514914 * "ADS"."Feature_348" + 0.029615209658878677 * "ADS"."Feature_349" + -0.001281090857966273 * "ADS"."Feature_350" + -0.00273678868576532 * "ADS"."Feature_351" + -0.010703031218280418 * "ADS"."Feature_352" + -0.02989947540218712 * "ADS"."Feature_353" + -0.014525286558705115 * "ADS"."Feature_354" + -0.014880384100718038 * "ADS"."Feature_355" + -0.039692615513925965 * "ADS"."Feature_356" + -0.017842917923579414 * "ADS"."Feature_357" + -0.01079309324656773 * "ADS"."Feature_358" + -0.0010909190666160522 * "ADS"."Feature_359" + -0.041403220240799975 * "ADS"."Feature_360" + 0.014223687786777978 * "ADS"."Feature_361" + -0.01485831822280626 * "ADS"."Feature_362" + -0.008801954552020368 * "ADS"."Feature_363" + 0.01829193696350127 * "ADS"."Feature_364" + -0.01975253957226008 * "ADS"."Feature_365" + -0.00978769597852069 * "ADS"."Feature_366" + 0.0013610327980774183 * "ADS"."Feature_367" + -0.00812173776695401 * "ADS"."Feature_368" + 0.00484082407053873 * "ADS"."Feature_369" + -0.01446286265642907 * "ADS"."Feature_370" + -0.014009959561727053 * "ADS"."Feature_371" + -0.009395748654035337 * "ADS"."Feature_372" + 0.004025316941919768 * "ADS"."Feature_373" + -0.019892979549895776 * "ADS"."Feature_374" + 0.0022069927271877515 * "ADS"."Feature_375" + -0.01077766338518301 * "ADS"."Feature_376" + -0.03246338609596558 * "ADS"."Feature_377" + -0.004049266113457616 * "ADS"."Feature_378" + -0.005156599502425608 * "ADS"."Feature_379" + -0.030434874185949017 * "ADS"."Feature_380" + -0.0014553277063271558 * "ADS"."Feature_381" + 0.02179092750684464 * "ADS"."Feature_382" + 0.008989729721076232 * "ADS"."Feature_383" + 0.02757015560559592 * "ADS"."Feature_384" + -0.005344904861505068 * "ADS"."Feature_385" + 0.005958028837618336 * "ADS"."Feature_386" + -0.01210259176266077 * "ADS"."Feature_387" + -0.014717946382863624 * "ADS"."Feature_388" + -0.0009063210910579686 * "ADS"."Feature_389" + -0.02569906391122799 * "ADS"."Feature_390" + -0.014763211077465694 * "ADS"."Feature_391" + -0.008744256575445024 * "ADS"."Feature_392" + -0.018862802512510036 * "ADS"."Feature_393" + 0.0043271314300998105 * "ADS"."Feature_394" + -0.011004641456271197 * "ADS"."Feature_395" + -0.02013249450047537 * "ADS"."Feature_396" + 0.005277516560527478 * "ADS"."Feature_397" + -0.007969422448900821 * "ADS"."Feature_398" + -0.011969828289659225 * "ADS"."Feature_399" + 0.0030667934217324623 * "ADS"."Feature_400" + -0.0020783801510898346 * "ADS"."Feature_401" + -0.011647152991096274 * "ADS"."Feature_402" + 0.025267429596352683 * "ADS"."Feature_403" + -0.0020482732821874134 * "ADS"."Feature_404" + -0.006679742558598365 * "ADS"."Feature_405" + 0.017282716299433978 * "ADS"."Feature_406" + 0.011250768936706852 * "ADS"."Feature_407" + 0.01166530843809489 * "ADS"."Feature_408" + -0.015366753553772493 * "ADS"."Feature_409" + -0.008840599175641811 * "ADS"."Feature_410" + -0.007987553815983369 * "ADS"."Feature_411" + -0.01382315435921728 * "ADS"."Feature_412" + 0.05076477518019245 * "ADS"."Feature_413" + -0.04901603428234419 * "ADS"."Feature_414" + -0.010245447585323164 * "ADS"."Feature_415" + -0.0019299005256984353 * "ADS"."Feature_416" + 0.0007313860890353395 * "ADS"."Feature_417" + 0.00791615802846638 * "ADS"."Feature_418" + -0.01123980012549725 * "ADS"."Feature_419" + 0.0009390360908658412 * "ADS"."Feature_420" + -0.02166383043055939 * "ADS"."Feature_421" + -0.01728869749117694 * "ADS"."Feature_422" + 0.03310326038759798 * "ADS"."Feature_423" + -0.0068829199287539465 * "ADS"."Feature_424" + -0.0066529281002327715 * "ADS"."Feature_425" + 0.0015613235167976501 * "ADS"."Feature_426" + -0.011679879583992449 * "ADS"."Feature_427" + -0.010260956856020343 * "ADS"."Feature_428" + -0.011457902418214677 * "ADS"."Feature_429" + 0.01259239518736908 * "ADS"."Feature_430" + -0.0010451657487022576 * "ADS"."Feature_431" + 0.007982325573847293 * "ADS"."Feature_432" + 0.006961489681163977 * "ADS"."Feature_433" + 0.018594467648745373 * "ADS"."Feature_434" + 0.009487403187487961 * "ADS"."Feature_435" + -0.002440613160165062 * "ADS"."Feature_436" + -0.008336843530635896 * "ADS"."Feature_437" + -0.017899302453537613 * "ADS"."Feature_438" + 0.0007888960454069394 * "ADS"."Feature_439" + 0.002502750613871767 * "ADS"."Feature_440" + -0.034342029327348554 * "ADS"."Feature_441" + 0.03517267137487352 * "ADS"."Feature_442" + -0.015764464223613738 * "ADS"."Feature_443" + 0.025253354507676306 * "ADS"."Feature_444" + -0.018001639166930615 * "ADS"."Feature_445" + -0.011726386674935977 * "ADS"."Feature_446" + -0.011843681881322649 * "ADS"."Feature_447" + -0.027472369524732376 * "ADS"."Feature_448" + 0.02926775129588703 * "ADS"."Feature_449" + -0.01718769868058168 * "ADS"."Feature_450" + 0.00107308108465934 * "ADS"."Feature_451" + 0.0012995824761407645 * "ADS"."Feature_452" + 0.013209040239167674 * "ADS"."Feature_453" + -0.03261063426030631 * "ADS"."Feature_454" + -0.010790840649011172 * "ADS"."Feature_455" + 0.04062754136769528 * "ADS"."Feature_456" + -0.005254950744926821 * "ADS"."Feature_457" + -0.005170638800505937 * "ADS"."Feature_458" + 0.0011185297305074562 * "ADS"."Feature_459" + -0.01686748628902223 * "ADS"."Feature_460" + 0.005814246906385419 * "ADS"."Feature_461" + 0.024323199221381004 * "ADS"."Feature_462" + -0.007751308736786077 * "ADS"."Feature_463" + 0.00040072027603960656 * "ADS"."Feature_464" + 0.0024061864206217287 * "ADS"."Feature_465" + -0.002409312017834144 * "ADS"."Feature_466" + -0.007375908899002681 * "ADS"."Feature_467" + 0.009190303615327853 * "ADS"."Feature_468" + -0.002946075024700084 * "ADS"."Feature_469" + 0.03334857887178472 * "ADS"."Feature_470" + -0.004560049780649529 * "ADS"."Feature_471" + -0.004043292550192038 * "ADS"."Feature_472" + 0.009296820416199048 * "ADS"."Feature_473" + -0.015168381436297097 * "ADS"."Feature_474" + -0.0038001578010644216 * "ADS"."Feature_475" + -0.008795094382313268 * "ADS"."Feature_476" + -0.019170399343108265 * "ADS"."Feature_477" + 0.004456678855587492 * "ADS"."Feature_478" + 0.018845389621576364 * "ADS"."Feature_479" + -0.004226398053700044 * "ADS"."Feature_480" + 0.02041126365489461 * "ADS"."Feature_481" + 0.003970788644628965 * "ADS"."Feature_482" + -0.014724843636981774 * "ADS"."Feature_483" + 0.0028174657991985675 * "ADS"."Feature_484" + -0.017127550702333107 * "ADS"."Feature_485" + -0.040842738655730654 * "ADS"."Feature_486" + -0.013866398913989803 * "ADS"."Feature_487" + 0.009675330084871923 * "ADS"."Feature_488" + -0.035925418681358456 * "ADS"."Feature_489" + -0.007769205040616258 * "ADS"."Feature_490" + -0.0020438706425553203 * "ADS"."Feature_491" + 0.0070303444880694625 * "ADS"."Feature_492" + -0.008231416755363492 * "ADS"."Feature_493" + 0.03074186183820258 * "ADS"."Feature_494" + 0.005415352406480877 * "ADS"."Feature_495" + -0.014777956993836414 * "ADS"."Feature_496" + -0.013220900753008772 * "ADS"."Feature_497" + 0.0002930607406587786 * "ADS"."Feature_498" + -0.011301825126921074 * "ADS"."Feature_499" + 0.09014404726242164 AS lincomb 
FROM "BinaryClass_500" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS DOUBLE PRECISION) AS "Proba_0", CAST(NULL AS DOUBLE PRECISION) AS "Proba_1", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_0", CAST(NULL AS DOUBLE PRECISION) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS DOUBLE PRECISION) AS "DecisionProba" 
FROM linear_model_cte