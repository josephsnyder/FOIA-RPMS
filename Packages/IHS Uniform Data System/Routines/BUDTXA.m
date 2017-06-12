BUDTXA ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 02, 2004 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD L26 CPTS
 ;
 ; This routine loads Taxonomy BUD L26 CPTS
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
 ;;21,"99381 ")
 ;;1
 ;;21,"99391 ")
 ;;2
 ;;21,"99431 ")
 ;;3
 ;;9002226,232,.01)
 ;;BUD L26 CPTS
 ;;9002226,232,.02)
 ;;@
 ;;9002226,232,.04)
 ;;n
 ;;9002226,232,.06)
 ;;@
 ;;9002226,232,.08)
 ;;0
 ;;9002226,232,.09)
 ;;3031007
 ;;9002226,232,.11)
 ;;@
 ;;9002226,232,.12)
 ;;455
 ;;9002226,232,.13)
 ;;1
 ;;9002226,232,.14)
 ;;@
 ;;9002226,232,.15)
 ;;81
 ;;9002226,232,.16)
 ;;@
 ;;9002226,232,.17)
 ;;@
 ;;9002226,232,3101)
 ;;@
 ;;9002226.02101,"232,99381 ",.01)
 ;;99381 
 ;;9002226.02101,"232,99381 ",.02)
 ;;99383 
 ;;9002226.02101,"232,99391 ",.01)
 ;;99391 
 ;;9002226.02101,"232,99391 ",.02)
 ;;99393 
 ;;9002226.02101,"232,99431 ",.01)
 ;;99431 
 ;;9002226.02101,"232,99431 ",.02)
 ;;99433 
 ;
OTHER ; OTHER ROUTINES
 Q
