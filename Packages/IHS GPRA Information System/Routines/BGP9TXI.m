BGP9TXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP FLU IZ CVX CODES
 ;
 ; This routine loads Taxonomy BGP FLU IZ CVX CODES
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
 ;;21,"111 ")
 ;;1
 ;;21,"15 ")
 ;;2
 ;;21,"16 ")
 ;;3
 ;;21,"88 ")
 ;;4
 ;;9002226,623,.01)
 ;;BGP FLU IZ CVX CODES
 ;;9002226,623,.02)
 ;;FLU IZ CVX CODES
 ;;9002226,623,.04)
 ;;n
 ;;9002226,623,.06)
 ;;@
 ;;9002226,623,.08)
 ;;0
 ;;9002226,623,.09)
 ;;3050209
 ;;9002226,623,.11)
 ;;@
 ;;9002226,623,.12)
 ;;145
 ;;9002226,623,.13)
 ;;1
 ;;9002226,623,.14)
 ;;@
 ;;9002226,623,.15)
 ;;9999999.14
 ;;9002226,623,.16)
 ;;@
 ;;9002226,623,.17)
 ;;@
 ;;9002226,623,3101)
 ;;@
 ;;9002226.02101,"623,111 ",.01)
 ;;111
 ;;9002226.02101,"623,111 ",.02)
 ;;111
 ;;9002226.02101,"623,15 ",.01)
 ;;15
 ;;9002226.02101,"623,15 ",.02)
 ;;15
 ;;9002226.02101,"623,16 ",.01)
 ;;16
 ;;9002226.02101,"623,16 ",.02)
 ;;16
 ;;9002226.02101,"623,88 ",.01)
 ;;88
 ;;9002226.02101,"623,88 ",.02)
 ;;88
 ;
OTHER ; OTHER ROUTINES
 Q
