BGP21Q ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 18, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;;BGP BILATERAL BLINDNESS DXS
 ;
 ; This routine loads Taxonomy BGP BILATERAL BLINDNESS DXS
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
 ;;21,"369.01 ")
 ;;1
 ;;21,"369.03 ")
 ;;2
 ;;9002226,1252,.01)
 ;;BGP BILATERAL BLINDNESS DXS
 ;;9002226,1252,.02)
 ;;@
 ;;9002226,1252,.04)
 ;;@
 ;;9002226,1252,.06)
 ;;@
 ;;9002226,1252,.08)
 ;;0
 ;;9002226,1252,.09)
 ;;3111016
 ;;9002226,1252,.11)
 ;;@
 ;;9002226,1252,.12)
 ;;31
 ;;9002226,1252,.13)
 ;;1
 ;;9002226,1252,.14)
 ;;@
 ;;9002226,1252,.15)
 ;;80
 ;;9002226,1252,.16)
 ;;@
 ;;9002226,1252,.17)
 ;;@
 ;;9002226,1252,3101)
 ;;@
 ;;9002226.02101,"1252,369.01 ",.01)
 ;;369.01 
 ;;9002226.02101,"1252,369.01 ",.02)
 ;;369.01 
 ;;9002226.02101,"1252,369.03 ",.01)
 ;;369.03 
 ;;9002226.02101,"1252,369.03 ",.02)
 ;;369.04 
 ;
OTHER ; OTHER ROUTINES
 Q
