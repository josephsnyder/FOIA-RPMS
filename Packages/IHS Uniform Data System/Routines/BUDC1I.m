BUDC1I ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 09, 2015; ; 25 Jan 2016  11:50 AM
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD DEPRESSION/BIPOLAR DXS
 ;
 ; This routine loads Taxonomy BUD DEPRESSION/BIPOLAR DXS
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
 ;;21,"290.13 ")
 ;;1
 ;;21,"290.21 ")
 ;;2
 ;;21,"290.43 ")
 ;;3
 ;;21,"296.00 ")
 ;;4
 ;;21,"296.20 ")
 ;;5
 ;;21,"296.40 ")
 ;;6
 ;;21,"296.50 ")
 ;;7
 ;;21,"296.60 ")
 ;;8
 ;;21,"296.7 ")
 ;;9
 ;;21,"296.80 ")
 ;;10
 ;;21,"296.82 ")
 ;;11
 ;;21,"296.89 ")
 ;;12
 ;;21,"298.0 ")
 ;;13
 ;;21,"300.4 ")
 ;;14
 ;;21,"301.12 ")
 ;;15
 ;;21,"309.0 ")
 ;;16
 ;;21,"309.28 ")
 ;;17
 ;;21,"311. ")
 ;;18
 ;;21,"F31.0 ")
 ;;19
 ;;21,"F34.1 ")
 ;;20
 ;;21,"F43.21 ")
 ;;21
 ;;9002226,2060,.01)
 ;;BUD DEPRESSION/BIPOLAR DXS
 ;;9002226,2060,.02)
 ;;@
 ;;9002226,2060,.04)
 ;;@
 ;;9002226,2060,.06)
 ;;@
 ;;9002226,2060,.08)
 ;;0
 ;;9002226,2060,.09)
 ;;3151209
 ;;9002226,2060,.11)
 ;;@
 ;;9002226,2060,.12)
 ;;31
 ;;9002226,2060,.13)
 ;;1
 ;;9002226,2060,.14)
 ;;@
 ;;9002226,2060,.15)
 ;;80
 ;;9002226,2060,.16)
 ;;@
 ;;9002226,2060,.17)
 ;;@
 ;;9002226,2060,3101)
 ;;@
 ;;9002226.02101,"2060,290.13 ",.01)
 ;;290.13 
 ;;9002226.02101,"2060,290.13 ",.02)
 ;;290.13 
 ;;9002226.02101,"2060,290.13 ",.03)
 ;;1
 ;;9002226.02101,"2060,290.21 ",.01)
 ;;290.21 
 ;;9002226.02101,"2060,290.21 ",.02)
 ;;290.21 
 ;;9002226.02101,"2060,290.21 ",.03)
 ;;1
 ;;9002226.02101,"2060,290.43 ",.01)
 ;;290.43 
 ;;9002226.02101,"2060,290.43 ",.02)
 ;;290.43 
 ;;9002226.02101,"2060,290.43 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.00 ",.01)
 ;;296.00 
 ;;9002226.02101,"2060,296.00 ",.02)
 ;;296.06 
 ;;9002226.02101,"2060,296.00 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.20 ",.01)
 ;;296.20 
 ;;9002226.02101,"2060,296.20 ",.02)
 ;;296.36 
 ;;9002226.02101,"2060,296.20 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.40 ",.01)
 ;;296.40 
 ;;9002226.02101,"2060,296.40 ",.02)
 ;;296.46 
 ;;9002226.02101,"2060,296.40 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.50 ",.01)
 ;;296.50 
 ;;9002226.02101,"2060,296.50 ",.02)
 ;;296.56 
 ;;9002226.02101,"2060,296.50 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.60 ",.01)
 ;;296.60 
 ;;9002226.02101,"2060,296.60 ",.02)
 ;;296.66 
 ;;9002226.02101,"2060,296.60 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.7 ",.01)
 ;;296.7 
 ;;9002226.02101,"2060,296.7 ",.02)
 ;;296.7 
 ;;9002226.02101,"2060,296.7 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.80 ",.01)
 ;;296.80 
 ;;9002226.02101,"2060,296.80 ",.02)
 ;;296.80 
 ;;9002226.02101,"2060,296.80 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.82 ",.01)
 ;;296.82 
 ;;9002226.02101,"2060,296.82 ",.02)
 ;;296.82 
 ;;9002226.02101,"2060,296.82 ",.03)
 ;;1
 ;;9002226.02101,"2060,296.89 ",.01)
 ;;296.89 
 ;;9002226.02101,"2060,296.89 ",.02)
 ;;296.89 
 ;;9002226.02101,"2060,296.89 ",.03)
 ;;1
 ;;9002226.02101,"2060,298.0 ",.01)
 ;;298.0 
 ;;9002226.02101,"2060,298.0 ",.02)
 ;;298.0 
 ;;9002226.02101,"2060,298.0 ",.03)
 ;;1
 ;;9002226.02101,"2060,300.4 ",.01)
 ;;300.4 
 ;;9002226.02101,"2060,300.4 ",.02)
 ;;300.4 
 ;;9002226.02101,"2060,300.4 ",.03)
 ;;1
 ;;9002226.02101,"2060,301.12 ",.01)
 ;;301.12 
 ;;9002226.02101,"2060,301.12 ",.02)
 ;;301.12 
 ;;9002226.02101,"2060,301.12 ",.03)
 ;;1
 ;;9002226.02101,"2060,309.0 ",.01)
 ;;309.0 
 ;;9002226.02101,"2060,309.0 ",.02)
 ;;309.1 
 ;;9002226.02101,"2060,309.0 ",.03)
 ;;1
 ;;9002226.02101,"2060,309.28 ",.01)
 ;;309.28 
 ;;9002226.02101,"2060,309.28 ",.02)
 ;;309.28 
 ;;9002226.02101,"2060,309.28 ",.03)
 ;;1
 ;;9002226.02101,"2060,311. ",.01)
 ;;311. 
 ;;9002226.02101,"2060,311. ",.02)
 ;;311. 
 ;;9002226.02101,"2060,311. ",.03)
 ;;1
 ;;9002226.02101,"2060,F31.0 ",.01)
 ;;F31.0 
 ;;9002226.02101,"2060,F31.0 ",.02)
 ;;F33.9 
 ;;9002226.02101,"2060,F31.0 ",.03)
 ;;30
 ;;9002226.02101,"2060,F34.1 ",.01)
 ;;F34.1 
 ;;9002226.02101,"2060,F34.1 ",.02)
 ;;F34.1 
 ;;9002226.02101,"2060,F34.1 ",.03)
 ;;30
 ;;9002226.02101,"2060,F43.21 ",.01)
 ;;F43.21 
 ;;9002226.02101,"2060,F43.21 ",.02)
 ;;F43.21 
 ;;9002226.02101,"2060,F43.21 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
