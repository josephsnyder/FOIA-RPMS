BUD9TXR ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 11, 2009 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD CPT NORMAL DIASTOLIC
 ;
 ; This routine loads Taxonomy BUD CPT NORMAL DIASTOLIC
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
 ;;21,"3078F ")
 ;;1
 ;;9002226,817,.01)
 ;;BUD CPT NORMAL DIASTOLIC
 ;;9002226,817,.02)
 ;;@
 ;;9002226,817,.04)
 ;;@
 ;;9002226,817,.06)
 ;;@
 ;;9002226,817,.08)
 ;;@
 ;;9002226,817,.09)
 ;;3081202
 ;;9002226,817,.11)
 ;;@
 ;;9002226,817,.12)
 ;;455
 ;;9002226,817,.13)
 ;;1
 ;;9002226,817,.14)
 ;;@
 ;;9002226,817,.15)
 ;;81
 ;;9002226,817,.16)
 ;;@
 ;;9002226,817,.17)
 ;;@
 ;;9002226,817,3101)
 ;;@
 ;;9002226.02101,"817,3078F ",.01)
 ;;3078F 
 ;;9002226.02101,"817,3078F ",.02)
 ;;3079F 
 ;
OTHER ; OTHER ROUTINES
 Q
