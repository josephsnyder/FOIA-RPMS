BGP03G5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"847,35.63 ",.01)
 ;;35.63 
 ;;9002226.02101,"847,35.63 ",.02)
 ;;35.63 
 ;;9002226.02101,"847,35.70 ",.01)
 ;;35.70 
 ;;9002226.02101,"847,35.70 ",.02)
 ;;35.70 
 ;;9002226.02101,"847,35.71 ",.01)
 ;;35.71 
 ;;9002226.02101,"847,35.71 ",.02)
 ;;35.71 
 ;;9002226.02101,"847,35.72 ",.01)
 ;;35.72 
 ;;9002226.02101,"847,35.72 ",.02)
 ;;35.72 
 ;;9002226.02101,"847,35.73 ",.01)
 ;;35.73 
 ;;9002226.02101,"847,35.73 ",.02)
 ;;35.73 
 ;;9002226.02101,"847,35.81 ",.01)
 ;;35.81 
 ;;9002226.02101,"847,35.81 ",.02)
 ;;35.81 
 ;;9002226.02101,"847,35.82 ",.01)
 ;;35.82 
 ;;9002226.02101,"847,35.82 ",.02)
 ;;35.82 
 ;;9002226.02101,"847,35.83 ",.01)
 ;;35.83 
 ;;9002226.02101,"847,35.83 ",.02)
 ;;35.83 
 ;;9002226.02101,"847,35.84 ",.01)
 ;;35.84 
 ;;9002226.02101,"847,35.84 ",.02)
 ;;35.84 
 ;;9002226.02101,"847,35.91 ",.01)
 ;;35.91 
 ;;9002226.02101,"847,35.91 ",.02)
 ;;35.91 
 ;;9002226.02101,"847,35.92 ",.01)
 ;;35.92 
 ;;9002226.02101,"847,35.92 ",.02)
 ;;35.92 
 ;;9002226.02101,"847,35.93 ",.01)
 ;;35.93 
 ;;9002226.02101,"847,35.93 ",.02)
 ;;35.93 
 ;;9002226.02101,"847,35.94 ",.01)
 ;;35.94 
 ;;9002226.02101,"847,35.94 ",.02)
 ;;35.94 
 ;;9002226.02101,"847,35.95 ",.01)
 ;;35.95 
 ;;9002226.02101,"847,35.95 ",.02)
 ;;35.95 
 ;;9002226.02101,"847,35.98 ",.01)
 ;;35.98 
 ;;9002226.02101,"847,35.98 ",.02)
 ;;35.98 
 ;;9002226.02101,"847,35.99 ",.01)
 ;;35.99 
 ;;9002226.02101,"847,35.99 ",.02)
 ;;35.99 
 ;;9002226.02101,"847,36.03 ",.01)
 ;;36.03 
 ;;9002226.02101,"847,36.03 ",.02)
 ;;36.03 
 ;;9002226.02101,"847,36.10 ",.01)
 ;;36.10 
 ;;9002226.02101,"847,36.10 ",.02)
 ;;36.10 
 ;;9002226.02101,"847,36.11 ",.01)
 ;;36.11 
 ;;9002226.02101,"847,36.11 ",.02)
 ;;36.11 
 ;;9002226.02101,"847,36.12 ",.01)
 ;;36.12 
 ;;9002226.02101,"847,36.12 ",.02)
 ;;36.12 
 ;;9002226.02101,"847,36.13 ",.01)
 ;;36.13 
 ;;9002226.02101,"847,36.13 ",.02)
 ;;36.13 
 ;;9002226.02101,"847,36.14 ",.01)
 ;;36.14 
 ;;9002226.02101,"847,36.14 ",.02)
 ;;36.14 
 ;;9002226.02101,"847,36.15 ",.01)
 ;;36.15 
 ;;9002226.02101,"847,36.15 ",.02)
 ;;36.15 
 ;;9002226.02101,"847,36.16 ",.01)
 ;;36.16 
 ;;9002226.02101,"847,36.16 ",.02)
 ;;36.16 
 ;;9002226.02101,"847,36.17 ",.01)
 ;;36.17 
 ;;9002226.02101,"847,36.17 ",.02)
 ;;36.17 
 ;;9002226.02101,"847,36.19 ",.01)
 ;;36.19 
 ;;9002226.02101,"847,36.19 ",.02)
 ;;36.19 
 ;;9002226.02101,"847,36.31 ",.01)
 ;;36.31 
 ;;9002226.02101,"847,36.31 ",.02)
 ;;36.31 
 ;;9002226.02101,"847,36.32 ",.01)
 ;;36.32 
 ;;9002226.02101,"847,36.32 ",.02)
 ;;36.32 
 ;;9002226.02101,"847,36.39 ",.01)
 ;;36.39 
 ;;9002226.02101,"847,36.39 ",.02)
 ;;36.39 
 ;;9002226.02101,"847,36.91 ",.01)
 ;;36.91 
 ;;9002226.02101,"847,36.91 ",.02)
 ;;36.91 
 ;;9002226.02101,"847,36.99 ",.01)
 ;;36.99 
 ;;9002226.02101,"847,36.99 ",.02)
 ;;36.99 
 ;;9002226.02101,"847,37.10 ",.01)
 ;;37.10 
 ;;9002226.02101,"847,37.10 ",.02)
 ;;37.10 
 ;;9002226.02101,"847,37.11 ",.01)
 ;;37.11 
 ;;9002226.02101,"847,37.11 ",.02)
 ;;37.11 
 ;;9002226.02101,"847,37.12 ",.01)
 ;;37.12 
 ;;9002226.02101,"847,37.12 ",.02)
 ;;37.12 
 ;;9002226.02101,"847,37.31 ",.01)
 ;;37.31 
 ;;9002226.02101,"847,37.31 ",.02)
 ;;37.31 
 ;;9002226.02101,"847,37.32 ",.01)
 ;;37.32 
 ;;9002226.02101,"847,37.32 ",.02)
 ;;37.32 
 ;;9002226.02101,"847,37.33 ",.01)
 ;;37.33 
 ;;9002226.02101,"847,37.33 ",.02)
 ;;37.33 
 ;;9002226.02101,"847,37.34 ",.01)
 ;;37.34 
 ;;9002226.02101,"847,37.34 ",.02)
 ;;37.34 
 ;;9002226.02101,"847,37.35 ",.01)
 ;;37.35 
 ;;9002226.02101,"847,37.35 ",.02)
 ;;37.35 
 ;;9002226.02101,"847,37.41 ",.01)
 ;;37.41 
 ;;9002226.02101,"847,37.41 ",.02)
 ;;37.41 
 ;;9002226.02101,"847,37.49 ",.01)
 ;;37.49 
 ;;9002226.02101,"847,37.49 ",.02)
 ;;37.49 
 ;;9002226.02101,"847,37.51 ",.01)
 ;;37.51 
 ;;9002226.02101,"847,37.51 ",.02)
 ;;37.51 
 ;;9002226.02101,"847,37.52 ",.01)
 ;;37.52 
 ;;9002226.02101,"847,37.52 ",.02)
 ;;37.52 
 ;;9002226.02101,"847,37.53 ",.01)
 ;;37.53 
 ;;9002226.02101,"847,37.53 ",.02)
 ;;37.53 
 ;;9002226.02101,"847,37.54 ",.01)
 ;;37.54 
 ;;9002226.02101,"847,37.54 ",.02)
 ;;37.54 
 ;;9002226.02101,"847,37.62 ",.01)
 ;;37.62 
 ;;9002226.02101,"847,37.62 ",.02)
 ;;37.62 
 ;;9002226.02101,"847,37.63 ",.01)
 ;;37.63 
 ;;9002226.02101,"847,37.63 ",.02)
 ;;37.63 
 ;;9002226.02101,"847,37.64 ",.01)
 ;;37.64 
 ;;9002226.02101,"847,37.64 ",.02)
 ;;37.64 
 ;;9002226.02101,"847,37.66 ",.01)
 ;;37.66 
 ;;9002226.02101,"847,37.66 ",.02)
 ;;37.66 
 ;;9002226.02101,"847,37.67 ",.01)
 ;;37.67 
 ;;9002226.02101,"847,37.67 ",.02)
 ;;37.67 
 ;;9002226.02101,"847,37.91 ",.01)
 ;;37.91 
 ;;9002226.02101,"847,37.91 ",.02)
 ;;37.91 
 ;;9002226.02101,"847,38.10 ",.01)
 ;;38.10 
 ;;9002226.02101,"847,38.10 ",.02)
 ;;38.10 
 ;;9002226.02101,"847,38.11 ",.01)
 ;;38.11 
 ;;9002226.02101,"847,38.11 ",.02)
 ;;38.11 
 ;;9002226.02101,"847,38.12 ",.01)
 ;;38.12 
 ;;9002226.02101,"847,38.12 ",.02)
 ;;38.12 
 ;;9002226.02101,"847,38.13 ",.01)
 ;;38.13 
 ;;9002226.02101,"847,38.13 ",.02)
 ;;38.13 
 ;;9002226.02101,"847,38.14 ",.01)
 ;;38.14 
 ;;9002226.02101,"847,38.14 ",.02)
 ;;38.14 
 ;;9002226.02101,"847,38.15 ",.01)
 ;;38.15 
 ;;9002226.02101,"847,38.15 ",.02)
 ;;38.15 
 ;;9002226.02101,"847,38.16 ",.01)
 ;;38.16 
 ;;9002226.02101,"847,38.16 ",.02)
 ;;38.16 
 ;;9002226.02101,"847,38.18 ",.01)
 ;;38.18 
 ;;9002226.02101,"847,38.18 ",.02)
 ;;38.18 
 ;;9002226.02101,"847,38.30 ",.01)
 ;;38.30 
 ;;9002226.02101,"847,38.30 ",.02)
 ;;38.30 
 ;;9002226.02101,"847,38.31 ",.01)
 ;;38.31 
 ;;9002226.02101,"847,38.31 ",.02)
 ;;38.31 
 ;;9002226.02101,"847,38.32 ",.01)
 ;;38.32 
 ;;9002226.02101,"847,38.32 ",.02)
 ;;38.32 
 ;;9002226.02101,"847,38.33 ",.01)
 ;;38.33 
 ;;9002226.02101,"847,38.33 ",.02)
 ;;38.33 
 ;;9002226.02101,"847,38.34 ",.01)
 ;;38.34 
 ;;9002226.02101,"847,38.34 ",.02)
 ;;38.34 
 ;;9002226.02101,"847,38.35 ",.01)
 ;;38.35 
 ;;9002226.02101,"847,38.35 ",.02)
 ;;38.35 
 ;;9002226.02101,"847,38.36 ",.01)
 ;;38.36 
 ;;9002226.02101,"847,38.36 ",.02)
 ;;38.36 
 ;;9002226.02101,"847,38.37 ",.01)
 ;;38.37 
 ;;9002226.02101,"847,38.37 ",.02)
 ;;38.37 
 ;;9002226.02101,"847,38.38 ",.01)
 ;;38.38 
 ;;9002226.02101,"847,38.38 ",.02)
 ;;38.38 
 ;;9002226.02101,"847,38.39 ",.01)
 ;;38.39 
 ;;9002226.02101,"847,38.39 ",.02)
 ;;38.39 
 ;;9002226.02101,"847,38.40 ",.01)
 ;;38.40 
 ;;9002226.02101,"847,38.40 ",.02)
 ;;38.40 
 ;;9002226.02101,"847,38.41 ",.01)
 ;;38.41 
 ;;9002226.02101,"847,38.41 ",.02)
 ;;38.41 
 ;;9002226.02101,"847,38.42 ",.01)
 ;;38.42 
 ;;9002226.02101,"847,38.42 ",.02)
 ;;38.42 
 ;;9002226.02101,"847,38.43 ",.01)
 ;;38.43 
 ;;9002226.02101,"847,38.43 ",.02)
 ;;38.43 
 ;;9002226.02101,"847,38.44 ",.01)
 ;;38.44 
 ;;9002226.02101,"847,38.44 ",.02)
 ;;38.44 
 ;;9002226.02101,"847,38.45 ",.01)
 ;;38.45 
 ;;9002226.02101,"847,38.45 ",.02)
 ;;38.45 
 ;;9002226.02101,"847,38.46 ",.01)
 ;;38.46 
 ;;9002226.02101,"847,38.46 ",.02)
 ;;38.46 
 ;;9002226.02101,"847,38.47 ",.01)
 ;;38.47 
 ;;9002226.02101,"847,38.47 ",.02)
 ;;38.47 
 ;;9002226.02101,"847,38.48 ",.01)
 ;;38.48 
 ;;9002226.02101,"847,38.48 ",.02)
 ;;38.48 
 ;;9002226.02101,"847,38.49 ",.01)
 ;;38.49 
 ;;9002226.02101,"847,38.49 ",.02)
 ;;38.49 
 ;;9002226.02101,"847,38.64 ",.01)
 ;;38.64 
 ;;9002226.02101,"847,38.64 ",.02)
 ;;38.64 
 ;;9002226.02101,"847,38.7 ",.01)
 ;;38.7 
 ;;9002226.02101,"847,38.7 ",.02)
 ;;38.7 
 ;;9002226.02101,"847,38.80 ",.01)
 ;;38.80 
 ;;9002226.02101,"847,38.80 ",.02)
 ;;38.80 
 ;;9002226.02101,"847,38.81 ",.01)
 ;;38.81 
 ;;9002226.02101,"847,38.81 ",.02)
 ;;38.81 
 ;;9002226.02101,"847,38.82 ",.01)
 ;;38.82 
 ;;9002226.02101,"847,38.82 ",.02)
 ;;38.82 
 ;;9002226.02101,"847,38.84 ",.01)
 ;;38.84 
 ;;9002226.02101,"847,38.84 ",.02)
 ;;38.84 
 ;;9002226.02101,"847,38.85 ",.01)
 ;;38.85 
 ;;9002226.02101,"847,38.85 ",.02)
 ;;38.85 
 ;;9002226.02101,"847,38.86 ",.01)
 ;;38.86 
 ;;9002226.02101,"847,38.86 ",.02)
 ;;38.86 
 ;;9002226.02101,"847,38.87 ",.01)
 ;;38.87 
 ;;9002226.02101,"847,38.87 ",.02)
 ;;38.87 
 ;;9002226.02101,"847,38.88 ",.01)
 ;;38.88 
 ;;9002226.02101,"847,38.88 ",.02)
 ;;38.88 
 ;;9002226.02101,"847,39.0 ",.01)
 ;;39.0 
 ;;9002226.02101,"847,39.0 ",.02)
 ;;39.0 
 ;;9002226.02101,"847,39.1 ",.01)
 ;;39.1 
 ;;9002226.02101,"847,39.1 ",.02)
 ;;39.1 
 ;;9002226.02101,"847,39.21 ",.01)
 ;;39.21 
 ;;9002226.02101,"847,39.21 ",.02)
 ;;39.21 
 ;;9002226.02101,"847,39.22 ",.01)
 ;;39.22 
 ;;9002226.02101,"847,39.22 ",.02)
 ;;39.22 
 ;;9002226.02101,"847,39.23 ",.01)
 ;;39.23 
 ;;9002226.02101,"847,39.23 ",.02)
 ;;39.23 
 ;;9002226.02101,"847,39.24 ",.01)
 ;;39.24 
 ;;9002226.02101,"847,39.24 ",.02)
 ;;39.24 
 ;;9002226.02101,"847,39.25 ",.01)
 ;;39.25 
 ;;9002226.02101,"847,39.25 ",.02)
 ;;39.25 
 ;;9002226.02101,"847,39.26 ",.01)
 ;;39.26 
 ;;9002226.02101,"847,39.26 ",.02)
 ;;39.26 
 ;;9002226.02101,"847,39.27 ",.01)
 ;;39.27 
 ;;9002226.02101,"847,39.27 ",.02)
 ;;39.27 
 ;;9002226.02101,"847,39.28 ",.01)
 ;;39.28 
 ;;9002226.02101,"847,39.28 ",.02)
 ;;39.28 
 ;;9002226.02101,"847,39.29 ",.01)
 ;;39.29 
 ;;9002226.02101,"847,39.29 ",.02)
 ;;39.29 
 ;;9002226.02101,"847,39.30 ",.01)
 ;;39.30 
 ;;9002226.02101,"847,39.30 ",.02)
 ;;39.30 
 ;;9002226.02101,"847,39.31 ",.01)
 ;;39.31 
 ;;9002226.02101,"847,39.31 ",.02)
 ;;39.31 
 ;;9002226.02101,"847,39.32 ",.01)
 ;;39.32 
 ;;9002226.02101,"847,39.32 ",.02)
 ;;39.32 
 ;;9002226.02101,"847,39.41 ",.01)
 ;;39.41 
 ;;9002226.02101,"847,39.41 ",.02)
 ;;39.41 
 ;;9002226.02101,"847,39.42 ",.01)
 ;;39.42 
 ;;9002226.02101,"847,39.42 ",.02)
 ;;39.42 
 ;;9002226.02101,"847,39.43 ",.01)
 ;;39.43 
 ;;9002226.02101,"847,39.43 ",.02)
 ;;39.43 
 ;;9002226.02101,"847,39.49 ",.01)
 ;;39.49 
 ;;9002226.02101,"847,39.49 ",.02)
 ;;39.49 
 ;;9002226.02101,"847,39.51 ",.01)
 ;;39.51 
 ;;9002226.02101,"847,39.51 ",.02)
 ;;39.51 
 ;;9002226.02101,"847,39.52 ",.01)
 ;;39.52 
 ;;9002226.02101,"847,39.52 ",.02)
 ;;39.52 
 ;;9002226.02101,"847,39.53 ",.01)
 ;;39.53 
 ;;9002226.02101,"847,39.53 ",.02)
 ;;39.53 
 ;;9002226.02101,"847,39.54 ",.01)
 ;;39.54 
 ;;9002226.02101,"847,39.54 ",.02)
 ;;39.54 
 ;;9002226.02101,"847,39.55 ",.01)
 ;;39.55 
 ;;9002226.02101,"847,39.55 ",.02)
 ;;39.55 
 ;;9002226.02101,"847,39.56 ",.01)
 ;;39.56 
 ;;9002226.02101,"847,39.56 ",.02)
 ;;39.56 
 ;;9002226.02101,"847,39.57 ",.01)
 ;;39.57 
 ;;9002226.02101,"847,39.57 ",.02)
 ;;39.57 
 ;;9002226.02101,"847,39.58 ",.01)
 ;;39.58 
 ;;9002226.02101,"847,39.58 ",.02)
 ;;39.58 
 ;;9002226.02101,"847,39.59 ",.01)
 ;;39.59 
 ;;9002226.02101,"847,39.59 ",.02)
 ;;39.59 
 ;;9002226.02101,"847,39.71 ",.01)
 ;;39.71 
 ;;9002226.02101,"847,39.71 ",.02)
 ;;39.71 
 ;;9002226.02101,"847,39.72 ",.01)
 ;;39.72 
 ;;9002226.02101,"847,39.72 ",.02)
 ;;39.72 
 ;;9002226.02101,"847,39.73 ",.01)
 ;;39.73 
 ;;9002226.02101,"847,39.73 ",.02)
 ;;39.73 
 ;;9002226.02101,"847,39.79 ",.01)
 ;;39.79 
 ;;9002226.02101,"847,39.79 ",.02)
 ;;39.79 
 ;;9002226.02101,"847,39.8 ",.01)
 ;;39.8 
 ;;9002226.02101,"847,39.8 ",.02)
 ;;39.8 
 ;;9002226.02101,"847,39.91 ",.01)
 ;;39.91 
 ;;9002226.02101,"847,39.91 ",.02)
 ;;39.91 
 ;;9002226.02101,"847,39.98 ",.01)
 ;;39.98 
 ;;9002226.02101,"847,39.98 ",.02)
 ;;39.98 
 ;;9002226.02101,"847,39.99 ",.01)
 ;;39.99 
 ;;9002226.02101,"847,39.99 ",.02)
 ;;39.99 
 ;;9002226.02101,"847,40.22 ",.01)
 ;;40.22 
 ;;9002226.02101,"847,40.22 ",.02)
 ;;40.22 
 ;;9002226.02101,"847,40.40 ",.01)
 ;;40.40 
 ;;9002226.02101,"847,40.40 ",.02)
 ;;40.40 
 ;;9002226.02101,"847,40.41 ",.01)
 ;;40.41 
 ;;9002226.02101,"847,40.41 ",.02)
 ;;40.41 
 ;;9002226.02101,"847,40.42 ",.01)
 ;;40.42 
 ;;9002226.02101,"847,40.42 ",.02)
 ;;40.42 
 ;;9002226.02101,"847,40.50 ",.01)
 ;;40.50 
 ;;9002226.02101,"847,40.50 ",.02)
 ;;40.50 
 ;;9002226.02101,"847,40.51 ",.01)
 ;;40.51 
 ;;9002226.02101,"847,40.51 ",.02)
 ;;40.51 
 ;;9002226.02101,"847,40.52 ",.01)
 ;;40.52 
 ;;9002226.02101,"847,40.52 ",.02)
 ;;40.52 
 ;;9002226.02101,"847,40.53 ",.01)
 ;;40.53 
 ;;9002226.02101,"847,40.53 ",.02)
 ;;40.53 
 ;;9002226.02101,"847,40.54 ",.01)
 ;;40.54 
 ;;9002226.02101,"847,40.54 ",.02)
 ;;40.54 
 ;;9002226.02101,"847,40.59 ",.01)
 ;;40.59 
 ;;9002226.02101,"847,40.59 ",.02)
 ;;40.59 
 ;;9002226.02101,"847,40.62 ",.01)
 ;;40.62 
 ;;9002226.02101,"847,40.62 ",.02)
 ;;40.62 
 ;;9002226.02101,"847,40.63 ",.01)
 ;;40.63 
 ;;9002226.02101,"847,40.63 ",.02)
 ;;40.63 
 ;;9002226.02101,"847,41.2 ",.01)
 ;;41.2 
 ;;9002226.02101,"847,41.2 ",.02)
 ;;41.2 
 ;;9002226.02101,"847,41.5 ",.01)
 ;;41.5 
 ;;9002226.02101,"847,41.5 ",.02)
 ;;41.5 
 ;;9002226.02101,"847,42.01 ",.01)
 ;;42.01 
 ;;9002226.02101,"847,42.01 ",.02)
 ;;42.01 
 ;;9002226.02101,"847,42.09 ",.01)
 ;;42.09 
 ;;9002226.02101,"847,42.09 ",.02)
 ;;42.09 
 ;;9002226.02101,"847,42.10 ",.01)
 ;;42.10 
 ;;9002226.02101,"847,42.10 ",.02)
 ;;42.10 
 ;;9002226.02101,"847,42.11 ",.01)
 ;;42.11 
 ;;9002226.02101,"847,42.11 ",.02)
 ;;42.11 
 ;;9002226.02101,"847,42.12 ",.01)
 ;;42.12 
 ;;9002226.02101,"847,42.12 ",.02)
 ;;42.12 
 ;;9002226.02101,"847,42.19 ",.01)
 ;;42.19 
 ;;9002226.02101,"847,42.19 ",.02)
 ;;42.19 
