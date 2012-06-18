BGP9UXH ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP COPD DXS
 ;
 ; This routine loads Taxonomy BGP COPD DXS
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
 ;;21,"491.2 ")
 ;;1
 ;;21,"493.2 ")
 ;;2
 ;;21,"496. ")
 ;;3
 ;;21,"506.4 ")
 ;;4
 ;;9002226,486,.01)
 ;;BGP COPD DXS
 ;;9002226,486,.02)
 ;;@
 ;;9002226,486,.04)
 ;;n
 ;;9002226,486,.06)
 ;;@
 ;;9002226,486,.08)
 ;;0
 ;;9002226,486,.09)
 ;;3070705
 ;;9002226,486,.11)
 ;;@
 ;;9002226,486,.12)
 ;;31
 ;;9002226,486,.13)
 ;;1
 ;;9002226,486,.14)
 ;;@
 ;;9002226,486,.15)
 ;;80
 ;;9002226,486,.16)
 ;;@
 ;;9002226,486,.17)
 ;;@
 ;;9002226,486,3101)
 ;;@
 ;;9002226.02101,"486,491.2 ",.01)
 ;;491.2 
 ;;9002226.02101,"486,491.2 ",.02)
 ;;491.22 
 ;;9002226.02101,"486,493.2 ",.01)
 ;;493.2 
 ;;9002226.02101,"486,493.2 ",.02)
 ;;493.22 
 ;;9002226.02101,"486,496. ",.01)
 ;;496. 
 ;;9002226.02101,"486,496. ",.02)
 ;;496. 
 ;;9002226.02101,"486,506.4 ",.01)
 ;;506.4 
 ;;9002226.02101,"486,506.4 ",.02)
 ;;506.4 
 ;
OTHER ; OTHER ROUTINES
 Q
