BTPWYXB ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 22, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW TUBAL LIGATION CPTS
 ;
 ; This routine loads Taxonomy BTPW TUBAL LIGATION CPTS
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
 ;;21,"58600 ")
 ;;1
 ;;21,"58611 ")
 ;;2
 ;;21,"58670 ")
 ;;3
 ;;9002226,1323,.01)
 ;;BTPW TUBAL LIGATION CPTS
 ;;9002226,1323,.02)
 ;;@
 ;;9002226,1323,.04)
 ;;n
 ;;9002226,1323,.06)
 ;;@
 ;;9002226,1323,.08)
 ;;@
 ;;9002226,1323,.09)
 ;;3060516
 ;;9002226,1323,.11)
 ;;@
 ;;9002226,1323,.12)
 ;;455
 ;;9002226,1323,.13)
 ;;1
 ;;9002226,1323,.14)
 ;;@
 ;;9002226,1323,.15)
 ;;81
 ;;9002226,1323,.16)
 ;;@
 ;;9002226,1323,.17)
 ;;@
 ;;9002226,1323,3101)
 ;;@
 ;;9002226.02101,"1323,58600 ",.01)
 ;;58600 
 ;;9002226.02101,"1323,58600 ",.02)
 ;;58600 
 ;;9002226.02101,"1323,58611 ",.01)
 ;;58611 
 ;;9002226.02101,"1323,58611 ",.02)
 ;;58611 
 ;;9002226.02101,"1323,58670 ",.01)
 ;;58670 
 ;;9002226.02101,"1323,58670 ",.02)
 ;;58670 
 ;
OTHER ; OTHER ROUTINES
 Q
