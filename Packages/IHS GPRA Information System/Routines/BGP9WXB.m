BGP9WXB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP CMS ANTI-PLATELET CLASS
 ;
 ; This routine loads Taxonomy BGP CMS ANTI-PLATELET CLASS
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
 ;;21,"BL700 ")
 ;;1
 ;;9002226,472,.01)
 ;;BGP CMS ANTI-PLATELET CLASS
 ;;9002226,472,.02)
 ;;@
 ;;9002226,472,.04)
 ;;n
 ;;9002226,472,.06)
 ;;@
 ;;9002226,472,.08)
 ;;@
 ;;9002226,472,.09)
 ;;@
 ;;9002226,472,.11)
 ;;@
 ;;9002226,472,.12)
 ;;@
 ;;9002226,472,.13)
 ;;1
 ;;9002226,472,.14)
 ;;@
 ;;9002226,472,.15)
 ;;@
 ;;9002226,472,.16)
 ;;@
 ;;9002226,472,.17)
 ;;@
 ;;9002226,472,3101)
 ;;@
 ;;9002226.02101,"472,BL700 ",.01)
 ;;BL700
 ;;9002226.02101,"472,BL700 ",.02)
 ;;BL700
 ;
OTHER ; OTHER ROUTINES
 Q
