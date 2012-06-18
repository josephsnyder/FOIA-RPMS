BGP6FXJ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 08, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;DEC 08, 2005
 ;;BGP CBC CPT
 ;
 ; This routine loads Taxonomy BGP CBC CPT
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
 ;;21,"85025 ")
 ;;1
 ;;9002226,512,.01)
 ;;BGP CBC CPT
 ;;9002226,512,.02)
 ;;@
 ;;9002226,512,.04)
 ;;@
 ;;9002226,512,.06)
 ;;@
 ;;9002226,512,.08)
 ;;0
 ;;9002226,512,.09)
 ;;3051208
 ;;9002226,512,.11)
 ;;@
 ;;9002226,512,.12)
 ;;455
 ;;9002226,512,.13)
 ;;1
 ;;9002226,512,.14)
 ;;@
 ;;9002226,512,.15)
 ;;81
 ;;9002226,512,.16)
 ;;@
 ;;9002226,512,.17)
 ;;@
 ;;9002226,512,3101)
 ;;@
 ;;9002226.02101,"512,85025 ",.01)
 ;;85025 
 ;;9002226.02101,"512,85025 ",.02)
 ;;85027 
 ;
OTHER ; OTHER ROUTINES
 Q
