BUD1ZN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD DIASTOLIC BP CPTS
 ;
 ; This routine loads Taxonomy BUD DIASTOLIC BP CPTS
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
 ;;21,"3080F ")
 ;;2
 ;;9002226,819,.01)
 ;;BUD DIASTOLIC BP CPTS
 ;;9002226,819,.02)
 ;;@
 ;;9002226,819,.04)
 ;;@
 ;;9002226,819,.06)
 ;;@
 ;;9002226,819,.08)
 ;;0
 ;;9002226,819,.09)
 ;;3081211
 ;;9002226,819,.11)
 ;;@
 ;;9002226,819,.12)
 ;;455
 ;;9002226,819,.13)
 ;;1
 ;;9002226,819,.14)
 ;;@
 ;;9002226,819,.15)
 ;;81
 ;;9002226,819,.16)
 ;;@
 ;;9002226,819,.17)
 ;;@
 ;;9002226,819,3101)
 ;;@
 ;;9002226.02101,"819,3078F ",.01)
 ;;3078F 
 ;;9002226.02101,"819,3078F ",.02)
 ;;3079F 
 ;;9002226.02101,"819,3080F ",.01)
 ;;3080F 
 ;;9002226.02101,"819,3080F ",.02)
 ;;3080F 
 ;
OTHER ; OTHER ROUTINES
 Q
