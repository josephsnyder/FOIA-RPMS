BUDC1J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 09, 2015;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD ORAL EXAM CPTS
 ;
 ; This routine loads Taxonomy BUD ORAL EXAM CPTS
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
 ;;21,"D0120 ")
 ;;1
 ;;21,"D0145 ")
 ;;2
 ;;21,"D0180 ")
 ;;3
 ;;21,"D0191 ")
 ;;4
 ;;9002226,2119,.01)
 ;;BUD ORAL EXAM CPTS
 ;;9002226,2119,.02)
 ;;@
 ;;9002226,2119,.04)
 ;;@
 ;;9002226,2119,.06)
 ;;@
 ;;9002226,2119,.08)
 ;;0
 ;;9002226,2119,.09)
 ;;3151209
 ;;9002226,2119,.11)
 ;;@
 ;;9002226,2119,.12)
 ;;455
 ;;9002226,2119,.13)
 ;;1
 ;;9002226,2119,.14)
 ;;@
 ;;9002226,2119,.15)
 ;;81
 ;;9002226,2119,.16)
 ;;@
 ;;9002226,2119,.17)
 ;;@
 ;;9002226,2119,3101)
 ;;@
 ;;9002226.02101,"2119,D0120 ",.01)
 ;;D0120 
 ;;9002226.02101,"2119,D0120 ",.02)
 ;;D0120 
 ;;9002226.02101,"2119,D0145 ",.01)
 ;;D0145 
 ;;9002226.02101,"2119,D0145 ",.02)
 ;;D0150 
 ;;9002226.02101,"2119,D0180 ",.01)
 ;;D0180 
 ;;9002226.02101,"2119,D0180 ",.02)
 ;;D0180 
 ;;9002226.02101,"2119,D0191 ",.01)
 ;;D0191 
 ;;9002226.02101,"2119,D0191 ",.02)
 ;;D0191 
 ;
OTHER ; OTHER ROUTINES
 Q
