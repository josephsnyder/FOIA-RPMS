BUD1ZO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD SYSTOLIC BP CPTS
 ;
 ; This routine loads Taxonomy BUD SYSTOLIC BP CPTS
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
 ;;21,"3074F ")
 ;;1
 ;;21,"3077F ")
 ;;2
 ;;9002226,818,.01)
 ;;BUD SYSTOLIC BP CPTS
 ;;9002226,818,.02)
 ;;@
 ;;9002226,818,.04)
 ;;@
 ;;9002226,818,.06)
 ;;@
 ;;9002226,818,.08)
 ;;0
 ;;9002226,818,.09)
 ;;3081211
 ;;9002226,818,.11)
 ;;@
 ;;9002226,818,.12)
 ;;455
 ;;9002226,818,.13)
 ;;1
 ;;9002226,818,.14)
 ;;@
 ;;9002226,818,.15)
 ;;81
 ;;9002226,818,.16)
 ;;@
 ;;9002226,818,.17)
 ;;@
 ;;9002226,818,3101)
 ;;@
 ;;9002226.02101,"818,3074F ",.01)
 ;;3074F 
 ;;9002226.02101,"818,3074F ",.02)
 ;;3075F 
 ;;9002226.02101,"818,3077F ",.01)
 ;;3077F 
 ;;9002226.02101,"818,3077F ",.02)
 ;;3077F 
 ;
OTHER ; OTHER ROUTINES
 Q
