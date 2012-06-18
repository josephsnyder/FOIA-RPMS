BGP7HXY ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 19, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP TOTAL CHOLECTOMY PROCS
 ;
 ; This routine loads Taxonomy BGP TOTAL CHOLECTOMY PROCS
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
 ;;21,"45.8 ")
 ;;1
 ;;9002226,339,.01)
 ;;BGP TOTAL CHOLECTOMY PROCS
 ;;9002226,339,.02)
 ;;@
 ;;9002226,339,.04)
 ;;n
 ;;9002226,339,.06)
 ;;@
 ;;9002226,339,.08)
 ;;0
 ;;9002226,339,.09)
 ;;3051213
 ;;9002226,339,.11)
 ;;@
 ;;9002226,339,.12)
 ;;255
 ;;9002226,339,.13)
 ;;1
 ;;9002226,339,.14)
 ;;@
 ;;9002226,339,.15)
 ;;80.1
 ;;9002226,339,.16)
 ;;@
 ;;9002226,339,.17)
 ;;@
 ;;9002226,339,3101)
 ;;@
 ;;9002226.02101,"339,45.8 ",.01)
 ;;45.8 
 ;;9002226.02101,"339,45.8 ",.02)
 ;;45.8 
 ;
OTHER ; OTHER ROUTINES
 Q
