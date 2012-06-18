BGPMTXR ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON FEB 02, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU ENC HEALTH AND BEHAVIOR
 ;
 ; This routine loads Taxonomy BGPMU ENC HEALTH AND BEHAVIOR
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
 ;;21,"96150 ")
 ;;1
 ;;21,"96152 ")
 ;;2
 ;;9002226,760,.01)
 ;;BGPMU ENC HEALTH AND BEHAVIOR
 ;;9002226,760,.02)
 ;;MU CPTS HEALTH & BEHAVIORAL
 ;;9002226,760,.04)
 ;;n
 ;;9002226,760,.06)
 ;;@
 ;;9002226,760,.08)
 ;;@
 ;;9002226,760,.09)
 ;;3110104
 ;;9002226,760,.11)
 ;;@
 ;;9002226,760,.12)
 ;;@
 ;;9002226,760,.13)
 ;;@
 ;;9002226,760,.14)
 ;;@
 ;;9002226,760,.15)
 ;;81
 ;;9002226,760,.16)
 ;;1
 ;;9002226,760,.17)
 ;;@
 ;;9002226,760,3101)
 ;;@
 ;;9002226.02101,"760,96150 ",.01)
 ;;96150
 ;;9002226.02101,"760,96150 ",.02)
 ;;96150
 ;;9002226.02101,"760,96152 ",.01)
 ;;96152
 ;;9002226.02101,"760,96152 ",.02)
 ;;96152
 ;
OTHER ; OTHER ROUTINES
 Q
