-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH "SV_data" AS 
(SELECT "Values".sv_idx AS sv_idx, "Values".dual_coeff AS dual_coeff, "Values".sv_0 AS sv_0, "Values".sv_1 AS sv_1, "Values".sv_2 AS sv_2, "Values".sv_3 AS sv_3, "Values".sv_4 AS sv_4, "Values".sv_5 AS sv_5, "Values".sv_6 AS sv_6, "Values".sv_7 AS sv_7, "Values".sv_8 AS sv_8, "Values".sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, -1.46131778294 AS dual_coeff, 0.915860868546 AS sv_0, 0.649323196144 AS sv_1, 0.648342305433 AS sv_2, 0.640940926061 AS sv_3, 0.733037345347 AS sv_4, 0.532698875001 AS sv_5, 0.485490727293 AS sv_6, 0.34849037722 AS sv_7, 0.193100528274 AS sv_8, 0.24435565259 AS sv_9 FROM DUAL UNION ALL SELECT 1 AS sv_idx, 0.612135125474 AS dual_coeff, 0.65116550096 AS sv_0, 0.804154225987 AS sv_1, 0.23955891003 AS sv_2, 0.947358158077 AS sv_3, 0.550691387909 AS sv_4, 0.576358684547 AS sv_5, 0.452219795302 AS sv_6, 0.818147095738 AS sv_7, 0.966592109393 AS sv_8, 0.329175457244 AS sv_9 FROM DUAL UNION ALL SELECT 2 AS sv_idx, 1.70187360488 AS dual_coeff, 0.480734053707 AS sv_0, 0.150438921097 AS sv_1, 0.957234605757 AS sv_2, 0.785050800623 AS sv_3, 0.833983058816 AS sv_4, 0.801466365551 AS sv_5, 0.313867186757 AS sv_6, 0.274295181295 AS sv_7, 0.84729358122 AS sv_8, 0.283877280726 AS sv_9 FROM DUAL UNION ALL SELECT 3 AS sv_idx, -2.11962025555 AS dual_coeff, 0.768524046344 AS sv_0, 0.799243848906 AS sv_1, 0.426164262372 AS sv_2, 0.336849884383 AS sv_3, 0.535697278946 AS sv_4, 0.145051420667 AS sv_5, 0.846656351132 AS sv_6, 0.607008233962 AS sv_7, 0.784892437818 AS sv_8, 0.856849036004 AS sv_9 FROM DUAL UNION ALL SELECT 4 AS sv_idx, 2.16679983389 AS dual_coeff, 0.915818184627 AS sv_0, 0.362088146633 AS sv_1, 0.100213187447 AS sv_2, 0.177974987612 AS sv_3, 0.0458641398632 AS sv_4, 0.520975772898 AS sv_5, 0.401270718416 AS sv_6, 0.817645679907 AS sv_7, 0.657904914539 AS sv_8, 0.943907125107 AS sv_9 FROM DUAL UNION ALL SELECT 5 AS sv_idx, 0.324216337274 AS dual_coeff, 0.96999321078 AS sv_0, 0.661290260127 AS sv_1, 0.877385395211 AS sv_2, 0.919732742005 AS sv_3, 0.0455662725325 AS sv_4, 0.740259174075 AS sv_5, 0.387559393954 AS sv_6, 0.242492628999 AS sv_7, 0.921769264952 AS sv_8, 0.984150139794 AS sv_9 FROM DUAL UNION ALL SELECT 6 AS sv_idx, 2.55048252318 AS dual_coeff, 0.502646881387 AS sv_0, 0.691668271597 AS sv_1, 0.834687797411 AS sv_2, 0.539218270369 AS sv_3, 0.787296742004 AS sv_4, 0.632768864849 AS sv_5, 0.844361090642 AS sv_6, 0.0862158357009 AS sv_7, 0.318304749529 AS sv_8, 0.0844531532494 AS sv_9 FROM DUAL UNION ALL SELECT 7 AS sv_idx, -3.09653420234 AS dual_coeff, 0.0538034102771 AS sv_0, 0.46193930405 AS sv_1, 0.405466882754 AS sv_2, 0.465086838571 AS sv_3, 0.982620358425 AS sv_4, 0.138066102342 AS sv_5, 0.611203720303 AS sv_6, 0.738520344608 AS sv_7, 0.399904452386 AS sv_8, 0.131814502662 AS sv_9 FROM DUAL UNION ALL SELECT 8 AS sv_idx, 3.25326437589 AS dual_coeff, 0.855894350088 AS sv_0, 0.544397417337 AS sv_1, 0.0524130810527 AS sv_2, 0.258676949566 AS sv_3, 0.0439907680821 AS sv_4, 0.235112464954 AS sv_5, 0.108423168192 AS sv_6, 0.733837397577 AS sv_7, 0.903667596861 AS sv_8, 0.666009227043 AS sv_9 FROM DUAL UNION ALL SELECT 9 AS sv_idx, 0.645127640383 AS dual_coeff, 0.25462890371 AS sv_0, 0.341121915639 AS sv_1, 0.169021186032 AS sv_2, 0.714313176349 AS sv_3, 0.0511748093871 AS sv_4, 0.0361396209783 AS sv_5, 0.466024640229 AS sv_6, 0.925685492528 AS sv_7, 0.109041051273 AS sv_8, 0.182159342425 AS sv_9 FROM DUAL UNION ALL SELECT 10 AS sv_idx, -2.5807659824 AS dual_coeff, 0.950416489881 AS sv_0, 0.171640230982 AS sv_1, 0.307981320094 AS sv_2, 0.863946682662 AS sv_3, 0.813521919466 AS sv_4, 0.0790592814827 AS sv_5, 0.226934237349 AS sv_6, 0.322823277809 AS sv_7, 0.935181987869 AS sv_8, 0.675633953028 AS sv_9 FROM DUAL UNION ALL SELECT 11 AS sv_idx, -0.783028136683 AS dual_coeff, 0.983552560423 AS sv_0, 0.382158151198 AS sv_1, 0.545398159489 AS sv_2, 0.492369051915 AS sv_3, 0.0622216676999 AS sv_4, 0.280520163877 AS sv_5, 0.970584914902 AS sv_6, 0.836204075223 AS sv_7, 0.54659959499 AS sv_8, 0.409384430728 AS sv_9 FROM DUAL UNION ALL SELECT 12 AS sv_idx, -4.20135102668 AS dual_coeff, 0.0489151044997 AS sv_0, 0.776853416241 AS sv_1, 0.330292331184 AS sv_2, 0.494821713979 AS sv_3, 0.536897740817 AS sv_4, 0.530389901881 AS sv_5, 0.850397258959 AS sv_6, 0.885137148778 AS sv_7, 0.528945715464 AS sv_8, 0.789794097264 AS sv_9 FROM DUAL UNION ALL SELECT 13 AS sv_idx, 0.971673816498 AS dual_coeff, 0.247149326157 AS sv_0, 0.466103548494 AS sv_1, 0.192161764548 AS sv_2, 0.764967168401 AS sv_3, 0.273079876768 AS sv_4, 0.278901899308 AS sv_5, 0.668386134364 AS sv_6, 0.0583738904093 AS sv_7, 0.677981221726 AS sv_8, 0.943669229847 AS sv_9 FROM DUAL UNION ALL SELECT 14 AS sv_idx, -2.19286170606 AS dual_coeff, 0.792275072697 AS sv_0, 0.240737959546 AS sv_1, 0.569441601005 AS sv_2, 0.20528689419 AS sv_3, 0.00460229339281 AS sv_4, 0.902192502352 AS sv_5, 0.537030755776 AS sv_6, 0.861705576001 AS sv_7, 0.659078536754 AS sv_8, 0.740130200885 AS sv_9 FROM DUAL UNION ALL SELECT 15 AS sv_idx, 4.17985792389 AS dual_coeff, 0.968762709575 AS sv_0, 0.375374348894 AS sv_1, 0.98833734267 AS sv_2, 0.825280679324 AS sv_3, 0.360952551018 AS sv_4, 0.32253492102 AS sv_5, 0.793393648108 AS sv_6, 0.856021447121 AS sv_7, 0.0667593452 AS sv_8, 0.738430092691 AS sv_9 FROM DUAL UNION ALL SELECT 16 AS sv_idx, -1.42210878751 AS dual_coeff, 0.231976697401 AS sv_0, 0.548865039152 AS sv_1, 0.327559930672 AS sv_2, 0.124428471662 AS sv_3, 0.222406229494 AS sv_4, 0.0401298454104 AS sv_5, 0.554355425261 AS sv_6, 0.690979829796 AS sv_7, 0.311851567453 AS sv_8, 0.519401172985 AS sv_9 FROM DUAL UNION ALL SELECT 17 AS sv_idx, -0.944435478022 AS dual_coeff, 0.897423180288 AS sv_0, 0.424095731473 AS sv_1, 0.353810258201 AS sv_2, 0.0552316149288 AS sv_3, 0.492072071465 AS sv_4, 0.230899478627 AS sv_5, 0.0897199198589 AS sv_6, 0.71725979563 AS sv_7, 0.975235164935 AS sv_8, 0.0664472011785 AS sv_9 FROM DUAL UNION ALL SELECT 18 AS sv_idx, -1.34851293969 AS dual_coeff, 0.695976524393 AS sv_0, 0.83810439965 AS sv_1, 0.650517858966 AS sv_2, 0.915962258811 AS sv_3, 0.377852458087 AS sv_4, 0.759360205065 AS sv_5, 0.419758176981 AS sv_6, 0.973591073169 AS sv_7, 0.668540047808 AS sv_8, 0.0195714223641 AS sv_9 FROM DUAL UNION ALL SELECT 19 AS sv_idx, -4.83300500446 AS dual_coeff, 0.947120454254 AS sv_0, 0.0250975001564 AS sv_1, 0.225952532783 AS sv_2, 0.0668333669649 AS sv_3, 0.834114280195 AS sv_4, 0.119798102714 AS sv_5, 0.990532279225 AS sv_6, 0.241078532686 AS sv_7, 0.107420805102 AS sv_8, 0.847981591984 AS sv_9 FROM DUAL UNION ALL SELECT 20 AS sv_idx, -1.00387176749 AS dual_coeff, 0.442505573633 AS sv_0, 0.51689176975 AS sv_1, 0.529113303634 AS sv_2, 0.375009827846 AS sv_3, 0.715171579563 AS sv_4, 0.873303183306 AS sv_5, 0.411058834072 AS sv_6, 0.951491903131 AS sv_7, 0.879799199483 AS sv_8, 0.561461852799 AS sv_9 FROM DUAL UNION ALL SELECT 21 AS sv_idx, 0.315847424032 AS dual_coeff, 0.52107235933 AS sv_0, 0.768835341727 AS sv_1, 0.518572619605 AS sv_2, 0.923362714781 AS sv_3, 0.941833839851 AS sv_4, 0.834077873617 AS sv_5, 0.900876994228 AS sv_6, 0.911582577245 AS sv_7, 0.453681221214 AS sv_8, 0.963550876898 AS sv_9 FROM DUAL UNION ALL SELECT 22 AS sv_idx, 0.910959592861 AS dual_coeff, 0.195520414813 AS sv_0, 0.11926506696 AS sv_1, 0.861303127206 AS sv_2, 0.36721687455 AS sv_3, 0.449547212755 AS sv_4, 0.52024570105 AS sv_5, 0.566710322023 AS sv_6, 0.180489368299 AS sv_7, 0.741276989661 AS sv_8, 0.0405027632484 AS sv_9 FROM DUAL UNION ALL SELECT 23 AS sv_idx, -2.46516851434 AS dual_coeff, 0.0193331456612 AS sv_0, 0.496134052331 AS sv_1, 0.307266049619 AS sv_2, 0.1832804616 AS sv_3, 0.0261675377432 AS sv_4, 0.560400762916 AS sv_5, 0.194485541407 AS sv_6, 0.0902309645882 AS sv_7, 0.353673252264 AS sv_8, 0.844216763155 AS sv_9 FROM DUAL UNION ALL SELECT 24 AS sv_idx, 2.82966461216 AS dual_coeff, 0.291051042331 AS sv_0, 0.0088628328239 AS sv_1, 0.00917094002554 AS sv_2, 0.0957150219395 AS sv_3, 0.461746958987 AS sv_4, 0.789821046769 AS sv_5, 0.469283959438 AS sv_6, 0.149221362114 AS sv_7, 0.172405205344 AS sv_8, 0.619296677388 AS sv_9 FROM DUAL UNION ALL SELECT 25 AS sv_idx, 2.87723237392 AS dual_coeff, 0.83218250599 AS sv_0, 0.568223324984 AS sv_1, 0.0960193606347 AS sv_2, 0.192972084281 AS sv_3, 0.518066975106 AS sv_4, 0.374388353058 AS sv_5, 0.92010941471 AS sv_6, 0.568464447772 AS sv_7, 0.403741422086 AS sv_8, 0.521864467391 AS sv_9 FROM DUAL UNION ALL SELECT 26 AS sv_idx, 3.03795506538 AS dual_coeff, 0.294205461798 AS sv_0, 0.124316406557 AS sv_1, 0.00110349585768 AS sv_2, 0.173949304497 AS sv_3, 0.21941129707 AS sv_4, 0.871966329282 AS sv_5, 0.523845847139 AS sv_6, 0.464969876099 AS sv_7, 0.249666716507 AS sv_8, 0.267832663033 AS sv_9 FROM DUAL UNION ALL SELECT 27 AS sv_idx, -3.10619604781 AS dual_coeff, 0.92921289743 AS sv_0, 0.120602570532 AS sv_1, 0.286051469556 AS sv_2, 0.886338539018 AS sv_3, 0.219513087398 AS sv_4, 0.385983462039 AS sv_5, 0.919978094111 AS sv_6, 0.874967245079 AS sv_7, 0.588521632565 AS sv_8, 0.517667264861 AS sv_9 FROM DUAL UNION ALL SELECT 28 AS sv_idx, -2.78450503641 AS dual_coeff, 0.61165362489 AS sv_0, 0.0402041052602 AS sv_1, 0.751490465032 AS sv_2, 0.558817227755 AS sv_3, 0.979207512144 AS sv_4, 0.864110551787 AS sv_5, 0.882564178793 AS sv_6, 0.393437607363 AS sv_7, 0.727933962103 AS sv_8, 0.53107921748 AS sv_9 FROM DUAL UNION ALL SELECT 29 AS sv_idx, -2.77347073745 AS dual_coeff, 0.0468577829472 AS sv_0, 0.828536607039 AS sv_1, 0.843008344718 AS sv_2, 0.378930857707 AS sv_3, 0.0432218226043 AS sv_4, 0.211423981162 AS sv_5, 0.959101792859 AS sv_6, 0.966783671167 AS sv_7, 0.319661905339 AS sv_8, 0.736778223346 AS sv_9 FROM DUAL UNION ALL SELECT 30 AS sv_idx, -1.25083842181 AS dual_coeff, 0.806231182094 AS sv_0, 0.25866650063 AS sv_1, 0.325923769653 AS sv_2, 0.352696843503 AS sv_3, 0.956171695254 AS sv_4, 0.475312145169 AS sv_5, 0.43573984824 AS sv_6, 0.303669602238 AS sv_7, 0.654185481048 AS sv_8, 0.931625082921 AS sv_9 FROM DUAL UNION ALL SELECT 31 AS sv_idx, 1.1940739149 AS dual_coeff, 0.755537136059 AS sv_0, 0.695349607715 AS sv_1, 0.197297919462 AS sv_2, 0.55309493945 AS sv_3, 0.472897205609 AS sv_4, 0.947317619893 AS sv_5, 0.767488262414 AS sv_6, 0.951124348803 AS sv_7, 0.0734488032168 AS sv_8, 0.526138156771 AS sv_9 FROM DUAL UNION ALL SELECT 32 AS sv_idx, -1.55462325715 AS dual_coeff, 0.254369097995 AS sv_0, 0.202282809987 AS sv_1, 0.468909816703 AS sv_2, 0.133181105174 AS sv_3, 0.672086536197 AS sv_4, 0.127542240181 AS sv_5, 0.472867811028 AS sv_6, 0.0395747670897 AS sv_7, 0.159209029837 AS sv_8, 0.955417127007 AS sv_9 FROM DUAL UNION ALL SELECT 33 AS sv_idx, 2.10454372248 AS dual_coeff, 0.624278269212 AS sv_0, 0.827247648239 AS sv_1, 0.861632892295 AS sv_2, 0.88261458057 AS sv_3, 0.66566603807 AS sv_4, 0.68432947717 AS sv_5, 0.468853384566 AS sv_6, 0.363198731151 AS sv_7, 0.554362700647 AS sv_8, 0.307996869187 AS sv_9 FROM DUAL UNION ALL SELECT 34 AS sv_idx, -0.776794748582 AS dual_coeff, 0.263398393631 AS sv_0, 0.661130499723 AS sv_1, 0.673328998315 AS sv_2, 0.628348152185 AS sv_3, 0.159008038436 AS sv_4, 0.347796819756 AS sv_5, 0.595164588104 AS sv_6, 0.477326743564 AS sv_7, 0.508040233269 AS sv_8, 0.341952668551 AS sv_9 FROM DUAL UNION ALL SELECT 35 AS sv_idx, -0.336620737556 AS dual_coeff, 0.565593685514 AS sv_0, 0.387590910763 AS sv_1, 0.377938895483 AS sv_2, 0.693947771679 AS sv_3, 0.417564752977 AS sv_4, 0.445927099331 AS sv_5, 0.339232353654 AS sv_6, 0.233138987345 AS sv_7, 0.975994532748 AS sv_8, 0.0982088200161 AS sv_9 FROM DUAL UNION ALL SELECT 36 AS sv_idx, 1.36779545452 AS dual_coeff, 0.639280898035 AS sv_0, 0.79872220296 AS sv_1, 0.191751843307 AS sv_2, 0.416298415818 AS sv_3, 0.411497052984 AS sv_4, 0.579925425823 AS sv_5, 0.950957361437 AS sv_6, 0.384621281902 AS sv_7, 0.981573703031 AS sv_8, 0.183104761849 AS sv_9 FROM DUAL UNION ALL SELECT 37 AS sv_idx, 1.06805363273 AS dual_coeff, 0.69913764162 AS sv_0, 0.154362139317 AS sv_1, 0.0111398368017 AS sv_2, 0.162104527876 AS sv_3, 0.904007601522 AS sv_4, 0.93576717665 AS sv_5, 0.447023962569 AS sv_6, 0.796611520154 AS sv_7, 0.840061140375 AS sv_8, 0.0401289582614 AS sv_9 FROM DUAL UNION ALL SELECT 38 AS sv_idx, -6.21422551667 AS dual_coeff, 0.832865944309 AS sv_0, 0.957976760867 AS sv_1, 0.301317820456 AS sv_2, 0.611500951712 AS sv_3, 0.356204125572 AS sv_4, 0.451938643219 AS sv_5, 0.325605958359 AS sv_6, 0.536203894592 AS sv_7, 0.323524365112 AS sv_8, 0.974650519779 AS sv_9 FROM DUAL UNION ALL SELECT 39 AS sv_idx, 0.189383641274 AS dual_coeff, 0.763640834275 AS sv_0, 0.684911254705 AS sv_1, 0.285669048025 AS sv_2, 0.783995301933 AS sv_3, 0.789689765627 AS sv_4, 0.387966461668 AS sv_5, 0.787119456071 AS sv_6, 0.802408148604 AS sv_7, 0.485225727677 AS sv_8, 0.038331213089 AS sv_9 FROM DUAL UNION ALL SELECT 40 AS sv_idx, -1.63180229206 AS dual_coeff, 0.273794968232 AS sv_0, 0.347078537772 AS sv_1, 0.36495386757 AS sv_2, 0.0029573174824 AS sv_3, 0.193114540388 AS sv_4, 0.978115580693 AS sv_5, 0.585206997352 AS sv_6, 0.466145031104 AS sv_7, 0.993978605826 AS sv_8, 0.29012420103 AS sv_9 FROM DUAL UNION ALL SELECT 41 AS sv_idx, 3.83519368969 AS dual_coeff, 0.467981192301 AS sv_0, 0.765591829033 AS sv_1, 0.945495692976 AS sv_2, 0.59905347435 AS sv_3, 0.948563931207 AS sv_4, 0.286524529369 AS sv_5, 0.698095098797 AS sv_6, 0.902674235501 AS sv_7, 0.192390043435 AS sv_8, 0.908890819092 AS sv_9 FROM DUAL UNION ALL SELECT 42 AS sv_idx, 2.53637977916 AS dual_coeff, 0.327581650334 AS sv_0, 0.968847957448 AS sv_1, 0.0405377148383 AS sv_2, 0.154135227622 AS sv_3, 0.358093996355 AS sv_4, 0.648523844719 AS sv_5, 0.0554942645489 AS sv_6, 0.914843838153 AS sv_7, 0.21060114951 AS sv_8, 0.0224355070686 AS sv_9 FROM DUAL UNION ALL SELECT 43 AS sv_idx, -1.57575493361 AS dual_coeff, 0.120868857407 AS sv_0, 0.325089796036 AS sv_1, 0.506517422034 AS sv_2, 0.822554441551 AS sv_3, 0.2129896698 AS sv_4, 0.0311173166682 AS sv_5, 0.639298700044 AS sv_6, 0.0501712688996 AS sv_7, 0.936154702718 AS sv_8, 0.13256584618 AS sv_9 FROM DUAL UNION ALL SELECT 44 AS sv_idx, -1.20676333284 AS dual_coeff, 0.312602529773 AS sv_0, 0.304685558228 AS sv_1, 0.461298954522 AS sv_2, 0.76161399576 AS sv_3, 0.36350626111 AS sv_4, 0.948613906347 AS sv_5, 0.493514034704 AS sv_6, 0.37777541088 AS sv_7, 0.506571953036 AS sv_8, 0.510752844218 AS sv_9 FROM DUAL UNION ALL SELECT 45 AS sv_idx, -1.01919762385 AS dual_coeff, 0.876402440597 AS sv_0, 0.568146561397 AS sv_1, 0.542657153077 AS sv_2, 0.336340968071 AS sv_3, 0.255062339565 AS sv_4, 0.0995361574555 AS sv_5, 0.570207948317 AS sv_6, 0.915432898622 AS sv_7, 0.569691954359 AS sv_8, 0.304459461642 AS sv_9 FROM DUAL UNION ALL SELECT 46 AS sv_idx, 3.31893339575 AS dual_coeff, 0.86112991255 AS sv_0, 0.560663042806 AS sv_1, 0.0706912350014 AS sv_2, 0.58569571847 AS sv_3, 0.139665333863 AS sv_4, 0.676675373799 AS sv_5, 0.221586857134 AS sv_6, 0.37540420225 AS sv_7, 0.99142315485 AS sv_8, 0.774571749221 AS sv_9 FROM DUAL UNION ALL SELECT 47 AS sv_idx, 3.01334143678 AS dual_coeff, 0.821048817096 AS sv_0, 0.748885284054 AS sv_1, 0.00688179026181 AS sv_2, 0.433315049353 AS sv_3, 0.787496961744 AS sv_4, 0.199853234687 AS sv_5, 0.789123122964 AS sv_6, 0.243791861526 AS sv_7, 0.104229378964 AS sv_8, 0.627381797073 AS sv_9 FROM DUAL UNION ALL SELECT 48 AS sv_idx, 1.10008938276 AS dual_coeff, 0.726839184346 AS sv_0, 0.171514997165 AS sv_1, 0.0937777687099 AS sv_2, 0.891023535357 AS sv_3, 0.475111873374 AS sv_4, 0.745236126399 AS sv_5, 0.249402855214 AS sv_6, 0.117863237074 AS sv_7, 0.317172149146 AS sv_8, 0.751870029329 AS sv_9 FROM DUAL UNION ALL SELECT 49 AS sv_idx, 4.41724967036 AS dual_coeff, 0.499333950556 AS sv_0, 0.870348419049 AS sv_1, 0.967195351012 AS sv_2, 0.770457653131 AS sv_3, 0.231307632519 AS sv_4, 0.650287471155 AS sv_5, 0.787833916672 AS sv_6, 0.482277924387 AS sv_7, 0.487508227505 AS sv_8, 0.421589479338 AS sv_9 FROM DUAL UNION ALL SELECT 50 AS sv_idx, -0.925855411733 AS dual_coeff, 0.172063576618 AS sv_0, 0.203778677141 AS sv_1, 0.415289664988 AS sv_2, 0.629378544591 AS sv_3, 0.839645006172 AS sv_4, 0.427616599359 AS sv_5, 0.744821079997 AS sv_6, 0.0169362599648 AS sv_7, 0.255778473377 AS sv_8, 0.793231505352 AS sv_9 FROM DUAL UNION ALL SELECT 51 AS sv_idx, -1.35985462476 AS dual_coeff, 0.193203009678 AS sv_0, 0.617200329344 AS sv_1, 0.73836517959 AS sv_2, 0.160357197701 AS sv_3, 0.601692829123 AS sv_4, 0.235603027608 AS sv_5, 0.858477736192 AS sv_6, 0.226421502215 AS sv_7, 0.843046990593 AS sv_8, 0.083868956033 AS sv_9 FROM DUAL UNION ALL SELECT 52 AS sv_idx, -5.291162753 AS dual_coeff, 0.019808597832 AS sv_0, 0.885577515868 AS sv_1, 0.30305467819 AS sv_2, 0.121885749382 AS sv_3, 0.253017696411 AS sv_4, 0.746686922662 AS sv_5, 0.825534712914 AS sv_6, 0.852503588901 AS sv_7, 0.05904340211 AS sv_8, 0.682279994421 AS sv_9 FROM DUAL UNION ALL SELECT 53 AS sv_idx, 0.73176476229 AS dual_coeff, 0.359397540419 AS sv_0, 0.197496656731 AS sv_1, 0.875089216159 AS sv_2, 0.942094901733 AS sv_3, 0.510426857353 AS sv_4, 0.714648933952 AS sv_5, 0.0682483845548 AS sv_6, 0.896048714596 AS sv_7, 0.442464062103 AS sv_8, 0.254641950451 AS sv_9 FROM DUAL UNION ALL SELECT 54 AS sv_idx, 1.58009603358 AS dual_coeff, 0.291969850742 AS sv_0, 0.514794100368 AS sv_1, 0.846599898947 AS sv_2, 0.895002307714 AS sv_3, 0.0939686745878 AS sv_4, 0.912300651034 AS sv_5, 0.63894481398 AS sv_6, 0.362820805274 AS sv_7, 0.24595196818 AS sv_8, 0.297074427042 AS sv_9 FROM DUAL UNION ALL SELECT 55 AS sv_idx, -3.79272871241 AS dual_coeff, 0.533674481968 AS sv_0, 0.0433866999619 AS sv_1, 0.411577131683 AS sv_2, 0.389746591158 AS sv_3, 0.890831888577 AS sv_4, 0.505161449776 AS sv_5, 0.266868101437 AS sv_6, 0.705352444592 AS sv_7, 0.457797723828 AS sv_8, 0.49635904969 AS sv_9 FROM DUAL UNION ALL SELECT 56 AS sv_idx, -0.126119755469 AS dual_coeff, 0.201721287129 AS sv_0, 0.79066793156 AS sv_1, 0.853245849063 AS sv_2, 0.487454271477 AS sv_3, 0.192082219684 AS sv_4, 0.521533056425 AS sv_5, 0.0185155253536 AS sv_6, 0.478926863346 AS sv_7, 0.23300377782 AS sv_8, 0.145599250995 AS sv_9 FROM DUAL UNION ALL SELECT 57 AS sv_idx, -1.27272124053 AS dual_coeff, 0.292608015584 AS sv_0, 0.320000132007 AS sv_1, 0.328973394023 AS sv_2, 0.0214104528419 AS sv_3, 0.252077482515 AS sv_4, 0.0251577984572 AS sv_5, 0.307394395905 AS sv_6, 0.668512638075 AS sv_7, 0.297510452746 AS sv_8, 0.931236703297 AS sv_9 FROM DUAL UNION ALL SELECT 58 AS sv_idx, -0.667756471673 AS dual_coeff, 0.015807096808 AS sv_0, 0.314618468009 AS sv_1, 0.305858663581 AS sv_2, 0.9589706258 AS sv_3, 0.240487779706 AS sv_4, 0.319982183618 AS sv_5, 0.914792588291 AS sv_6, 0.247090669402 AS sv_7, 0.320613645724 AS sv_8, 0.277279946758 AS sv_9 FROM DUAL UNION ALL SELECT 59 AS sv_idx, 4.8865873385 AS dual_coeff, 0.571800910227 AS sv_0, 0.521539315846 AS sv_1, 0.971130057677 AS sv_2, 0.927046103007 AS sv_3, 0.343012921669 AS sv_4, 0.439761996942 AS sv_5, 0.582516035736 AS sv_6, 0.227623111825 AS sv_7, 0.283195608768 AS sv_8, 0.153254815163 AS sv_9 FROM DUAL UNION ALL SELECT 60 AS sv_idx, -10.1761982621 AS dual_coeff, 0.913030799484 AS sv_0, 0.974513935582 AS sv_1, 0.631187781079 AS sv_2, 0.436401121058 AS sv_3, 0.139491936244 AS sv_4, 0.843991690773 AS sv_5, 0.502358484666 AS sv_6, 0.581316682136 AS sv_7, 0.4655677061 AS sv_8, 0.507795978001 AS sv_9 FROM DUAL UNION ALL SELECT 61 AS sv_idx, 3.20623733697 AS dual_coeff, 0.514530951111 AS sv_0, 0.398432192 AS sv_1, 0.0713982247839 AS sv_2, 0.166916642854 AS sv_3, 0.726315661025 AS sv_4, 0.284221121896 AS sv_5, 0.652160106013 AS sv_6, 0.0498880006136 AS sv_7, 0.265492311875 AS sv_8, 0.835547103448 AS sv_9 FROM DUAL UNION ALL SELECT 62 AS sv_idx, 3.32157615922 AS dual_coeff, 0.850767875909 AS sv_0, 0.606520577189 AS sv_1, 0.088315185138 AS sv_2, 0.904328322154 AS sv_3, 0.526502459359 AS sv_4, 0.349159170177 AS sv_5, 0.88898594211 AS sv_6, 0.547298440971 AS sv_7, 0.0171867530175 AS sv_8, 0.701784438386 AS sv_9 FROM DUAL UNION ALL SELECT 63 AS sv_idx, 4.53274783722 AS dual_coeff, 0.392696001902 AS sv_0, 0.73006824231 AS sv_1, 0.00307767165409 AS sv_2, 0.513367059139 AS sv_3, 0.140984108143 AS sv_4, 0.0996189305152 AS sv_5, 0.415845295631 AS sv_6, 0.894586665912 AS sv_7, 0.371302777151 AS sv_8, 0.519435713274 AS sv_9 FROM DUAL UNION ALL SELECT 64 AS sv_idx, -0.56732085584 AS dual_coeff, 0.579709403486 AS sv_0, 0.355817336543 AS sv_1, 0.429588837115 AS sv_2, 0.674107084761 AS sv_3, 0.238561181256 AS sv_4, 0.502274890437 AS sv_5, 0.450995031411 AS sv_6, 0.558234220571 AS sv_7, 0.166697119417 AS sv_8, 0.261052135803 AS sv_9 FROM DUAL UNION ALL SELECT 65 AS sv_idx, -0.528150658461 AS dual_coeff, 0.582772167255 AS sv_0, 0.270294767475 AS sv_1, 0.26571315074 AS sv_2, 0.312342242952 AS sv_3, 0.837081597901 AS sv_4, 0.145003513282 AS sv_5, 0.296457987222 AS sv_6, 0.186364456166 AS sv_7, 0.0205464399859 AS sv_8, 0.130500998777 AS sv_9 FROM DUAL UNION ALL SELECT 66 AS sv_idx, 1.2873687608 AS dual_coeff, 0.619149889642 AS sv_0, 0.544803481221 AS sv_1, 0.739795577734 AS sv_2, 0.234553421709 AS sv_3, 0.0993679601396 AS sv_4, 0.575042412591 AS sv_5, 0.782295765711 AS sv_6, 0.670775994666 AS sv_7, 0.321841899324 AS sv_8, 0.711553794412 AS sv_9 FROM DUAL UNION ALL SELECT 67 AS sv_idx, 2.01436056574 AS dual_coeff, 0.237531573757 AS sv_0, 0.660461536654 AS sv_1, 0.947001170339 AS sv_2, 0.340213192062 AS sv_3, 0.229933493601 AS sv_4, 0.308288587418 AS sv_5, 0.513031083538 AS sv_6, 0.816175868489 AS sv_7, 0.437294667533 AS sv_8, 0.996904171035 AS sv_9 FROM DUAL UNION ALL SELECT 68 AS sv_idx, 2.53874452805 AS dual_coeff, 0.742010333325 AS sv_0, 0.574545396645 AS sv_1, 0.101710993841 AS sv_2, 0.0681653499248 AS sv_3, 0.741825200472 AS sv_4, 0.183275480787 AS sv_5, 0.198857241285 AS sv_6, 0.811973683729 AS sv_7, 0.49692864993 AS sv_8, 0.498082198196 AS sv_9 FROM DUAL UNION ALL SELECT 69 AS sv_idx, -1.19192834566 AS dual_coeff, 0.195767975938 AS sv_0, 0.122960970234 AS sv_1, 0.408173717248 AS sv_2, 0.0259894038175 AS sv_3, 0.157605836669 AS sv_4, 0.499476155189 AS sv_5, 0.913718177073 AS sv_6, 0.0379469157316 AS sv_7, 0.976287099752 AS sv_8, 0.983231519391 AS sv_9 FROM DUAL UNION ALL SELECT 70 AS sv_idx, 1.3060331195 AS dual_coeff, 0.329182658198 AS sv_0, 0.810699399907 AS sv_1, 0.136186826158 AS sv_2, 0.363029266323 AS sv_3, 0.770804650357 AS sv_4, 0.421958748407 AS sv_5, 0.143064004294 AS sv_6, 0.852822464845 AS sv_7, 0.727516317731 AS sv_8, 0.842106223333 AS sv_9 FROM DUAL UNION ALL SELECT 71 AS sv_idx, 0.0415748599485 AS dual_coeff, 0.47894376322 AS sv_0, 0.601400778195 AS sv_1, 0.67995030173 AS sv_2, 0.456707606092 AS sv_3, 0.675900015675 AS sv_4, 0.347961635907 AS sv_5, 0.169783240069 AS sv_6, 0.797253745973 AS sv_7, 0.431340928247 AS sv_8, 0.109209230613 AS sv_9 FROM DUAL UNION ALL SELECT 72 AS sv_idx, -0.0112919283601 AS dual_coeff, 0.0413385442201 AS sv_0, 0.14990501166 AS sv_1, 0.344496092832 AS sv_2, 0.901427161262 AS sv_3, 0.472770275797 AS sv_4, 0.549476834929 AS sv_5, 0.72371753197 AS sv_6, 0.0897890915951 AS sv_7, 0.958231256086 AS sv_8, 0.862985185808 AS sv_9 FROM DUAL UNION ALL SELECT 73 AS sv_idx, 3.79404244893 AS dual_coeff, 0.273288063513 AS sv_0, 0.364548683311 AS sv_1, 0.000272178381105 AS sv_2, 0.677651836111 AS sv_3, 0.497870618683 AS sv_4, 0.542535013766 AS sv_5, 0.60910442715 AS sv_6, 0.276137647833 AS sv_7, 0.27475173518 AS sv_8, 0.128469601127 AS sv_9 FROM DUAL UNION ALL SELECT 74 AS sv_idx, 1.41321707486 AS dual_coeff, 0.613889436014 AS sv_0, 0.408284879351 AS sv_1, 0.203875588514 AS sv_2, 0.611397722085 AS sv_3, 0.239661681307 AS sv_4, 0.39291066483 AS sv_5, 0.732863461476 AS sv_6, 0.861966644136 AS sv_7, 0.83237201593 AS sv_8, 0.901042790721 AS sv_9 FROM DUAL UNION ALL SELECT 75 AS sv_idx, 0.872123171792 AS dual_coeff, 0.948631957163 AS sv_0, 0.304037587541 AS sv_1, 0.830023751398 AS sv_2, 0.689040144337 AS sv_3, 0.389582769406 AS sv_4, 0.626772170684 AS sv_5, 0.452624078704 AS sv_6, 0.295078927937 AS sv_7, 0.887234370291 AS sv_8, 0.573598262659 AS sv_9 FROM DUAL UNION ALL SELECT 76 AS sv_idx, -3.63306983082 AS dual_coeff, 0.941499612716 AS sv_0, 0.147360824133 AS sv_1, 0.416328689579 AS sv_2, 0.504214458708 AS sv_3, 0.278573733609 AS sv_4, 0.579709673807 AS sv_5, 0.940008844299 AS sv_6, 0.777577854686 AS sv_7, 0.899411492885 AS sv_8, 0.945415372804 AS sv_9 FROM DUAL UNION ALL SELECT 77 AS sv_idx, 0.430376265972 AS dual_coeff, 0.422903042571 AS sv_0, 0.713587701292 AS sv_1, 0.402071459491 AS sv_2, 0.773976802167 AS sv_3, 0.750591602488 AS sv_4, 0.0451360236324 AS sv_5, 0.825169227539 AS sv_6, 0.0604591533478 AS sv_7, 0.919195524173 AS sv_8, 0.589451639608 AS sv_9 FROM DUAL UNION ALL SELECT 78 AS sv_idx, 0.810113112682 AS dual_coeff, 0.168379510006 AS sv_0, 0.147029408443 AS sv_1, 0.12914841641 AS sv_2, 0.312358880735 AS sv_3, 0.655131142127 AS sv_4, 0.392483749212 AS sv_5, 0.102384192584 AS sv_6, 0.879246762163 AS sv_7, 0.0717458879909 AS sv_8, 0.348197400001 AS sv_9 FROM DUAL UNION ALL SELECT 79 AS sv_idx, -0.370152393771 AS dual_coeff, 0.20517110792 AS sv_0, 0.993573612764 AS sv_1, 0.841048307626 AS sv_2, 0.722163694842 AS sv_3, 0.789245180766 AS sv_4, 0.364950235053 AS sv_5, 0.973448601562 AS sv_6, 0.835059422343 AS sv_7, 0.30579770643 AS sv_8, 0.490789869243 AS sv_9 FROM DUAL UNION ALL SELECT 80 AS sv_idx, -0.0848752284606 AS dual_coeff, 0.814628712598 AS sv_0, 0.6074488271 AS sv_1, 0.400163113215 AS sv_2, 0.767879237734 AS sv_3, 0.61885675713 AS sv_4, 0.752607104876 AS sv_5, 0.666494441252 AS sv_6, 0.353061833097 AS sv_7, 0.895697881788 AS sv_8, 0.435804215724 AS sv_9 FROM DUAL UNION ALL SELECT 81 AS sv_idx, 1.62099420756 AS dual_coeff, 0.56709856842 AS sv_0, 0.928248203137 AS sv_1, 0.825821267852 AS sv_2, 0.419279467774 AS sv_3, 0.144408580011 AS sv_4, 0.350367294234 AS sv_5, 0.947232699178 AS sv_6, 0.0285188937642 AS sv_7, 0.219013177465 AS sv_8, 0.459750629859 AS sv_9 FROM DUAL UNION ALL SELECT 82 AS sv_idx, 3.0972528628 AS dual_coeff, 0.323074906502 AS sv_0, 0.596011562487 AS sv_1, 0.979732996545 AS sv_2, 0.0151434128829 AS sv_3, 0.911833190177 AS sv_4, 0.557502987348 AS sv_5, 0.470498776927 AS sv_6, 0.0198861397242 AS sv_7, 0.835510790416 AS sv_8, 0.317897298039 AS sv_9 FROM DUAL UNION ALL SELECT 83 AS sv_idx, 4.23200188234 AS dual_coeff, 0.548537279896 AS sv_0, 0.489248173864 AS sv_1, 0.0351609687379 AS sv_2, 0.167176938488 AS sv_3, 0.490468083117 AS sv_4, 0.17319012491 AS sv_5, 0.894076296321 AS sv_6, 0.377668474882 AS sv_7, 0.48585729534 AS sv_8, 0.5499035891 AS sv_9 FROM DUAL UNION ALL SELECT 84 AS sv_idx, -0.152421972938 AS dual_coeff, 0.724211678033 AS sv_0, 0.826413876335 AS sv_1, 0.175059503981 AS sv_2, 0.0710321201531 AS sv_3, 0.857136258134 AS sv_4, 0.473641330335 AS sv_5, 0.723964716252 AS sv_6, 0.913953038682 AS sv_7, 0.145373086923 AS sv_8, 0.709259645623 AS sv_9 FROM DUAL UNION ALL SELECT 85 AS sv_idx, 1.26278283441 AS dual_coeff, 0.452461725229 AS sv_0, 0.621658879241 AS sv_1, 0.268907771473 AS sv_2, 0.717687075762 AS sv_3, 0.249246353632 AS sv_4, 0.492186071766 AS sv_5, 0.619856120659 AS sv_6, 0.374378956631 AS sv_7, 0.850660253572 AS sv_8, 0.615444074382 AS sv_9 FROM DUAL UNION ALL SELECT 86 AS sv_idx, 3.7215865407 AS dual_coeff, 0.773677981256 AS sv_0, 0.475826302686 AS sv_1, 0.0628476879099 AS sv_2, 0.245396086478 AS sv_3, 0.214579965919 AS sv_4, 0.313723222647 AS sv_5, 0.00718901426874 AS sv_6, 0.172057223891 AS sv_7, 0.463869687258 AS sv_8, 0.527653859842 AS sv_9 FROM DUAL UNION ALL SELECT 87 AS sv_idx, 2.31380639631 AS dual_coeff, 0.308348074317 AS sv_0, 0.218793898302 AS sv_1, 0.958440304631 AS sv_2, 0.892958555435 AS sv_3, 0.692854482305 AS sv_4, 0.286709418774 AS sv_5, 0.288564693407 AS sv_6, 0.575058617539 AS sv_7, 0.856069559512 AS sv_8, 0.359921077774 AS sv_9 FROM DUAL UNION ALL SELECT 88 AS sv_idx, -1.69240006692 AS dual_coeff, 0.237091751414 AS sv_0, 0.613007208822 AS sv_1, 0.502425972999 AS sv_2, 0.28342412159 AS sv_3, 0.367969868739 AS sv_4, 0.545195779034 AS sv_5, 0.208320102318 AS sv_6, 0.152064744675 AS sv_7, 0.0511864021443 AS sv_8, 0.520298384298 AS sv_9 FROM DUAL UNION ALL SELECT 89 AS sv_idx, 0.594746192332 AS dual_coeff, 0.0127127393511 AS sv_0, 0.218520041881 AS sv_1, 0.185717855324 AS sv_2, 0.626032536015 AS sv_3, 0.430990427618 AS sv_4, 0.277577528698 AS sv_5, 0.710243123325 AS sv_6, 0.431427333659 AS sv_7, 0.78620844937 AS sv_8, 0.311717471928 AS sv_9 FROM DUAL UNION ALL SELECT 90 AS sv_idx, -2.70319312464 AS dual_coeff, 0.928938645638 AS sv_0, 0.744996428574 AS sv_1, 0.224722737657 AS sv_2, 0.0677751672802 AS sv_3, 0.305331575129 AS sv_4, 0.643154666849 AS sv_5, 0.374490424535 AS sv_6, 0.224808548466 AS sv_7, 0.34776826585 AS sv_8, 0.409173179028 AS sv_9 FROM DUAL UNION ALL SELECT 91 AS sv_idx, -3.84801913885 AS dual_coeff, 0.0904312271101 AS sv_0, 0.835547048757 AS sv_1, 0.442685229828 AS sv_2, 0.988594405013 AS sv_3, 0.269547669484 AS sv_4, 0.118543861962 AS sv_5, 0.640858290194 AS sv_6, 0.410261399758 AS sv_7, 0.729156559614 AS sv_8, 0.345291117455 AS sv_9 FROM DUAL UNION ALL SELECT 92 AS sv_idx, 0.0492185269624 AS dual_coeff, 0.304205527916 AS sv_0, 0.811911813911 AS sv_1, 0.739457650412 AS sv_2, 0.759116791036 AS sv_3, 0.63009631446 AS sv_4, 0.449698860838 AS sv_5, 0.491030136509 AS sv_6, 0.502740553507 AS sv_7, 0.588960839813 AS sv_8, 0.401398893703 AS sv_9 FROM DUAL UNION ALL SELECT 93 AS sv_idx, -1.64346090123 AS dual_coeff, 0.620255278427 AS sv_0, 0.978325224104 AS sv_1, 0.480411951995 AS sv_2, 0.955892077612 AS sv_3, 0.574139227409 AS sv_4, 0.787750996154 AS sv_5, 0.701116886315 AS sv_6, 0.024203393141 AS sv_7, 0.347324404575 AS sv_8, 0.127583681409 AS sv_9 FROM DUAL UNION ALL SELECT 94 AS sv_idx, 2.53910313292 AS dual_coeff, 0.577501221756 AS sv_0, 0.701648294902 AS sv_1, 0.141342084853 AS sv_2, 0.177146600912 AS sv_3, 0.00677988677312 AS sv_4, 0.377067600538 AS sv_5, 0.359923912727 AS sv_6, 0.787757723357 AS sv_7, 0.4652943369 AS sv_8, 0.735106990608 AS sv_9 FROM DUAL UNION ALL SELECT 95 AS sv_idx, 1.53791076385 AS dual_coeff, 0.72057518883 AS sv_0, 0.86748381802 AS sv_1, 0.939053565963 AS sv_2, 0.847822829071 AS sv_3, 0.149342663604 AS sv_4, 0.00459967551456 AS sv_5, 0.555095832211 AS sv_6, 0.649524760847 AS sv_7, 0.473722290687 AS sv_8, 0.23918346148 AS sv_9 FROM DUAL UNION ALL SELECT 96 AS sv_idx, 1.20221857474 AS dual_coeff, 0.361245305408 AS sv_0, 0.966914842799 AS sv_1, 0.183143936388 AS sv_2, 0.20006129869 AS sv_3, 0.29677638387 AS sv_4, 0.175063414318 AS sv_5, 0.604507703402 AS sv_6, 0.542400099965 AS sv_7, 0.125431848677 AS sv_8, 0.483536305921 AS sv_9 FROM DUAL UNION ALL SELECT 97 AS sv_idx, -0.911112608632 AS dual_coeff, 0.164878169236 AS sv_0, 0.0526628625397 AS sv_1, 0.381778915354 AS sv_2, 0.526054549043 AS sv_3, 0.921212808112 AS sv_4, 0.641612186846 AS sv_5, 0.715089555056 AS sv_6, 0.450395227065 AS sv_7, 0.296976394674 AS sv_8, 0.536766693157 AS sv_9 FROM DUAL UNION ALL SELECT 98 AS sv_idx, 1.39728296259 AS dual_coeff, 0.151629417243 AS sv_0, 0.513861524789 AS sv_1, 0.0620232211698 AS sv_2, 0.295277445883 AS sv_3, 0.315720989293 AS sv_4, 0.596286648582 AS sv_5, 0.866530192225 AS sv_6, 0.777640312119 AS sv_7, 0.691847626014 AS sv_8, 0.685559333942 AS sv_9 FROM DUAL UNION ALL SELECT 99 AS sv_idx, -2.86273407534 AS dual_coeff, 0.585159732368 AS sv_0, 0.0974427879754 AS sv_1, 0.337192677901 AS sv_2, 0.541615728097 AS sv_3, 0.0587304496919 AS sv_4, 0.891568579197 AS sv_5, 0.694733302956 AS sv_6, 0.820861001012 AS sv_7, 0.731196118199 AS sv_8, 0.00331415726701 AS sv_9 FROM DUAL) "Values"), 
kernel_cte AS 
(SELECT t."KEY" AS "KEY", t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv."KEY" AS "KEY", sum(full_join_data_sv.dot_prod1) AS dot_product 
FROM (SELECT "ADS"."KEY" AS "KEY", "SV_data".dual_coeff * ("ADS"."Feature_0" * "SV_data".sv_0 + "ADS"."Feature_1" * "SV_data".sv_1 + "ADS"."Feature_2" * "SV_data".sv_2 + "ADS"."Feature_3" * "SV_data".sv_3 + "ADS"."Feature_4" * "SV_data".sv_4 + "ADS"."Feature_5" * "SV_data".sv_5 + "ADS"."Feature_6" * "SV_data".sv_6 + "ADS"."Feature_7" * "SV_data".sv_7 + "ADS"."Feature_8" * "SV_data".sv_8 + "ADS"."Feature_9" * "SV_data".sv_9) AS dot_prod1 
FROM "INPUT_DATA" "ADS", "SV_data") full_join_data_sv GROUP BY full_join_data_sv."KEY") t)
 SELECT kernel_cte."KEY" AS "KEY", kernel_cte.dot_product AS "Estimator" 
FROM kernel_cte