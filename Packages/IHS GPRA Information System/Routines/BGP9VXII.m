BGP9VXII ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"862,07.72 ",.02)
 ;;07.72 
 ;;9002226.02101,"862,07.79 ",.01)
 ;;07.79 
 ;;9002226.02101,"862,07.79 ",.02)
 ;;07.79 
 ;;9002226.02101,"862,07.80 ",.01)
 ;;07.80 
 ;;9002226.02101,"862,07.80 ",.02)
 ;;07.80 
 ;;9002226.02101,"862,07.81 ",.01)
 ;;07.81 
 ;;9002226.02101,"862,07.81 ",.02)
 ;;07.81 
 ;;9002226.02101,"862,07.82 ",.01)
 ;;07.82 
 ;;9002226.02101,"862,07.82 ",.02)
 ;;07.82 
 ;;9002226.02101,"862,07.91 ",.01)
 ;;07.91 
 ;;9002226.02101,"862,07.91 ",.02)
 ;;07.91 
 ;;9002226.02101,"862,07.92 ",.01)
 ;;07.92 
 ;;9002226.02101,"862,07.92 ",.02)
 ;;07.92 
 ;;9002226.02101,"862,07.93 ",.01)
 ;;07.93 
 ;;9002226.02101,"862,07.93 ",.02)
 ;;07.93 
 ;;9002226.02101,"862,07.94 ",.01)
 ;;07.94 
 ;;9002226.02101,"862,07.94 ",.02)
 ;;07.94 
 ;;9002226.02101,"862,07.99 ",.01)
 ;;07.99 
 ;;9002226.02101,"862,07.99 ",.02)
 ;;07.99 
 ;;9002226.02101,"862,16.31 ",.01)
 ;;16.31 
 ;;9002226.02101,"862,16.31 ",.02)
 ;;16.31 
 ;;9002226.02101,"862,16.39 ",.01)
 ;;16.39 
 ;;9002226.02101,"862,16.39 ",.02)
 ;;16.39 
 ;;9002226.02101,"862,16.41 ",.01)
 ;;16.41 
 ;;9002226.02101,"862,16.41 ",.02)
 ;;16.41 
 ;;9002226.02101,"862,16.42 ",.01)
 ;;16.42 
 ;;9002226.02101,"862,16.42 ",.02)
 ;;16.42 
 ;;9002226.02101,"862,16.49 ",.01)
 ;;16.49 
 ;;9002226.02101,"862,16.49 ",.02)
 ;;16.49 
 ;;9002226.02101,"862,16.51 ",.01)
 ;;16.51 
 ;;9002226.02101,"862,16.51 ",.02)
 ;;16.51 
 ;;9002226.02101,"862,16.52 ",.01)
 ;;16.52 
 ;;9002226.02101,"862,16.52 ",.02)
 ;;16.52 
 ;;9002226.02101,"862,16.59 ",.01)
 ;;16.59 
 ;;9002226.02101,"862,16.59 ",.02)
 ;;16.59 
 ;;9002226.02101,"862,16.63 ",.01)
 ;;16.63 
 ;;9002226.02101,"862,16.63 ",.02)
 ;;16.63 
 ;;9002226.02101,"862,16.64 ",.01)
 ;;16.64 
 ;;9002226.02101,"862,16.64 ",.02)
 ;;16.64 
 ;;9002226.02101,"862,16.65 ",.01)
 ;;16.65 
 ;;9002226.02101,"862,16.65 ",.02)
 ;;16.65 
 ;;9002226.02101,"862,16.66 ",.01)
 ;;16.66 
 ;;9002226.02101,"862,16.66 ",.02)
 ;;16.66 
 ;;9002226.02101,"862,16.69 ",.01)
 ;;16.69 
 ;;9002226.02101,"862,16.69 ",.02)
 ;;16.69 
 ;;9002226.02101,"862,20.41 ",.01)
 ;;20.41 
 ;;9002226.02101,"862,20.41 ",.02)
 ;;20.41 
 ;;9002226.02101,"862,20.42 ",.01)
 ;;20.42 
 ;;9002226.02101,"862,20.42 ",.02)
 ;;20.42 
 ;;9002226.02101,"862,20.49 ",.01)
 ;;20.49 
 ;;9002226.02101,"862,20.49 ",.02)
 ;;20.49 
 ;;9002226.02101,"862,25.4 ",.01)
 ;;25.4 
 ;;9002226.02101,"862,25.4 ",.02)
 ;;25.4 
 ;;9002226.02101,"862,27.62 ",.01)
 ;;27.62 
 ;;9002226.02101,"862,27.62 ",.02)
 ;;27.62 
 ;;9002226.02101,"862,27.63 ",.01)
 ;;27.63 
 ;;9002226.02101,"862,27.63 ",.02)
 ;;27.63 
 ;;9002226.02101,"862,27.69 ",.01)
 ;;27.69 
 ;;9002226.02101,"862,27.69 ",.02)
 ;;27.69 
 ;;9002226.02101,"862,28.7 ",.01)
 ;;28.7 
 ;;9002226.02101,"862,28.7 ",.02)
 ;;28.7 
 ;;9002226.02101,"862,29.0 ",.01)
 ;;29.0 
 ;;9002226.02101,"862,29.0 ",.02)
 ;;29.0 
 ;;9002226.02101,"862,29.2 ",.01)
 ;;29.2 
 ;;9002226.02101,"862,29.2 ",.02)
 ;;29.2 
 ;;9002226.02101,"862,29.31 ",.01)
 ;;29.31 
 ;;9002226.02101,"862,29.31 ",.02)
 ;;29.31 
 ;;9002226.02101,"862,29.32 ",.01)
 ;;29.32 
 ;;9002226.02101,"862,29.32 ",.02)
 ;;29.32 
 ;;9002226.02101,"862,29.33 ",.01)
 ;;29.33 
 ;;9002226.02101,"862,29.33 ",.02)
 ;;29.33 
 ;;9002226.02101,"862,29.39 ",.01)
 ;;29.39 
 ;;9002226.02101,"862,29.39 ",.02)
 ;;29.39 
 ;;9002226.02101,"862,29.4 ",.01)
 ;;29.4 
 ;;9002226.02101,"862,29.4 ",.02)
 ;;29.4 
 ;;9002226.02101,"862,30.1 ",.01)
 ;;30.1 
 ;;9002226.02101,"862,30.1 ",.02)
 ;;30.1 
 ;;9002226.02101,"862,30.21 ",.01)
 ;;30.21 
 ;;9002226.02101,"862,30.21 ",.02)
 ;;30.21 
 ;;9002226.02101,"862,30.22 ",.01)
 ;;30.22 
 ;;9002226.02101,"862,30.22 ",.02)
 ;;30.22 
 ;;9002226.02101,"862,30.29 ",.01)
 ;;30.29 
 ;;9002226.02101,"862,30.29 ",.02)
 ;;30.29 
 ;;9002226.02101,"862,30.3 ",.01)
 ;;30.3 
 ;;9002226.02101,"862,30.3 ",.02)
 ;;30.3 
 ;;9002226.02101,"862,30.4 ",.01)
 ;;30.4 
 ;;9002226.02101,"862,30.4 ",.02)
 ;;30.4 
 ;;9002226.02101,"862,31.21 ",.01)
 ;;31.21 
 ;;9002226.02101,"862,31.21 ",.02)
 ;;31.21 
 ;;9002226.02101,"862,31.29 ",.01)
 ;;31.29 
 ;;9002226.02101,"862,31.29 ",.02)
 ;;31.29 
 ;;9002226.02101,"862,31.61 ",.01)
 ;;31.61 
 ;;9002226.02101,"862,31.61 ",.02)
 ;;31.61 
 ;;9002226.02101,"862,31.62 ",.01)
 ;;31.62 
 ;;9002226.02101,"862,31.62 ",.02)
 ;;31.62 
 ;;9002226.02101,"862,31.63 ",.01)
 ;;31.63 
 ;;9002226.02101,"862,31.63 ",.02)
 ;;31.63 
 ;;9002226.02101,"862,31.64 ",.01)
 ;;31.64 
 ;;9002226.02101,"862,31.64 ",.02)
 ;;31.64 
 ;;9002226.02101,"862,31.69 ",.01)
 ;;31.69 
 ;;9002226.02101,"862,31.69 ",.02)
 ;;31.69 
 ;;9002226.02101,"862,31.73 ",.01)
 ;;31.73 
 ;;9002226.02101,"862,31.73 ",.02)
 ;;31.73 
 ;;9002226.02101,"862,31.74 ",.01)
 ;;31.74 
 ;;9002226.02101,"862,31.74 ",.02)
 ;;31.74 
 ;;9002226.02101,"862,31.75 ",.01)
 ;;31.75 
 ;;9002226.02101,"862,31.75 ",.02)
 ;;31.75 
 ;;9002226.02101,"862,31.79 ",.01)
 ;;31.79 
 ;;9002226.02101,"862,31.79 ",.02)
 ;;31.79 
 ;;9002226.02101,"862,31.92 ",.01)
 ;;31.92 
 ;;9002226.02101,"862,31.92 ",.02)
 ;;31.92 
 ;;9002226.02101,"862,32.09 ",.01)
 ;;32.09 
