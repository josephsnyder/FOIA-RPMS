BUD2ZL ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD IVD DXS
 ;
 ; This routine loads Taxonomy BUD IVD DXS
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
 ;;21,"411.0 ")
 ;;1
 ;;21,"413.0 ")
 ;;2
 ;;21,"414.8 ")
 ;;3
 ;;21,"429.2 ")
 ;;4
 ;;21,"433.0 ")
 ;;5
 ;;21,"433.10 ")
 ;;6
 ;;21,"433.20 ")
 ;;7
 ;;21,"434.10 ")
 ;;8
 ;;21,"434.90 ")
 ;;9
 ;;21,"440.1 ")
 ;;10
 ;;21,"440.20 ")
 ;;11
 ;;21,"440.4 ")
 ;;12
 ;;21,"444.0 ")
 ;;13
 ;;21,"444.1 ")
 ;;14
 ;;9002226,1762,.01)
 ;;BUD IVD DXS
 ;;9002226,1762,.02)
 ;;@
 ;;9002226,1762,.04)
 ;;@
 ;;9002226,1762,.06)
 ;;@
 ;;9002226,1762,.08)
 ;;0
 ;;9002226,1762,.09)
 ;;3121116
 ;;9002226,1762,.11)
 ;;@
 ;;9002226,1762,.12)
 ;;31
 ;;9002226,1762,.13)
 ;;1
 ;;9002226,1762,.14)
 ;;@
 ;;9002226,1762,.15)
 ;;80
 ;;9002226,1762,.16)
 ;;@
 ;;9002226,1762,.17)
 ;;@
 ;;9002226,1762,3101)
 ;;@
 ;;9002226.02101,"1762,411.0 ",.01)
 ;;411.0 
 ;;9002226.02101,"1762,411.0 ",.02)
 ;;411.89 
 ;;9002226.02101,"1762,413.0 ",.01)
 ;;413.0 
 ;;9002226.02101,"1762,413.0 ",.02)
 ;;414.07 
 ;;9002226.02101,"1762,414.8 ",.01)
 ;;414.8 
 ;;9002226.02101,"1762,414.8 ",.02)
 ;;414.9 
 ;;9002226.02101,"1762,429.2 ",.01)
 ;;429.2 
 ;;9002226.02101,"1762,429.2 ",.02)
 ;;429.2 
 ;;9002226.02101,"1762,433.0 ",.01)
 ;;433.0 
 ;;9002226.02101,"1762,433.0 ",.02)
 ;;433.01 
 ;;9002226.02101,"1762,433.10 ",.01)
 ;;433.10 
 ;;9002226.02101,"1762,433.10 ",.02)
 ;;433.11 
 ;;9002226.02101,"1762,433.20 ",.01)
 ;;433.20 
 ;;9002226.02101,"1762,433.20 ",.02)
 ;;434.01 
 ;;9002226.02101,"1762,434.10 ",.01)
 ;;434.10 
 ;;9002226.02101,"1762,434.10 ",.02)
 ;;434.11 
 ;;9002226.02101,"1762,434.90 ",.01)
 ;;434.90 
 ;;9002226.02101,"1762,434.90 ",.02)
 ;;434.91 
 ;;9002226.02101,"1762,440.1 ",.01)
 ;;440.1 
 ;;9002226.02101,"1762,440.1 ",.02)
 ;;440.1 
 ;;9002226.02101,"1762,440.20 ",.01)
 ;;440.20 
 ;;9002226.02101,"1762,440.20 ",.02)
 ;;440.29 
 ;;9002226.02101,"1762,440.4 ",.01)
 ;;440.4 
 ;;9002226.02101,"1762,440.4 ",.02)
 ;;440.4 
 ;;9002226.02101,"1762,444.0 ",.01)
 ;;444.0 
 ;;9002226.02101,"1762,444.0 ",.02)
 ;;444.0 
 ;;9002226.02101,"1762,444.1 ",.01)
 ;;444.1 
 ;;9002226.02101,"1762,444.1 ",.02)
 ;;445.81 
 ;
OTHER ; OTHER ROUTINES
 Q
