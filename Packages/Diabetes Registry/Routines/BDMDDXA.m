BDMDDXA ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 21, 2015;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**9**;JUN 14, 2007;Build 78
 ;;DM AUDIT DENTAL EXAM CPTS
 ;
 ; This routine loads Taxonomy DM AUDIT DENTAL EXAM CPTS
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
 ;;21,"D0110 ")
 ;;1
 ;;9002226,384,.01)
 ;;DM AUDIT DENTAL EXAM CPTS
 ;;9002226,384,.02)
 ;;@
 ;;9002226,384,.04)
 ;;@
 ;;9002226,384,.06)
 ;;@
 ;;9002226,384,.08)
 ;;0
 ;;9002226,384,.09)
 ;;3150921
 ;;9002226,384,.11)
 ;;@
 ;;9002226,384,.12)
 ;;455
 ;;9002226,384,.13)
 ;;1
 ;;9002226,384,.14)
 ;;@
 ;;9002226,384,.15)
 ;;81
 ;;9002226,384,.16)
 ;;@
 ;;9002226,384,.17)
 ;;@
 ;;9002226,384,3101)
 ;;@
 ;;9002226.02101,"384,D0110 ",.01)
 ;;D0110 
 ;;9002226.02101,"384,D0110 ",.02)
 ;;D9999 
 ;
OTHER ; OTHER ROUTINES
 Q
