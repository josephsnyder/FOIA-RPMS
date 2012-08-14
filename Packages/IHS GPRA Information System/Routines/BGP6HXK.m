BGP6HXK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP OPT MH VISIT CPTS MH
 ;
 ; This routine loads Taxonomy BGP OPT MH VISIT CPTS MH
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
 ;;21,"90801 ")
 ;;1
 ;;21,"90821 ")
 ;;2
 ;;21,"90826 ")
 ;;3
 ;;21,"90845 ")
 ;;4
 ;;21,"90847 ")
 ;;5
 ;;21,"90857 ")
 ;;6
 ;;21,"90870 ")
 ;;7
 ;;21,"99384 ")
 ;;8
 ;;21,"99394 ")
 ;;9
 ;;9002226,447,.01)
 ;;BGP OPT MH VISIT CPTS MH
 ;;9002226,447,.02)
 ;;@
 ;;9002226,447,.04)
 ;;@
 ;;9002226,447,.06)
 ;;@
 ;;9002226,447,.08)
 ;;0
 ;;9002226,447,.09)
 ;;3050803
 ;;9002226,447,.11)
 ;;@
 ;;9002226,447,.12)
 ;;455
 ;;9002226,447,.13)
 ;;1
 ;;9002226,447,.14)
 ;;@
 ;;9002226,447,.15)
 ;;81
 ;;9002226,447,.16)
 ;;@
 ;;9002226,447,.17)
 ;;@
 ;;9002226,447,3101)
 ;;@
 ;;9002226.02101,"447,90801 ",.01)
 ;;90801 
 ;;9002226.02101,"447,90801 ",.02)
 ;;90819 
 ;;9002226.02101,"447,90821 ",.01)
 ;;90821 
 ;;9002226.02101,"447,90821 ",.02)
 ;;90824 
 ;;9002226.02101,"447,90826 ",.01)
 ;;90826 
 ;;9002226.02101,"447,90826 ",.02)
 ;;90829 
 ;;9002226.02101,"447,90845 ",.01)
 ;;90845 
 ;;9002226.02101,"447,90845 ",.02)
 ;;90845 
 ;;9002226.02101,"447,90847 ",.01)
 ;;90847 
 ;;9002226.02101,"447,90847 ",.02)
 ;;90853 
 ;;9002226.02101,"447,90857 ",.01)
 ;;90857 
 ;;9002226.02101,"447,90857 ",.02)
 ;;90862 
 ;;9002226.02101,"447,90870 ",.01)
 ;;90870 
 ;;9002226.02101,"447,90870 ",.02)
 ;;90876 
 ;;9002226.02101,"447,99384 ",.01)
 ;;99384 
 ;;9002226.02101,"447,99384 ",.02)
 ;;99387 
 ;;9002226.02101,"447,99394 ",.01)
 ;;99394 
 ;;9002226.02101,"447,99394 ",.02)
 ;;99404 
 ;
OTHER ; OTHER ROUTINES
 Q