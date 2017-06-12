BGP6T1A ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUL 23, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP PREGNANCY CPT CODES
 ;
 ; This routine loads Taxonomy BGP PREGNANCY CPT CODES
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
 ;;21,"59000 ")
 ;;1
 ;;21,"59300 ")
 ;;2
 ;;21,"59320 ")
 ;;3
 ;;21,"59400 ")
 ;;4
 ;;21,"59510 ")
 ;;5
 ;;21,"59610 ")
 ;;6
 ;;21,"59618 ")
 ;;7
 ;;21,"76801 ")
 ;;8
 ;;9002226,2072,.01)
 ;;BGP PREGNANCY CPT CODES
 ;;9002226,2072,.02)
 ;;@
 ;;9002226,2072,.04)
 ;;@
 ;;9002226,2072,.06)
 ;;@
 ;;9002226,2072,.08)
 ;;0
 ;;9002226,2072,.09)
 ;;3150723
 ;;9002226,2072,.11)
 ;;@
 ;;9002226,2072,.12)
 ;;455
 ;;9002226,2072,.13)
 ;;1
 ;;9002226,2072,.14)
 ;;@
 ;;9002226,2072,.15)
 ;;81
 ;;9002226,2072,.16)
 ;;@
 ;;9002226,2072,.17)
 ;;@
 ;;9002226,2072,3101)
 ;;@
 ;;9002226.02101,"2072,59000 ",.01)
 ;;59000 
 ;;9002226.02101,"2072,59000 ",.02)
 ;;59076 
 ;;9002226.02101,"2072,59300 ",.01)
 ;;59300 
 ;;9002226.02101,"2072,59300 ",.02)
 ;;59300 
 ;;9002226.02101,"2072,59320 ",.01)
 ;;59320 
 ;;9002226.02101,"2072,59320 ",.02)
 ;;59320 
 ;;9002226.02101,"2072,59400 ",.01)
 ;;59400 
 ;;9002226.02101,"2072,59400 ",.02)
 ;;59426 
 ;;9002226.02101,"2072,59510 ",.01)
 ;;59510 
 ;;9002226.02101,"2072,59510 ",.02)
 ;;59514 
 ;;9002226.02101,"2072,59610 ",.01)
 ;;59610 
 ;;9002226.02101,"2072,59610 ",.02)
 ;;59612 
 ;;9002226.02101,"2072,59618 ",.01)
 ;;59618 
 ;;9002226.02101,"2072,59618 ",.02)
 ;;59620 
 ;;9002226.02101,"2072,76801 ",.01)
 ;;76801 
 ;;9002226.02101,"2072,76801 ",.02)
 ;;76828 
 ;
OTHER ; OTHER ROUTINES
 Q
