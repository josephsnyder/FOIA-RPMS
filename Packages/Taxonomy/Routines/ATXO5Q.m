ATXO5Q ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 01, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI EYE EXAM PROCS
 ;
 ; This routine loads Taxonomy BQI EYE EXAM PROCS
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
 ;;21,"08J0XZZ ")
 ;;4
 ;;21,"08J1XZZ ")
 ;;5
 ;;21,"95.02 ")
 ;;3
 ;;9002226,1891,.01)
 ;;BQI EYE EXAM PROCS
 ;;9002226,1891,.02)
 ;;Eye Exam Procedure
 ;;9002226,1891,.04)
 ;;n
 ;;9002226,1891,.06)
 ;;@
 ;;9002226,1891,.08)
 ;;0
 ;;9002226,1891,.09)
 ;;3140401
 ;;9002226,1891,.11)
 ;;@
 ;;9002226,1891,.12)
 ;;255
 ;;9002226,1891,.13)
 ;;1
 ;;9002226,1891,.14)
 ;;@
 ;;9002226,1891,.15)
 ;;80.1
 ;;9002226,1891,.16)
 ;;@
 ;;9002226,1891,.17)
 ;;@
 ;;9002226,1891,3101)
 ;;@
 ;;9002226.01101,"1891,1",.01)
 ;;Used by HIV Management System in Quality of Care report and HMS 
 ;;9002226.01101,"1891,2",.01)
 ;;Supplement.
 ;;9002226.02101,"1891,08J0XZZ ",.01)
 ;;08J0XZZ 
 ;;9002226.02101,"1891,08J0XZZ ",.02)
 ;;08J0XZZ 
 ;;9002226.02101,"1891,08J0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1891,08J1XZZ ",.01)
 ;;08J1XZZ 
 ;;9002226.02101,"1891,08J1XZZ ",.02)
 ;;08J1XZZ 
 ;;9002226.02101,"1891,08J1XZZ ",.03)
 ;;31
 ;;9002226.02101,"1891,95.02 ",.01)
 ;;95.02
 ;;9002226.02101,"1891,95.02 ",.02)
 ;;95.02
 ;;9002226.02101,"1891,95.02 ",.03)
 ;;2
 ;;9002226.04101,"1891,1",.01)
 ;;BKM
 ;;9002226.05101,"1891,1",.01)
 ;;EYE
 ;
OTHER ; OTHER ROUTINES
 Q
