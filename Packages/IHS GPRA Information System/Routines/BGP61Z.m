BGP61Z ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 31, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP CPT DTAP/TD
 ;
 ; This routine loads Taxonomy BGP CPT DTAP/TD
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
 ;;21,"90714 ")
 ;;1
 ;;21,"90718 ")
 ;;2
 ;;9002226,2077,.01)
 ;;BGP CPT DTAP/TD
 ;;9002226,2077,.02)
 ;;@
 ;;9002226,2077,.04)
 ;;@
 ;;9002226,2077,.06)
 ;;@
 ;;9002226,2077,.08)
 ;;0
 ;;9002226,2077,.09)
 ;;3150831
 ;;9002226,2077,.11)
 ;;@
 ;;9002226,2077,.12)
 ;;455
 ;;9002226,2077,.13)
 ;;1
 ;;9002226,2077,.14)
 ;;@
 ;;9002226,2077,.15)
 ;;81
 ;;9002226,2077,.16)
 ;;@
 ;;9002226,2077,.17)
 ;;@
 ;;9002226,2077,3101)
 ;;@
 ;;9002226.02101,"2077,90714 ",.01)
 ;;90714 
 ;;9002226.02101,"2077,90714 ",.02)
 ;;90715 
 ;;9002226.02101,"2077,90718 ",.01)
 ;;90718 
 ;;9002226.02101,"2077,90718 ",.02)
 ;;90718 
 ;
OTHER ; OTHER ROUTINES
 Q
