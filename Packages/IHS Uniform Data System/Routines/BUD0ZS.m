BUD0ZS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 14, 2010 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BGP DIPHTHERIA EVIDENCE
 ;
 ; This routine loads Taxonomy BGP DIPHTHERIA EVIDENCE
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
 ;;21,"032.0 ")
 ;;1
 ;;21,"V02.4 ")
 ;;2
 ;;9002226,310,.01)
 ;;BGP DIPHTHERIA EVIDENCE
 ;;9002226,310,.02)
 ;;@
 ;;9002226,310,.04)
 ;;n
 ;;9002226,310,.06)
 ;;@
 ;;9002226,310,.08)
 ;;0
 ;;9002226,310,.09)
 ;;3040526
 ;;9002226,310,.11)
 ;;@
 ;;9002226,310,.12)
 ;;31
 ;;9002226,310,.13)
 ;;1
 ;;9002226,310,.14)
 ;;@
 ;;9002226,310,.15)
 ;;80
 ;;9002226,310,.16)
 ;;@
 ;;9002226,310,.17)
 ;;@
 ;;9002226,310,3101)
 ;;@
 ;;9002226.02101,"310,032.0 ",.01)
 ;;032.0 
 ;;9002226.02101,"310,032.0 ",.02)
 ;;032.9 
 ;;9002226.02101,"310,V02.4 ",.01)
 ;;V02.4 
 ;;9002226.02101,"310,V02.4 ",.02)
 ;;V02.4 
 ;
OTHER ; OTHER ROUTINES
 Q
