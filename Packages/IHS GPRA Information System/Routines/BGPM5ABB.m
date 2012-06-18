BGPM5ABB ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU GESTATIONAL DIABETES DX
 ;
 ; This routine loads Taxonomy BGPMU GESTATIONAL DIABETES DX
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
 ;;21,"648.8 ")
 ;;1
 ;;21,"648.80 ")
 ;;2
 ;;9002226,855,.01)
 ;;BGPMU GESTATIONAL DIABETES DX
 ;;9002226,855,.02)
 ;;ICD9 gestationa l diab codes
 ;;9002226,855,.04)
 ;;n
 ;;9002226,855,.06)
 ;;@
 ;;9002226,855,.08)
 ;;@
 ;;9002226,855,.09)
 ;;3110310
 ;;9002226,855,.11)
 ;;@
 ;;9002226,855,.12)
 ;;@
 ;;9002226,855,.13)
 ;;@
 ;;9002226,855,.14)
 ;;@
 ;;9002226,855,.15)
 ;;80
 ;;9002226,855,.16)
 ;;1
 ;;9002226,855,.17)
 ;;@
 ;;9002226,855,3101)
 ;;@
 ;;9002226.02101,"855,648.8 ",.01)
 ;;648.8
 ;;9002226.02101,"855,648.8 ",.02)
 ;;648.8
 ;;9002226.02101,"855,648.80 ",.01)
 ;;648.80
 ;;9002226.02101,"855,648.80 ",.02)
 ;;648.84
 ;
OTHER ; OTHER ROUTINES
 Q
