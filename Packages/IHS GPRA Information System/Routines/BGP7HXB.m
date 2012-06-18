BGP7HXB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 19, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP OPV EVID DISEASE
 ;
 ; This routine loads Taxonomy BGP OPV EVID DISEASE
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
 ;;21,"045.00 ")
 ;;1
 ;;21,"138. ")
 ;;2
 ;;21,"730.70 ")
 ;;3
 ;;21,"V12.02 ")
 ;;4
 ;;9002226,354,.01)
 ;;BGP OPV EVID DISEASE
 ;;9002226,354,.02)
 ;;@
 ;;9002226,354,.04)
 ;;n
 ;;9002226,354,.06)
 ;;@
 ;;9002226,354,.08)
 ;;0
 ;;9002226,354,.09)
 ;;3040526
 ;;9002226,354,.11)
 ;;@
 ;;9002226,354,.12)
 ;;31
 ;;9002226,354,.13)
 ;;1
 ;;9002226,354,.14)
 ;;@
 ;;9002226,354,.15)
 ;;80
 ;;9002226,354,.16)
 ;;@
 ;;9002226,354,.17)
 ;;@
 ;;9002226,354,3101)
 ;;@
 ;;9002226.02101,"354,045.00 ",.01)
 ;;045.00 
 ;;9002226.02101,"354,045.00 ",.02)
 ;;045.93 
 ;;9002226.02101,"354,138. ",.01)
 ;;138. 
 ;;9002226.02101,"354,138. ",.02)
 ;;138. 
 ;;9002226.02101,"354,730.70 ",.01)
 ;;730.70 
 ;;9002226.02101,"354,730.70 ",.02)
 ;;730.79 
 ;;9002226.02101,"354,V12.02 ",.01)
 ;;V12.02 
 ;;9002226.02101,"354,V12.02 ",.02)
 ;;V12.02 
 ;
OTHER ; OTHER ROUTINES
 Q
