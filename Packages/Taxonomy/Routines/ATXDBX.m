ATXDBX ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;SURVEILLANCE ILI NO TMP NEEDED
 ;
 ; This routine loads Taxonomy SURVEILLANCE ILI NO TMP NEEDED
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
 ;;21,"487.0 ")
 ;;1
 ;;21,"J09.X1 ")
 ;;8
 ;;21,"J09.X2 ")
 ;;9
 ;;21,"J09.X3 ")
 ;;10
 ;;21,"J09.X9 ")
 ;;11
 ;;21,"J10.08 ")
 ;;12
 ;;21,"J10.1 ")
 ;;2
 ;;21,"J11.00 ")
 ;;7
 ;;21,"J11.1 ")
 ;;3
 ;;21,"J11.2 ")
 ;;4
 ;;21,"J11.81 ")
 ;;5
 ;;21,"J11.89 ")
 ;;6
 ;;21,"J12.9 ")
 ;;13
 ;;9002226,1502,.01)
 ;;SURVEILLANCE ILI NO TMP NEEDED
 ;;9002226,1502,.02)
 ;;@
 ;;9002226,1502,.04)
 ;;n
 ;;9002226,1502,.06)
 ;;@
 ;;9002226,1502,.08)
 ;;0
 ;;9002226,1502,.09)
 ;;3140512
 ;;9002226,1502,.11)
 ;;@
 ;;9002226,1502,.12)
 ;;31
 ;;9002226,1502,.13)
 ;;1
 ;;9002226,1502,.14)
 ;;@
 ;;9002226,1502,.15)
 ;;80
 ;;9002226,1502,.16)
 ;;@
 ;;9002226,1502,.17)
 ;;@
 ;;9002226,1502,3101)
 ;;@
 ;;9002226.02101,"1502,487.0 ",.01)
 ;;487.0 
 ;;9002226.02101,"1502,487.0 ",.02)
 ;;488.89 
 ;;9002226.02101,"1502,487.0 ",.03)
 ;;1
 ;;9002226.02101,"1502,J09.X1 ",.01)
 ;;J09.X1 
 ;;9002226.02101,"1502,J09.X1 ",.02)
 ;;J09.X1 
 ;;9002226.02101,"1502,J09.X1 ",.03)
 ;;30
 ;;9002226.02101,"1502,J09.X2 ",.01)
 ;;J09.X2 
 ;;9002226.02101,"1502,J09.X2 ",.02)
 ;;J09.X2 
 ;;9002226.02101,"1502,J09.X2 ",.03)
 ;;30
 ;;9002226.02101,"1502,J09.X3 ",.01)
 ;;J09.X3 
 ;;9002226.02101,"1502,J09.X3 ",.02)
 ;;J09.X3 
 ;;9002226.02101,"1502,J09.X3 ",.03)
 ;;30
 ;;9002226.02101,"1502,J09.X9 ",.01)
 ;;J09.X9 
 ;;9002226.02101,"1502,J09.X9 ",.02)
 ;;J09.X9 
 ;;9002226.02101,"1502,J09.X9 ",.03)
 ;;30
 ;;9002226.02101,"1502,J10.08 ",.01)
 ;;J10.08 
 ;;9002226.02101,"1502,J10.08 ",.02)
 ;;J10.08 
 ;;9002226.02101,"1502,J10.08 ",.03)
 ;;30
 ;;9002226.02101,"1502,J10.1 ",.01)
 ;;J10.1 
 ;;9002226.02101,"1502,J10.1 ",.02)
 ;;J10.1 
 ;;9002226.02101,"1502,J10.1 ",.03)
 ;;30
 ;;9002226.02101,"1502,J11.00 ",.01)
 ;;J11.00 
 ;;9002226.02101,"1502,J11.00 ",.02)
 ;;J11.00 
 ;;9002226.02101,"1502,J11.00 ",.03)
 ;;30
 ;;9002226.02101,"1502,J11.1 ",.01)
 ;;J11.1 
 ;;9002226.02101,"1502,J11.1 ",.02)
 ;;J11.1 
 ;;9002226.02101,"1502,J11.1 ",.03)
 ;;30
 ;;9002226.02101,"1502,J11.2 ",.01)
 ;;J11.2 
 ;;9002226.02101,"1502,J11.2 ",.02)
 ;;J11.2 
 ;;9002226.02101,"1502,J11.2 ",.03)
 ;;30
 ;;9002226.02101,"1502,J11.81 ",.01)
 ;;J11.81 
 ;;9002226.02101,"1502,J11.81 ",.02)
 ;;J11.81 
 ;;9002226.02101,"1502,J11.81 ",.03)
 ;;30
 ;;9002226.02101,"1502,J11.89 ",.01)
 ;;J11.89 
 ;;9002226.02101,"1502,J11.89 ",.02)
 ;;J11.89 
 ;;9002226.02101,"1502,J11.89 ",.03)
 ;;30
 ;;9002226.02101,"1502,J12.9 ",.01)
 ;;J12.9 
 ;;9002226.02101,"1502,J12.9 ",.02)
 ;;J12.9 
 ;;9002226.02101,"1502,J12.9 ",.03)
 ;;30
 ;;9002226.04101,"1502,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
