ATXD1S12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"821,V60.0XXA ",.01)
 ;;V60.0XXA
 ;;9002226.02101,"821,V60.0XXA ",.02)
 ;;V60.0XXA
 ;;9002226.02101,"821,V60.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.1XXA ",.01)
 ;;V60.1XXA
 ;;9002226.02101,"821,V60.1XXA ",.02)
 ;;V60.1XXA
 ;;9002226.02101,"821,V60.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.2XXA ",.01)
 ;;V60.2XXA
 ;;9002226.02101,"821,V60.2XXA ",.02)
 ;;V60.2XXA
 ;;9002226.02101,"821,V60.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.3XXA ",.01)
 ;;V60.3XXA
 ;;9002226.02101,"821,V60.3XXA ",.02)
 ;;V60.3XXA
 ;;9002226.02101,"821,V60.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.4XXA ",.01)
 ;;V60.4XXA
 ;;9002226.02101,"821,V60.4XXA ",.02)
 ;;V60.4XXA
 ;;9002226.02101,"821,V60.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.5XXA ",.01)
 ;;V60.5XXA
 ;;9002226.02101,"821,V60.5XXA ",.02)
 ;;V60.5XXA
 ;;9002226.02101,"821,V60.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.6XXA ",.01)
 ;;V60.6XXA
 ;;9002226.02101,"821,V60.6XXA ",.02)
 ;;V60.6XXA
 ;;9002226.02101,"821,V60.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.7XXA ",.01)
 ;;V60.7XXA
 ;;9002226.02101,"821,V60.7XXA ",.02)
 ;;V60.7XXA
 ;;9002226.02101,"821,V60.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V60.9XXA ",.01)
 ;;V60.9XXA
 ;;9002226.02101,"821,V60.9XXA ",.02)
 ;;V60.9XXA
 ;;9002226.02101,"821,V60.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.0XXA ",.01)
 ;;V61.0XXA
 ;;9002226.02101,"821,V61.0XXA ",.02)
 ;;V61.0XXA
 ;;9002226.02101,"821,V61.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.1XXA ",.01)
 ;;V61.1XXA
 ;;9002226.02101,"821,V61.1XXA ",.02)
 ;;V61.1XXA
 ;;9002226.02101,"821,V61.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.2XXA ",.01)
 ;;V61.2XXA
 ;;9002226.02101,"821,V61.2XXA ",.02)
 ;;V61.2XXA
 ;;9002226.02101,"821,V61.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.3XXA ",.01)
 ;;V61.3XXA
 ;;9002226.02101,"821,V61.3XXA ",.02)
 ;;V61.3XXA
 ;;9002226.02101,"821,V61.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.4XXA ",.01)
 ;;V61.4XXA
 ;;9002226.02101,"821,V61.4XXA ",.02)
 ;;V61.4XXA
 ;;9002226.02101,"821,V61.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.5XXA ",.01)
 ;;V61.5XXA
 ;;9002226.02101,"821,V61.5XXA ",.02)
 ;;V61.5XXA
 ;;9002226.02101,"821,V61.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.6XXA ",.01)
 ;;V61.6XXA
 ;;9002226.02101,"821,V61.6XXA ",.02)
 ;;V61.6XXA
 ;;9002226.02101,"821,V61.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.7XXA ",.01)
 ;;V61.7XXA
 ;;9002226.02101,"821,V61.7XXA ",.02)
 ;;V61.7XXA
 ;;9002226.02101,"821,V61.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V61.9XXA ",.01)
 ;;V61.9XXA
 ;;9002226.02101,"821,V61.9XXA ",.02)
 ;;V61.9XXA
 ;;9002226.02101,"821,V61.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.0XXA ",.01)
 ;;V62.0XXA
 ;;9002226.02101,"821,V62.0XXA ",.02)
 ;;V62.0XXA
 ;;9002226.02101,"821,V62.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.1XXA ",.01)
 ;;V62.1XXA
 ;;9002226.02101,"821,V62.1XXA ",.02)
 ;;V62.1XXA
 ;;9002226.02101,"821,V62.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.2XXA ",.01)
 ;;V62.2XXA
 ;;9002226.02101,"821,V62.2XXA ",.02)
 ;;V62.2XXA
 ;;9002226.02101,"821,V62.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.3XXA ",.01)
 ;;V62.3XXA
 ;;9002226.02101,"821,V62.3XXA ",.02)
 ;;V62.3XXA
 ;;9002226.02101,"821,V62.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.4XXA ",.01)
 ;;V62.4XXA
 ;;9002226.02101,"821,V62.4XXA ",.02)
 ;;V62.4XXA
 ;;9002226.02101,"821,V62.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.5XXA ",.01)
 ;;V62.5XXA
 ;;9002226.02101,"821,V62.5XXA ",.02)
 ;;V62.5XXA
 ;;9002226.02101,"821,V62.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.6XXA ",.01)
 ;;V62.6XXA
 ;;9002226.02101,"821,V62.6XXA ",.02)
 ;;V62.6XXA
 ;;9002226.02101,"821,V62.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.7XXA ",.01)
 ;;V62.7XXA
 ;;9002226.02101,"821,V62.7XXA ",.02)
 ;;V62.7XXA
 ;;9002226.02101,"821,V62.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V62.9XXA ",.01)
 ;;V62.9XXA
 ;;9002226.02101,"821,V62.9XXA ",.02)
 ;;V62.9XXA
 ;;9002226.02101,"821,V62.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.0XXA ",.01)
 ;;V63.0XXA
 ;;9002226.02101,"821,V63.0XXA ",.02)
 ;;V63.0XXA
 ;;9002226.02101,"821,V63.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.1XXA ",.01)
 ;;V63.1XXA
 ;;9002226.02101,"821,V63.1XXA ",.02)
 ;;V63.1XXA
 ;;9002226.02101,"821,V63.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.2XXA ",.01)
 ;;V63.2XXA
 ;;9002226.02101,"821,V63.2XXA ",.02)
 ;;V63.2XXA
 ;;9002226.02101,"821,V63.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.3XXA ",.01)
 ;;V63.3XXA
 ;;9002226.02101,"821,V63.3XXA ",.02)
 ;;V63.3XXA
 ;;9002226.02101,"821,V63.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.4XXA ",.01)
 ;;V63.4XXA
 ;;9002226.02101,"821,V63.4XXA ",.02)
 ;;V63.4XXA
 ;;9002226.02101,"821,V63.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.5XXA ",.01)
 ;;V63.5XXA
 ;;9002226.02101,"821,V63.5XXA ",.02)
 ;;V63.5XXA
 ;;9002226.02101,"821,V63.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.6XXA ",.01)
 ;;V63.6XXA
 ;;9002226.02101,"821,V63.6XXA ",.02)
 ;;V63.6XXA
 ;;9002226.02101,"821,V63.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.7XXA ",.01)
 ;;V63.7XXA
 ;;9002226.02101,"821,V63.7XXA ",.02)
 ;;V63.7XXA
 ;;9002226.02101,"821,V63.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V63.9XXA ",.01)
 ;;V63.9XXA
 ;;9002226.02101,"821,V63.9XXA ",.02)
 ;;V63.9XXA
 ;;9002226.02101,"821,V63.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.0XXA ",.01)
 ;;V64.0XXA
 ;;9002226.02101,"821,V64.0XXA ",.02)
 ;;V64.0XXA
 ;;9002226.02101,"821,V64.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.1XXA ",.01)
 ;;V64.1XXA
 ;;9002226.02101,"821,V64.1XXA ",.02)
 ;;V64.1XXA
 ;;9002226.02101,"821,V64.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.2XXA ",.01)
 ;;V64.2XXA
 ;;9002226.02101,"821,V64.2XXA ",.02)
 ;;V64.2XXA
 ;;9002226.02101,"821,V64.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.3XXA ",.01)
 ;;V64.3XXA
 ;;9002226.02101,"821,V64.3XXA ",.02)
 ;;V64.3XXA
 ;;9002226.02101,"821,V64.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.4XXA ",.01)
 ;;V64.4XXA
 ;;9002226.02101,"821,V64.4XXA ",.02)
 ;;V64.4XXA
 ;;9002226.02101,"821,V64.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.5XXA ",.01)
 ;;V64.5XXA
 ;;9002226.02101,"821,V64.5XXA ",.02)
 ;;V64.5XXA
 ;;9002226.02101,"821,V64.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.6XXA ",.01)
 ;;V64.6XXA
 ;;9002226.02101,"821,V64.6XXA ",.02)
 ;;V64.6XXA
 ;;9002226.02101,"821,V64.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.7XXA ",.01)
 ;;V64.7XXA
 ;;9002226.02101,"821,V64.7XXA ",.02)
 ;;V64.7XXA
 ;;9002226.02101,"821,V64.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V64.9XXA ",.01)
 ;;V64.9XXA
 ;;9002226.02101,"821,V64.9XXA ",.02)
 ;;V64.9XXA
 ;;9002226.02101,"821,V64.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.0XXA ",.01)
 ;;V65.0XXA
 ;;9002226.02101,"821,V65.0XXA ",.02)
 ;;V65.0XXA
 ;;9002226.02101,"821,V65.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.1XXA ",.01)
 ;;V65.1XXA
 ;;9002226.02101,"821,V65.1XXA ",.02)
 ;;V65.1XXA
 ;;9002226.02101,"821,V65.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.2XXA ",.01)
 ;;V65.2XXA
 ;;9002226.02101,"821,V65.2XXA ",.02)
 ;;V65.2XXA
 ;;9002226.02101,"821,V65.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.3XXA ",.01)
 ;;V65.3XXA
 ;;9002226.02101,"821,V65.3XXA ",.02)
 ;;V65.3XXA
 ;;9002226.02101,"821,V65.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.4XXA ",.01)
 ;;V65.4XXA
 ;;9002226.02101,"821,V65.4XXA ",.02)
 ;;V65.4XXA
 ;;9002226.02101,"821,V65.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.5XXA ",.01)
 ;;V65.5XXA
 ;;9002226.02101,"821,V65.5XXA ",.02)
 ;;V65.5XXA
 ;;9002226.02101,"821,V65.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.6XXA ",.01)
 ;;V65.6XXA
 ;;9002226.02101,"821,V65.6XXA ",.02)
 ;;V65.6XXA
 ;;9002226.02101,"821,V65.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.7XXA ",.01)
 ;;V65.7XXA
 ;;9002226.02101,"821,V65.7XXA ",.02)
 ;;V65.7XXA
 ;;9002226.02101,"821,V65.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V65.9XXA ",.01)
 ;;V65.9XXA
 ;;9002226.02101,"821,V65.9XXA ",.02)
 ;;V65.9XXA
 ;;9002226.02101,"821,V65.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.0XXA ",.01)
 ;;V66.0XXA
 ;;9002226.02101,"821,V66.0XXA ",.02)
 ;;V66.0XXA
 ;;9002226.02101,"821,V66.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.1XXA ",.01)
 ;;V66.1XXA
 ;;9002226.02101,"821,V66.1XXA ",.02)
 ;;V66.1XXA
 ;;9002226.02101,"821,V66.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.2XXA ",.01)
 ;;V66.2XXA
 ;;9002226.02101,"821,V66.2XXA ",.02)
 ;;V66.2XXA
 ;;9002226.02101,"821,V66.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.3XXA ",.01)
 ;;V66.3XXA
 ;;9002226.02101,"821,V66.3XXA ",.02)
 ;;V66.3XXA
 ;;9002226.02101,"821,V66.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.4XXA ",.01)
 ;;V66.4XXA
 ;;9002226.02101,"821,V66.4XXA ",.02)
 ;;V66.4XXA
 ;;9002226.02101,"821,V66.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.5XXA ",.01)
 ;;V66.5XXA
 ;;9002226.02101,"821,V66.5XXA ",.02)
 ;;V66.5XXA
 ;;9002226.02101,"821,V66.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.6XXA ",.01)
 ;;V66.6XXA
 ;;9002226.02101,"821,V66.6XXA ",.02)
 ;;V66.6XXA
 ;;9002226.02101,"821,V66.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.7XXA ",.01)
 ;;V66.7XXA
 ;;9002226.02101,"821,V66.7XXA ",.02)
 ;;V66.7XXA
 ;;9002226.02101,"821,V66.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V66.9XXA ",.01)
 ;;V66.9XXA
 ;;9002226.02101,"821,V66.9XXA ",.02)
 ;;V66.9XXA
 ;;9002226.02101,"821,V66.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.0XXA ",.01)
 ;;V67.0XXA
 ;;9002226.02101,"821,V67.0XXA ",.02)
 ;;V67.0XXA
 ;;9002226.02101,"821,V67.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.1XXA ",.01)
 ;;V67.1XXA
 ;;9002226.02101,"821,V67.1XXA ",.02)
 ;;V67.1XXA
 ;;9002226.02101,"821,V67.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.2XXA ",.01)
 ;;V67.2XXA
 ;;9002226.02101,"821,V67.2XXA ",.02)
 ;;V67.2XXA
 ;;9002226.02101,"821,V67.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.3XXA ",.01)
 ;;V67.3XXA
 ;;9002226.02101,"821,V67.3XXA ",.02)
 ;;V67.3XXA
 ;;9002226.02101,"821,V67.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.4XXA ",.01)
 ;;V67.4XXA
 ;;9002226.02101,"821,V67.4XXA ",.02)
 ;;V67.4XXA
 ;;9002226.02101,"821,V67.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.5XXA ",.01)
 ;;V67.5XXA
 ;;9002226.02101,"821,V67.5XXA ",.02)
 ;;V67.5XXA
 ;;9002226.02101,"821,V67.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.6XXA ",.01)
 ;;V67.6XXA
 ;;9002226.02101,"821,V67.6XXA ",.02)
 ;;V67.6XXA
 ;;9002226.02101,"821,V67.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.7XXA ",.01)
 ;;V67.7XXA
 ;;9002226.02101,"821,V67.7XXA ",.02)
 ;;V67.7XXA
 ;;9002226.02101,"821,V67.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V67.9XXA ",.01)
 ;;V67.9XXA
 ;;9002226.02101,"821,V67.9XXA ",.02)
 ;;V67.9XXA
 ;;9002226.02101,"821,V67.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.0XXA ",.01)
 ;;V68.0XXA
 ;;9002226.02101,"821,V68.0XXA ",.02)
 ;;V68.0XXA
 ;;9002226.02101,"821,V68.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.1XXA ",.01)
 ;;V68.1XXA
 ;;9002226.02101,"821,V68.1XXA ",.02)
 ;;V68.1XXA
 ;;9002226.02101,"821,V68.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.2XXA ",.01)
 ;;V68.2XXA
 ;;9002226.02101,"821,V68.2XXA ",.02)
 ;;V68.2XXA
 ;;9002226.02101,"821,V68.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.3XXA ",.01)
 ;;V68.3XXA
 ;;9002226.02101,"821,V68.3XXA ",.02)
 ;;V68.3XXA
 ;;9002226.02101,"821,V68.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.4XXA ",.01)
 ;;V68.4XXA
 ;;9002226.02101,"821,V68.4XXA ",.02)
 ;;V68.4XXA
 ;;9002226.02101,"821,V68.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.5XXA ",.01)
 ;;V68.5XXA
 ;;9002226.02101,"821,V68.5XXA ",.02)
 ;;V68.5XXA
 ;;9002226.02101,"821,V68.5XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.6XXA ",.01)
 ;;V68.6XXA
 ;;9002226.02101,"821,V68.6XXA ",.02)
 ;;V68.6XXA
 ;;9002226.02101,"821,V68.6XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.7XXA ",.01)
 ;;V68.7XXA
 ;;9002226.02101,"821,V68.7XXA ",.02)
 ;;V68.7XXA
 ;;9002226.02101,"821,V68.7XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V68.9XXA ",.01)
 ;;V68.9XXA
 ;;9002226.02101,"821,V68.9XXA ",.02)
 ;;V68.9XXA
 ;;9002226.02101,"821,V68.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.00XA ",.01)
 ;;V69.00XA
 ;;9002226.02101,"821,V69.00XA ",.02)
 ;;V69.00XA
 ;;9002226.02101,"821,V69.00XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.09XA ",.01)
 ;;V69.09XA
 ;;9002226.02101,"821,V69.09XA ",.02)
 ;;V69.09XA
 ;;9002226.02101,"821,V69.09XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.10XA ",.01)
 ;;V69.10XA
 ;;9002226.02101,"821,V69.10XA ",.02)
 ;;V69.10XA
 ;;9002226.02101,"821,V69.10XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.19XA ",.01)
 ;;V69.19XA
 ;;9002226.02101,"821,V69.19XA ",.02)
 ;;V69.19XA
 ;;9002226.02101,"821,V69.19XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.20XA ",.01)
 ;;V69.20XA
 ;;9002226.02101,"821,V69.20XA ",.02)
 ;;V69.20XA
 ;;9002226.02101,"821,V69.20XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.29XA ",.01)
 ;;V69.29XA
 ;;9002226.02101,"821,V69.29XA ",.02)
 ;;V69.29XA
 ;;9002226.02101,"821,V69.29XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.3XXA ",.01)
 ;;V69.3XXA
 ;;9002226.02101,"821,V69.3XXA ",.02)
 ;;V69.3XXA
 ;;9002226.02101,"821,V69.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.40XA ",.01)
 ;;V69.40XA
 ;;9002226.02101,"821,V69.40XA ",.02)
 ;;V69.40XA
 ;;9002226.02101,"821,V69.40XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.49XA ",.01)
 ;;V69.49XA
 ;;9002226.02101,"821,V69.49XA ",.02)
 ;;V69.49XA
 ;;9002226.02101,"821,V69.49XA ",.03)
 ;;30
 ;;9002226.02101,"821,V69.50XA ",.01)
 ;;V69.50XA
 ;;9002226.02101,"821,V69.50XA ",.02)
 ;;V69.50XA
