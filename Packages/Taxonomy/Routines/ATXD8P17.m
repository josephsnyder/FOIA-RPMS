ATXD8P17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"913,O31.11X9 ",.01)
 ;;O31.11X9 
 ;;9002226.02101,"913,O31.11X9 ",.02)
 ;;O31.11X9 
 ;;9002226.02101,"913,O31.11X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X0 ",.01)
 ;;O31.12X0 
 ;;9002226.02101,"913,O31.12X0 ",.02)
 ;;O31.12X0 
 ;;9002226.02101,"913,O31.12X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X1 ",.01)
 ;;O31.12X1 
 ;;9002226.02101,"913,O31.12X1 ",.02)
 ;;O31.12X1 
 ;;9002226.02101,"913,O31.12X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X2 ",.01)
 ;;O31.12X2 
 ;;9002226.02101,"913,O31.12X2 ",.02)
 ;;O31.12X2 
 ;;9002226.02101,"913,O31.12X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X3 ",.01)
 ;;O31.12X3 
 ;;9002226.02101,"913,O31.12X3 ",.02)
 ;;O31.12X3 
 ;;9002226.02101,"913,O31.12X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X4 ",.01)
 ;;O31.12X4 
 ;;9002226.02101,"913,O31.12X4 ",.02)
 ;;O31.12X4 
 ;;9002226.02101,"913,O31.12X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X5 ",.01)
 ;;O31.12X5 
 ;;9002226.02101,"913,O31.12X5 ",.02)
 ;;O31.12X5 
 ;;9002226.02101,"913,O31.12X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.12X9 ",.01)
 ;;O31.12X9 
 ;;9002226.02101,"913,O31.12X9 ",.02)
 ;;O31.12X9 
 ;;9002226.02101,"913,O31.12X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X0 ",.01)
 ;;O31.13X0 
 ;;9002226.02101,"913,O31.13X0 ",.02)
 ;;O31.13X0 
 ;;9002226.02101,"913,O31.13X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X1 ",.01)
 ;;O31.13X1 
 ;;9002226.02101,"913,O31.13X1 ",.02)
 ;;O31.13X1 
 ;;9002226.02101,"913,O31.13X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X2 ",.01)
 ;;O31.13X2 
 ;;9002226.02101,"913,O31.13X2 ",.02)
 ;;O31.13X2 
 ;;9002226.02101,"913,O31.13X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X3 ",.01)
 ;;O31.13X3 
 ;;9002226.02101,"913,O31.13X3 ",.02)
 ;;O31.13X3 
 ;;9002226.02101,"913,O31.13X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X4 ",.01)
 ;;O31.13X4 
 ;;9002226.02101,"913,O31.13X4 ",.02)
 ;;O31.13X4 
 ;;9002226.02101,"913,O31.13X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X5 ",.01)
 ;;O31.13X5 
 ;;9002226.02101,"913,O31.13X5 ",.02)
 ;;O31.13X5 
 ;;9002226.02101,"913,O31.13X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.13X9 ",.01)
 ;;O31.13X9 
 ;;9002226.02101,"913,O31.13X9 ",.02)
 ;;O31.13X9 
 ;;9002226.02101,"913,O31.13X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X0 ",.01)
 ;;O31.20X0 
 ;;9002226.02101,"913,O31.20X0 ",.02)
 ;;O31.20X0 
 ;;9002226.02101,"913,O31.20X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X1 ",.01)
 ;;O31.20X1 
 ;;9002226.02101,"913,O31.20X1 ",.02)
 ;;O31.20X1 
 ;;9002226.02101,"913,O31.20X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X2 ",.01)
 ;;O31.20X2 
 ;;9002226.02101,"913,O31.20X2 ",.02)
 ;;O31.20X2 
 ;;9002226.02101,"913,O31.20X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X3 ",.01)
 ;;O31.20X3 
 ;;9002226.02101,"913,O31.20X3 ",.02)
 ;;O31.20X3 
 ;;9002226.02101,"913,O31.20X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X4 ",.01)
 ;;O31.20X4 
 ;;9002226.02101,"913,O31.20X4 ",.02)
 ;;O31.20X4 
 ;;9002226.02101,"913,O31.20X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X5 ",.01)
 ;;O31.20X5 
 ;;9002226.02101,"913,O31.20X5 ",.02)
 ;;O31.20X5 
 ;;9002226.02101,"913,O31.20X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.20X9 ",.01)
 ;;O31.20X9 
 ;;9002226.02101,"913,O31.20X9 ",.02)
 ;;O31.20X9 
 ;;9002226.02101,"913,O31.20X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X0 ",.01)
 ;;O31.21X0 
 ;;9002226.02101,"913,O31.21X0 ",.02)
 ;;O31.21X0 
 ;;9002226.02101,"913,O31.21X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X1 ",.01)
 ;;O31.21X1 
 ;;9002226.02101,"913,O31.21X1 ",.02)
 ;;O31.21X1 
 ;;9002226.02101,"913,O31.21X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X2 ",.01)
 ;;O31.21X2 
 ;;9002226.02101,"913,O31.21X2 ",.02)
 ;;O31.21X2 
 ;;9002226.02101,"913,O31.21X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X3 ",.01)
 ;;O31.21X3 
 ;;9002226.02101,"913,O31.21X3 ",.02)
 ;;O31.21X3 
 ;;9002226.02101,"913,O31.21X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X4 ",.01)
 ;;O31.21X4 
 ;;9002226.02101,"913,O31.21X4 ",.02)
 ;;O31.21X4 
 ;;9002226.02101,"913,O31.21X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X5 ",.01)
 ;;O31.21X5 
 ;;9002226.02101,"913,O31.21X5 ",.02)
 ;;O31.21X5 
 ;;9002226.02101,"913,O31.21X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.21X9 ",.01)
 ;;O31.21X9 
 ;;9002226.02101,"913,O31.21X9 ",.02)
 ;;O31.21X9 
 ;;9002226.02101,"913,O31.21X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X0 ",.01)
 ;;O31.22X0 
 ;;9002226.02101,"913,O31.22X0 ",.02)
 ;;O31.22X0 
 ;;9002226.02101,"913,O31.22X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X1 ",.01)
 ;;O31.22X1 
 ;;9002226.02101,"913,O31.22X1 ",.02)
 ;;O31.22X1 
 ;;9002226.02101,"913,O31.22X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X2 ",.01)
 ;;O31.22X2 
 ;;9002226.02101,"913,O31.22X2 ",.02)
 ;;O31.22X2 
 ;;9002226.02101,"913,O31.22X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X3 ",.01)
 ;;O31.22X3 
 ;;9002226.02101,"913,O31.22X3 ",.02)
 ;;O31.22X3 
 ;;9002226.02101,"913,O31.22X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X4 ",.01)
 ;;O31.22X4 
 ;;9002226.02101,"913,O31.22X4 ",.02)
 ;;O31.22X4 
 ;;9002226.02101,"913,O31.22X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X5 ",.01)
 ;;O31.22X5 
 ;;9002226.02101,"913,O31.22X5 ",.02)
 ;;O31.22X5 
 ;;9002226.02101,"913,O31.22X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.22X9 ",.01)
 ;;O31.22X9 
 ;;9002226.02101,"913,O31.22X9 ",.02)
 ;;O31.22X9 
 ;;9002226.02101,"913,O31.22X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X0 ",.01)
 ;;O31.23X0 
 ;;9002226.02101,"913,O31.23X0 ",.02)
 ;;O31.23X0 
 ;;9002226.02101,"913,O31.23X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X1 ",.01)
 ;;O31.23X1 
 ;;9002226.02101,"913,O31.23X1 ",.02)
 ;;O31.23X1 
 ;;9002226.02101,"913,O31.23X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X2 ",.01)
 ;;O31.23X2 
 ;;9002226.02101,"913,O31.23X2 ",.02)
 ;;O31.23X2 
 ;;9002226.02101,"913,O31.23X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X3 ",.01)
 ;;O31.23X3 
 ;;9002226.02101,"913,O31.23X3 ",.02)
 ;;O31.23X3 
 ;;9002226.02101,"913,O31.23X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X4 ",.01)
 ;;O31.23X4 
 ;;9002226.02101,"913,O31.23X4 ",.02)
 ;;O31.23X4 
 ;;9002226.02101,"913,O31.23X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X5 ",.01)
 ;;O31.23X5 
 ;;9002226.02101,"913,O31.23X5 ",.02)
 ;;O31.23X5 
 ;;9002226.02101,"913,O31.23X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.23X9 ",.01)
 ;;O31.23X9 
 ;;9002226.02101,"913,O31.23X9 ",.02)
 ;;O31.23X9 
 ;;9002226.02101,"913,O31.23X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X0 ",.01)
 ;;O31.30X0 
 ;;9002226.02101,"913,O31.30X0 ",.02)
 ;;O31.30X0 
 ;;9002226.02101,"913,O31.30X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X1 ",.01)
 ;;O31.30X1 
 ;;9002226.02101,"913,O31.30X1 ",.02)
 ;;O31.30X1 
 ;;9002226.02101,"913,O31.30X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X2 ",.01)
 ;;O31.30X2 
 ;;9002226.02101,"913,O31.30X2 ",.02)
 ;;O31.30X2 
 ;;9002226.02101,"913,O31.30X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X3 ",.01)
 ;;O31.30X3 
 ;;9002226.02101,"913,O31.30X3 ",.02)
 ;;O31.30X3 
 ;;9002226.02101,"913,O31.30X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X4 ",.01)
 ;;O31.30X4 
 ;;9002226.02101,"913,O31.30X4 ",.02)
 ;;O31.30X4 
 ;;9002226.02101,"913,O31.30X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X5 ",.01)
 ;;O31.30X5 
 ;;9002226.02101,"913,O31.30X5 ",.02)
 ;;O31.30X5 
 ;;9002226.02101,"913,O31.30X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.30X9 ",.01)
 ;;O31.30X9 
 ;;9002226.02101,"913,O31.30X9 ",.02)
 ;;O31.30X9 
 ;;9002226.02101,"913,O31.30X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X0 ",.01)
 ;;O31.31X0 
 ;;9002226.02101,"913,O31.31X0 ",.02)
 ;;O31.31X0 
 ;;9002226.02101,"913,O31.31X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X1 ",.01)
 ;;O31.31X1 
 ;;9002226.02101,"913,O31.31X1 ",.02)
 ;;O31.31X1 
 ;;9002226.02101,"913,O31.31X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X2 ",.01)
 ;;O31.31X2 
 ;;9002226.02101,"913,O31.31X2 ",.02)
 ;;O31.31X2 
 ;;9002226.02101,"913,O31.31X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X3 ",.01)
 ;;O31.31X3 
 ;;9002226.02101,"913,O31.31X3 ",.02)
 ;;O31.31X3 
 ;;9002226.02101,"913,O31.31X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X4 ",.01)
 ;;O31.31X4 
 ;;9002226.02101,"913,O31.31X4 ",.02)
 ;;O31.31X4 
 ;;9002226.02101,"913,O31.31X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X5 ",.01)
 ;;O31.31X5 
 ;;9002226.02101,"913,O31.31X5 ",.02)
 ;;O31.31X5 
 ;;9002226.02101,"913,O31.31X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.31X9 ",.01)
 ;;O31.31X9 
 ;;9002226.02101,"913,O31.31X9 ",.02)
 ;;O31.31X9 
 ;;9002226.02101,"913,O31.31X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X0 ",.01)
 ;;O31.32X0 
 ;;9002226.02101,"913,O31.32X0 ",.02)
 ;;O31.32X0 
 ;;9002226.02101,"913,O31.32X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X1 ",.01)
 ;;O31.32X1 
 ;;9002226.02101,"913,O31.32X1 ",.02)
 ;;O31.32X1 
 ;;9002226.02101,"913,O31.32X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X2 ",.01)
 ;;O31.32X2 
 ;;9002226.02101,"913,O31.32X2 ",.02)
 ;;O31.32X2 
 ;;9002226.02101,"913,O31.32X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X3 ",.01)
 ;;O31.32X3 
 ;;9002226.02101,"913,O31.32X3 ",.02)
 ;;O31.32X3 
 ;;9002226.02101,"913,O31.32X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X4 ",.01)
 ;;O31.32X4 
 ;;9002226.02101,"913,O31.32X4 ",.02)
 ;;O31.32X4 
 ;;9002226.02101,"913,O31.32X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X5 ",.01)
 ;;O31.32X5 
 ;;9002226.02101,"913,O31.32X5 ",.02)
 ;;O31.32X5 
 ;;9002226.02101,"913,O31.32X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.32X9 ",.01)
 ;;O31.32X9 
 ;;9002226.02101,"913,O31.32X9 ",.02)
 ;;O31.32X9 
 ;;9002226.02101,"913,O31.32X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X0 ",.01)
 ;;O31.33X0 
 ;;9002226.02101,"913,O31.33X0 ",.02)
 ;;O31.33X0 
 ;;9002226.02101,"913,O31.33X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X1 ",.01)
 ;;O31.33X1 
 ;;9002226.02101,"913,O31.33X1 ",.02)
 ;;O31.33X1 
 ;;9002226.02101,"913,O31.33X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X2 ",.01)
 ;;O31.33X2 
 ;;9002226.02101,"913,O31.33X2 ",.02)
 ;;O31.33X2 
 ;;9002226.02101,"913,O31.33X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X3 ",.01)
 ;;O31.33X3 
 ;;9002226.02101,"913,O31.33X3 ",.02)
 ;;O31.33X3 
 ;;9002226.02101,"913,O31.33X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X4 ",.01)
 ;;O31.33X4 
 ;;9002226.02101,"913,O31.33X4 ",.02)
 ;;O31.33X4 
 ;;9002226.02101,"913,O31.33X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X5 ",.01)
 ;;O31.33X5 
 ;;9002226.02101,"913,O31.33X5 ",.02)
 ;;O31.33X5 
 ;;9002226.02101,"913,O31.33X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.33X9 ",.01)
 ;;O31.33X9 
 ;;9002226.02101,"913,O31.33X9 ",.02)
 ;;O31.33X9 
 ;;9002226.02101,"913,O31.33X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X10 ",.01)
 ;;O31.8X10 
 ;;9002226.02101,"913,O31.8X10 ",.02)
 ;;O31.8X10 
 ;;9002226.02101,"913,O31.8X10 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X11 ",.01)
 ;;O31.8X11 
 ;;9002226.02101,"913,O31.8X11 ",.02)
 ;;O31.8X11 
 ;;9002226.02101,"913,O31.8X11 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X12 ",.01)
 ;;O31.8X12 
 ;;9002226.02101,"913,O31.8X12 ",.02)
 ;;O31.8X12 
 ;;9002226.02101,"913,O31.8X12 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X13 ",.01)
 ;;O31.8X13 
 ;;9002226.02101,"913,O31.8X13 ",.02)
 ;;O31.8X13 
 ;;9002226.02101,"913,O31.8X13 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X14 ",.01)
 ;;O31.8X14 
 ;;9002226.02101,"913,O31.8X14 ",.02)
 ;;O31.8X14 
 ;;9002226.02101,"913,O31.8X14 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X15 ",.01)
 ;;O31.8X15 
 ;;9002226.02101,"913,O31.8X15 ",.02)
 ;;O31.8X15 
 ;;9002226.02101,"913,O31.8X15 ",.03)
 ;;30
 ;;9002226.02101,"913,O31.8X19 ",.01)
 ;;O31.8X19 
