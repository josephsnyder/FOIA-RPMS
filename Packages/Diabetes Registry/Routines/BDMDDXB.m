BDMDDXB ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 09, 2015;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**9**;JUN 14, 2007;Build 78
 ;;DM AUDIT TUBERCULOSIS DXS
 ;
 ; This routine loads Taxonomy DM AUDIT TUBERCULOSIS DXS
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
 ;;21,"010.00 ")
 ;;1
 ;;21,"137.0 ")
 ;;2
 ;;21,"A15.0 ")
 ;;4
 ;;21,"A15.4 ")
 ;;5
 ;;21,"A15.5 ")
 ;;6
 ;;21,"A15.6 ")
 ;;7
 ;;21,"A15.7 ")
 ;;8
 ;;21,"A15.8 ")
 ;;9
 ;;21,"A15.9 ")
 ;;10
 ;;21,"A17.0 ")
 ;;11
 ;;21,"A17.1 ")
 ;;12
 ;;21,"A17.81 ")
 ;;13
 ;;21,"A17.82 ")
 ;;14
 ;;21,"A17.83 ")
 ;;15
 ;;21,"A17.89 ")
 ;;16
 ;;21,"A17.9 ")
 ;;17
 ;;21,"A18.01 ")
 ;;18
 ;;21,"A18.02 ")
 ;;19
 ;;21,"A18.03 ")
 ;;20
 ;;21,"A18.09 ")
 ;;21
 ;;21,"A18.10 ")
 ;;22
 ;;21,"A18.11 ")
 ;;23
 ;;21,"A18.12 ")
 ;;24
 ;;21,"A18.13 ")
 ;;25
 ;;21,"A18.14 ")
 ;;26
 ;;21,"A18.15 ")
 ;;27
 ;;21,"A18.16 ")
 ;;28
 ;;21,"A18.17 ")
 ;;29
 ;;21,"A18.18 ")
 ;;30
 ;;21,"A18.2 ")
 ;;31
 ;;21,"A18.31 ")
 ;;32
 ;;21,"A18.32 ")
 ;;33
 ;;21,"A18.39 ")
 ;;34
 ;;21,"A18.4 ")
 ;;35
 ;;21,"A18.50 ")
 ;;36
 ;;21,"A18.51 ")
 ;;37
 ;;21,"A18.52 ")
 ;;38
 ;;21,"A18.53 ")
 ;;39
 ;;21,"A18.54 ")
 ;;40
 ;;21,"A18.59 ")
 ;;41
 ;;21,"A18.6 ")
 ;;42
 ;;21,"A18.7 ")
 ;;43
 ;;21,"A18.81 ")
 ;;44
 ;;21,"A18.82 ")
 ;;45
 ;;21,"A18.83 ")
 ;;46
 ;;21,"A18.84 ")
 ;;47
 ;;21,"A18.85 ")
 ;;48
 ;;21,"A18.89 ")
 ;;49
 ;;21,"A19.0 ")
 ;;50
 ;;21,"A19.1 ")
 ;;51
 ;;21,"A19.2 ")
 ;;52
 ;;21,"A19.8 ")
 ;;53
 ;;21,"A19.9 ")
 ;;54
 ;;21,"B90.0 ")
 ;;55
 ;;21,"B90.1 ")
 ;;56
 ;;21,"B90.2 ")
 ;;57
 ;;21,"B90.8 ")
 ;;58
 ;;21,"B90.9 ")
 ;;59
 ;;21,"R76.11 ")
 ;;60
 ;;21,"V12.01 ")
 ;;61
 ;;21,"Z86.11 ")
 ;;62
 ;;9002226,2082,.01)
 ;;DM AUDIT TUBERCULOSIS DXS
 ;;9002226,2082,.02)
 ;;USED BY HLTH. SUM. SURV.
 ;;9002226,2082,.04)
 ;;n
 ;;9002226,2082,.06)
 ;;2600101
 ;;9002226,2082,.08)
 ;;1
 ;;9002226,2082,.09)
 ;;3131114
 ;;9002226,2082,.11)
 ;;@
 ;;9002226,2082,.12)
 ;;31
 ;;9002226,2082,.13)
 ;;1
 ;;9002226,2082,.14)
 ;;BA
 ;;9002226,2082,.15)
 ;;80
 ;;9002226,2082,.16)
 ;;1
 ;;9002226,2082,.17)
 ;;@
 ;;9002226,2082,3101)
 ;;@
 ;;9002226.01101,"2082,1",.01)
 ;;ICD codes:  010.0-018.96, late effects 137.0-137.4; Positive PPD, Tine or Monovac - 795.5
 ;;9002226.02101,"2082,010.00 ",.01)
 ;;010.00 
 ;;9002226.02101,"2082,010.00 ",.02)
 ;;018.96 
 ;;9002226.02101,"2082,010.00 ",.03)
 ;;1
 ;;9002226.02101,"2082,137.0 ",.01)
 ;;137.0 
 ;;9002226.02101,"2082,137.0 ",.02)
 ;;137.4 
 ;;9002226.02101,"2082,137.0 ",.03)
 ;;1
 ;;9002226.02101,"2082,A15.0 ",.01)
 ;;A15.0 
 ;;9002226.02101,"2082,A15.0 ",.02)
 ;;A15.0 
 ;;9002226.02101,"2082,A15.0 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.4 ",.01)
 ;;A15.4 
 ;;9002226.02101,"2082,A15.4 ",.02)
 ;;A15.4 
 ;;9002226.02101,"2082,A15.4 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.5 ",.01)
 ;;A15.5 
 ;;9002226.02101,"2082,A15.5 ",.02)
 ;;A15.5 
 ;;9002226.02101,"2082,A15.5 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.6 ",.01)
 ;;A15.6 
 ;;9002226.02101,"2082,A15.6 ",.02)
 ;;A15.6 
 ;;9002226.02101,"2082,A15.6 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.7 ",.01)
 ;;A15.7 
 ;;9002226.02101,"2082,A15.7 ",.02)
 ;;A15.7 
 ;;9002226.02101,"2082,A15.7 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.8 ",.01)
 ;;A15.8 
 ;;9002226.02101,"2082,A15.8 ",.02)
 ;;A15.8 
 ;;9002226.02101,"2082,A15.8 ",.03)
 ;;30
 ;;9002226.02101,"2082,A15.9 ",.01)
 ;;A15.9 
 ;;9002226.02101,"2082,A15.9 ",.02)
 ;;A15.9 
 ;;9002226.02101,"2082,A15.9 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.0 ",.01)
 ;;A17.0 
 ;;9002226.02101,"2082,A17.0 ",.02)
 ;;A17.0 
 ;;9002226.02101,"2082,A17.0 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.1 ",.01)
 ;;A17.1 
 ;;9002226.02101,"2082,A17.1 ",.02)
 ;;A17.1 
 ;;9002226.02101,"2082,A17.1 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.81 ",.01)
 ;;A17.81 
 ;;9002226.02101,"2082,A17.81 ",.02)
 ;;A17.81 
 ;;9002226.02101,"2082,A17.81 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.82 ",.01)
 ;;A17.82 
 ;;9002226.02101,"2082,A17.82 ",.02)
 ;;A17.82 
 ;;9002226.02101,"2082,A17.82 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.83 ",.01)
 ;;A17.83 
 ;;9002226.02101,"2082,A17.83 ",.02)
 ;;A17.83 
 ;;9002226.02101,"2082,A17.83 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.89 ",.01)
 ;;A17.89 
 ;;9002226.02101,"2082,A17.89 ",.02)
 ;;A17.89 
 ;;9002226.02101,"2082,A17.89 ",.03)
 ;;30
 ;;9002226.02101,"2082,A17.9 ",.01)
 ;;A17.9 
 ;;9002226.02101,"2082,A17.9 ",.02)
 ;;A17.9 
 ;;9002226.02101,"2082,A17.9 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.01 ",.01)
 ;;A18.01 
 ;;9002226.02101,"2082,A18.01 ",.02)
 ;;A18.01 
 ;;9002226.02101,"2082,A18.01 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.02 ",.01)
 ;;A18.02 
 ;;9002226.02101,"2082,A18.02 ",.02)
 ;;A18.02 
 ;;9002226.02101,"2082,A18.02 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.03 ",.01)
 ;;A18.03 
 ;;9002226.02101,"2082,A18.03 ",.02)
 ;;A18.03 
 ;;9002226.02101,"2082,A18.03 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.09 ",.01)
 ;;A18.09 
 ;;9002226.02101,"2082,A18.09 ",.02)
 ;;A18.09 
 ;;9002226.02101,"2082,A18.09 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.10 ",.01)
 ;;A18.10 
 ;;9002226.02101,"2082,A18.10 ",.02)
 ;;A18.10 
 ;;9002226.02101,"2082,A18.10 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.11 ",.01)
 ;;A18.11 
 ;;9002226.02101,"2082,A18.11 ",.02)
 ;;A18.11 
 ;;9002226.02101,"2082,A18.11 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.12 ",.01)
 ;;A18.12 
 ;;9002226.02101,"2082,A18.12 ",.02)
 ;;A18.12 
 ;;9002226.02101,"2082,A18.12 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.13 ",.01)
 ;;A18.13 
 ;;9002226.02101,"2082,A18.13 ",.02)
 ;;A18.13 
 ;;9002226.02101,"2082,A18.13 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.14 ",.01)
 ;;A18.14 
 ;;9002226.02101,"2082,A18.14 ",.02)
 ;;A18.14 
 ;;9002226.02101,"2082,A18.14 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.15 ",.01)
 ;;A18.15 
 ;;9002226.02101,"2082,A18.15 ",.02)
 ;;A18.15 
 ;;9002226.02101,"2082,A18.15 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.16 ",.01)
 ;;A18.16 
 ;;9002226.02101,"2082,A18.16 ",.02)
 ;;A18.16 
 ;;9002226.02101,"2082,A18.16 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.17 ",.01)
 ;;A18.17 
 ;;9002226.02101,"2082,A18.17 ",.02)
 ;;A18.17 
 ;;9002226.02101,"2082,A18.17 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.18 ",.01)
 ;;A18.18 
 ;;9002226.02101,"2082,A18.18 ",.02)
 ;;A18.18 
 ;;9002226.02101,"2082,A18.18 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.2 ",.01)
 ;;A18.2 
 ;;9002226.02101,"2082,A18.2 ",.02)
 ;;A18.2 
 ;;9002226.02101,"2082,A18.2 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.31 ",.01)
 ;;A18.31 
 ;;9002226.02101,"2082,A18.31 ",.02)
 ;;A18.31 
 ;;9002226.02101,"2082,A18.31 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.32 ",.01)
 ;;A18.32 
 ;;9002226.02101,"2082,A18.32 ",.02)
 ;;A18.32 
 ;;9002226.02101,"2082,A18.32 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.39 ",.01)
 ;;A18.39 
 ;;9002226.02101,"2082,A18.39 ",.02)
 ;;A18.39 
 ;;9002226.02101,"2082,A18.39 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.4 ",.01)
 ;;A18.4 
 ;;9002226.02101,"2082,A18.4 ",.02)
 ;;A18.4 
 ;;9002226.02101,"2082,A18.4 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.50 ",.01)
 ;;A18.50 
 ;;9002226.02101,"2082,A18.50 ",.02)
 ;;A18.50 
 ;;9002226.02101,"2082,A18.50 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.51 ",.01)
 ;;A18.51 
 ;;9002226.02101,"2082,A18.51 ",.02)
 ;;A18.51 
 ;;9002226.02101,"2082,A18.51 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.52 ",.01)
 ;;A18.52 
 ;;9002226.02101,"2082,A18.52 ",.02)
 ;;A18.52 
 ;;9002226.02101,"2082,A18.52 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.53 ",.01)
 ;;A18.53 
 ;;9002226.02101,"2082,A18.53 ",.02)
 ;;A18.53 
 ;;9002226.02101,"2082,A18.53 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.54 ",.01)
 ;;A18.54 
 ;;9002226.02101,"2082,A18.54 ",.02)
 ;;A18.54 
 ;;9002226.02101,"2082,A18.54 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.59 ",.01)
 ;;A18.59 
 ;;9002226.02101,"2082,A18.59 ",.02)
 ;;A18.59 
 ;;9002226.02101,"2082,A18.59 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.6 ",.01)
 ;;A18.6 
 ;;9002226.02101,"2082,A18.6 ",.02)
 ;;A18.6 
 ;;9002226.02101,"2082,A18.6 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.7 ",.01)
 ;;A18.7 
 ;;9002226.02101,"2082,A18.7 ",.02)
 ;;A18.7 
 ;;9002226.02101,"2082,A18.7 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.81 ",.01)
 ;;A18.81 
 ;;9002226.02101,"2082,A18.81 ",.02)
 ;;A18.81 
 ;;9002226.02101,"2082,A18.81 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.82 ",.01)
 ;;A18.82 
 ;;9002226.02101,"2082,A18.82 ",.02)
 ;;A18.82 
 ;;9002226.02101,"2082,A18.82 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.83 ",.01)
 ;;A18.83 
 ;;9002226.02101,"2082,A18.83 ",.02)
 ;;A18.83 
 ;;9002226.02101,"2082,A18.83 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.84 ",.01)
 ;;A18.84 
 ;;9002226.02101,"2082,A18.84 ",.02)
 ;;A18.84 
 ;;9002226.02101,"2082,A18.84 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.85 ",.01)
 ;;A18.85 
 ;;9002226.02101,"2082,A18.85 ",.02)
 ;;A18.85 
 ;;9002226.02101,"2082,A18.85 ",.03)
 ;;30
 ;;9002226.02101,"2082,A18.89 ",.01)
 ;;A18.89 
 ;;9002226.02101,"2082,A18.89 ",.02)
 ;;A18.89 
 ;;9002226.02101,"2082,A18.89 ",.03)
 ;;30
 ;;9002226.02101,"2082,A19.0 ",.01)
 ;;A19.0 
 ;;9002226.02101,"2082,A19.0 ",.02)
 ;;A19.0 
 ;;9002226.02101,"2082,A19.0 ",.03)
 ;;30
 ;;9002226.02101,"2082,A19.1 ",.01)
 ;;A19.1 
 ;;9002226.02101,"2082,A19.1 ",.02)
 ;;A19.1 
 ;;9002226.02101,"2082,A19.1 ",.03)
 ;;30
 ;;9002226.02101,"2082,A19.2 ",.01)
 ;;A19.2 
 ;;9002226.02101,"2082,A19.2 ",.02)
 ;;A19.2 
 ;;9002226.02101,"2082,A19.2 ",.03)
 ;;30
 ;;9002226.02101,"2082,A19.8 ",.01)
 ;;A19.8 
 ;;9002226.02101,"2082,A19.8 ",.02)
 ;;A19.8 
 ;;9002226.02101,"2082,A19.8 ",.03)
 ;;30
 ;;9002226.02101,"2082,A19.9 ",.01)
 ;;A19.9 
 ;;9002226.02101,"2082,A19.9 ",.02)
 ;;A19.9 
 ;;9002226.02101,"2082,A19.9 ",.03)
 ;;30
 ;;9002226.02101,"2082,B90.0 ",.01)
 ;;B90.0 
 ;;9002226.02101,"2082,B90.0 ",.02)
 ;;B90.0 
 ;;9002226.02101,"2082,B90.0 ",.03)
 ;;30
 ;;9002226.02101,"2082,B90.1 ",.01)
 ;;B90.1 
 ;;9002226.02101,"2082,B90.1 ",.02)
 ;;B90.1 
 ;;9002226.02101,"2082,B90.1 ",.03)
 ;;30
 ;;9002226.02101,"2082,B90.2 ",.01)
 ;;B90.2 
 ;;9002226.02101,"2082,B90.2 ",.02)
 ;;B90.2 
 ;;9002226.02101,"2082,B90.2 ",.03)
 ;;30
 ;;9002226.02101,"2082,B90.8 ",.01)
 ;;B90.8 
 ;;9002226.02101,"2082,B90.8 ",.02)
 ;;B90.8 
 ;;9002226.02101,"2082,B90.8 ",.03)
 ;;30
 ;;9002226.02101,"2082,B90.9 ",.01)
 ;;B90.9 
 ;;9002226.02101,"2082,B90.9 ",.02)
 ;;B90.9 
 ;;9002226.02101,"2082,B90.9 ",.03)
 ;;30
 ;;9002226.02101,"2082,R76.11 ",.01)
 ;;R76.11 
 ;;9002226.02101,"2082,R76.11 ",.02)
 ;;R76.11 
 ;;9002226.02101,"2082,R76.11 ",.03)
 ;;30
 ;;9002226.02101,"2082,V12.01 ",.01)
 ;;V12.01 
 ;;9002226.02101,"2082,V12.01 ",.02)
 ;;V12.01 
 ;;9002226.02101,"2082,V12.01 ",.03)
 ;;1
 ;;9002226.02101,"2082,Z86.11 ",.01)
 ;;Z86.11 
 ;;9002226.02101,"2082,Z86.11 ",.02)
 ;;Z86.11 
 ;;9002226.02101,"2082,Z86.11 ",.03)
 ;;30
 ;;9002226.04101,"2082,1",.01)
 ;;APCL
 ;;9002226.04101,"2082,2",.01)
 ;;BDM
 ;;9002226.04101,"2082,3",.01)
 ;;APCH
 ;;9002226.04101,"2082,4",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
