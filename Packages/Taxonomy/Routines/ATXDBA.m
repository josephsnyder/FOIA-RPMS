ATXDBA ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BKM ANXIETY DXS
 ;
 ; This routine loads Taxonomy BKM ANXIETY DXS
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
 ;;21,"291.89 ")
 ;;1
 ;;21,"292.89 ")
 ;;2
 ;;21,"293.84 ")
 ;;3
 ;;21,"300.00 ")
 ;;8
 ;;21,"300.01 ")
 ;;4
 ;;21,"300.02 ")
 ;;5
 ;;21,"300.20 ")
 ;;9
 ;;21,"308.0 ")
 ;;10
 ;;21,"309.21 ")
 ;;6
 ;;21,"309.24 ")
 ;;7
 ;;21,"F06.4 ")
 ;;11
 ;;21,"F10.180 ")
 ;;12
 ;;21,"F10.280 ")
 ;;13
 ;;21,"F10.980 ")
 ;;14
 ;;21,"F12.180 ")
 ;;15
 ;;21,"F12.280 ")
 ;;16
 ;;21,"F12.980 ")
 ;;17
 ;;21,"F13.180 ")
 ;;18
 ;;21,"F13.280 ")
 ;;19
 ;;21,"F13.980 ")
 ;;20
 ;;21,"F14.180 ")
 ;;21
 ;;21,"F14.280 ")
 ;;22
 ;;21,"F14.980 ")
 ;;23
 ;;21,"F15.180 ")
 ;;24
 ;;21,"F15.280 ")
 ;;25
 ;;21,"F15.980 ")
 ;;26
 ;;21,"F16.180 ")
 ;;27
 ;;21,"F16.280 ")
 ;;28
 ;;21,"F16.980 ")
 ;;29
 ;;21,"F18.180 ")
 ;;30
 ;;21,"F18.280 ")
 ;;31
 ;;21,"F18.980 ")
 ;;32
 ;;21,"F19.180 ")
 ;;33
 ;;21,"F19.280 ")
 ;;34
 ;;21,"F19.980 ")
 ;;35
 ;;21,"F41.0 ")
 ;;36
 ;;21,"F41.1 ")
 ;;37
 ;;21,"F41.9 ")
 ;;38
 ;;21,"F43.0 ")
 ;;39
 ;;9002226,1459,.01)
 ;;BKM ANXIETY DXS
 ;;9002226,1459,.02)
 ;;BKM ANXIETY DXS
 ;;9002226,1459,.04)
 ;;n
 ;;9002226,1459,.06)
 ;;@
 ;;9002226,1459,.08)
 ;;0
 ;;9002226,1459,.09)
 ;;3140316
 ;;9002226,1459,.11)
 ;;@
 ;;9002226,1459,.12)
 ;;31
 ;;9002226,1459,.13)
 ;;1
 ;;9002226,1459,.14)
 ;;@
 ;;9002226,1459,.15)
 ;;80
 ;;9002226,1459,.16)
 ;;@
 ;;9002226,1459,.17)
 ;;@
 ;;9002226,1459,3101)
 ;;@
 ;;9002226.02101,"1459,291.89 ",.01)
 ;;291.89 
 ;;9002226.02101,"1459,291.89 ",.02)
 ;;291.89 
 ;;9002226.02101,"1459,291.89 ",.03)
 ;;1
 ;;9002226.02101,"1459,292.89 ",.01)
 ;;292.89 
 ;;9002226.02101,"1459,292.89 ",.02)
 ;;292.89 
 ;;9002226.02101,"1459,292.89 ",.03)
 ;;1
 ;;9002226.02101,"1459,293.84 ",.01)
 ;;293.84 
 ;;9002226.02101,"1459,293.84 ",.02)
 ;;293.84 
 ;;9002226.02101,"1459,293.84 ",.03)
 ;;1
 ;;9002226.02101,"1459,300.00 ",.01)
 ;;300.00 
 ;;9002226.02101,"1459,300.00 ",.02)
 ;;300.00 
 ;;9002226.02101,"1459,300.00 ",.03)
 ;;1
 ;;9002226.02101,"1459,300.01 ",.01)
 ;;300.01 
 ;;9002226.02101,"1459,300.01 ",.02)
 ;;300.01 
 ;;9002226.02101,"1459,300.01 ",.03)
 ;;1
 ;;9002226.02101,"1459,300.02 ",.01)
 ;;300.02 
 ;;9002226.02101,"1459,300.02 ",.02)
 ;;300.02 
 ;;9002226.02101,"1459,300.02 ",.03)
 ;;1
 ;;9002226.02101,"1459,300.20 ",.01)
 ;;300.20 
 ;;9002226.02101,"1459,300.20 ",.02)
 ;;300.20 
 ;;9002226.02101,"1459,300.20 ",.03)
 ;;1
 ;;9002226.02101,"1459,308.0 ",.01)
 ;;308.0 
 ;;9002226.02101,"1459,308.0 ",.02)
 ;;308.0 
 ;;9002226.02101,"1459,308.0 ",.03)
 ;;1
 ;;9002226.02101,"1459,309.21 ",.01)
 ;;309.21 
 ;;9002226.02101,"1459,309.21 ",.02)
 ;;309.21 
 ;;9002226.02101,"1459,309.21 ",.03)
 ;;1
 ;;9002226.02101,"1459,309.24 ",.01)
 ;;309.24 
 ;;9002226.02101,"1459,309.24 ",.02)
 ;;309.24 
 ;;9002226.02101,"1459,309.24 ",.03)
 ;;1
 ;;9002226.02101,"1459,F06.4 ",.01)
 ;;F06.4 
 ;;9002226.02101,"1459,F06.4 ",.02)
 ;;F06.4 
 ;;9002226.02101,"1459,F06.4 ",.03)
 ;;30
 ;;9002226.02101,"1459,F10.180 ",.01)
 ;;F10.180 
 ;;9002226.02101,"1459,F10.180 ",.02)
 ;;F10.180 
 ;;9002226.02101,"1459,F10.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F10.280 ",.01)
 ;;F10.280 
 ;;9002226.02101,"1459,F10.280 ",.02)
 ;;F10.280 
 ;;9002226.02101,"1459,F10.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F10.980 ",.01)
 ;;F10.980 
 ;;9002226.02101,"1459,F10.980 ",.02)
 ;;F10.980 
 ;;9002226.02101,"1459,F10.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F12.180 ",.01)
 ;;F12.180 
 ;;9002226.02101,"1459,F12.180 ",.02)
 ;;F12.180 
 ;;9002226.02101,"1459,F12.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F12.280 ",.01)
 ;;F12.280 
 ;;9002226.02101,"1459,F12.280 ",.02)
 ;;F12.280 
 ;;9002226.02101,"1459,F12.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F12.980 ",.01)
 ;;F12.980 
 ;;9002226.02101,"1459,F12.980 ",.02)
 ;;F12.980 
 ;;9002226.02101,"1459,F12.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F13.180 ",.01)
 ;;F13.180 
 ;;9002226.02101,"1459,F13.180 ",.02)
 ;;F13.180 
 ;;9002226.02101,"1459,F13.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F13.280 ",.01)
 ;;F13.280 
 ;;9002226.02101,"1459,F13.280 ",.02)
 ;;F13.280 
 ;;9002226.02101,"1459,F13.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F13.980 ",.01)
 ;;F13.980 
 ;;9002226.02101,"1459,F13.980 ",.02)
 ;;F13.980 
 ;;9002226.02101,"1459,F13.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F14.180 ",.01)
 ;;F14.180 
 ;;9002226.02101,"1459,F14.180 ",.02)
 ;;F14.180 
 ;;9002226.02101,"1459,F14.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F14.280 ",.01)
 ;;F14.280 
 ;;9002226.02101,"1459,F14.280 ",.02)
 ;;F14.280 
 ;;9002226.02101,"1459,F14.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F14.980 ",.01)
 ;;F14.980 
 ;;9002226.02101,"1459,F14.980 ",.02)
 ;;F14.980 
 ;;9002226.02101,"1459,F14.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F15.180 ",.01)
 ;;F15.180 
 ;;9002226.02101,"1459,F15.180 ",.02)
 ;;F15.180 
 ;;9002226.02101,"1459,F15.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F15.280 ",.01)
 ;;F15.280 
 ;;9002226.02101,"1459,F15.280 ",.02)
 ;;F15.280 
 ;;9002226.02101,"1459,F15.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F15.980 ",.01)
 ;;F15.980 
 ;;9002226.02101,"1459,F15.980 ",.02)
 ;;F15.980 
 ;;9002226.02101,"1459,F15.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F16.180 ",.01)
 ;;F16.180 
 ;;9002226.02101,"1459,F16.180 ",.02)
 ;;F16.180 
 ;;9002226.02101,"1459,F16.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F16.280 ",.01)
 ;;F16.280 
 ;;9002226.02101,"1459,F16.280 ",.02)
 ;;F16.280 
 ;;9002226.02101,"1459,F16.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F16.980 ",.01)
 ;;F16.980 
 ;;9002226.02101,"1459,F16.980 ",.02)
 ;;F16.980 
 ;;9002226.02101,"1459,F16.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F18.180 ",.01)
 ;;F18.180 
 ;;9002226.02101,"1459,F18.180 ",.02)
 ;;F18.180 
 ;;9002226.02101,"1459,F18.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F18.280 ",.01)
 ;;F18.280 
 ;;9002226.02101,"1459,F18.280 ",.02)
 ;;F18.280 
 ;;9002226.02101,"1459,F18.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F18.980 ",.01)
 ;;F18.980 
 ;;9002226.02101,"1459,F18.980 ",.02)
 ;;F18.980 
 ;;9002226.02101,"1459,F18.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F19.180 ",.01)
 ;;F19.180 
 ;;9002226.02101,"1459,F19.180 ",.02)
 ;;F19.180 
 ;;9002226.02101,"1459,F19.180 ",.03)
 ;;30
 ;;9002226.02101,"1459,F19.280 ",.01)
 ;;F19.280 
 ;;9002226.02101,"1459,F19.280 ",.02)
 ;;F19.280 
 ;;9002226.02101,"1459,F19.280 ",.03)
 ;;30
 ;;9002226.02101,"1459,F19.980 ",.01)
 ;;F19.980 
 ;;9002226.02101,"1459,F19.980 ",.02)
 ;;F19.980 
 ;;9002226.02101,"1459,F19.980 ",.03)
 ;;30
 ;;9002226.02101,"1459,F41.0 ",.01)
 ;;F41.0 
 ;;9002226.02101,"1459,F41.0 ",.02)
 ;;F41.0 
 ;;9002226.02101,"1459,F41.0 ",.03)
 ;;30
 ;;9002226.02101,"1459,F41.1 ",.01)
 ;;F41.1 
 ;;9002226.02101,"1459,F41.1 ",.02)
 ;;F41.1 
 ;;9002226.02101,"1459,F41.1 ",.03)
 ;;30
 ;;9002226.02101,"1459,F41.9 ",.01)
 ;;F41.9 
 ;;9002226.02101,"1459,F41.9 ",.02)
 ;;F41.9 
 ;;9002226.02101,"1459,F41.9 ",.03)
 ;;30
 ;;9002226.02101,"1459,F43.0 ",.01)
 ;;F43.0 
 ;;9002226.02101,"1459,F43.0 ",.02)
 ;;F43.0 
 ;;9002226.02101,"1459,F43.0 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
