-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.033608576593268026 * "ADS"."Feature_0" + -0.10174320337513074 * "ADS"."Feature_1" + -0.08350540100183095 * "ADS"."Feature_2" + -0.1441586766588026 * "ADS"."Feature_3" + 0.013906138033684427 * "ADS"."Feature_4" + 0.044233101677384555 * "ADS"."Feature_5" + 0.07774172257390857 * "ADS"."Feature_6" + 0.08878043680790197 * "ADS"."Feature_7" + 0.015465306323321703 * "ADS"."Feature_8" + 0.05613284904304696 * "ADS"."Feature_9" + 0.06051023607002397 * "ADS"."Feature_10" + -0.08743649854177589 * "ADS"."Feature_11" + -0.012174082015444362 * "ADS"."Feature_12" + -0.008804443284398096 * "ADS"."Feature_13" + -0.033821530254242685 * "ADS"."Feature_14" + -0.06496458752266891 * "ADS"."Feature_15" + 0.13678125379497377 * "ADS"."Feature_16" + -0.09219381639418626 * "ADS"."Feature_17" + 0.08641610184256997 * "ADS"."Feature_18" + 0.019981335487657976 * "ADS"."Feature_19" + 0.01672343800118131 * "ADS"."Feature_20" + 0.009923507118985443 * "ADS"."Feature_21" + -0.030974036013361197 * "ADS"."Feature_22" + -0.05911575827471492 * "ADS"."Feature_23" + 0.007605916717687056 * "ADS"."Feature_24" + 0.01826518546870426 * "ADS"."Feature_25" + -0.04332422699600276 * "ADS"."Feature_26" + -0.13855539627955227 * "ADS"."Feature_27" + -0.03525254552714036 * "ADS"."Feature_28" + 0.0374819693240141 * "ADS"."Feature_29" + 0.04128122355258016 * "ADS"."Feature_30" + -0.0037113330623394854 * "ADS"."Feature_31" + 0.06977265345539518 * "ADS"."Feature_32" + 0.07140672595104536 * "ADS"."Feature_33" + 0.10414025309048375 * "ADS"."Feature_34" + -0.022934600571865256 * "ADS"."Feature_35" + 0.0017374351575704754 * "ADS"."Feature_36" + -0.07914497697810342 * "ADS"."Feature_37" + 0.06157741228379754 * "ADS"."Feature_38" + 0.18100093897380942 * "ADS"."Feature_39" + 0.01440176547478109 * "ADS"."Feature_40" + -0.034376228488782114 * "ADS"."Feature_41" + -0.021265566897832044 * "ADS"."Feature_42" + 0.08755076999188294 * "ADS"."Feature_43" + 0.006524880800571159 * "ADS"."Feature_44" + -0.04614975994354468 * "ADS"."Feature_45" + -0.11427137510718723 * "ADS"."Feature_46" + 0.03541528621654249 * "ADS"."Feature_47" + -0.20750906923167645 * "ADS"."Feature_48" + 0.056630627244061406 * "ADS"."Feature_49" + 0.043214377207564075 * "ADS"."Feature_50" + -0.027914633375111512 * "ADS"."Feature_51" + 0.07290542466233829 * "ADS"."Feature_52" + 0.07427787969265216 * "ADS"."Feature_53" + 0.036201590138552585 * "ADS"."Feature_54" + -0.16154810394356123 * "ADS"."Feature_55" + 0.05798372282229642 * "ADS"."Feature_56" + -0.06263086077694707 * "ADS"."Feature_57" + 0.08051136693047409 * "ADS"."Feature_58" + -0.015082509532732637 * "ADS"."Feature_59" + -0.06534281777637459 * "ADS"."Feature_60" + -0.006403023036961664 * "ADS"."Feature_61" + 0.015562628988893084 * "ADS"."Feature_62" + 0.07393828463185291 * "ADS"."Feature_63" + 0.0481704832447399 * "ADS"."Feature_64" + 0.0851028289266064 * "ADS"."Feature_65" + -0.06939429235053553 * "ADS"."Feature_66" + 0.08658585807285497 * "ADS"."Feature_67" + -0.0973472705546435 * "ADS"."Feature_68" + 0.15890876570328372 * "ADS"."Feature_69" + 0.09857507711004473 * "ADS"."Feature_70" + 0.007262378334146264 * "ADS"."Feature_71" + 0.12706010882460203 * "ADS"."Feature_72" + 0.011157478058033963 * "ADS"."Feature_73" + -0.12697048455688276 * "ADS"."Feature_74" + -0.07328513359039082 * "ADS"."Feature_75" + -0.049127340903708135 * "ADS"."Feature_76" + -0.01847587970664701 * "ADS"."Feature_77" + -0.1429407951527923 * "ADS"."Feature_78" + -0.0255037188724069 * "ADS"."Feature_79" + 0.1315891158712072 * "ADS"."Feature_80" + 0.08897576997169346 * "ADS"."Feature_81" + -0.10312272926633799 * "ADS"."Feature_82" + -0.002196880671596554 * "ADS"."Feature_83" + -0.13593927125960678 * "ADS"."Feature_84" + 0.05189515570032951 * "ADS"."Feature_85" + 0.0589026937763093 * "ADS"."Feature_86" + 0.05146508830487548 * "ADS"."Feature_87" + -0.020331575402817766 * "ADS"."Feature_88" + -0.02563095966685589 * "ADS"."Feature_89" + 0.10993868572323019 * "ADS"."Feature_90" + 0.01783755220322341 * "ADS"."Feature_91" + 0.07446949468318811 * "ADS"."Feature_92" + 0.11489948474703729 * "ADS"."Feature_93" + 0.028319002387585678 * "ADS"."Feature_94" + 0.015177948480641464 * "ADS"."Feature_95" + 0.087328380389168 * "ADS"."Feature_96" + 0.024693628759491534 * "ADS"."Feature_97" + -0.10247884341938543 * "ADS"."Feature_98" + -0.13364385889627825 * "ADS"."Feature_99" + -0.014408973472247637 * "ADS"."Feature_100" + -0.04147822395824612 * "ADS"."Feature_101" + -0.036643027229704854 * "ADS"."Feature_102" + 0.07726707637890032 * "ADS"."Feature_103" + -0.06220851074603728 * "ADS"."Feature_104" + 0.02149344600468049 * "ADS"."Feature_105" + 0.04859782124746825 * "ADS"."Feature_106" + 0.04001773388993683 * "ADS"."Feature_107" + -0.13189097647482162 * "ADS"."Feature_108" + 0.09974579290649159 * "ADS"."Feature_109" + 0.034858012827205694 * "ADS"."Feature_110" + 0.10507970712565778 * "ADS"."Feature_111" + -0.0846217547539925 * "ADS"."Feature_112" + 0.17393059416454368 * "ADS"."Feature_113" + 0.048891204301081126 * "ADS"."Feature_114" + 0.10296145299154698 * "ADS"."Feature_115" + -0.056842229144778295 * "ADS"."Feature_116" + -0.0326214386960891 * "ADS"."Feature_117" + -0.07334963988991237 * "ADS"."Feature_118" + -0.04259415328122171 * "ADS"."Feature_119" + 0.02658165077380704 * "ADS"."Feature_120" + 0.015492691434071632 * "ADS"."Feature_121" + 0.18873262434987764 * "ADS"."Feature_122" + -0.015741118659934702 * "ADS"."Feature_123" + 0.010282816601336441 * "ADS"."Feature_124" + 0.07153604096344301 * "ADS"."Feature_125" + 0.042281070281782324 * "ADS"."Feature_126" + -0.07141659845204944 * "ADS"."Feature_127" + -0.03428375058014055 * "ADS"."Feature_128" + -0.07420108998729097 * "ADS"."Feature_129" + 0.03180272295771918 * "ADS"."Feature_130" + -0.02737201400691545 * "ADS"."Feature_131" + 0.1062369406819728 * "ADS"."Feature_132" + 0.04316886306838113 * "ADS"."Feature_133" + -0.031449814466219285 * "ADS"."Feature_134" + -0.03028991351474238 * "ADS"."Feature_135" + 0.12647990799781958 * "ADS"."Feature_136" + -0.032955593606618344 * "ADS"."Feature_137" + 0.08076559488233177 * "ADS"."Feature_138" + -0.08868803257055906 * "ADS"."Feature_139" + -0.030208284975651586 * "ADS"."Feature_140" + -0.01979850315580182 * "ADS"."Feature_141" + 0.009453045996341105 * "ADS"."Feature_142" + 0.007729133096642138 * "ADS"."Feature_143" + -0.07884193215487031 * "ADS"."Feature_144" + 0.034296961961855395 * "ADS"."Feature_145" + 0.0002467434642464345 * "ADS"."Feature_146" + -0.17662814518358155 * "ADS"."Feature_147" + 0.07404077432937978 * "ADS"."Feature_148" + -0.007674585753883011 * "ADS"."Feature_149" + -0.10084288306277803 * "ADS"."Feature_150" + 0.03150697095233373 * "ADS"."Feature_151" + 0.0937261486105836 * "ADS"."Feature_152" + -0.08151670771233713 * "ADS"."Feature_153" + -0.016838793608148966 * "ADS"."Feature_154" + 0.008833605856547551 * "ADS"."Feature_155" + -0.09307277698398697 * "ADS"."Feature_156" + 0.09285933144139188 * "ADS"."Feature_157" + -0.010077590542713774 * "ADS"."Feature_158" + -0.021502850229083353 * "ADS"."Feature_159" + -0.020703692097879263 * "ADS"."Feature_160" + 0.05257539579122388 * "ADS"."Feature_161" + 0.06502371200704973 * "ADS"."Feature_162" + 0.08571184099193623 * "ADS"."Feature_163" + -0.01397535666384127 * "ADS"."Feature_164" + -0.046085955738254476 * "ADS"."Feature_165" + -0.06221231971864815 * "ADS"."Feature_166" + -0.11352922043810795 * "ADS"."Feature_167" + -0.017562778777285144 * "ADS"."Feature_168" + -0.004791892341999387 * "ADS"."Feature_169" + 0.008346778610411498 * "ADS"."Feature_170" + 0.07383190360281973 * "ADS"."Feature_171" + -0.03011100097711324 * "ADS"."Feature_172" + -0.13273745782888302 * "ADS"."Feature_173" + 0.049685061630066946 * "ADS"."Feature_174" + 0.04699615245690507 * "ADS"."Feature_175" + -0.0438745467001983 * "ADS"."Feature_176" + 0.07273259597084548 * "ADS"."Feature_177" + -0.01026518598389041 * "ADS"."Feature_178" + 0.12832734726763118 * "ADS"."Feature_179" + 0.0353265689492924 * "ADS"."Feature_180" + -0.06370544908932478 * "ADS"."Feature_181" + -0.035520833970175414 * "ADS"."Feature_182" + 0.038318587933194787 * "ADS"."Feature_183" + 0.07391149220062707 * "ADS"."Feature_184" + 0.05683133336575099 * "ADS"."Feature_185" + -0.013140844996766989 * "ADS"."Feature_186" + -0.1891724278029437 * "ADS"."Feature_187" + 0.09461690617670382 * "ADS"."Feature_188" + 0.10822392411577814 * "ADS"."Feature_189" + 0.036863957819663916 * "ADS"."Feature_190" + -0.1141301485248426 * "ADS"."Feature_191" + 0.11120891360569109 * "ADS"."Feature_192" + -0.0697214077271068 * "ADS"."Feature_193" + 0.00850035503798915 * "ADS"."Feature_194" + 0.0372138047037494 * "ADS"."Feature_195" + -0.04469137719418078 * "ADS"."Feature_196" + 0.04770746806083226 * "ADS"."Feature_197" + -0.0576885890815603 * "ADS"."Feature_198" + 0.04813782502980882 * "ADS"."Feature_199" + 0.08076579204509132 * "ADS"."Feature_200" + -0.010078852059841182 * "ADS"."Feature_201" + -0.09850910439838935 * "ADS"."Feature_202" + -0.024308437240847858 * "ADS"."Feature_203" + 0.05930784268209941 * "ADS"."Feature_204" + 0.011071845742262347 * "ADS"."Feature_205" + -0.06121246751328423 * "ADS"."Feature_206" + -0.1145772067042288 * "ADS"."Feature_207" + -0.030617490074504164 * "ADS"."Feature_208" + -0.06856456957662592 * "ADS"."Feature_209" + -0.049670061475707 * "ADS"."Feature_210" + -0.024657909425775962 * "ADS"."Feature_211" + 0.02026318557468416 * "ADS"."Feature_212" + -0.05683610163032571 * "ADS"."Feature_213" + -0.0542844797296591 * "ADS"."Feature_214" + 0.10454370955609184 * "ADS"."Feature_215" + 0.01087240142363154 * "ADS"."Feature_216" + -0.05623923490400095 * "ADS"."Feature_217" + -0.0012598494219244957 * "ADS"."Feature_218" + -0.05884751694500566 * "ADS"."Feature_219" + -0.11827042717508382 * "ADS"."Feature_220" + 0.02721766092257171 * "ADS"."Feature_221" + -0.08920247579000601 * "ADS"."Feature_222" + 0.06343332364883686 * "ADS"."Feature_223" + 0.0957850955349079 * "ADS"."Feature_224" + 0.010533677295601068 * "ADS"."Feature_225" + -0.05811561250403895 * "ADS"."Feature_226" + 0.08983212891726225 * "ADS"."Feature_227" + -0.13315103759913657 * "ADS"."Feature_228" + 0.018453640768528973 * "ADS"."Feature_229" + 0.0002543064644961549 * "ADS"."Feature_230" + 0.03192162355328578 * "ADS"."Feature_231" + 0.192391911483524 * "ADS"."Feature_232" + 0.12203024226918975 * "ADS"."Feature_233" + -0.0848498400200419 * "ADS"."Feature_234" + -0.04790179460262759 * "ADS"."Feature_235" + -0.07482614775061003 * "ADS"."Feature_236" + -0.10763468967588166 * "ADS"."Feature_237" + -0.05284911583977214 * "ADS"."Feature_238" + 0.03372891051345637 * "ADS"."Feature_239" + 0.00549862631875162 * "ADS"."Feature_240" + -0.034919247038982526 * "ADS"."Feature_241" + -0.08817003122150385 * "ADS"."Feature_242" + -0.01962663046326186 * "ADS"."Feature_243" + 0.43935300936515537 * "ADS"."Feature_244" + -0.1008425768070807 * "ADS"."Feature_245" + -0.03945132824111834 * "ADS"."Feature_246" + -0.10979261515360565 * "ADS"."Feature_247" + 0.02853103446064602 * "ADS"."Feature_248" + -0.05522660302582034 * "ADS"."Feature_249" + 0.07917218821230776 * "ADS"."Feature_250" + 0.055656610073240846 * "ADS"."Feature_251" + -0.09416921340084987 * "ADS"."Feature_252" + 0.11346497384743853 * "ADS"."Feature_253" + 0.16207993890217165 * "ADS"."Feature_254" + -0.037216167640671295 * "ADS"."Feature_255" + 0.09975747300970497 * "ADS"."Feature_256" + 0.023161127675437553 * "ADS"."Feature_257" + -0.051780503498266454 * "ADS"."Feature_258" + -0.00957093886276223 * "ADS"."Feature_259" + 0.04974106352085183 * "ADS"."Feature_260" + -0.04597260939841786 * "ADS"."Feature_261" + -0.10770445696286482 * "ADS"."Feature_262" + 0.03016981640653709 * "ADS"."Feature_263" + -0.030594507044142363 * "ADS"."Feature_264" + 0.050183170676297566 * "ADS"."Feature_265" + 0.0667249383450278 * "ADS"."Feature_266" + 0.026266450777236276 * "ADS"."Feature_267" + -0.02453255693205518 * "ADS"."Feature_268" + -0.08705663887445861 * "ADS"."Feature_269" + -0.1102765450748177 * "ADS"."Feature_270" + -0.07303810442662124 * "ADS"."Feature_271" + -0.06331353298759088 * "ADS"."Feature_272" + -0.020330305523750654 * "ADS"."Feature_273" + -0.0893723847317003 * "ADS"."Feature_274" + -0.0077132085235503585 * "ADS"."Feature_275" + -0.03027103482552846 * "ADS"."Feature_276" + 0.05407079915391086 * "ADS"."Feature_277" + -0.16983825546694734 * "ADS"."Feature_278" + 0.01735967818704781 * "ADS"."Feature_279" + -0.026361641971294005 * "ADS"."Feature_280" + -0.008600615633765074 * "ADS"."Feature_281" + 0.09569472637515485 * "ADS"."Feature_282" + -0.019579770814368725 * "ADS"."Feature_283" + 0.02383993776265982 * "ADS"."Feature_284" + -0.09593961399281806 * "ADS"."Feature_285" + -0.09486417516719027 * "ADS"."Feature_286" + -0.024205111562648495 * "ADS"."Feature_287" + 0.07241543972717532 * "ADS"."Feature_288" + -0.011388389769918784 * "ADS"."Feature_289" + -0.03899904067286304 * "ADS"."Feature_290" + -0.02280942033638467 * "ADS"."Feature_291" + 0.1626255714025125 * "ADS"."Feature_292" + -0.006122999027463446 * "ADS"."Feature_293" + 0.0719610217070643 * "ADS"."Feature_294" + -0.08846098579871775 * "ADS"."Feature_295" + -0.1663883765635226 * "ADS"."Feature_296" + 0.006309027658678982 * "ADS"."Feature_297" + -0.04058933639585025 * "ADS"."Feature_298" + -0.09431929726643365 * "ADS"."Feature_299" + 0.01667050391321162 * "ADS"."Feature_300" + 0.0620697402438135 * "ADS"."Feature_301" + 0.047766487066586205 * "ADS"."Feature_302" + -0.04886882663464511 * "ADS"."Feature_303" + -0.08017241647819695 * "ADS"."Feature_304" + 0.05491746641132198 * "ADS"."Feature_305" + -0.01980834576922364 * "ADS"."Feature_306" + -0.042169426361982336 * "ADS"."Feature_307" + 0.10569425826416662 * "ADS"."Feature_308" + -0.08556975282035643 * "ADS"."Feature_309" + 0.05353183828974569 * "ADS"."Feature_310" + -0.0062506076849397066 * "ADS"."Feature_311" + -0.11313974635322341 * "ADS"."Feature_312" + 0.008067735606973084 * "ADS"."Feature_313" + -0.049725699187618266 * "ADS"."Feature_314" + -0.12090662553343744 * "ADS"."Feature_315" + -0.4072328890540454 * "ADS"."Feature_316" + -0.0017653259587599062 * "ADS"."Feature_317" + 0.005605307379229348 * "ADS"."Feature_318" + 0.1275953934032288 * "ADS"."Feature_319" + 0.04422231565131005 * "ADS"."Feature_320" + 0.07562558752901422 * "ADS"."Feature_321" + -0.1641648395478501 * "ADS"."Feature_322" + -0.01829500048197199 * "ADS"."Feature_323" + 0.064443878825201 * "ADS"."Feature_324" + -0.00013526088799843683 * "ADS"."Feature_325" + -0.03294020595401333 * "ADS"."Feature_326" + 0.041654966247340316 * "ADS"."Feature_327" + -0.13339379026606135 * "ADS"."Feature_328" + -0.040547132786356556 * "ADS"."Feature_329" + -0.04825712137906588 * "ADS"."Feature_330" + -0.09277825806106603 * "ADS"."Feature_331" + -0.056378245798197536 * "ADS"."Feature_332" + 0.19477969922583005 * "ADS"."Feature_333" + 0.003974480400095519 * "ADS"."Feature_334" + -0.0688676392511041 * "ADS"."Feature_335" + -0.0009740761030243353 * "ADS"."Feature_336" + -0.08595579515731559 * "ADS"."Feature_337" + -0.059170146522362 * "ADS"."Feature_338" + -0.03424272143127516 * "ADS"."Feature_339" + -0.1317536241312009 * "ADS"."Feature_340" + 0.024059056484792358 * "ADS"."Feature_341" + 0.09269680572564379 * "ADS"."Feature_342" + -0.037783419254096076 * "ADS"."Feature_343" + -0.05110517360689849 * "ADS"."Feature_344" + -0.08606583939306514 * "ADS"."Feature_345" + -0.0029253776146550654 * "ADS"."Feature_346" + -0.04074250111913825 * "ADS"."Feature_347" + 0.036260206775815505 * "ADS"."Feature_348" + 0.13062479403861108 * "ADS"."Feature_349" + 0.00432276485097353 * "ADS"."Feature_350" + -0.033494312644196195 * "ADS"."Feature_351" + -0.028727029358225107 * "ADS"."Feature_352" + -0.13872410659012727 * "ADS"."Feature_353" + -0.05157064550465532 * "ADS"."Feature_354" + -0.07197095140436668 * "ADS"."Feature_355" + -0.19076169935590653 * "ADS"."Feature_356" + -0.0749821869349268 * "ADS"."Feature_357" + -0.022965101494301032 * "ADS"."Feature_358" + 0.0016987624880164707 * "ADS"."Feature_359" + -0.18149624443423337 * "ADS"."Feature_360" + 0.08233352673420584 * "ADS"."Feature_361" + -0.07086857705996122 * "ADS"."Feature_362" + -0.033332800106277156 * "ADS"."Feature_363" + 0.06641963141888382 * "ADS"."Feature_364" + -0.10209428679896622 * "ADS"."Feature_365" + -0.05770658015891967 * "ADS"."Feature_366" + -0.012292584534184992 * "ADS"."Feature_367" + -0.030169599882633107 * "ADS"."Feature_368" + 0.007581579059072896 * "ADS"."Feature_369" + -0.06262388346775165 * "ADS"."Feature_370" + -0.05501223673313042 * "ADS"."Feature_371" + -0.039669277907831486 * "ADS"."Feature_372" + 0.022888959614054873 * "ADS"."Feature_373" + -0.09941934308196995 * "ADS"."Feature_374" + 0.018635853890369522 * "ADS"."Feature_375" + -0.056536875457358485 * "ADS"."Feature_376" + -0.16360782524317033 * "ADS"."Feature_377" + -0.015678719443266948 * "ADS"."Feature_378" + -0.017447694970015894 * "ADS"."Feature_379" + -0.14952850376082136 * "ADS"."Feature_380" + -0.009703175339671934 * "ADS"."Feature_381" + 0.08326618975273724 * "ADS"."Feature_382" + 0.0623875204512796 * "ADS"."Feature_383" + 0.1456452206377756 * "ADS"."Feature_384" + -0.0326017544565389 * "ADS"."Feature_385" + 0.032215522060026335 * "ADS"."Feature_386" + -0.0728442942675683 * "ADS"."Feature_387" + -0.07534541372384781 * "ADS"."Feature_388" + -0.015446764405063557 * "ADS"."Feature_389" + -0.11554886422287629 * "ADS"."Feature_390" + -0.0549740805344377 * "ADS"."Feature_391" + -0.042428064784884874 * "ADS"."Feature_392" + -0.06609431478754729 * "ADS"."Feature_393" + 0.030026408653178852 * "ADS"."Feature_394" + -0.0581095306272824 * "ADS"."Feature_395" + -0.1010173658712482 * "ADS"."Feature_396" + 0.011690205025863749 * "ADS"."Feature_397" + -0.02348541472978965 * "ADS"."Feature_398" + -0.043355959139382685 * "ADS"."Feature_399" + 0.03414287156739122 * "ADS"."Feature_400" + 0.017770295704978394 * "ADS"."Feature_401" + -0.042460541134832046 * "ADS"."Feature_402" + 0.1264247213952973 * "ADS"."Feature_403" + 0.00017174483359128518 * "ADS"."Feature_404" + 0.004195993321991691 * "ADS"."Feature_405" + 0.06929777323488034 * "ADS"."Feature_406" + 0.06397890330302088 * "ADS"."Feature_407" + 0.05213665925247211 * "ADS"."Feature_408" + -0.07395208001853808 * "ADS"."Feature_409" + -0.05622883354060904 * "ADS"."Feature_410" + -0.031499138792077164 * "ADS"."Feature_411" + -0.06079618113041096 * "ADS"."Feature_412" + 0.2512027023805217 * "ADS"."Feature_413" + -0.22863902732005237 * "ADS"."Feature_414" + -0.05422010807865318 * "ADS"."Feature_415" + -0.0060272130127844385 * "ADS"."Feature_416" + -0.004650972143613919 * "ADS"."Feature_417" + 0.046922665606383446 * "ADS"."Feature_418" + -0.06031838578212652 * "ADS"."Feature_419" + 0.01936158183037303 * "ADS"."Feature_420" + -0.1095384988242472 * "ADS"."Feature_421" + -0.09099545294435331 * "ADS"."Feature_422" + 0.14755002536387007 * "ADS"."Feature_423" + -0.037535270055145134 * "ADS"."Feature_424" + -0.03389148488247299 * "ADS"."Feature_425" + 0.01546241960125535 * "ADS"."Feature_426" + -0.049709939348712075 * "ADS"."Feature_427" + -0.04739302271050176 * "ADS"."Feature_428" + -0.04691339992698406 * "ADS"."Feature_429" + 0.06404246187743033 * "ADS"."Feature_430" + 0.002360392759663906 * "ADS"."Feature_431" + 0.033611653003838636 * "ADS"."Feature_432" + 0.0202603156752678 * "ADS"."Feature_433" + 0.0838910454813983 * "ADS"."Feature_434" + 0.048068102729212706 * "ADS"."Feature_435" + -0.0028714791630994954 * "ADS"."Feature_436" + -0.02815486260919044 * "ADS"."Feature_437" + -0.07992042501038205 * "ADS"."Feature_438" + 0.005350875568504721 * "ADS"."Feature_439" + 0.018788955471465283 * "ADS"."Feature_440" + -0.14861943040028688 * "ADS"."Feature_441" + 0.1537013707785194 * "ADS"."Feature_442" + -0.06106472743711409 * "ADS"."Feature_443" + 0.10614037187467083 * "ADS"."Feature_444" + -0.08509429747606512 * "ADS"."Feature_445" + -0.06651637306687966 * "ADS"."Feature_446" + -0.03620751362769426 * "ADS"."Feature_447" + -0.12608029186578126 * "ADS"."Feature_448" + 0.11944143834600968 * "ADS"."Feature_449" + -0.0736240276262362 * "ADS"."Feature_450" + -0.006255660096887332 * "ADS"."Feature_451" + -8.059512936831112e-05 * "ADS"."Feature_452" + 0.0704140506854643 * "ADS"."Feature_453" + -0.1660162737230618 * "ADS"."Feature_454" + -0.046775198493914046 * "ADS"."Feature_455" + 0.20219781849764584 * "ADS"."Feature_456" + -0.03502208787288463 * "ADS"."Feature_457" + -0.028640803267187057 * "ADS"."Feature_458" + 0.00274521023106521 * "ADS"."Feature_459" + -0.07146888182398757 * "ADS"."Feature_460" + 0.03792597016458061 * "ADS"."Feature_461" + 0.11408264736618683 * "ADS"."Feature_462" + -0.04666043914119848 * "ADS"."Feature_463" + -0.006803307472833192 * "ADS"."Feature_464" + -0.0011308981901831626 * "ADS"."Feature_465" + -0.004032784022288594 * "ADS"."Feature_466" + -0.04187345236729857 * "ADS"."Feature_467" + 0.040233304297760515 * "ADS"."Feature_468" + -0.02552472678378554 * "ADS"."Feature_469" + 0.1566021617989427 * "ADS"."Feature_470" + -0.019554392734896064 * "ADS"."Feature_471" + -0.023586330476993884 * "ADS"."Feature_472" + 0.03427419342938272 * "ADS"."Feature_473" + -0.06801922826311267 * "ADS"."Feature_474" + -0.023379971589382778 * "ADS"."Feature_475" + -0.054313799701549176 * "ADS"."Feature_476" + -0.10185526654389905 * "ADS"."Feature_477" + 0.005848208850664081 * "ADS"."Feature_478" + 0.08680450675436062 * "ADS"."Feature_479" + -0.020250969672356296 * "ADS"."Feature_480" + 0.10106290002814988 * "ADS"."Feature_481" + 0.007152114184529129 * "ADS"."Feature_482" + -0.0562098668940788 * "ADS"."Feature_483" + 0.0013954812393479111 * "ADS"."Feature_484" + -0.08273884771839925 * "ADS"."Feature_485" + -0.19124444169247182 * "ADS"."Feature_486" + -0.0793311776203807 * "ADS"."Feature_487" + 0.05073349234494653 * "ADS"."Feature_488" + -0.14975409458854638 * "ADS"."Feature_489" + -0.03559369085866946 * "ADS"."Feature_490" + 7.964908681941407e-05 * "ADS"."Feature_491" + 0.040532457793929326 * "ADS"."Feature_492" + -0.04777149989433526 * "ADS"."Feature_493" + 0.13418645573725652 * "ADS"."Feature_494" + 0.00939934022902866 * "ADS"."Feature_495" + -0.0737947414902274 * "ADS"."Feature_496" + -0.07114333312753257 * "ADS"."Feature_497" + 0.009095117403712247 * "ADS"."Feature_498" + -0.03846896677636092 * "ADS"."Feature_499" + 0.054695922657333446 AS lincomb 
FROM "BINARYCLASS_500" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.lincomb AS "Score_0", linear_model_cte.lincomb AS "Score_1", 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_0", 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) AS "Proba_1", CASE WHEN (1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_0", CASE WHEN (1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) IS NULL OR 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))) > 0.0) THEN ln(1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) ELSE -1.79769313486231e+308 END AS "LogProba_1", CASE WHEN (linear_model_cte.lincomb > 0.0) THEN 1 ELSE 0 END AS "Decision", greatest(1.0 - 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0))), 1.0 / (1.0 + exp(least(greatest(-100.0, -linear_model_cte.lincomb), 100.0)))) AS "DecisionProba" 
FROM linear_model_cte