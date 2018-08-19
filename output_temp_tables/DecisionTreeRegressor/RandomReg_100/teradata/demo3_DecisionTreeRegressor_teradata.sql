-- This SQL code was generated by sklearn2sql (development version).
-- Copyright 2018

-- Model : DecisionTreeRegressor
-- Dataset : RandomReg_100
-- Database : teradata


-- This SQL code can contain one or more statements, to be executed in the order they appear in this file.



-- Model deployment code

WITH "DT_node_lookup" AS 
(SELECT "ADS"."KEY" AS "KEY", CASE WHEN ("ADS"."Feature_80" <= CAST(-0.207161724567413 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_41" <= CAST(-0.521707713603973 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_55" <= CAST(0.80115681886673 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_73" <= CAST(0.410475790500641 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_63" <= CAST(0.046037070453167 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_96" <= CAST(0.870626211166382 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_46" <= CAST(-0.203295633196831 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_82" <= CAST(-0.031526863574982 AS DOUBLE PRECISION)) THEN 8 ELSE 9 END ELSE CASE WHEN ("ADS"."Feature_92" <= CAST(-0.663230061531067 AS DOUBLE PRECISION)) THEN 11 ELSE 12 END END ELSE CASE WHEN ("ADS"."Feature_53" <= CAST(-0.357666313648224 AS DOUBLE PRECISION)) THEN 14 ELSE 15 END END ELSE CASE WHEN ("ADS"."Feature_6" <= CAST(0.476222574710846 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_1" <= CAST(-0.312213838100433 AS DOUBLE PRECISION)) THEN 18 ELSE 19 END ELSE 20 END END ELSE CASE WHEN ("ADS"."Feature_78" <= CAST(-0.674306273460388 AS DOUBLE PRECISION)) THEN 22 ELSE CASE WHEN ("ADS"."Feature_77" <= CAST(-0.551843404769897 AS DOUBLE PRECISION)) THEN 24 ELSE 25 END END END ELSE CASE WHEN ("ADS"."Feature_8" <= CAST(-1.342859864234924 AS DOUBLE PRECISION)) THEN 27 ELSE CASE WHEN ("ADS"."Feature_23" <= CAST(0.169645100831985 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_83" <= CAST(-0.134808778762817 AS DOUBLE PRECISION)) THEN 30 ELSE 31 END ELSE 32 END END END ELSE CASE WHEN ("ADS"."Feature_63" <= CAST(0.025700129568577 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_13" <= CAST(-0.467392265796661 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_31" <= CAST(-0.720977783203125 AS DOUBLE PRECISION)) THEN 36 ELSE CASE WHEN ("ADS"."Feature_22" <= CAST(-1.191935181617737 AS DOUBLE PRECISION)) THEN 38 ELSE CASE WHEN ("ADS"."Feature_83" <= CAST(0.841611742973328 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_47" <= CAST(-0.3343585729599 AS DOUBLE PRECISION)) THEN 41 ELSE 42 END ELSE 43 END END END ELSE CASE WHEN ("ADS"."Feature_45" <= CAST(-1.083739280700684 AS DOUBLE PRECISION)) THEN 45 ELSE CASE WHEN ("ADS"."Feature_6" <= CAST(0.261477947235107 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_99" <= CAST(-0.279044419527054 AS DOUBLE PRECISION)) THEN 48 ELSE 49 END ELSE CASE WHEN ("ADS"."Feature_91" <= CAST(1.60048258304596 AS DOUBLE PRECISION)) THEN 51 ELSE 52 END END END END ELSE CASE WHEN ("ADS"."Feature_33" <= CAST(-0.182380154728889 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_98" <= CAST(1.170047044754028 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_85" <= CAST(-0.587240517139435 AS DOUBLE PRECISION)) THEN 56 ELSE CASE WHEN ("ADS"."Feature_46" <= CAST(1.447135090827942 AS DOUBLE PRECISION)) THEN 58 ELSE 59 END END ELSE 60 END ELSE CASE WHEN ("ADS"."Feature_86" <= CAST(-0.360429525375366 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_23" <= CAST(-0.66999739408493 AS DOUBLE PRECISION)) THEN 63 ELSE 64 END ELSE CASE WHEN ("ADS"."Feature_99" <= CAST(-0.844694972038269 AS DOUBLE PRECISION)) THEN 66 ELSE CASE WHEN ("ADS"."Feature_26" <= CAST(0.474325954914093 AS DOUBLE PRECISION)) THEN 68 ELSE 69 END END END END END END ELSE CASE WHEN ("ADS"."Feature_39" <= CAST(0.455737978219986 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_57" <= CAST(0.734081864356995 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_94" <= CAST(-0.637534737586975 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_80" <= CAST(-0.08977922052145 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_45" <= CAST(-0.501436710357666 AS DOUBLE PRECISION)) THEN 75 ELSE CASE WHEN ("ADS"."Feature_79" <= CAST(-1.670367240905762 AS DOUBLE PRECISION)) THEN 77 ELSE 78 END END ELSE CASE WHEN ("ADS"."Feature_31" <= CAST(-0.403281688690186 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_45" <= CAST(-0.473283410072327 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_5" <= CAST(0.026429329067469 AS DOUBLE PRECISION)) THEN 82 ELSE 83 END ELSE 84 END ELSE CASE WHEN ("ADS"."Feature_19" <= CAST(-0.800965666770935 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_86" <= CAST(1.55530035495758 AS DOUBLE PRECISION)) THEN 87 ELSE 88 END ELSE CASE WHEN ("ADS"."Feature_60" <= CAST(0.032410457730293 AS DOUBLE PRECISION)) THEN 90 ELSE 91 END END END END ELSE CASE WHEN ("ADS"."Feature_11" <= CAST(-0.471619129180908 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_67" <= CAST(0.346039742231369 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_98" <= CAST(0.428979098796844 AS DOUBLE PRECISION)) THEN 95 ELSE 96 END ELSE 97 END ELSE CASE WHEN ("ADS"."Feature_57" <= CAST(-0.419294387102127 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_18" <= CAST(0.656422972679138 AS DOUBLE PRECISION)) THEN 100 ELSE 101 END ELSE CASE WHEN ("ADS"."Feature_74" <= CAST(-1.529185771942139 AS DOUBLE PRECISION)) THEN 103 ELSE CASE WHEN ("ADS"."Feature_46" <= CAST(1.854951620101929 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_52" <= CAST(0.849558353424072 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_49" <= CAST(-0.819584667682648 AS DOUBLE PRECISION)) THEN 107 ELSE 108 END ELSE 109 END ELSE 110 END END END END END ELSE CASE WHEN ("ADS"."Feature_80" <= CAST(0.931756496429443 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_58" <= CAST(-0.656188726425171 AS DOUBLE PRECISION)) THEN 113 ELSE 114 END ELSE CASE WHEN ("ADS"."Feature_52" <= CAST(-0.242637634277344 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_20" <= CAST(1.001024484634399 AS DOUBLE PRECISION)) THEN 117 ELSE 118 END ELSE CASE WHEN ("ADS"."Feature_83" <= CAST(0.187638446688652 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_76" <= CAST(1.00787889957428 AS DOUBLE PRECISION)) THEN 121 ELSE 122 END ELSE 123 END END END END ELSE CASE WHEN ("ADS"."Feature_1" <= CAST(1.207471132278442 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_18" <= CAST(0.577523589134216 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_2" <= CAST(-0.629206538200378 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_52" <= CAST(1.11711061000824 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_73" <= CAST(0.666727423667908 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_66" <= CAST(-0.734147369861603 AS DOUBLE PRECISION)) THEN 130 ELSE 131 END ELSE 132 END ELSE 133 END ELSE CASE WHEN ("ADS"."Feature_80" <= CAST(0.460169017314911 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_29" <= CAST(0.695399105548859 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_13" <= CAST(0.152651578187942 AS DOUBLE PRECISION)) THEN 137 ELSE 138 END ELSE CASE WHEN ("ADS"."Feature_57" <= CAST(0.75932502746582 AS DOUBLE PRECISION)) THEN 140 ELSE 141 END END ELSE CASE WHEN ("ADS"."Feature_48" <= CAST(0.036547869443893 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_28" <= CAST(-0.564424276351929 AS DOUBLE PRECISION)) THEN 144 ELSE 145 END ELSE CASE WHEN ("ADS"."Feature_0" <= CAST(1.148632287979126 AS DOUBLE PRECISION)) THEN CASE WHEN ("ADS"."Feature_37" <= CAST(0.136662214994431 AS DOUBLE PRECISION)) THEN 148 ELSE 149 END ELSE 150 END END END END ELSE CASE WHEN ("ADS"."Feature_6" <= CAST(-0.238776177167892 AS DOUBLE PRECISION)) THEN 152 ELSE CASE WHEN ("ADS"."Feature_68" <= CAST(0.404733061790466 AS DOUBLE PRECISION)) THEN 154 ELSE 155 END END END ELSE CASE WHEN ("ADS"."Feature_99" <= CAST(-0.326110899448395 AS DOUBLE PRECISION)) THEN 157 ELSE 158 END END END END AS node_id_2 
FROM "RandomReg_100" AS "ADS"), 
dummy_cte AS 
(SELECT CAST(0.0 AS DOUBLE PRECISION) AS "X"), 
"DT_node_data" AS 
(SELECT "Values".nid AS nid, CAST("Values"."E" AS DOUBLE PRECISION) AS "E" 
FROM (SELECT 8 AS nid, CAST(-291.84388737177295 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 9 AS nid, CAST(-290.52672487497273 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 11 AS nid, CAST(-310.56333873263117 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 12 AS nid, CAST(-306.858269739786 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 14 AS nid, CAST(-361.1632498041779 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 15 AS nid, CAST(-338.5499431552182 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 18 AS nid, CAST(-234.79191600815204 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 19 AS nid, CAST(-234.4658092919816 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 20 AS nid, CAST(-257.9792248911822 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 22 AS nid, CAST(-146.53732849176905 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 24 AS nid, CAST(-190.64702660055804 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 25 AS nid, CAST(-207.8249772062679 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 27 AS nid, CAST(-327.50301874204285 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 30 AS nid, CAST(-436.89308608869476 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 31 AS nid, CAST(-430.7322420182495 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 32 AS nid, CAST(-454.8215873712685 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 36 AS nid, CAST(-280.96508601336274 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 38 AS nid, CAST(-167.53786194153668 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 41 AS nid, CAST(-196.1762239786283 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 42 AS nid, CAST(-197.78121613409627 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 43 AS nid, CAST(-200.33739348214584 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 45 AS nid, CAST(-190.99779883345465 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 48 AS nid, CAST(-54.81786631978007 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 49 AS nid, CAST(-42.10296471792358 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 51 AS nid, CAST(-86.11645147491663 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 52 AS nid, CAST(-102.26347334362194 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 56 AS nid, CAST(39.44300011869663 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 58 AS nid, CAST(75.60702200307296 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 59 AS nid, CAST(75.33652615813574 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 60 AS nid, CAST(-55.13785992768933 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 63 AS nid, CAST(215.90083761986222 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 64 AS nid, CAST(183.77184322024888 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 66 AS nid, CAST(136.92680038236625 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 68 AS nid, CAST(111.49818730604603 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 69 AS nid, CAST(114.45423222726873 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 75 AS nid, CAST(-30.698977731486934 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 77 AS nid, CAST(2.273972887782435 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 78 AS nid, CAST(-4.904591434376485 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 82 AS nid, CAST(62.605323392817695 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 83 AS nid, CAST(48.423335696929506 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 84 AS nid, CAST(90.67187465696158 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 87 AS nid, CAST(105.13302468571077 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 88 AS nid, CAST(122.37894790928654 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 90 AS nid, CAST(144.72865942116238 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 91 AS nid, CAST(157.32675574653368 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 95 AS nid, CAST(-172.78010697974267 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 96 AS nid, CAST(-202.60833883427068 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 97 AS nid, CAST(-140.57351311758325 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 100 AS nid, CAST(38.19976422974275 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 101 AS nid, CAST(-3.859069494267214 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 103 AS nid, CAST(-87.98512254511704 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 107 AS nid, CAST(-79.28963380412186 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 108 AS nid, CAST(-79.78381998603227 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 109 AS nid, CAST(-81.78670049771183 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 110 AS nid, CAST(-76.8627548707201 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 113 AS nid, CAST(94.43377409338842 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 114 AS nid, CAST(-10.715443370853677 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 117 AS nid, CAST(278.8145316391315 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 118 AS nid, CAST(327.27619652811467 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 121 AS nid, CAST(175.64031367667985 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 122 AS nid, CAST(178.09986345168227 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 123 AS nid, CAST(233.33694106574703 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 130 AS nid, CAST(130.61554227069345 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 131 AS nid, CAST(128.74971924769997 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 132 AS nid, CAST(114.66116147528915 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 133 AS nid, CAST(174.05588768325575 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 137 AS nid, CAST(294.8906555832285 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 138 AS nid, CAST(270.9786797098036 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 140 AS nid, CAST(245.21860440601063 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 141 AS nid, CAST(242.60253144460478 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 144 AS nid, CAST(167.433500065504 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 145 AS nid, CAST(180.24317891913591 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 148 AS nid, CAST(212.81710450150229 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 149 AS nid, CAST(219.92766037620171 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 150 AS nid, CAST(195.39419395402132 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 152 AS nid, CAST(419.8117904787066 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 154 AS nid, CAST(294.7646845425511 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 155 AS nid, CAST(305.0402047722153 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 157 AS nid, CAST(-107.89147253045782 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte UNION ALL SELECT 158 AS nid, CAST(-51.54063841079579 AS DOUBLE PRECISION) AS "E" 
FROM dummy_cte) AS "Values"), 
"DT_Output" AS 
(SELECT "DT_node_lookup"."KEY" AS "KEY", "DT_node_lookup".node_id_2 AS node_id_2, "DT_node_data".nid AS nid, "DT_node_data"."E" AS "E" 
FROM "DT_node_lookup" LEFT OUTER JOIN "DT_node_data" ON "DT_node_lookup".node_id_2 = "DT_node_data".nid)
 SELECT "DT_Output"."KEY" AS "KEY", "DT_Output"."E" AS "Estimator" 
FROM "DT_Output"