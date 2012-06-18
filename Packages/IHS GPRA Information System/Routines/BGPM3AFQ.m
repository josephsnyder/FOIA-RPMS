BGPM3AFQ ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON MAY 06, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU HEMORRHAGIC STROKE DX
 ;
 ; This routine loads Taxonomy BGPMU HEMORRHAGIC STROKE DX
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
 ;;21,"430. ")
 ;;2
 ;;21,"431. ")
 ;;1
 ;;21,"432.0 ")
 ;;3
 ;;21,"432.1 ")
 ;;4
 ;;21,"432.9 ")
 ;;5
 ;;9002226,782,.01)
 ;;BGPMU HEMORRHAGIC STROKE DX
 ;;9002226,782,.02)
 ;;Hemorrhagic stroke DX
 ;;9002226,782,.04)
 ;;n
 ;;9002226,782,.06)
 ;;@
 ;;9002226,782,.08)
 ;;@
 ;;9002226,782,.09)
 ;;3110217
 ;;9002226,782,.11)
 ;;@
 ;;9002226,782,.12)
 ;;@
 ;;9002226,782,.13)
 ;;@
 ;;9002226,782,.14)
 ;;@
 ;;9002226,782,.15)
 ;;80
 ;;9002226,782,.16)
 ;;1
 ;;9002226,782,.17)
 ;;@
 ;;9002226,782,3101)
 ;;@
 ;;9002226.02101,"782,430. ",.01)
 ;;430.
 ;;9002226.02101,"782,430. ",.02)
 ;;430.
 ;;9002226.02101,"782,431. ",.01)
 ;;431.
 ;;9002226.02101,"782,431. ",.02)
 ;;431.
 ;;9002226.02101,"782,432.0 ",.01)
 ;;432.0
 ;;9002226.02101,"782,432.0 ",.02)
 ;;432.0
 ;;9002226.02101,"782,432.1 ",.01)
 ;;432.1
 ;;9002226.02101,"782,432.1 ",.02)
 ;;432.1
 ;;9002226.02101,"782,432.9 ",.01)
 ;;432.9
 ;;9002226.02101,"782,432.9 ",.02)
 ;;432.9
 ;
OTHER ; OTHER ROUTINES
 Q
