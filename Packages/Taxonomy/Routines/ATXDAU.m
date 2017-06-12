ATXDAU ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI TETANUS DXS
 ;
 ; This routine loads Taxonomy BQI TETANUS DXS
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
 ;;21,"037. ")
 ;;1
 ;;21,"771.3 ")
 ;;2
 ;;21,"A33. ")
 ;;3
 ;;21,"A35. ")
 ;;4
 ;;9002226,1873,.01)
 ;;BQI TETANUS DXS
 ;;9002226,1873,.02)
 ;;Tetanus
 ;;9002226,1873,.04)
 ;;n
 ;;9002226,1873,.06)
 ;;@
 ;;9002226,1873,.08)
 ;;0
 ;;9002226,1873,.09)
 ;;3140312
 ;;9002226,1873,.11)
 ;;@
 ;;9002226,1873,.12)
 ;;31
 ;;9002226,1873,.13)
 ;;1
 ;;9002226,1873,.14)
 ;;@
 ;;9002226,1873,.15)
 ;;80
 ;;9002226,1873,.16)
 ;;@
 ;;9002226,1873,.17)
 ;;@
 ;;9002226,1873,3101)
 ;;@
 ;;9002226.01101,"1873,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1873,037. ",.01)
 ;;037.
 ;;9002226.02101,"1873,037. ",.02)
 ;;037.
 ;;9002226.02101,"1873,037. ",.03)
 ;;1
 ;;9002226.02101,"1873,771.3 ",.01)
 ;;771.3
 ;;9002226.02101,"1873,771.3 ",.02)
 ;;771.3
 ;;9002226.02101,"1873,771.3 ",.03)
 ;;1
 ;;9002226.02101,"1873,A33. ",.01)
 ;;A33.
 ;;9002226.02101,"1873,A33. ",.02)
 ;;A33.
 ;;9002226.02101,"1873,A33. ",.03)
 ;;30
 ;;9002226.02101,"1873,A35. ",.01)
 ;;A35.
 ;;9002226.02101,"1873,A35. ",.02)
 ;;A35.
 ;;9002226.02101,"1873,A35. ",.03)
 ;;30
 ;;9002226.04101,"1873,1",.01)
 ;;BQI
 ;;9002226.05101,"1873,1",.01)
 ;;TETANUS
 ;
OTHER ; OTHER ROUTINES
 Q
