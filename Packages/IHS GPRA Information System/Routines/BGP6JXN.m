BGP6JXN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON FEB 09, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;FEB 09, 2006
 ;;BGP CPT HIV TESTS
 ;
 ; This routine loads Taxonomy BGP CPT HIV TESTS
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
 ;;21,"86689 ")
 ;;1
 ;;21,"86701 ")
 ;;2
 ;;21,"87390 ")
 ;;3
 ;;21,"87534 ")
 ;;4
 ;;9002226,310,.01)
 ;;BGP CPT HIV TESTS
 ;;9002226,310,.02)
 ;;@
 ;;9002226,310,.04)
 ;;@
 ;;9002226,310,.06)
 ;;@
 ;;9002226,310,.08)
 ;;0
 ;;9002226,310,.09)
 ;;3060209
 ;;9002226,310,.11)
 ;;@
 ;;9002226,310,.12)
 ;;455
 ;;9002226,310,.13)
 ;;1
 ;;9002226,310,.14)
 ;;@
 ;;9002226,310,.15)
 ;;81
 ;;9002226,310,.16)
 ;;@
 ;;9002226,310,.17)
 ;;@
 ;;9002226,310,3101)
 ;;@
 ;;9002226.02101,"310,86689 ",.01)
 ;;86689 
 ;;9002226.02101,"310,86689 ",.02)
 ;;86689 
 ;;9002226.02101,"310,86701 ",.01)
 ;;86701 
 ;;9002226.02101,"310,86701 ",.02)
 ;;86703 
 ;;9002226.02101,"310,87390 ",.01)
 ;;87390 
 ;;9002226.02101,"310,87390 ",.02)
 ;;87391 
 ;;9002226.02101,"310,87534 ",.01)
 ;;87534 
 ;;9002226.02101,"310,87534 ",.02)
 ;;87539 
 ;
OTHER ; OTHER ROUTINES
 Q
