BUDB1D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 13, 2015;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD DEPRESSION SCREEN CPTS
 ;
 ; This routine loads Taxonomy BUD DEPRESSION SCREEN CPTS
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
 ;;21,"1220F ")
 ;;1
 ;;21,"3725F ")
 ;;2
 ;;21,"G0444 ")
 ;;3
 ;;9002226,2057,.01)
 ;;BUD DEPRESSION SCREEN CPTS
 ;;9002226,2057,.02)
 ;;@
 ;;9002226,2057,.04)
 ;;@
 ;;9002226,2057,.06)
 ;;@
 ;;9002226,2057,.08)
 ;;0
 ;;9002226,2057,.09)
 ;;3150113
 ;;9002226,2057,.11)
 ;;@
 ;;9002226,2057,.12)
 ;;455
 ;;9002226,2057,.13)
 ;;1
 ;;9002226,2057,.14)
 ;;@
 ;;9002226,2057,.15)
 ;;81
 ;;9002226,2057,.16)
 ;;@
 ;;9002226,2057,.17)
 ;;@
 ;;9002226,2057,3101)
 ;;@
 ;;9002226.02101,"2057,1220F ",.01)
 ;;1220F 
 ;;9002226.02101,"2057,1220F ",.02)
 ;;1220F 
 ;;9002226.02101,"2057,3725F ",.01)
 ;;3725F 
 ;;9002226.02101,"2057,3725F ",.02)
 ;;3725F 
 ;;9002226.02101,"2057,G0444 ",.01)
 ;;G0444 
 ;;9002226.02101,"2057,G0444 ",.02)
 ;;G0444 
 ;
OTHER ; OTHER ROUTINES
 Q
