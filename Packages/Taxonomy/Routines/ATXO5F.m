ATXO5F ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH EXAM 08 HEART
 ;
 ; This routine loads Taxonomy APCH EXAM 08 HEART
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
 ;;21,"V72.81 ")
 ;;1
 ;;21,"V81.0 ")
 ;;2
 ;;21,"V81.2 ")
 ;;3
 ;;21,"Z01.810 ")
 ;;4
 ;;21,"Z13.6 ")
 ;;5
 ;;9002226,1794,.01)
 ;;APCH EXAM 08 HEART
 ;;9002226,1794,.02)
 ;;@
 ;;9002226,1794,.04)
 ;;n
 ;;9002226,1794,.06)
 ;;@
 ;;9002226,1794,.08)
 ;;@
 ;;9002226,1794,.09)
 ;;3131113
 ;;9002226,1794,.11)
 ;;@
 ;;9002226,1794,.12)
 ;;31
 ;;9002226,1794,.13)
 ;;1
 ;;9002226,1794,.14)
 ;;@
 ;;9002226,1794,.15)
 ;;80
 ;;9002226,1794,.16)
 ;;@
 ;;9002226,1794,.17)
 ;;@
 ;;9002226,1794,3101)
 ;;@
 ;;9002226.02101,"1794,V72.81 ",.01)
 ;;V72.81 
 ;;9002226.02101,"1794,V72.81 ",.02)
 ;;V72.81 
 ;;9002226.02101,"1794,V72.81 ",.03)
 ;;1
 ;;9002226.02101,"1794,V81.0 ",.01)
 ;;V81.0 
 ;;9002226.02101,"1794,V81.0 ",.02)
 ;;V81.0 
 ;;9002226.02101,"1794,V81.0 ",.03)
 ;;1
 ;;9002226.02101,"1794,V81.2 ",.01)
 ;;V81.2 
 ;;9002226.02101,"1794,V81.2 ",.02)
 ;;V81.2 
 ;;9002226.02101,"1794,V81.2 ",.03)
 ;;1
 ;;9002226.02101,"1794,Z01.810 ",.01)
 ;;Z01.810 
 ;;9002226.02101,"1794,Z01.810 ",.02)
 ;;Z01.810 
 ;;9002226.02101,"1794,Z01.810 ",.03)
 ;;30
 ;;9002226.02101,"1794,Z13.6 ",.01)
 ;;Z13.6 
 ;;9002226.02101,"1794,Z13.6 ",.02)
 ;;Z13.6 
 ;;9002226.02101,"1794,Z13.6 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
