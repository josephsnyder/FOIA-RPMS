BTPWWXN ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 14, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW HPV DNA SCREEN CPTS
 ;
 ; This routine loads Taxonomy BTPW HPV DNA SCREEN CPTS
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
 ;;21,"87620 ")
 ;;1
 ;;9002226,1290,.01)
 ;;BTPW HPV DNA SCREEN CPTS
 ;;9002226,1290,.02)
 ;;@
 ;;9002226,1290,.04)
 ;;n
 ;;9002226,1290,.06)
 ;;@
 ;;9002226,1290,.08)
 ;;@
 ;;9002226,1290,.09)
 ;;3060516
 ;;9002226,1290,.11)
 ;;@
 ;;9002226,1290,.12)
 ;;455
 ;;9002226,1290,.13)
 ;;1
 ;;9002226,1290,.14)
 ;;@
 ;;9002226,1290,.15)
 ;;81
 ;;9002226,1290,.16)
 ;;@
 ;;9002226,1290,.17)
 ;;@
 ;;9002226,1290,3101)
 ;;@
 ;;9002226.02101,"1290,87620 ",.01)
 ;;87620
 ;;9002226.02101,"1290,87620 ",.02)
 ;;87622
 ;
OTHER ; OTHER ROUTINES
 Q