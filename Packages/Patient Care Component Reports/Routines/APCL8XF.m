APCL8XF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON FEB 04, 2008 ;
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
 ;;9
 ;;21,"14585-4 ")
 ;;1
 ;;21,"14958-3 ")
 ;;2
 ;;21,"14959-1 ")
 ;;3
 ;;21,"20621-9 ")
 ;;4
 ;;21,"30000-2 ")
 ;;6
 ;;21,"30000-4 ")
 ;;5
 ;;21,"32294-1 ")
 ;;7
 ;;21,"44292-1 ")
 ;;10
 ;;21,"44707-8 ")
 ;;11
 ;;21,"9318-7 ")
 ;;8
 ;;9002226,502,.01)
 ;;DM AUDIT A/C RATIO LOINC
 ;;9002226,502,.02)
 ;;@
 ;;9002226,502,.04)
 ;;n
 ;;9002226,502,.06)
 ;;@
 ;;9002226,502,.08)
 ;;@
 ;;9002226,502,.09)
 ;;@
 ;;9002226,502,.11)
 ;;@
 ;;9002226,502,.12)
 ;;@
 ;;9002226,502,.13)
 ;;1
 ;;9002226,502,.14)
 ;;FIHS
 ;;9002226,502,.15)
 ;;95.3
 ;;9002226,502,.16)
 ;;@
 ;;9002226,502,.17)
 ;;@
 ;;9002226,502,3101)
 ;;@
 ;;9002226.02101,"502,13705-9 ",.01)
 ;;13705-9
 ;;9002226.02101,"502,13705-9 ",.02)
 ;;13705-9
 ;;9002226.02101,"502,14585-4 ",.01)
 ;;14585-4
 ;;9002226.02101,"502,14585-4 ",.02)
 ;;14585-4
 ;;9002226.02101,"502,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"502,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"502,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"502,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"502,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"502,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"502,30000-2 ",.01)
 ;;30000-2
 ;;9002226.02101,"502,30000-2 ",.02)
 ;;30000-2
 ;;9002226.02101,"502,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"502,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"502,32294-1 ",.01)
 ;;32294-1
 ;;9002226.02101,"502,32294-1 ",.02)
 ;;32294-1
 ;;9002226.02101,"502,44292-1 ",.01)
 ;;44292-1
 ;;9002226.02101,"502,44292-1 ",.02)
 ;;44292-1
 ;;9002226.02101,"502,44707-8 ",.01)
 ;;44707-8
 ;;9002226.02101,"502,44707-8 ",.02)
 ;;44707-8
 ;;9002226.02101,"502,9318-7 ",.01)
 ;;9318-7
 ;;9002226.02101,"502,9318-7 ",.02)
 ;;9318-7
 ;
OTHER ; OTHER ROUTINES
 Q
