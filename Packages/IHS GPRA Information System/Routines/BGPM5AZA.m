BGPM5AZA ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON SEP 02, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU RADIATION THERAPY CPT
 ;
 ; This routine loads Taxonomy BGPMU RADIATION THERAPY CPT
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
 ;;21,"77427 ")
 ;;1
 ;;21,"77435 ")
 ;;2
 ;;21,"77470 ")
 ;;3
 ;;9002226,1052,.01)
 ;;BGPMU RADIATION THERAPY CPT
 ;;9002226,1052,.02)
 ;;Radiation Therapy CPTS
 ;;9002226,1052,.04)
 ;;n
 ;;9002226,1052,.06)
 ;;@
 ;;9002226,1052,.08)
 ;;@
 ;;9002226,1052,.09)
 ;;3110901
 ;;9002226,1052,.11)
 ;;@
 ;;9002226,1052,.12)
 ;;@
 ;;9002226,1052,.13)
 ;;@
 ;;9002226,1052,.14)
 ;;@
 ;;9002226,1052,.15)
 ;;81
 ;;9002226,1052,.16)
 ;;@
 ;;9002226,1052,.17)
 ;;@
 ;;9002226,1052,3101)
 ;;@
 ;;9002226.02101,"1052,77427 ",.01)
 ;;77427
 ;;9002226.02101,"1052,77427 ",.02)
 ;;77427
 ;;9002226.02101,"1052,77435 ",.01)
 ;;77435
 ;;9002226.02101,"1052,77435 ",.02)
 ;;77435
 ;;9002226.02101,"1052,77470 ",.01)
 ;;77470
 ;;9002226.02101,"1052,77470 ",.02)
 ;;77470
 ;
OTHER ; OTHER ROUTINES
 Q