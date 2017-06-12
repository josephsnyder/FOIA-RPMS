ATXO5T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 01, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI PAP PROCEDURES
 ;
 ; This routine loads Taxonomy BQI PAP PROCEDURES
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
 ;;21,"91.46 ")
 ;;1
 ;;9002226,1849,.01)
 ;;BQI PAP PROCEDURES
 ;;9002226,1849,.02)
 ;;Pap procedures
 ;;9002226,1849,.04)
 ;;n
 ;;9002226,1849,.06)
 ;;@
 ;;9002226,1849,.08)
 ;;0
 ;;9002226,1849,.09)
 ;;3131206
 ;;9002226,1849,.11)
 ;;@
 ;;9002226,1849,.12)
 ;;255
 ;;9002226,1849,.13)
 ;;1
 ;;9002226,1849,.14)
 ;;@
 ;;9002226,1849,.15)
 ;;80.1
 ;;9002226,1849,.16)
 ;;@
 ;;9002226,1849,.17)
 ;;@
 ;;9002226,1849,3101)
 ;;@
 ;;9002226.01101,"1849,1",.01)
 ;;Used by HIV Management System for Quality of Care report, Reminder, and 
 ;;9002226.01101,"1849,2",.01)
 ;;supplement. Also used by Care Management Event Tracking (CMET).
 ;;9002226.02101,"1849,91.46 ",.01)
 ;;91.46
 ;;9002226.02101,"1849,91.46 ",.02)
 ;;91.46
 ;;9002226.02101,"1849,91.46 ",.03)
 ;;2
 ;;9002226.04101,"1849,1",.01)
 ;;BQI
 ;;9002226.05101,"1849,1",.01)
 ;;PAP
 ;
OTHER ; OTHER ROUTINES
 Q
