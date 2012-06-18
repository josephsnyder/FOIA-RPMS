BGPM3ABY ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON MAY 19, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU ATHEROSCLEROSIS DX
 ;
 ; This routine loads Taxonomy BGPMU ATHEROSCLEROSIS DX
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
 ;;21,"342.80 ")
 ;;2
 ;;21,"414.01 ")
 ;;3
 ;;21,"414.05 ")
 ;;4
 ;;21,"414.9 ")
 ;;5
 ;;21,"416.0 ")
 ;;6
 ;;21,"433.10 ")
 ;;7
 ;;21,"437.0 ")
 ;;8
 ;;21,"440.0 ")
 ;;9
 ;;21,"440.1 ")
 ;;1
 ;;21,"440.20 ")
 ;;10
 ;;21,"440.29 ")
 ;;11
 ;;21,"440.8 ")
 ;;12
 ;;21,"440.9 ")
 ;;13
 ;;21,"442.9 ")
 ;;14
 ;;21,"444.21 ")
 ;;15
 ;;21,"444.22 ")
 ;;16
 ;;21,"447.5 ")
 ;;17
 ;;21,"459.89 ")
 ;;18
 ;;21,"746.85 ")
 ;;19
 ;;9002226,819,.01)
 ;;BGPMU ATHEROSCLEROSIS DX
 ;;9002226,819,.02)
 ;;ATHEROSCLEROSIS RENAL ARTERY
 ;;9002226,819,.04)
 ;;n
 ;;9002226,819,.06)
 ;;@
 ;;9002226,819,.08)
 ;;@
 ;;9002226,819,.09)
 ;;3110107
 ;;9002226,819,.11)
 ;;@
 ;;9002226,819,.12)
 ;;@
 ;;9002226,819,.13)
 ;;@
 ;;9002226,819,.14)
 ;;@
 ;;9002226,819,.15)
 ;;80
 ;;9002226,819,.16)
 ;;1
 ;;9002226,819,.17)
 ;;@
 ;;9002226,819,3101)
 ;;@
 ;;9002226.02101,"819,342.80 ",.01)
 ;;342.80
 ;;9002226.02101,"819,342.80 ",.02)
 ;;342.80
 ;;9002226.02101,"819,414.01 ",.01)
 ;;414.01
 ;;9002226.02101,"819,414.01 ",.02)
 ;;414.01
 ;;9002226.02101,"819,414.05 ",.01)
 ;;414.05
 ;;9002226.02101,"819,414.05 ",.02)
 ;;414.05
 ;;9002226.02101,"819,414.9 ",.01)
 ;;414.9
 ;;9002226.02101,"819,414.9 ",.02)
 ;;414.9
 ;;9002226.02101,"819,416.0 ",.01)
 ;;416.0
 ;;9002226.02101,"819,416.0 ",.02)
 ;;416.0
 ;;9002226.02101,"819,433.10 ",.01)
 ;;433.10
 ;;9002226.02101,"819,433.10 ",.02)
 ;;433.10
 ;;9002226.02101,"819,437.0 ",.01)
 ;;437.0
 ;;9002226.02101,"819,437.0 ",.02)
 ;;437.0
 ;;9002226.02101,"819,440.0 ",.01)
 ;;440.0
 ;;9002226.02101,"819,440.0 ",.02)
 ;;440.0
 ;;9002226.02101,"819,440.1 ",.01)
 ;;440.1
 ;;9002226.02101,"819,440.1 ",.02)
 ;;440.1
 ;;9002226.02101,"819,440.20 ",.01)
 ;;440.20
 ;;9002226.02101,"819,440.20 ",.02)
 ;;440.20
 ;;9002226.02101,"819,440.29 ",.01)
 ;;440.29
 ;;9002226.02101,"819,440.29 ",.02)
 ;;440.29
 ;;9002226.02101,"819,440.8 ",.01)
 ;;440.8
 ;;9002226.02101,"819,440.8 ",.02)
 ;;440.8
 ;;9002226.02101,"819,440.9 ",.01)
 ;;440.9
 ;;9002226.02101,"819,440.9 ",.02)
 ;;440.9
 ;;9002226.02101,"819,442.9 ",.01)
 ;;442.9
 ;;9002226.02101,"819,442.9 ",.02)
 ;;442.9
 ;;9002226.02101,"819,444.21 ",.01)
 ;;444.21
 ;;9002226.02101,"819,444.21 ",.02)
 ;;444.21
 ;;9002226.02101,"819,444.22 ",.01)
 ;;444.22
 ;;9002226.02101,"819,444.22 ",.02)
 ;;444.22
 ;;9002226.02101,"819,447.5 ",.01)
 ;;447.5
 ;;9002226.02101,"819,447.5 ",.02)
 ;;447.5
 ;;9002226.02101,"819,459.89 ",.01)
 ;;459.89
 ;;9002226.02101,"819,459.89 ",.02)
 ;;459.89
 ;;9002226.02101,"819,746.85 ",.01)
 ;;746.85
 ;;9002226.02101,"819,746.85 ",.02)
 ;;746.85
 ;
OTHER ; OTHER ROUTINES
 Q
