ATXD6W4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"480,B02.32 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.33 ",.01)
 ;;B02.33 
 ;;9002226.02101,"480,B02.33 ",.02)
 ;;B02.33 
 ;;9002226.02101,"480,B02.33 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.34 ",.01)
 ;;B02.34 
 ;;9002226.02101,"480,B02.34 ",.02)
 ;;B02.34 
 ;;9002226.02101,"480,B02.34 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.39 ",.01)
 ;;B02.39 
 ;;9002226.02101,"480,B02.39 ",.02)
 ;;B02.39 
 ;;9002226.02101,"480,B02.39 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.7 ",.01)
 ;;B02.7 
 ;;9002226.02101,"480,B02.7 ",.02)
 ;;B02.7 
 ;;9002226.02101,"480,B02.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.8 ",.01)
 ;;B02.8 
 ;;9002226.02101,"480,B02.8 ",.02)
 ;;B02.8 
 ;;9002226.02101,"480,B02.8 ",.03)
 ;;30
 ;;9002226.02101,"480,B02.9 ",.01)
 ;;B02.9 
 ;;9002226.02101,"480,B02.9 ",.02)
 ;;B02.9 
 ;;9002226.02101,"480,B02.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B16.0 ",.01)
 ;;B16.0 
 ;;9002226.02101,"480,B16.0 ",.02)
 ;;B16.0 
 ;;9002226.02101,"480,B16.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B16.1 ",.01)
 ;;B16.1 
 ;;9002226.02101,"480,B16.1 ",.02)
 ;;B16.1 
 ;;9002226.02101,"480,B16.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B16.2 ",.01)
 ;;B16.2 
 ;;9002226.02101,"480,B16.2 ",.02)
 ;;B16.2 
 ;;9002226.02101,"480,B16.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B16.9 ",.01)
 ;;B16.9 
 ;;9002226.02101,"480,B16.9 ",.02)
 ;;B16.9 
 ;;9002226.02101,"480,B16.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B17.10 ",.01)
 ;;B17.10 
 ;;9002226.02101,"480,B17.10 ",.02)
 ;;B17.10 
 ;;9002226.02101,"480,B17.10 ",.03)
 ;;30
 ;;9002226.02101,"480,B17.11 ",.01)
 ;;B17.11 
 ;;9002226.02101,"480,B17.11 ",.02)
 ;;B17.11 
 ;;9002226.02101,"480,B17.11 ",.03)
 ;;30
 ;;9002226.02101,"480,B18.0 ",.01)
 ;;B18.0 
 ;;9002226.02101,"480,B18.0 ",.02)
 ;;B18.0 
 ;;9002226.02101,"480,B18.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B18.1 ",.01)
 ;;B18.1 
 ;;9002226.02101,"480,B18.1 ",.02)
 ;;B18.1 
 ;;9002226.02101,"480,B18.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B18.2 ",.01)
 ;;B18.2 
 ;;9002226.02101,"480,B18.2 ",.02)
 ;;B18.2 
 ;;9002226.02101,"480,B18.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B19.10 ",.01)
 ;;B19.10 
 ;;9002226.02101,"480,B19.10 ",.02)
 ;;B19.10 
 ;;9002226.02101,"480,B19.10 ",.03)
 ;;30
 ;;9002226.02101,"480,B19.11 ",.01)
 ;;B19.11 
 ;;9002226.02101,"480,B19.11 ",.02)
 ;;B19.11 
 ;;9002226.02101,"480,B19.11 ",.03)
 ;;30
 ;;9002226.02101,"480,B19.20 ",.01)
 ;;B19.20 
 ;;9002226.02101,"480,B19.20 ",.02)
 ;;B19.20 
 ;;9002226.02101,"480,B19.20 ",.03)
 ;;30
 ;;9002226.02101,"480,B19.21 ",.01)
 ;;B19.21 
 ;;9002226.02101,"480,B19.21 ",.02)
 ;;B19.21 
 ;;9002226.02101,"480,B19.21 ",.03)
 ;;30
 ;;9002226.02101,"480,B25.0 ",.01)
 ;;B25.0 
 ;;9002226.02101,"480,B25.0 ",.02)
 ;;B25.0 
 ;;9002226.02101,"480,B25.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B25.1 ",.01)
 ;;B25.1 
 ;;9002226.02101,"480,B25.1 ",.02)
 ;;B25.1 
 ;;9002226.02101,"480,B25.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B25.2 ",.01)
 ;;B25.2 
 ;;9002226.02101,"480,B25.2 ",.02)
 ;;B25.2 
 ;;9002226.02101,"480,B25.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B25.8 ",.01)
 ;;B25.8 
 ;;9002226.02101,"480,B25.8 ",.02)
 ;;B25.8 
 ;;9002226.02101,"480,B25.8 ",.03)
 ;;30
 ;;9002226.02101,"480,B25.9 ",.01)
 ;;B25.9 
 ;;9002226.02101,"480,B25.9 ",.02)
 ;;B25.9 
 ;;9002226.02101,"480,B25.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B37.0 ",.01)
 ;;B37.0 
 ;;9002226.02101,"480,B37.0 ",.02)
 ;;B37.0 
 ;;9002226.02101,"480,B37.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B37.83 ",.01)
 ;;B37.83 
 ;;9002226.02101,"480,B37.83 ",.02)
 ;;B37.83 
 ;;9002226.02101,"480,B37.83 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.0 ",.01)
 ;;B38.0 
 ;;9002226.02101,"480,B38.0 ",.02)
 ;;B38.0 
 ;;9002226.02101,"480,B38.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.3 ",.01)
 ;;B38.3 
 ;;9002226.02101,"480,B38.3 ",.02)
 ;;B38.3 
 ;;9002226.02101,"480,B38.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.4 ",.01)
 ;;B38.4 
 ;;9002226.02101,"480,B38.4 ",.02)
 ;;B38.4 
 ;;9002226.02101,"480,B38.4 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.7 ",.01)
 ;;B38.7 
 ;;9002226.02101,"480,B38.7 ",.02)
 ;;B38.7 
 ;;9002226.02101,"480,B38.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.81 ",.01)
 ;;B38.81 
 ;;9002226.02101,"480,B38.81 ",.02)
 ;;B38.81 
 ;;9002226.02101,"480,B38.81 ",.03)
 ;;30
 ;;9002226.02101,"480,B38.89 ",.01)
 ;;B38.89 
 ;;9002226.02101,"480,B38.89 ",.02)
 ;;B38.89 
 ;;9002226.02101,"480,B38.89 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.0 ",.01)
 ;;B39.0 
 ;;9002226.02101,"480,B39.0 ",.02)
 ;;B39.0 
 ;;9002226.02101,"480,B39.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.1 ",.01)
 ;;B39.1 
 ;;9002226.02101,"480,B39.1 ",.02)
 ;;B39.1 
 ;;9002226.02101,"480,B39.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.2 ",.01)
 ;;B39.2 
 ;;9002226.02101,"480,B39.2 ",.02)
 ;;B39.2 
 ;;9002226.02101,"480,B39.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.3 ",.01)
 ;;B39.3 
 ;;9002226.02101,"480,B39.3 ",.02)
 ;;B39.3 
 ;;9002226.02101,"480,B39.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.4 ",.01)
 ;;B39.4 
 ;;9002226.02101,"480,B39.4 ",.02)
 ;;B39.4 
 ;;9002226.02101,"480,B39.4 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.5 ",.01)
 ;;B39.5 
 ;;9002226.02101,"480,B39.5 ",.02)
 ;;B39.5 
 ;;9002226.02101,"480,B39.5 ",.03)
 ;;30
 ;;9002226.02101,"480,B39.9 ",.01)
 ;;B39.9 
 ;;9002226.02101,"480,B39.9 ",.02)
 ;;B39.9 
 ;;9002226.02101,"480,B39.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.0 ",.01)
 ;;B44.0 
 ;;9002226.02101,"480,B44.0 ",.02)
 ;;B44.0 
 ;;9002226.02101,"480,B44.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.1 ",.01)
 ;;B44.1 
 ;;9002226.02101,"480,B44.1 ",.02)
 ;;B44.1 
 ;;9002226.02101,"480,B44.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.2 ",.01)
 ;;B44.2 
 ;;9002226.02101,"480,B44.2 ",.02)
 ;;B44.2 
 ;;9002226.02101,"480,B44.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.7 ",.01)
 ;;B44.7 
 ;;9002226.02101,"480,B44.7 ",.02)
 ;;B44.7 
 ;;9002226.02101,"480,B44.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.89 ",.01)
 ;;B44.89 
 ;;9002226.02101,"480,B44.89 ",.02)
 ;;B44.89 
 ;;9002226.02101,"480,B44.89 ",.03)
 ;;30
 ;;9002226.02101,"480,B44.9 ",.01)
 ;;B44.9 
 ;;9002226.02101,"480,B44.9 ",.02)
 ;;B44.9 
 ;;9002226.02101,"480,B44.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.0 ",.01)
 ;;B45.0 
 ;;9002226.02101,"480,B45.0 ",.02)
 ;;B45.0 
 ;;9002226.02101,"480,B45.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.1 ",.01)
 ;;B45.1 
 ;;9002226.02101,"480,B45.1 ",.02)
 ;;B45.1 
 ;;9002226.02101,"480,B45.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.2 ",.01)
 ;;B45.2 
 ;;9002226.02101,"480,B45.2 ",.02)
 ;;B45.2 
 ;;9002226.02101,"480,B45.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.3 ",.01)
 ;;B45.3 
 ;;9002226.02101,"480,B45.3 ",.02)
 ;;B45.3 
 ;;9002226.02101,"480,B45.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.7 ",.01)
 ;;B45.7 
 ;;9002226.02101,"480,B45.7 ",.02)
 ;;B45.7 
 ;;9002226.02101,"480,B45.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.8 ",.01)
 ;;B45.8 
 ;;9002226.02101,"480,B45.8 ",.02)
 ;;B45.8 
 ;;9002226.02101,"480,B45.8 ",.03)
 ;;30
 ;;9002226.02101,"480,B45.9 ",.01)
 ;;B45.9 
 ;;9002226.02101,"480,B45.9 ",.02)
 ;;B45.9 
 ;;9002226.02101,"480,B45.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B48.4 ",.01)
 ;;B48.4 
 ;;9002226.02101,"480,B48.4 ",.02)
 ;;B48.4 
 ;;9002226.02101,"480,B48.4 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.00 ",.01)
 ;;B58.00 
 ;;9002226.02101,"480,B58.00 ",.02)
 ;;B58.00 
 ;;9002226.02101,"480,B58.00 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.01 ",.01)
 ;;B58.01 
 ;;9002226.02101,"480,B58.01 ",.02)
 ;;B58.01 
 ;;9002226.02101,"480,B58.01 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.09 ",.01)
 ;;B58.09 
 ;;9002226.02101,"480,B58.09 ",.02)
 ;;B58.09 
 ;;9002226.02101,"480,B58.09 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.1 ",.01)
 ;;B58.1 
 ;;9002226.02101,"480,B58.1 ",.02)
 ;;B58.1 
 ;;9002226.02101,"480,B58.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.2 ",.01)
 ;;B58.2 
 ;;9002226.02101,"480,B58.2 ",.02)
 ;;B58.2 
 ;;9002226.02101,"480,B58.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.3 ",.01)
 ;;B58.3 
 ;;9002226.02101,"480,B58.3 ",.02)
 ;;B58.3 
 ;;9002226.02101,"480,B58.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.81 ",.01)
 ;;B58.81 
 ;;9002226.02101,"480,B58.81 ",.02)
 ;;B58.81 
 ;;9002226.02101,"480,B58.81 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.82 ",.01)
 ;;B58.82 
 ;;9002226.02101,"480,B58.82 ",.02)
 ;;B58.82 
 ;;9002226.02101,"480,B58.82 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.83 ",.01)
 ;;B58.83 
 ;;9002226.02101,"480,B58.83 ",.02)
 ;;B58.83 
 ;;9002226.02101,"480,B58.83 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.89 ",.01)
 ;;B58.89 
 ;;9002226.02101,"480,B58.89 ",.02)
 ;;B58.89 
 ;;9002226.02101,"480,B58.89 ",.03)
 ;;30
 ;;9002226.02101,"480,B58.9 ",.01)
 ;;B58.9 
 ;;9002226.02101,"480,B58.9 ",.02)
 ;;B58.9 
 ;;9002226.02101,"480,B58.9 ",.03)
 ;;30
 ;;9002226.02101,"480,B59. ",.01)
 ;;B59. 
 ;;9002226.02101,"480,B59. ",.02)
 ;;B59. 
 ;;9002226.02101,"480,B59. ",.03)
 ;;30
 ;;9002226.02101,"480,B60.8 ",.01)
 ;;B60.8 
 ;;9002226.02101,"480,B60.8 ",.02)
 ;;B60.8 
 ;;9002226.02101,"480,B60.8 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.0 ",.01)
 ;;B95.0 
 ;;9002226.02101,"480,B95.0 ",.02)
 ;;B95.0 
 ;;9002226.02101,"480,B95.0 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.1 ",.01)
 ;;B95.1 
 ;;9002226.02101,"480,B95.1 ",.02)
 ;;B95.1 
 ;;9002226.02101,"480,B95.1 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.2 ",.01)
 ;;B95.2 
 ;;9002226.02101,"480,B95.2 ",.02)
 ;;B95.2 
 ;;9002226.02101,"480,B95.2 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.3 ",.01)
 ;;B95.3 
 ;;9002226.02101,"480,B95.3 ",.02)
 ;;B95.3 
 ;;9002226.02101,"480,B95.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.4 ",.01)
 ;;B95.4 
 ;;9002226.02101,"480,B95.4 ",.02)
 ;;B95.4 
 ;;9002226.02101,"480,B95.4 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.5 ",.01)
 ;;B95.5 
 ;;9002226.02101,"480,B95.5 ",.02)
 ;;B95.5 
 ;;9002226.02101,"480,B95.5 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.61 ",.01)
 ;;B95.61 
 ;;9002226.02101,"480,B95.61 ",.02)
 ;;B95.61 
 ;;9002226.02101,"480,B95.61 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.7 ",.01)
 ;;B95.7 
 ;;9002226.02101,"480,B95.7 ",.02)
 ;;B95.7 
 ;;9002226.02101,"480,B95.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B95.8 ",.01)
 ;;B95.8 
 ;;9002226.02101,"480,B95.8 ",.02)
 ;;B95.8 
 ;;9002226.02101,"480,B95.8 ",.03)
 ;;30
 ;;9002226.02101,"480,B96.3 ",.01)
 ;;B96.3 
 ;;9002226.02101,"480,B96.3 ",.02)
 ;;B96.3 
 ;;9002226.02101,"480,B96.3 ",.03)
 ;;30
 ;;9002226.02101,"480,B96.5 ",.01)
 ;;B96.5 
 ;;9002226.02101,"480,B96.5 ",.02)
 ;;B96.5 
 ;;9002226.02101,"480,B96.5 ",.03)
 ;;30
 ;;9002226.02101,"480,B97.7 ",.01)
 ;;B97.7 
 ;;9002226.02101,"480,B97.7 ",.02)
 ;;B97.7 
 ;;9002226.02101,"480,B97.7 ",.03)
 ;;30
 ;;9002226.02101,"480,B99.8 ",.01)
 ;;B99.8 
 ;;9002226.02101,"480,B99.8 ",.02)
 ;;B99.8 
 ;;9002226.02101,"480,B99.8 ",.03)
 ;;30
 ;;9002226.02101,"480,J13. ",.01)
 ;;J13. 
 ;;9002226.02101,"480,J13. ",.02)
 ;;J13. 
 ;;9002226.02101,"480,J13. ",.03)
 ;;30
 ;;9002226.02101,"480,J15.1 ",.01)
 ;;J15.1 
 ;;9002226.02101,"480,J15.1 ",.02)
 ;;J15.1 
 ;;9002226.02101,"480,J15.1 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.20 ",.01)
 ;;J15.20 
 ;;9002226.02101,"480,J15.20 ",.02)
 ;;J15.20 
 ;;9002226.02101,"480,J15.20 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.211 ",.01)
 ;;J15.211 
 ;;9002226.02101,"480,J15.211 ",.02)
 ;;J15.211 
 ;;9002226.02101,"480,J15.211 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.212 ",.01)
 ;;J15.212 
 ;;9002226.02101,"480,J15.212 ",.02)
 ;;J15.212 
 ;;9002226.02101,"480,J15.212 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.29 ",.01)
 ;;J15.29 
 ;;9002226.02101,"480,J15.29 ",.02)
 ;;J15.29 
 ;;9002226.02101,"480,J15.29 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.3 ",.01)
 ;;J15.3 
 ;;9002226.02101,"480,J15.3 ",.02)
 ;;J15.3 
 ;;9002226.02101,"480,J15.3 ",.03)
 ;;30
 ;;9002226.02101,"480,J15.4 ",.01)
 ;;J15.4 
 ;;9002226.02101,"480,J15.4 ",.02)
 ;;J15.4 
 ;;9002226.02101,"480,J15.4 ",.03)
 ;;30
 ;;9002226.02101,"480,J18.1 ",.01)
 ;;J18.1 
 ;;9002226.02101,"480,J18.1 ",.02)
 ;;J18.1 
 ;;9002226.02101,"480,J18.1 ",.03)
 ;;30
 ;;9002226.02101,"480,J20.1 ",.01)
 ;;J20.1 
 ;;9002226.02101,"480,J20.1 ",.02)
 ;;J20.1 
 ;;9002226.02101,"480,J20.1 ",.03)
 ;;30
 ;;9002226.02101,"480,J20.2 ",.01)
 ;;J20.2 
 ;;9002226.02101,"480,J20.2 ",.02)
 ;;J20.2 
 ;;9002226.02101,"480,J20.2 ",.03)
 ;;30
 ;;9002226.02101,"480,J98.9 ",.01)
 ;;J98.9 
 ;;9002226.02101,"480,J98.9 ",.02)
 ;;J98.9 
 ;;9002226.02101,"480,J98.9 ",.03)
 ;;30
