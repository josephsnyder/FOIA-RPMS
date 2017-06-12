BGP50V ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP AST LOINC
 ;
 ; This routine loads Taxonomy BGP AST LOINC
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
 ;;21,"1916-6 ")
 ;;5
 ;;21,"1920-8 ")
 ;;1
 ;;21,"27344-1 ")
 ;;2
 ;;21,"30239-8 ")
 ;;3
 ;;21,"44786-2 ")
 ;;4
 ;;9002226,548,.01)
 ;;BGP AST LOINC
 ;;9002226,548,.02)
 ;;AST LOINC CODES
 ;;9002226,548,.04)
 ;;n
 ;;9002226,548,.06)
 ;;@
 ;;9002226,548,.08)
 ;;@
 ;;9002226,548,.09)
 ;;@
 ;;9002226,548,.11)
 ;;@
 ;;9002226,548,.12)
 ;;@
 ;;9002226,548,.13)
 ;;1
 ;;9002226,548,.14)
 ;;FIHS
 ;;9002226,548,.15)
 ;;95.3
 ;;9002226,548,.16)
 ;;@
 ;;9002226,548,.17)
 ;;@
 ;;9002226,548,3101)
 ;;@
 ;;9002226.02101,"548,1916-6 ",.01)
 ;;1916-6
 ;;9002226.02101,"548,1916-6 ",.02)
 ;;1916-6
 ;;9002226.02101,"548,1920-8 ",.01)
 ;;1920-8
 ;;9002226.02101,"548,1920-8 ",.02)
 ;;1920-8
 ;;9002226.02101,"548,27344-1 ",.01)
 ;;27344-1
 ;;9002226.02101,"548,27344-1 ",.02)
 ;;27344-1
 ;;9002226.02101,"548,30239-8 ",.01)
 ;;30239-8
 ;;9002226.02101,"548,30239-8 ",.02)
 ;;30239-8
 ;;9002226.02101,"548,44786-2 ",.01)
 ;;44786-2
 ;;9002226.02101,"548,44786-2 ",.02)
 ;;44786-2
 ;
OTHER ; OTHER ROUTINES
 Q
