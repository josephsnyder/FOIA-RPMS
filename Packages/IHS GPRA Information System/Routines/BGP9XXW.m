BGP9XXW ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP CMS ACEI MEDS CLASS
 ;
 ; This routine loads Taxonomy BGP CMS ACEI MEDS CLASS
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
 ;;21,"CV800 ")
 ;;1
 ;;9002226,470,.01)
 ;;BGP CMS ACEI MEDS CLASS
 ;;9002226,470,.02)
 ;;@
 ;;9002226,470,.04)
 ;;n
 ;;9002226,470,.06)
 ;;@
 ;;9002226,470,.08)
 ;;@
 ;;9002226,470,.09)
 ;;@
 ;;9002226,470,.11)
 ;;@
 ;;9002226,470,.12)
 ;;@
 ;;9002226,470,.13)
 ;;1
 ;;9002226,470,.14)
 ;;@
 ;;9002226,470,.15)
 ;;@
 ;;9002226,470,.16)
 ;;@
 ;;9002226,470,.17)
 ;;@
 ;;9002226,470,3101)
 ;;@
 ;;9002226.02101,"470,CV800 ",.01)
 ;;CV800
 ;;9002226.02101,"470,CV800 ",.02)
 ;;CV800
 ;
OTHER ; OTHER ROUTINES
 Q
