ATXD7P ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;DM AUDIT TYPE II DXS
 ;
 ; This routine loads Taxonomy DM AUDIT TYPE II DXS
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
 ;;21,"250.00 ")
 ;;1
 ;;21,"250.02 ")
 ;;2
 ;;21,"250.10 ")
 ;;3
 ;;21,"250.12 ")
 ;;4
 ;;21,"250.20 ")
 ;;5
 ;;21,"250.22 ")
 ;;6
 ;;21,"250.30 ")
 ;;7
 ;;21,"250.32 ")
 ;;8
 ;;21,"250.40 ")
 ;;9
 ;;21,"250.42 ")
 ;;10
 ;;21,"250.50 ")
 ;;11
 ;;21,"250.52 ")
 ;;12
 ;;21,"250.60 ")
 ;;13
 ;;21,"250.62 ")
 ;;14
 ;;21,"250.70 ")
 ;;15
 ;;21,"250.72 ")
 ;;16
 ;;21,"250.80 ")
 ;;17
 ;;21,"250.82 ")
 ;;18
 ;;21,"250.90 ")
 ;;19
 ;;21,"250.92 ")
 ;;20
 ;;21,"E11.00 ")
 ;;21
 ;;21,"E11.01 ")
 ;;22
 ;;21,"E11.21 ")
 ;;23
 ;;21,"E11.22 ")
 ;;24
 ;;21,"E11.29 ")
 ;;25
 ;;21,"E11.311 ")
 ;;26
 ;;21,"E11.319 ")
 ;;27
 ;;21,"E11.321 ")
 ;;28
 ;;21,"E11.329 ")
 ;;29
 ;;21,"E11.331 ")
 ;;30
 ;;21,"E11.339 ")
 ;;31
 ;;21,"E11.341 ")
 ;;32
 ;;21,"E11.349 ")
 ;;33
 ;;21,"E11.351 ")
 ;;34
 ;;21,"E11.359 ")
 ;;35
 ;;21,"E11.36 ")
 ;;36
 ;;21,"E11.39 ")
 ;;37
 ;;21,"E11.40 ")
 ;;38
 ;;21,"E11.41 ")
 ;;39
 ;;21,"E11.42 ")
 ;;40
 ;;21,"E11.43 ")
 ;;41
 ;;21,"E11.44 ")
 ;;42
 ;;21,"E11.49 ")
 ;;43
 ;;21,"E11.51 ")
 ;;44
 ;;21,"E11.52 ")
 ;;45
 ;;21,"E11.59 ")
 ;;46
 ;;21,"E11.610 ")
 ;;47
 ;;21,"E11.618 ")
 ;;48
 ;;21,"E11.620 ")
 ;;49
 ;;21,"E11.621 ")
 ;;50
 ;;21,"E11.622 ")
 ;;51
 ;;21,"E11.628 ")
 ;;52
 ;;21,"E11.630 ")
 ;;53
 ;;21,"E11.638 ")
 ;;54
 ;;21,"E11.641 ")
 ;;55
 ;;21,"E11.649 ")
 ;;56
 ;;21,"E11.65 ")
 ;;57
 ;;21,"E11.69 ")
 ;;58
 ;;21,"E11.8 ")
 ;;59
 ;;21,"E11.9 ")
 ;;60
 ;;9002226,63,.01)
 ;;DM AUDIT TYPE II DXS
 ;;9002226,63,.02)
 ;;TYPE II DXS
 ;;9002226,63,.04)
 ;;n
 ;;9002226,63,.06)
 ;;@
 ;;9002226,63,.08)
 ;;0
 ;;9002226,63,.09)
 ;;3131112
 ;;9002226,63,.11)
 ;;@
 ;;9002226,63,.12)
 ;;31
 ;;9002226,63,.13)
 ;;1
 ;;9002226,63,.14)
 ;;@
 ;;9002226,63,.15)
 ;;80
 ;;9002226,63,.16)
 ;;@
 ;;9002226,63,.17)
 ;;@
 ;;9002226,63,3101)
 ;;@
 ;;9002226.02101,"63,250.00 ",.01)
 ;;250.00 
 ;;9002226.02101,"63,250.00 ",.02)
 ;;250.00 
 ;;9002226.02101,"63,250.00 ",.03)
 ;;1
 ;;9002226.02101,"63,250.02 ",.01)
 ;;250.02 
 ;;9002226.02101,"63,250.02 ",.02)
 ;;250.02 
 ;;9002226.02101,"63,250.02 ",.03)
 ;;1
 ;;9002226.02101,"63,250.10 ",.01)
 ;;250.10 
 ;;9002226.02101,"63,250.10 ",.02)
 ;;250.10 
 ;;9002226.02101,"63,250.10 ",.03)
 ;;1
 ;;9002226.02101,"63,250.12 ",.01)
 ;;250.12 
 ;;9002226.02101,"63,250.12 ",.02)
 ;;250.12 
 ;;9002226.02101,"63,250.12 ",.03)
 ;;1
 ;;9002226.02101,"63,250.20 ",.01)
 ;;250.20 
 ;;9002226.02101,"63,250.20 ",.02)
 ;;250.20 
 ;;9002226.02101,"63,250.20 ",.03)
 ;;1
 ;;9002226.02101,"63,250.22 ",.01)
 ;;250.22 
 ;;9002226.02101,"63,250.22 ",.02)
 ;;250.22 
 ;;9002226.02101,"63,250.22 ",.03)
 ;;1
 ;;9002226.02101,"63,250.30 ",.01)
 ;;250.30 
 ;;9002226.02101,"63,250.30 ",.02)
 ;;250.30 
 ;;9002226.02101,"63,250.30 ",.03)
 ;;1
 ;;9002226.02101,"63,250.32 ",.01)
 ;;250.32 
 ;;9002226.02101,"63,250.32 ",.02)
 ;;250.32 
 ;;9002226.02101,"63,250.32 ",.03)
 ;;1
 ;;9002226.02101,"63,250.40 ",.01)
 ;;250.40 
 ;;9002226.02101,"63,250.40 ",.02)
 ;;250.40 
 ;;9002226.02101,"63,250.40 ",.03)
 ;;1
 ;;9002226.02101,"63,250.42 ",.01)
 ;;250.42 
 ;;9002226.02101,"63,250.42 ",.02)
 ;;250.42 
 ;;9002226.02101,"63,250.42 ",.03)
 ;;1
 ;;9002226.02101,"63,250.50 ",.01)
 ;;250.50 
 ;;9002226.02101,"63,250.50 ",.02)
 ;;250.50 
 ;;9002226.02101,"63,250.50 ",.03)
 ;;1
 ;;9002226.02101,"63,250.52 ",.01)
 ;;250.52 
 ;;9002226.02101,"63,250.52 ",.02)
 ;;250.52 
 ;;9002226.02101,"63,250.52 ",.03)
 ;;1
 ;;9002226.02101,"63,250.60 ",.01)
 ;;250.60 
 ;;9002226.02101,"63,250.60 ",.02)
 ;;250.60 
 ;;9002226.02101,"63,250.60 ",.03)
 ;;1
 ;;9002226.02101,"63,250.62 ",.01)
 ;;250.62 
 ;;9002226.02101,"63,250.62 ",.02)
 ;;250.62 
 ;;9002226.02101,"63,250.62 ",.03)
 ;;1
 ;;9002226.02101,"63,250.70 ",.01)
 ;;250.70 
 ;;9002226.02101,"63,250.70 ",.02)
 ;;250.70 
 ;;9002226.02101,"63,250.70 ",.03)
 ;;1
 ;;9002226.02101,"63,250.72 ",.01)
 ;;250.72 
 ;;9002226.02101,"63,250.72 ",.02)
 ;;250.72 
 ;;9002226.02101,"63,250.72 ",.03)
 ;;1
 ;;9002226.02101,"63,250.80 ",.01)
 ;;250.80 
 ;;9002226.02101,"63,250.80 ",.02)
 ;;250.80 
 ;;9002226.02101,"63,250.80 ",.03)
 ;;1
 ;;9002226.02101,"63,250.82 ",.01)
 ;;250.82 
 ;;9002226.02101,"63,250.82 ",.02)
 ;;250.82 
 ;;9002226.02101,"63,250.82 ",.03)
 ;;1
 ;;9002226.02101,"63,250.90 ",.01)
 ;;250.90 
 ;;9002226.02101,"63,250.90 ",.02)
 ;;250.90 
 ;;9002226.02101,"63,250.90 ",.03)
 ;;1
 ;;9002226.02101,"63,250.92 ",.01)
 ;;250.92 
 ;;9002226.02101,"63,250.92 ",.02)
 ;;250.92 
 ;;9002226.02101,"63,250.92 ",.03)
 ;;1
 ;;9002226.02101,"63,E11.00 ",.01)
 ;;E11.00 
 ;;9002226.02101,"63,E11.00 ",.02)
 ;;E11.00 
 ;;9002226.02101,"63,E11.00 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.01 ",.01)
 ;;E11.01 
 ;;9002226.02101,"63,E11.01 ",.02)
 ;;E11.01 
 ;;9002226.02101,"63,E11.01 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.21 ",.01)
 ;;E11.21 
 ;;9002226.02101,"63,E11.21 ",.02)
 ;;E11.21 
 ;;9002226.02101,"63,E11.21 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.22 ",.01)
 ;;E11.22 
 ;;9002226.02101,"63,E11.22 ",.02)
 ;;E11.22 
 ;;9002226.02101,"63,E11.22 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.29 ",.01)
 ;;E11.29 
 ;;9002226.02101,"63,E11.29 ",.02)
 ;;E11.29 
 ;;9002226.02101,"63,E11.29 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.311 ",.01)
 ;;E11.311 
 ;;9002226.02101,"63,E11.311 ",.02)
 ;;E11.311 
 ;;9002226.02101,"63,E11.311 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.319 ",.01)
 ;;E11.319 
 ;;9002226.02101,"63,E11.319 ",.02)
 ;;E11.319 
 ;;9002226.02101,"63,E11.319 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.321 ",.01)
 ;;E11.321 
 ;;9002226.02101,"63,E11.321 ",.02)
 ;;E11.321 
 ;;9002226.02101,"63,E11.321 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.329 ",.01)
 ;;E11.329 
 ;;9002226.02101,"63,E11.329 ",.02)
 ;;E11.329 
 ;;9002226.02101,"63,E11.329 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.331 ",.01)
 ;;E11.331 
 ;;9002226.02101,"63,E11.331 ",.02)
 ;;E11.331 
 ;;9002226.02101,"63,E11.331 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.339 ",.01)
 ;;E11.339 
 ;;9002226.02101,"63,E11.339 ",.02)
 ;;E11.339 
 ;;9002226.02101,"63,E11.339 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.341 ",.01)
 ;;E11.341 
 ;;9002226.02101,"63,E11.341 ",.02)
 ;;E11.341 
 ;;9002226.02101,"63,E11.341 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.349 ",.01)
 ;;E11.349 
 ;;9002226.02101,"63,E11.349 ",.02)
 ;;E11.349 
 ;;9002226.02101,"63,E11.349 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.351 ",.01)
 ;;E11.351 
 ;;9002226.02101,"63,E11.351 ",.02)
 ;;E11.351 
 ;;9002226.02101,"63,E11.351 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.359 ",.01)
 ;;E11.359 
 ;;9002226.02101,"63,E11.359 ",.02)
 ;;E11.359 
 ;;9002226.02101,"63,E11.359 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.36 ",.01)
 ;;E11.36 
 ;;9002226.02101,"63,E11.36 ",.02)
 ;;E11.36 
 ;;9002226.02101,"63,E11.36 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.39 ",.01)
 ;;E11.39 
 ;;9002226.02101,"63,E11.39 ",.02)
 ;;E11.39 
 ;;9002226.02101,"63,E11.39 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.40 ",.01)
 ;;E11.40 
 ;;9002226.02101,"63,E11.40 ",.02)
 ;;E11.40 
 ;;9002226.02101,"63,E11.40 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.41 ",.01)
 ;;E11.41 
 ;;9002226.02101,"63,E11.41 ",.02)
 ;;E11.41 
 ;;9002226.02101,"63,E11.41 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.42 ",.01)
 ;;E11.42 
 ;;9002226.02101,"63,E11.42 ",.02)
 ;;E11.42 
 ;;9002226.02101,"63,E11.42 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.43 ",.01)
 ;;E11.43 
 ;;9002226.02101,"63,E11.43 ",.02)
 ;;E11.43 
 ;;9002226.02101,"63,E11.43 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.44 ",.01)
 ;;E11.44 
 ;;9002226.02101,"63,E11.44 ",.02)
 ;;E11.44 
 ;;9002226.02101,"63,E11.44 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.49 ",.01)
 ;;E11.49 
 ;;9002226.02101,"63,E11.49 ",.02)
 ;;E11.49 
 ;;9002226.02101,"63,E11.49 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.51 ",.01)
 ;;E11.51 
 ;;9002226.02101,"63,E11.51 ",.02)
 ;;E11.51 
 ;;9002226.02101,"63,E11.51 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.52 ",.01)
 ;;E11.52 
 ;;9002226.02101,"63,E11.52 ",.02)
 ;;E11.52 
 ;;9002226.02101,"63,E11.52 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.59 ",.01)
 ;;E11.59 
 ;;9002226.02101,"63,E11.59 ",.02)
 ;;E11.59 
 ;;9002226.02101,"63,E11.59 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.610 ",.01)
 ;;E11.610 
 ;;9002226.02101,"63,E11.610 ",.02)
 ;;E11.610 
 ;;9002226.02101,"63,E11.610 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.618 ",.01)
 ;;E11.618 
 ;;9002226.02101,"63,E11.618 ",.02)
 ;;E11.618 
 ;;9002226.02101,"63,E11.618 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.620 ",.01)
 ;;E11.620 
 ;;9002226.02101,"63,E11.620 ",.02)
 ;;E11.620 
 ;;9002226.02101,"63,E11.620 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.621 ",.01)
 ;;E11.621 
 ;;9002226.02101,"63,E11.621 ",.02)
 ;;E11.621 
 ;;9002226.02101,"63,E11.621 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.622 ",.01)
 ;;E11.622 
 ;;9002226.02101,"63,E11.622 ",.02)
 ;;E11.622 
 ;;9002226.02101,"63,E11.622 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.628 ",.01)
 ;;E11.628 
 ;;9002226.02101,"63,E11.628 ",.02)
 ;;E11.628 
 ;;9002226.02101,"63,E11.628 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.630 ",.01)
 ;;E11.630 
 ;;9002226.02101,"63,E11.630 ",.02)
 ;;E11.630 
 ;;9002226.02101,"63,E11.630 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.638 ",.01)
 ;;E11.638 
 ;;9002226.02101,"63,E11.638 ",.02)
 ;;E11.638 
 ;;9002226.02101,"63,E11.638 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.641 ",.01)
 ;;E11.641 
 ;;9002226.02101,"63,E11.641 ",.02)
 ;;E11.641 
 ;;9002226.02101,"63,E11.641 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.649 ",.01)
 ;;E11.649 
 ;;9002226.02101,"63,E11.649 ",.02)
 ;;E11.649 
 ;;9002226.02101,"63,E11.649 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.65 ",.01)
 ;;E11.65 
 ;;9002226.02101,"63,E11.65 ",.02)
 ;;E11.65 
 ;;9002226.02101,"63,E11.65 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.69 ",.01)
 ;;E11.69 
 ;;9002226.02101,"63,E11.69 ",.02)
 ;;E11.69 
 ;;9002226.02101,"63,E11.69 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.8 ",.01)
 ;;E11.8 
 ;;9002226.02101,"63,E11.8 ",.02)
 ;;E11.8 
 ;;9002226.02101,"63,E11.8 ",.03)
 ;;30
 ;;9002226.02101,"63,E11.9 ",.01)
 ;;E11.9 
 ;;9002226.02101,"63,E11.9 ",.02)
 ;;E11.9 
 ;;9002226.02101,"63,E11.9 ",.03)
 ;;30
 ;;9002226.04101,"63,1",.01)
 ;;APCL
 ;;9002226.04101,"63,2",.01)
 ;;BDM
 ;
OTHER ; OTHER ROUTINES
 Q
