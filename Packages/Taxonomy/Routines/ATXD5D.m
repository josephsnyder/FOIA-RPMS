ATXD5D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCL ILI ADV EVENTS AGGREGATE
 ;
 ; This routine loads Taxonomy APCL ILI ADV EVENTS AGGREGATE
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
 ;;21,"287.31 ")
 ;;1
 ;;21,"287.4 ")
 ;;2
 ;;21,"351.0 ")
 ;;3
 ;;21,"357.0 ")
 ;;4
 ;;21,"D69.3 ")
 ;;5
 ;;21,"D69.51 ")
 ;;6
 ;;21,"D69.59 ")
 ;;7
 ;;21,"D69.6 ")
 ;;8
 ;;21,"G51.0 ")
 ;;9
 ;;21,"G61.0 ")
 ;;10
 ;;9002226,1015,.01)
 ;;APCL ILI ADV EVENTS AGGREGATE
 ;;9002226,1015,.02)
 ;;@
 ;;9002226,1015,.04)
 ;;n
 ;;9002226,1015,.06)
 ;;@
 ;;9002226,1015,.08)
 ;;0
 ;;9002226,1015,.09)
 ;;3131112
 ;;9002226,1015,.11)
 ;;@
 ;;9002226,1015,.12)
 ;;31
 ;;9002226,1015,.13)
 ;;1
 ;;9002226,1015,.14)
 ;;@
 ;;9002226,1015,.15)
 ;;80
 ;;9002226,1015,.16)
 ;;@
 ;;9002226,1015,.17)
 ;;@
 ;;9002226,1015,3101)
 ;;@
 ;;9002226.02101,"1015,287.31 ",.01)
 ;;287.31 
 ;;9002226.02101,"1015,287.31 ",.02)
 ;;287.31 
 ;;9002226.02101,"1015,287.31 ",.03)
 ;;1
 ;;9002226.02101,"1015,287.4 ",.01)
 ;;287.4 
 ;;9002226.02101,"1015,287.4 ",.02)
 ;;287.5 
 ;;9002226.02101,"1015,287.4 ",.03)
 ;;1
 ;;9002226.02101,"1015,351.0 ",.01)
 ;;351.0 
 ;;9002226.02101,"1015,351.0 ",.02)
 ;;351.0 
 ;;9002226.02101,"1015,351.0 ",.03)
 ;;1
 ;;9002226.02101,"1015,357.0 ",.01)
 ;;357.0 
 ;;9002226.02101,"1015,357.0 ",.02)
 ;;357.0 
 ;;9002226.02101,"1015,357.0 ",.03)
 ;;1
 ;;9002226.02101,"1015,D69.3 ",.01)
 ;;D69.3 
 ;;9002226.02101,"1015,D69.3 ",.02)
 ;;D69.3 
 ;;9002226.02101,"1015,D69.3 ",.03)
 ;;30
 ;;9002226.02101,"1015,D69.51 ",.01)
 ;;D69.51 
 ;;9002226.02101,"1015,D69.51 ",.02)
 ;;D69.51 
 ;;9002226.02101,"1015,D69.51 ",.03)
 ;;30
 ;;9002226.02101,"1015,D69.59 ",.01)
 ;;D69.59 
 ;;9002226.02101,"1015,D69.59 ",.02)
 ;;D69.59 
 ;;9002226.02101,"1015,D69.59 ",.03)
 ;;30
 ;;9002226.02101,"1015,D69.6 ",.01)
 ;;D69.6 
 ;;9002226.02101,"1015,D69.6 ",.02)
 ;;D69.6 
 ;;9002226.02101,"1015,D69.6 ",.03)
 ;;30
 ;;9002226.02101,"1015,G51.0 ",.01)
 ;;G51.0 
 ;;9002226.02101,"1015,G51.0 ",.02)
 ;;G51.0 
 ;;9002226.02101,"1015,G51.0 ",.03)
 ;;30
 ;;9002226.02101,"1015,G61.0 ",.01)
 ;;G61.0 
 ;;9002226.02101,"1015,G61.0 ",.02)
 ;;G61.0 
 ;;9002226.02101,"1015,G61.0 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
