ATXO5E ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH EXAM 02 EAR PROCS
 ;
 ; This routine loads Taxonomy APCH EXAM 02 EAR PROCS
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
 ;;21,"09J78ZZ ")
 ;;2
 ;;21,"09J88ZZ ")
 ;;3
 ;;21,"09JH8ZZ ")
 ;;4
 ;;21,"09JJ8ZZ ")
 ;;5
 ;;21,"18.11 ")
 ;;1
 ;;9002226,1790,.01)
 ;;APCH EXAM 02 EAR PROCS
 ;;9002226,1790,.02)
 ;;@
 ;;9002226,1790,.04)
 ;;n
 ;;9002226,1790,.06)
 ;;@
 ;;9002226,1790,.08)
 ;;@
 ;;9002226,1790,.09)
 ;;3131113
 ;;9002226,1790,.11)
 ;;@
 ;;9002226,1790,.12)
 ;;255
 ;;9002226,1790,.13)
 ;;1
 ;;9002226,1790,.14)
 ;;@
 ;;9002226,1790,.15)
 ;;80.1
 ;;9002226,1790,.16)
 ;;@
 ;;9002226,1790,.17)
 ;;@
 ;;9002226,1790,3101)
 ;;@
 ;;9002226.02101,"1790,09J78ZZ ",.01)
 ;;09J78ZZ 
 ;;9002226.02101,"1790,09J78ZZ ",.02)
 ;;09J78ZZ 
 ;;9002226.02101,"1790,09J78ZZ ",.03)
 ;;31
 ;;9002226.02101,"1790,09J88ZZ ",.01)
 ;;09J88ZZ 
 ;;9002226.02101,"1790,09J88ZZ ",.02)
 ;;09J88ZZ 
 ;;9002226.02101,"1790,09J88ZZ ",.03)
 ;;31
 ;;9002226.02101,"1790,09JH8ZZ ",.01)
 ;;09JH8ZZ 
 ;;9002226.02101,"1790,09JH8ZZ ",.02)
 ;;09JH8ZZ 
 ;;9002226.02101,"1790,09JH8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1790,09JJ8ZZ ",.01)
 ;;09JJ8ZZ 
 ;;9002226.02101,"1790,09JJ8ZZ ",.02)
 ;;09JJ8ZZ 
 ;;9002226.02101,"1790,09JJ8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1790,18.11 ",.01)
 ;;18.11 
 ;;9002226.02101,"1790,18.11 ",.02)
 ;;18.11 
 ;;9002226.02101,"1790,18.11 ",.03)
 ;;2
 ;
OTHER ; OTHER ROUTINES
 Q
