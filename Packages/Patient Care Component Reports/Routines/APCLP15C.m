APCLP15C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 27, 2003; [ 12/18/03  11:30 AM ]
 ;;3.0;IHS PCC REPORTS;**15**;OCT 27, 2003
 ;;DM AUDIT TD CPTS
 ;
 ; This routine loads Taxonomy DM AUDIT TD CPTS
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
 ;;21,"90700 ")
 ;;1
 ;;21,"90702 ")
 ;;2
 ;;21,"90703 ")
 ;;3
 ;;21,"90718 ")
 ;;4
 ;;21,"90720 ")
 ;;5
 ;;9002226,779,.01)
 ;;DM AUDIT TD CPTS
 ;;9002226,779,.02)
 ;;@
 ;;9002226,779,.04)
 ;;@
 ;;9002226,779,.06)
 ;;@
 ;;9002226,779,.08)
 ;;0
 ;;9002226,779,.09)
 ;;3031027
 ;;9002226,779,.11)
 ;;@
 ;;9002226,779,.12)
 ;;455
 ;;9002226,779,.13)
 ;;1
 ;;9002226,779,.14)
 ;;@
 ;;9002226,779,.15)
 ;;81
 ;;9002226,779,.16)
 ;;@
 ;;9002226,779,.17)
 ;;@
 ;;9002226,779,3101)
 ;;@
 ;;9002226.02101,"779,90700 ",.01)
 ;;90700 
 ;;9002226.02101,"779,90700 ",.02)
 ;;90701 
 ;;9002226.02101,"779,90702 ",.01)
 ;;90702 
 ;;9002226.02101,"779,90702 ",.02)
 ;;90702 
 ;;9002226.02101,"779,90703 ",.01)
 ;;90703 
 ;;9002226.02101,"779,90703 ",.02)
 ;;90703 
 ;;9002226.02101,"779,90718 ",.01)
 ;;90718 
 ;;9002226.02101,"779,90718 ",.02)
 ;;90718 
 ;;9002226.02101,"779,90720 ",.01)
 ;;90720 
 ;;9002226.02101,"779,90720 ",.02)
 ;;90723 
 ;
OTHER ; OTHER ROUTINES
 Q
