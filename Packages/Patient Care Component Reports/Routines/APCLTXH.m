APCLTXH ; IHS/OHPRD/TMJ -CREATED BY ^ATXSTX ON JAN 09, 1997 ;
 ;;3.0;IHS PCC REPORTS;;FEB 05, 1997
 ;;APCL INJ DROWNING
 ;
 ; This routine loads Taxonomy APCL INJ DROWNING
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
 ;;21,"E830.0 ")
 ;;1
 ;;21,"E832.0 ")
 ;;2
 ;;21,"E910.4 ")
 ;;3
 ;;9002226,151,.01)
 ;;APCL INJ DROWNING
 ;;9002226,151,.02)
 ;;APCL DROWNING ECODES
 ;;9002226,151,.04)
 ;;@
 ;;9002226,151,.06)
 ;;@
 ;;9002226,151,.08)
 ;;1
 ;;9002226,151,.09)
 ;;2961021.135647
 ;;9002226,151,.11)
 ;;@
 ;;9002226,151,.12)
 ;;157
 ;;9002226,151,.13)
 ;;1
 ;;9002226,151,.14)
 ;;BA
 ;;9002226,151,.15)
 ;;80
 ;;9002226,151,.16)
 ;;1
 ;;9002226,151,.17)
 ;;@
 ;;9002226,151,3101)
 ;;@
 ;;9002226.02101,"151,E830.0 ",.01)
 ;;E830.0
 ;;9002226.02101,"151,E830.0 ",.02)
 ;;E830.9
 ;;9002226.02101,"151,E832.0 ",.01)
 ;;E832.0
 ;;9002226.02101,"151,E832.0 ",.02)
 ;;E832.9
 ;;9002226.02101,"151,E910.4 ",.01)
 ;;E910.4
 ;;9002226.02101,"151,E910.4 ",.02)
 ;;E910.9
 ;
OTHER ; OTHER ROUTINES
 Q
