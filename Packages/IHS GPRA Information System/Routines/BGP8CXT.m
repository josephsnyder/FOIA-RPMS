BGP8CXT ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP CMS OTHER CARDIAC PROCS
 ;
 ; This routine loads Taxonomy BGP CMS OTHER CARDIAC PROCS
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
 ;;21,"35.00 ")
 ;;1
 ;;9002226,424,.01)
 ;;BGP CMS OTHER CARDIAC PROCS
 ;;9002226,424,.02)
 ;;@
 ;;9002226,424,.04)
 ;;@
 ;;9002226,424,.06)
 ;;@
 ;;9002226,424,.08)
 ;;0
 ;;9002226,424,.09)
 ;;3070604
 ;;9002226,424,.11)
 ;;@
 ;;9002226,424,.12)
 ;;255
 ;;9002226,424,.13)
 ;;1
 ;;9002226,424,.14)
 ;;@
 ;;9002226,424,.15)
 ;;80.1
 ;;9002226,424,.16)
 ;;@
 ;;9002226,424,.17)
 ;;@
 ;;9002226,424,3101)
 ;;@
 ;;9002226.02101,"424,35.00 ",.01)
 ;;35.00 
 ;;9002226.02101,"424,35.00 ",.02)
 ;;35.99 
 ;
OTHER ; OTHER ROUTINES
 Q
