ATXD5Q10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"170,T56.811D ",.03)
 ;;30
 ;;9002226.02101,"170,T56.811S ",.01)
 ;;T56.811S 
 ;;9002226.02101,"170,T56.811S ",.02)
 ;;T56.811S 
 ;;9002226.02101,"170,T56.811S ",.03)
 ;;30
 ;;9002226.02101,"170,T56.891A ",.01)
 ;;T56.891A 
 ;;9002226.02101,"170,T56.891A ",.02)
 ;;T56.891A 
 ;;9002226.02101,"170,T56.891A ",.03)
 ;;30
 ;;9002226.02101,"170,T56.891D ",.01)
 ;;T56.891D 
 ;;9002226.02101,"170,T56.891D ",.02)
 ;;T56.891D 
 ;;9002226.02101,"170,T56.891D ",.03)
 ;;30
 ;;9002226.02101,"170,T56.891S ",.01)
 ;;T56.891S 
 ;;9002226.02101,"170,T56.891S ",.02)
 ;;T56.891S 
 ;;9002226.02101,"170,T56.891S ",.03)
 ;;30
 ;;9002226.02101,"170,T56.91XA ",.01)
 ;;T56.91XA 
 ;;9002226.02101,"170,T56.91XA ",.02)
 ;;T56.91XA 
 ;;9002226.02101,"170,T56.91XA ",.03)
 ;;30
 ;;9002226.02101,"170,T56.91XD ",.01)
 ;;T56.91XD 
 ;;9002226.02101,"170,T56.91XD ",.02)
 ;;T56.91XD 
 ;;9002226.02101,"170,T56.91XD ",.03)
 ;;30
 ;;9002226.02101,"170,T56.91XS ",.01)
 ;;T56.91XS 
 ;;9002226.02101,"170,T56.91XS ",.02)
 ;;T56.91XS 
 ;;9002226.02101,"170,T56.91XS ",.03)
 ;;30
 ;;9002226.02101,"170,T57.0X1A ",.01)
 ;;T57.0X1A 
 ;;9002226.02101,"170,T57.0X1A ",.02)
 ;;T57.0X1A 
 ;;9002226.02101,"170,T57.0X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T57.0X1D ",.01)
 ;;T57.0X1D 
 ;;9002226.02101,"170,T57.0X1D ",.02)
 ;;T57.0X1D 
 ;;9002226.02101,"170,T57.0X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T57.0X1S ",.01)
 ;;T57.0X1S 
 ;;9002226.02101,"170,T57.0X1S ",.02)
 ;;T57.0X1S 
 ;;9002226.02101,"170,T57.0X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T57.1X1A ",.01)
 ;;T57.1X1A 
 ;;9002226.02101,"170,T57.1X1A ",.02)
 ;;T57.1X1A 
 ;;9002226.02101,"170,T57.1X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T57.1X1D ",.01)
 ;;T57.1X1D 
 ;;9002226.02101,"170,T57.1X1D ",.02)
 ;;T57.1X1D 
 ;;9002226.02101,"170,T57.1X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T57.1X1S ",.01)
 ;;T57.1X1S 
 ;;9002226.02101,"170,T57.1X1S ",.02)
 ;;T57.1X1S 
 ;;9002226.02101,"170,T57.1X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T57.2X1A ",.01)
 ;;T57.2X1A 
 ;;9002226.02101,"170,T57.2X1A ",.02)
 ;;T57.2X1A 
 ;;9002226.02101,"170,T57.2X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T57.2X1D ",.01)
 ;;T57.2X1D 
 ;;9002226.02101,"170,T57.2X1D ",.02)
 ;;T57.2X1D 
 ;;9002226.02101,"170,T57.2X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T57.2X1S ",.01)
 ;;T57.2X1S 
 ;;9002226.02101,"170,T57.2X1S ",.02)
 ;;T57.2X1S 
 ;;9002226.02101,"170,T57.2X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T57.3X1A ",.01)
 ;;T57.3X1A 
 ;;9002226.02101,"170,T57.3X1A ",.02)
 ;;T57.3X1A 
 ;;9002226.02101,"170,T57.3X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T57.3X1D ",.01)
 ;;T57.3X1D 
 ;;9002226.02101,"170,T57.3X1D ",.02)
 ;;T57.3X1D 
 ;;9002226.02101,"170,T57.3X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T57.3X1S ",.01)
 ;;T57.3X1S 
 ;;9002226.02101,"170,T57.3X1S ",.02)
 ;;T57.3X1S 
 ;;9002226.02101,"170,T57.3X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T57.8X1A ",.01)
 ;;T57.8X1A 
 ;;9002226.02101,"170,T57.8X1A ",.02)
 ;;T57.8X1A 
 ;;9002226.02101,"170,T57.8X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T57.8X1D ",.01)
 ;;T57.8X1D 
 ;;9002226.02101,"170,T57.8X1D ",.02)
 ;;T57.8X1D 
 ;;9002226.02101,"170,T57.8X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T57.8X1S ",.01)
 ;;T57.8X1S 
 ;;9002226.02101,"170,T57.8X1S ",.02)
 ;;T57.8X1S 
 ;;9002226.02101,"170,T57.8X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T57.91XA ",.01)
 ;;T57.91XA 
 ;;9002226.02101,"170,T57.91XA ",.02)
 ;;T57.91XA 
 ;;9002226.02101,"170,T57.91XA ",.03)
 ;;30
 ;;9002226.02101,"170,T57.91XD ",.01)
 ;;T57.91XD 
 ;;9002226.02101,"170,T57.91XD ",.02)
 ;;T57.91XD 
 ;;9002226.02101,"170,T57.91XD ",.03)
 ;;30
 ;;9002226.02101,"170,T57.91XS ",.01)
 ;;T57.91XS 
 ;;9002226.02101,"170,T57.91XS ",.02)
 ;;T57.91XS 
 ;;9002226.02101,"170,T57.91XS ",.03)
 ;;30
 ;;9002226.02101,"170,T58.01XA ",.01)
 ;;T58.01XA 
 ;;9002226.02101,"170,T58.01XA ",.02)
 ;;T58.01XA 
 ;;9002226.02101,"170,T58.01XA ",.03)
 ;;30
 ;;9002226.02101,"170,T58.01XD ",.01)
 ;;T58.01XD 
 ;;9002226.02101,"170,T58.01XD ",.02)
 ;;T58.01XD 
 ;;9002226.02101,"170,T58.01XD ",.03)
 ;;30
 ;;9002226.02101,"170,T58.01XS ",.01)
 ;;T58.01XS 
 ;;9002226.02101,"170,T58.01XS ",.02)
 ;;T58.01XS 
 ;;9002226.02101,"170,T58.01XS ",.03)
 ;;30
 ;;9002226.02101,"170,T58.11XA ",.01)
 ;;T58.11XA 
 ;;9002226.02101,"170,T58.11XA ",.02)
 ;;T58.11XA 
 ;;9002226.02101,"170,T58.11XA ",.03)
 ;;30
 ;;9002226.02101,"170,T58.11XD ",.01)
 ;;T58.11XD 
 ;;9002226.02101,"170,T58.11XD ",.02)
 ;;T58.11XD 
 ;;9002226.02101,"170,T58.11XD ",.03)
 ;;30
 ;;9002226.02101,"170,T58.11XS ",.01)
 ;;T58.11XS 
 ;;9002226.02101,"170,T58.11XS ",.02)
 ;;T58.11XS 
 ;;9002226.02101,"170,T58.11XS ",.03)
 ;;30
 ;;9002226.02101,"170,T58.2X1A ",.01)
 ;;T58.2X1A 
 ;;9002226.02101,"170,T58.2X1A ",.02)
 ;;T58.2X1A 
 ;;9002226.02101,"170,T58.2X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T58.2X1D ",.01)
 ;;T58.2X1D 
 ;;9002226.02101,"170,T58.2X1D ",.02)
 ;;T58.2X1D 
 ;;9002226.02101,"170,T58.2X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T58.2X1S ",.01)
 ;;T58.2X1S 
 ;;9002226.02101,"170,T58.2X1S ",.02)
 ;;T58.2X1S 
 ;;9002226.02101,"170,T58.2X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T58.8X1A ",.01)
 ;;T58.8X1A 
 ;;9002226.02101,"170,T58.8X1A ",.02)
 ;;T58.8X1A 
 ;;9002226.02101,"170,T58.8X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T58.8X1D ",.01)
 ;;T58.8X1D 
 ;;9002226.02101,"170,T58.8X1D ",.02)
 ;;T58.8X1D 
 ;;9002226.02101,"170,T58.8X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T58.8X1S ",.01)
 ;;T58.8X1S 
 ;;9002226.02101,"170,T58.8X1S ",.02)
 ;;T58.8X1S 
 ;;9002226.02101,"170,T58.8X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T58.91XA ",.01)
 ;;T58.91XA 
 ;;9002226.02101,"170,T58.91XA ",.02)
 ;;T58.91XA 
 ;;9002226.02101,"170,T58.91XA ",.03)
 ;;30
 ;;9002226.02101,"170,T58.91XD ",.01)
 ;;T58.91XD 
 ;;9002226.02101,"170,T58.91XD ",.02)
 ;;T58.91XD 
 ;;9002226.02101,"170,T58.91XD ",.03)
 ;;30
 ;;9002226.02101,"170,T58.91XS ",.01)
 ;;T58.91XS 
 ;;9002226.02101,"170,T58.91XS ",.02)
 ;;T58.91XS 
 ;;9002226.02101,"170,T58.91XS ",.03)
 ;;30
 ;;9002226.02101,"170,T59.0X1A ",.01)
 ;;T59.0X1A 
 ;;9002226.02101,"170,T59.0X1A ",.02)
 ;;T59.0X1A 
 ;;9002226.02101,"170,T59.0X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.0X1D ",.01)
 ;;T59.0X1D 
 ;;9002226.02101,"170,T59.0X1D ",.02)
 ;;T59.0X1D 
 ;;9002226.02101,"170,T59.0X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.0X1S ",.01)
 ;;T59.0X1S 
 ;;9002226.02101,"170,T59.0X1S ",.02)
 ;;T59.0X1S 
 ;;9002226.02101,"170,T59.0X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.1X1A ",.01)
 ;;T59.1X1A 
 ;;9002226.02101,"170,T59.1X1A ",.02)
 ;;T59.1X1A 
 ;;9002226.02101,"170,T59.1X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.1X1D ",.01)
 ;;T59.1X1D 
 ;;9002226.02101,"170,T59.1X1D ",.02)
 ;;T59.1X1D 
 ;;9002226.02101,"170,T59.1X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.1X1S ",.01)
 ;;T59.1X1S 
 ;;9002226.02101,"170,T59.1X1S ",.02)
 ;;T59.1X1S 
 ;;9002226.02101,"170,T59.1X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.2X1A ",.01)
 ;;T59.2X1A 
 ;;9002226.02101,"170,T59.2X1A ",.02)
 ;;T59.2X1A 
 ;;9002226.02101,"170,T59.2X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.2X1D ",.01)
 ;;T59.2X1D 
 ;;9002226.02101,"170,T59.2X1D ",.02)
 ;;T59.2X1D 
 ;;9002226.02101,"170,T59.2X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.2X1S ",.01)
 ;;T59.2X1S 
 ;;9002226.02101,"170,T59.2X1S ",.02)
 ;;T59.2X1S 
 ;;9002226.02101,"170,T59.2X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.3X1A ",.01)
 ;;T59.3X1A 
 ;;9002226.02101,"170,T59.3X1A ",.02)
 ;;T59.3X1A 
 ;;9002226.02101,"170,T59.3X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.3X1D ",.01)
 ;;T59.3X1D 
 ;;9002226.02101,"170,T59.3X1D ",.02)
 ;;T59.3X1D 
 ;;9002226.02101,"170,T59.3X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.3X1S ",.01)
 ;;T59.3X1S 
 ;;9002226.02101,"170,T59.3X1S ",.02)
 ;;T59.3X1S 
 ;;9002226.02101,"170,T59.3X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.4X1A ",.01)
 ;;T59.4X1A 
 ;;9002226.02101,"170,T59.4X1A ",.02)
 ;;T59.4X1A 
 ;;9002226.02101,"170,T59.4X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.4X1D ",.01)
 ;;T59.4X1D 
 ;;9002226.02101,"170,T59.4X1D ",.02)
 ;;T59.4X1D 
 ;;9002226.02101,"170,T59.4X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.4X1S ",.01)
 ;;T59.4X1S 
 ;;9002226.02101,"170,T59.4X1S ",.02)
 ;;T59.4X1S 
 ;;9002226.02101,"170,T59.4X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.5X1A ",.01)
 ;;T59.5X1A 
 ;;9002226.02101,"170,T59.5X1A ",.02)
 ;;T59.5X1A 
 ;;9002226.02101,"170,T59.5X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.5X1D ",.01)
 ;;T59.5X1D 
 ;;9002226.02101,"170,T59.5X1D ",.02)
 ;;T59.5X1D 
 ;;9002226.02101,"170,T59.5X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.5X1S ",.01)
 ;;T59.5X1S 
 ;;9002226.02101,"170,T59.5X1S ",.02)
 ;;T59.5X1S 
 ;;9002226.02101,"170,T59.5X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.6X1A ",.01)
 ;;T59.6X1A 
 ;;9002226.02101,"170,T59.6X1A ",.02)
 ;;T59.6X1A 
 ;;9002226.02101,"170,T59.6X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.6X1D ",.01)
 ;;T59.6X1D 
 ;;9002226.02101,"170,T59.6X1D ",.02)
 ;;T59.6X1D 
 ;;9002226.02101,"170,T59.6X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.6X1S ",.01)
 ;;T59.6X1S 
 ;;9002226.02101,"170,T59.6X1S ",.02)
 ;;T59.6X1S 
 ;;9002226.02101,"170,T59.6X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.7X1A ",.01)
 ;;T59.7X1A 
 ;;9002226.02101,"170,T59.7X1A ",.02)
 ;;T59.7X1A 
 ;;9002226.02101,"170,T59.7X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.7X1D ",.01)
 ;;T59.7X1D 
 ;;9002226.02101,"170,T59.7X1D ",.02)
 ;;T59.7X1D 
 ;;9002226.02101,"170,T59.7X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.7X1S ",.01)
 ;;T59.7X1S 
 ;;9002226.02101,"170,T59.7X1S ",.02)
 ;;T59.7X1S 
 ;;9002226.02101,"170,T59.7X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.811A ",.01)
 ;;T59.811A 
 ;;9002226.02101,"170,T59.811A ",.02)
 ;;T59.811A 
 ;;9002226.02101,"170,T59.811A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.811D ",.01)
 ;;T59.811D 
 ;;9002226.02101,"170,T59.811D ",.02)
 ;;T59.811D 
 ;;9002226.02101,"170,T59.811D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.811S ",.01)
 ;;T59.811S 
 ;;9002226.02101,"170,T59.811S ",.02)
 ;;T59.811S 
 ;;9002226.02101,"170,T59.811S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.891A ",.01)
 ;;T59.891A 
 ;;9002226.02101,"170,T59.891A ",.02)
 ;;T59.891A 
 ;;9002226.02101,"170,T59.891A ",.03)
 ;;30
 ;;9002226.02101,"170,T59.891D ",.01)
 ;;T59.891D 
 ;;9002226.02101,"170,T59.891D ",.02)
 ;;T59.891D 
 ;;9002226.02101,"170,T59.891D ",.03)
 ;;30
 ;;9002226.02101,"170,T59.891S ",.01)
 ;;T59.891S 
 ;;9002226.02101,"170,T59.891S ",.02)
 ;;T59.891S 
 ;;9002226.02101,"170,T59.891S ",.03)
 ;;30
 ;;9002226.02101,"170,T59.91XA ",.01)
 ;;T59.91XA 
 ;;9002226.02101,"170,T59.91XA ",.02)
 ;;T59.91XA 
 ;;9002226.02101,"170,T59.91XA ",.03)
 ;;30
 ;;9002226.02101,"170,T59.91XD ",.01)
 ;;T59.91XD 
 ;;9002226.02101,"170,T59.91XD ",.02)
 ;;T59.91XD 
 ;;9002226.02101,"170,T59.91XD ",.03)
 ;;30
 ;;9002226.02101,"170,T59.91XS ",.01)
 ;;T59.91XS 
 ;;9002226.02101,"170,T59.91XS ",.02)
 ;;T59.91XS 
 ;;9002226.02101,"170,T59.91XS ",.03)
 ;;30
 ;;9002226.02101,"170,T60.0X1A ",.01)
 ;;T60.0X1A 
 ;;9002226.02101,"170,T60.0X1A ",.02)
 ;;T60.0X1A 
 ;;9002226.02101,"170,T60.0X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.0X1D ",.01)
 ;;T60.0X1D 
 ;;9002226.02101,"170,T60.0X1D ",.02)
 ;;T60.0X1D 
 ;;9002226.02101,"170,T60.0X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T60.0X1S ",.01)
 ;;T60.0X1S 
 ;;9002226.02101,"170,T60.0X1S ",.02)
 ;;T60.0X1S 
 ;;9002226.02101,"170,T60.0X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T60.1X1A ",.01)
 ;;T60.1X1A 
 ;;9002226.02101,"170,T60.1X1A ",.02)
 ;;T60.1X1A 
 ;;9002226.02101,"170,T60.1X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.1X1D ",.01)
 ;;T60.1X1D 
 ;;9002226.02101,"170,T60.1X1D ",.02)
 ;;T60.1X1D 
 ;;9002226.02101,"170,T60.1X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T60.1X1S ",.01)
 ;;T60.1X1S 
 ;;9002226.02101,"170,T60.1X1S ",.02)
 ;;T60.1X1S 
 ;;9002226.02101,"170,T60.1X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T60.2X1A ",.01)
 ;;T60.2X1A 
 ;;9002226.02101,"170,T60.2X1A ",.02)
 ;;T60.2X1A 
 ;;9002226.02101,"170,T60.2X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.2X1D ",.01)
 ;;T60.2X1D 
 ;;9002226.02101,"170,T60.2X1D ",.02)
 ;;T60.2X1D 
 ;;9002226.02101,"170,T60.2X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T60.2X1S ",.01)
 ;;T60.2X1S 
 ;;9002226.02101,"170,T60.2X1S ",.02)
 ;;T60.2X1S 
 ;;9002226.02101,"170,T60.2X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T60.3X1A ",.01)
 ;;T60.3X1A 
 ;;9002226.02101,"170,T60.3X1A ",.02)
 ;;T60.3X1A 
 ;;9002226.02101,"170,T60.3X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.3X1D ",.01)
 ;;T60.3X1D 
 ;;9002226.02101,"170,T60.3X1D ",.02)
 ;;T60.3X1D 
 ;;9002226.02101,"170,T60.3X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T60.3X1S ",.01)
 ;;T60.3X1S 
 ;;9002226.02101,"170,T60.3X1S ",.02)
 ;;T60.3X1S 
 ;;9002226.02101,"170,T60.3X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T60.4X1A ",.01)
 ;;T60.4X1A 
 ;;9002226.02101,"170,T60.4X1A ",.02)
 ;;T60.4X1A 
 ;;9002226.02101,"170,T60.4X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.4X1D ",.01)
 ;;T60.4X1D 
 ;;9002226.02101,"170,T60.4X1D ",.02)
 ;;T60.4X1D 
 ;;9002226.02101,"170,T60.4X1D ",.03)
 ;;30
 ;;9002226.02101,"170,T60.4X1S ",.01)
 ;;T60.4X1S 
 ;;9002226.02101,"170,T60.4X1S ",.02)
 ;;T60.4X1S 
 ;;9002226.02101,"170,T60.4X1S ",.03)
 ;;30
 ;;9002226.02101,"170,T60.8X1A ",.01)
 ;;T60.8X1A 
 ;;9002226.02101,"170,T60.8X1A ",.02)
 ;;T60.8X1A 
 ;;9002226.02101,"170,T60.8X1A ",.03)
 ;;30
 ;;9002226.02101,"170,T60.8X1D ",.01)
 ;;T60.8X1D 
