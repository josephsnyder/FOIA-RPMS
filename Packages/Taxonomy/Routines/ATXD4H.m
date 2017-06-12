ATXD4H ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI IHD DXS
 ;
 ; This routine loads Taxonomy BQI IHD DXS
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
 ;;21,"414.0 ")
 ;;3
 ;;21,"I20.0 ")
 ;;5
 ;;21,"I20.1 ")
 ;;10
 ;;21,"I20.8 ")
 ;;9
 ;;21,"I24.0 ")
 ;;6
 ;;21,"I24.1 ")
 ;;4
 ;;21,"I24.8 ")
 ;;7
 ;;21,"I24.9 ")
 ;;8
 ;;21,"I25.10 ")
 ;;35
 ;;21,"I25.110 ")
 ;;36
 ;;21,"I25.111 ")
 ;;11
 ;;21,"I25.118 ")
 ;;12
 ;;21,"I25.119 ")
 ;;13
 ;;21,"I25.3 ")
 ;;47
 ;;21,"I25.41 ")
 ;;48
 ;;21,"I25.42 ")
 ;;49
 ;;21,"I25.5 ")
 ;;53
 ;;21,"I25.6 ")
 ;;54
 ;;21,"I25.700 ")
 ;;41
 ;;21,"I25.701 ")
 ;;14
 ;;21,"I25.708 ")
 ;;15
 ;;21,"I25.709 ")
 ;;16
 ;;21,"I25.710 ")
 ;;37
 ;;21,"I25.711 ")
 ;;17
 ;;21,"I25.718 ")
 ;;18
 ;;21,"I25.719 ")
 ;;19
 ;;21,"I25.720 ")
 ;;39
 ;;21,"I25.721 ")
 ;;20
 ;;21,"I25.728 ")
 ;;21
 ;;21,"I25.729 ")
 ;;22
 ;;21,"I25.730 ")
 ;;38
 ;;21,"I25.731 ")
 ;;23
 ;;21,"I25.738 ")
 ;;24
 ;;21,"I25.739 ")
 ;;25
 ;;21,"I25.750 ")
 ;;43
 ;;21,"I25.751 ")
 ;;26
 ;;21,"I25.758 ")
 ;;27
 ;;21,"I25.759 ")
 ;;28
 ;;21,"I25.760 ")
 ;;45
 ;;21,"I25.761 ")
 ;;29
 ;;21,"I25.768 ")
 ;;30
 ;;21,"I25.769 ")
 ;;31
 ;;21,"I25.790 ")
 ;;40
 ;;21,"I25.791 ")
 ;;32
 ;;21,"I25.798 ")
 ;;33
 ;;21,"I25.799 ")
 ;;34
 ;;21,"I25.810 ")
 ;;42
 ;;21,"I25.811 ")
 ;;44
 ;;21,"I25.812 ")
 ;;46
 ;;21,"I25.82 ")
 ;;50
 ;;21,"I25.83 ")
 ;;51
 ;;21,"I25.84 ")
 ;;52
 ;;21,"I25.89 ")
 ;;55
 ;;21,"I25.9 ")
 ;;56
 ;;9002226,728,.01)
 ;;BQI IHD DXS
 ;;9002226,728,.02)
 ;;Ischemic Heart Disease Dxs
 ;;9002226,728,.04)
 ;;@
 ;;9002226,728,.06)
 ;;@
 ;;9002226,728,.08)
 ;;0
 ;;9002226,728,.09)
 ;;3131121
 ;;9002226,728,.11)
 ;;@
 ;;9002226,728,.12)
 ;;31
 ;;9002226,728,.13)
 ;;1
 ;;9002226,728,.14)
 ;;@
 ;;9002226,728,.15)
 ;;80
 ;;9002226,728,.16)
 ;;@
 ;;9002226,728,.17)
 ;;@
 ;;9002226,728,3101)
 ;;@
 ;;9002226.02101,"728,411.0 ",.01)
 ;;411.0
 ;;9002226.02101,"728,411.0 ",.02)
 ;;411.99
 ;;9002226.02101,"728,411.0 ",.03)
 ;;1
 ;;9002226.02101,"728,413.0 ",.01)
 ;;413.0
 ;;9002226.02101,"728,413.0 ",.02)
 ;;413.99
 ;;9002226.02101,"728,413.0 ",.03)
 ;;1
 ;;9002226.02101,"728,414.0 ",.01)
 ;;414.0
 ;;9002226.02101,"728,414.0 ",.02)
 ;;414.99
 ;;9002226.02101,"728,414.0 ",.03)
 ;;1
 ;;9002226.02101,"728,I20.0 ",.01)
 ;;I20.0 
 ;;9002226.02101,"728,I20.0 ",.02)
 ;;I20.0 
 ;;9002226.02101,"728,I20.0 ",.03)
 ;;30
 ;;9002226.02101,"728,I20.1 ",.01)
 ;;I20.1 
 ;;9002226.02101,"728,I20.1 ",.02)
 ;;I20.1 
 ;;9002226.02101,"728,I20.1 ",.03)
 ;;30
 ;;9002226.02101,"728,I20.8 ",.01)
 ;;I20.8 
 ;;9002226.02101,"728,I20.8 ",.02)
 ;;I20.8 
 ;;9002226.02101,"728,I20.8 ",.03)
 ;;30
 ;;9002226.02101,"728,I24.0 ",.01)
 ;;I24.0 
 ;;9002226.02101,"728,I24.0 ",.02)
 ;;I24.0 
 ;;9002226.02101,"728,I24.0 ",.03)
 ;;30
 ;;9002226.02101,"728,I24.1 ",.01)
 ;;I24.1 
 ;;9002226.02101,"728,I24.1 ",.02)
 ;;I24.1 
 ;;9002226.02101,"728,I24.1 ",.03)
 ;;30
 ;;9002226.02101,"728,I24.8 ",.01)
 ;;I24.8 
 ;;9002226.02101,"728,I24.8 ",.02)
 ;;I24.8 
 ;;9002226.02101,"728,I24.8 ",.03)
 ;;30
 ;;9002226.02101,"728,I24.9 ",.01)
 ;;I24.9 
 ;;9002226.02101,"728,I24.9 ",.02)
 ;;I24.9 
 ;;9002226.02101,"728,I24.9 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.10 ",.01)
 ;;I25.10 
 ;;9002226.02101,"728,I25.10 ",.02)
 ;;I25.10 
 ;;9002226.02101,"728,I25.10 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.110 ",.01)
 ;;I25.110 
 ;;9002226.02101,"728,I25.110 ",.02)
 ;;I25.110 
 ;;9002226.02101,"728,I25.110 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.111 ",.01)
 ;;I25.111 
 ;;9002226.02101,"728,I25.111 ",.02)
 ;;I25.111 
 ;;9002226.02101,"728,I25.111 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.118 ",.01)
 ;;I25.118 
 ;;9002226.02101,"728,I25.118 ",.02)
 ;;I25.118 
 ;;9002226.02101,"728,I25.118 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.119 ",.01)
 ;;I25.119 
 ;;9002226.02101,"728,I25.119 ",.02)
 ;;I25.119 
 ;;9002226.02101,"728,I25.119 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.3 ",.01)
 ;;I25.3 
 ;;9002226.02101,"728,I25.3 ",.02)
 ;;I25.3 
 ;;9002226.02101,"728,I25.3 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.41 ",.01)
 ;;I25.41 
 ;;9002226.02101,"728,I25.41 ",.02)
 ;;I25.41 
 ;;9002226.02101,"728,I25.41 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.42 ",.01)
 ;;I25.42 
 ;;9002226.02101,"728,I25.42 ",.02)
 ;;I25.42 
 ;;9002226.02101,"728,I25.42 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.5 ",.01)
 ;;I25.5 
 ;;9002226.02101,"728,I25.5 ",.02)
 ;;I25.5 
 ;;9002226.02101,"728,I25.5 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.6 ",.01)
 ;;I25.6 
 ;;9002226.02101,"728,I25.6 ",.02)
 ;;I25.6 
 ;;9002226.02101,"728,I25.6 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.700 ",.01)
 ;;I25.700 
 ;;9002226.02101,"728,I25.700 ",.02)
 ;;I25.700 
 ;;9002226.02101,"728,I25.700 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.701 ",.01)
 ;;I25.701 
 ;;9002226.02101,"728,I25.701 ",.02)
 ;;I25.701 
 ;;9002226.02101,"728,I25.701 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.708 ",.01)
 ;;I25.708 
 ;;9002226.02101,"728,I25.708 ",.02)
 ;;I25.708 
 ;;9002226.02101,"728,I25.708 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.709 ",.01)
 ;;I25.709 
 ;;9002226.02101,"728,I25.709 ",.02)
 ;;I25.709 
 ;;9002226.02101,"728,I25.709 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.710 ",.01)
 ;;I25.710 
 ;;9002226.02101,"728,I25.710 ",.02)
 ;;I25.710 
 ;;9002226.02101,"728,I25.710 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.711 ",.01)
 ;;I25.711 
 ;;9002226.02101,"728,I25.711 ",.02)
 ;;I25.711 
 ;;9002226.02101,"728,I25.711 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.718 ",.01)
 ;;I25.718 
 ;;9002226.02101,"728,I25.718 ",.02)
 ;;I25.718 
 ;;9002226.02101,"728,I25.718 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.719 ",.01)
 ;;I25.719 
 ;;9002226.02101,"728,I25.719 ",.02)
 ;;I25.719 
 ;;9002226.02101,"728,I25.719 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.720 ",.01)
 ;;I25.720 
 ;;9002226.02101,"728,I25.720 ",.02)
 ;;I25.720 
 ;;9002226.02101,"728,I25.720 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.721 ",.01)
 ;;I25.721 
 ;;9002226.02101,"728,I25.721 ",.02)
 ;;I25.721 
 ;;9002226.02101,"728,I25.721 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.728 ",.01)
 ;;I25.728 
 ;;9002226.02101,"728,I25.728 ",.02)
 ;;I25.728 
 ;;9002226.02101,"728,I25.728 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.729 ",.01)
 ;;I25.729 
 ;;9002226.02101,"728,I25.729 ",.02)
 ;;I25.729 
 ;;9002226.02101,"728,I25.729 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.730 ",.01)
 ;;I25.730 
 ;;9002226.02101,"728,I25.730 ",.02)
 ;;I25.730 
 ;;9002226.02101,"728,I25.730 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.731 ",.01)
 ;;I25.731 
 ;;9002226.02101,"728,I25.731 ",.02)
 ;;I25.731 
 ;;9002226.02101,"728,I25.731 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.738 ",.01)
 ;;I25.738 
 ;;9002226.02101,"728,I25.738 ",.02)
 ;;I25.738 
 ;;9002226.02101,"728,I25.738 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.739 ",.01)
 ;;I25.739 
 ;;9002226.02101,"728,I25.739 ",.02)
 ;;I25.739 
 ;;9002226.02101,"728,I25.739 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.750 ",.01)
 ;;I25.750 
 ;;9002226.02101,"728,I25.750 ",.02)
 ;;I25.750 
 ;;9002226.02101,"728,I25.750 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.751 ",.01)
 ;;I25.751 
 ;;9002226.02101,"728,I25.751 ",.02)
 ;;I25.751 
 ;;9002226.02101,"728,I25.751 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.758 ",.01)
 ;;I25.758 
 ;;9002226.02101,"728,I25.758 ",.02)
 ;;I25.758 
 ;;9002226.02101,"728,I25.758 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.759 ",.01)
 ;;I25.759 
 ;;9002226.02101,"728,I25.759 ",.02)
 ;;I25.759 
 ;;9002226.02101,"728,I25.759 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.760 ",.01)
 ;;I25.760 
 ;;9002226.02101,"728,I25.760 ",.02)
 ;;I25.760 
 ;;9002226.02101,"728,I25.760 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.761 ",.01)
 ;;I25.761 
 ;;9002226.02101,"728,I25.761 ",.02)
 ;;I25.761 
 ;;9002226.02101,"728,I25.761 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.768 ",.01)
 ;;I25.768 
 ;;9002226.02101,"728,I25.768 ",.02)
 ;;I25.768 
 ;;9002226.02101,"728,I25.768 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.769 ",.01)
 ;;I25.769 
 ;;9002226.02101,"728,I25.769 ",.02)
 ;;I25.769 
 ;;9002226.02101,"728,I25.769 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.790 ",.01)
 ;;I25.790 
 ;;9002226.02101,"728,I25.790 ",.02)
 ;;I25.790 
 ;;9002226.02101,"728,I25.790 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.791 ",.01)
 ;;I25.791 
 ;;9002226.02101,"728,I25.791 ",.02)
 ;;I25.791 
 ;;9002226.02101,"728,I25.791 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.798 ",.01)
 ;;I25.798 
 ;;9002226.02101,"728,I25.798 ",.02)
 ;;I25.798 
 ;;9002226.02101,"728,I25.798 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.799 ",.01)
 ;;I25.799 
 ;;9002226.02101,"728,I25.799 ",.02)
 ;;I25.799 
 ;;9002226.02101,"728,I25.799 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.810 ",.01)
 ;;I25.810 
 ;;9002226.02101,"728,I25.810 ",.02)
 ;;I25.810 
 ;;9002226.02101,"728,I25.810 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.811 ",.01)
 ;;I25.811 
 ;;9002226.02101,"728,I25.811 ",.02)
 ;;I25.811 
 ;;9002226.02101,"728,I25.811 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.812 ",.01)
 ;;I25.812 
 ;;9002226.02101,"728,I25.812 ",.02)
 ;;I25.812 
 ;;9002226.02101,"728,I25.812 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.82 ",.01)
 ;;I25.82 
 ;;9002226.02101,"728,I25.82 ",.02)
 ;;I25.82 
 ;;9002226.02101,"728,I25.82 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.83 ",.01)
 ;;I25.83 
 ;;9002226.02101,"728,I25.83 ",.02)
 ;;I25.83 
 ;;9002226.02101,"728,I25.83 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.84 ",.01)
 ;;I25.84 
 ;;9002226.02101,"728,I25.84 ",.02)
 ;;I25.84 
 ;;9002226.02101,"728,I25.84 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.89 ",.01)
 ;;I25.89 
 ;;9002226.02101,"728,I25.89 ",.02)
 ;;I25.89 
 ;;9002226.02101,"728,I25.89 ",.03)
 ;;30
 ;;9002226.02101,"728,I25.9 ",.01)
 ;;I25.9 
 ;;9002226.02101,"728,I25.9 ",.02)
 ;;I25.9 
 ;;9002226.02101,"728,I25.9 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
