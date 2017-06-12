BGP53D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 11, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP CPT FLU
 ;
 ; This routine loads Taxonomy BGP CPT FLU
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
 ;;21,"90630 ")
 ;;1
 ;;21,"90654 ")
 ;;2
 ;;21,"90672 ")
 ;;3
 ;;21,"90685 ")
 ;;4
 ;;21,"90686 ")
 ;;5
 ;;21,"90687 ")
 ;;6
 ;;21,"90688 ")
 ;;7
 ;;21,"90724 ")
 ;;8
 ;;21,"G0008 ")
 ;;9
 ;;21,"G8108 ")
 ;;10
 ;;9002226,278,.01)
 ;;BGP CPT FLU
 ;;9002226,278,.02)
 ;;@
 ;;9002226,278,.04)
 ;;@
 ;;9002226,278,.06)
 ;;@
 ;;9002226,278,.08)
 ;;0
 ;;9002226,278,.09)
 ;;3150211
 ;;9002226,278,.11)
 ;;@
 ;;9002226,278,.12)
 ;;455
 ;;9002226,278,.13)
 ;;1
 ;;9002226,278,.14)
 ;;@
 ;;9002226,278,.15)
 ;;81
 ;;9002226,278,.16)
 ;;@
 ;;9002226,278,.17)
 ;;@
 ;;9002226,278,3101)
 ;;@
 ;;9002226.02101,"278,90630 ",.01)
 ;;90630 
 ;;9002226.02101,"278,90630 ",.02)
 ;;90630 
 ;;9002226.02101,"278,90654 ",.01)
 ;;90654 
 ;;9002226.02101,"278,90654 ",.02)
 ;;90662 
 ;;9002226.02101,"278,90672 ",.01)
 ;;90672 
 ;;9002226.02101,"278,90672 ",.02)
 ;;90673 
 ;;9002226.02101,"278,90685 ",.01)
 ;;90685 
 ;;9002226.02101,"278,90685 ",.02)
 ;;90685 
 ;;9002226.02101,"278,90686 ",.01)
 ;;90686 
 ;;9002226.02101,"278,90686 ",.02)
 ;;90686 
 ;;9002226.02101,"278,90687 ",.01)
 ;;90687 
 ;;9002226.02101,"278,90687 ",.02)
 ;;90687 
 ;;9002226.02101,"278,90688 ",.01)
 ;;90688 
 ;;9002226.02101,"278,90688 ",.02)
 ;;90688 
 ;;9002226.02101,"278,90724 ",.01)
 ;;90724 
 ;;9002226.02101,"278,90724 ",.02)
 ;;90724 
 ;;9002226.02101,"278,G0008 ",.01)
 ;;G0008 
 ;;9002226.02101,"278,G0008 ",.02)
 ;;G0008 
 ;;9002226.02101,"278,G8108 ",.01)
 ;;G8108 
 ;;9002226.02101,"278,G8108 ",.02)
 ;;G8108 
 ;
OTHER ; OTHER ROUTINES
 Q
