BGP62B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP REVASCULARIZATION CPTS
 ;
 ; This routine loads Taxonomy BGP REVASCULARIZATION CPTS
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
 ;;21,"37220 ")
 ;;1
 ;;21,"37224 ")
 ;;2
 ;;9002226,966,.01)
 ;;BGP REVASCULARIZATION CPTS
 ;;9002226,966,.02)
 ;;@
 ;;9002226,966,.04)
 ;;@
 ;;9002226,966,.06)
 ;;@
 ;;9002226,966,.08)
 ;;0
 ;;9002226,966,.09)
 ;;3160105
 ;;9002226,966,.11)
 ;;@
 ;;9002226,966,.12)
 ;;455
 ;;9002226,966,.13)
 ;;1
 ;;9002226,966,.14)
 ;;@
 ;;9002226,966,.15)
 ;;81
 ;;9002226,966,.16)
 ;;@
 ;;9002226,966,.17)
 ;;@
 ;;9002226,966,3101)
 ;;@
 ;;9002226.02101,"966,37220 ",.01)
 ;;37220 
 ;;9002226.02101,"966,37220 ",.02)
 ;;37221 
 ;;9002226.02101,"966,37224 ",.01)
 ;;37224 
 ;;9002226.02101,"966,37224 ",.02)
 ;;37231 
 ;
OTHER ; OTHER ROUTINES
 Q
