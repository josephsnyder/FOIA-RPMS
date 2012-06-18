BGP8HXQ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP POISONINGS SUBSTANCE ABUSE
 ;
 ; This routine loads Taxonomy BGP POISONINGS SUBSTANCE ABUSE
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
 ;;21,"960.0 ")
 ;;1
 ;;9002226,574,.01)
 ;;BGP POISONINGS SUBSTANCE ABUSE
 ;;9002226,574,.02)
 ;;@
 ;;9002226,574,.04)
 ;;n
 ;;9002226,574,.06)
 ;;@
 ;;9002226,574,.08)
 ;;0
 ;;9002226,574,.09)
 ;;3050802
 ;;9002226,574,.11)
 ;;@
 ;;9002226,574,.12)
 ;;31
 ;;9002226,574,.13)
 ;;1
 ;;9002226,574,.14)
 ;;@
 ;;9002226,574,.15)
 ;;80
 ;;9002226,574,.16)
 ;;@
 ;;9002226,574,.17)
 ;;@
 ;;9002226,574,3101)
 ;;@
 ;;9002226.02101,"574,960.0 ",.01)
 ;;960.0 
 ;;9002226.02101,"574,960.0 ",.02)
 ;;979.9 
 ;
OTHER ; OTHER ROUTINES
 Q
