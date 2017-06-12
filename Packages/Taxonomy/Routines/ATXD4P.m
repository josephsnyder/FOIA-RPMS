ATXD4P ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 11, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI BRUCELLOSIS DXS
 ;
 ; This routine loads Taxonomy BQI BRUCELLOSIS DXS
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
 ;;21,"023.0 ")
 ;;1
 ;;21,"A23.0 ")
 ;;2
 ;;21,"A23.1 ")
 ;;3
 ;;21,"A23.2 ")
 ;;4
 ;;21,"A23.3 ")
 ;;5
 ;;21,"A23.8 ")
 ;;6
 ;;21,"A23.9 ")
 ;;7
 ;;9002226,1816,.01)
 ;;BQI BRUCELLOSIS DXS
 ;;9002226,1816,.02)
 ;;CDC NND BRUCELLOSIS
 ;;9002226,1816,.04)
 ;;n
 ;;9002226,1816,.06)
 ;;@
 ;;9002226,1816,.08)
 ;;0
 ;;9002226,1816,.09)
 ;;3140311
 ;;9002226,1816,.11)
 ;;@
 ;;9002226,1816,.12)
 ;;31
 ;;9002226,1816,.13)
 ;;1
 ;;9002226,1816,.14)
 ;;@
 ;;9002226,1816,.15)
 ;;80
 ;;9002226,1816,.16)
 ;;@
 ;;9002226,1816,.17)
 ;;@
 ;;9002226,1816,3101)
 ;;@
 ;;9002226.01101,"1816,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1816,023.0 ",.01)
 ;;023.0
 ;;9002226.02101,"1816,023.0 ",.02)
 ;;023.9
 ;;9002226.02101,"1816,023.0 ",.03)
 ;;1
 ;;9002226.02101,"1816,A23.0 ",.01)
 ;;A23.0 
 ;;9002226.02101,"1816,A23.0 ",.02)
 ;;A23.0 
 ;;9002226.02101,"1816,A23.0 ",.03)
 ;;30
 ;;9002226.02101,"1816,A23.1 ",.01)
 ;;A23.1 
 ;;9002226.02101,"1816,A23.1 ",.02)
 ;;A23.1 
 ;;9002226.02101,"1816,A23.1 ",.03)
 ;;30
 ;;9002226.02101,"1816,A23.2 ",.01)
 ;;A23.2 
 ;;9002226.02101,"1816,A23.2 ",.02)
 ;;A23.2 
 ;;9002226.02101,"1816,A23.2 ",.03)
 ;;30
 ;;9002226.02101,"1816,A23.3 ",.01)
 ;;A23.3 
 ;;9002226.02101,"1816,A23.3 ",.02)
 ;;A23.3 
 ;;9002226.02101,"1816,A23.3 ",.03)
 ;;30
 ;;9002226.02101,"1816,A23.8 ",.01)
 ;;A23.8 
 ;;9002226.02101,"1816,A23.8 ",.02)
 ;;A23.8 
 ;;9002226.02101,"1816,A23.8 ",.03)
 ;;30
 ;;9002226.02101,"1816,A23.9 ",.01)
 ;;A23.9 
 ;;9002226.02101,"1816,A23.9 ",.02)
 ;;A23.9 
 ;;9002226.02101,"1816,A23.9 ",.03)
 ;;30
 ;;9002226.04101,"1816,1",.01)
 ;;BQI
 ;;9002226.05101,"1816,1",.01)
 ;;BRUCELLOSIS
 ;
OTHER ; OTHER ROUTINES
 Q
