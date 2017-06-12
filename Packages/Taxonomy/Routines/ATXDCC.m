ATXDCC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 04, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;DM AUDIT METABOLIC SYNDROME
 ;
 ; This routine loads Taxonomy DM AUDIT METABOLIC SYNDROME
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
 ;;21,"277.7 ")
 ;;1
 ;;21,"E88.81 ")
 ;;2
 ;;9002226,975,.01)
 ;;DM AUDIT METABOLIC SYNDROME
 ;;9002226,975,.02)
 ;;@
 ;;9002226,975,.04)
 ;;n
 ;;9002226,975,.06)
 ;;@
 ;;9002226,975,.08)
 ;;@
 ;;9002226,975,.09)
 ;;3140604
 ;;9002226,975,.11)
 ;;@
 ;;9002226,975,.12)
 ;;31
 ;;9002226,975,.13)
 ;;1
 ;;9002226,975,.14)
 ;;@
 ;;9002226,975,.15)
 ;;80
 ;;9002226,975,.16)
 ;;@
 ;;9002226,975,.17)
 ;;@
 ;;9002226,975,3101)
 ;;@
 ;;9002226.02101,"975,277.7 ",.01)
 ;;277.7 
 ;;9002226.02101,"975,277.7 ",.02)
 ;;277.7 
 ;;9002226.02101,"975,277.7 ",.03)
 ;;1
 ;;9002226.02101,"975,E88.81 ",.01)
 ;;E88.81 
 ;;9002226.02101,"975,E88.81 ",.02)
 ;;E88.81 
 ;;9002226.02101,"975,E88.81 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
