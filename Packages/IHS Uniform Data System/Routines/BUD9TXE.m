BUD9TXE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 16, 2007 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD CPT PAP 07
 ;
 ; This routine loads Taxonomy BUD CPT PAP 07
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
 ;;21,"88141 ")
 ;;1
 ;;21,"88160 ")
 ;;2
 ;;21,"88161 ")
 ;;3
 ;;21,"88162 ")
 ;;4
 ;;21,"88174 ")
 ;;5
 ;;21,"Q0091 ")
 ;;6
 ;;9002226,892,.01)
 ;;BUD CPT PAP 07
 ;;9002226,892,.02)
 ;;@
 ;;9002226,892,.04)
 ;;@
 ;;9002226,892,.06)
 ;;@
 ;;9002226,892,.08)
 ;;0
 ;;9002226,892,.09)
 ;;3071216
 ;;9002226,892,.11)
 ;;@
 ;;9002226,892,.12)
 ;;455
 ;;9002226,892,.13)
 ;;1
 ;;9002226,892,.14)
 ;;@
 ;;9002226,892,.15)
 ;;81
 ;;9002226,892,.16)
 ;;@
 ;;9002226,892,.17)
 ;;@
 ;;9002226,892,3101)
 ;;@
 ;;9002226.02101,"892,88141 ",.01)
 ;;88141 
 ;;9002226.02101,"892,88141 ",.02)
 ;;88155 
 ;;9002226.02101,"892,88160 ",.01)
 ;;88160 
 ;;9002226.02101,"892,88160 ",.02)
 ;;88160 
 ;;9002226.02101,"892,88161 ",.01)
 ;;88161 
 ;;9002226.02101,"892,88161 ",.02)
 ;;88161 
 ;;9002226.02101,"892,88162 ",.01)
 ;;88162 
 ;;9002226.02101,"892,88162 ",.02)
 ;;88167 
 ;;9002226.02101,"892,88174 ",.01)
 ;;88174 
 ;;9002226.02101,"892,88174 ",.02)
 ;;88175 
 ;;9002226.02101,"892,Q0091 ",.01)
 ;;Q0091 
 ;;9002226.02101,"892,Q0091 ",.02)
 ;;Q0091 
 ;
OTHER ; OTHER ROUTINES
 Q
