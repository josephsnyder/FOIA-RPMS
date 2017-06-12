ATXD3Q ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP PHARYNGITIS DXS
 ;
 ; This routine loads Taxonomy BGP PHARYNGITIS DXS
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
 ;;21,"034.0 ")
 ;;1
 ;;21,"462. ")
 ;;2
 ;;21,"J02.0 ")
 ;;3
 ;;21,"J03.00 ")
 ;;4
 ;;21,"J03.01 ")
 ;;5
 ;;21,"J03.80 ")
 ;;6
 ;;21,"J03.81 ")
 ;;7
 ;;21,"J03.90 ")
 ;;8
 ;;21,"J03.91 ")
 ;;9
 ;;9002226,529,.01)
 ;;BGP PHARYNGITIS DXS
 ;;9002226,529,.02)
 ;;@
 ;;9002226,529,.04)
 ;;n
 ;;9002226,529,.06)
 ;;@
 ;;9002226,529,.08)
 ;;0
 ;;9002226,529,.09)
 ;;3130515
 ;;9002226,529,.11)
 ;;@
 ;;9002226,529,.12)
 ;;31
 ;;9002226,529,.13)
 ;;1
 ;;9002226,529,.14)
 ;;@
 ;;9002226,529,.15)
 ;;80
 ;;9002226,529,.16)
 ;;@
 ;;9002226,529,.17)
 ;;@
 ;;9002226,529,3101)
 ;;@
 ;;9002226.02101,"529,034.0 ",.01)
 ;;034.0 
 ;;9002226.02101,"529,034.0 ",.02)
 ;;034.0 
 ;;9002226.02101,"529,034.0 ",.03)
 ;;1
 ;;9002226.02101,"529,462. ",.01)
 ;;462. 
 ;;9002226.02101,"529,462. ",.02)
 ;;463. 
 ;;9002226.02101,"529,462. ",.03)
 ;;1
 ;;9002226.02101,"529,J02.0 ",.01)
 ;;J02.0
 ;;9002226.02101,"529,J02.0 ",.02)
 ;;J02.0
 ;;9002226.02101,"529,J02.0 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.00 ",.01)
 ;;J03.00
 ;;9002226.02101,"529,J03.00 ",.02)
 ;;J03.00
 ;;9002226.02101,"529,J03.00 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.01 ",.01)
 ;;J03.01
 ;;9002226.02101,"529,J03.01 ",.02)
 ;;J03.01
 ;;9002226.02101,"529,J03.01 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.80 ",.01)
 ;;J03.80
 ;;9002226.02101,"529,J03.80 ",.02)
 ;;J03.80
 ;;9002226.02101,"529,J03.80 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.81 ",.01)
 ;;J03.81
 ;;9002226.02101,"529,J03.81 ",.02)
 ;;J03.81
 ;;9002226.02101,"529,J03.81 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.90 ",.01)
 ;;J03.90
 ;;9002226.02101,"529,J03.90 ",.02)
 ;;J03.90
 ;;9002226.02101,"529,J03.90 ",.03)
 ;;30
 ;;9002226.02101,"529,J03.91 ",.01)
 ;;J03.91
 ;;9002226.02101,"529,J03.91 ",.02)
 ;;J03.91
 ;;9002226.02101,"529,J03.91 ",.03)
 ;;30
 ;;9002226.04101,"529,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
