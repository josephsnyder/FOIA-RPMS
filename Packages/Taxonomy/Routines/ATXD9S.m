ATXD9S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH HEARING EXAM DXS
 ;
 ; This routine loads Taxonomy APCH HEARING EXAM DXS
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
 ;;21,"V72.1 ")
 ;;1
 ;;21,"Z01.10 ")
 ;;2
 ;;21,"Z01.110 ")
 ;;3
 ;;21,"Z01.118 ")
 ;;4
 ;;21,"Z01.12 ")
 ;;5
 ;;21,"Z13.5 ")
 ;;6
 ;;9002226,930,.01)
 ;;APCH HEARING EXAM DXS
 ;;9002226,930,.02)
 ;;@
 ;;9002226,930,.04)
 ;;n
 ;;9002226,930,.06)
 ;;@
 ;;9002226,930,.08)
 ;;0
 ;;9002226,930,.09)
 ;;3131113
 ;;9002226,930,.11)
 ;;@
 ;;9002226,930,.12)
 ;;31
 ;;9002226,930,.13)
 ;;1
 ;;9002226,930,.14)
 ;;@
 ;;9002226,930,.15)
 ;;80
 ;;9002226,930,.16)
 ;;@
 ;;9002226,930,.17)
 ;;@
 ;;9002226,930,3101)
 ;;@
 ;;9002226.02101,"930,V72.1 ",.01)
 ;;V72.1 
 ;;9002226.02101,"930,V72.1 ",.02)
 ;;V72.19 
 ;;9002226.02101,"930,V72.1 ",.03)
 ;;1
 ;;9002226.02101,"930,Z01.10 ",.01)
 ;;Z01.10 
 ;;9002226.02101,"930,Z01.10 ",.02)
 ;;Z01.10 
 ;;9002226.02101,"930,Z01.10 ",.03)
 ;;30
 ;;9002226.02101,"930,Z01.110 ",.01)
 ;;Z01.110 
 ;;9002226.02101,"930,Z01.110 ",.02)
 ;;Z01.110 
 ;;9002226.02101,"930,Z01.110 ",.03)
 ;;30
 ;;9002226.02101,"930,Z01.118 ",.01)
 ;;Z01.118 
 ;;9002226.02101,"930,Z01.118 ",.02)
 ;;Z01.118 
 ;;9002226.02101,"930,Z01.118 ",.03)
 ;;30
 ;;9002226.02101,"930,Z01.12 ",.01)
 ;;Z01.12 
 ;;9002226.02101,"930,Z01.12 ",.02)
 ;;Z01.12 
 ;;9002226.02101,"930,Z01.12 ",.03)
 ;;30
 ;;9002226.02101,"930,Z13.5 ",.01)
 ;;Z13.5 
 ;;9002226.02101,"930,Z13.5 ",.02)
 ;;Z13.5 
 ;;9002226.02101,"930,Z13.5 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
