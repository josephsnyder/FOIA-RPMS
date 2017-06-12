BGP62N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP RIGHT MASTECTOMY DXS
 ;
 ; This routine loads Taxonomy BGP RIGHT MASTECTOMY DXS
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
 ;;21,"Z90.11 ")
 ;;1
 ;;9002226,647,.01)
 ;;BGP RIGHT MASTECTOMY DXS
 ;;9002226,647,.02)
 ;;@
 ;;9002226,647,.04)
 ;;n
 ;;9002226,647,.06)
 ;;@
 ;;9002226,647,.08)
 ;;0
 ;;9002226,647,.09)
 ;;3160105
 ;;9002226,647,.11)
 ;;@
 ;;9002226,647,.12)
 ;;31
 ;;9002226,647,.13)
 ;;1
 ;;9002226,647,.14)
 ;;@
 ;;9002226,647,.15)
 ;;80
 ;;9002226,647,.16)
 ;;@
 ;;9002226,647,.17)
 ;;@
 ;;9002226,647,3101)
 ;;@
 ;;9002226.02101,"647,Z90.11 ",.01)
 ;;Z90.11 
 ;;9002226.02101,"647,Z90.11 ",.02)
 ;;Z90.11 
 ;;9002226.02101,"647,Z90.11 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
