-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT `ADS`.`KEY` AS `KEY`, 0.3605820901622166 * `ADS`.`Feature_0` + -0.31610231479750495 * `ADS`.`Feature_1` + 2.1050019121092993 * `ADS`.`Feature_2` + -4.749388795710617 * `ADS`.`Feature_3` + 2.6837166788636546 * `ADS`.`Feature_4` + 7.312668456206983 * `ADS`.`Feature_5` + -2.753164813501755 * `ADS`.`Feature_6` + 0.3363503837379549 * `ADS`.`Feature_7` + 4.001909550747139 * `ADS`.`Feature_8` + 5.218740931797241 * `ADS`.`Feature_9` + 2.0887587644005814 * `ADS`.`Feature_10` + -1.6415580629129933 * `ADS`.`Feature_11` + -4.803560814185294 * `ADS`.`Feature_12` + -3.9158579197988215 * `ADS`.`Feature_13` + -0.1549444588314969 * `ADS`.`Feature_14` + 2.669092849141895 * `ADS`.`Feature_15` + 2.3652804614311793 * `ADS`.`Feature_16` + 6.508579900960467 * `ADS`.`Feature_17` + 0.5909713727605199 * `ADS`.`Feature_18` + -4.137000791924101 * `ADS`.`Feature_19` + -2.027955484049434 * `ADS`.`Feature_20` + -0.007759729633273181 * `ADS`.`Feature_21` + 0.48935528482208157 * `ADS`.`Feature_22` + 4.012798923435822 * `ADS`.`Feature_23` + 4.7467799947922344 * `ADS`.`Feature_24` + -0.32650423204225326 * `ADS`.`Feature_25` + -3.4453792425661414 * `ADS`.`Feature_26` + 2.780614666752894 * `ADS`.`Feature_27` + -1.5869393844541857 * `ADS`.`Feature_28` + 4.135654836098159 * `ADS`.`Feature_29` + -2.4904444366478957 * `ADS`.`Feature_30` + -5.612172605809378 * `ADS`.`Feature_31` + 6.180243764063752 * `ADS`.`Feature_32` + 2.545494411352037 * `ADS`.`Feature_33` + 1.1425620283410678 * `ADS`.`Feature_34` + -1.7743000826626139 * `ADS`.`Feature_35` + 7.159046059214098 * `ADS`.`Feature_36` + 2.245182125937691 * `ADS`.`Feature_37` + 1.5564124994657382 * `ADS`.`Feature_38` + -0.22954999357257838 * `ADS`.`Feature_39` + -7.377439706364885 * `ADS`.`Feature_40` + 7.100972443750089 * `ADS`.`Feature_41` + 2.0046954120562748 * `ADS`.`Feature_42` + 1.3416738347431176 * `ADS`.`Feature_43` + 2.1082257478086803 * `ADS`.`Feature_44` + 3.035887877894556 * `ADS`.`Feature_45` + -2.7366669608631673 * `ADS`.`Feature_46` + -3.6304595114523157 * `ADS`.`Feature_47` + -1.4312819069586802 * `ADS`.`Feature_48` + 1.7467965129504215 * `ADS`.`Feature_49` + -0.8933669254787433 * `ADS`.`Feature_50` + 5.227490059901352 * `ADS`.`Feature_51` + -2.189375776165287 * `ADS`.`Feature_52` + -1.4015289711327457 * `ADS`.`Feature_53` + -1.5939483124239024 * `ADS`.`Feature_54` + 0.9374097473709507 * `ADS`.`Feature_55` + 0.8458594088796437 * `ADS`.`Feature_56` + -3.0509988257675853 * `ADS`.`Feature_57` + 1.4211040104850676 * `ADS`.`Feature_58` + -2.493810699501014 * `ADS`.`Feature_59` + 3.493842430419502 * `ADS`.`Feature_60` + -1.6521809327697123 * `ADS`.`Feature_61` + 1.8240227865951928 * `ADS`.`Feature_62` + -1.2242228731407616 * `ADS`.`Feature_63` + 7.710318367164306 * `ADS`.`Feature_64` + -1.691395147169415 * `ADS`.`Feature_65` + 2.9516144277674097 * `ADS`.`Feature_66` + 1.693097173629047 * `ADS`.`Feature_67` + 9.042063352754704 * `ADS`.`Feature_68` + 3.082236359111996 * `ADS`.`Feature_69` + -4.6363467928144075 * `ADS`.`Feature_70` + -1.2898437075842268 * `ADS`.`Feature_71` + 2.833864778011741 * `ADS`.`Feature_72` + 4.4083743578640195 * `ADS`.`Feature_73` + 1.1784063665288358 * `ADS`.`Feature_74` + -2.0790030158882367 * `ADS`.`Feature_75` + -5.594899240759614 * `ADS`.`Feature_76` + 6.436964236684027 * `ADS`.`Feature_77` + 1.8393912432399113 * `ADS`.`Feature_78` + -0.7511136054348261 * `ADS`.`Feature_79` + -1.7496163923086723 * `ADS`.`Feature_80` + 4.77521444746376 * `ADS`.`Feature_81` + -4.224075645901047 * `ADS`.`Feature_82` + -1.8077514167605446 * `ADS`.`Feature_83` + -1.077466245744483 * `ADS`.`Feature_84` + 0.0295677152072404 * `ADS`.`Feature_85` + -4.522876545758923 * `ADS`.`Feature_86` + -0.37862726832283206 * `ADS`.`Feature_87` + 0.6959415639177168 * `ADS`.`Feature_88` + 0.8326586758276219 * `ADS`.`Feature_89` + -1.7526102156997878 * `ADS`.`Feature_90` + -0.1830776521978622 * `ADS`.`Feature_91` + -5.28938209822918 * `ADS`.`Feature_92` + -1.1134367759136692 * `ADS`.`Feature_93` + 5.074253591294801 * `ADS`.`Feature_94` + 1.5798916380790233 * `ADS`.`Feature_95` + -6.5931098767592 * `ADS`.`Feature_96` + -1.8621099236893914 * `ADS`.`Feature_97` + 3.4316391320435287 * `ADS`.`Feature_98` + -4.418305637391112 * `ADS`.`Feature_99` + -2.7482001821171123 * `ADS`.`Feature_100` + 6.615651286191293 * `ADS`.`Feature_101` + -0.24451353037724796 * `ADS`.`Feature_102` + -0.9756508574076217 * `ADS`.`Feature_103` + -5.556143595302542 * `ADS`.`Feature_104` + 4.448934640277923 * `ADS`.`Feature_105` + 0.7029830284321391 * `ADS`.`Feature_106` + 0.13707050026001774 * `ADS`.`Feature_107` + 1.0787739327514503 * `ADS`.`Feature_108` + 1.5473824798762554 * `ADS`.`Feature_109` + -0.33799049046656165 * `ADS`.`Feature_110` + -5.7333866190115526 * `ADS`.`Feature_111` + -3.867031885585295 * `ADS`.`Feature_112` + -1.9128568401330608 * `ADS`.`Feature_113` + -0.2819716602059153 * `ADS`.`Feature_114` + 3.769355962903393 * `ADS`.`Feature_115` + -6.108857945090946 * `ADS`.`Feature_116` + 3.4413406978944385 * `ADS`.`Feature_117` + -3.5322767069844265 * `ADS`.`Feature_118` + 3.688242801990271 * `ADS`.`Feature_119` + 1.375403842851629 * `ADS`.`Feature_120` + -4.1787524694468825 * `ADS`.`Feature_121` + 1.2042225136999798 * `ADS`.`Feature_122` + -0.22249060236552098 * `ADS`.`Feature_123` + 0.189929512423503 * `ADS`.`Feature_124` + -3.90693290348166 * `ADS`.`Feature_125` + 1.5905437304735595 * `ADS`.`Feature_126` + 5.967060422218003 * `ADS`.`Feature_127` + 2.1649143893579033 * `ADS`.`Feature_128` + -0.10570253214609036 * `ADS`.`Feature_129` + -0.6901168226881317 * `ADS`.`Feature_130` + -5.822869047699608 * `ADS`.`Feature_131` + 4.388944954616669 * `ADS`.`Feature_132` + 8.451297906073659 * `ADS`.`Feature_133` + 0.1798103312676876 * `ADS`.`Feature_134` + 0.19394937620823693 * `ADS`.`Feature_135` + 2.626119888506961 * `ADS`.`Feature_136` + -2.5147940930168127 * `ADS`.`Feature_137` + 0.8914868275108423 * `ADS`.`Feature_138` + -0.24638278573833888 * `ADS`.`Feature_139` + 1.3012616258128928 * `ADS`.`Feature_140` + -1.0042423766626998 * `ADS`.`Feature_141` + -0.2669743189520111 * `ADS`.`Feature_142` + -3.5083148722653763 * `ADS`.`Feature_143` + -9.618368122892566 * `ADS`.`Feature_144` + 0.83717949937934 * `ADS`.`Feature_145` + -0.19839086729189315 * `ADS`.`Feature_146` + 0.6623311868401797 * `ADS`.`Feature_147` + 2.0356356641292024 * `ADS`.`Feature_148` + 1.565362786762301 * `ADS`.`Feature_149` + -3.894371181851294 * `ADS`.`Feature_150` + 0.11305952522573562 * `ADS`.`Feature_151` + -4.362339278326055 * `ADS`.`Feature_152` + -1.7368159384238864 * `ADS`.`Feature_153` + 0.27722142214569073 * `ADS`.`Feature_154` + -0.9116699055470513 * `ADS`.`Feature_155` + -1.4070988850949937 * `ADS`.`Feature_156` + 1.5700741145579729 * `ADS`.`Feature_157` + 2.90072768433782 * `ADS`.`Feature_158` + 7.299937169005895 * `ADS`.`Feature_159` + -1.8205436672985282 * `ADS`.`Feature_160` + 1.9111527524609564 * `ADS`.`Feature_161` + 0.28752360495441776 * `ADS`.`Feature_162` + -3.09948251598426 * `ADS`.`Feature_163` + 1.0450760039190043 * `ADS`.`Feature_164` + 3.043213132686357 * `ADS`.`Feature_165` + 6.773353050694533 * `ADS`.`Feature_166` + 3.5048013290098914 * `ADS`.`Feature_167` + -2.3436904664416036 * `ADS`.`Feature_168` + 3.4785347175564043 * `ADS`.`Feature_169` + 9.000994312219671 * `ADS`.`Feature_170` + 2.8320100545027977 * `ADS`.`Feature_171` + 0.14748853586964408 * `ADS`.`Feature_172` + -3.584826928516099 * `ADS`.`Feature_173` + 6.391856089669329 * `ADS`.`Feature_174` + 2.397801813432668 * `ADS`.`Feature_175` + -2.5026813924012887 * `ADS`.`Feature_176` + -3.5072513641054477 * `ADS`.`Feature_177` + -1.4237274913001663 * `ADS`.`Feature_178` + 2.235493620029421 * `ADS`.`Feature_179` + -5.114585837050179 * `ADS`.`Feature_180` + 0.5693617304082212 * `ADS`.`Feature_181` + 2.1683171803113366 * `ADS`.`Feature_182` + 3.349608755152817 * `ADS`.`Feature_183` + -2.5406868636875894 * `ADS`.`Feature_184` + -3.784500948601113 * `ADS`.`Feature_185` + 1.1189562508439383 * `ADS`.`Feature_186` + -4.477168722639885 * `ADS`.`Feature_187` + 4.3799114303447455 * `ADS`.`Feature_188` + 4.6123182561661045 * `ADS`.`Feature_189` + 1.2998488917534174 * `ADS`.`Feature_190` + 0.3534758371292272 * `ADS`.`Feature_191` + -2.3639209288979064 * `ADS`.`Feature_192` + -0.7593822452778833 * `ADS`.`Feature_193` + -5.785981845777736 * `ADS`.`Feature_194` + -1.073988000866045 * `ADS`.`Feature_195` + -2.8475659389539905 * `ADS`.`Feature_196` + -7.144903965066224 * `ADS`.`Feature_197` + 2.569475426799641 * `ADS`.`Feature_198` + 5.329507238946699 * `ADS`.`Feature_199` + 3.709871794801503 * `ADS`.`Feature_200` + 2.666831267718739 * `ADS`.`Feature_201` + -3.35471568198613 * `ADS`.`Feature_202` + -0.3204017090845934 * `ADS`.`Feature_203` + -4.8583576475456915 * `ADS`.`Feature_204` + 5.793124348065328 * `ADS`.`Feature_205` + -0.9189563703681422 * `ADS`.`Feature_206` + 5.937100566509988 * `ADS`.`Feature_207` + -2.4929345945328922 * `ADS`.`Feature_208` + 0.7240082896106552 * `ADS`.`Feature_209` + -1.0210218944767866 * `ADS`.`Feature_210` + 2.954531273002086 * `ADS`.`Feature_211` + 2.394985935822524 * `ADS`.`Feature_212` + -2.633401141878309 * `ADS`.`Feature_213` + -2.4548128229202155 * `ADS`.`Feature_214` + 6.980243007059994 * `ADS`.`Feature_215` + 1.7540743526226172 * `ADS`.`Feature_216` + 1.3907079801216429 * `ADS`.`Feature_217` + 3.230141696620868 * `ADS`.`Feature_218` + 1.5019569306239446 * `ADS`.`Feature_219` + 1.8388693948031252 * `ADS`.`Feature_220` + 0.6712366636732253 * `ADS`.`Feature_221` + 2.0343613933189295 * `ADS`.`Feature_222` + -3.5151827896893235 * `ADS`.`Feature_223` + 1.59315243735705 * `ADS`.`Feature_224` + -3.662367663147986 * `ADS`.`Feature_225` + -5.067850974176538 * `ADS`.`Feature_226` + -1.1494906586279978 * `ADS`.`Feature_227` + 1.7252673822717695 * `ADS`.`Feature_228` + 1.3902160982483167 * `ADS`.`Feature_229` + 1.5219321233547687 * `ADS`.`Feature_230` + 4.19917305829485 * `ADS`.`Feature_231` + -4.54637622700931 * `ADS`.`Feature_232` + -1.8164547580865846 * `ADS`.`Feature_233` + 4.04205349083465 * `ADS`.`Feature_234` + 4.047932275952988 * `ADS`.`Feature_235` + -5.272232442196417 * `ADS`.`Feature_236` + -6.558314775259621 * `ADS`.`Feature_237` + -2.993282561650619 * `ADS`.`Feature_238` + 1.6247176094854983 * `ADS`.`Feature_239` + -2.0220896972319595 * `ADS`.`Feature_240` + 0.15846676038623203 * `ADS`.`Feature_241` + -2.266280614282455 * `ADS`.`Feature_242` + 5.4200333898223025 * `ADS`.`Feature_243` + -1.3440094186158975 * `ADS`.`Feature_244` + 0.023084259370889 * `ADS`.`Feature_245` + -0.43029178068471774 * `ADS`.`Feature_246` + 3.5966356182173986 * `ADS`.`Feature_247` + 0.6911261477346461 * `ADS`.`Feature_248` + 1.057369988172134 * `ADS`.`Feature_249` + -0.5481580503116216 * `ADS`.`Feature_250` + -0.027261163648720214 * `ADS`.`Feature_251` + 0.08348040511028593 * `ADS`.`Feature_252` + -7.400614155505013 * `ADS`.`Feature_253` + -2.4168430412021573 * `ADS`.`Feature_254` + 1.836839328401414 * `ADS`.`Feature_255` + -2.8666614685312757 * `ADS`.`Feature_256` + -2.2928658223855165 * `ADS`.`Feature_257` + -1.1162210823195007 * `ADS`.`Feature_258` + 6.934126218431175 * `ADS`.`Feature_259` + -2.8510369145255474 * `ADS`.`Feature_260` + 1.14670837278596 * `ADS`.`Feature_261` + -3.322066183988386 * `ADS`.`Feature_262` + 8.28697722583641 * `ADS`.`Feature_263` + 3.086468670147948 * `ADS`.`Feature_264` + -5.963169625229736 * `ADS`.`Feature_265` + -4.490373067146122 * `ADS`.`Feature_266` + -0.7588482628454235 * `ADS`.`Feature_267` + -0.6680054191175698 * `ADS`.`Feature_268` + -3.4532071827570103 * `ADS`.`Feature_269` + 0.44061818315175383 * `ADS`.`Feature_270` + -2.566468388338254 * `ADS`.`Feature_271` + -4.066829418911483 * `ADS`.`Feature_272` + 1.7295275583119682 * `ADS`.`Feature_273` + 1.2264027680076495 * `ADS`.`Feature_274` + -2.0905181232917576 * `ADS`.`Feature_275` + -0.7422591226846695 * `ADS`.`Feature_276` + 1.1035071271957135 * `ADS`.`Feature_277` + -1.340628049952727 * `ADS`.`Feature_278` + 0.2396539491341539 * `ADS`.`Feature_279` + 0.36132747197335546 * `ADS`.`Feature_280` + 0.07499800524212862 * `ADS`.`Feature_281` + 4.206654970326955 * `ADS`.`Feature_282` + 2.955606689659403 * `ADS`.`Feature_283` + 2.1938503238258193 * `ADS`.`Feature_284` + 0.8109982333272995 * `ADS`.`Feature_285` + 0.6696264987769978 * `ADS`.`Feature_286` + -2.73708155294891 * `ADS`.`Feature_287` + 0.70170507713854 * `ADS`.`Feature_288` + 6.485153375961869 * `ADS`.`Feature_289` + 0.7448218524781446 * `ADS`.`Feature_290` + 13.218199914293285 * `ADS`.`Feature_291` + 4.249279600014936 * `ADS`.`Feature_292` + -0.744304904406224 * `ADS`.`Feature_293` + 0.4174345298009663 * `ADS`.`Feature_294` + 0.21472689604270775 * `ADS`.`Feature_295` + 6.8675407744491 * `ADS`.`Feature_296` + -7.87373684947046 * `ADS`.`Feature_297` + 0.1443909258494294 * `ADS`.`Feature_298` + 1.1121062825704358 * `ADS`.`Feature_299` + 0.9156269252007974 * `ADS`.`Feature_300` + -0.4475436729992735 * `ADS`.`Feature_301` + -1.1965109369775175 * `ADS`.`Feature_302` + -6.4095719698984555 * `ADS`.`Feature_303` + -5.509874038777948 * `ADS`.`Feature_304` + 1.6253651649618692 * `ADS`.`Feature_305` + 1.3160097666306028 * `ADS`.`Feature_306` + -0.270016728001955 * `ADS`.`Feature_307` + 4.423103487084819 * `ADS`.`Feature_308` + -0.42808196834308204 * `ADS`.`Feature_309` + 2.9994660529665924 * `ADS`.`Feature_310` + -4.37723484413022 * `ADS`.`Feature_311` + -4.534632356865994 * `ADS`.`Feature_312` + 3.189903188948113 * `ADS`.`Feature_313` + 1.052110016338688 * `ADS`.`Feature_314` + -3.133675636422665 * `ADS`.`Feature_315` + 2.041025194040624 * `ADS`.`Feature_316` + -4.233222724077401 * `ADS`.`Feature_317` + 2.3634270485501676 * `ADS`.`Feature_318` + 8.796374181899314 * `ADS`.`Feature_319` + 2.3812790365608687 * `ADS`.`Feature_320` + 13.502465992553882 * `ADS`.`Feature_321` + 2.3714086306095243 * `ADS`.`Feature_322` + 0.6224674602975366 * `ADS`.`Feature_323` + 2.107071081859795 * `ADS`.`Feature_324` + 7.027779118111943 * `ADS`.`Feature_325` + -0.4427003728217864 * `ADS`.`Feature_326` + -0.4089461229433681 * `ADS`.`Feature_327` + 3.663312157648437 * `ADS`.`Feature_328` + -0.6247481944911529 * `ADS`.`Feature_329` + -1.5400161311302285 * `ADS`.`Feature_330` + 1.9117111881592521 * `ADS`.`Feature_331` + -1.3788901860738305 * `ADS`.`Feature_332` + -5.808202127572063 * `ADS`.`Feature_333` + -1.6226609204305085 * `ADS`.`Feature_334` + 0.4152627436764759 * `ADS`.`Feature_335` + -0.5340233837247018 * `ADS`.`Feature_336` + -4.056617103120613 * `ADS`.`Feature_337` + -3.0336063738649752 * `ADS`.`Feature_338` + -3.6429936724066776 * `ADS`.`Feature_339` + -0.8679316475168275 * `ADS`.`Feature_340` + -3.2156135457302857 * `ADS`.`Feature_341` + -0.29946449415277154 * `ADS`.`Feature_342` + 2.512550584111532 * `ADS`.`Feature_343` + 5.317149021276144 * `ADS`.`Feature_344` + 2.965445451976106 * `ADS`.`Feature_345` + 4.154517945303888 * `ADS`.`Feature_346` + -1.9520584606385196 * `ADS`.`Feature_347` + 0.46913914242180366 * `ADS`.`Feature_348` + 5.7683958624848 * `ADS`.`Feature_349` + -3.150222352715538 * `ADS`.`Feature_350` + 0.4691137201840451 * `ADS`.`Feature_351` + 5.52783923163132 * `ADS`.`Feature_352` + -0.7833717542454408 * `ADS`.`Feature_353` + 2.3609634670340345 * `ADS`.`Feature_354` + -2.959649504325127 * `ADS`.`Feature_355` + 0.17283104802375934 * `ADS`.`Feature_356` + 1.982594207113398 * `ADS`.`Feature_357` + -0.7178813564558331 * `ADS`.`Feature_358` + -0.907403551873785 * `ADS`.`Feature_359` + 0.9375361988576597 * `ADS`.`Feature_360` + -0.05522413317081442 * `ADS`.`Feature_361` + 3.7117070922145983 * `ADS`.`Feature_362` + -4.531663426699885 * `ADS`.`Feature_363` + 7.296948061705192 * `ADS`.`Feature_364` + -2.849597210223009 * `ADS`.`Feature_365` + 4.799874295489664 * `ADS`.`Feature_366` + -6.4018813981971805 * `ADS`.`Feature_367` + -0.003607680592954139 * `ADS`.`Feature_368` + 2.6206608922810357 * `ADS`.`Feature_369` + 0.9028619899971065 * `ADS`.`Feature_370` + -0.676875448101476 * `ADS`.`Feature_371` + 7.531617981563918 * `ADS`.`Feature_372` + 1.1182327378996602 * `ADS`.`Feature_373` + -6.0971132533148555 * `ADS`.`Feature_374` + -1.5998104658458925 * `ADS`.`Feature_375` + -0.9585423108558306 * `ADS`.`Feature_376` + -3.1006734984622595 * `ADS`.`Feature_377` + 1.6309979014010179 * `ADS`.`Feature_378` + 3.3860530999947946 * `ADS`.`Feature_379` + -0.42897000801596974 * `ADS`.`Feature_380` + 2.613625105442423 * `ADS`.`Feature_381` + 0.24308256300373055 * `ADS`.`Feature_382` + -0.0691065387763946 * `ADS`.`Feature_383` + 6.044069320175142 * `ADS`.`Feature_384` + 2.1015471318570786 * `ADS`.`Feature_385` + -2.2952854946491534 * `ADS`.`Feature_386` + 2.7709355940042566 * `ADS`.`Feature_387` + -0.052234948151835825 * `ADS`.`Feature_388` + 7.703699047381577 * `ADS`.`Feature_389` + -3.755615875766577 * `ADS`.`Feature_390` + 0.46655866157247944 * `ADS`.`Feature_391` + 1.9859571486126968 * `ADS`.`Feature_392` + -3.557418620221684 * `ADS`.`Feature_393` + -4.304531433844018 * `ADS`.`Feature_394` + 0.058127861895228325 * `ADS`.`Feature_395` + -0.387588977594384 * `ADS`.`Feature_396` + -2.4377319929032617 * `ADS`.`Feature_397` + 2.725647656742601 * `ADS`.`Feature_398` + -2.6912796717385623 * `ADS`.`Feature_399` + 0.25460197278069524 * `ADS`.`Feature_400` + -3.6599762704206453 * `ADS`.`Feature_401` + -5.329058857943182 * `ADS`.`Feature_402` + -6.545169602624078 * `ADS`.`Feature_403` + -3.4405702097852275 * `ADS`.`Feature_404` + -1.9178676762699296 * `ADS`.`Feature_405` + -3.4431361862966363 * `ADS`.`Feature_406` + 4.166221766071779 * `ADS`.`Feature_407` + 8.373011769599398 * `ADS`.`Feature_408` + 2.8817094876530356 * `ADS`.`Feature_409` + 1.52732498730799 * `ADS`.`Feature_410` + -1.289447586720602 * `ADS`.`Feature_411` + 0.24018525657558407 * `ADS`.`Feature_412` + 1.5154538051004705 * `ADS`.`Feature_413` + 3.629910901340047 * `ADS`.`Feature_414` + 3.4288416392942245 * `ADS`.`Feature_415` + 19.855543993209977 * `ADS`.`Feature_416` + 0.01195548087520649 * `ADS`.`Feature_417` + 0.8882797441141641 * `ADS`.`Feature_418` + -0.02263750059908139 * `ADS`.`Feature_419` + 1.7179457392578958 * `ADS`.`Feature_420` + -7.9657817622857925 * `ADS`.`Feature_421` + -0.7919082969964322 * `ADS`.`Feature_422` + -2.6245884149214813 * `ADS`.`Feature_423` + 0.771773508507084 * `ADS`.`Feature_424` + -3.370489064028632 * `ADS`.`Feature_425` + 0.1574770676775761 * `ADS`.`Feature_426` + 2.607519143761982 * `ADS`.`Feature_427` + -0.027384639643255305 * `ADS`.`Feature_428` + 3.8368232931652755 * `ADS`.`Feature_429` + -1.1600049637308751 * `ADS`.`Feature_430` + -4.390794794235748 * `ADS`.`Feature_431` + 3.0486617613393063 * `ADS`.`Feature_432` + -2.327185352142856 * `ADS`.`Feature_433` + -0.3268522264896976 * `ADS`.`Feature_434` + 5.732888050886527 * `ADS`.`Feature_435` + 5.536012403399887 * `ADS`.`Feature_436` + -2.3068102786039906 * `ADS`.`Feature_437` + 1.6071892607807468 * `ADS`.`Feature_438` + -0.4920628772169033 * `ADS`.`Feature_439` + -3.8315667933793587 * `ADS`.`Feature_440` + 1.2154966209666924 * `ADS`.`Feature_441` + 1.9634709946330546 * `ADS`.`Feature_442` + 1.5717716028723447 * `ADS`.`Feature_443` + -2.7681222763452813 * `ADS`.`Feature_444` + 0.46537164331675507 * `ADS`.`Feature_445` + -1.7889580916448147 * `ADS`.`Feature_446` + 5.709073906713888 * `ADS`.`Feature_447` + -5.819814259128799 * `ADS`.`Feature_448` + 2.1572158294105916 * `ADS`.`Feature_449` + 0.7133522237611198 * `ADS`.`Feature_450` + -4.129517330453583 * `ADS`.`Feature_451` + -0.3849854622946245 * `ADS`.`Feature_452` + -1.700508015577464 * `ADS`.`Feature_453` + 0.9549622197385187 * `ADS`.`Feature_454` + -4.861425599269902 * `ADS`.`Feature_455` + -4.456653521891968 * `ADS`.`Feature_456` + 1.6784465371750776 * `ADS`.`Feature_457` + -3.6466794876287105 * `ADS`.`Feature_458` + 0.8419688945096492 * `ADS`.`Feature_459` + 4.530046946798836 * `ADS`.`Feature_460` + 0.8274168687696826 * `ADS`.`Feature_461` + -4.677502353836646 * `ADS`.`Feature_462` + 2.5169991590579324 * `ADS`.`Feature_463` + -1.7929490710818274 * `ADS`.`Feature_464` + 3.4255989983414064 * `ADS`.`Feature_465` + 2.040756974904084 * `ADS`.`Feature_466` + -2.6685192703112257 * `ADS`.`Feature_467` + -1.9706196994167788 * `ADS`.`Feature_468` + -0.7228716209619567 * `ADS`.`Feature_469` + 2.1492069527206903 * `ADS`.`Feature_470` + 3.79986520233293 * `ADS`.`Feature_471` + -3.652487694130789 * `ADS`.`Feature_472` + 0.23869475633264622 * `ADS`.`Feature_473` + 0.41806612073911154 * `ADS`.`Feature_474` + -5.684962136129113 * `ADS`.`Feature_475` + -0.06489026478475483 * `ADS`.`Feature_476` + -3.382345568418725 * `ADS`.`Feature_477` + -0.836477222810521 * `ADS`.`Feature_478` + 5.869564999414894 * `ADS`.`Feature_479` + -1.0703342019471624 * `ADS`.`Feature_480` + 3.0065916878980716 * `ADS`.`Feature_481` + -1.8081297148844588 * `ADS`.`Feature_482` + -5.140463384340028 * `ADS`.`Feature_483` + -0.5790965963753272 * `ADS`.`Feature_484` + 8.452204691577137 * `ADS`.`Feature_485` + 0.40930847024244493 * `ADS`.`Feature_486` + -0.9749946566072891 * `ADS`.`Feature_487` + 6.132070335827448 * `ADS`.`Feature_488` + -6.611130633101097 * `ADS`.`Feature_489` + 10.028469607065167 * `ADS`.`Feature_490` + -3.688619183253982 * `ADS`.`Feature_491` + 2.0920182048174203 * `ADS`.`Feature_492` + 1.0512078074878668 * `ADS`.`Feature_493` + -2.380440977710687 * `ADS`.`Feature_494` + -4.889393289614638 * `ADS`.`Feature_495` + 2.1860266616502777 * `ADS`.`Feature_496` + 2.447525172804231 * `ADS`.`Feature_497` + -4.266970335133361 * `ADS`.`Feature_498` + -3.6323988066628847 * `ADS`.`Feature_499` + -2.32516095843 AS `Estimator` 
FROM `RandomReg_500` AS `ADS`)
 SELECT linear_model_cte.`KEY` AS `KEY`, linear_model_cte.`Estimator` AS `Estimator` 
FROM linear_model_cte