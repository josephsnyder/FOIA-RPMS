APCL23S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 09, 2009;
 ;;3.0;IHS PCC REPORTS;**24**;FEB 05, 1997
 ;;SURVEILL ADV EV OPTIC NEURITIS
 ;
 ; This routine loads Taxonomy SURVEILL ADV EV OPTIC NEURITIS
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
 ;;21,"377.30 ")
 ;;1
 ;;21,"377.39 ")
 ;;2
 ;;9002226,1043,.01)
 ;;SURVEILL ADV EV OPTIC NEURITIS
 ;;9002226,1043,.02)
 ;;@
 ;;9002226,1043,.04)
 ;;@
 ;;9002226,1043,.06)
 ;;@
 ;;9002226,1043,.08)
 ;;0
 ;;9002226,1043,.09)
 ;;3091109
 ;;9002226,1043,.11)
 ;;@
 ;;9002226,1043,.12)
 ;;31
 ;;9002226,1043,.13)
 ;;1
 ;;9002226,1043,.14)
 ;;@
 ;;9002226,1043,.15)
 ;;80
 ;;9002226,1043,.16)
 ;;@
 ;;9002226,1043,.17)
 ;;@
 ;;9002226,1043,3101)
 ;;@
 ;;9002226.02101,"1043,377.30 ",.01)
 ;;377.30 
 ;;9002226.02101,"1043,377.30 ",.02)
 ;;377.32 
 ;;9002226.02101,"1043,377.39 ",.01)
 ;;377.39 
 ;;9002226.02101,"1043,377.39 ",.02)
 ;;377.39 
 ;
OTHER ; OTHER ROUTINES
 Q
