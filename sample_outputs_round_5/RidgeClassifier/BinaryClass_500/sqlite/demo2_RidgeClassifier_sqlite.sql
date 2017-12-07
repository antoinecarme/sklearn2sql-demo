-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 0.01890561002821138 * "ADS"."Feature_0" + 6.689931723103987e-06 * "ADS"."Feature_1" + 0.002961885512654792 * "ADS"."Feature_2" + 0.0017911256530328365 * "ADS"."Feature_3" + 0.012935586505936843 * "ADS"."Feature_4" + -0.006912826069987871 * "ADS"."Feature_5" + 0.0053247305625479255 * "ADS"."Feature_6" + 0.004518079490021483 * "ADS"."Feature_7" + 0.0009715717625963661 * "ADS"."Feature_8" + -0.005161634165695294 * "ADS"."Feature_9" + 0.01053258894473316 * "ADS"."Feature_10" + 0.0016346637823644308 * "ADS"."Feature_11" + -0.01121338129583495 * "ADS"."Feature_12" + 0.011098057253471778 * "ADS"."Feature_13" + -0.010165264300050285 * "ADS"."Feature_14" + -0.002419623138227617 * "ADS"."Feature_15" + 0.03204679345517808 * "ADS"."Feature_16" + 0.009541611483680736 * "ADS"."Feature_17" + 0.010425964830583627 * "ADS"."Feature_18" + 0.011756196073613775 * "ADS"."Feature_19" + -0.028978864426797618 * "ADS"."Feature_20" + -0.0011526911010491117 * "ADS"."Feature_21" + -0.015628609045017 * "ADS"."Feature_22" + 0.0015349795393623587 * "ADS"."Feature_23" + 0.0024465298370269853 * "ADS"."Feature_24" + -0.00035448098761658065 * "ADS"."Feature_25" + 0.008183209169557563 * "ADS"."Feature_26" + -0.021601389786738777 * "ADS"."Feature_27" + 0.0007690568425676894 * "ADS"."Feature_28" + 0.00735133739338624 * "ADS"."Feature_29" + -0.013654802515725244 * "ADS"."Feature_30" + 0.00548733453702384 * "ADS"."Feature_31" + 0.006806062943170767 * "ADS"."Feature_32" + 0.006524837250432607 * "ADS"."Feature_33" + -0.026627143675429125 * "ADS"."Feature_34" + 0.01364135580516668 * "ADS"."Feature_35" + 0.02694260876896543 * "ADS"."Feature_36" + 0.1052544819078788 * "ADS"."Feature_37" + 0.027877352226933737 * "ADS"."Feature_38" + 0.00694982771957234 * "ADS"."Feature_39" + 0.012292652135732076 * "ADS"."Feature_40" + -0.0013814437882417275 * "ADS"."Feature_41" + 0.003786154042960378 * "ADS"."Feature_42" + -0.013970882753745929 * "ADS"."Feature_43" + -0.011718188675068707 * "ADS"."Feature_44" + -0.012177279831164435 * "ADS"."Feature_45" + -0.01654426530971051 * "ADS"."Feature_46" + -0.032688056971939 * "ADS"."Feature_47" + 0.018391109259616175 * "ADS"."Feature_48" + -0.00645268055803901 * "ADS"."Feature_49" + 0.0011625038301934696 * "ADS"."Feature_50" + -0.015204385491753463 * "ADS"."Feature_51" + 0.010193078970851636 * "ADS"."Feature_52" + -0.01961454278792374 * "ADS"."Feature_53" + 0.03015065794548764 * "ADS"."Feature_54" + -0.001912734244921413 * "ADS"."Feature_55" + -0.009463994621455179 * "ADS"."Feature_56" + -0.008109390276520472 * "ADS"."Feature_57" + 0.012193250151196126 * "ADS"."Feature_58" + 0.00410061534515479 * "ADS"."Feature_59" + 0.01974848925853987 * "ADS"."Feature_60" + -0.009135991722926439 * "ADS"."Feature_61" + -0.025272786773046223 * "ADS"."Feature_62" + 0.022525366229449895 * "ADS"."Feature_63" + 0.0018660801612767118 * "ADS"."Feature_64" + 0.007620328734499205 * "ADS"."Feature_65" + 0.003096318317489935 * "ADS"."Feature_66" + 0.005430382692378156 * "ADS"."Feature_67" + 0.0003586739813022314 * "ADS"."Feature_68" + 0.008984356891609445 * "ADS"."Feature_69" + -0.022470411060362856 * "ADS"."Feature_70" + 0.003372164724139544 * "ADS"."Feature_71" + -0.010500191145475655 * "ADS"."Feature_72" + 0.020408193456842597 * "ADS"."Feature_73" + -0.000758359125758195 * "ADS"."Feature_74" + 0.005425172300210716 * "ADS"."Feature_75" + 0.010598577403801308 * "ADS"."Feature_76" + 0.0055686217980597695 * "ADS"."Feature_77" + 0.02920134026035627 * "ADS"."Feature_78" + -0.013067957498876012 * "ADS"."Feature_79" + -0.011338581756695103 * "ADS"."Feature_80" + 0.007176456283146052 * "ADS"."Feature_81" + -0.009261826366273975 * "ADS"."Feature_82" + -0.005729912261031455 * "ADS"."Feature_83" + -0.018397976787993632 * "ADS"."Feature_84" + -0.00809616279515343 * "ADS"."Feature_85" + -0.0011169022991680592 * "ADS"."Feature_86" + -0.002477804677968934 * "ADS"."Feature_87" + 0.008977909413669364 * "ADS"."Feature_88" + -0.0025474911100172473 * "ADS"."Feature_89" + -0.006117505622641781 * "ADS"."Feature_90" + 0.001516786515252486 * "ADS"."Feature_91" + -0.015454040784775257 * "ADS"."Feature_92" + -0.003585319558585361 * "ADS"."Feature_93" + 0.00910937804773666 * "ADS"."Feature_94" + 0.009189619353671456 * "ADS"."Feature_95" + -0.00490845344444428 * "ADS"."Feature_96" + 0.013700857992716578 * "ADS"."Feature_97" + 0.002295593672899658 * "ADS"."Feature_98" + -0.015445337519025295 * "ADS"."Feature_99" + -0.022061990022156103 * "ADS"."Feature_100" + 0.006990242653634534 * "ADS"."Feature_101" + 0.0026160767887930692 * "ADS"."Feature_102" + 0.031810167722514375 * "ADS"."Feature_103" + -0.009812703056890816 * "ADS"."Feature_104" + 0.0046209187078419455 * "ADS"."Feature_105" + -0.0024172047723655774 * "ADS"."Feature_106" + -0.003771950399285327 * "ADS"."Feature_107" + 0.003807797016966355 * "ADS"."Feature_108" + 0.011741015123074091 * "ADS"."Feature_109" + -0.035379174213841555 * "ADS"."Feature_110" + 0.01529120795638825 * "ADS"."Feature_111" + -0.011736170830194473 * "ADS"."Feature_112" + 0.005694366113556569 * "ADS"."Feature_113" + -0.0014512804147429397 * "ADS"."Feature_114" + 0.013106126732366621 * "ADS"."Feature_115" + 0.0005164925877905032 * "ADS"."Feature_116" + 0.004789946842035784 * "ADS"."Feature_117" + 0.012327915284673122 * "ADS"."Feature_118" + 0.007745908576392686 * "ADS"."Feature_119" + -0.006811216784936551 * "ADS"."Feature_120" + 0.008823535304293714 * "ADS"."Feature_121" + 0.008757254797196645 * "ADS"."Feature_122" + -0.01390411741874974 * "ADS"."Feature_123" + -0.0029828454019172135 * "ADS"."Feature_124" + 0.0005144511216875645 * "ADS"."Feature_125" + 0.011014295447400622 * "ADS"."Feature_126" + 0.016568426015891168 * "ADS"."Feature_127" + -0.001030592882528784 * "ADS"."Feature_128" + 0.0009151748444347798 * "ADS"."Feature_129" + -0.009925543268175234 * "ADS"."Feature_130" + 0.011692856285179591 * "ADS"."Feature_131" + 0.02105380194087 * "ADS"."Feature_132" + -0.008057572454969202 * "ADS"."Feature_133" + -0.08552743166980546 * "ADS"."Feature_134" + -0.007580720672716053 * "ADS"."Feature_135" + 0.020470246661945097 * "ADS"."Feature_136" + -0.0014782062676066865 * "ADS"."Feature_137" + -0.003904393160906529 * "ADS"."Feature_138" + 0.013790398118859832 * "ADS"."Feature_139" + -0.01245266538433526 * "ADS"."Feature_140" + 0.00780476445265915 * "ADS"."Feature_141" + 0.0024232866574796113 * "ADS"."Feature_142" + -0.015030626605890583 * "ADS"."Feature_143" + 0.0014658853405859827 * "ADS"."Feature_144" + -0.02396521530101582 * "ADS"."Feature_145" + -0.0010943703126995833 * "ADS"."Feature_146" + -0.0026272457203152413 * "ADS"."Feature_147" + -0.023776879225989495 * "ADS"."Feature_148" + -0.0090979001163728 * "ADS"."Feature_149" + 0.003387654923719962 * "ADS"."Feature_150" + 0.008200073200065522 * "ADS"."Feature_151" + 0.01531933673776527 * "ADS"."Feature_152" + 9.712948276844246e-05 * "ADS"."Feature_153" + 0.004476848631800322 * "ADS"."Feature_154" + 0.014330750326363498 * "ADS"."Feature_155" + -0.010435789006604305 * "ADS"."Feature_156" + -0.023699024061790062 * "ADS"."Feature_157" + -0.02338170465190471 * "ADS"."Feature_158" + -0.021741966420612834 * "ADS"."Feature_159" + -0.011565787919394506 * "ADS"."Feature_160" + 0.01861036596709032 * "ADS"."Feature_161" + 0.002579380418079927 * "ADS"."Feature_162" + -0.0036970202803762913 * "ADS"."Feature_163" + -0.0025735645986467224 * "ADS"."Feature_164" + 0.0047735177098639035 * "ADS"."Feature_165" + -0.014686711675260285 * "ADS"."Feature_166" + -0.01016530662191547 * "ADS"."Feature_167" + 0.02376506399161167 * "ADS"."Feature_168" + 0.004295847641077793 * "ADS"."Feature_169" + -0.003088046955405222 * "ADS"."Feature_170" + -0.032298907343014875 * "ADS"."Feature_171" + 0.00364782484087094 * "ADS"."Feature_172" + -0.0026315937702014545 * "ADS"."Feature_173" + 0.011573780709525739 * "ADS"."Feature_174" + 0.004978357177327261 * "ADS"."Feature_175" + -0.006346821130927227 * "ADS"."Feature_176" + 0.008949058289154765 * "ADS"."Feature_177" + -0.007099590764538746 * "ADS"."Feature_178" + 0.005173427585777316 * "ADS"."Feature_179" + 0.018909650972588114 * "ADS"."Feature_180" + 0.02230661920937078 * "ADS"."Feature_181" + 0.0017042635879020395 * "ADS"."Feature_182" + 0.002597011688609624 * "ADS"."Feature_183" + -0.015098697290336239 * "ADS"."Feature_184" + -0.0200422617183176 * "ADS"."Feature_185" + 0.008680528218822372 * "ADS"."Feature_186" + -0.001513987592099865 * "ADS"."Feature_187" + -0.01601361283852189 * "ADS"."Feature_188" + 0.0031978625814879248 * "ADS"."Feature_189" + 0.01026212858587833 * "ADS"."Feature_190" + -0.009444418331125692 * "ADS"."Feature_191" + -0.007981214733003394 * "ADS"."Feature_192" + -0.028523270059489975 * "ADS"."Feature_193" + -0.007088038196848195 * "ADS"."Feature_194" + 0.010157074649695088 * "ADS"."Feature_195" + 0.006247271437706661 * "ADS"."Feature_196" + 0.015016936133875095 * "ADS"."Feature_197" + 0.0028481717209765936 * "ADS"."Feature_198" + -0.0023573073058293587 * "ADS"."Feature_199" + -0.025348201617950438 * "ADS"."Feature_200" + 0.007600752528422504 * "ADS"."Feature_201" + -0.007800107686424307 * "ADS"."Feature_202" + -0.007162048388384837 * "ADS"."Feature_203" + 0.011704676536506033 * "ADS"."Feature_204" + -0.020032457910648283 * "ADS"."Feature_205" + 0.0001471058727675707 * "ADS"."Feature_206" + -0.0009288538381853827 * "ADS"."Feature_207" + -0.0026500874470195717 * "ADS"."Feature_208" + 0.001070916946007801 * "ADS"."Feature_209" + -0.008521602088089447 * "ADS"."Feature_210" + 0.027786300309682987 * "ADS"."Feature_211" + 0.04226405197967532 * "ADS"."Feature_212" + -0.03285635539980159 * "ADS"."Feature_213" + 0.01851813295632328 * "ADS"."Feature_214" + -0.011892579280006199 * "ADS"."Feature_215" + 0.002468247836699518 * "ADS"."Feature_216" + 0.021574969259811318 * "ADS"."Feature_217" + 0.003924076501685908 * "ADS"."Feature_218" + 0.014830388772943038 * "ADS"."Feature_219" + -0.020696125687443053 * "ADS"."Feature_220" + 0.008210763388005842 * "ADS"."Feature_221" + 0.022020196401749573 * "ADS"."Feature_222" + -0.01683473825628888 * "ADS"."Feature_223" + -0.001016442839803455 * "ADS"."Feature_224" + -0.0025892566716982633 * "ADS"."Feature_225" + -0.004515838721958686 * "ADS"."Feature_226" + 0.013110099924832594 * "ADS"."Feature_227" + 0.00941455305922326 * "ADS"."Feature_228" + 0.01731865129480134 * "ADS"."Feature_229" + -0.007022383378284345 * "ADS"."Feature_230" + 0.002873351433714073 * "ADS"."Feature_231" + -0.007242183647683975 * "ADS"."Feature_232" + -0.015785792770961257 * "ADS"."Feature_233" + 0.009717664921279704 * "ADS"."Feature_234" + -0.02275497279312267 * "ADS"."Feature_235" + 0.013616981230749637 * "ADS"."Feature_236" + 0.00022137988705907708 * "ADS"."Feature_237" + -0.024235036037176996 * "ADS"."Feature_238" + -0.005535259795723387 * "ADS"."Feature_239" + -0.017911072288787015 * "ADS"."Feature_240" + 0.015372532311210703 * "ADS"."Feature_241" + 0.0027099052309195702 * "ADS"."Feature_242" + -0.007959767582871587 * "ADS"."Feature_243" + -0.024312109058896303 * "ADS"."Feature_244" + -0.0016259848935260182 * "ADS"."Feature_245" + -0.002404028299643726 * "ADS"."Feature_246" + 0.021975009758897584 * "ADS"."Feature_247" + -0.014184530762375728 * "ADS"."Feature_248" + 0.02598880653781597 * "ADS"."Feature_249" + 0.0003111700806394315 * "ADS"."Feature_250" + -0.0036730284774675083 * "ADS"."Feature_251" + 0.009243804288890125 * "ADS"."Feature_252" + -0.008187432866348229 * "ADS"."Feature_253" + -0.0024553187558606733 * "ADS"."Feature_254" + -0.011971364794458698 * "ADS"."Feature_255" + 0.005948490809693995 * "ADS"."Feature_256" + 0.0019691641314003375 * "ADS"."Feature_257" + 0.004679238641554451 * "ADS"."Feature_258" + 0.015904872299343606 * "ADS"."Feature_259" + 0.016377468810676372 * "ADS"."Feature_260" + 0.013039228739674114 * "ADS"."Feature_261" + -0.006779732145238171 * "ADS"."Feature_262" + 0.005738353594159981 * "ADS"."Feature_263" + 0.007260329381226362 * "ADS"."Feature_264" + -0.003558880985221416 * "ADS"."Feature_265" + -0.008573582096976883 * "ADS"."Feature_266" + -0.00616598659084862 * "ADS"."Feature_267" + -0.002115146435051443 * "ADS"."Feature_268" + -0.0025118840194380764 * "ADS"."Feature_269" + -0.008436443839040644 * "ADS"."Feature_270" + 0.0061041202362747925 * "ADS"."Feature_271" + 0.011747110300149825 * "ADS"."Feature_272" + -0.011864599432550572 * "ADS"."Feature_273" + 0.0033864088584604846 * "ADS"."Feature_274" + 0.003037435240335644 * "ADS"."Feature_275" + 0.010218470061639947 * "ADS"."Feature_276" + -0.024676532965774767 * "ADS"."Feature_277" + -0.015933772461709735 * "ADS"."Feature_278" + 0.013134915619312423 * "ADS"."Feature_279" + 0.014376877247673003 * "ADS"."Feature_280" + -0.03447089426380421 * "ADS"."Feature_281" + -0.009085914029782677 * "ADS"."Feature_282" + -0.005654775937191952 * "ADS"."Feature_283" + -0.01146064924918496 * "ADS"."Feature_284" + 0.008784292140232339 * "ADS"."Feature_285" + -0.023609543682293357 * "ADS"."Feature_286" + 0.020124321850653666 * "ADS"."Feature_287" + 0.012407215865789512 * "ADS"."Feature_288" + -0.01262907178079119 * "ADS"."Feature_289" + 0.004622155930601757 * "ADS"."Feature_290" + 0.00848141904730506 * "ADS"."Feature_291" + -0.027702340663551043 * "ADS"."Feature_292" + 0.00875521853518716 * "ADS"."Feature_293" + 0.0037667137790763005 * "ADS"."Feature_294" + -0.02350673893316285 * "ADS"."Feature_295" + 0.007828846108879007 * "ADS"."Feature_296" + -0.016903492360626285 * "ADS"."Feature_297" + -0.02937793150083566 * "ADS"."Feature_298" + 0.009205480854344526 * "ADS"."Feature_299" + -0.017627305007828716 * "ADS"."Feature_300" + 0.00854294343855693 * "ADS"."Feature_301" + -0.01472777955141227 * "ADS"."Feature_302" + 0.013758096156269736 * "ADS"."Feature_303" + 0.01187076869115504 * "ADS"."Feature_304" + 0.010974500576140231 * "ADS"."Feature_305" + 0.01582175930192125 * "ADS"."Feature_306" + 0.011302896144817717 * "ADS"."Feature_307" + 0.004561155652296136 * "ADS"."Feature_308" + 0.015876142190111915 * "ADS"."Feature_309" + 0.010060184923382303 * "ADS"."Feature_310" + 0.016125057739493992 * "ADS"."Feature_311" + -0.0005402849171236368 * "ADS"."Feature_312" + -0.009041867605553854 * "ADS"."Feature_313" + -0.0053779659515339855 * "ADS"."Feature_314" + 0.00036088398951624346 * "ADS"."Feature_315" + -0.008177539206062104 * "ADS"."Feature_316" + 0.009983827160281677 * "ADS"."Feature_317" + 0.00533512149738505 * "ADS"."Feature_318" + 0.006191687312020305 * "ADS"."Feature_319" + 0.013901013523993502 * "ADS"."Feature_320" + -0.033885852713669604 * "ADS"."Feature_321" + -0.012719037465152874 * "ADS"."Feature_322" + -0.006419612809450535 * "ADS"."Feature_323" + -0.0030114352092686725 * "ADS"."Feature_324" + 0.019451313155723796 * "ADS"."Feature_325" + -0.019969111813761195 * "ADS"."Feature_326" + -0.0018154322927120244 * "ADS"."Feature_327" + 0.00795009246251999 * "ADS"."Feature_328" + 0.007570244658288057 * "ADS"."Feature_329" + -0.02223115472125468 * "ADS"."Feature_330" + -0.0035347120370180043 * "ADS"."Feature_331" + -0.020615692580553412 * "ADS"."Feature_332" + 0.00046017541482600054 * "ADS"."Feature_333" + 0.007322386553846269 * "ADS"."Feature_334" + -0.017424585424398994 * "ADS"."Feature_335" + -0.019732224740064377 * "ADS"."Feature_336" + 0.007351085343319825 * "ADS"."Feature_337" + 0.013066852091096648 * "ADS"."Feature_338" + 0.018988039385371178 * "ADS"."Feature_339" + 0.011067465445941388 * "ADS"."Feature_340" + -0.014708688064289915 * "ADS"."Feature_341" + -0.007272400288877965 * "ADS"."Feature_342" + 0.008619462414677613 * "ADS"."Feature_343" + -0.02241475816998183 * "ADS"."Feature_344" + 0.008762728234846334 * "ADS"."Feature_345" + 0.010571220111002859 * "ADS"."Feature_346" + -0.01864377857187004 * "ADS"."Feature_347" + 0.015428108293974915 * "ADS"."Feature_348" + 0.003544283922901413 * "ADS"."Feature_349" + 0.01129327017836763 * "ADS"."Feature_350" + 0.0010395243484146123 * "ADS"."Feature_351" + 0.00011615038144636275 * "ADS"."Feature_352" + 0.004864587397175598 * "ADS"."Feature_353" + -0.00034344661456723317 * "ADS"."Feature_354" + -0.016898499028742978 * "ADS"."Feature_355" + 0.016092151474858873 * "ADS"."Feature_356" + -0.017413492074344696 * "ADS"."Feature_357" + 0.0011194832607535064 * "ADS"."Feature_358" + 0.02047810881760414 * "ADS"."Feature_359" + 0.0037710453522744694 * "ADS"."Feature_360" + 0.0012940120138601207 * "ADS"."Feature_361" + 0.02533259390617016 * "ADS"."Feature_362" + 0.018244624629421072 * "ADS"."Feature_363" + -0.008582556822026457 * "ADS"."Feature_364" + -0.005657380498420844 * "ADS"."Feature_365" + 0.0006079499748820631 * "ADS"."Feature_366" + -0.010504660333006068 * "ADS"."Feature_367" + 0.0014029498755012064 * "ADS"."Feature_368" + -0.0063029788615447556 * "ADS"."Feature_369" + 0.0014507687702074471 * "ADS"."Feature_370" + -0.022760616190914424 * "ADS"."Feature_371" + -0.008312375453298044 * "ADS"."Feature_372" + -0.010853866498746352 * "ADS"."Feature_373" + -0.008597505482350188 * "ADS"."Feature_374" + 0.02331334506233177 * "ADS"."Feature_375" + -0.0019590020650679875 * "ADS"."Feature_376" + -0.0030463389302055055 * "ADS"."Feature_377" + 0.0031708226793014014 * "ADS"."Feature_378" + 0.005338751120018458 * "ADS"."Feature_379" + -0.004530021733931176 * "ADS"."Feature_380" + 0.011251193233842246 * "ADS"."Feature_381" + -0.02043872086009464 * "ADS"."Feature_382" + 0.019121929436483387 * "ADS"."Feature_383" + 0.022523478055432398 * "ADS"."Feature_384" + -0.032554763219684896 * "ADS"."Feature_385" + -0.030284949766175535 * "ADS"."Feature_386" + -0.014685256606710495 * "ADS"."Feature_387" + 0.0013031964605740428 * "ADS"."Feature_388" + -0.010559286235722517 * "ADS"."Feature_389" + -0.008123443888581466 * "ADS"."Feature_390" + -0.003349445706335911 * "ADS"."Feature_391" + 0.0011972540202752615 * "ADS"."Feature_392" + 0.003029647096484593 * "ADS"."Feature_393" + 0.011049171798990329 * "ADS"."Feature_394" + 0.001245766768239064 * "ADS"."Feature_395" + 0.01923486209004817 * "ADS"."Feature_396" + 0.008741371858954856 * "ADS"."Feature_397" + 0.03356959076577932 * "ADS"."Feature_398" + 0.01706972941370899 * "ADS"."Feature_399" + -0.0008947610379976723 * "ADS"."Feature_400" + -0.02130443279580855 * "ADS"."Feature_401" + -0.0011150700772499774 * "ADS"."Feature_402" + -0.008517457980431103 * "ADS"."Feature_403" + 0.001000027709005521 * "ADS"."Feature_404" + -0.023850099376832756 * "ADS"."Feature_405" + 0.021865774511062717 * "ADS"."Feature_406" + -0.015304644960291566 * "ADS"."Feature_407" + -0.013510744266753217 * "ADS"."Feature_408" + -0.011654225021287783 * "ADS"."Feature_409" + -0.019663191898426278 * "ADS"."Feature_410" + 0.0006239213107810636 * "ADS"."Feature_411" + 0.01691266753435648 * "ADS"."Feature_412" + -0.0075295861208928075 * "ADS"."Feature_413" + 0.023453837247249226 * "ADS"."Feature_414" + 0.00623528645776973 * "ADS"."Feature_415" + 0.010784093301672654 * "ADS"."Feature_416" + -0.015647716006555425 * "ADS"."Feature_417" + -0.006344245803361763 * "ADS"."Feature_418" + 0.02147850313074498 * "ADS"."Feature_419" + 0.0317059457012798 * "ADS"."Feature_420" + 0.019589974743526053 * "ADS"."Feature_421" + -0.024556124416757173 * "ADS"."Feature_422" + 0.007754875345602839 * "ADS"."Feature_423" + -0.01529688085808765 * "ADS"."Feature_424" + -0.00824544310877681 * "ADS"."Feature_425" + 0.006444134638116445 * "ADS"."Feature_426" + -0.021515646396980177 * "ADS"."Feature_427" + -0.005549769205420508 * "ADS"."Feature_428" + 0.012469732588386882 * "ADS"."Feature_429" + 0.010968323464534638 * "ADS"."Feature_430" + 0.03471994595223612 * "ADS"."Feature_431" + -0.015449725609391387 * "ADS"."Feature_432" + 0.0014440934006815366 * "ADS"."Feature_433" + -0.01171175447041919 * "ADS"."Feature_434" + -0.010340295700392322 * "ADS"."Feature_435" + -0.007836826369030145 * "ADS"."Feature_436" + -0.01488515664833263 * "ADS"."Feature_437" + 0.04572822364760401 * "ADS"."Feature_438" + 0.01688620642294299 * "ADS"."Feature_439" + -0.02521279493409078 * "ADS"."Feature_440" + 0.004258062256681447 * "ADS"."Feature_441" + -0.006629106551565114 * "ADS"."Feature_442" + 0.015492577091865424 * "ADS"."Feature_443" + -0.0006607812169990073 * "ADS"."Feature_444" + 0.013967025302709683 * "ADS"."Feature_445" + -0.003465369262978222 * "ADS"."Feature_446" + 0.0048483810358014336 * "ADS"."Feature_447" + 0.009570394356828747 * "ADS"."Feature_448" + -0.005125248699034804 * "ADS"."Feature_449" + 0.025118474707263628 * "ADS"."Feature_450" + -0.000983533071268163 * "ADS"."Feature_451" + -0.008575048654094333 * "ADS"."Feature_452" + 0.023779030041343532 * "ADS"."Feature_453" + 0.00021743341350540218 * "ADS"."Feature_454" + -0.0037563843196684733 * "ADS"."Feature_455" + -0.00926378566459199 * "ADS"."Feature_456" + 0.010500557745878207 * "ADS"."Feature_457" + -0.0012688144231474798 * "ADS"."Feature_458" + 0.018878967679970864 * "ADS"."Feature_459" + 0.020348014852784625 * "ADS"."Feature_460" + 0.005195209181824128 * "ADS"."Feature_461" + 0.004361132465825796 * "ADS"."Feature_462" + 0.004996190333716349 * "ADS"."Feature_463" + -0.026082421464845212 * "ADS"."Feature_464" + -0.03014016665663686 * "ADS"."Feature_465" + 0.0033921502932419694 * "ADS"."Feature_466" + -0.008659818836623437 * "ADS"."Feature_467" + 0.0019272227035246488 * "ADS"."Feature_468" + 0.013179667137356778 * "ADS"."Feature_469" + -0.013570642327389039 * "ADS"."Feature_470" + -0.008706025882205046 * "ADS"."Feature_471" + 0.004252498394757513 * "ADS"."Feature_472" + -0.0025357904831644694 * "ADS"."Feature_473" + 0.027113860614129723 * "ADS"."Feature_474" + 0.00010032683431998775 * "ADS"."Feature_475" + -0.0066256435320510305 * "ADS"."Feature_476" + -0.012038042714477393 * "ADS"."Feature_477" + -0.01736851163876947 * "ADS"."Feature_478" + -0.0037835335520944 * "ADS"."Feature_479" + -0.008047900214232611 * "ADS"."Feature_480" + 0.014040577008334075 * "ADS"."Feature_481" + 0.004526370772185033 * "ADS"."Feature_482" + -0.02533115121345894 * "ADS"."Feature_483" + -0.003950054581880901 * "ADS"."Feature_484" + 0.004779612977061715 * "ADS"."Feature_485" + 0.01897715700226708 * "ADS"."Feature_486" + 0.007248248943783489 * "ADS"."Feature_487" + 0.0014441842675264355 * "ADS"."Feature_488" + -0.0022151973269363603 * "ADS"."Feature_489" + -0.022841463435198106 * "ADS"."Feature_490" + 0.012791669019071406 * "ADS"."Feature_491" + 0.024827041454427726 * "ADS"."Feature_492" + -0.00030662089879830164 * "ADS"."Feature_493" + 0.0002762608836371828 * "ADS"."Feature_494" + -0.0021382064087511043 * "ADS"."Feature_495" + -0.0010958391470701535 * "ADS"."Feature_496" + 0.010972539706964586 * "ADS"."Feature_497" + 0.00048405855381493607 * "ADS"."Feature_498" + -0.005559401889747916 * "ADS"."Feature_499" + -0.00468144148446 AS linear_combination 
FROM "BinaryClass_500" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", -linear_model_cte.linear_combination AS "Score_0", linear_model_cte.linear_combination AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_0", CAST(NULL AS FLOAT) AS "LogProba_1", CASE WHEN (linear_model_cte.linear_combination >= 0.0) THEN 1 ELSE 0 END AS "Decision" 
FROM linear_model_cte