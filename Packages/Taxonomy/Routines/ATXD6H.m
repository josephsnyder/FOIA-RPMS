ATXD6H ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BKM GENITAL WARTS DXS
 ;
 ; This routine loads Taxonomy BKM GENITAL WARTS DXS
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
 ;;21,"078.11 ")
 ;;1
 ;;21,"A63.0 ")
 ;;2
 ;;9002226,885,.01)
 ;;BKM GENITAL WARTS DXS
 ;;9002226,885,.02)
 ;;Genital Warts DX
 ;;9002226,885,.04)
 ;;@
 ;;9002226,885,.06)
 ;;@
 ;;9002226,885,.08)
 ;;0
 ;;9002226,885,.09)
 ;;3070227
 ;;9002226,885,.11)
 ;;@
 ;;9002226,885,.12)
 ;;31
 ;;9002226,885,.13)
 ;;1
 ;;9002226,885,.14)
 ;;@
 ;;9002226,885,.15)
 ;;80
 ;;9002226,885,.16)
 ;;@
 ;;9002226,885,.17)
 ;;@
 ;;9002226,885,3101)
 ;;@
 ;;9002226.02101,"885,078.11 ",.01)
 ;;078.11 
 ;;9002226.02101,"885,078.11 ",.02)
 ;;078.11 
 ;;9002226.02101,"885,078.11 ",.03)
 ;;1
 ;;9002226.02101,"885,A63.0 ",.01)
 ;;A63.0 
 ;;9002226.02101,"885,A63.0 ",.02)
 ;;A63.0 
 ;;9002226.02101,"885,A63.0 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
