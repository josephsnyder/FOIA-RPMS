ATXDCE ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 04, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;DM AUDIT IGT DXS
 ;
 ; This routine loads Taxonomy DM AUDIT IGT DXS
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
 ;;21,"790.22 ")
 ;;1
 ;;21,"R73.02 ")
 ;;2
 ;;9002226,977,.01)
 ;;DM AUDIT IGT DXS
 ;;9002226,977,.02)
 ;;@
 ;;9002226,977,.04)
 ;;n
 ;;9002226,977,.06)
 ;;@
 ;;9002226,977,.08)
 ;;@
 ;;9002226,977,.09)
 ;;3140604
 ;;9002226,977,.11)
 ;;@
 ;;9002226,977,.12)
 ;;31
 ;;9002226,977,.13)
 ;;1
 ;;9002226,977,.14)
 ;;@
 ;;9002226,977,.15)
 ;;80
 ;;9002226,977,.16)
 ;;@
 ;;9002226,977,.17)
 ;;@
 ;;9002226,977,3101)
 ;;@
 ;;9002226.02101,"977,790.22 ",.01)
 ;;790.22 
 ;;9002226.02101,"977,790.22 ",.02)
 ;;790.22 
 ;;9002226.02101,"977,790.22 ",.03)
 ;;1
 ;;9002226.02101,"977,R73.02 ",.01)
 ;;R73.02 
 ;;9002226.02101,"977,R73.02 ",.02)
 ;;R73.02 
 ;;9002226.02101,"977,R73.02 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
