BGPM5AYY ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON SEP 02, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU BREAST CANCER METS DX
 ;
 ; This routine loads Taxonomy BGPMU BREAST CANCER METS DX
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
 ;;21,"197.0 ")
 ;;1
 ;;21,"197.7 ")
 ;;2
 ;;21,"198.3 ")
 ;;3
 ;;21,"198.5 ")
 ;;4
 ;;9002226,1054,.01)
 ;;BGPMU BREAST CANCER METS DX
 ;;9002226,1054,.02)
 ;;Metastesis Dxs
 ;;9002226,1054,.04)
 ;;n
 ;;9002226,1054,.06)
 ;;@
 ;;9002226,1054,.08)
 ;;@
 ;;9002226,1054,.09)
 ;;3110901
 ;;9002226,1054,.11)
 ;;@
 ;;9002226,1054,.12)
 ;;@
 ;;9002226,1054,.13)
 ;;@
 ;;9002226,1054,.14)
 ;;@
 ;;9002226,1054,.15)
 ;;80
 ;;9002226,1054,.16)
 ;;@
 ;;9002226,1054,.17)
 ;;@
 ;;9002226,1054,3101)
 ;;@
 ;;9002226.02101,"1054,197.0 ",.01)
 ;;197.0
 ;;9002226.02101,"1054,197.0 ",.02)
 ;;197.0
 ;;9002226.02101,"1054,197.7 ",.01)
 ;;197.7
 ;;9002226.02101,"1054,197.7 ",.02)
 ;;197.7
 ;;9002226.02101,"1054,198.3 ",.01)
 ;;198.3
 ;;9002226.02101,"1054,198.3 ",.02)
 ;;198.3
 ;;9002226.02101,"1054,198.5 ",.01)
 ;;198.5
 ;;9002226.02101,"1054,198.5 ",.02)
 ;;198.5
 ;
OTHER ; OTHER ROUTINES
 Q
