ATXDAJ ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI HANTAVIRUS DXS
 ;
 ; This routine loads Taxonomy BQI HANTAVIRUS DXS
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
 ;;21,"079.81 ")
 ;;1
 ;;21,"B33.4 ")
 ;;2
 ;;9002226,1836,.01)
 ;;BQI HANTAVIRUS DXS
 ;;9002226,1836,.02)
 ;;CDC NND HANTAVIRUS
 ;;9002226,1836,.04)
 ;;n
 ;;9002226,1836,.06)
 ;;@
 ;;9002226,1836,.08)
 ;;0
 ;;9002226,1836,.09)
 ;;3140312
 ;;9002226,1836,.11)
 ;;@
 ;;9002226,1836,.12)
 ;;31
 ;;9002226,1836,.13)
 ;;1
 ;;9002226,1836,.14)
 ;;@
 ;;9002226,1836,.15)
 ;;80
 ;;9002226,1836,.16)
 ;;@
 ;;9002226,1836,.17)
 ;;@
 ;;9002226,1836,3101)
 ;;@
 ;;9002226.01101,"1836,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1836,079.81 ",.01)
 ;;079.81
 ;;9002226.02101,"1836,079.81 ",.02)
 ;;079.81
 ;;9002226.02101,"1836,079.81 ",.03)
 ;;1
 ;;9002226.02101,"1836,B33.4 ",.01)
 ;;B33.4 
 ;;9002226.02101,"1836,B33.4 ",.02)
 ;;B33.4 
 ;;9002226.02101,"1836,B33.4 ",.03)
 ;;30
 ;;9002226.04101,"1836,1",.01)
 ;;BQI
 ;;9002226.05101,"1836,1",.01)
 ;;HANTAVIRUS
 ;
OTHER ; OTHER ROUTINES
 Q
