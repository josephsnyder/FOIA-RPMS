ATXXA154 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T49.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.2X1A ",.01)
 ;;T49.2X1A
 ;;9002226.02101,"873,T49.2X1A ",.02)
 ;;T49.2X1A
 ;;9002226.02101,"873,T49.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.2X2A ",.01)
 ;;T49.2X2A
 ;;9002226.02101,"873,T49.2X2A ",.02)
 ;;T49.2X2A
 ;;9002226.02101,"873,T49.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.2X3A ",.01)
 ;;T49.2X3A
 ;;9002226.02101,"873,T49.2X3A ",.02)
 ;;T49.2X3A
 ;;9002226.02101,"873,T49.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.2X4A ",.01)
 ;;T49.2X4A
 ;;9002226.02101,"873,T49.2X4A ",.02)
 ;;T49.2X4A
 ;;9002226.02101,"873,T49.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.3X1A ",.01)
 ;;T49.3X1A
 ;;9002226.02101,"873,T49.3X1A ",.02)
 ;;T49.3X1A
 ;;9002226.02101,"873,T49.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.3X2A ",.01)
 ;;T49.3X2A
 ;;9002226.02101,"873,T49.3X2A ",.02)
 ;;T49.3X2A
 ;;9002226.02101,"873,T49.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.3X3A ",.01)
 ;;T49.3X3A
 ;;9002226.02101,"873,T49.3X3A ",.02)
 ;;T49.3X3A
 ;;9002226.02101,"873,T49.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.3X4A ",.01)
 ;;T49.3X4A
 ;;9002226.02101,"873,T49.3X4A ",.02)
 ;;T49.3X4A
 ;;9002226.02101,"873,T49.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.4X1A ",.01)
 ;;T49.4X1A
 ;;9002226.02101,"873,T49.4X1A ",.02)
 ;;T49.4X1A
 ;;9002226.02101,"873,T49.4X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.4X2A ",.01)
 ;;T49.4X2A
 ;;9002226.02101,"873,T49.4X2A ",.02)
 ;;T49.4X2A
 ;;9002226.02101,"873,T49.4X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.4X3A ",.01)
 ;;T49.4X3A
 ;;9002226.02101,"873,T49.4X3A ",.02)
 ;;T49.4X3A
 ;;9002226.02101,"873,T49.4X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.4X4A ",.01)
 ;;T49.4X4A
 ;;9002226.02101,"873,T49.4X4A ",.02)
 ;;T49.4X4A
 ;;9002226.02101,"873,T49.4X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.5X1A ",.01)
 ;;T49.5X1A
 ;;9002226.02101,"873,T49.5X1A ",.02)
 ;;T49.5X1A
 ;;9002226.02101,"873,T49.5X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.5X2A ",.01)
 ;;T49.5X2A
 ;;9002226.02101,"873,T49.5X2A ",.02)
 ;;T49.5X2A
 ;;9002226.02101,"873,T49.5X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.5X3A ",.01)
 ;;T49.5X3A
 ;;9002226.02101,"873,T49.5X3A ",.02)
 ;;T49.5X3A
 ;;9002226.02101,"873,T49.5X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.5X4A ",.01)
 ;;T49.5X4A
 ;;9002226.02101,"873,T49.5X4A ",.02)
 ;;T49.5X4A
 ;;9002226.02101,"873,T49.5X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.6X1A ",.01)
 ;;T49.6X1A
 ;;9002226.02101,"873,T49.6X1A ",.02)
 ;;T49.6X1A
 ;;9002226.02101,"873,T49.6X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.6X2A ",.01)
 ;;T49.6X2A
 ;;9002226.02101,"873,T49.6X2A ",.02)
 ;;T49.6X2A
 ;;9002226.02101,"873,T49.6X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.6X3A ",.01)
 ;;T49.6X3A
 ;;9002226.02101,"873,T49.6X3A ",.02)
 ;;T49.6X3A
 ;;9002226.02101,"873,T49.6X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.6X4A ",.01)
 ;;T49.6X4A
 ;;9002226.02101,"873,T49.6X4A ",.02)
 ;;T49.6X4A
 ;;9002226.02101,"873,T49.6X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.7X1A ",.01)
 ;;T49.7X1A
 ;;9002226.02101,"873,T49.7X1A ",.02)
 ;;T49.7X1A
 ;;9002226.02101,"873,T49.7X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.7X2A ",.01)
 ;;T49.7X2A
 ;;9002226.02101,"873,T49.7X2A ",.02)
 ;;T49.7X2A
 ;;9002226.02101,"873,T49.7X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.7X3A ",.01)
 ;;T49.7X3A
 ;;9002226.02101,"873,T49.7X3A ",.02)
 ;;T49.7X3A
 ;;9002226.02101,"873,T49.7X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.7X4A ",.01)
 ;;T49.7X4A
 ;;9002226.02101,"873,T49.7X4A ",.02)
 ;;T49.7X4A
 ;;9002226.02101,"873,T49.7X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.8X1A ",.01)
 ;;T49.8X1A
 ;;9002226.02101,"873,T49.8X1A ",.02)
 ;;T49.8X1A
 ;;9002226.02101,"873,T49.8X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.8X2A ",.01)
 ;;T49.8X2A
 ;;9002226.02101,"873,T49.8X2A ",.02)
 ;;T49.8X2A
 ;;9002226.02101,"873,T49.8X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.8X3A ",.01)
 ;;T49.8X3A
 ;;9002226.02101,"873,T49.8X3A ",.02)
 ;;T49.8X3A
 ;;9002226.02101,"873,T49.8X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.8X4A ",.01)
 ;;T49.8X4A
 ;;9002226.02101,"873,T49.8X4A ",.02)
 ;;T49.8X4A
 ;;9002226.02101,"873,T49.8X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T49.91XA ",.01)
 ;;T49.91XA
 ;;9002226.02101,"873,T49.91XA ",.02)
 ;;T49.91XA
 ;;9002226.02101,"873,T49.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,T49.92XA ",.01)
 ;;T49.92XA
 ;;9002226.02101,"873,T49.92XA ",.02)
 ;;T49.92XA
 ;;9002226.02101,"873,T49.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,T49.93XA ",.01)
 ;;T49.93XA
 ;;9002226.02101,"873,T49.93XA ",.02)
 ;;T49.93XA
 ;;9002226.02101,"873,T49.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,T49.94XA ",.01)
 ;;T49.94XA
 ;;9002226.02101,"873,T49.94XA ",.02)
 ;;T49.94XA
 ;;9002226.02101,"873,T49.94XA ",.03)
 ;;30
 ;;9002226.02101,"873,T50.0X1A ",.01)
 ;;T50.0X1A
 ;;9002226.02101,"873,T50.0X1A ",.02)
 ;;T50.0X1A
 ;;9002226.02101,"873,T50.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.0X2A ",.01)
 ;;T50.0X2A
 ;;9002226.02101,"873,T50.0X2A ",.02)
 ;;T50.0X2A
 ;;9002226.02101,"873,T50.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.0X3A ",.01)
 ;;T50.0X3A
 ;;9002226.02101,"873,T50.0X3A ",.02)
 ;;T50.0X3A
 ;;9002226.02101,"873,T50.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.0X4A ",.01)
 ;;T50.0X4A
 ;;9002226.02101,"873,T50.0X4A ",.02)
 ;;T50.0X4A
 ;;9002226.02101,"873,T50.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.1X1A ",.01)
 ;;T50.1X1A
 ;;9002226.02101,"873,T50.1X1A ",.02)
 ;;T50.1X1A
 ;;9002226.02101,"873,T50.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.1X2A ",.01)
 ;;T50.1X2A
 ;;9002226.02101,"873,T50.1X2A ",.02)
 ;;T50.1X2A
 ;;9002226.02101,"873,T50.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.1X3A ",.01)
 ;;T50.1X3A
 ;;9002226.02101,"873,T50.1X3A ",.02)
 ;;T50.1X3A
 ;;9002226.02101,"873,T50.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.1X4A ",.01)
 ;;T50.1X4A
 ;;9002226.02101,"873,T50.1X4A ",.02)
 ;;T50.1X4A
 ;;9002226.02101,"873,T50.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.2X1A ",.01)
 ;;T50.2X1A
 ;;9002226.02101,"873,T50.2X1A ",.02)
 ;;T50.2X1A
 ;;9002226.02101,"873,T50.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.2X2A ",.01)
 ;;T50.2X2A
 ;;9002226.02101,"873,T50.2X2A ",.02)
 ;;T50.2X2A
 ;;9002226.02101,"873,T50.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.2X3A ",.01)
 ;;T50.2X3A
 ;;9002226.02101,"873,T50.2X3A ",.02)
 ;;T50.2X3A
 ;;9002226.02101,"873,T50.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.2X4A ",.01)
 ;;T50.2X4A
 ;;9002226.02101,"873,T50.2X4A ",.02)
 ;;T50.2X4A
 ;;9002226.02101,"873,T50.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.3X1A ",.01)
 ;;T50.3X1A
 ;;9002226.02101,"873,T50.3X1A ",.02)
 ;;T50.3X1A
 ;;9002226.02101,"873,T50.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.3X2A ",.01)
 ;;T50.3X2A
 ;;9002226.02101,"873,T50.3X2A ",.02)
 ;;T50.3X2A
 ;;9002226.02101,"873,T50.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.3X3A ",.01)
 ;;T50.3X3A
 ;;9002226.02101,"873,T50.3X3A ",.02)
 ;;T50.3X3A
 ;;9002226.02101,"873,T50.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.3X4A ",.01)
 ;;T50.3X4A
 ;;9002226.02101,"873,T50.3X4A ",.02)
 ;;T50.3X4A
 ;;9002226.02101,"873,T50.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.4X1A ",.01)
 ;;T50.4X1A
 ;;9002226.02101,"873,T50.4X1A ",.02)
 ;;T50.4X1A
 ;;9002226.02101,"873,T50.4X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.4X2A ",.01)
 ;;T50.4X2A
 ;;9002226.02101,"873,T50.4X2A ",.02)
 ;;T50.4X2A
 ;;9002226.02101,"873,T50.4X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.4X3A ",.01)
 ;;T50.4X3A
 ;;9002226.02101,"873,T50.4X3A ",.02)
 ;;T50.4X3A
 ;;9002226.02101,"873,T50.4X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.4X4A ",.01)
 ;;T50.4X4A
 ;;9002226.02101,"873,T50.4X4A ",.02)
 ;;T50.4X4A
 ;;9002226.02101,"873,T50.4X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.5X1A ",.01)
 ;;T50.5X1A
 ;;9002226.02101,"873,T50.5X1A ",.02)
 ;;T50.5X1A
 ;;9002226.02101,"873,T50.5X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.5X2A ",.01)
 ;;T50.5X2A
 ;;9002226.02101,"873,T50.5X2A ",.02)
 ;;T50.5X2A
 ;;9002226.02101,"873,T50.5X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.5X3A ",.01)
 ;;T50.5X3A
 ;;9002226.02101,"873,T50.5X3A ",.02)
 ;;T50.5X3A
 ;;9002226.02101,"873,T50.5X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.5X4A ",.01)
 ;;T50.5X4A
 ;;9002226.02101,"873,T50.5X4A ",.02)
 ;;T50.5X4A
 ;;9002226.02101,"873,T50.5X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.6X1A ",.01)
 ;;T50.6X1A
 ;;9002226.02101,"873,T50.6X1A ",.02)
 ;;T50.6X1A
 ;;9002226.02101,"873,T50.6X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.6X2A ",.01)
 ;;T50.6X2A
 ;;9002226.02101,"873,T50.6X2A ",.02)
 ;;T50.6X2A
 ;;9002226.02101,"873,T50.6X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.6X3A ",.01)
 ;;T50.6X3A
 ;;9002226.02101,"873,T50.6X3A ",.02)
 ;;T50.6X3A
 ;;9002226.02101,"873,T50.6X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.6X4A ",.01)
 ;;T50.6X4A
 ;;9002226.02101,"873,T50.6X4A ",.02)
 ;;T50.6X4A
 ;;9002226.02101,"873,T50.6X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.7X1A ",.01)
 ;;T50.7X1A
 ;;9002226.02101,"873,T50.7X1A ",.02)
 ;;T50.7X1A
 ;;9002226.02101,"873,T50.7X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.7X2A ",.01)
 ;;T50.7X2A
 ;;9002226.02101,"873,T50.7X2A ",.02)
 ;;T50.7X2A
 ;;9002226.02101,"873,T50.7X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.7X3A ",.01)
 ;;T50.7X3A
 ;;9002226.02101,"873,T50.7X3A ",.02)
 ;;T50.7X3A
 ;;9002226.02101,"873,T50.7X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.7X4A ",.01)
 ;;T50.7X4A
 ;;9002226.02101,"873,T50.7X4A ",.02)
 ;;T50.7X4A
 ;;9002226.02101,"873,T50.7X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.8X1A ",.01)
 ;;T50.8X1A
 ;;9002226.02101,"873,T50.8X1A ",.02)
 ;;T50.8X1A
 ;;9002226.02101,"873,T50.8X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.8X2A ",.01)
 ;;T50.8X2A
 ;;9002226.02101,"873,T50.8X2A ",.02)
 ;;T50.8X2A
 ;;9002226.02101,"873,T50.8X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.8X3A ",.01)
 ;;T50.8X3A
 ;;9002226.02101,"873,T50.8X3A ",.02)
 ;;T50.8X3A
 ;;9002226.02101,"873,T50.8X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.8X4A ",.01)
 ;;T50.8X4A
 ;;9002226.02101,"873,T50.8X4A ",.02)
 ;;T50.8X4A
 ;;9002226.02101,"873,T50.8X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.901A ",.01)
 ;;T50.901A
 ;;9002226.02101,"873,T50.901A ",.02)
 ;;T50.901A
 ;;9002226.02101,"873,T50.901A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.902A ",.01)
 ;;T50.902A
 ;;9002226.02101,"873,T50.902A ",.02)
 ;;T50.902A
 ;;9002226.02101,"873,T50.902A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.903A ",.01)
 ;;T50.903A
 ;;9002226.02101,"873,T50.903A ",.02)
 ;;T50.903A
 ;;9002226.02101,"873,T50.903A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.904A ",.01)
 ;;T50.904A
 ;;9002226.02101,"873,T50.904A ",.02)
 ;;T50.904A
 ;;9002226.02101,"873,T50.904A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.991A ",.01)
 ;;T50.991A
 ;;9002226.02101,"873,T50.991A ",.02)
 ;;T50.991A
 ;;9002226.02101,"873,T50.991A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.992A ",.01)
 ;;T50.992A
 ;;9002226.02101,"873,T50.992A ",.02)
 ;;T50.992A
 ;;9002226.02101,"873,T50.992A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.993A ",.01)
 ;;T50.993A
 ;;9002226.02101,"873,T50.993A ",.02)
 ;;T50.993A
 ;;9002226.02101,"873,T50.993A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.994A ",.01)
 ;;T50.994A
 ;;9002226.02101,"873,T50.994A ",.02)
 ;;T50.994A
 ;;9002226.02101,"873,T50.994A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.A11A ",.01)
 ;;T50.A11A
 ;;9002226.02101,"873,T50.A11A ",.02)
 ;;T50.A11A
 ;;9002226.02101,"873,T50.A11A ",.03)
 ;;30
 ;;9002226.02101,"873,T50.A12A ",.01)
 ;;T50.A12A
 ;;9002226.02101,"873,T50.A12A ",.02)
 ;;T50.A12A
 ;;9002226.02101,"873,T50.A12A ",.03)
 ;;30
