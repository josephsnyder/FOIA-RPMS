BGP9VXIN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"862,42.51 ",.01)
 ;;42.51 
 ;;9002226.02101,"862,42.51 ",.02)
 ;;42.51 
 ;;9002226.02101,"862,42.52 ",.01)
 ;;42.52 
 ;;9002226.02101,"862,42.52 ",.02)
 ;;42.52 
 ;;9002226.02101,"862,42.53 ",.01)
 ;;42.53 
 ;;9002226.02101,"862,42.53 ",.02)
 ;;42.53 
 ;;9002226.02101,"862,42.54 ",.01)
 ;;42.54 
 ;;9002226.02101,"862,42.54 ",.02)
 ;;42.54 
 ;;9002226.02101,"862,42.55 ",.01)
 ;;42.55 
 ;;9002226.02101,"862,42.55 ",.02)
 ;;42.55 
 ;;9002226.02101,"862,42.56 ",.01)
 ;;42.56 
 ;;9002226.02101,"862,42.56 ",.02)
 ;;42.56 
 ;;9002226.02101,"862,42.58 ",.01)
 ;;42.58 
 ;;9002226.02101,"862,42.58 ",.02)
 ;;42.58 
 ;;9002226.02101,"862,42.59 ",.01)
 ;;42.59 
 ;;9002226.02101,"862,42.59 ",.02)
 ;;42.59 
 ;;9002226.02101,"862,42.61 ",.01)
 ;;42.61 
 ;;9002226.02101,"862,42.61 ",.02)
 ;;42.61 
 ;;9002226.02101,"862,42.62 ",.01)
 ;;42.62 
 ;;9002226.02101,"862,42.62 ",.02)
 ;;42.62 
 ;;9002226.02101,"862,42.63 ",.01)
 ;;42.63 
 ;;9002226.02101,"862,42.63 ",.02)
 ;;42.63 
 ;;9002226.02101,"862,42.64 ",.01)
 ;;42.64 
 ;;9002226.02101,"862,42.64 ",.02)
 ;;42.64 
 ;;9002226.02101,"862,42.65 ",.01)
 ;;42.65 
 ;;9002226.02101,"862,42.65 ",.02)
 ;;42.65 
 ;;9002226.02101,"862,42.66 ",.01)
 ;;42.66 
 ;;9002226.02101,"862,42.66 ",.02)
 ;;42.66 
 ;;9002226.02101,"862,42.68 ",.01)
 ;;42.68 
 ;;9002226.02101,"862,42.68 ",.02)
 ;;42.68 
 ;;9002226.02101,"862,42.69 ",.01)
 ;;42.69 
 ;;9002226.02101,"862,42.69 ",.02)
 ;;42.69 
 ;;9002226.02101,"862,42.7 ",.01)
 ;;42.7 
 ;;9002226.02101,"862,42.7 ",.02)
 ;;42.7 
 ;;9002226.02101,"862,42.82 ",.01)
 ;;42.82 
 ;;9002226.02101,"862,42.82 ",.02)
 ;;42.82 
 ;;9002226.02101,"862,42.83 ",.01)
 ;;42.83 
 ;;9002226.02101,"862,42.83 ",.02)
 ;;42.83 
 ;;9002226.02101,"862,42.84 ",.01)
 ;;42.84 
 ;;9002226.02101,"862,42.84 ",.02)
 ;;42.84 
 ;;9002226.02101,"862,42.85 ",.01)
 ;;42.85 
 ;;9002226.02101,"862,42.85 ",.02)
 ;;42.85 
 ;;9002226.02101,"862,42.86 ",.01)
 ;;42.86 
 ;;9002226.02101,"862,42.86 ",.02)
 ;;42.86 
 ;;9002226.02101,"862,42.87 ",.01)
 ;;42.87 
 ;;9002226.02101,"862,42.87 ",.02)
 ;;42.87 
 ;;9002226.02101,"862,42.89 ",.01)
 ;;42.89 
 ;;9002226.02101,"862,42.89 ",.02)
 ;;42.89 
 ;;9002226.02101,"862,43.3 ",.01)
 ;;43.3 
 ;;9002226.02101,"862,43.3 ",.02)
 ;;43.3 
 ;;9002226.02101,"862,43.5 ",.01)
 ;;43.5 
 ;;9002226.02101,"862,43.5 ",.02)
 ;;43.5 
 ;;9002226.02101,"862,43.6 ",.01)
 ;;43.6 
 ;;9002226.02101,"862,43.6 ",.02)
 ;;43.6 
 ;;9002226.02101,"862,43.7 ",.01)
 ;;43.7 
 ;;9002226.02101,"862,43.7 ",.02)
 ;;43.7 
 ;;9002226.02101,"862,43.81 ",.01)
 ;;43.81 
 ;;9002226.02101,"862,43.81 ",.02)
 ;;43.81 
 ;;9002226.02101,"862,43.89 ",.01)
 ;;43.89 
 ;;9002226.02101,"862,43.89 ",.02)
 ;;43.89 
 ;;9002226.02101,"862,43.91 ",.01)
 ;;43.91 
 ;;9002226.02101,"862,43.91 ",.02)
 ;;43.91 
 ;;9002226.02101,"862,43.99 ",.01)
 ;;43.99 
 ;;9002226.02101,"862,43.99 ",.02)
 ;;43.99 
 ;;9002226.02101,"862,44.00 ",.01)
 ;;44.00 
 ;;9002226.02101,"862,44.00 ",.02)
 ;;44.00 
 ;;9002226.02101,"862,44.01 ",.01)
 ;;44.01 
 ;;9002226.02101,"862,44.01 ",.02)
 ;;44.01 
 ;;9002226.02101,"862,44.02 ",.01)
 ;;44.02 
 ;;9002226.02101,"862,44.02 ",.02)
 ;;44.02 
 ;;9002226.02101,"862,44.03 ",.01)
 ;;44.03 
 ;;9002226.02101,"862,44.03 ",.02)
 ;;44.03 
 ;;9002226.02101,"862,44.21 ",.01)
 ;;44.21 
 ;;9002226.02101,"862,44.21 ",.02)
 ;;44.21 
 ;;9002226.02101,"862,44.29 ",.01)
 ;;44.29 
 ;;9002226.02101,"862,44.29 ",.02)
 ;;44.29 
 ;;9002226.02101,"862,44.31 ",.01)
 ;;44.31 
 ;;9002226.02101,"862,44.31 ",.02)
 ;;44.31 
 ;;9002226.02101,"862,44.39 ",.01)
 ;;44.39 
 ;;9002226.02101,"862,44.39 ",.02)
 ;;44.39 
 ;;9002226.02101,"862,44.40 ",.01)
 ;;44.40 
 ;;9002226.02101,"862,44.40 ",.02)
 ;;44.40 
 ;;9002226.02101,"862,44.41 ",.01)
 ;;44.41 
 ;;9002226.02101,"862,44.41 ",.02)
 ;;44.41 
 ;;9002226.02101,"862,44.42 ",.01)
 ;;44.42 
 ;;9002226.02101,"862,44.42 ",.02)
 ;;44.42 
 ;;9002226.02101,"862,44.5 ",.01)
 ;;44.5 
 ;;9002226.02101,"862,44.5 ",.02)
 ;;44.5 
 ;;9002226.02101,"862,44.61 ",.01)
 ;;44.61 
 ;;9002226.02101,"862,44.61 ",.02)
 ;;44.61 
 ;;9002226.02101,"862,44.63 ",.01)
 ;;44.63 
 ;;9002226.02101,"862,44.63 ",.02)
 ;;44.63 
 ;;9002226.02101,"862,44.64 ",.01)
 ;;44.64 
 ;;9002226.02101,"862,44.64 ",.02)
 ;;44.64 
 ;;9002226.02101,"862,44.65 ",.01)
 ;;44.65 
 ;;9002226.02101,"862,44.65 ",.02)
 ;;44.65 
 ;;9002226.02101,"862,44.66 ",.01)
 ;;44.66 
 ;;9002226.02101,"862,44.66 ",.02)
 ;;44.66 
 ;;9002226.02101,"862,44.69 ",.01)
 ;;44.69 
 ;;9002226.02101,"862,44.69 ",.02)
 ;;44.69 
 ;;9002226.02101,"862,44.91 ",.01)
 ;;44.91 
 ;;9002226.02101,"862,44.91 ",.02)
 ;;44.91 
 ;;9002226.02101,"862,44.92 ",.01)
 ;;44.92 
 ;;9002226.02101,"862,44.92 ",.02)
 ;;44.92 
 ;;9002226.02101,"862,44.99 ",.01)
 ;;44.99 
 ;;9002226.02101,"862,44.99 ",.02)
 ;;44.99 
 ;;9002226.02101,"862,45.00 ",.01)
 ;;45.00 
 ;;9002226.02101,"862,45.00 ",.02)
 ;;45.00 
 ;;9002226.02101,"862,45.01 ",.01)
 ;;45.01 
 ;;9002226.02101,"862,45.01 ",.02)
 ;;45.01 
 ;;9002226.02101,"862,45.02 ",.01)
 ;;45.02 
 ;;9002226.02101,"862,45.02 ",.02)
 ;;45.02 