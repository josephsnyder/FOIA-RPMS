BUD0ZL ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD HGBA1C CPTS
 ;
 ; This routine loads Taxonomy BUD HGBA1C CPTS
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
 ;;21,"3044F ")
 ;;1
 ;;21,"3045F ")
 ;;2
 ;;21,"3046F ")
 ;;3
 ;;21,"83036 ")
 ;;4
 ;;9002226,898,.01)
 ;;BUD HGBA1C CPTS
 ;;9002226,898,.02)
 ;;@
 ;;9002226,898,.04)
 ;;@
 ;;9002226,898,.06)
 ;;@
 ;;9002226,898,.08)
 ;;0
 ;;9002226,898,.09)
 ;;3081211
 ;;9002226,898,.11)
 ;;@
 ;;9002226,898,.12)
 ;;455
 ;;9002226,898,.13)
 ;;1
 ;;9002226,898,.14)
 ;;@
 ;;9002226,898,.15)
 ;;81
 ;;9002226,898,.16)
 ;;@
 ;;9002226,898,.17)
 ;;@
 ;;9002226,898,3101)
 ;;@
 ;;9002226.02101,"898,3044F ",.01)
 ;;3044F 
 ;;9002226.02101,"898,3044F ",.02)
 ;;3044F 
 ;;9002226.02101,"898,3045F ",.01)
 ;;3045F 
 ;;9002226.02101,"898,3045F ",.02)
 ;;3045F 
 ;;9002226.02101,"898,3046F ",.01)
 ;;3046F 
 ;;9002226.02101,"898,3046F ",.02)
 ;;3046F 
 ;;9002226.02101,"898,83036 ",.01)
 ;;83036 
 ;;9002226.02101,"898,83036 ",.02)
 ;;83037 
 ;
OTHER ; OTHER ROUTINES
 Q
