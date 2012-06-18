BGPVXX ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 03, 2004 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP VIRAL LOAD LOINC CODES
 ;
 ; This routine loads Taxonomy BGP VIRAL LOAD LOINC CODES
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
 ;;21,"20447-9 ")
 ;;1
 ;;21,"25836-8 ")
 ;;2
 ;;21,"29541-0 ")
 ;;3
 ;;9002226,821,.01)
 ;;BGP VIRAL LOAD LOINC CODES
 ;;9002226,821,.02)
 ;;PCR VIRAL LOAD LOINC CODES
 ;;9002226,821,.04)
 ;;n
 ;;9002226,821,.06)
 ;;@
 ;;9002226,821,.08)
 ;;@
 ;;9002226,821,.09)
 ;;@
 ;;9002226,821,.11)
 ;;@
 ;;9002226,821,.12)
 ;;@
 ;;9002226,821,.13)
 ;;1
 ;;9002226,821,.14)
 ;;FIHS
 ;;9002226,821,.15)
 ;;95.3
 ;;9002226,821,.16)
 ;;0
 ;;9002226,821,.17)
 ;;@
 ;;9002226,821,3101)
 ;;@
 ;;9002226.02101,"821,20447-9 ",.01)
 ;;20447-9
 ;;9002226.02101,"821,20447-9 ",.02)
 ;;20447-9
 ;;9002226.02101,"821,25836-8 ",.01)
 ;;25836-8
 ;;9002226.02101,"821,25836-8 ",.02)
 ;;25836-8
 ;;9002226.02101,"821,29541-0 ",.01)
 ;;29541-0
 ;;9002226.02101,"821,29541-0 ",.02)
 ;;29541-0
 ;
OTHER ; OTHER ROUTINES
 Q
