ATXD3P ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP PCI DXS
 ;
 ; This routine loads Taxonomy BGP PCI DXS
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
 ;;21,"V45.82 ")
 ;;1
 ;;21,"Z95.5 ")
 ;;2
 ;;21,"Z98.61 ")
 ;;3
 ;;9002226,942,.01)
 ;;BGP PCI DXS
 ;;9002226,942,.02)
 ;;@
 ;;9002226,942,.04)
 ;;n
 ;;9002226,942,.06)
 ;;@
 ;;9002226,942,.08)
 ;;0
 ;;9002226,942,.09)
 ;;3100420
 ;;9002226,942,.11)
 ;;@
 ;;9002226,942,.12)
 ;;31
 ;;9002226,942,.13)
 ;;1
 ;;9002226,942,.14)
 ;;@
 ;;9002226,942,.15)
 ;;80
 ;;9002226,942,.16)
 ;;@
 ;;9002226,942,.17)
 ;;@
 ;;9002226,942,3101)
 ;;@
 ;;9002226.02101,"942,V45.82 ",.01)
 ;;V45.82 
 ;;9002226.02101,"942,V45.82 ",.02)
 ;;V45.82 
 ;;9002226.02101,"942,V45.82 ",.03)
 ;;1
 ;;9002226.02101,"942,Z95.5 ",.01)
 ;;Z95.5 
 ;;9002226.02101,"942,Z95.5 ",.02)
 ;;Z95.5 
 ;;9002226.02101,"942,Z95.5 ",.03)
 ;;30
 ;;9002226.02101,"942,Z98.61 ",.01)
 ;;Z98.61 
 ;;9002226.02101,"942,Z98.61 ",.02)
 ;;Z98.61 
 ;;9002226.02101,"942,Z98.61 ",.03)
 ;;30
 ;;9002226.04101,"942,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
