BJPC2TD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUN 23, 2008 ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;;DM AUDIT A/C RATIO LOINC
 ;
 ; This routine loads Taxonomy DM AUDIT A/C RATIO LOINC
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
 ;;21,"13705-9 ")
 ;;1
 ;;21,"14585-4 ")
 ;;2
 ;;21,"14958-3 ")
 ;;3
 ;;21,"14959-1 ")
 ;;4
 ;;21,"20621-9 ")
 ;;5
 ;;21,"30000-2 ")
 ;;6
 ;;21,"30000-4 ")
 ;;7
 ;;21,"32294-1 ")
 ;;8
 ;;21,"44292-1 ")
 ;;9
 ;;21,"44707-8 ")
 ;;10
 ;;21,"9318-7 ")
 ;;11
 ;;9002226,532,.01)
 ;;DM AUDIT A/C RATIO LOINC
 ;;9002226,532,.02)
 ;;@
 ;;9002226,532,.04)
 ;;n
 ;;9002226,532,.06)
 ;;@
 ;;9002226,532,.08)
 ;;@
 ;;9002226,532,.09)
 ;;@
 ;;9002226,532,.11)
 ;;@
 ;;9002226,532,.12)
 ;;@
 ;;9002226,532,.13)
 ;;1
 ;;9002226,532,.14)
 ;;FIHS
 ;;9002226,532,.15)
 ;;95.3
 ;;9002226,532,.16)
 ;;@
 ;;9002226,532,.17)
 ;;@
 ;;9002226,532,3101)
 ;;@
 ;;9002226.02101,"532,13705-9 ",.01)
 ;;13705-9
 ;;9002226.02101,"532,13705-9 ",.02)
 ;;13705-9
 ;;9002226.02101,"532,14585-4 ",.01)
 ;;14585-4
 ;;9002226.02101,"532,14585-4 ",.02)
 ;;14585-4
 ;;9002226.02101,"532,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"532,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"532,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"532,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"532,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"532,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"532,30000-2 ",.01)
 ;;30000-2
 ;;9002226.02101,"532,30000-2 ",.02)
 ;;30000-2
 ;;9002226.02101,"532,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"532,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"532,32294-1 ",.01)
 ;;32294-1
 ;;9002226.02101,"532,32294-1 ",.02)
 ;;32294-1
 ;;9002226.02101,"532,44292-1 ",.01)
 ;;44292-1
 ;;9002226.02101,"532,44292-1 ",.02)
 ;;44292-1
 ;;9002226.02101,"532,44707-8 ",.01)
 ;;44707-8
 ;;9002226.02101,"532,44707-8 ",.02)
 ;;44707-8
 ;;9002226.02101,"532,9318-7 ",.01)
 ;;9318-7
 ;;9002226.02101,"532,9318-7 ",.02)
 ;;9318-7
 ;
OTHER ; OTHER ROUTINES
 Q
