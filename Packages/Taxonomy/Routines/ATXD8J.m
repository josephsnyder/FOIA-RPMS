ATXD8J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;SURVEILLANCE ADV EVENTS DXS
 ;
 ; This routine loads Taxonomy SURVEILLANCE ADV EVENTS DXS
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
 ;;21,"287.30 ")
 ;;1
 ;;21,"287.33 ")
 ;;2
 ;;21,"287.39 ")
 ;;3
 ;;21,"287.4 ")
 ;;4
 ;;21,"347.00 ")
 ;;5
 ;;21,"347.10 ")
 ;;6
 ;;21,"347.11 ")
 ;;7
 ;;21,"351.0 ")
 ;;8
 ;;21,"357.0 ")
 ;;9
 ;;21,"D69.3 ")
 ;;10
 ;;21,"D69.42 ")
 ;;17
 ;;21,"D69.49 ")
 ;;11
 ;;21,"D69.51 ")
 ;;12
 ;;21,"D69.59 ")
 ;;13
 ;;21,"D69.6 ")
 ;;14
 ;;21,"G47.411 ")
 ;;19
 ;;21,"G47.419 ")
 ;;18
 ;;21,"G47.421 ")
 ;;21
 ;;21,"G47.429 ")
 ;;20
 ;;21,"G51.0 ")
 ;;15
 ;;21,"G61.0 ")
 ;;16
 ;;9002226,916,.01)
 ;;SURVEILLANCE ADV EVENTS DXS
 ;;9002226,916,.02)
 ;;@
 ;;9002226,916,.04)
 ;;n
 ;;9002226,916,.06)
 ;;@
 ;;9002226,916,.08)
 ;;0
 ;;9002226,916,.09)
 ;;3131113
 ;;9002226,916,.11)
 ;;@
 ;;9002226,916,.12)
 ;;31
 ;;9002226,916,.13)
 ;;1
 ;;9002226,916,.14)
 ;;@
 ;;9002226,916,.15)
 ;;80
 ;;9002226,916,.16)
 ;;@
 ;;9002226,916,.17)
 ;;@
 ;;9002226,916,3101)
 ;;@
 ;;9002226.02101,"916,287.30 ",.01)
 ;;287.30 
 ;;9002226.02101,"916,287.30 ",.02)
 ;;287.31 
 ;;9002226.02101,"916,287.30 ",.03)
 ;;1
 ;;9002226.02101,"916,287.33 ",.01)
 ;;287.33 
 ;;9002226.02101,"916,287.33 ",.02)
 ;;287.33 
 ;;9002226.02101,"916,287.33 ",.03)
 ;;1
 ;;9002226.02101,"916,287.39 ",.01)
 ;;287.39 
 ;;9002226.02101,"916,287.39 ",.02)
 ;;287.39 
 ;;9002226.02101,"916,287.39 ",.03)
 ;;1
 ;;9002226.02101,"916,287.4 ",.01)
 ;;287.4 
 ;;9002226.02101,"916,287.4 ",.02)
 ;;287.5 
 ;;9002226.02101,"916,287.4 ",.03)
 ;;1
 ;;9002226.02101,"916,347.00 ",.01)
 ;;347.00 
 ;;9002226.02101,"916,347.00 ",.02)
 ;;347.01 
 ;;9002226.02101,"916,347.00 ",.03)
 ;;1
 ;;9002226.02101,"916,347.10 ",.01)
 ;;347.10 
 ;;9002226.02101,"916,347.10 ",.02)
 ;;347.10 
 ;;9002226.02101,"916,347.10 ",.03)
 ;;1
 ;;9002226.02101,"916,347.11 ",.01)
 ;;347.11 
 ;;9002226.02101,"916,347.11 ",.02)
 ;;347.11 
 ;;9002226.02101,"916,347.11 ",.03)
 ;;1
 ;;9002226.02101,"916,351.0 ",.01)
 ;;351.0 
 ;;9002226.02101,"916,351.0 ",.02)
 ;;351.0 
 ;;9002226.02101,"916,351.0 ",.03)
 ;;1
 ;;9002226.02101,"916,357.0 ",.01)
 ;;357.0 
 ;;9002226.02101,"916,357.0 ",.02)
 ;;357.0 
 ;;9002226.02101,"916,357.0 ",.03)
 ;;1
 ;;9002226.02101,"916,D69.3 ",.01)
 ;;D69.3 
 ;;9002226.02101,"916,D69.3 ",.02)
 ;;D69.3 
 ;;9002226.02101,"916,D69.3 ",.03)
 ;;30
 ;;9002226.02101,"916,D69.42 ",.01)
 ;;D69.42 
 ;;9002226.02101,"916,D69.42 ",.02)
 ;;D69.42 
 ;;9002226.02101,"916,D69.42 ",.03)
 ;;30
 ;;9002226.02101,"916,D69.49 ",.01)
 ;;D69.49 
 ;;9002226.02101,"916,D69.49 ",.02)
 ;;D69.49 
 ;;9002226.02101,"916,D69.49 ",.03)
 ;;30
 ;;9002226.02101,"916,D69.51 ",.01)
 ;;D69.51 
 ;;9002226.02101,"916,D69.51 ",.02)
 ;;D69.51 
 ;;9002226.02101,"916,D69.51 ",.03)
 ;;30
 ;;9002226.02101,"916,D69.59 ",.01)
 ;;D69.59 
 ;;9002226.02101,"916,D69.59 ",.02)
 ;;D69.59 
 ;;9002226.02101,"916,D69.59 ",.03)
 ;;30
 ;;9002226.02101,"916,D69.6 ",.01)
 ;;D69.6 
 ;;9002226.02101,"916,D69.6 ",.02)
 ;;D69.6 
 ;;9002226.02101,"916,D69.6 ",.03)
 ;;30
 ;;9002226.02101,"916,G47.411 ",.01)
 ;;G47.411 
 ;;9002226.02101,"916,G47.411 ",.02)
 ;;G47.411 
 ;;9002226.02101,"916,G47.411 ",.03)
 ;;30
 ;;9002226.02101,"916,G47.419 ",.01)
 ;;G47.419 
 ;;9002226.02101,"916,G47.419 ",.02)
 ;;G47.419 
 ;;9002226.02101,"916,G47.419 ",.03)
 ;;30
 ;;9002226.02101,"916,G47.421 ",.01)
 ;;G47.421 
 ;;9002226.02101,"916,G47.421 ",.02)
 ;;G47.421 
 ;;9002226.02101,"916,G47.421 ",.03)
 ;;30
 ;;9002226.02101,"916,G47.429 ",.01)
 ;;G47.429 
 ;;9002226.02101,"916,G47.429 ",.02)
 ;;G47.429 
 ;;9002226.02101,"916,G47.429 ",.03)
 ;;30
 ;;9002226.02101,"916,G51.0 ",.01)
 ;;G51.0 
 ;;9002226.02101,"916,G51.0 ",.02)
 ;;G51.0 
 ;;9002226.02101,"916,G51.0 ",.03)
 ;;30
 ;;9002226.02101,"916,G61.0 ",.01)
 ;;G61.0 
 ;;9002226.02101,"916,G61.0 ",.02)
 ;;G61.0 
 ;;9002226.02101,"916,G61.0 ",.03)
 ;;30
 ;;9002226.04101,"916,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
