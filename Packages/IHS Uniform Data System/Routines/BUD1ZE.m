BUD1ZE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD HYSTERECTOMY CPTS
 ;
 ; This routine loads Taxonomy BUD HYSTERECTOMY CPTS
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
 ;;21,"51925 ")
 ;;1
 ;;21,"56308 ")
 ;;2
 ;;21,"58150 ")
 ;;3
 ;;21,"58200 ")
 ;;4
 ;;21,"58210 ")
 ;;5
 ;;21,"58267 ")
 ;;6
 ;;21,"58550 ")
 ;;7
 ;;21,"58951 ")
 ;;8
 ;;21,"58953 ")
 ;;9
 ;;21,"59135 ")
 ;;10
 ;;9002226,808,.01)
 ;;BUD HYSTERECTOMY CPTS
 ;;9002226,808,.02)
 ;;@
 ;;9002226,808,.04)
 ;;@
 ;;9002226,808,.06)
 ;;@
 ;;9002226,808,.08)
 ;;0
 ;;9002226,808,.09)
 ;;3081120
 ;;9002226,808,.11)
 ;;@
 ;;9002226,808,.12)
 ;;455
 ;;9002226,808,.13)
 ;;1
 ;;9002226,808,.14)
 ;;@
 ;;9002226,808,.15)
 ;;81
 ;;9002226,808,.16)
 ;;@
 ;;9002226,808,.17)
 ;;@
 ;;9002226,808,3101)
 ;;@
 ;;9002226.02101,"808,51925 ",.01)
 ;;51925 
 ;;9002226.02101,"808,51925 ",.02)
 ;;51925 
 ;;9002226.02101,"808,56308 ",.01)
 ;;56308 
 ;;9002226.02101,"808,56308 ",.02)
 ;;56308 
 ;;9002226.02101,"808,58150 ",.01)
 ;;58150 
 ;;9002226.02101,"808,58150 ",.02)
 ;;58152 
 ;;9002226.02101,"808,58200 ",.01)
 ;;58200 
 ;;9002226.02101,"808,58200 ",.02)
 ;;58200 
 ;;9002226.02101,"808,58210 ",.01)
 ;;58210 
 ;;9002226.02101,"808,58210 ",.02)
 ;;58263 
 ;;9002226.02101,"808,58267 ",.01)
 ;;58267 
 ;;9002226.02101,"808,58267 ",.02)
 ;;58294 
 ;;9002226.02101,"808,58550 ",.01)
 ;;58550 
 ;;9002226.02101,"808,58550 ",.02)
 ;;58554 
 ;;9002226.02101,"808,58951 ",.01)
 ;;58951 
 ;;9002226.02101,"808,58951 ",.02)
 ;;58951 
 ;;9002226.02101,"808,58953 ",.01)
 ;;58953 
 ;;9002226.02101,"808,58953 ",.02)
 ;;58956 
 ;;9002226.02101,"808,59135 ",.01)
 ;;59135 
 ;;9002226.02101,"808,59135 ",.02)
 ;;59135 
 ;
OTHER ; OTHER ROUTINES
 Q
