-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH linear_model_cte AS 
(SELECT "ADS"."KEY" AS "KEY", 5.052048526010435 * "ADS"."Feature_0" + -4.173063313870422 * "ADS"."Feature_1" + -9.150314042305045 * "ADS"."Feature_2" + 8.517954885585342 * "ADS"."Feature_3" + 2.325271557231101 * "ADS"."Feature_4" + -3.8928579337999993 * "ADS"."Feature_5" + 1.1404539687525452 * "ADS"."Feature_6" + 1.5018911343304335 * "ADS"."Feature_7" + 10.443581449286862 * "ADS"."Feature_8" + -0.4826805823779994 * "ADS"."Feature_9" + -7.200566620743419 * "ADS"."Feature_10" + 4.168758230329677 * "ADS"."Feature_11" + 7.055161468550911 * "ADS"."Feature_12" + -6.072330713716106 * "ADS"."Feature_13" + -5.85829511200493 * "ADS"."Feature_14" + -0.9200235852537426 * "ADS"."Feature_15" + 32.15196614733427 * "ADS"."Feature_16" + 3.986907860431785 * "ADS"."Feature_17" + 9.531726562261367 * "ADS"."Feature_18" + -9.754616748793875 * "ADS"."Feature_19" + 5.0194452038946515 * "ADS"."Feature_20" + 3.4405498590089554 * "ADS"."Feature_21" + 0.7406334996878517 * "ADS"."Feature_22" + -8.072391468011999 * "ADS"."Feature_23" + -3.4846000533948303 * "ADS"."Feature_24" + 9.38904918871252 * "ADS"."Feature_25" + -2.035169799141161 * "ADS"."Feature_26" + 4.372057097158683 * "ADS"."Feature_27" + -1.0481082202189553 * "ADS"."Feature_28" + 10.793433975213993 * "ADS"."Feature_29" + 0.22078018063383764 * "ADS"."Feature_30" + 0.759788916920829 * "ADS"."Feature_31" + 0.2748188020443081 * "ADS"."Feature_32" + 0.025252571310507843 * "ADS"."Feature_33" + -15.460430321632671 * "ADS"."Feature_34" + 1.5743902274350692 * "ADS"."Feature_35" + -4.8162296844601284 * "ADS"."Feature_36" + -12.738602401472216 * "ADS"."Feature_37" + 8.575767576170056 * "ADS"."Feature_38" + 44.18315482621693 * "ADS"."Feature_39" + -6.246067811185412 * "ADS"."Feature_40" + 58.668988258803594 * "ADS"."Feature_41" + -7.039039585695365 * "ADS"."Feature_42" + -5.397661852707812 * "ADS"."Feature_43" + 8.77012379648642 * "ADS"."Feature_44" + -7.431690305830072 * "ADS"."Feature_45" + -4.231476445783372 * "ADS"."Feature_46" + -6.869978820742683 * "ADS"."Feature_47" + -1.4158057620244733 * "ADS"."Feature_48" + 18.388440380255297 * "ADS"."Feature_49" + 1.106524324075214 * "ADS"."Feature_50" + -5.7125479157606485 * "ADS"."Feature_51" + 2.224052483473561 * "ADS"."Feature_52" + 0.002093831455390105 * "ADS"."Feature_53" + 0.7432958374183276 * "ADS"."Feature_54" + -0.387450317629491 * "ADS"."Feature_55" + -9.359458684161057 * "ADS"."Feature_56" + -7.956614683168063 * "ADS"."Feature_57" + 12.981270784611668 * "ADS"."Feature_58" + -4.512776086243209 * "ADS"."Feature_59" + 1.0589666787374314 * "ADS"."Feature_60" + -8.76719800117632 * "ADS"."Feature_61" + -16.00084767288802 * "ADS"."Feature_62" + 57.938182982601994 * "ADS"."Feature_63" + 12.496940202156162 * "ADS"."Feature_64" + -7.350223647117248 * "ADS"."Feature_65" + -0.0820093224334828 * "ADS"."Feature_66" + -12.750503775271573 * "ADS"."Feature_67" + 25.202260688230574 * "ADS"."Feature_68" + -6.676584344749825 * "ADS"."Feature_69" + -9.730774149339506 * "ADS"."Feature_70" + 3.857631086488638 * "ADS"."Feature_71" + -3.1332920512351743 * "ADS"."Feature_72" + -3.8094921786024396 * "ADS"."Feature_73" + 12.976570565489673 * "ADS"."Feature_74" + 1.0694512093261495 * "ADS"."Feature_75" + 1.60104489977178 * "ADS"."Feature_76" + -15.497283590598473 * "ADS"."Feature_77" + 0.4749086008852972 * "ADS"."Feature_78" + 1.1371476751424991 * "ADS"."Feature_79" + 80.12359087192004 * "ADS"."Feature_80" + 1.6115992992476775 * "ADS"."Feature_81" + 4.66713013268346 * "ADS"."Feature_82" + -6.660432954344353 * "ADS"."Feature_83" + -4.428467289509889 * "ADS"."Feature_84" + 15.913129324427135 * "ADS"."Feature_85" + 6.447319596359101 * "ADS"."Feature_86" + 9.150158543150535 * "ADS"."Feature_87" + 3.9501219766348266 * "ADS"."Feature_88" + 2.4647446160205515 * "ADS"."Feature_89" + 6.748906534282135 * "ADS"."Feature_90" + 7.718533738660023 * "ADS"."Feature_91" + 3.016865196287548 * "ADS"."Feature_92" + -9.495083153446068 * "ADS"."Feature_93" + -1.3148730821202919 * "ADS"."Feature_94" + 63.58173359756996 * "ADS"."Feature_95" + -6.771263198504238 * "ADS"."Feature_96" + 6.014152633190395 * "ADS"."Feature_97" + -7.914215472420907 * "ADS"."Feature_98" + -3.2588642110029693 * "ADS"."Feature_99" + -12.056985258831576 AS "Estimator" 
FROM "RandomReg_100" AS "ADS")
 SELECT linear_model_cte."KEY" AS "KEY", linear_model_cte."Estimator" AS "Estimator" 
FROM linear_model_cte