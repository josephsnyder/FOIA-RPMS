ATXD5O16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"168,V39.40XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.49XA ",.01)
 ;;V39.49XA 
 ;;9002226.02101,"168,V39.49XA ",.02)
 ;;V39.49XA 
 ;;9002226.02101,"168,V39.49XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.49XD ",.01)
 ;;V39.49XD 
 ;;9002226.02101,"168,V39.49XD ",.02)
 ;;V39.49XD 
 ;;9002226.02101,"168,V39.49XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.49XS ",.01)
 ;;V39.49XS 
 ;;9002226.02101,"168,V39.49XS ",.02)
 ;;V39.49XS 
 ;;9002226.02101,"168,V39.49XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.50XA ",.01)
 ;;V39.50XA 
 ;;9002226.02101,"168,V39.50XA ",.02)
 ;;V39.50XA 
 ;;9002226.02101,"168,V39.50XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.50XD ",.01)
 ;;V39.50XD 
 ;;9002226.02101,"168,V39.50XD ",.02)
 ;;V39.50XD 
 ;;9002226.02101,"168,V39.50XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.50XS ",.01)
 ;;V39.50XS 
 ;;9002226.02101,"168,V39.50XS ",.02)
 ;;V39.50XS 
 ;;9002226.02101,"168,V39.50XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.59XA ",.01)
 ;;V39.59XA 
 ;;9002226.02101,"168,V39.59XA ",.02)
 ;;V39.59XA 
 ;;9002226.02101,"168,V39.59XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.59XD ",.01)
 ;;V39.59XD 
 ;;9002226.02101,"168,V39.59XD ",.02)
 ;;V39.59XD 
 ;;9002226.02101,"168,V39.59XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.59XS ",.01)
 ;;V39.59XS 
 ;;9002226.02101,"168,V39.59XS ",.02)
 ;;V39.59XS 
 ;;9002226.02101,"168,V39.59XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.60XA ",.01)
 ;;V39.60XA 
 ;;9002226.02101,"168,V39.60XA ",.02)
 ;;V39.60XA 
 ;;9002226.02101,"168,V39.60XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.60XD ",.01)
 ;;V39.60XD 
 ;;9002226.02101,"168,V39.60XD ",.02)
 ;;V39.60XD 
 ;;9002226.02101,"168,V39.60XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.60XS ",.01)
 ;;V39.60XS 
 ;;9002226.02101,"168,V39.60XS ",.02)
 ;;V39.60XS 
 ;;9002226.02101,"168,V39.60XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.69XA ",.01)
 ;;V39.69XA 
 ;;9002226.02101,"168,V39.69XA ",.02)
 ;;V39.69XA 
 ;;9002226.02101,"168,V39.69XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.69XD ",.01)
 ;;V39.69XD 
 ;;9002226.02101,"168,V39.69XD ",.02)
 ;;V39.69XD 
 ;;9002226.02101,"168,V39.69XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.69XS ",.01)
 ;;V39.69XS 
 ;;9002226.02101,"168,V39.69XS ",.02)
 ;;V39.69XS 
 ;;9002226.02101,"168,V39.69XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.81XA ",.01)
 ;;V39.81XA 
 ;;9002226.02101,"168,V39.81XA ",.02)
 ;;V39.81XA 
 ;;9002226.02101,"168,V39.81XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.81XD ",.01)
 ;;V39.81XD 
 ;;9002226.02101,"168,V39.81XD ",.02)
 ;;V39.81XD 
 ;;9002226.02101,"168,V39.81XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.81XS ",.01)
 ;;V39.81XS 
 ;;9002226.02101,"168,V39.81XS ",.02)
 ;;V39.81XS 
 ;;9002226.02101,"168,V39.81XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.89XA ",.01)
 ;;V39.89XA 
 ;;9002226.02101,"168,V39.89XA ",.02)
 ;;V39.89XA 
 ;;9002226.02101,"168,V39.89XA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.89XD ",.01)
 ;;V39.89XD 
 ;;9002226.02101,"168,V39.89XD ",.02)
 ;;V39.89XD 
 ;;9002226.02101,"168,V39.89XD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.89XS ",.01)
 ;;V39.89XS 
 ;;9002226.02101,"168,V39.89XS ",.02)
 ;;V39.89XS 
 ;;9002226.02101,"168,V39.89XS ",.03)
 ;;30
 ;;9002226.02101,"168,V39.9XXA ",.01)
 ;;V39.9XXA 
 ;;9002226.02101,"168,V39.9XXA ",.02)
 ;;V39.9XXA 
 ;;9002226.02101,"168,V39.9XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V39.9XXD ",.01)
 ;;V39.9XXD 
 ;;9002226.02101,"168,V39.9XXD ",.02)
 ;;V39.9XXD 
 ;;9002226.02101,"168,V39.9XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V39.9XXS ",.01)
 ;;V39.9XXS 
 ;;9002226.02101,"168,V39.9XXS ",.02)
 ;;V39.9XXS 
 ;;9002226.02101,"168,V39.9XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.0XXA ",.01)
 ;;V40.0XXA 
 ;;9002226.02101,"168,V40.0XXA ",.02)
 ;;V40.0XXA 
 ;;9002226.02101,"168,V40.0XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.0XXD ",.01)
 ;;V40.0XXD 
 ;;9002226.02101,"168,V40.0XXD ",.02)
 ;;V40.0XXD 
 ;;9002226.02101,"168,V40.0XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.0XXS ",.01)
 ;;V40.0XXS 
 ;;9002226.02101,"168,V40.0XXS ",.02)
 ;;V40.0XXS 
 ;;9002226.02101,"168,V40.0XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.1XXA ",.01)
 ;;V40.1XXA 
 ;;9002226.02101,"168,V40.1XXA ",.02)
 ;;V40.1XXA 
 ;;9002226.02101,"168,V40.1XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.1XXD ",.01)
 ;;V40.1XXD 
 ;;9002226.02101,"168,V40.1XXD ",.02)
 ;;V40.1XXD 
 ;;9002226.02101,"168,V40.1XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.1XXS ",.01)
 ;;V40.1XXS 
 ;;9002226.02101,"168,V40.1XXS ",.02)
 ;;V40.1XXS 
 ;;9002226.02101,"168,V40.1XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.2XXA ",.01)
 ;;V40.2XXA 
 ;;9002226.02101,"168,V40.2XXA ",.02)
 ;;V40.2XXA 
 ;;9002226.02101,"168,V40.2XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.2XXD ",.01)
 ;;V40.2XXD 
 ;;9002226.02101,"168,V40.2XXD ",.02)
 ;;V40.2XXD 
 ;;9002226.02101,"168,V40.2XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.2XXS ",.01)
 ;;V40.2XXS 
 ;;9002226.02101,"168,V40.2XXS ",.02)
 ;;V40.2XXS 
 ;;9002226.02101,"168,V40.2XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.3XXA ",.01)
 ;;V40.3XXA 
 ;;9002226.02101,"168,V40.3XXA ",.02)
 ;;V40.3XXA 
 ;;9002226.02101,"168,V40.3XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.3XXD ",.01)
 ;;V40.3XXD 
 ;;9002226.02101,"168,V40.3XXD ",.02)
 ;;V40.3XXD 
 ;;9002226.02101,"168,V40.3XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.3XXS ",.01)
 ;;V40.3XXS 
 ;;9002226.02101,"168,V40.3XXS ",.02)
 ;;V40.3XXS 
 ;;9002226.02101,"168,V40.3XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.4XXA ",.01)
 ;;V40.4XXA 
 ;;9002226.02101,"168,V40.4XXA ",.02)
 ;;V40.4XXA 
 ;;9002226.02101,"168,V40.4XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.4XXD ",.01)
 ;;V40.4XXD 
 ;;9002226.02101,"168,V40.4XXD ",.02)
 ;;V40.4XXD 
 ;;9002226.02101,"168,V40.4XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.4XXS ",.01)
 ;;V40.4XXS 
 ;;9002226.02101,"168,V40.4XXS ",.02)
 ;;V40.4XXS 
 ;;9002226.02101,"168,V40.4XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.5XXA ",.01)
 ;;V40.5XXA 
 ;;9002226.02101,"168,V40.5XXA ",.02)
 ;;V40.5XXA 
 ;;9002226.02101,"168,V40.5XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.5XXD ",.01)
 ;;V40.5XXD 
 ;;9002226.02101,"168,V40.5XXD ",.02)
 ;;V40.5XXD 
 ;;9002226.02101,"168,V40.5XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.5XXS ",.01)
 ;;V40.5XXS 
 ;;9002226.02101,"168,V40.5XXS ",.02)
 ;;V40.5XXS 
 ;;9002226.02101,"168,V40.5XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.6XXA ",.01)
 ;;V40.6XXA 
 ;;9002226.02101,"168,V40.6XXA ",.02)
 ;;V40.6XXA 
 ;;9002226.02101,"168,V40.6XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.6XXD ",.01)
 ;;V40.6XXD 
 ;;9002226.02101,"168,V40.6XXD ",.02)
 ;;V40.6XXD 
 ;;9002226.02101,"168,V40.6XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.6XXS ",.01)
 ;;V40.6XXS 
 ;;9002226.02101,"168,V40.6XXS ",.02)
 ;;V40.6XXS 
 ;;9002226.02101,"168,V40.6XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.7XXA ",.01)
 ;;V40.7XXA 
 ;;9002226.02101,"168,V40.7XXA ",.02)
 ;;V40.7XXA 
 ;;9002226.02101,"168,V40.7XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.7XXD ",.01)
 ;;V40.7XXD 
 ;;9002226.02101,"168,V40.7XXD ",.02)
 ;;V40.7XXD 
 ;;9002226.02101,"168,V40.7XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.7XXS ",.01)
 ;;V40.7XXS 
 ;;9002226.02101,"168,V40.7XXS ",.02)
 ;;V40.7XXS 
 ;;9002226.02101,"168,V40.7XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V40.9XXA ",.01)
 ;;V40.9XXA 
 ;;9002226.02101,"168,V40.9XXA ",.02)
 ;;V40.9XXA 
 ;;9002226.02101,"168,V40.9XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V40.9XXD ",.01)
 ;;V40.9XXD 
 ;;9002226.02101,"168,V40.9XXD ",.02)
 ;;V40.9XXD 
 ;;9002226.02101,"168,V40.9XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V40.9XXS ",.01)
 ;;V40.9XXS 
 ;;9002226.02101,"168,V40.9XXS ",.02)
 ;;V40.9XXS 
 ;;9002226.02101,"168,V40.9XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.0XXA ",.01)
 ;;V41.0XXA 
 ;;9002226.02101,"168,V41.0XXA ",.02)
 ;;V41.0XXA 
 ;;9002226.02101,"168,V41.0XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.0XXD ",.01)
 ;;V41.0XXD 
 ;;9002226.02101,"168,V41.0XXD ",.02)
 ;;V41.0XXD 
 ;;9002226.02101,"168,V41.0XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.0XXS ",.01)
 ;;V41.0XXS 
 ;;9002226.02101,"168,V41.0XXS ",.02)
 ;;V41.0XXS 
 ;;9002226.02101,"168,V41.0XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.1XXA ",.01)
 ;;V41.1XXA 
 ;;9002226.02101,"168,V41.1XXA ",.02)
 ;;V41.1XXA 
 ;;9002226.02101,"168,V41.1XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.1XXD ",.01)
 ;;V41.1XXD 
 ;;9002226.02101,"168,V41.1XXD ",.02)
 ;;V41.1XXD 
 ;;9002226.02101,"168,V41.1XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.1XXS ",.01)
 ;;V41.1XXS 
 ;;9002226.02101,"168,V41.1XXS ",.02)
 ;;V41.1XXS 
 ;;9002226.02101,"168,V41.1XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.2XXA ",.01)
 ;;V41.2XXA 
 ;;9002226.02101,"168,V41.2XXA ",.02)
 ;;V41.2XXA 
 ;;9002226.02101,"168,V41.2XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.2XXD ",.01)
 ;;V41.2XXD 
 ;;9002226.02101,"168,V41.2XXD ",.02)
 ;;V41.2XXD 
 ;;9002226.02101,"168,V41.2XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.2XXS ",.01)
 ;;V41.2XXS 
 ;;9002226.02101,"168,V41.2XXS ",.02)
 ;;V41.2XXS 
 ;;9002226.02101,"168,V41.2XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.3XXA ",.01)
 ;;V41.3XXA 
 ;;9002226.02101,"168,V41.3XXA ",.02)
 ;;V41.3XXA 
 ;;9002226.02101,"168,V41.3XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.3XXD ",.01)
 ;;V41.3XXD 
 ;;9002226.02101,"168,V41.3XXD ",.02)
 ;;V41.3XXD 
 ;;9002226.02101,"168,V41.3XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.3XXS ",.01)
 ;;V41.3XXS 
 ;;9002226.02101,"168,V41.3XXS ",.02)
 ;;V41.3XXS 
 ;;9002226.02101,"168,V41.3XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.4XXA ",.01)
 ;;V41.4XXA 
 ;;9002226.02101,"168,V41.4XXA ",.02)
 ;;V41.4XXA 
 ;;9002226.02101,"168,V41.4XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.4XXD ",.01)
 ;;V41.4XXD 
 ;;9002226.02101,"168,V41.4XXD ",.02)
 ;;V41.4XXD 
 ;;9002226.02101,"168,V41.4XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.4XXS ",.01)
 ;;V41.4XXS 
 ;;9002226.02101,"168,V41.4XXS ",.02)
 ;;V41.4XXS 
 ;;9002226.02101,"168,V41.4XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.5XXA ",.01)
 ;;V41.5XXA 
 ;;9002226.02101,"168,V41.5XXA ",.02)
 ;;V41.5XXA 
 ;;9002226.02101,"168,V41.5XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.5XXD ",.01)
 ;;V41.5XXD 
 ;;9002226.02101,"168,V41.5XXD ",.02)
 ;;V41.5XXD 
 ;;9002226.02101,"168,V41.5XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.5XXS ",.01)
 ;;V41.5XXS 
 ;;9002226.02101,"168,V41.5XXS ",.02)
 ;;V41.5XXS 
 ;;9002226.02101,"168,V41.5XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.6XXA ",.01)
 ;;V41.6XXA 
 ;;9002226.02101,"168,V41.6XXA ",.02)
 ;;V41.6XXA 
 ;;9002226.02101,"168,V41.6XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.6XXD ",.01)
 ;;V41.6XXD 
 ;;9002226.02101,"168,V41.6XXD ",.02)
 ;;V41.6XXD 
 ;;9002226.02101,"168,V41.6XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.6XXS ",.01)
 ;;V41.6XXS 
 ;;9002226.02101,"168,V41.6XXS ",.02)
 ;;V41.6XXS 
 ;;9002226.02101,"168,V41.6XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.7XXA ",.01)
 ;;V41.7XXA 
 ;;9002226.02101,"168,V41.7XXA ",.02)
 ;;V41.7XXA 
 ;;9002226.02101,"168,V41.7XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.7XXD ",.01)
 ;;V41.7XXD 
 ;;9002226.02101,"168,V41.7XXD ",.02)
 ;;V41.7XXD 
 ;;9002226.02101,"168,V41.7XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.7XXS ",.01)
 ;;V41.7XXS 
 ;;9002226.02101,"168,V41.7XXS ",.02)
 ;;V41.7XXS 
 ;;9002226.02101,"168,V41.7XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V41.9XXA ",.01)
 ;;V41.9XXA 
 ;;9002226.02101,"168,V41.9XXA ",.02)
 ;;V41.9XXA 
 ;;9002226.02101,"168,V41.9XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V41.9XXD ",.01)
 ;;V41.9XXD 
 ;;9002226.02101,"168,V41.9XXD ",.02)
 ;;V41.9XXD 
 ;;9002226.02101,"168,V41.9XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V41.9XXS ",.01)
 ;;V41.9XXS 
 ;;9002226.02101,"168,V41.9XXS ",.02)
 ;;V41.9XXS 
 ;;9002226.02101,"168,V41.9XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V42.0XXA ",.01)
 ;;V42.0XXA 
 ;;9002226.02101,"168,V42.0XXA ",.02)
 ;;V42.0XXA 
 ;;9002226.02101,"168,V42.0XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V42.0XXD ",.01)
 ;;V42.0XXD 
 ;;9002226.02101,"168,V42.0XXD ",.02)
 ;;V42.0XXD 
 ;;9002226.02101,"168,V42.0XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V42.0XXS ",.01)
 ;;V42.0XXS 
 ;;9002226.02101,"168,V42.0XXS ",.02)
 ;;V42.0XXS 
 ;;9002226.02101,"168,V42.0XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V42.1XXA ",.01)
 ;;V42.1XXA 
 ;;9002226.02101,"168,V42.1XXA ",.02)
 ;;V42.1XXA 
 ;;9002226.02101,"168,V42.1XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V42.1XXD ",.01)
 ;;V42.1XXD 
 ;;9002226.02101,"168,V42.1XXD ",.02)
 ;;V42.1XXD 
 ;;9002226.02101,"168,V42.1XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V42.1XXS ",.01)
 ;;V42.1XXS 
 ;;9002226.02101,"168,V42.1XXS ",.02)
 ;;V42.1XXS 
 ;;9002226.02101,"168,V42.1XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V42.2XXA ",.01)
 ;;V42.2XXA 
 ;;9002226.02101,"168,V42.2XXA ",.02)
 ;;V42.2XXA 
 ;;9002226.02101,"168,V42.2XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V42.2XXD ",.01)
 ;;V42.2XXD 
 ;;9002226.02101,"168,V42.2XXD ",.02)
 ;;V42.2XXD 
 ;;9002226.02101,"168,V42.2XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V42.2XXS ",.01)
 ;;V42.2XXS 
 ;;9002226.02101,"168,V42.2XXS ",.02)
 ;;V42.2XXS 
 ;;9002226.02101,"168,V42.2XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V42.3XXA ",.01)
 ;;V42.3XXA 
 ;;9002226.02101,"168,V42.3XXA ",.02)
 ;;V42.3XXA 
 ;;9002226.02101,"168,V42.3XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V42.3XXD ",.01)
 ;;V42.3XXD 
 ;;9002226.02101,"168,V42.3XXD ",.02)
 ;;V42.3XXD 
 ;;9002226.02101,"168,V42.3XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V42.3XXS ",.01)
 ;;V42.3XXS 
