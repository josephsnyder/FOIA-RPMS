BGP50S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 08, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP OPEN ANGLE GLAUCOMA DXS
 ;
 ; This routine loads Taxonomy BGP OPEN ANGLE GLAUCOMA DXS
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
 ;;21,"365.10 ")
 ;;1
 ;;21,"365.15 ")
 ;;2
 ;;9002226,1823,.01)
 ;;BGP OPEN ANGLE GLAUCOMA DXS
 ;;9002226,1823,.02)
 ;;@
 ;;9002226,1823,.04)
 ;;@
 ;;9002226,1823,.06)
 ;;@
 ;;9002226,1823,.08)
 ;;0
 ;;9002226,1823,.09)
 ;;3140808
 ;;9002226,1823,.11)
 ;;@
 ;;9002226,1823,.12)
 ;;31
 ;;9002226,1823,.13)
 ;;1
 ;;9002226,1823,.14)
 ;;@
 ;;9002226,1823,.15)
 ;;80
 ;;9002226,1823,.16)
 ;;@
 ;;9002226,1823,.17)
 ;;@
 ;;9002226,1823,3101)
 ;;@
 ;;9002226.02101,"1823,365.10 ",.01)
 ;;365.10 
 ;;9002226.02101,"1823,365.10 ",.02)
 ;;365.12 
 ;;9002226.02101,"1823,365.15 ",.01)
 ;;365.15 
 ;;9002226.02101,"1823,365.15 ",.02)
 ;;365.15 
 ;
OTHER ; OTHER ROUTINES
 Q
