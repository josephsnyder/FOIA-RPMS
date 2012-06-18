BGP9OXE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP PAP ICDS
 ;
 ; This routine loads Taxonomy BGP PAP ICDS
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
 ;;21,"V72.31 ")
 ;;1
 ;;21,"V76.2 ")
 ;;2
 ;;21,"V76.47 ")
 ;;3
 ;;21,"V76.49 ")
 ;;4
 ;;9002226,631,.01)
 ;;BGP PAP ICDS
 ;;9002226,631,.02)
 ;;PAP ICDS
 ;;9002226,631,.04)
 ;;n
 ;;9002226,631,.06)
 ;;@
 ;;9002226,631,.08)
 ;;0
 ;;9002226,631,.09)
 ;;3050208
 ;;9002226,631,.11)
 ;;@
 ;;9002226,631,.12)
 ;;31
 ;;9002226,631,.13)
 ;;1
 ;;9002226,631,.14)
 ;;@
 ;;9002226,631,.15)
 ;;80
 ;;9002226,631,.16)
 ;;@
 ;;9002226,631,.17)
 ;;@
 ;;9002226,631,3101)
 ;;@
 ;;9002226.02101,"631,V72.31 ",.01)
 ;;V72.31
 ;;9002226.02101,"631,V72.31 ",.02)
 ;;V72.32
 ;;9002226.02101,"631,V76.2 ",.01)
 ;;V76.2
 ;;9002226.02101,"631,V76.2 ",.02)
 ;;V76.2
 ;;9002226.02101,"631,V76.47 ",.01)
 ;;V76.47
 ;;9002226.02101,"631,V76.47 ",.02)
 ;;V76.47
 ;;9002226.02101,"631,V76.49 ",.01)
 ;;V76.49
 ;;9002226.02101,"631,V76.49 ",.02)
 ;;V76.49
 ;
OTHER ; OTHER ROUTINES
 Q
