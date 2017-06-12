ATXDAT ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI STREP GROUP A DXS
 ;
 ; This routine loads Taxonomy BQI STREP GROUP A DXS
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
 ;;21,"041.01 ")
 ;;1
 ;;21,"B95.0 ")
 ;;2
 ;;9002226,1872,.01)
 ;;BQI STREP GROUP A DXS
 ;;9002226,1872,.02)
 ;;Strep Group A, invasive
 ;;9002226,1872,.04)
 ;;n
 ;;9002226,1872,.06)
 ;;@
 ;;9002226,1872,.08)
 ;;0
 ;;9002226,1872,.09)
 ;;3140312
 ;;9002226,1872,.11)
 ;;@
 ;;9002226,1872,.12)
 ;;31
 ;;9002226,1872,.13)
 ;;1
 ;;9002226,1872,.14)
 ;;@
 ;;9002226,1872,.15)
 ;;80
 ;;9002226,1872,.16)
 ;;@
 ;;9002226,1872,.17)
 ;;@
 ;;9002226,1872,3101)
 ;;@
 ;;9002226.01101,"1872,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1872,041.01 ",.01)
 ;;041.01
 ;;9002226.02101,"1872,041.01 ",.02)
 ;;041.01
 ;;9002226.02101,"1872,041.01 ",.03)
 ;;1
 ;;9002226.02101,"1872,B95.0 ",.01)
 ;;B95.0 
 ;;9002226.02101,"1872,B95.0 ",.02)
 ;;B95.0 
 ;;9002226.02101,"1872,B95.0 ",.03)
 ;;30
 ;;9002226.04101,"1872,1",.01)
 ;;BQI
 ;
OTHER ; OTHER ROUTINES
 Q
