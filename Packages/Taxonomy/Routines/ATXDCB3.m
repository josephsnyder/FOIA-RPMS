ATXDCB3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 03, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1852,V45.01 ",.03)
 ;;1
 ;;9002226.02101,"1852,V45.81 ",.01)
 ;;V45.81 
 ;;9002226.02101,"1852,V45.81 ",.02)
 ;;V45.82 
 ;;9002226.02101,"1852,V45.81 ",.03)
 ;;1
 ;;9002226.02101,"1852,Z95.0 ",.01)
 ;;Z95.0 
 ;;9002226.02101,"1852,Z95.0 ",.02)
 ;;Z95.1 
 ;;9002226.02101,"1852,Z95.0 ",.03)
 ;;30
 ;;9002226.02101,"1852,Z98.61 ",.01)
 ;;Z98.61 
 ;;9002226.02101,"1852,Z98.61 ",.02)
 ;;Z98.61 
 ;;9002226.02101,"1852,Z98.61 ",.03)
 ;;30
