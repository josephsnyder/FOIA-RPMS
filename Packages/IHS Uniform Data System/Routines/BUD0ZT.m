BUD0ZT ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JAN 12, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD 10 CPT IMM LINE 24
 ;
 ; This routine loads Taxonomy BUD 10 CPT IMM LINE 24
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
 ;;21,"90633 ")
 ;;1
 ;;21,"90645 ")
 ;;2
 ;;21,"90670 ")
 ;;3
 ;;21,"90696 ")
 ;;4
 ;;21,"90704 ")
 ;;5
 ;;21,"90718 ")
 ;;6
 ;;21,"90743 ")
 ;;7
 ;;21,"90748 ")
 ;;8
 ;;9002226,1003,.01)
 ;;BUD 10 CPT IMM LINE 24
 ;;9002226,1003,.02)
 ;;@
 ;;9002226,1003,.04)
 ;;@
 ;;9002226,1003,.06)
 ;;@
 ;;9002226,1003,.08)
 ;;0
 ;;9002226,1003,.09)
 ;;3110112
 ;;9002226,1003,.11)
 ;;@
 ;;9002226,1003,.12)
 ;;455
 ;;9002226,1003,.13)
 ;;1
 ;;9002226,1003,.14)
 ;;@
 ;;9002226,1003,.15)
 ;;81
 ;;9002226,1003,.16)
 ;;@
 ;;9002226,1003,.17)
 ;;@
 ;;9002226,1003,3101)
 ;;@
 ;;9002226.02101,"1003,90633 ",.01)
 ;;90633 
 ;;9002226.02101,"1003,90633 ",.02)
 ;;90634 
 ;;9002226.02101,"1003,90645 ",.01)
 ;;90645 
 ;;9002226.02101,"1003,90645 ",.02)
 ;;90648 
 ;;9002226.02101,"1003,90670 ",.01)
 ;;90670 
 ;;9002226.02101,"1003,90670 ",.02)
 ;;90670 
 ;;9002226.02101,"1003,90696 ",.01)
 ;;90696 
 ;;9002226.02101,"1003,90696 ",.02)
 ;;90702 
 ;;9002226.02101,"1003,90704 ",.01)
 ;;90704 
 ;;9002226.02101,"1003,90704 ",.02)
 ;;90716 
 ;;9002226.02101,"1003,90718 ",.01)
 ;;90718 
 ;;9002226.02101,"1003,90718 ",.02)
 ;;90723 
 ;;9002226.02101,"1003,90743 ",.01)
 ;;90743 
 ;;9002226.02101,"1003,90743 ",.02)
 ;;90744 
 ;;9002226.02101,"1003,90748 ",.01)
 ;;90748 
 ;;9002226.02101,"1003,90748 ",.02)
 ;;90748 
 ;
OTHER ; OTHER ROUTINES
 Q
