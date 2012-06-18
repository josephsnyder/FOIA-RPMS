BGP8EXL ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP FRACTURE CPTS
 ;
 ; This routine loads Taxonomy BGP FRACTURE CPTS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"21800 ")
 ;;1
 ;;21,"22305 ")
 ;;2
 ;;21,"22520 ")
 ;;3
 ;;21,"22521 ")
 ;;4
 ;;21,"22523 ")
 ;;5
 ;;21,"22524 ")
 ;;6
 ;;21,"23500 ")
 ;;7
 ;;21,"23570 ")
 ;;8
 ;;21,"23665 ")
 ;;9
 ;;21,"24500 ")
 ;;10
 ;;21,"24620 ")
 ;;11
 ;;21,"24635 ")
 ;;12
 ;;21,"24650 ")
 ;;13
 ;;21,"25500 ")
 ;;14
 ;;21,"25611 ")
 ;;15
 ;;21,"25620 ")
 ;;16
 ;;21,"25622 ")
 ;;17
 ;;21,"25680 ")
 ;;18
 ;;21,"25685 ")
 ;;19
 ;;21,"27193 ")
 ;;20
 ;;21,"27254 ")
 ;;21
 ;;21,"27500 ")
 ;;22
 ;;21,"27520 ")
 ;;23
 ;;21,"27750 ")
 ;;24
 ;;21,"S2360 ")
 ;;25
 ;;21,"S2362 ")
 ;;26
 ;;9002226,481,.01)
 ;;BGP FRACTURE CPTS
 ;;9002226,481,.02)
 ;;@
 ;;9002226,481,.04)
 ;;@
 ;;9002226,481,.06)
 ;;@
 ;;9002226,481,.08)
 ;;0
 ;;9002226,481,.09)
 ;;3070921
 ;;9002226,481,.11)
 ;;@
 ;;9002226,481,.12)
 ;;455
 ;;9002226,481,.13)
 ;;1
 ;;9002226,481,.14)
 ;;@
 ;;9002226,481,.15)
 ;;81
 ;;9002226,481,.16)
 ;;@
 ;;9002226,481,.17)
 ;;@
 ;;9002226,481,3101)
 ;;@
 ;;9002226.02101,"481,21800 ",.01)
 ;;21800 
 ;;9002226.02101,"481,21800 ",.02)
 ;;21825 
 ;;9002226.02101,"481,22305 ",.01)
 ;;22305 
 ;;9002226.02101,"481,22305 ",.02)
 ;;22328 
 ;;9002226.02101,"481,22520 ",.01)
 ;;22520 
 ;;9002226.02101,"481,22520 ",.02)
 ;;22520 
 ;;9002226.02101,"481,22521 ",.01)
 ;;22521 
 ;;9002226.02101,"481,22521 ",.02)
 ;;22521 
 ;;9002226.02101,"481,22523 ",.01)
 ;;22523 
 ;;9002226.02101,"481,22523 ",.02)
 ;;22523 
 ;;9002226.02101,"481,22524 ",.01)
 ;;22524 
 ;;9002226.02101,"481,22524 ",.02)
 ;;22524 
 ;;9002226.02101,"481,23500 ",.01)
 ;;23500 
 ;;9002226.02101,"481,23500 ",.02)
 ;;23515 
 ;;9002226.02101,"481,23570 ",.01)
 ;;23570 
 ;;9002226.02101,"481,23570 ",.02)
 ;;23630 
 ;;9002226.02101,"481,23665 ",.01)
 ;;23665 
 ;;9002226.02101,"481,23665 ",.02)
 ;;23680 
 ;;9002226.02101,"481,24500 ",.01)
 ;;24500 
 ;;9002226.02101,"481,24500 ",.02)
 ;;24587 
 ;;9002226.02101,"481,24620 ",.01)
 ;;24620 
 ;;9002226.02101,"481,24620 ",.02)
 ;;24620 
 ;;9002226.02101,"481,24635 ",.01)
 ;;24635 
 ;;9002226.02101,"481,24635 ",.02)
 ;;24635 
 ;;9002226.02101,"481,24650 ",.01)
 ;;24650 
 ;;9002226.02101,"481,24650 ",.02)
 ;;24685 
 ;;9002226.02101,"481,25500 ",.01)
 ;;25500 
 ;;9002226.02101,"481,25500 ",.02)
 ;;25609 
 ;;9002226.02101,"481,25611 ",.01)
 ;;25611 
 ;;9002226.02101,"481,25611 ",.02)
 ;;25611 
 ;;9002226.02101,"481,25620 ",.01)
 ;;25620 
 ;;9002226.02101,"481,25620 ",.02)
 ;;25620 
 ;;9002226.02101,"481,25622 ",.01)
 ;;25622 
 ;;9002226.02101,"481,25622 ",.02)
 ;;25652 
 ;;9002226.02101,"481,25680 ",.01)
 ;;25680 
 ;;9002226.02101,"481,25680 ",.02)
 ;;25680 
 ;;9002226.02101,"481,25685 ",.01)
 ;;25685 
 ;;9002226.02101,"481,25685 ",.02)
 ;;25685 
 ;;9002226.02101,"481,27193 ",.01)
 ;;27193 
 ;;9002226.02101,"481,27193 ",.02)
 ;;27248 
 ;;9002226.02101,"481,27254 ",.01)
 ;;27254 
 ;;9002226.02101,"481,27254 ",.02)
 ;;27254 
 ;;9002226.02101,"481,27500 ",.01)
 ;;27500 
 ;;9002226.02101,"481,27500 ",.02)
 ;;27514 
 ;;9002226.02101,"481,27520 ",.01)
 ;;27520 
 ;;9002226.02101,"481,27520 ",.02)
 ;;27540 
 ;;9002226.02101,"481,27750 ",.01)
 ;;27750 
 ;;9002226.02101,"481,27750 ",.02)
 ;;27828 
 ;;9002226.02101,"481,S2360 ",.01)
 ;;S2360 
 ;;9002226.02101,"481,S2360 ",.02)
 ;;S2360 
 ;;9002226.02101,"481,S2362 ",.01)
 ;;S2362 
 ;;9002226.02101,"481,S2362 ",.02)
 ;;S2362 
 ;
OTHER ; OTHER ROUTINES
 Q
