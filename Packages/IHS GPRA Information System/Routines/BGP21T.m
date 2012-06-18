BGP21T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 16, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;;BGP PCI DXS
 ;
 ; This routine loads Taxonomy BGP PCI DXS
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
 ;;21,"V45.81 ")
 ;;1
 ;;9002226,813,.01)
 ;;BGP PCI DXS
 ;;9002226,813,.02)
 ;;@
 ;;9002226,813,.04)
 ;;n
 ;;9002226,813,.06)
 ;;@
 ;;9002226,813,.08)
 ;;0
 ;;9002226,813,.09)
 ;;3100420
 ;;9002226,813,.11)
 ;;@
 ;;9002226,813,.12)
 ;;31
 ;;9002226,813,.13)
 ;;1
 ;;9002226,813,.14)
 ;;@
 ;;9002226,813,.15)
 ;;80
 ;;9002226,813,.16)
 ;;@
 ;;9002226,813,.17)
 ;;@
 ;;9002226,813,3101)
 ;;@
 ;;9002226.02101,"813,V45.81 ",.01)
 ;;V45.81 
 ;;9002226.02101,"813,V45.81 ",.02)
 ;;V45.81 
 ;
OTHER ; OTHER ROUTINES
 Q
