BGP6GXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;DEC 13, 2005
 ;;BGP GROUP A STREP LOINC
 ;
 ; This routine loads Taxonomy BGP GROUP A STREP LOINC
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
 ;;21,"11268-0 ")
 ;;1
 ;;21,"18481-2 ")
 ;;2
 ;;21,"546-2 ")
 ;;3
 ;;21,"626-2 ")
 ;;4
 ;;21,"6556-5 ")
 ;;5
 ;;21,"6557-3 ")
 ;;6
 ;;9002226,349,.01)
 ;;BGP GROUP A STREP LOINC
 ;;9002226,349,.02)
 ;;@
 ;;9002226,349,.04)
 ;;n
 ;;9002226,349,.06)
 ;;@
 ;;9002226,349,.08)
 ;;@
 ;;9002226,349,.09)
 ;;@
 ;;9002226,349,.11)
 ;;@
 ;;9002226,349,.12)
 ;;@
 ;;9002226,349,.13)
 ;;1
 ;;9002226,349,.14)
 ;;FIHS
 ;;9002226,349,.15)
 ;;95.3
 ;;9002226,349,.16)
 ;;@
 ;;9002226,349,.17)
 ;;@
 ;;9002226,349,3101)
 ;;@
 ;;9002226.02101,"349,11268-0 ",.01)
 ;;11268-0
 ;;9002226.02101,"349,11268-0 ",.02)
 ;;11268-0
 ;;9002226.02101,"349,18481-2 ",.01)
 ;;18481-2
 ;;9002226.02101,"349,18481-2 ",.02)
 ;;18481-2
 ;;9002226.02101,"349,546-2 ",.01)
 ;;546-2
 ;;9002226.02101,"349,546-2 ",.02)
 ;;546-2
 ;;9002226.02101,"349,626-2 ",.01)
 ;;626-2
 ;;9002226.02101,"349,626-2 ",.02)
 ;;626-2
 ;;9002226.02101,"349,6556-5 ",.01)
 ;;6556-5
 ;;9002226.02101,"349,6556-5 ",.02)
 ;;6556-5
 ;;9002226.02101,"349,6557-3 ",.01)
 ;;6557-3
 ;;9002226.02101,"349,6557-3 ",.02)
 ;;6557-3
 ;
OTHER ; OTHER ROUTINES
 Q
