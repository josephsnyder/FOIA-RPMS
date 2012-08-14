BGPMBTXA ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON MAR 31, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU PREGNANCY
 ;
 ; This routine loads Taxonomy BGPMU PREGNANCY
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
 ;;21,"V22.0 ")
 ;;1
 ;;21,"V23.0 ")
 ;;2
 ;;21,"V23.41 ")
 ;;3
 ;;21,"V23.5 ")
 ;;4
 ;;21,"V23.7 ")
 ;;5
 ;;21,"V23.8 ")
 ;;6
 ;;21,"V23.89 ")
 ;;7
 ;;21,"V23.9 ")
 ;;8
 ;;21,"V23.81 ")
 ;;9
 ;;9002226,759,.01)
 ;;BGPMU PREGNANCY
 ;;9002226,759,.02)
 ;;Pregnancy codes
 ;;9002226,759,.04)
 ;;n
 ;;9002226,759,.06)
 ;;@
 ;;9002226,759,.08)
 ;;@
 ;;9002226,759,.09)
 ;;3110202
 ;;9002226,759,.11)
 ;;@
 ;;9002226,759,.12)
 ;;@
 ;;9002226,759,.13)
 ;;@
 ;;9002226,759,.14)
 ;;@
 ;;9002226,759,.15)
 ;;80
 ;;9002226,759,.16)
 ;;1
 ;;9002226,759,.17)
 ;;@
 ;;9002226,759,3101)
 ;;@
 ;;9002226.02101,"759,V22.0 ",.01)
 ;;V22.0
 ;;9002226.02101,"759,V22.0 ",.02)
 ;;V22.2
 ;;9002226.02101,"759,V23.0 ",.01)
 ;;V23.0
 ;;9002226.02101,"759,V23.0 ",.02)
 ;;V23.4
 ;;9002226.02101,"759,V23.41 ",.01)
 ;;V23.41
 ;;9002226.02101,"759,V23.41 ",.02)
 ;;V23.49
 ;;9002226.02101,"759,V23.5 ",.01)
 ;;V23.5
 ;;9002226.02101,"759,V23.5 ",.02)
 ;;V23.5
 ;;9002226.02101,"759,V23.7 ",.01)
 ;;V23.7
 ;;9002226.02101,"759,V23.7 ",.02)
 ;;V23.7
 ;;9002226.02101,"759,V23.8 ",.01)
 ;;V23.8
 ;;9002226.02101,"759,V23.8 ",.02)
 ;;V23.8
 ;;9002226.02101,"759,V23.89 ",.01)
 ;;V23.89
 ;;9002226.02101,"759,V23.89 ",.02)
 ;;V23.89
 ;;9002226.02101,"759,V23.9 ",.01)
 ;;V23.9
 ;;9002226.02101,"759,V23.9 ",.02)
 ;;V23.9
 ;;9002226.02101,"759,V23.81 ",.01)
 ;;V23.81
 ;;9002226.02101,"759,V23.81 ",.02)
 ;;V23.84
 ;
OTHER ; OTHER ROUTINES
 Q