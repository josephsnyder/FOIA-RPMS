ATXO1M ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP MAMMOGRAM PROCEDURES
 ;
 ; This routine loads Taxonomy BGP MAMMOGRAM PROCEDURES
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
 ;;21,"87.36 ")
 ;;1
 ;;21,"BH00ZZZ ")
 ;;2
 ;;21,"BH01ZZZ ")
 ;;3
 ;;21,"BH02ZZZ ")
 ;;4
 ;;9002226,412,.01)
 ;;BGP MAMMOGRAM PROCEDURES
 ;;9002226,412,.02)
 ;;MAMMOGRAM PROCEDURES
 ;;9002226,412,.04)
 ;;n
 ;;9002226,412,.06)
 ;;@
 ;;9002226,412,.08)
 ;;0
 ;;9002226,412,.09)
 ;;3130514
 ;;9002226,412,.11)
 ;;@
 ;;9002226,412,.12)
 ;;450
 ;;9002226,412,.13)
 ;;1
 ;;9002226,412,.14)
 ;;@
 ;;9002226,412,.15)
 ;;80.1
 ;;9002226,412,.16)
 ;;@
 ;;9002226,412,.17)
 ;;@
 ;;9002226,412,3101)
 ;;@
 ;;9002226.02101,"412,87.36 ",.01)
 ;;87.36 
 ;;9002226.02101,"412,87.36 ",.02)
 ;;87.37 
 ;;9002226.02101,"412,87.36 ",.03)
 ;;2
 ;;9002226.02101,"412,BH00ZZZ ",.01)
 ;;BH00ZZZ
 ;;9002226.02101,"412,BH00ZZZ ",.02)
 ;;BH00ZZZ
 ;;9002226.02101,"412,BH00ZZZ ",.03)
 ;;31
 ;;9002226.02101,"412,BH01ZZZ ",.01)
 ;;BH01ZZZ
 ;;9002226.02101,"412,BH01ZZZ ",.02)
 ;;BH01ZZZ
 ;;9002226.02101,"412,BH01ZZZ ",.03)
 ;;31
 ;;9002226.02101,"412,BH02ZZZ ",.01)
 ;;BH02ZZZ
 ;;9002226.02101,"412,BH02ZZZ ",.02)
 ;;BH02ZZZ
 ;;9002226.02101,"412,BH02ZZZ ",.03)
 ;;31
 ;;9002226.04101,"412,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
