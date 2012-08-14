BQITXC ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 06, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BGP CABG CPTS
 ;
 ; This routine loads Taxonomy BGP CABG CPTS
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
 ;;21,"33510 ")
 ;;1
 ;;21,"33521 ")
 ;;2
 ;;21,"33533 ")
 ;;3
 ;;21,"33572 ")
 ;;4
 ;;21,"35600 ")
 ;;5
 ;;9002226,345,.01)
 ;;BGP CABG CPTS
 ;;9002226,345,.02)
 ;;@
 ;;9002226,345,.04)
 ;;n
 ;;9002226,345,.06)
 ;;@
 ;;9002226,345,.08)
 ;;0
 ;;9002226,345,.09)
 ;;3060220
 ;;9002226,345,.11)
 ;;@
 ;;9002226,345,.12)
 ;;455
 ;;9002226,345,.13)
 ;;1
 ;;9002226,345,.14)
 ;;@
 ;;9002226,345,.15)
 ;;81
 ;;9002226,345,.16)
 ;;@
 ;;9002226,345,.17)
 ;;@
 ;;9002226,345,3101)
 ;;@
 ;;9002226.02101,"345,33510 ",.01)
 ;;33510 
 ;;9002226.02101,"345,33510 ",.02)
 ;;33519 
 ;;9002226.02101,"345,33521 ",.01)
 ;;33521 
 ;;9002226.02101,"345,33521 ",.02)
 ;;33523 
 ;;9002226.02101,"345,33533 ",.01)
 ;;33533 
 ;;9002226.02101,"345,33533 ",.02)
 ;;33536 
 ;;9002226.02101,"345,33572 ",.01)
 ;;33572 
 ;;9002226.02101,"345,33572 ",.02)
 ;;33572 
 ;;9002226.02101,"345,35600 ",.01)
 ;;35600 
 ;;9002226.02101,"345,35600 ",.02)
 ;;35600 
 ;
OTHER ; OTHER ROUTINES
 Q