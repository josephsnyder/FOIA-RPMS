ATXO3I ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW CLIN BRST EXAM PROC
 ;
 ; This routine loads Taxonomy BTPW CLIN BRST EXAM PROC
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
 ;;21,"0HJTXZZ ")
 ;;2
 ;;21,"0HJUXZZ ")
 ;;3
 ;;21,"89.36 ")
 ;;1
 ;;9002226,1391,.01)
 ;;BTPW CLIN BRST EXAM PROC
 ;;9002226,1391,.02)
 ;;@
 ;;9002226,1391,.04)
 ;;n
 ;;9002226,1391,.06)
 ;;@
 ;;9002226,1391,.08)
 ;;0
 ;;9002226,1391,.09)
 ;;3131112
 ;;9002226,1391,.11)
 ;;@
 ;;9002226,1391,.12)
 ;;255
 ;;9002226,1391,.13)
 ;;1
 ;;9002226,1391,.14)
 ;;@
 ;;9002226,1391,.15)
 ;;80.1
 ;;9002226,1391,.16)
 ;;@
 ;;9002226,1391,.17)
 ;;@
 ;;9002226,1391,3101)
 ;;@
 ;;9002226.02101,"1391,0HJTXZZ ",.01)
 ;;0HJTXZZ 
 ;;9002226.02101,"1391,0HJTXZZ ",.02)
 ;;0HJTXZZ 
 ;;9002226.02101,"1391,0HJTXZZ ",.03)
 ;;31
 ;;9002226.02101,"1391,0HJUXZZ ",.01)
 ;;0HJUXZZ 
 ;;9002226.02101,"1391,0HJUXZZ ",.02)
 ;;0HJUXZZ 
 ;;9002226.02101,"1391,0HJUXZZ ",.03)
 ;;31
 ;;9002226.02101,"1391,89.36 ",.01)
 ;;89.36 
 ;;9002226.02101,"1391,89.36 ",.02)
 ;;89.36 
 ;;9002226.02101,"1391,89.36 ",.03)
 ;;2
 ;
OTHER ; OTHER ROUTINES
 Q
