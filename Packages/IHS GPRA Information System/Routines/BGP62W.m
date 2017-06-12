BGP62W ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP QUANT URINE PROT LOINC
 ;
 ; This routine loads Taxonomy BGP QUANT URINE PROT LOINC
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
 ;;13
 ;;21,"30000-2 ")
 ;;5
 ;;21,"30000-4 ")
 ;;6
 ;;21,"32294-1 ")
 ;;7
 ;;21,"34535-5 ")
 ;;8
 ;;21,"44292-1 ")
 ;;9
 ;;21,"58447-4 ")
 ;;10
 ;;21,"59159-4 ")
 ;;11
 ;;21,"9318-7 ")
 ;;12
 ;;9002226,642,.01)
 ;;BGP QUANT URINE PROT LOINC
 ;;9002226,642,.02)
 ;;@
 ;;9002226,642,.04)
 ;;n
 ;;9002226,642,.06)
 ;;@
 ;;9002226,642,.08)
 ;;@
 ;;9002226,642,.09)
 ;;3121106
 ;;9002226,642,.11)
 ;;@
 ;;9002226,642,.12)
 ;;@
 ;;9002226,642,.13)
 ;;1
 ;;9002226,642,.14)
 ;;FIHS
 ;;9002226,642,.15)
 ;;95.3
 ;;9002226,642,.16)
 ;;@
 ;;9002226,642,.17)
 ;;@
 ;;9002226,642,3101)
 ;;@
 ;;9002226.02101,"642,13705-9 ",.01)
 ;;13705-9
 ;;9002226.02101,"642,13705-9 ",.02)
 ;;13705-9
 ;;9002226.02101,"642,14585-4 ",.01)
 ;;14585-4
 ;;9002226.02101,"642,14585-4 ",.02)
 ;;14585-4
 ;;9002226.02101,"642,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"642,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"642,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"642,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"642,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"642,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"642,30000-2 ",.01)
 ;;30000-2
 ;;9002226.02101,"642,30000-2 ",.02)
 ;;30000-2
 ;;9002226.02101,"642,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"642,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"642,32294-1 ",.01)
 ;;32294-1
 ;;9002226.02101,"642,32294-1 ",.02)
 ;;32294-1
 ;;9002226.02101,"642,34535-5 ",.01)
 ;;34535-5
 ;;9002226.02101,"642,34535-5 ",.02)
 ;;34535-5
 ;;9002226.02101,"642,44292-1 ",.01)
 ;;44292-1
 ;;9002226.02101,"642,44292-1 ",.02)
 ;;44292-1
 ;;9002226.02101,"642,58447-4 ",.01)
 ;;58447-4
 ;;9002226.02101,"642,58447-4 ",.02)
 ;;58447-4
 ;;9002226.02101,"642,59159-4 ",.01)
 ;;59159-4
 ;;9002226.02101,"642,59159-4 ",.02)
 ;;59159-4
 ;;9002226.02101,"642,9318-7 ",.01)
 ;;9318-7
 ;;9002226.02101,"642,9318-7 ",.02)
 ;;9318-7
 ;;9002226.04101,"642,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
