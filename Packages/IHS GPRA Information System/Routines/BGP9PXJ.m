BGP9PXJ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP SMOKELESS TOBACCO CPTS
 ;
 ; This routine loads Taxonomy BGP SMOKELESS TOBACCO CPTS
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
 ;;21,"1035F ")
 ;;1
 ;;9002226,587,.01)
 ;;BGP SMOKELESS TOBACCO CPTS
 ;;9002226,587,.02)
 ;;@
 ;;9002226,587,.04)
 ;;n
 ;;9002226,587,.06)
 ;;@
 ;;9002226,587,.08)
 ;;@
 ;;9002226,587,.09)
 ;;3080529
 ;;9002226,587,.11)
 ;;@
 ;;9002226,587,.12)
 ;;455
 ;;9002226,587,.13)
 ;;1
 ;;9002226,587,.14)
 ;;@
 ;;9002226,587,.15)
 ;;81
 ;;9002226,587,.16)
 ;;@
 ;;9002226,587,.17)
 ;;@
 ;;9002226,587,3101)
 ;;@
 ;;9002226.02101,"587,1035F ",.01)
 ;;1035F 
 ;;9002226.02101,"587,1035F ",.02)
 ;;1035F 
 ;
OTHER ; OTHER ROUTINES
 Q
