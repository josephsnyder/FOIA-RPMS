BTPWVXF ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 14, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW BRST MRI PROC
 ;
 ; This routine loads Taxonomy BTPW BRST MRI PROC
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
 ;;21,"88.92 ")
 ;;1
 ;;9002226,1258,.01)
 ;;BTPW BRST MRI PROC
 ;;9002226,1258,.02)
 ;;@
 ;;9002226,1258,.04)
 ;;n
 ;;9002226,1258,.06)
 ;;@
 ;;9002226,1258,.08)
 ;;0
 ;;9002226,1258,.09)
 ;;3061103
 ;;9002226,1258,.11)
 ;;@
 ;;9002226,1258,.12)
 ;;255
 ;;9002226,1258,.13)
 ;;1
 ;;9002226,1258,.14)
 ;;@
 ;;9002226,1258,.15)
 ;;80.1
 ;;9002226,1258,.16)
 ;;@
 ;;9002226,1258,.17)
 ;;@
 ;;9002226,1258,3101)
 ;;@
 ;;9002226.02101,"1258,88.92 ",.01)
 ;;88.92
 ;;9002226.02101,"1258,88.92 ",.02)
 ;;88.92
 ;
OTHER ; OTHER ROUTINES
 Q
