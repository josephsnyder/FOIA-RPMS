BGPM5AZU ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON SEP 07, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU PROSTATE BONE SCAN CPT
 ;
 ; This routine loads Taxonomy BGPMU PROSTATE BONE SCAN CPT
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
 ;;21,"78300 ")
 ;;1
 ;;21,"78305 ")
 ;;2
 ;;21,"78315 ")
 ;;3
 ;;21,"78320 ")
 ;;4
 ;;21,"78350 ")
 ;;5
 ;;9002226,1067,.01)
 ;;BGPMU PROSTATE BONE SCAN CPT
 ;;9002226,1067,.02)
 ;;PROSTATE BONE SCAN CPT
 ;;9002226,1067,.04)
 ;;@
 ;;9002226,1067,.06)
 ;;@
 ;;9002226,1067,.08)
 ;;@
 ;;9002226,1067,.09)
 ;;@
 ;;9002226,1067,.11)
 ;;@
 ;;9002226,1067,.12)
 ;;@
 ;;9002226,1067,.13)
 ;;@
 ;;9002226,1067,.14)
 ;;@
 ;;9002226,1067,.15)
 ;;81
 ;;9002226,1067,.16)
 ;;@
 ;;9002226,1067,.17)
 ;;@
 ;;9002226,1067,3101)
 ;;@
 ;;9002226.02101,"1067,78300 ",.01)
 ;;78300
 ;;9002226.02101,"1067,78300 ",.02)
 ;;78300
 ;;9002226.02101,"1067,78305 ",.01)
 ;;78305
 ;;9002226.02101,"1067,78305 ",.02)
 ;;78306
 ;;9002226.02101,"1067,78315 ",.01)
 ;;78315
 ;;9002226.02101,"1067,78315 ",.02)
 ;;78315
 ;;9002226.02101,"1067,78320 ",.01)
 ;;78320
 ;;9002226.02101,"1067,78320 ",.02)
 ;;78320
 ;;9002226.02101,"1067,78350 ",.01)
 ;;78350
 ;;9002226.02101,"1067,78350 ",.02)
 ;;78351
 ;
OTHER ; OTHER ROUTINES
 Q
