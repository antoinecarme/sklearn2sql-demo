-- This SQL code was generated by scikit2sql (development version).
-- Copyright 2017

WITH `SV_data` AS 
(SELECT `Values`.sv_idx AS sv_idx, `Values`.dual_coeff AS dual_coeff, `Values`.sv_0 AS sv_0, `Values`.sv_1 AS sv_1, `Values`.sv_2 AS sv_2, `Values`.sv_3 AS sv_3, `Values`.sv_4 AS sv_4, `Values`.sv_5 AS sv_5, `Values`.sv_6 AS sv_6, `Values`.sv_7 AS sv_7, `Values`.sv_8 AS sv_8, `Values`.sv_9 AS sv_9 
FROM (SELECT 0 AS sv_idx, 1.0 AS dual_coeff, 0.508301950792 AS sv_0, 0.279342491372 AS sv_1, 0.994818350395 AS sv_2, 0.394785330498 AS sv_3, 0.607421641283 AS sv_4, 0.565938829721 AS sv_5, 0.559975415427 AS sv_6, 0.427180227551 AS sv_7, 0.0810808650218 AS sv_8, 0.56749814058 AS sv_9 UNION ALL SELECT 1 AS sv_idx, -1.0 AS dual_coeff, 0.0326860749072 AS sv_0, 0.522284551453 AS sv_1, 0.440676737674 AS sv_2, 0.407598934966 AS sv_3, 0.841982337252 AS sv_4, 0.540084121321 AS sv_5, 0.593713976769 AS sv_6, 0.721850578015 AS sv_7, 0.260572341014 AS sv_8, 0.238506307386 AS sv_9 UNION ALL SELECT 2 AS sv_idx, 1.0 AS dual_coeff, 0.810008975679 AS sv_0, 0.122407350829 AS sv_1, 0.0602182191983 AS sv_2, 0.293701040832 AS sv_3, 0.825948297474 AS sv_4, 0.5204533415 AS sv_5, 0.0197469949363 AS sv_6, 0.982937790817 AS sv_7, 0.531772543258 AS sv_8, 0.194170941741 AS sv_9 UNION ALL SELECT 3 AS sv_idx, 1.0 AS dual_coeff, 0.913382478496 AS sv_0, 0.630400357992 AS sv_1, 0.00553688578106 AS sv_2, 0.847029471796 AS sv_3, 0.110851332223 AS sv_4, 0.09512149802 AS sv_5, 0.555136334695 AS sv_6, 0.447381611726 AS sv_7, 0.8767322457 AS sv_8, 0.998132761196 AS sv_9 UNION ALL SELECT 4 AS sv_idx, -1.0 AS dual_coeff, 0.00607223045483 AS sv_0, 0.629054703088 AS sv_1, 0.0457555942451 AS sv_2, 0.0542695712079 AS sv_3, 0.380025067831 AS sv_4, 0.468006549092 AS sv_5, 0.0830760293756 AS sv_6, 0.948281358173 AS sv_7, 0.788946718513 AS sv_8, 0.347658310518 AS sv_9 UNION ALL SELECT 5 AS sv_idx, 1.0 AS dual_coeff, 0.751922846481 AS sv_0, 0.370293965271 AS sv_1, 0.429273954319 AS sv_2, 0.657980546446 AS sv_3, 0.930668532226 AS sv_4, 0.5418963071 AS sv_5, 0.810761301533 AS sv_6, 0.723823577893 AS sv_7, 0.683710597187 AS sv_8, 0.545656115529 AS sv_9 UNION ALL SELECT 6 AS sv_idx, -1.0 AS dual_coeff, 0.0439229198251 AS sv_0, 0.782493219373 AS sv_1, 0.919021170476 AS sv_2, 0.172627999202 AS sv_3, 0.836958110788 AS sv_4, 0.529859907014 AS sv_5, 0.852660682495 AS sv_6, 0.543822877642 AS sv_7, 0.15308282512 AS sv_8, 0.207626498632 AS sv_9 UNION ALL SELECT 7 AS sv_idx, -1.0 AS dual_coeff, 0.249664347134 AS sv_0, 0.350389885377 AS sv_1, 0.922889059967 AS sv_2, 0.188183013584 AS sv_3, 0.184967400126 AS sv_4, 0.23248864949 AS sv_5, 0.122703971973 AS sv_6, 0.300547600494 AS sv_7, 0.975905265736 AS sv_8, 0.0120144262428 AS sv_9 UNION ALL SELECT 8 AS sv_idx, -1.0 AS dual_coeff, 0.742807285252 AS sv_0, 0.320855576513 AS sv_1, 0.669492288322 AS sv_2, 0.216068794145 AS sv_3, 0.906582943515 AS sv_4, 0.768343856507 AS sv_5, 0.711201014587 AS sv_6, 0.618067247588 AS sv_7, 0.752164207598 AS sv_8, 0.408873948761 AS sv_9 UNION ALL SELECT 9 AS sv_idx, 0.952620999622 AS dual_coeff, 0.644091487547 AS sv_0, 0.503659211381 AS sv_1, 0.61113123895 AS sv_2, 0.708615800962 AS sv_3, 0.283507560774 AS sv_4, 0.752758702274 AS sv_5, 0.222298499801 AS sv_6, 0.127543792841 AS sv_7, 0.787477488945 AS sv_8, 0.0899881316398 AS sv_9 UNION ALL SELECT 10 AS sv_idx, 1.0 AS dual_coeff, 0.562063356878 AS sv_0, 0.80974103864 AS sv_1, 0.949594492603 AS sv_2, 0.50000542135 AS sv_3, 0.126572902241 AS sv_4, 0.69392184004 AS sv_5, 0.42884020037 AS sv_6, 0.983150488509 AS sv_7, 0.208353583511 AS sv_8, 0.380087799974 AS sv_9 UNION ALL SELECT 11 AS sv_idx, -0.413172010988 AS dual_coeff, 0.836671751078 AS sv_0, 0.853504323034 AS sv_1, 0.836579203544 AS sv_2, 0.91904385176 AS sv_3, 0.230661097992 AS sv_4, 0.5799399144 AS sv_5, 0.972888460276 AS sv_6, 0.862897985712 AS sv_7, 0.701848346544 AS sv_8, 0.434077252131 AS sv_9 UNION ALL SELECT 12 AS sv_idx, -1.0 AS dual_coeff, 0.879259937425 AS sv_0, 0.148121481439 AS sv_1, 0.830836106971 AS sv_2, 0.908712831829 AS sv_3, 0.342438328106 AS sv_4, 0.0318812544247 AS sv_5, 0.987309941747 AS sv_6, 0.278030122986 AS sv_7, 0.672701045905 AS sv_8, 0.847911401526 AS sv_9 UNION ALL SELECT 13 AS sv_idx, 1.0 AS dual_coeff, 0.514084822334 AS sv_0, 0.71942666854 AS sv_1, 0.725095781996 AS sv_2, 0.344043551373 AS sv_3, 0.261384696889 AS sv_4, 0.267671361898 AS sv_5, 0.837239722235 AS sv_6, 0.669049968508 AS sv_7, 0.523041640668 AS sv_8, 0.626227557854 AS sv_9 UNION ALL SELECT 14 AS sv_idx, -1.0 AS dual_coeff, 0.560991653136 AS sv_0, 0.0808553887047 AS sv_1, 0.542493843751 AS sv_2, 0.498270770087 AS sv_3, 0.319862951632 AS sv_4, 0.182511310505 AS sv_5, 0.760473705329 AS sv_6, 0.635041717091 AS sv_7, 0.640458917323 AS sv_8, 0.242977803658 AS sv_9 UNION ALL SELECT 15 AS sv_idx, 1.0 AS dual_coeff, 0.108664365208 AS sv_0, 0.606539262815 AS sv_1, 0.951472819926 AS sv_2, 0.801549224539 AS sv_3, 0.148090957114 AS sv_4, 0.462195864123 AS sv_5, 0.919582357119 AS sv_6, 0.981908348294 AS sv_7, 0.369494821873 AS sv_8, 0.266087031642 AS sv_9 UNION ALL SELECT 16 AS sv_idx, 1.0 AS dual_coeff, 0.6274548652 AS sv_0, 0.691813779382 AS sv_1, 0.465275501654 AS sv_2, 0.74858777569 AS sv_3, 0.979465847392 AS sv_4, 0.381279870125 AS sv_5, 0.75070137057 AS sv_6, 0.048222671975 AS sv_7, 0.482049747313 AS sv_8, 0.193744465608 AS sv_9 UNION ALL SELECT 17 AS sv_idx, -1.0 AS dual_coeff, 0.273548272348 AS sv_0, 0.925970771265 AS sv_1, 0.298031699427 AS sv_2, 0.33335764716 AS sv_3, 0.240724054669 AS sv_4, 0.258759140958 AS sv_5, 0.801160904207 AS sv_6, 0.680461811198 AS sv_7, 0.872919685715 AS sv_8, 0.893558019417 AS sv_9 UNION ALL SELECT 18 AS sv_idx, -1.0 AS dual_coeff, 0.348537317855 AS sv_0, 0.940475383587 AS sv_1, 0.522934352373 AS sv_2, 0.425883791753 AS sv_3, 0.226342112185 AS sv_4, 0.30382534714 AS sv_5, 0.311719205788 AS sv_6, 0.676800724937 AS sv_7, 0.751198003393 AS sv_8, 0.424203919237 AS sv_9 UNION ALL SELECT 19 AS sv_idx, 1.0 AS dual_coeff, 0.717216195208 AS sv_0, 0.945380940004 AS sv_1, 0.990429014971 AS sv_2, 0.652227071656 AS sv_3, 0.19275688719 AS sv_4, 0.0311764773422 AS sv_5, 0.512425698087 AS sv_6, 0.163145506772 AS sv_7, 0.0778037305442 AS sv_8, 0.567706594903 AS sv_9 UNION ALL SELECT 20 AS sv_idx, -1.0 AS dual_coeff, 0.190241161085 AS sv_0, 0.73882643325 AS sv_1, 0.389057859186 AS sv_2, 0.321035728538 AS sv_3, 0.107743899801 AS sv_4, 0.0947510301714 AS sv_5, 0.697892961309 AS sv_6, 0.144502305878 AS sv_7, 0.2788369223 AS sv_8, 0.242885986956 AS sv_9 UNION ALL SELECT 21 AS sv_idx, 1.0 AS dual_coeff, 0.450137915159 AS sv_0, 0.626915599423 AS sv_1, 0.771790260219 AS sv_2, 0.607117864556 AS sv_3, 0.979275927264 AS sv_4, 0.628436514041 AS sv_5, 0.127015773185 AS sv_6, 0.173528813743 AS sv_7, 0.896653236333 AS sv_8, 0.758977606833 AS sv_9 UNION ALL SELECT 22 AS sv_idx, -1.0 AS dual_coeff, 0.825391843739 AS sv_0, 0.964880108441 AS sv_1, 0.284162341183 AS sv_2, 0.921637607387 AS sv_3, 0.969518440751 AS sv_4, 0.00266665767739 AS sv_5, 0.269099750639 AS sv_6, 0.60899396979 AS sv_7, 0.202501219632 AS sv_8, 0.220630159969 AS sv_9 UNION ALL SELECT 23 AS sv_idx, -0.369553213766 AS dual_coeff, 0.20457508759 AS sv_0, 0.167626437176 AS sv_1, 0.793901936257 AS sv_2, 0.605657049563 AS sv_3, 0.663157297889 AS sv_4, 0.973134913336 AS sv_5, 0.00809239040449 AS sv_6, 0.883332759144 AS sv_7, 0.30248669127 AS sv_8, 0.307345172056 AS sv_9 UNION ALL SELECT 24 AS sv_idx, -1.0 AS dual_coeff, 0.190054511214 AS sv_0, 0.146898448978 AS sv_1, 0.684263843572 AS sv_2, 0.742210000752 AS sv_3, 0.41610045479 AS sv_4, 0.276993419006 AS sv_5, 0.679431363416 AS sv_6, 0.82025428244 AS sv_7, 0.390685195251 AS sv_8, 0.703060012137 AS sv_9 UNION ALL SELECT 25 AS sv_idx, 1.0 AS dual_coeff, 0.035619774762 AS sv_0, 0.0200369184012 AS sv_1, 0.0264083139395 AS sv_2, 0.572673226726 AS sv_3, 0.115476839787 AS sv_4, 0.0703015692113 AS sv_5, 0.528480274403 AS sv_6, 0.311695528265 AS sv_7, 0.593857305303 AS sv_8, 0.616416791316 AS sv_9 UNION ALL SELECT 26 AS sv_idx, 1.0 AS dual_coeff, 0.860673203829 AS sv_0, 0.746475931408 AS sv_1, 0.203858810687 AS sv_2, 0.903409602519 AS sv_3, 0.543456339108 AS sv_4, 0.0656257924841 AS sv_5, 0.416691857843 AS sv_6, 0.248980589987 AS sv_7, 0.564906479429 AS sv_8, 0.291355674453 AS sv_9 UNION ALL SELECT 27 AS sv_idx, 1.0 AS dual_coeff, 0.627644457244 AS sv_0, 0.607362964571 AS sv_1, 0.844155993045 AS sv_2, 0.281461645502 AS sv_3, 0.485983805071 AS sv_4, 0.394198672863 AS sv_5, 0.372201624992 AS sv_6, 0.916461491879 AS sv_7, 0.0704750971262 AS sv_8, 0.368177314464 AS sv_9 UNION ALL SELECT 28 AS sv_idx, 1.0 AS dual_coeff, 0.544100665458 AS sv_0, 0.573120420803 AS sv_1, 0.035720287886 AS sv_2, 0.917405857318 AS sv_3, 0.494119238198 AS sv_4, 0.567057687867 AS sv_5, 0.303342625477 AS sv_6, 0.735434011317 AS sv_7, 0.716633647603 AS sv_8, 0.374258344139 AS sv_9 UNION ALL SELECT 29 AS sv_idx, 1.0 AS dual_coeff, 0.641428953315 AS sv_0, 0.809887611343 AS sv_1, 0.531640059845 AS sv_2, 0.494485281571 AS sv_3, 0.358439293463 AS sv_4, 0.873598471723 AS sv_5, 0.185925621978 AS sv_6, 0.847808896769 AS sv_7, 0.169455979024 AS sv_8, 0.256601395422 AS sv_9 UNION ALL SELECT 30 AS sv_idx, 1.0 AS dual_coeff, 0.811841064726 AS sv_0, 0.597993465457 AS sv_1, 0.943825343282 AS sv_2, 0.373328170129 AS sv_3, 0.447749132114 AS sv_4, 0.108899440862 AS sv_5, 0.263391658104 AS sv_6, 0.176795254838 AS sv_7, 0.870361781151 AS sv_8, 0.644208766119 AS sv_9 UNION ALL SELECT 31 AS sv_idx, -1.0 AS dual_coeff, 0.18581011476 AS sv_0, 0.838515305884 AS sv_1, 0.679483361516 AS sv_2, 0.0747195716501 AS sv_3, 0.0910590771743 AS sv_4, 0.876277966184 AS sv_5, 0.0672345584076 AS sv_6, 0.109993677236 AS sv_7, 0.127597959646 AS sv_8, 0.602112305575 AS sv_9 UNION ALL SELECT 32 AS sv_idx, -1.0 AS dual_coeff, 0.345554271011 AS sv_0, 0.372080411887 AS sv_1, 0.660710505531 AS sv_2, 0.194064620611 AS sv_3, 0.699273580432 AS sv_4, 0.101048399909 AS sv_5, 0.781552398246 AS sv_6, 0.31483767789 AS sv_7, 0.457295925867 AS sv_8, 0.932543606019 AS sv_9 UNION ALL SELECT 33 AS sv_idx, -1.0 AS dual_coeff, 0.124257395674 AS sv_0, 0.343125286535 AS sv_1, 0.506657909231 AS sv_2, 0.0991134393572 AS sv_3, 0.845242300398 AS sv_4, 0.641016323661 AS sv_5, 0.858934905908 AS sv_6, 0.654513007695 AS sv_7, 0.610815640983 AS sv_8, 0.147782220419 AS sv_9 UNION ALL SELECT 34 AS sv_idx, 1.0 AS dual_coeff, 0.415109932557 AS sv_0, 0.534014369732 AS sv_1, 0.837111312832 AS sv_2, 0.387011473757 AS sv_3, 0.450492117881 AS sv_4, 0.445347933551 AS sv_5, 0.950816772162 AS sv_6, 0.492658560788 AS sv_7, 0.154838453511 AS sv_8, 0.830626926561 AS sv_9 UNION ALL SELECT 35 AS sv_idx, -1.0 AS dual_coeff, 0.648024519871 AS sv_0, 0.291772913401 AS sv_1, 0.834348544483 AS sv_2, 0.730236828755 AS sv_3, 0.0343648934729 AS sv_4, 0.564347045305 AS sv_5, 0.507667941033 AS sv_6, 0.0389503150134 AS sv_7, 0.0552737943148 AS sv_8, 0.161813681514 AS sv_9 UNION ALL SELECT 36 AS sv_idx, 1.0 AS dual_coeff, 0.791753175904 AS sv_0, 0.837419192216 AS sv_1, 0.00666678324868 AS sv_2, 0.0213549091044 AS sv_3, 0.224132072703 AS sv_4, 0.891521461976 AS sv_5, 0.948520680207 AS sv_6, 0.432245398958 AS sv_7, 0.27092768039 AS sv_8, 0.497952307605 AS sv_9 UNION ALL SELECT 37 AS sv_idx, 1.0 AS dual_coeff, 0.488020723926 AS sv_0, 0.568391198562 AS sv_1, 0.912123000135 AS sv_2, 0.326554061083 AS sv_3, 0.535313371346 AS sv_4, 0.396939026508 AS sv_5, 0.419449930698 AS sv_6, 0.483663531149 AS sv_7, 0.578965357489 AS sv_8, 0.0101265623053 AS sv_9 UNION ALL SELECT 38 AS sv_idx, 1.0 AS dual_coeff, 0.417293644352 AS sv_0, 0.796474489992 AS sv_1, 0.923487512305 AS sv_2, 0.762229529641 AS sv_3, 0.822508640238 AS sv_4, 0.29376424551 AS sv_5, 0.507603705961 AS sv_6, 0.136230669981 AS sv_7, 0.408785071076 AS sv_8, 0.672271283505 AS sv_9 UNION ALL SELECT 39 AS sv_idx, 1.0 AS dual_coeff, 0.416826004163 AS sv_0, 0.391433117928 AS sv_1, 0.986251419661 AS sv_2, 0.135246065252 AS sv_3, 0.662969142863 AS sv_4, 0.144111388308 AS sv_5, 0.567420505416 AS sv_6, 0.806704827856 AS sv_7, 0.631581286705 AS sv_8, 0.910406052283 AS sv_9 UNION ALL SELECT 40 AS sv_idx, 1.0 AS dual_coeff, 0.607281837688 AS sv_0, 0.466498431425 AS sv_1, 0.777203311949 AS sv_2, 0.74897721633 AS sv_3, 0.451977837723 AS sv_4, 0.858386619235 AS sv_5, 0.399205292892 AS sv_6, 0.543666886811 AS sv_7, 0.751821918432 AS sv_8, 0.0185681260535 AS sv_9 UNION ALL SELECT 41 AS sv_idx, -1.0 AS dual_coeff, 0.860862508328 AS sv_0, 0.115589953107 AS sv_1, 0.425978431374 AS sv_2, 0.106199772242 AS sv_3, 0.472405238781 AS sv_4, 0.629305648226 AS sv_5, 0.14175959847 AS sv_6, 0.933941623628 AS sv_7, 0.547331313624 AS sv_8, 0.180074058086 AS sv_9 UNION ALL SELECT 42 AS sv_idx, 1.0 AS dual_coeff, 0.320618536329 AS sv_0, 0.479939959073 AS sv_1, 0.152894598241 AS sv_2, 0.600554570486 AS sv_3, 0.145411665624 AS sv_4, 0.502747493228 AS sv_5, 0.925481435696 AS sv_6, 0.34513241516 AS sv_7, 0.683813845103 AS sv_8, 0.290533269946 AS sv_9 UNION ALL SELECT 43 AS sv_idx, 1.0 AS dual_coeff, 0.648200617384 AS sv_0, 0.526228706549 AS sv_1, 0.923758712716 AS sv_2, 0.85737189438 AS sv_3, 0.761783781856 AS sv_4, 0.0980570129666 AS sv_5, 0.183292973433 AS sv_6, 0.381420430717 AS sv_7, 0.78796483436 AS sv_8, 0.972246465105 AS sv_9 UNION ALL SELECT 44 AS sv_idx, 1.0 AS dual_coeff, 0.593709948568 AS sv_0, 0.912852290297 AS sv_1, 0.0113390907677 AS sv_2, 0.00761221746685 AS sv_3, 0.216403028575 AS sv_4, 0.481763872057 AS sv_5, 0.0983934278427 AS sv_6, 0.70799420048 AS sv_7, 0.781241151428 AS sv_8, 0.627452597058 AS sv_9 UNION ALL SELECT 45 AS sv_idx, -1.0 AS dual_coeff, 0.224091476411 AS sv_0, 0.703797432542 AS sv_1, 0.899177063968 AS sv_2, 0.562013847331 AS sv_3, 0.315272987238 AS sv_4, 0.252255856197 AS sv_5, 0.1569651685 AS sv_6, 0.155514399291 AS sv_7, 0.630647014766 AS sv_8, 0.429853589566 AS sv_9 UNION ALL SELECT 46 AS sv_idx, 0.532555727417 AS dual_coeff, 0.505370666159 AS sv_0, 0.823557030827 AS sv_1, 0.648528612573 AS sv_2, 0.950636494051 AS sv_3, 0.226269440099 AS sv_4, 0.0296383140531 AS sv_5, 0.120130406512 AS sv_6, 0.104676271149 AS sv_7, 0.0327563430327 AS sv_8, 0.496304322801 AS sv_9 UNION ALL SELECT 47 AS sv_idx, 1.0 AS dual_coeff, 0.625156508148 AS sv_0, 0.902129525725 AS sv_1, 0.236594510457 AS sv_2, 0.347289053203 AS sv_3, 0.98035147391 AS sv_4, 0.937392590961 AS sv_5, 0.940044430441 AS sv_6, 0.359878535703 AS sv_7, 0.443616960193 AS sv_8, 0.119535130859 AS sv_9 UNION ALL SELECT 48 AS sv_idx, -1.0 AS dual_coeff, 0.52914052726 AS sv_0, 0.46120441103 AS sv_1, 0.53930431248 AS sv_2, 0.824055910066 AS sv_3, 0.407771229383 AS sv_4, 0.185474864681 AS sv_5, 0.0693905511308 AS sv_6, 0.0226213026932 AS sv_7, 0.0038629147141 AS sv_8, 0.951201840546 AS sv_9 UNION ALL SELECT 49 AS sv_idx, -0.0461464028116 AS dual_coeff, 0.229724995874 AS sv_0, 0.0854289365741 AS sv_1, 0.248303067484 AS sv_2, 0.912135047381 AS sv_3, 0.750396790558 AS sv_4, 0.774663478283 AS sv_5, 0.0619456475796 AS sv_6, 0.305338019603 AS sv_7, 0.50055095908 AS sv_8, 0.281154056056 AS sv_9 UNION ALL SELECT 50 AS sv_idx, 0.573063941393 AS dual_coeff, 0.842834438305 AS sv_0, 0.81680974724 AS sv_1, 0.951191473255 AS sv_2, 0.0412183520818 AS sv_3, 0.684011736678 AS sv_4, 0.312717423064 AS sv_5, 0.258409991549 AS sv_6, 0.673755097922 AS sv_7, 0.646597563165 AS sv_8, 0.543781194518 AS sv_9 UNION ALL SELECT 51 AS sv_idx, 1.0 AS dual_coeff, 0.460988286087 AS sv_0, 0.430627551608 AS sv_1, 0.174134868794 AS sv_2, 0.802335439765 AS sv_3, 0.532297826777 AS sv_4, 0.538393961329 AS sv_5, 0.863369266195 AS sv_6, 0.521756226813 AS sv_7, 0.199258355733 AS sv_8, 0.268647461521 AS sv_9 UNION ALL SELECT 52 AS sv_idx, 1.0 AS dual_coeff, 0.657229513901 AS sv_0, 0.820693023248 AS sv_1, 0.71157653085 AS sv_2, 0.815337876922 AS sv_3, 0.830255507404 AS sv_4, 0.138182091496 AS sv_5, 0.663653306556 AS sv_6, 0.625514840449 AS sv_7, 0.710618235847 AS sv_8, 0.898246344852 AS sv_9 UNION ALL SELECT 53 AS sv_idx, 1.0 AS dual_coeff, 0.800172726152 AS sv_0, 0.577688998505 AS sv_1, 0.00609601829098 AS sv_2, 0.576974434743 AS sv_3, 0.391069918467 AS sv_4, 0.816627382923 AS sv_5, 0.733420232946 AS sv_6, 0.360078436062 AS sv_7, 0.223865472792 AS sv_8, 0.518766714845 AS sv_9 UNION ALL SELECT 54 AS sv_idx, -1.0 AS dual_coeff, 0.059114486802 AS sv_0, 0.723378049646 AS sv_1, 0.713372366415 AS sv_2, 0.159737185235 AS sv_3, 0.131273198182 AS sv_4, 0.831829054388 AS sv_5, 0.0338683474117 AS sv_6, 0.0979866980511 AS sv_7, 0.0104944919295 AS sv_8, 0.682861855517 AS sv_9 UNION ALL SELECT 55 AS sv_idx, -1.0 AS dual_coeff, 0.217688314181 AS sv_0, 0.466896938206 AS sv_1, 0.403926178339 AS sv_2, 0.547585646489 AS sv_3, 0.980323217656 AS sv_4, 0.616495996943 AS sv_5, 0.416013147221 AS sv_6, 0.812011876696 AS sv_7, 0.957133661138 AS sv_8, 0.119034184674 AS sv_9 UNION ALL SELECT 56 AS sv_idx, -1.0 AS dual_coeff, 0.242923051802 AS sv_0, 0.585297111437 AS sv_1, 0.510196071369 AS sv_2, 0.67519476515 AS sv_3, 0.337434100843 AS sv_4, 0.541538457514 AS sv_5, 0.475319219038 AS sv_6, 0.0845419026894 AS sv_7, 0.810525784476 AS sv_8, 0.681004650046 AS sv_9 UNION ALL SELECT 57 AS sv_idx, -1.0 AS dual_coeff, 0.129093003935 AS sv_0, 0.0973613071549 AS sv_1, 0.252491736596 AS sv_2, 0.579897714185 AS sv_3, 0.923771149857 AS sv_4, 0.507244368086 AS sv_5, 0.886738905575 AS sv_6, 0.506152947654 AS sv_7, 0.512282206043 AS sv_8, 0.632428968984 AS sv_9 UNION ALL SELECT 58 AS sv_idx, 1.0 AS dual_coeff, 0.092372397919 AS sv_0, 0.162184455746 AS sv_1, 0.150330784233 AS sv_2, 0.707023380833 AS sv_3, 0.430031661234 AS sv_4, 0.519110489437 AS sv_5, 0.121527670988 AS sv_6, 0.978505128291 AS sv_7, 0.348360573788 AS sv_8, 0.253524101362 AS sv_9 UNION ALL SELECT 59 AS sv_idx, -1.0 AS dual_coeff, 0.591288146013 AS sv_0, 0.0752529236732 AS sv_1, 0.213539653776 AS sv_2, 0.836880989655 AS sv_3, 0.373568683428 AS sv_4, 0.80495839218 AS sv_5, 0.577371632549 AS sv_6, 0.976265058975 AS sv_7, 0.412465166498 AS sv_8, 0.236849821576 AS sv_9 UNION ALL SELECT 60 AS sv_idx, 1.0 AS dual_coeff, 0.111959073722 AS sv_0, 0.457956533459 AS sv_1, 0.950245097672 AS sv_2, 0.915613649658 AS sv_3, 0.678918328631 AS sv_4, 0.850004235282 AS sv_5, 0.164867313294 AS sv_6, 0.0953214778806 AS sv_7, 0.108269746923 AS sv_8, 0.85079515542 AS sv_9 UNION ALL SELECT 61 AS sv_idx, 1.0 AS dual_coeff, 0.618897507391 AS sv_0, 0.958578218142 AS sv_1, 0.134524436822 AS sv_2, 0.809379477971 AS sv_3, 0.514442317616 AS sv_4, 0.838465484351 AS sv_5, 0.00718974669057 AS sv_6, 0.599334025008 AS sv_7, 0.767407947212 AS sv_8, 0.428045915152 AS sv_9 UNION ALL SELECT 62 AS sv_idx, 1.0 AS dual_coeff, 0.482198065854 AS sv_0, 0.711900350984 AS sv_1, 0.0683369240942 AS sv_2, 0.494935572483 AS sv_3, 0.822102256889 AS sv_4, 0.211738528829 AS sv_5, 0.499574163132 AS sv_6, 0.0840504098292 AS sv_7, 0.216903661621 AS sv_8, 0.845919654151 AS sv_9 UNION ALL SELECT 63 AS sv_idx, -1.0 AS dual_coeff, 0.343835862964 AS sv_0, 0.377810354609 AS sv_1, 0.710199172817 AS sv_2, 0.131649602531 AS sv_3, 0.242259280335 AS sv_4, 0.936523230561 AS sv_5, 0.273375295508 AS sv_6, 0.774767484449 AS sv_7, 0.446001053263 AS sv_8, 0.741752039834 AS sv_9 UNION ALL SELECT 64 AS sv_idx, -1.0 AS dual_coeff, 0.758427983789 AS sv_0, 0.528774433884 AS sv_1, 0.536922771513 AS sv_2, 0.0368945543479 AS sv_3, 0.175589357816 AS sv_4, 0.132557265872 AS sv_5, 0.263841842979 AS sv_6, 0.296917565437 AS sv_7, 0.464433608406 AS sv_8, 0.669211029405 AS sv_9 UNION ALL SELECT 65 AS sv_idx, 1.0 AS dual_coeff, 0.663274087283 AS sv_0, 0.789746046959 AS sv_1, 0.0240287133138 AS sv_2, 0.151434562994 AS sv_3, 0.746586214971 AS sv_4, 0.0576234725426 AS sv_5, 0.951564344651 AS sv_6, 0.846196823832 AS sv_7, 0.360991877232 AS sv_8, 0.414524914574 AS sv_9 UNION ALL SELECT 66 AS sv_idx, 1.0 AS dual_coeff, 0.32256271081 AS sv_0, 0.492791508694 AS sv_1, 0.909889962161 AS sv_2, 0.120725683322 AS sv_3, 0.710370390377 AS sv_4, 0.916815279876 AS sv_5, 0.109511648678 AS sv_6, 0.189103482505 AS sv_7, 0.887461422322 AS sv_8, 0.131070956268 AS sv_9 UNION ALL SELECT 67 AS sv_idx, -1.0 AS dual_coeff, 0.466331328453 AS sv_0, 0.26029163526 AS sv_1, 0.377043276778 AS sv_2, 0.280896444407 AS sv_3, 0.0581601790024 AS sv_4, 0.991666350924 AS sv_5, 0.761093032419 AS sv_6, 0.631746478253 AS sv_7, 0.176137063955 AS sv_8, 0.553899916688 AS sv_9 UNION ALL SELECT 68 AS sv_idx, 1.0 AS dual_coeff, 0.293303819427 AS sv_0, 0.450757220232 AS sv_1, 0.944110305193 AS sv_2, 0.935075445909 AS sv_3, 0.47650542806 AS sv_4, 0.862086097438 AS sv_5, 0.974377128279 AS sv_6, 0.145918332591 AS sv_7, 0.204092372681 AS sv_8, 0.620449581227 AS sv_9 UNION ALL SELECT 69 AS sv_idx, -1.0 AS dual_coeff, 0.586911960897 AS sv_0, 0.287923426126 AS sv_1, 0.304182490268 AS sv_2, 0.349045751825 AS sv_3, 0.55177586025 AS sv_4, 0.746568658076 AS sv_5, 0.577671352949 AS sv_6, 0.725789857763 AS sv_7, 0.539813577983 AS sv_8, 0.814489399552 AS sv_9 UNION ALL SELECT 70 AS sv_idx, -1.0 AS dual_coeff, 0.191278433846 AS sv_0, 0.893401579756 AS sv_1, 0.213521313278 AS sv_2, 0.678428166859 AS sv_3, 0.520380643989 AS sv_4, 0.760306530662 AS sv_5, 0.322518728111 AS sv_6, 0.29860106423 AS sv_7, 0.19814910009 AS sv_8, 0.552539951391 AS sv_9 UNION ALL SELECT 71 AS sv_idx, 1.0 AS dual_coeff, 0.901828639364 AS sv_0, 0.42728532752 AS sv_1, 0.971275926917 AS sv_2, 0.942294033388 AS sv_3, 0.778917094172 AS sv_4, 0.693165438322 AS sv_5, 0.327589141719 AS sv_6, 0.447088868756 AS sv_7, 0.968184340818 AS sv_8, 0.227098776832 AS sv_9 UNION ALL SELECT 72 AS sv_idx, -1.0 AS dual_coeff, 0.238272626932 AS sv_0, 0.399779774819 AS sv_1, 0.642048572225 AS sv_2, 0.783581907679 AS sv_3, 0.451578377502 AS sv_4, 0.898268081993 AS sv_5, 0.0620877074643 AS sv_6, 0.766883022227 AS sv_7, 0.0598444680422 AS sv_8, 0.588825518187 AS sv_9 UNION ALL SELECT 73 AS sv_idx, -1.0 AS dual_coeff, 0.510875809866 AS sv_0, 0.116904968738 AS sv_1, 0.456946602495 AS sv_2, 0.505581543829 AS sv_3, 0.114548011981 AS sv_4, 0.793833784824 AS sv_5, 0.643459164325 AS sv_6, 0.454096842161 AS sv_7, 0.916947853357 AS sv_8, 0.185681997448 AS sv_9 UNION ALL SELECT 74 AS sv_idx, 1.0 AS dual_coeff, 0.897394888149 AS sv_0, 0.446313750249 AS sv_1, 0.377811047494 AS sv_2, 0.978989309556 AS sv_3, 0.253504828791 AS sv_4, 0.720081633327 AS sv_5, 0.978606538732 AS sv_6, 0.196748654299 AS sv_7, 0.134667360244 AS sv_8, 0.893954676449 AS sv_9 UNION ALL SELECT 75 AS sv_idx, -1.0 AS dual_coeff, 0.864347204188 AS sv_0, 0.00437451888776 AS sv_1, 0.669012509441 AS sv_2, 0.968611970979 AS sv_3, 0.402626638977 AS sv_4, 0.688421391094 AS sv_5, 0.346413061289 AS sv_6, 0.958115579656 AS sv_7, 0.385342731566 AS sv_8, 0.894655950961 AS sv_9 UNION ALL SELECT 76 AS sv_idx, -1.0 AS dual_coeff, 0.915331654974 AS sv_0, 0.019476018274 AS sv_1, 0.235012424454 AS sv_2, 0.286291111372 AS sv_3, 0.829079669596 AS sv_4, 0.230000326557 AS sv_5, 0.760099135757 AS sv_6, 0.705477221531 AS sv_7, 0.869500680311 AS sv_8, 0.346301115508 AS sv_9 UNION ALL SELECT 77 AS sv_idx, -1.0 AS dual_coeff, 0.505950468244 AS sv_0, 0.365615857324 AS sv_1, 0.608182065318 AS sv_2, 0.60645204062 AS sv_3, 0.35543724064 AS sv_4, 0.103682891895 AS sv_5, 0.419368304548 AS sv_6, 0.562551410455 AS sv_7, 0.369813115589 AS sv_8, 0.332898637363 AS sv_9 UNION ALL SELECT 78 AS sv_idx, -0.229369040866 AS dual_coeff, 0.790959348862 AS sv_0, 0.863607625859 AS sv_1, 0.133031246405 AS sv_2, 0.120264171088 AS sv_3, 0.499771434433 AS sv_4, 0.317781327571 AS sv_5, 0.819593587487 AS sv_6, 0.754819624849 AS sv_7, 0.0273938303669 AS sv_8, 0.212385673843 AS sv_9 UNION ALL SELECT 79 AS sv_idx, -1.0 AS dual_coeff, 0.42997706964 AS sv_0, 0.171404156776 AS sv_1, 0.0989600150054 AS sv_2, 0.0439988885183 AS sv_3, 0.725214034424 AS sv_4, 0.544882663395 AS sv_5, 0.619536841201 AS sv_6, 0.243701747784 AS sv_7, 0.756283569402 AS sv_8, 0.554188877144 AS sv_9 UNION ALL SELECT 80 AS sv_idx, -1.0 AS dual_coeff, 0.485319653336 AS sv_0, 0.22248199003 AS sv_1, 0.412986741677 AS sv_2, 0.518733405534 AS sv_3, 0.51466756779 AS sv_4, 0.121064137757 AS sv_5, 0.632139438091 AS sv_6, 0.141091699793 AS sv_7, 0.654106722087 AS sv_8, 0.130655599141 AS sv_9 UNION ALL SELECT 81 AS sv_idx, 1.0 AS dual_coeff, 0.581257181495 AS sv_0, 0.713570944646 AS sv_1, 0.507614341957 AS sv_2, 0.303713607177 AS sv_3, 0.690898940013 AS sv_4, 0.942393028022 AS sv_5, 0.679871087439 AS sv_6, 0.135348383376 AS sv_7, 0.93490581757 AS sv_8, 0.907134416649 AS sv_9 UNION ALL SELECT 82 AS sv_idx, -1.0 AS dual_coeff, 0.520553156601 AS sv_0, 0.348333057711 AS sv_1, 0.247393852854 AS sv_2, 0.0781172931557 AS sv_3, 0.10783051351 AS sv_4, 0.422475027808 AS sv_5, 0.613968297205 AS sv_6, 0.912794168587 AS sv_7, 0.289788284351 AS sv_8, 0.541710549037 AS sv_9 UNION ALL SELECT 83 AS sv_idx, -1.0 AS dual_coeff, 0.587039208716 AS sv_0, 0.951434908518 AS sv_1, 0.656301194211 AS sv_2, 0.283923604384 AS sv_3, 0.938617466587 AS sv_4, 0.56465509814 AS sv_5, 0.0129406512942 AS sv_6, 0.089768511027 AS sv_7, 0.546107113162 AS sv_8, 0.94160545297 AS sv_9 UNION ALL SELECT 84 AS sv_idx, -1.0 AS dual_coeff, 0.985468435931 AS sv_0, 0.0419858396734 AS sv_1, 0.211633189639 AS sv_2, 0.795471028982 AS sv_3, 0.727964824678 AS sv_4, 0.0151222932972 AS sv_5, 0.3334535451 AS sv_6, 0.900679598198 AS sv_7, 0.134255765359 AS sv_8, 0.563462525766 AS sv_9 UNION ALL SELECT 85 AS sv_idx, 1.0 AS dual_coeff, 0.360826123796 AS sv_0, 0.624425137129 AS sv_1, 0.81467845947 AS sv_2, 0.591384630297 AS sv_3, 0.699016952087 AS sv_4, 0.210467156979 AS sv_5, 0.650164791787 AS sv_6, 0.543307761972 AS sv_7, 0.944504958049 AS sv_8, 0.154017302682 AS sv_9 UNION ALL SELECT 86 AS sv_idx, -1.0 AS dual_coeff, 0.529299066152 AS sv_0, 0.788584024856 AS sv_1, 0.431454140817 AS sv_2, 0.603352327659 AS sv_3, 0.113683048811 AS sv_4, 0.210378192816 AS sv_5, 0.628062350132 AS sv_6, 0.0197754823237 AS sv_7, 0.201575445859 AS sv_8, 0.241861446226 AS sv_9 UNION ALL SELECT 87 AS sv_idx, 1.0 AS dual_coeff, 0.549596489568 AS sv_0, 0.54754473516 AS sv_1, 0.406366684558 AS sv_2, 0.932984491574 AS sv_3, 0.882227958128 AS sv_4, 0.125719605633 AS sv_5, 0.749508252776 AS sv_6, 0.490410739545 AS sv_7, 0.84590550984 AS sv_8, 0.543888695564 AS sv_9 UNION ALL SELECT 88 AS sv_idx, -1.0 AS dual_coeff, 0.0219907397193 AS sv_0, 0.650846283369 AS sv_1, 0.155614964675 AS sv_2, 0.128182467127 AS sv_3, 0.796383051003 AS sv_4, 0.550156276691 AS sv_5, 0.715741717599 AS sv_6, 0.290589087879 AS sv_7, 0.713269302501 AS sv_8, 0.146030167067 AS sv_9 UNION ALL SELECT 89 AS sv_idx, 1.0 AS dual_coeff, 0.566083650543 AS sv_0, 0.79994546743 AS sv_1, 0.200238986825 AS sv_2, 0.714424798321 AS sv_3, 0.588118159329 AS sv_4, 0.343634928527 AS sv_5, 0.685398829301 AS sv_6, 0.505665245115 AS sv_7, 0.199500502645 AS sv_8, 0.850428205456 AS sv_9 UNION ALL SELECT 90 AS sv_idx, -1.0 AS dual_coeff, 0.889013592139 AS sv_0, 0.164721356778 AS sv_1, 0.442934019203 AS sv_2, 0.377236648344 AS sv_3, 0.708743702363 AS sv_4, 0.532571052774 AS sv_5, 0.122013213963 AS sv_6, 0.48691298301 AS sv_7, 0.177043300864 AS sv_8, 0.998100576379 AS sv_9 UNION ALL SELECT 91 AS sv_idx, 1.0 AS dual_coeff, 0.467348103252 AS sv_0, 0.323093906298 AS sv_1, 0.874323369066 AS sv_2, 0.407227631467 AS sv_3, 0.494325388671 AS sv_4, 0.757765709217 AS sv_5, 0.495278463906 AS sv_6, 0.54360785408 AS sv_7, 0.0331207460168 AS sv_8, 0.218838472477 AS sv_9 UNION ALL SELECT 92 AS sv_idx, -1.0 AS dual_coeff, 0.263855329978 AS sv_0, 0.646197741042 AS sv_1, 0.280286348985 AS sv_2, 0.132416138643 AS sv_3, 0.749162599738 AS sv_4, 0.321265694116 AS sv_5, 0.889781890383 AS sv_6, 0.997934068512 AS sv_7, 0.340658979458 AS sv_8, 0.107180189265 AS sv_9 UNION ALL SELECT 93 AS sv_idx, -1.0 AS dual_coeff, 0.977506941048 AS sv_0, 0.801825958613 AS sv_1, 0.585744357148 AS sv_2, 0.926145956059 AS sv_3, 0.751164797442 AS sv_4, 0.422742029109 AS sv_5, 0.83403733023 AS sv_6, 0.882237944887 AS sv_7, 0.725044987021 AS sv_8, 0.925369764928 AS sv_9 UNION ALL SELECT 94 AS sv_idx, 1.0 AS dual_coeff, 0.561531592897 AS sv_0, 0.824566600732 AS sv_1, 0.854184689461 AS sv_2, 0.763547373221 AS sv_3, 0.68609465095 AS sv_4, 0.0593758392444 AS sv_5, 0.0955646765002 AS sv_6, 0.441654743395 AS sv_7, 0.0740123727162 AS sv_8, 0.92044724441 AS sv_9 UNION ALL SELECT 95 AS sv_idx, 1.0 AS dual_coeff, 0.836963909869 AS sv_0, 0.414943236032 AS sv_1, 0.464436634474 AS sv_2, 0.635655421141 AS sv_3, 0.776748074526 AS sv_4, 0.03605190214 AS sv_5, 0.347408140578 AS sv_6, 0.608848009029 AS sv_7, 0.401041016492 AS sv_8, 0.326938541139 AS sv_9 UNION ALL SELECT 96 AS sv_idx, -1.0 AS dual_coeff, 0.0174128034189 AS sv_0, 0.888889302581 AS sv_1, 0.840728377906 AS sv_2, 0.369914349132 AS sv_3, 0.646316804082 AS sv_4, 0.80952688054 AS sv_5, 0.343460419963 AS sv_6, 0.595190098519 AS sv_7, 0.987917168877 AS sv_8, 0.962050438386 AS sv_9 UNION ALL SELECT 97 AS sv_idx, -1.0 AS dual_coeff, 0.855040181463 AS sv_0, 0.994233385745 AS sv_1, 0.821502289583 AS sv_2, 0.120436082711 AS sv_3, 0.255645391531 AS sv_4, 0.112367643274 AS sv_5, 0.862629018045 AS sv_6, 0.302763147054 AS sv_7, 0.804864058156 AS sv_8, 0.200609526065 AS sv_9 UNION ALL SELECT 98 AS sv_idx, 1.0 AS dual_coeff, 0.776611931652 AS sv_0, 0.36430392533 AS sv_1, 0.196310495578 AS sv_2, 0.930332178782 AS sv_3, 0.612252740935 AS sv_4, 0.123839873371 AS sv_5, 0.407005044638 AS sv_6, 0.719964376218 AS sv_7, 0.269096412891 AS sv_8, 0.0345840614094 AS sv_9 UNION ALL SELECT 99 AS sv_idx, -1.0 AS dual_coeff, 0.705785425563 AS sv_0, 0.937880715056 AS sv_1, 0.341491415844 AS sv_2, 0.684527036772 AS sv_3, 0.276216206053 AS sv_4, 0.968722528617 AS sv_5, 0.798500526539 AS sv_6, 0.636889115157 AS sv_7, 0.584812711314 AS sv_8, 0.891884689613 AS sv_9) AS `Values`), 
kernel_cte AS 
(SELECT t.`KEY` AS `KEY`, t.dot_product AS dot_product 
FROM (SELECT full_join_data_sv.`KEY` AS `KEY`, sum(full_join_data_sv.dot_prod1) + 5.05395647052 AS dot_product 
FROM (SELECT `ADS`.`KEY` AS `KEY`, `SV_data`.dual_coeff * (`ADS`.`Feature_0` * `SV_data`.sv_0 + `ADS`.`Feature_1` * `SV_data`.sv_1 + `ADS`.`Feature_2` * `SV_data`.sv_2 + `ADS`.`Feature_3` * `SV_data`.sv_3 + `ADS`.`Feature_4` * `SV_data`.sv_4 + `ADS`.`Feature_5` * `SV_data`.sv_5 + `ADS`.`Feature_6` * `SV_data`.sv_6 + `ADS`.`Feature_7` * `SV_data`.sv_7 + `ADS`.`Feature_8` * `SV_data`.sv_8 + `ADS`.`Feature_9` * `SV_data`.sv_9) AS dot_prod1 
FROM `INPUT_DATA` AS `ADS`, `SV_data`) AS full_join_data_sv GROUP BY full_join_data_sv.`KEY`) AS t)
 SELECT kernel_cte.`KEY` AS `KEY`, kernel_cte.dot_product AS `Estimator` 
FROM kernel_cte