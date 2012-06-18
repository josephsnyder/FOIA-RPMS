BGPM5ANF ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 04, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU TRIGLYCERIDES LOINC
 ;
 ; This routine loads Taxonomy BGPMU TRIGLYCERIDES LOINC
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
 ;;21,"12951-0 ")
 ;;1
 ;;21,"14927-8 ")
 ;;2
 ;;21,"2571-8 ")
 ;;3
 ;;21,"47210-0 ")
 ;;4
 ;;9002226,972,.01)
 ;;BGPMU TRIGLYCERIDES LOINC
 ;;9002226,972,.02)
 ;;Triglycerides Lab test LOINC
 ;;9002226,972,.04)
 ;;@
 ;;9002226,972,.06)
 ;;@
 ;;9002226,972,.08)
 ;;@
 ;;9002226,972,.09)
 ;;@
 ;;9002226,972,.11)
 ;;@
 ;;9002226,972,.12)
 ;;@
 ;;9002226,972,.13)
 ;;@
 ;;9002226,972,.14)
 ;;@
 ;;9002226,972,.15)
 ;;95.3
 ;;9002226,972,.16)
 ;;@
 ;;9002226,972,.17)
 ;;@
 ;;9002226,972,3101)
 ;;@
 ;;9002226.02101,"972,12951-0 ",.01)
 ;;12951-0
 ;;9002226.02101,"972,12951-0 ",.02)
 ;;12951-0
 ;;9002226.02101,"972,14927-8 ",.01)
 ;;14927-8
 ;;9002226.02101,"972,14927-8 ",.02)
 ;;14927-8
 ;;9002226.02101,"972,2571-8 ",.01)
 ;;2571-8
 ;;9002226.02101,"972,2571-8 ",.02)
 ;;2571-8
 ;;9002226.02101,"972,47210-0 ",.01)
 ;;47210-0
 ;;9002226.02101,"972,47210-0 ",.02)
 ;;47210-0
 ;
OTHER ; OTHER ROUTINES
 Q
