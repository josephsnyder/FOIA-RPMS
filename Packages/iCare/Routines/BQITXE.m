BQITXE ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 06, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BGP CMS PCI-PTCA CPTS
 ;
 ; This routine loads Taxonomy BGP CMS PCI-PTCA CPTS
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
 ;;21,"33140 ")
 ;;1
 ;;21,"92980 ")
 ;;2
 ;;21,"92984 ")
 ;;3
 ;;21,"92995 ")
 ;;4
 ;;21,"92996 ")
 ;;5
 ;;9002226,564,.01)
 ;;BGP CMS PCI-PTCA CPTS
 ;;9002226,564,.02)
 ;;BGP CMS PCI-PTCA CPTS
 ;;9002226,564,.04)
 ;;n
 ;;9002226,564,.06)
 ;;@
 ;;9002226,564,.08)
 ;;0
 ;;9002226,564,.09)
 ;;3060509
 ;;9002226,564,.11)
 ;;@
 ;;9002226,564,.12)
 ;;455
 ;;9002226,564,.13)
 ;;1
 ;;9002226,564,.14)
 ;;@
 ;;9002226,564,.15)
 ;;81
 ;;9002226,564,.16)
 ;;@
 ;;9002226,564,.17)
 ;;@
 ;;9002226,564,3101)
 ;;@
 ;;9002226.02101,"564,33140 ",.01)
 ;;33140
 ;;9002226.02101,"564,33140 ",.02)
 ;;33140
 ;;9002226.02101,"564,92980 ",.01)
 ;;92980
 ;;9002226.02101,"564,92980 ",.02)
 ;;92982
 ;;9002226.02101,"564,92984 ",.01)
 ;;92984
 ;;9002226.02101,"564,92984 ",.02)
 ;;92984
 ;;9002226.02101,"564,92995 ",.01)
 ;;92995
 ;;9002226.02101,"564,92995 ",.02)
 ;;92995
 ;;9002226.02101,"564,92996 ",.01)
 ;;92996
 ;;9002226.02101,"564,92996 ",.02)
 ;;92996
 ;
OTHER ; OTHER ROUTINES
 Q