ATXDBR ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI SUICIDE COMPLETION DXS
 ;
 ; This routine loads Taxonomy BQI SUICIDE COMPLETION DXS
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
 ;;21,"798.1 ")
 ;;1
 ;;21,"R99. ")
 ;;2
 ;;9002226,1969,.01)
 ;;BQI SUICIDE COMPLETION DXS
 ;;9002226,1969,.02)
 ;;Completion of suicide
 ;;9002226,1969,.04)
 ;;n
 ;;9002226,1969,.06)
 ;;@
 ;;9002226,1969,.08)
 ;;0
 ;;9002226,1969,.09)
 ;;3140317
 ;;9002226,1969,.11)
 ;;@
 ;;9002226,1969,.12)
 ;;31
 ;;9002226,1969,.13)
 ;;1
 ;;9002226,1969,.14)
 ;;@
 ;;9002226,1969,.15)
 ;;80
 ;;9002226,1969,.16)
 ;;@
 ;;9002226,1969,.17)
 ;;@
 ;;9002226,1969,3101)
 ;;@
 ;;9002226.01101,"1969,1",.01)
 ;;Diagnoses where the patient completed a suicide attempt.
 ;;9002226.02101,"1969,798.1 ",.01)
 ;;798.1
 ;;9002226.02101,"1969,798.1 ",.02)
 ;;798.1
 ;;9002226.02101,"1969,798.1 ",.03)
 ;;1
 ;;9002226.02101,"1969,R99. ",.01)
 ;;R99.
 ;;9002226.02101,"1969,R99. ",.02)
 ;;R99.
 ;;9002226.02101,"1969,R99. ",.03)
 ;;30
 ;;9002226.04101,"1969,1",.01)
 ;;BQI
 ;
OTHER ; OTHER ROUTINES
 Q
