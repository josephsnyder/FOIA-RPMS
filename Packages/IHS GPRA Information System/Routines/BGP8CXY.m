BGP8CXY ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP CMS PNEUMONIA DXS
 ;
 ; This routine loads Taxonomy BGP CMS PNEUMONIA DXS
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
 ;;21,"481. ")
 ;;1
 ;;21,"482.30 ")
 ;;2
 ;;21,"482.40 ")
 ;;3
 ;;21,"482.81 ")
 ;;4
 ;;21,"483.0 ")
 ;;5
 ;;21,"485. ")
 ;;6
 ;;9002226,476,.01)
 ;;BGP CMS PNEUMONIA DXS
 ;;9002226,476,.02)
 ;;@
 ;;9002226,476,.04)
 ;;n
 ;;9002226,476,.06)
 ;;@
 ;;9002226,476,.08)
 ;;0
 ;;9002226,476,.09)
 ;;3060327
 ;;9002226,476,.11)
 ;;@
 ;;9002226,476,.12)
 ;;31
 ;;9002226,476,.13)
 ;;1
 ;;9002226,476,.14)
 ;;@
 ;;9002226,476,.15)
 ;;80
 ;;9002226,476,.16)
 ;;@
 ;;9002226,476,.17)
 ;;@
 ;;9002226,476,3101)
 ;;@
 ;;9002226.02101,"476,481. ",.01)
 ;;481. 
 ;;9002226.02101,"476,481. ",.02)
 ;;482.2 
 ;;9002226.02101,"476,482.30 ",.01)
 ;;482.30 
 ;;9002226.02101,"476,482.30 ",.02)
 ;;482.39 
 ;;9002226.02101,"476,482.40 ",.01)
 ;;482.40 
 ;;9002226.02101,"476,482.40 ",.02)
 ;;482.49 
 ;;9002226.02101,"476,482.81 ",.01)
 ;;482.81 
 ;;9002226.02101,"476,482.81 ",.02)
 ;;482.9 
 ;;9002226.02101,"476,483.0 ",.01)
 ;;483.0 
 ;;9002226.02101,"476,483.0 ",.02)
 ;;483.8 
 ;;9002226.02101,"476,485. ",.01)
 ;;485. 
 ;;9002226.02101,"476,485. ",.02)
 ;;487.0 
 ;
OTHER ; OTHER ROUTINES
 Q
