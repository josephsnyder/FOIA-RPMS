ATXD5P10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"169,V93.49XS ",.02)
 ;;V93.49XS 
 ;;9002226.02101,"169,V93.49XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.50XA ",.01)
 ;;V93.50XA 
 ;;9002226.02101,"169,V93.50XA ",.02)
 ;;V93.50XA 
 ;;9002226.02101,"169,V93.50XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.50XD ",.01)
 ;;V93.50XD 
 ;;9002226.02101,"169,V93.50XD ",.02)
 ;;V93.50XD 
 ;;9002226.02101,"169,V93.50XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.50XS ",.01)
 ;;V93.50XS 
 ;;9002226.02101,"169,V93.50XS ",.02)
 ;;V93.50XS 
 ;;9002226.02101,"169,V93.50XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.51XA ",.01)
 ;;V93.51XA 
 ;;9002226.02101,"169,V93.51XA ",.02)
 ;;V93.51XA 
 ;;9002226.02101,"169,V93.51XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.51XD ",.01)
 ;;V93.51XD 
 ;;9002226.02101,"169,V93.51XD ",.02)
 ;;V93.51XD 
 ;;9002226.02101,"169,V93.51XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.51XS ",.01)
 ;;V93.51XS 
 ;;9002226.02101,"169,V93.51XS ",.02)
 ;;V93.51XS 
 ;;9002226.02101,"169,V93.51XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.52XA ",.01)
 ;;V93.52XA 
 ;;9002226.02101,"169,V93.52XA ",.02)
 ;;V93.52XA 
 ;;9002226.02101,"169,V93.52XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.52XD ",.01)
 ;;V93.52XD 
 ;;9002226.02101,"169,V93.52XD ",.02)
 ;;V93.52XD 
 ;;9002226.02101,"169,V93.52XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.52XS ",.01)
 ;;V93.52XS 
 ;;9002226.02101,"169,V93.52XS ",.02)
 ;;V93.52XS 
 ;;9002226.02101,"169,V93.52XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.53XA ",.01)
 ;;V93.53XA 
 ;;9002226.02101,"169,V93.53XA ",.02)
 ;;V93.53XA 
 ;;9002226.02101,"169,V93.53XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.53XD ",.01)
 ;;V93.53XD 
 ;;9002226.02101,"169,V93.53XD ",.02)
 ;;V93.53XD 
 ;;9002226.02101,"169,V93.53XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.53XS ",.01)
 ;;V93.53XS 
 ;;9002226.02101,"169,V93.53XS ",.02)
 ;;V93.53XS 
 ;;9002226.02101,"169,V93.53XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.54XA ",.01)
 ;;V93.54XA 
 ;;9002226.02101,"169,V93.54XA ",.02)
 ;;V93.54XA 
 ;;9002226.02101,"169,V93.54XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.54XD ",.01)
 ;;V93.54XD 
 ;;9002226.02101,"169,V93.54XD ",.02)
 ;;V93.54XD 
 ;;9002226.02101,"169,V93.54XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.54XS ",.01)
 ;;V93.54XS 
 ;;9002226.02101,"169,V93.54XS ",.02)
 ;;V93.54XS 
 ;;9002226.02101,"169,V93.54XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.59XA ",.01)
 ;;V93.59XA 
 ;;9002226.02101,"169,V93.59XA ",.02)
 ;;V93.59XA 
 ;;9002226.02101,"169,V93.59XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.59XD ",.01)
 ;;V93.59XD 
 ;;9002226.02101,"169,V93.59XD ",.02)
 ;;V93.59XD 
 ;;9002226.02101,"169,V93.59XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.59XS ",.01)
 ;;V93.59XS 
 ;;9002226.02101,"169,V93.59XS ",.02)
 ;;V93.59XS 
 ;;9002226.02101,"169,V93.59XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.60XA ",.01)
 ;;V93.60XA 
 ;;9002226.02101,"169,V93.60XA ",.02)
 ;;V93.60XA 
 ;;9002226.02101,"169,V93.60XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.60XD ",.01)
 ;;V93.60XD 
 ;;9002226.02101,"169,V93.60XD ",.02)
 ;;V93.60XD 
 ;;9002226.02101,"169,V93.60XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.60XS ",.01)
 ;;V93.60XS 
 ;;9002226.02101,"169,V93.60XS ",.02)
 ;;V93.60XS 
 ;;9002226.02101,"169,V93.60XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.61XA ",.01)
 ;;V93.61XA 
 ;;9002226.02101,"169,V93.61XA ",.02)
 ;;V93.61XA 
 ;;9002226.02101,"169,V93.61XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.61XD ",.01)
 ;;V93.61XD 
 ;;9002226.02101,"169,V93.61XD ",.02)
 ;;V93.61XD 
 ;;9002226.02101,"169,V93.61XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.61XS ",.01)
 ;;V93.61XS 
 ;;9002226.02101,"169,V93.61XS ",.02)
 ;;V93.61XS 
 ;;9002226.02101,"169,V93.61XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.62XA ",.01)
 ;;V93.62XA 
 ;;9002226.02101,"169,V93.62XA ",.02)
 ;;V93.62XA 
 ;;9002226.02101,"169,V93.62XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.62XD ",.01)
 ;;V93.62XD 
 ;;9002226.02101,"169,V93.62XD ",.02)
 ;;V93.62XD 
 ;;9002226.02101,"169,V93.62XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.62XS ",.01)
 ;;V93.62XS 
 ;;9002226.02101,"169,V93.62XS ",.02)
 ;;V93.62XS 
 ;;9002226.02101,"169,V93.62XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.63XA ",.01)
 ;;V93.63XA 
 ;;9002226.02101,"169,V93.63XA ",.02)
 ;;V93.63XA 
 ;;9002226.02101,"169,V93.63XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.63XD ",.01)
 ;;V93.63XD 
 ;;9002226.02101,"169,V93.63XD ",.02)
 ;;V93.63XD 
 ;;9002226.02101,"169,V93.63XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.63XS ",.01)
 ;;V93.63XS 
 ;;9002226.02101,"169,V93.63XS ",.02)
 ;;V93.63XS 
 ;;9002226.02101,"169,V93.63XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.64XA ",.01)
 ;;V93.64XA 
 ;;9002226.02101,"169,V93.64XA ",.02)
 ;;V93.64XA 
 ;;9002226.02101,"169,V93.64XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.64XD ",.01)
 ;;V93.64XD 
 ;;9002226.02101,"169,V93.64XD ",.02)
 ;;V93.64XD 
 ;;9002226.02101,"169,V93.64XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.64XS ",.01)
 ;;V93.64XS 
 ;;9002226.02101,"169,V93.64XS ",.02)
 ;;V93.64XS 
 ;;9002226.02101,"169,V93.64XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.69XA ",.01)
 ;;V93.69XA 
 ;;9002226.02101,"169,V93.69XA ",.02)
 ;;V93.69XA 
 ;;9002226.02101,"169,V93.69XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.69XD ",.01)
 ;;V93.69XD 
 ;;9002226.02101,"169,V93.69XD ",.02)
 ;;V93.69XD 
 ;;9002226.02101,"169,V93.69XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.69XS ",.01)
 ;;V93.69XS 
 ;;9002226.02101,"169,V93.69XS ",.02)
 ;;V93.69XS 
 ;;9002226.02101,"169,V93.69XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.80XA ",.01)
 ;;V93.80XA 
 ;;9002226.02101,"169,V93.80XA ",.02)
 ;;V93.80XA 
 ;;9002226.02101,"169,V93.80XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.80XD ",.01)
 ;;V93.80XD 
 ;;9002226.02101,"169,V93.80XD ",.02)
 ;;V93.80XD 
 ;;9002226.02101,"169,V93.80XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.80XS ",.01)
 ;;V93.80XS 
 ;;9002226.02101,"169,V93.80XS ",.02)
 ;;V93.80XS 
 ;;9002226.02101,"169,V93.80XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.81XA ",.01)
 ;;V93.81XA 
 ;;9002226.02101,"169,V93.81XA ",.02)
 ;;V93.81XA 
 ;;9002226.02101,"169,V93.81XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.81XD ",.01)
 ;;V93.81XD 
 ;;9002226.02101,"169,V93.81XD ",.02)
 ;;V93.81XD 
 ;;9002226.02101,"169,V93.81XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.81XS ",.01)
 ;;V93.81XS 
 ;;9002226.02101,"169,V93.81XS ",.02)
 ;;V93.81XS 
 ;;9002226.02101,"169,V93.81XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.82XA ",.01)
 ;;V93.82XA 
 ;;9002226.02101,"169,V93.82XA ",.02)
 ;;V93.82XA 
 ;;9002226.02101,"169,V93.82XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.82XD ",.01)
 ;;V93.82XD 
 ;;9002226.02101,"169,V93.82XD ",.02)
 ;;V93.82XD 
 ;;9002226.02101,"169,V93.82XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.82XS ",.01)
 ;;V93.82XS 
 ;;9002226.02101,"169,V93.82XS ",.02)
 ;;V93.82XS 
 ;;9002226.02101,"169,V93.82XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.83XA ",.01)
 ;;V93.83XA 
 ;;9002226.02101,"169,V93.83XA ",.02)
 ;;V93.83XA 
 ;;9002226.02101,"169,V93.83XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.83XD ",.01)
 ;;V93.83XD 
 ;;9002226.02101,"169,V93.83XD ",.02)
 ;;V93.83XD 
 ;;9002226.02101,"169,V93.83XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.83XS ",.01)
 ;;V93.83XS 
 ;;9002226.02101,"169,V93.83XS ",.02)
 ;;V93.83XS 
 ;;9002226.02101,"169,V93.83XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.84XA ",.01)
 ;;V93.84XA 
 ;;9002226.02101,"169,V93.84XA ",.02)
 ;;V93.84XA 
 ;;9002226.02101,"169,V93.84XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.84XD ",.01)
 ;;V93.84XD 
 ;;9002226.02101,"169,V93.84XD ",.02)
 ;;V93.84XD 
 ;;9002226.02101,"169,V93.84XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.84XS ",.01)
 ;;V93.84XS 
 ;;9002226.02101,"169,V93.84XS ",.02)
 ;;V93.84XS 
 ;;9002226.02101,"169,V93.84XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.85XA ",.01)
 ;;V93.85XA 
 ;;9002226.02101,"169,V93.85XA ",.02)
 ;;V93.85XA 
 ;;9002226.02101,"169,V93.85XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.85XD ",.01)
 ;;V93.85XD 
 ;;9002226.02101,"169,V93.85XD ",.02)
 ;;V93.85XD 
 ;;9002226.02101,"169,V93.85XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.85XS ",.01)
 ;;V93.85XS 
 ;;9002226.02101,"169,V93.85XS ",.02)
 ;;V93.85XS 
 ;;9002226.02101,"169,V93.85XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.86XA ",.01)
 ;;V93.86XA 
 ;;9002226.02101,"169,V93.86XA ",.02)
 ;;V93.86XA 
 ;;9002226.02101,"169,V93.86XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.86XD ",.01)
 ;;V93.86XD 
 ;;9002226.02101,"169,V93.86XD ",.02)
 ;;V93.86XD 
 ;;9002226.02101,"169,V93.86XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.86XS ",.01)
 ;;V93.86XS 
 ;;9002226.02101,"169,V93.86XS ",.02)
 ;;V93.86XS 
 ;;9002226.02101,"169,V93.86XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.87XA ",.01)
 ;;V93.87XA 
 ;;9002226.02101,"169,V93.87XA ",.02)
 ;;V93.87XA 
 ;;9002226.02101,"169,V93.87XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.87XD ",.01)
 ;;V93.87XD 
 ;;9002226.02101,"169,V93.87XD ",.02)
 ;;V93.87XD 
 ;;9002226.02101,"169,V93.87XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.87XS ",.01)
 ;;V93.87XS 
 ;;9002226.02101,"169,V93.87XS ",.02)
 ;;V93.87XS 
 ;;9002226.02101,"169,V93.87XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.88XA ",.01)
 ;;V93.88XA 
 ;;9002226.02101,"169,V93.88XA ",.02)
 ;;V93.88XA 
 ;;9002226.02101,"169,V93.88XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.88XD ",.01)
 ;;V93.88XD 
 ;;9002226.02101,"169,V93.88XD ",.02)
 ;;V93.88XD 
 ;;9002226.02101,"169,V93.88XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.88XS ",.01)
 ;;V93.88XS 
 ;;9002226.02101,"169,V93.88XS ",.02)
 ;;V93.88XS 
 ;;9002226.02101,"169,V93.88XS ",.03)
 ;;30
 ;;9002226.02101,"169,V93.89XA ",.01)
 ;;V93.89XA 
 ;;9002226.02101,"169,V93.89XA ",.02)
 ;;V93.89XA 
 ;;9002226.02101,"169,V93.89XA ",.03)
 ;;30
 ;;9002226.02101,"169,V93.89XD ",.01)
 ;;V93.89XD 
 ;;9002226.02101,"169,V93.89XD ",.02)
 ;;V93.89XD 
 ;;9002226.02101,"169,V93.89XD ",.03)
 ;;30
 ;;9002226.02101,"169,V93.89XS ",.01)
 ;;V93.89XS 
 ;;9002226.02101,"169,V93.89XS ",.02)
 ;;V93.89XS 
 ;;9002226.02101,"169,V93.89XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.0XXA ",.01)
 ;;V94.0XXA 
 ;;9002226.02101,"169,V94.0XXA ",.02)
 ;;V94.0XXA 
 ;;9002226.02101,"169,V94.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.0XXD ",.01)
 ;;V94.0XXD 
 ;;9002226.02101,"169,V94.0XXD ",.02)
 ;;V94.0XXD 
 ;;9002226.02101,"169,V94.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.0XXS ",.01)
 ;;V94.0XXS 
 ;;9002226.02101,"169,V94.0XXS ",.02)
 ;;V94.0XXS 
 ;;9002226.02101,"169,V94.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.11XA ",.01)
 ;;V94.11XA 
 ;;9002226.02101,"169,V94.11XA ",.02)
 ;;V94.11XA 
 ;;9002226.02101,"169,V94.11XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.11XD ",.01)
 ;;V94.11XD 
 ;;9002226.02101,"169,V94.11XD ",.02)
 ;;V94.11XD 
 ;;9002226.02101,"169,V94.11XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.11XS ",.01)
 ;;V94.11XS 
 ;;9002226.02101,"169,V94.11XS ",.02)
 ;;V94.11XS 
 ;;9002226.02101,"169,V94.11XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.12XA ",.01)
 ;;V94.12XA 
 ;;9002226.02101,"169,V94.12XA ",.02)
 ;;V94.12XA 
 ;;9002226.02101,"169,V94.12XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.12XD ",.01)
 ;;V94.12XD 
 ;;9002226.02101,"169,V94.12XD ",.02)
 ;;V94.12XD 
 ;;9002226.02101,"169,V94.12XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.12XS ",.01)
 ;;V94.12XS 
 ;;9002226.02101,"169,V94.12XS ",.02)
 ;;V94.12XS 
 ;;9002226.02101,"169,V94.12XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.21XA ",.01)
 ;;V94.21XA 
 ;;9002226.02101,"169,V94.21XA ",.02)
 ;;V94.21XA 
 ;;9002226.02101,"169,V94.21XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.21XD ",.01)
 ;;V94.21XD 
 ;;9002226.02101,"169,V94.21XD ",.02)
 ;;V94.21XD 
 ;;9002226.02101,"169,V94.21XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.21XS ",.01)
 ;;V94.21XS 
 ;;9002226.02101,"169,V94.21XS ",.02)
 ;;V94.21XS 
 ;;9002226.02101,"169,V94.21XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.22XA ",.01)
 ;;V94.22XA 
 ;;9002226.02101,"169,V94.22XA ",.02)
 ;;V94.22XA 
 ;;9002226.02101,"169,V94.22XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.22XD ",.01)
 ;;V94.22XD 
 ;;9002226.02101,"169,V94.22XD ",.02)
 ;;V94.22XD 
 ;;9002226.02101,"169,V94.22XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.22XS ",.01)
 ;;V94.22XS 
 ;;9002226.02101,"169,V94.22XS ",.02)
 ;;V94.22XS 
 ;;9002226.02101,"169,V94.22XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.31XA ",.01)
 ;;V94.31XA 
 ;;9002226.02101,"169,V94.31XA ",.02)
 ;;V94.31XA 
 ;;9002226.02101,"169,V94.31XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.31XD ",.01)
 ;;V94.31XD 
 ;;9002226.02101,"169,V94.31XD ",.02)
 ;;V94.31XD 
 ;;9002226.02101,"169,V94.31XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.31XS ",.01)
 ;;V94.31XS 
 ;;9002226.02101,"169,V94.31XS ",.02)
 ;;V94.31XS 
 ;;9002226.02101,"169,V94.31XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.32XA ",.01)
 ;;V94.32XA 
 ;;9002226.02101,"169,V94.32XA ",.02)
 ;;V94.32XA 
 ;;9002226.02101,"169,V94.32XA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.32XD ",.01)
 ;;V94.32XD 
 ;;9002226.02101,"169,V94.32XD ",.02)
 ;;V94.32XD 
 ;;9002226.02101,"169,V94.32XD ",.03)
 ;;30
 ;;9002226.02101,"169,V94.32XS ",.01)
 ;;V94.32XS 
 ;;9002226.02101,"169,V94.32XS ",.02)
 ;;V94.32XS 
 ;;9002226.02101,"169,V94.32XS ",.03)
 ;;30
 ;;9002226.02101,"169,V94.4XXA ",.01)
 ;;V94.4XXA 
 ;;9002226.02101,"169,V94.4XXA ",.02)
 ;;V94.4XXA 
 ;;9002226.02101,"169,V94.4XXA ",.03)
 ;;30
 ;;9002226.02101,"169,V94.4XXD ",.01)
 ;;V94.4XXD 
 ;;9002226.02101,"169,V94.4XXD ",.02)
 ;;V94.4XXD 
 ;;9002226.02101,"169,V94.4XXD ",.03)
 ;;30
