-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 8.604196099251359 * "ADS"."Feature_0" + -52.755254214857125 * "ADS"."Feature_1" + -26.40529673049465 * "ADS"."Feature_2" + -56.869289287667726 * "ADS"."Feature_3" + -12.4502760564284 * "ADS"."Feature_4" + 28.300796109191324 * "ADS"."Feature_5" + 14.776845226602735 * "ADS"."Feature_6" + 33.454923061800436 * "ADS"."Feature_7" + -0.8476066848120615 * "ADS"."Feature_8" + 47.20645233281087 * "ADS"."Feature_9" + 23.11628594938091 * "ADS"."Feature_10" + -30.629157636199608 * "ADS"."Feature_11" + -29.859816325143797 * "ADS"."Feature_12" + -26.534816356248005 * "ADS"."Feature_13" + 3.081418807923481 * "ADS"."Feature_14" + 17.31924778053521 * "ADS"."Feature_15" + 50.56346844870856 * "ADS"."Feature_16" + -44.305107428545185 * "ADS"."Feature_17" + 33.45323980998782 * "ADS"."Feature_18" + 43.06342512997517 * "ADS"."Feature_19" + -12.607158192770223 * "ADS"."Feature_20" + 33.658037144508526 * "ADS"."Feature_21" + -12.033561261507366 * "ADS"."Feature_22" + -8.856445477881417 * "ADS"."Feature_23" + -9.893055386815314 * "ADS"."Feature_24" + -18.627639702783366 * "ADS"."Feature_25" + -54.3454747924419 * "ADS"."Feature_26" + -25.232941726152372 * "ADS"."Feature_27" + -12.406462090511797 * "ADS"."Feature_28" + 9.475624741304603 * "ADS"."Feature_29" + 42.29761397373407 * "ADS"."Feature_30" + 30.952424947124094 * "ADS"."Feature_31" + 18.285837870167846 * "ADS"."Feature_32" + -5.46440574598012 * "ADS"."Feature_33" + 57.10266957363151 * "ADS"."Feature_34" + -15.323563589589478 * "ADS"."Feature_35" + 35.20597240407562 * "ADS"."Feature_36" + -35.16270435636998 * "ADS"."Feature_37" + 26.733743611829798 * "ADS"."Feature_38" + 94.5864708995103 * "ADS"."Feature_39" + 38.32916930979745 * "ADS"."Feature_40" + 10.125673964355626 * "ADS"."Feature_41" + -10.12308774477054 * "ADS"."Feature_42" + 19.60792233927756 * "ADS"."Feature_43" + 27.691288574156417 * "ADS"."Feature_44" + -9.49590813675539 * "ADS"."Feature_45" + -32.139032282275586 * "ADS"."Feature_46" + 0.9238264657560193 * "ADS"."Feature_47" + -69.98882874127496 * "ADS"."Feature_48" + 26.061636405471592 * "ADS"."Feature_49" + 40.30951458087486 * "ADS"."Feature_50" + -51.64292116925783 * "ADS"."Feature_51" + 1.7310746015172902 * "ADS"."Feature_52" + 4.069801046226361 * "ADS"."Feature_53" + -3.113610270633384 * "ADS"."Feature_54" + -71.9750115221057 * "ADS"."Feature_55" + 8.794895904650394 * "ADS"."Feature_56" + 37.69312646931476 * "ADS"."Feature_57" + 28.966775291994868 * "ADS"."Feature_58" + 15.568458811960763 * "ADS"."Feature_59" + 3.2920976761463137 * "ADS"."Feature_60" + 31.64092842555778 * "ADS"."Feature_61" + 34.00930782867246 * "ADS"."Feature_62" + 29.895385167443 * "ADS"."Feature_63" + 1.461720262654147 * "ADS"."Feature_64" + 14.759787987329345 * "ADS"."Feature_65" + 33.24595083830855 * "ADS"."Feature_66" + 28.334244367125823 * "ADS"."Feature_67" + -72.72263310405489 * "ADS"."Feature_68" + 56.41248495269111 * "ADS"."Feature_69" + 25.654042344326655 * "ADS"."Feature_70" + -10.029921267162312 * "ADS"."Feature_71" + 34.359046814650384 * "ADS"."Feature_72" + 3.0004803725387905 * "ADS"."Feature_73" + -56.34787598808203 * "ADS"."Feature_74" + -25.95916847458133 * "ADS"."Feature_75" + -46.56761955880736 * "ADS"."Feature_76" + 38.50857122666996 * "ADS"."Feature_77" + -59.15704001787786 * "ADS"."Feature_78" + -14.52244821846984 * "ADS"."Feature_79" + 35.670281193755194 * "ADS"."Feature_80" + 33.29638140235506 * "ADS"."Feature_81" + -47.05581704614498 * "ADS"."Feature_82" + 8.765861932112568 * "ADS"."Feature_83" + -47.89458039316266 * "ADS"."Feature_84" + 24.82304432509337 * "ADS"."Feature_85" + 56.295982614670926 * "ADS"."Feature_86" + 12.251185030366871 * "ADS"."Feature_87" + 20.991217041008646 * "ADS"."Feature_88" + -43.945416306875785 * "ADS"."Feature_89" + 57.2825875262122 * "ADS"."Feature_90" + 34.990796925597984 * "ADS"."Feature_91" + 16.852595732905936 * "ADS"."Feature_92" + 25.294329411476298 * "ADS"."Feature_93" + 32.34578483331345 * "ADS"."Feature_94" + -10.719161604893946 * "ADS"."Feature_95" + 64.00539134481585 * "ADS"."Feature_96" + -29.641719900639366 * "ADS"."Feature_97" + -35.11330101403917 * "ADS"."Feature_98" + -76.10638452622437 * "ADS"."Feature_99" + 33.39512624961528 * "ADS"."Feature_100" + 3.777127270132566 * "ADS"."Feature_101" + -29.19581451661938 * "ADS"."Feature_102" + 18.559261402971657 * "ADS"."Feature_103" + -21.779013637241054 * "ADS"."Feature_104" + 25.156637372826076 * "ADS"."Feature_105" + 16.816992097085592 * "ADS"."Feature_106" + -4.720140295154308 * "ADS"."Feature_107" + -83.13824545301385 * "ADS"."Feature_108" + 31.7998137258405 * "ADS"."Feature_109" + 2.316753031152821 * "ADS"."Feature_110" + 35.36456262567869 * "ADS"."Feature_111" + -36.1030421685298 * "ADS"."Feature_112" + 31.145351313780182 * "ADS"."Feature_113" + 74.68470162525348 * "ADS"."Feature_114" + 72.00021144654926 * "ADS"."Feature_115" + -11.321369303014366 * "ADS"."Feature_116" + -38.08443752959221 * "ADS"."Feature_117" + -25.94972173991046 * "ADS"."Feature_118" + -44.85063954874766 * "ADS"."Feature_119" + 14.290750923559509 * "ADS"."Feature_120" + 23.400146254077463 * "ADS"."Feature_121" + 46.161699908383206 * "ADS"."Feature_122" + 8.585430356304713 * "ADS"."Feature_123" + 18.795464626406478 * "ADS"."Feature_124" + 15.751057368807649 * "ADS"."Feature_125" + 17.814257205944944 * "ADS"."Feature_126" + -46.88191766884239 * "ADS"."Feature_127" + 22.266898220457605 * "ADS"."Feature_128" + -72.77486147311798 * "ADS"."Feature_129" + 36.91405578231211 * "ADS"."Feature_130" + 1.4120706990283691 * "ADS"."Feature_131" + 35.20241681145213 * "ADS"."Feature_132" + 23.80294062183617 * "ADS"."Feature_133" + -0.2998308128681665 * "ADS"."Feature_134" + -32.21868184550538 * "ADS"."Feature_135" + -14.05846687825303 * "ADS"."Feature_136" + -45.75977180607584 * "ADS"."Feature_137" + 57.37984689049948 * "ADS"."Feature_138" + -13.100107879020053 * "ADS"."Feature_139" + 12.316793346407382 * "ADS"."Feature_140" + 2.7683712558089746 * "ADS"."Feature_141" + -34.10013095916496 * "ADS"."Feature_142" + 20.981476405961924 * "ADS"."Feature_143" + -72.42671773326741 * "ADS"."Feature_144" + -38.89314351098131 * "ADS"."Feature_145" + -5.348064168627947 * "ADS"."Feature_146" + -69.68391866774304 * "ADS"."Feature_147" + 8.662227917234148 * "ADS"."Feature_148" + -2.741347760815631 * "ADS"."Feature_149" + 4.555480448520701 * "ADS"."Feature_150" + 16.309523444590635 * "ADS"."Feature_151" + 6.025442304374621 * "ADS"."Feature_152" + -64.1269221112996 * "ADS"."Feature_153" + -26.93541824013468 * "ADS"."Feature_154" + -9.22211761613909 * "ADS"."Feature_155" + -23.810639680157603 * "ADS"."Feature_156" + 53.90657060361036 * "ADS"."Feature_157" + 5.047839505058021 * "ADS"."Feature_158" + -32.225184800476626 * "ADS"."Feature_159" + 1.600462713890122 * "ADS"."Feature_160" + 15.228242942446899 * "ADS"."Feature_161" + -3.7287902954688885 * "ADS"."Feature_162" + 39.84792495830786 * "ADS"."Feature_163" + -12.667984941733433 * "ADS"."Feature_164" + -10.783034907181236 * "ADS"."Feature_165" + -40.420130425879556 * "ADS"."Feature_166" + -22.436803282200927 * "ADS"."Feature_167" + -2.049136311045881 * "ADS"."Feature_168" + 30.52877830134438 * "ADS"."Feature_169" + 5.054090844278369 * "ADS"."Feature_170" + 7.923462067403198 * "ADS"."Feature_171" + -45.006838065679055 * "ADS"."Feature_172" + -63.92668963399661 * "ADS"."Feature_173" + 4.710118277190176 * "ADS"."Feature_174" + -36.913066775713226 * "ADS"."Feature_175" + 4.702585791908767 * "ADS"."Feature_176" + -0.1715550085126543 * "ADS"."Feature_177" + 14.999985056889301 * "ADS"."Feature_178" + 60.49173678945068 * "ADS"."Feature_179" + 15.313945991099619 * "ADS"."Feature_180" + -73.56234651659133 * "ADS"."Feature_181" + 0.46169203680849125 * "ADS"."Feature_182" + 7.646628538817167 * "ADS"."Feature_183" + -8.929356709552527 * "ADS"."Feature_184" + 18.03025143040714 * "ADS"."Feature_185" + -27.20571802565892 * "ADS"."Feature_186" + -47.02514792803843 * "ADS"."Feature_187" + -10.763105213552222 * "ADS"."Feature_188" + 17.40901622452868 * "ADS"."Feature_189" + 64.17896670457333 * "ADS"."Feature_190" + -30.802932807899467 * "ADS"."Feature_191" + 38.091697847686184 * "ADS"."Feature_192" + -16.190107688139413 * "ADS"."Feature_193" + -5.789641585489176 * "ADS"."Feature_194" + 58.12664764714587 * "ADS"."Feature_195" + 17.86033276745216 * "ADS"."Feature_196" + 12.343586097502072 * "ADS"."Feature_197" + 19.533113520962072 * "ADS"."Feature_198" + 50.80937413036887 * "ADS"."Feature_199" + 29.823571365025174 * "ADS"."Feature_200" + -16.22033616815649 * "ADS"."Feature_201" + -21.016885698501326 * "ADS"."Feature_202" + 25.15398353750455 * "ADS"."Feature_203" + 66.87164188051614 * "ADS"."Feature_204" + 17.547453102662534 * "ADS"."Feature_205" + -65.41299240377728 * "ADS"."Feature_206" + -32.500010903838884 * "ADS"."Feature_207" + 14.009355531141573 * "ADS"."Feature_208" + -26.626456029879773 * "ADS"."Feature_209" + -2.7209555506807024 * "ADS"."Feature_210" + -16.028593595133113 * "ADS"."Feature_211" + 11.179781165224274 * "ADS"."Feature_212" + -35.79983366399246 * "ADS"."Feature_213" + -30.113197138710543 * "ADS"."Feature_214" + 28.41567307888123 * "ADS"."Feature_215" + 22.06700631432455 * "ADS"."Feature_216" + -9.703315760347405 * "ADS"."Feature_217" + 50.63573065086434 * "ADS"."Feature_218" + -47.18568282324594 * "ADS"."Feature_219" + -30.790173634923704 * "ADS"."Feature_220" + -26.834732026128115 * "ADS"."Feature_221" + -57.16715294882379 * "ADS"."Feature_222" + 35.97842106968231 * "ADS"."Feature_223" + 2.5242985485489564 * "ADS"."Feature_224" + 5.6719247933325585 * "ADS"."Feature_225" + 21.84146612451711 * "ADS"."Feature_226" + 41.36866725452651 * "ADS"."Feature_227" + -34.93496677642174 * "ADS"."Feature_228" + 8.093812193808715 * "ADS"."Feature_229" + -32.91323602284176 * "ADS"."Feature_230" + 28.609920153669197 * "ADS"."Feature_231" + 68.8020828363225 * "ADS"."Feature_232" + 20.588935574227662 * "ADS"."Feature_233" + -57.42713777735797 * "ADS"."Feature_234" + -23.880229645814048 * "ADS"."Feature_235" + -77.93636921777377 * "ADS"."Feature_236" + -91.09466411855949 * "ADS"."Feature_237" + -27.099474057338355 * "ADS"."Feature_238" + 23.436410894873436 * "ADS"."Feature_239" + 1.8422887113918913 * "ADS"."Feature_240" + -7.436609631339611 * "ADS"."Feature_241" + -34.89467878842967 * "ADS"."Feature_242" + 10.125104335161586 * "ADS"."Feature_243" + 157.57027945466697 * "ADS"."Feature_244" + -37.30067356037803 * "ADS"."Feature_245" + 2.418796216024738 * "ADS"."Feature_246" + -16.60443368907814 * "ADS"."Feature_247" + 56.532170553174986 * "ADS"."Feature_248" + 5.018717864099215 * "ADS"."Feature_249" + 32.50378816555413 * "ADS"."Feature_250" + 7.148775591266612 * "ADS"."Feature_251" + -53.959208066941514 * "ADS"."Feature_252" + 65.99118774793365 * "ADS"."Feature_253" + 25.239341041771368 * "ADS"."Feature_254" + -34.55557103453412 * "ADS"."Feature_255" + 36.69269985851087 * "ADS"."Feature_256" + 1.7097743912029486 * "ADS"."Feature_257" + -55.46496007055018 * "ADS"."Feature_258" + 5.759668329538313 * "ADS"."Feature_259" + 9.114119247288405 * "ADS"."Feature_260" + -50.995648265590944 * "ADS"."Feature_261" + -73.08641560373253 * "ADS"."Feature_262" + 4.259212407982286 * "ADS"."Feature_263" + -62.90712874890429 * "ADS"."Feature_264" + 33.49667729590077 * "ADS"."Feature_265" + 1.4767525485580388 * "ADS"."Feature_266" + -17.88202812368455 * "ADS"."Feature_267" + -7.340601674696225 * "ADS"."Feature_268" + -55.7429883504796 * "ADS"."Feature_269" + -43.49031257396617 * "ADS"."Feature_270" + -10.402065291096362 * "ADS"."Feature_271" + -46.50924763268656 * "ADS"."Feature_272" + -21.78614142498334 * "ADS"."Feature_273" + -7.253309558602287 * "ADS"."Feature_274" + 46.561873671970396 * "ADS"."Feature_275" + -9.57576363724671 * "ADS"."Feature_276" + 16.24946352928483 * "ADS"."Feature_277" + -71.64344661599971 * "ADS"."Feature_278" + 41.66110967650107 * "ADS"."Feature_279" + -16.609880153491968 * "ADS"."Feature_280" + 0.3548458079104474 * "ADS"."Feature_281" + 22.61361581253762 * "ADS"."Feature_282" + -6.718812823630384 * "ADS"."Feature_283" + 50.836110032022326 * "ADS"."Feature_284" + -63.31513348681048 * "ADS"."Feature_285" + -31.963124163719954 * "ADS"."Feature_286" + -11.29287070337166 * "ADS"."Feature_287" + 48.99884023226959 * "ADS"."Feature_288" + 0.40603836841325025 * "ADS"."Feature_289" + -24.246448974409073 * "ADS"."Feature_290" + -19.04925276489623 * "ADS"."Feature_291" + 89.17983580016805 * "ADS"."Feature_292" + -15.582144629398062 * "ADS"."Feature_293" + -2.804431140471671 * "ADS"."Feature_294" + 0.2862290350665307 * "ADS"."Feature_295" + -80.3099603678957 * "ADS"."Feature_296" + 38.97953492994155 * "ADS"."Feature_297" + -4.537351953579455 * "ADS"."Feature_298" + -62.824458694903996 * "ADS"."Feature_299" + -18.004919332057007 * "ADS"."Feature_300" + 10.878217536102435 * "ADS"."Feature_301" + 39.102992146330635 * "ADS"."Feature_302" + -13.17080557968129 * "ADS"."Feature_303" + -1.1410916925860772 * "ADS"."Feature_304" + 3.065670762095504 * "ADS"."Feature_305" + -25.50004315177193 * "ADS"."Feature_306" + 4.224374297487905 * "ADS"."Feature_307" + 0.42476836203888807 * "ADS"."Feature_308" + -5.497276074909843 * "ADS"."Feature_309" + 44.409949829090884 * "ADS"."Feature_310" + -17.28565117268974 * "ADS"."Feature_311" + -43.40569683433367 * "ADS"."Feature_312" + 16.617120398082132 * "ADS"."Feature_313" + -44.49911443490855 * "ADS"."Feature_314" + -48.946121400364646 * "ADS"."Feature_315" + -140.05464592148442 * "ADS"."Feature_316" + -12.594292946930503 * "ADS"."Feature_317" + 9.727747179482657 * "ADS"."Feature_318" + 9.452735755763095 * "ADS"."Feature_319" + 27.575284457371907 * "ADS"."Feature_320" + 15.193352867631372 * "ADS"."Feature_321" + -79.67160901176196 * "ADS"."Feature_322" + 42.49916758163291 * "ADS"."Feature_323" + 19.11541652405204 * "ADS"."Feature_324" + 7.9093520545645815 * "ADS"."Feature_325" + 23.99848265364419 * "ADS"."Feature_326" + 62.17477274880058 * "ADS"."Feature_327" + -39.45125249378666 * "ADS"."Feature_328" + -53.46561725191969 * "ADS"."Feature_329" + -14.597912636987408 * "ADS"."Feature_330" + -2.5872328894278036 * "ADS"."Feature_331" + -2.8987876034925626 * "ADS"."Feature_332" + 61.30564702928802 * "ADS"."Feature_333" + -2.950160575428905 * "ADS"."Feature_334" + -24.718614044382086 * "ADS"."Feature_335" + 23.953942143620115 * "ADS"."Feature_336" + -50.07120978034094 * "ADS"."Feature_337" + -48.95549718280971 * "ADS"."Feature_338" + 2.3851731994335568 * "ADS"."Feature_339" + -30.592733506428406 * "ADS"."Feature_340" + 3.8436629704773804 * "ADS"."Feature_341" + 0.43343728884732285 * "ADS"."Feature_342" + -42.687088073173776 * "ADS"."Feature_343" + -17.519892664674597 * "ADS"."Feature_344" + -58.28919758725662 * "ADS"."Feature_345" + 6.2367876116854655 * "ADS"."Feature_346" + 1.3718190049912242 * "ADS"."Feature_347" + 39.90556037290606 * "ADS"."Feature_348" + -5.049265890280554 * "ADS"."Feature_349" + 2.219784574658715 * "ADS"."Feature_350" + -21.391416345684068 * "ADS"."Feature_351" + 2.2091889289051676 * "ADS"."Feature_352" + -65.814040138496 * "ADS"."Feature_353" + -11.252197132310288 * "ADS"."Feature_354" + -21.73300104823766 * "ADS"."Feature_355" + -29.663375290512814 * "ADS"."Feature_356" + -13.966378861722138 * "ADS"."Feature_357" + -9.460165728025677 * "ADS"."Feature_358" + 6.338997098636476 * "ADS"."Feature_359" + -63.80378695053664 * "ADS"."Feature_360" + 44.28647836397863 * "ADS"."Feature_361" + 6.250047946073916 * "ADS"."Feature_362" + -17.60069282901676 * "ADS"."Feature_363" + 19.479994316277125 * "ADS"."Feature_364" + -21.902845493415786 * "ADS"."Feature_365" + -42.03772526128276 * "ADS"."Feature_366" + -13.018248595821833 * "ADS"."Feature_367" + 23.38260997251656 * "ADS"."Feature_368" + 26.617017488328663 * "ADS"."Feature_369" + -19.07210224901958 * "ADS"."Feature_370" + -29.67681877725615 * "ADS"."Feature_371" + 5.980243048090939 * "ADS"."Feature_372" + -3.4585466144257224 * "ADS"."Feature_373" + -68.17816130554473 * "ADS"."Feature_374" + -17.446273308478208 * "ADS"."Feature_375" + -41.18589848239149 * "ADS"."Feature_376" + -66.57227516646054 * "ADS"."Feature_377" + -50.93805059133554 * "ADS"."Feature_378" + -28.391324381552483 * "ADS"."Feature_379" + -62.571971343609654 * "ADS"."Feature_380" + 33.366409968752876 * "ADS"."Feature_381" + 16.922320839460443 * "ADS"."Feature_382" + 23.969458677170657 * "ADS"."Feature_383" + 40.527242370258676 * "ADS"."Feature_384" + 13.56569274004651 * "ADS"."Feature_385" + 63.117778110078156 * "ADS"."Feature_386" + -29.434596301163598 * "ADS"."Feature_387" + -30.32285512009 * "ADS"."Feature_388" + 14.445267806930243 * "ADS"."Feature_389" + -34.262316429264 * "ADS"."Feature_390" + -39.84562832843713 * "ADS"."Feature_391" + 3.9578249157584824 * "ADS"."Feature_392" + -13.668914669826718 * "ADS"."Feature_393" + -5.131290398650706 * "ADS"."Feature_394" + -40.34129947063879 * "ADS"."Feature_395" + -4.08034428288703 * "ADS"."Feature_396" + -28.033513120114602 * "ADS"."Feature_397" + -16.93855191984497 * "ADS"."Feature_398" + 49.306935003567766 * "ADS"."Feature_399" + 1.549106600640097 * "ADS"."Feature_400" + -29.622068546582206 * "ADS"."Feature_401" + -53.44426620253843 * "ADS"."Feature_402" + 54.154003291716414 * "ADS"."Feature_403" + 56.46678816952745 * "ADS"."Feature_404" + 3.198500107275659 * "ADS"."Feature_405" + 39.17965287667084 * "ADS"."Feature_406" + 43.262669809229 * "ADS"."Feature_407" + 13.67756634284637 * "ADS"."Feature_408" + -10.024576518136252 * "ADS"."Feature_409" + -46.14619107935616 * "ADS"."Feature_410" + 5.098029263961959 * "ADS"."Feature_411" + -33.61385034172621 * "ADS"."Feature_412" + 112.85755130829301 * "ADS"."Feature_413" + -79.24105196298312 * "ADS"."Feature_414" + -36.33782229518706 * "ADS"."Feature_415" + 34.21382803362997 * "ADS"."Feature_416" + -52.96855438066691 * "ADS"."Feature_417" + 32.243065834469675 * "ADS"."Feature_418" + 3.8558967616037467 * "ADS"."Feature_419" + -42.71391301073962 * "ADS"."Feature_420" + -33.499349543782266 * "ADS"."Feature_421" + -0.7757939477855912 * "ADS"."Feature_422" + 42.064770111623744 * "ADS"."Feature_423" + 10.578544838341285 * "ADS"."Feature_424" + -3.8557510092030123 * "ADS"."Feature_425" + 0.5295978915295333 * "ADS"."Feature_426" + 5.624534503805589 * "ADS"."Feature_427" + 13.660224026513177 * "ADS"."Feature_428" + -12.712205912053639 * "ADS"."Feature_429" + 54.15370249187636 * "ADS"."Feature_430" + -48.400706702522 * "ADS"."Feature_431" + 29.740052177441363 * "ADS"."Feature_432" + -12.942751516540602 * "ADS"."Feature_433" + 49.58932766288589 * "ADS"."Feature_434" + 11.63223788395232 * "ADS"."Feature_435" + -41.76299177385159 * "ADS"."Feature_436" + -25.992183179162595 * "ADS"."Feature_437" + -24.186367953589215 * "ADS"."Feature_438" + 23.857950033102256 * "ADS"."Feature_439" + 21.973667210816693 * "ADS"."Feature_440" + -18.45650509140137 * "ADS"."Feature_441" + -7.349182698835945 * "ADS"."Feature_442" + -57.665628672615 * "ADS"."Feature_443" + 12.185463103335934 * "ADS"."Feature_444" + -24.467291449222937 * "ADS"."Feature_445" + -33.78707402776188 * "ADS"."Feature_446" + -27.434564913834514 * "ADS"."Feature_447" + -37.86153022340779 * "ADS"."Feature_448" + 28.75199642887565 * "ADS"."Feature_449" + -53.08306457709246 * "ADS"."Feature_450" + -24.800706503415775 * "ADS"."Feature_451" + -15.041110609291412 * "ADS"."Feature_452" + -31.32373953255893 * "ADS"."Feature_453" + -58.53825563622045 * "ADS"."Feature_454" + 32.738238462212 * "ADS"."Feature_455" + 97.63110378750285 * "ADS"."Feature_456" + -0.7385475234940743 * "ADS"."Feature_457" + -3.7931347661364585 * "ADS"."Feature_458" + 32.8106444578814 * "ADS"."Feature_459" + -8.691067974818186 * "ADS"."Feature_460" + -7.8213931443995435 * "ADS"."Feature_461" + 68.28045776329851 * "ADS"."Feature_462" + -21.60768268459618 * "ADS"."Feature_463" + -6.005410733392736 * "ADS"."Feature_464" + -2.4671402649022554 * "ADS"."Feature_465" + -28.629986433860847 * "ADS"."Feature_466" + -3.3987149916286383 * "ADS"."Feature_467" + 17.278941099409664 * "ADS"."Feature_468" + -56.42415465763543 * "ADS"."Feature_469" + 37.944666869740935 * "ADS"."Feature_470" + -16.216352068069785 * "ADS"."Feature_471" + -40.83182546249439 * "ADS"."Feature_472" + 12.240644966904352 * "ADS"."Feature_473" + -18.390313435041037 * "ADS"."Feature_474" + 4.215354215139132 * "ADS"."Feature_475" + -31.99375701224425 * "ADS"."Feature_476" + -33.087173245212554 * "ADS"."Feature_477" + 16.090867777067277 * "ADS"."Feature_478" + 45.32851627179253 * "ADS"."Feature_479" + 6.169199831546353 * "ADS"."Feature_480" + 44.25079661746894 * "ADS"."Feature_481" + -6.560396816157974 * "ADS"."Feature_482" + -35.20188776162739 * "ADS"."Feature_483" + 15.8767110967689 * "ADS"."Feature_484" + -53.68044410935417 * "ADS"."Feature_485" + -100.90985160966382 * "ADS"."Feature_486" + -30.111234278388814 * "ADS"."Feature_487" + 29.922944369580414 * "ADS"."Feature_488" + -40.564438741023956 * "ADS"."Feature_489" + -35.806332575136295 * "ADS"."Feature_490" + 5.924222212769547 * "ADS"."Feature_491" + 42.71846401035875 * "ADS"."Feature_492" + -9.99977372504972 * "ADS"."Feature_493" + 42.12802827692264 * "ADS"."Feature_494" + -7.519052749900213 * "ADS"."Feature_495" + -53.91994097972452 * "ADS"."Feature_496" + -47.39138978887557 * "ADS"."Feature_497" + -24.55992277058266 * "ADS"."Feature_498" + -39.24240530449116 * "ADS"."Feature_499" + 34.78854666748012 AS lincomb 
FROM "BinaryClass_500" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", CAST(NULL AS FLOAT) AS "DecisionProba" 
FROM linear_model_cte