BGPM3ADJ ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU PALLIATIVE CARE CPT
 ;
 ; This routine loads Taxonomy BGPMU PALLIATIVE CARE CPT
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
 ;;21,"1152F ")
 ;;1
 ;;9002226,784,.01)
 ;;BGPMU PALLIATIVE CARE CPT
 ;;9002226,784,.02)
 ;;Palliative Care CPT
 ;;9002226,784,.04)
 ;;n
 ;;9002226,784,.06)
 ;;@
 ;;9002226,784,.08)
 ;;@
 ;;9002226,784,.09)
 ;;3110217
 ;;9002226,784,.11)
 ;;@
 ;;9002226,784,.12)
 ;;@
 ;;9002226,784,.13)
 ;;@
 ;;9002226,784,.14)
 ;;@
 ;;9002226,784,.15)
 ;;81
 ;;9002226,784,.16)
 ;;1
 ;;9002226,784,.17)
 ;;@
 ;;9002226,784,3101)
 ;;@
 ;;9002226.02101,"784,1152F ",.01)
 ;;1152F
 ;;9002226.02101,"784,1152F ",.02)
 ;;1152F
 ;
OTHER ; OTHER ROUTINES
 Q
