BGP12O ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;;BGP CBC LOINC
 ;
 ; This routine loads Taxonomy BGP CBC LOINC
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
 ;;21,"24317-0 ")
 ;;1
 ;;21,"24358-4 ")
 ;;2
 ;;21,"24359-2 ")
 ;;3
 ;;21,"24361-8 ")
 ;;4
 ;;21,"34527-2 ")
 ;;5
 ;;21,"47288-6 ")
 ;;9
 ;;21,"55429-5 ")
 ;;11
 ;;21,"57021-8 ")
 ;;6
 ;;21,"57022-6 ")
 ;;7
 ;;21,"57782-5 ")
 ;;8
 ;;21,"58410-2 ")
 ;;10
 ;;9002226,518,.01)
 ;;BGP CBC LOINC
 ;;9002226,518,.02)
 ;;CBC LOINC CODES
 ;;9002226,518,.04)
 ;;n
 ;;9002226,518,.06)
 ;;@
 ;;9002226,518,.08)
 ;;@
 ;;9002226,518,.09)
 ;;3051208
 ;;9002226,518,.11)
 ;;@
 ;;9002226,518,.12)
 ;;@
 ;;9002226,518,.13)
 ;;1
 ;;9002226,518,.14)
 ;;FIHS
 ;;9002226,518,.15)
 ;;95.3
 ;;9002226,518,.16)
 ;;@
 ;;9002226,518,.17)
 ;;@
 ;;9002226,518,3101)
 ;;@
 ;;9002226.02101,"518,24317-0 ",.01)
 ;;24317-0
 ;;9002226.02101,"518,24317-0 ",.02)
 ;;24317-0
 ;;9002226.02101,"518,24358-4 ",.01)
 ;;24358-4
 ;;9002226.02101,"518,24358-4 ",.02)
 ;;24358-4
 ;;9002226.02101,"518,24359-2 ",.01)
 ;;24359-2
 ;;9002226.02101,"518,24359-2 ",.02)
 ;;24359-2
 ;;9002226.02101,"518,24361-8 ",.01)
 ;;24361-8
 ;;9002226.02101,"518,24361-8 ",.02)
 ;;24361-8
 ;;9002226.02101,"518,34527-2 ",.01)
 ;;34527-2
 ;;9002226.02101,"518,34527-2 ",.02)
 ;;34527-2
 ;;9002226.02101,"518,47288-6 ",.01)
 ;;47288-6
 ;;9002226.02101,"518,47288-6 ",.02)
 ;;47288-6
 ;;9002226.02101,"518,55429-5 ",.01)
 ;;55429-5
 ;;9002226.02101,"518,55429-5 ",.02)
 ;;55429-5
 ;;9002226.02101,"518,57021-8 ",.01)
 ;;57021-8
 ;;9002226.02101,"518,57021-8 ",.02)
 ;;57021-8
 ;;9002226.02101,"518,57022-6 ",.01)
 ;;57022-6
 ;;9002226.02101,"518,57022-6 ",.02)
 ;;57022-6
 ;;9002226.02101,"518,57782-5 ",.01)
 ;;57782-5
 ;;9002226.02101,"518,57782-5 ",.02)
 ;;57782-5
 ;;9002226.02101,"518,58410-2 ",.01)
 ;;58410-2
 ;;9002226.02101,"518,58410-2 ",.02)
 ;;58410-2
 ;
OTHER ; OTHER ROUTINES
 Q