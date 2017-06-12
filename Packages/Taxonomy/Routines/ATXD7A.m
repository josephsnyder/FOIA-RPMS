ATXD7A ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW BRST RECON W/IMP DXS
 ;
 ; This routine loads Taxonomy BTPW BRST RECON W/IMP DXS
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
 ;;21,"V52.4 ")
 ;;1
 ;;21,"Z44.30 ")
 ;;2
 ;;21,"Z44.31 ")
 ;;3
 ;;21,"Z44.32 ")
 ;;4
 ;;21,"Z45.811 ")
 ;;5
 ;;21,"Z45.812 ")
 ;;6
 ;;21,"Z45.819 ")
 ;;7
 ;;9002226,1458,.01)
 ;;BTPW BRST RECON W/IMP DXS
 ;;9002226,1458,.02)
 ;;@
 ;;9002226,1458,.04)
 ;;n
 ;;9002226,1458,.06)
 ;;@
 ;;9002226,1458,.08)
 ;;0
 ;;9002226,1458,.09)
 ;;3131112
 ;;9002226,1458,.11)
 ;;@
 ;;9002226,1458,.12)
 ;;31
 ;;9002226,1458,.13)
 ;;1
 ;;9002226,1458,.14)
 ;;@
 ;;9002226,1458,.15)
 ;;80
 ;;9002226,1458,.16)
 ;;@
 ;;9002226,1458,.17)
 ;;@
 ;;9002226,1458,3101)
 ;;@
 ;;9002226.02101,"1458,V52.4 ",.01)
 ;;V52.4
 ;;9002226.02101,"1458,V52.4 ",.02)
 ;;V52.4
 ;;9002226.02101,"1458,V52.4 ",.03)
 ;;1
 ;;9002226.02101,"1458,Z44.30 ",.01)
 ;;Z44.30 
 ;;9002226.02101,"1458,Z44.30 ",.02)
 ;;Z44.30 
 ;;9002226.02101,"1458,Z44.30 ",.03)
 ;;30
 ;;9002226.02101,"1458,Z44.31 ",.01)
 ;;Z44.31 
 ;;9002226.02101,"1458,Z44.31 ",.02)
 ;;Z44.31 
 ;;9002226.02101,"1458,Z44.31 ",.03)
 ;;30
 ;;9002226.02101,"1458,Z44.32 ",.01)
 ;;Z44.32 
 ;;9002226.02101,"1458,Z44.32 ",.02)
 ;;Z44.32 
 ;;9002226.02101,"1458,Z44.32 ",.03)
 ;;30
 ;;9002226.02101,"1458,Z45.811 ",.01)
 ;;Z45.811 
 ;;9002226.02101,"1458,Z45.811 ",.02)
 ;;Z45.811 
 ;;9002226.02101,"1458,Z45.811 ",.03)
 ;;30
 ;;9002226.02101,"1458,Z45.812 ",.01)
 ;;Z45.812 
 ;;9002226.02101,"1458,Z45.812 ",.02)
 ;;Z45.812 
 ;;9002226.02101,"1458,Z45.812 ",.03)
 ;;30
 ;;9002226.02101,"1458,Z45.819 ",.01)
 ;;Z45.819 
 ;;9002226.02101,"1458,Z45.819 ",.02)
 ;;Z45.819 
 ;;9002226.02101,"1458,Z45.819 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
