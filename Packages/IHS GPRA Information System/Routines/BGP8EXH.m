BGP8EXH ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP ESTIMATED GFR LOINC
 ;
 ; This routine loads Taxonomy BGP ESTIMATED GFR LOINC
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
 ;;21,"33914-3 ")
 ;;1
 ;;21,"45064-3 ")
 ;;2
 ;;21,"45065-0 ")
 ;;3
 ;;21,"45065-8 ")
 ;;4
 ;;21,"48642-3 ")
 ;;5
 ;;21,"48643-1 ")
 ;;6
 ;;9002226,547,.01)
 ;;BGP ESTIMATED GFR LOINC
 ;;9002226,547,.02)
 ;;@
 ;;9002226,547,.04)
 ;;n
 ;;9002226,547,.06)
 ;;@
 ;;9002226,547,.08)
 ;;@
 ;;9002226,547,.09)
 ;;3060830
 ;;9002226,547,.11)
 ;;@
 ;;9002226,547,.12)
 ;;@
 ;;9002226,547,.13)
 ;;@
 ;;9002226,547,.14)
 ;;@
 ;;9002226,547,.15)
 ;;95.3
 ;;9002226,547,.16)
 ;;@
 ;;9002226,547,.17)
 ;;@
 ;;9002226,547,3101)
 ;;@
 ;;9002226.02101,"547,33914-3 ",.01)
 ;;33914-3
 ;;9002226.02101,"547,33914-3 ",.02)
 ;;33914-3
 ;;9002226.02101,"547,45064-3 ",.01)
 ;;45064-3
 ;;9002226.02101,"547,45064-3 ",.02)
 ;;45064-3
 ;;9002226.02101,"547,45065-0 ",.01)
 ;;45065-0
 ;;9002226.02101,"547,45065-0 ",.02)
 ;;45066-8
 ;;9002226.02101,"547,45065-8 ",.01)
 ;;45065-8
 ;;9002226.02101,"547,45065-8 ",.02)
 ;;45065-8
 ;;9002226.02101,"547,48642-3 ",.01)
 ;;48642-3
 ;;9002226.02101,"547,48642-3 ",.02)
 ;;48642-3
 ;;9002226.02101,"547,48643-1 ",.01)
 ;;48643-1
 ;;9002226.02101,"547,48643-1 ",.02)
 ;;48643-1
 ;
OTHER ; OTHER ROUTINES
 Q
