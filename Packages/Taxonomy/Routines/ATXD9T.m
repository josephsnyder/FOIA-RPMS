ATXD9T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH PELVIC EXAM DXS
 ;
 ; This routine loads Taxonomy APCH PELVIC EXAM DXS
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
 ;;21,"V72.31 ")
 ;;1
 ;;21,"Z01.411 ")
 ;;2
 ;;21,"Z01.419 ")
 ;;3
 ;;9002226,1744,.01)
 ;;APCH PELVIC EXAM DXS
 ;;9002226,1744,.02)
 ;;@
 ;;9002226,1744,.04)
 ;;@
 ;;9002226,1744,.06)
 ;;@
 ;;9002226,1744,.08)
 ;;@
 ;;9002226,1744,.09)
 ;;3131113
 ;;9002226,1744,.11)
 ;;@
 ;;9002226,1744,.12)
 ;;31
 ;;9002226,1744,.13)
 ;;1
 ;;9002226,1744,.14)
 ;;@
 ;;9002226,1744,.15)
 ;;80
 ;;9002226,1744,.16)
 ;;@
 ;;9002226,1744,.17)
 ;;@
 ;;9002226,1744,3101)
 ;;@
 ;;9002226.02101,"1744,V72.31 ",.01)
 ;;V72.31 
 ;;9002226.02101,"1744,V72.31 ",.02)
 ;;V72.32 
 ;;9002226.02101,"1744,V72.31 ",.03)
 ;;1
 ;;9002226.02101,"1744,Z01.411 ",.01)
 ;;Z01.411 
 ;;9002226.02101,"1744,Z01.411 ",.02)
 ;;Z01.411 
 ;;9002226.02101,"1744,Z01.411 ",.03)
 ;;30
 ;;9002226.02101,"1744,Z01.419 ",.01)
 ;;Z01.419 
 ;;9002226.02101,"1744,Z01.419 ",.02)
 ;;Z01.419 
 ;;9002226.02101,"1744,Z01.419 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
