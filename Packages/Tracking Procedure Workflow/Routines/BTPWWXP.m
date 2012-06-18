BTPWWXP ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 14, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW HPV DNA SCREEN LOINC
 ;
 ; This routine loads Taxonomy BTPW HPV DNA SCREEN LOINC
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
 ;;21,"16280-0 ")
 ;;1
 ;;21,"18478-8 ")
 ;;2
 ;;21,"18479-6 ")
 ;;3
 ;;21,"18480-4 ")
 ;;4
 ;;21,"21440-3 ")
 ;;5
 ;;21,"21441-1 ")
 ;;6
 ;;21,"30167-1 ")
 ;;7
 ;;21,"32047-3 ")
 ;;8
 ;;21,"38372-9 ")
 ;;9
 ;;21,"42481-2 ")
 ;;10
 ;;21,"42770-8 ")
 ;;11
 ;;21,"6514-4 ")
 ;;12
 ;;21,"6515-1 ")
 ;;13
 ;;21,"6516-9 ")
 ;;14
 ;;9002226,1291,.01)
 ;;BTPW HPV DNA SCREEN LOINC
 ;;9002226,1291,.02)
 ;;@
 ;;9002226,1291,.04)
 ;;n
 ;;9002226,1291,.06)
 ;;@
 ;;9002226,1291,.08)
 ;;@
 ;;9002226,1291,.09)
 ;;3060516
 ;;9002226,1291,.11)
 ;;@
 ;;9002226,1291,.12)
 ;;@
 ;;9002226,1291,.13)
 ;;1
 ;;9002226,1291,.14)
 ;;FIHS
 ;;9002226,1291,.15)
 ;;95.3
 ;;9002226,1291,.16)
 ;;@
 ;;9002226,1291,.17)
 ;;@
 ;;9002226,1291,3101)
 ;;@
 ;;9002226.02101,"1291,16280-0 ",.01)
 ;;16280-0
 ;;9002226.02101,"1291,16280-0 ",.02)
 ;;16280-0
 ;;9002226.02101,"1291,18478-8 ",.01)
 ;;18478-8
 ;;9002226.02101,"1291,18478-8 ",.02)
 ;;18478-8
 ;;9002226.02101,"1291,18479-6 ",.01)
 ;;18479-6
 ;;9002226.02101,"1291,18479-6 ",.02)
 ;;18479-6
 ;;9002226.02101,"1291,18480-4 ",.01)
 ;;18480-4
 ;;9002226.02101,"1291,18480-4 ",.02)
 ;;18480-4
 ;;9002226.02101,"1291,21440-3 ",.01)
 ;;21440-3
 ;;9002226.02101,"1291,21440-3 ",.02)
 ;;21440-3
 ;;9002226.02101,"1291,21441-1 ",.01)
 ;;21441-1
 ;;9002226.02101,"1291,21441-1 ",.02)
 ;;21441-1
 ;;9002226.02101,"1291,30167-1 ",.01)
 ;;30167-1
 ;;9002226.02101,"1291,30167-1 ",.02)
 ;;30167-1
 ;;9002226.02101,"1291,32047-3 ",.01)
 ;;32047-3
 ;;9002226.02101,"1291,32047-3 ",.02)
 ;;32047-3
 ;;9002226.02101,"1291,38372-9 ",.01)
 ;;38372-9
 ;;9002226.02101,"1291,38372-9 ",.02)
 ;;38372-9
 ;;9002226.02101,"1291,42481-2 ",.01)
 ;;42481-2
 ;;9002226.02101,"1291,42481-2 ",.02)
 ;;42481-2
 ;;9002226.02101,"1291,42770-8 ",.01)
 ;;42770-8
 ;;9002226.02101,"1291,42770-8 ",.02)
 ;;42770-8
 ;;9002226.02101,"1291,6514-4 ",.01)
 ;;6514-4
 ;;9002226.02101,"1291,6514-4 ",.02)
 ;;6514-4
 ;;9002226.02101,"1291,6515-1 ",.01)
 ;;6515-1
 ;;9002226.02101,"1291,6515-1 ",.02)
 ;;6515-1
 ;;9002226.02101,"1291,6516-9 ",.01)
 ;;6516-9
 ;;9002226.02101,"1291,6516-9 ",.02)
 ;;6516-9
 ;
OTHER ; OTHER ROUTINES
 Q
