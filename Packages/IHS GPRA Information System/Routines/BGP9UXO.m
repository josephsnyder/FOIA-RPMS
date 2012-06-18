BGP9UXO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP CPT MISCARRIAGE
 ;
 ; This routine loads Taxonomy BGP CPT MISCARRIAGE
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
 ;;21,"59812 ")
 ;;1
 ;;9002226,712,.01)
 ;;BGP CPT MISCARRIAGE
 ;;9002226,712,.02)
 ;;@
 ;;9002226,712,.04)
 ;;n
 ;;9002226,712,.06)
 ;;@
 ;;9002226,712,.08)
 ;;0
 ;;9002226,712,.09)
 ;;3060911
 ;;9002226,712,.11)
 ;;@
 ;;9002226,712,.12)
 ;;455
 ;;9002226,712,.13)
 ;;1
 ;;9002226,712,.14)
 ;;@
 ;;9002226,712,.15)
 ;;81
 ;;9002226,712,.16)
 ;;@
 ;;9002226,712,.17)
 ;;@
 ;;9002226,712,3101)
 ;;@
 ;;9002226.02101,"712,59812 ",.01)
 ;;59812 
 ;;9002226.02101,"712,59812 ",.02)
 ;;59830 
 ;
OTHER ; OTHER ROUTINES
 Q
