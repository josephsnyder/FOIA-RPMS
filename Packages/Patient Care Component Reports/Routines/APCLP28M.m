APCLP28M ;INS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 07, 2011;
 ;;3.0;IHS PCC REPORTS;**28**;FEB 05, 1997
 ;;SURVEILLANCE H1N1 DX
 ;
 ; This routine loads Taxonomy SURVEILLANCE H1N1 DX
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
 ;;21,"488.1 ")
 ;;1
 ;;9002226,1015,.01)
 ;;SURVEILLANCE H1N1 DX
 ;;9002226,1015,.02)
 ;;@
 ;;9002226,1015,.04)
 ;;@
 ;;9002226,1015,.06)
 ;;@
 ;;9002226,1015,.08)
 ;;0
 ;;9002226,1015,.09)
 ;;3111007
 ;;9002226,1015,.11)
 ;;@
 ;;9002226,1015,.12)
 ;;31
 ;;9002226,1015,.13)
 ;;1
 ;;9002226,1015,.14)
 ;;@
 ;;9002226,1015,.15)
 ;;80
 ;;9002226,1015,.16)
 ;;@
 ;;9002226,1015,.17)
 ;;@
 ;;9002226,1015,3101)
 ;;@
 ;;9002226.02101,"1015,488.1 ",.01)
 ;;488.1 
 ;;9002226.02101,"1015,488.1 ",.02)
 ;;488.19 
 ;
OTHER ; OTHER ROUTINES
 Q
