ATXXB216 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,CW26SZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW26YZZ ",.01)
 ;;CW26YZZ 
 ;;9002226.02101,"1804,CW26YZZ ",.02)
 ;;CW26YZZ 
 ;;9002226.02101,"1804,CW26YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2B1ZZ ",.01)
 ;;CW2B1ZZ 
 ;;9002226.02101,"1804,CW2B1ZZ ",.02)
 ;;CW2B1ZZ 
 ;;9002226.02101,"1804,CW2B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BDZZ ",.01)
 ;;CW2BDZZ 
 ;;9002226.02101,"1804,CW2BDZZ ",.02)
 ;;CW2BDZZ 
 ;;9002226.02101,"1804,CW2BDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BFZZ ",.01)
 ;;CW2BFZZ 
 ;;9002226.02101,"1804,CW2BFZZ ",.02)
 ;;CW2BFZZ 
 ;;9002226.02101,"1804,CW2BFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BGZZ ",.01)
 ;;CW2BGZZ 
 ;;9002226.02101,"1804,CW2BGZZ ",.02)
 ;;CW2BGZZ 
 ;;9002226.02101,"1804,CW2BGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BKZZ ",.01)
 ;;CW2BKZZ 
 ;;9002226.02101,"1804,CW2BKZZ ",.02)
 ;;CW2BKZZ 
 ;;9002226.02101,"1804,CW2BKZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BLZZ ",.01)
 ;;CW2BLZZ 
 ;;9002226.02101,"1804,CW2BLZZ ",.02)
 ;;CW2BLZZ 
 ;;9002226.02101,"1804,CW2BLZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BSZZ ",.01)
 ;;CW2BSZZ 
 ;;9002226.02101,"1804,CW2BSZZ ",.02)
 ;;CW2BSZZ 
 ;;9002226.02101,"1804,CW2BSZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2BYZZ ",.01)
 ;;CW2BYZZ 
 ;;9002226.02101,"1804,CW2BYZZ ",.02)
 ;;CW2BYZZ 
 ;;9002226.02101,"1804,CW2BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2D1ZZ ",.01)
 ;;CW2D1ZZ 
 ;;9002226.02101,"1804,CW2D1ZZ ",.02)
 ;;CW2D1ZZ 
 ;;9002226.02101,"1804,CW2D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DDZZ ",.01)
 ;;CW2DDZZ 
 ;;9002226.02101,"1804,CW2DDZZ ",.02)
 ;;CW2DDZZ 
 ;;9002226.02101,"1804,CW2DDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DFZZ ",.01)
 ;;CW2DFZZ 
 ;;9002226.02101,"1804,CW2DFZZ ",.02)
 ;;CW2DFZZ 
 ;;9002226.02101,"1804,CW2DFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DGZZ ",.01)
 ;;CW2DGZZ 
 ;;9002226.02101,"1804,CW2DGZZ ",.02)
 ;;CW2DGZZ 
 ;;9002226.02101,"1804,CW2DGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DKZZ ",.01)
 ;;CW2DKZZ 
 ;;9002226.02101,"1804,CW2DKZZ ",.02)
 ;;CW2DKZZ 
 ;;9002226.02101,"1804,CW2DKZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DLZZ ",.01)
 ;;CW2DLZZ 
 ;;9002226.02101,"1804,CW2DLZZ ",.02)
 ;;CW2DLZZ 
 ;;9002226.02101,"1804,CW2DLZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DSZZ ",.01)
 ;;CW2DSZZ 
 ;;9002226.02101,"1804,CW2DSZZ ",.02)
 ;;CW2DSZZ 
 ;;9002226.02101,"1804,CW2DSZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2DYZZ ",.01)
 ;;CW2DYZZ 
 ;;9002226.02101,"1804,CW2DYZZ ",.02)
 ;;CW2DYZZ 
 ;;9002226.02101,"1804,CW2DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2J1ZZ ",.01)
 ;;CW2J1ZZ 
 ;;9002226.02101,"1804,CW2J1ZZ ",.02)
 ;;CW2J1ZZ 
 ;;9002226.02101,"1804,CW2J1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JDZZ ",.01)
 ;;CW2JDZZ 
 ;;9002226.02101,"1804,CW2JDZZ ",.02)
 ;;CW2JDZZ 
 ;;9002226.02101,"1804,CW2JDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JFZZ ",.01)
 ;;CW2JFZZ 
 ;;9002226.02101,"1804,CW2JFZZ ",.02)
 ;;CW2JFZZ 
 ;;9002226.02101,"1804,CW2JFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JGZZ ",.01)
 ;;CW2JGZZ 
 ;;9002226.02101,"1804,CW2JGZZ ",.02)
 ;;CW2JGZZ 
 ;;9002226.02101,"1804,CW2JGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JKZZ ",.01)
 ;;CW2JKZZ 
 ;;9002226.02101,"1804,CW2JKZZ ",.02)
 ;;CW2JKZZ 
 ;;9002226.02101,"1804,CW2JKZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JLZZ ",.01)
 ;;CW2JLZZ 
 ;;9002226.02101,"1804,CW2JLZZ ",.02)
 ;;CW2JLZZ 
 ;;9002226.02101,"1804,CW2JLZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JSZZ ",.01)
 ;;CW2JSZZ 
 ;;9002226.02101,"1804,CW2JSZZ ",.02)
 ;;CW2JSZZ 
 ;;9002226.02101,"1804,CW2JSZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2JYZZ ",.01)
 ;;CW2JYZZ 
 ;;9002226.02101,"1804,CW2JYZZ ",.02)
 ;;CW2JYZZ 
 ;;9002226.02101,"1804,CW2JYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2M1ZZ ",.01)
 ;;CW2M1ZZ 
 ;;9002226.02101,"1804,CW2M1ZZ ",.02)
 ;;CW2M1ZZ 
 ;;9002226.02101,"1804,CW2M1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MDZZ ",.01)
 ;;CW2MDZZ 
 ;;9002226.02101,"1804,CW2MDZZ ",.02)
 ;;CW2MDZZ 
 ;;9002226.02101,"1804,CW2MDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MFZZ ",.01)
 ;;CW2MFZZ 
 ;;9002226.02101,"1804,CW2MFZZ ",.02)
 ;;CW2MFZZ 
 ;;9002226.02101,"1804,CW2MFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MGZZ ",.01)
 ;;CW2MGZZ 
 ;;9002226.02101,"1804,CW2MGZZ ",.02)
 ;;CW2MGZZ 
 ;;9002226.02101,"1804,CW2MGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MKZZ ",.01)
 ;;CW2MKZZ 
 ;;9002226.02101,"1804,CW2MKZZ ",.02)
 ;;CW2MKZZ 
 ;;9002226.02101,"1804,CW2MKZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MLZZ ",.01)
 ;;CW2MLZZ 
 ;;9002226.02101,"1804,CW2MLZZ ",.02)
 ;;CW2MLZZ 
 ;;9002226.02101,"1804,CW2MLZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MSZZ ",.01)
 ;;CW2MSZZ 
 ;;9002226.02101,"1804,CW2MSZZ ",.02)
 ;;CW2MSZZ 
 ;;9002226.02101,"1804,CW2MSZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2MYZZ ",.01)
 ;;CW2MYZZ 
 ;;9002226.02101,"1804,CW2MYZZ ",.02)
 ;;CW2MYZZ 
 ;;9002226.02101,"1804,CW2MYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW2YYZZ ",.01)
 ;;CW2YYZZ 
 ;;9002226.02101,"1804,CW2YYZZ ",.02)
 ;;CW2YYZZ 
 ;;9002226.02101,"1804,CW2YYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW3NYZZ ",.01)
 ;;CW3NYZZ 
 ;;9002226.02101,"1804,CW3NYZZ ",.02)
 ;;CW3NYZZ 
 ;;9002226.02101,"1804,CW3NYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW501ZZ ",.01)
 ;;CW501ZZ 
 ;;9002226.02101,"1804,CW501ZZ ",.02)
 ;;CW501ZZ 
 ;;9002226.02101,"1804,CW501ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW50DZZ ",.01)
 ;;CW50DZZ 
 ;;9002226.02101,"1804,CW50DZZ ",.02)
 ;;CW50DZZ 
 ;;9002226.02101,"1804,CW50DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW50YZZ ",.01)
 ;;CW50YZZ 
 ;;9002226.02101,"1804,CW50YZZ ",.02)
 ;;CW50YZZ 
 ;;9002226.02101,"1804,CW50YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW511ZZ ",.01)
 ;;CW511ZZ 
 ;;9002226.02101,"1804,CW511ZZ ",.02)
 ;;CW511ZZ 
 ;;9002226.02101,"1804,CW511ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW51DZZ ",.01)
 ;;CW51DZZ 
 ;;9002226.02101,"1804,CW51DZZ ",.02)
 ;;CW51DZZ 
 ;;9002226.02101,"1804,CW51DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW51YZZ ",.01)
 ;;CW51YZZ 
 ;;9002226.02101,"1804,CW51YZZ ",.02)
 ;;CW51YZZ 
 ;;9002226.02101,"1804,CW51YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW531ZZ ",.01)
 ;;CW531ZZ 
 ;;9002226.02101,"1804,CW531ZZ ",.02)
 ;;CW531ZZ 
 ;;9002226.02101,"1804,CW531ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW53DZZ ",.01)
 ;;CW53DZZ 
 ;;9002226.02101,"1804,CW53DZZ ",.02)
 ;;CW53DZZ 
 ;;9002226.02101,"1804,CW53DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW53YZZ ",.01)
 ;;CW53YZZ 
 ;;9002226.02101,"1804,CW53YZZ ",.02)
 ;;CW53YZZ 
 ;;9002226.02101,"1804,CW53YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW541ZZ ",.01)
 ;;CW541ZZ 
 ;;9002226.02101,"1804,CW541ZZ ",.02)
 ;;CW541ZZ 
 ;;9002226.02101,"1804,CW541ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW54DZZ ",.01)
 ;;CW54DZZ 
 ;;9002226.02101,"1804,CW54DZZ ",.02)
 ;;CW54DZZ 
 ;;9002226.02101,"1804,CW54DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW54YZZ ",.01)
 ;;CW54YZZ 
 ;;9002226.02101,"1804,CW54YZZ ",.02)
 ;;CW54YZZ 
 ;;9002226.02101,"1804,CW54YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW561ZZ ",.01)
 ;;CW561ZZ 
 ;;9002226.02101,"1804,CW561ZZ ",.02)
 ;;CW561ZZ 
 ;;9002226.02101,"1804,CW561ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW56DZZ ",.01)
 ;;CW56DZZ 
 ;;9002226.02101,"1804,CW56DZZ ",.02)
 ;;CW56DZZ 
 ;;9002226.02101,"1804,CW56DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW56YZZ ",.01)
 ;;CW56YZZ 
 ;;9002226.02101,"1804,CW56YZZ ",.02)
 ;;CW56YZZ 
 ;;9002226.02101,"1804,CW56YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5B1ZZ ",.01)
 ;;CW5B1ZZ 
 ;;9002226.02101,"1804,CW5B1ZZ ",.02)
 ;;CW5B1ZZ 
 ;;9002226.02101,"1804,CW5B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5BDZZ ",.01)
 ;;CW5BDZZ 
 ;;9002226.02101,"1804,CW5BDZZ ",.02)
 ;;CW5BDZZ 
 ;;9002226.02101,"1804,CW5BDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5BYZZ ",.01)
 ;;CW5BYZZ 
 ;;9002226.02101,"1804,CW5BYZZ ",.02)
 ;;CW5BYZZ 
 ;;9002226.02101,"1804,CW5BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5D1ZZ ",.01)
 ;;CW5D1ZZ 
 ;;9002226.02101,"1804,CW5D1ZZ ",.02)
 ;;CW5D1ZZ 
 ;;9002226.02101,"1804,CW5D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5DDZZ ",.01)
 ;;CW5DDZZ 
 ;;9002226.02101,"1804,CW5DDZZ ",.02)
 ;;CW5DDZZ 
 ;;9002226.02101,"1804,CW5DDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5DYZZ ",.01)
 ;;CW5DYZZ 
 ;;9002226.02101,"1804,CW5DYZZ ",.02)
 ;;CW5DYZZ 
 ;;9002226.02101,"1804,CW5DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5J1ZZ ",.01)
 ;;CW5J1ZZ 
 ;;9002226.02101,"1804,CW5J1ZZ ",.02)
 ;;CW5J1ZZ 
 ;;9002226.02101,"1804,CW5J1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5JDZZ ",.01)
 ;;CW5JDZZ 
 ;;9002226.02101,"1804,CW5JDZZ ",.02)
 ;;CW5JDZZ 
 ;;9002226.02101,"1804,CW5JDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5JYZZ ",.01)
 ;;CW5JYZZ 
 ;;9002226.02101,"1804,CW5JYZZ ",.02)
 ;;CW5JYZZ 
 ;;9002226.02101,"1804,CW5JYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5M1ZZ ",.01)
 ;;CW5M1ZZ 
 ;;9002226.02101,"1804,CW5M1ZZ ",.02)
 ;;CW5M1ZZ 
 ;;9002226.02101,"1804,CW5M1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5MDZZ ",.01)
 ;;CW5MDZZ 
 ;;9002226.02101,"1804,CW5MDZZ ",.02)
 ;;CW5MDZZ 
 ;;9002226.02101,"1804,CW5MDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW5MYZZ ",.01)
 ;;CW5MYZZ 
 ;;9002226.02101,"1804,CW5MYZZ ",.02)
 ;;CW5MYZZ 
 ;;9002226.02101,"1804,CW5MYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW70NZZ ",.01)
 ;;CW70NZZ 
 ;;9002226.02101,"1804,CW70NZZ ",.02)
 ;;CW70NZZ 
 ;;9002226.02101,"1804,CW70NZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW70YZZ ",.01)
 ;;CW70YZZ 
 ;;9002226.02101,"1804,CW70YZZ ",.02)
 ;;CW70YZZ 
 ;;9002226.02101,"1804,CW70YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW73NZZ ",.01)
 ;;CW73NZZ 
 ;;9002226.02101,"1804,CW73NZZ ",.02)
 ;;CW73NZZ 
 ;;9002226.02101,"1804,CW73NZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW73YZZ ",.01)
 ;;CW73YZZ 
 ;;9002226.02101,"1804,CW73YZZ ",.02)
 ;;CW73YZZ 
 ;;9002226.02101,"1804,CW73YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7GGZZ ",.01)
 ;;CW7GGZZ 
 ;;9002226.02101,"1804,CW7GGZZ ",.02)
 ;;CW7GGZZ 
 ;;9002226.02101,"1804,CW7GGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7GYZZ ",.01)
 ;;CW7GYZZ 
 ;;9002226.02101,"1804,CW7GYZZ ",.02)
 ;;CW7GYZZ 
 ;;9002226.02101,"1804,CW7GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7N8ZZ ",.01)
 ;;CW7N8ZZ 
 ;;9002226.02101,"1804,CW7N8ZZ ",.02)
 ;;CW7N8ZZ 
 ;;9002226.02101,"1804,CW7N8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7NGZZ ",.01)
 ;;CW7NGZZ 
 ;;9002226.02101,"1804,CW7NGZZ ",.02)
 ;;CW7NGZZ 
 ;;9002226.02101,"1804,CW7NGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7NNZZ ",.01)
 ;;CW7NNZZ 
 ;;9002226.02101,"1804,CW7NNZZ ",.02)
 ;;CW7NNZZ 
 ;;9002226.02101,"1804,CW7NNZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7NPZZ ",.01)
 ;;CW7NPZZ 
 ;;9002226.02101,"1804,CW7NPZZ ",.02)
 ;;CW7NPZZ 
 ;;9002226.02101,"1804,CW7NPZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7NYZZ ",.01)
 ;;CW7NYZZ 
 ;;9002226.02101,"1804,CW7NYZZ ",.02)
 ;;CW7NYZZ 
 ;;9002226.02101,"1804,CW7NYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,CW7YYZZ ",.01)
 ;;CW7YYZZ 
 ;;9002226.02101,"1804,CW7YYZZ ",.02)
 ;;CW7YYZZ 
 ;;9002226.02101,"1804,CW7YYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D0000ZZ ",.01)
 ;;D0000ZZ 
 ;;9002226.02101,"1804,D0000ZZ ",.02)
 ;;D0000ZZ 
 ;;9002226.02101,"1804,D0000ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D0001ZZ ",.01)
 ;;D0001ZZ 
 ;;9002226.02101,"1804,D0001ZZ ",.02)
 ;;D0001ZZ 
 ;;9002226.02101,"1804,D0001ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D0002ZZ ",.01)
 ;;D0002ZZ 
 ;;9002226.02101,"1804,D0002ZZ ",.02)
 ;;D0002ZZ 
 ;;9002226.02101,"1804,D0002ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D0003Z0 ",.01)
 ;;D0003Z0 
 ;;9002226.02101,"1804,D0003Z0 ",.02)
 ;;D0003Z0 
 ;;9002226.02101,"1804,D0003Z0 ",.03)
 ;;31
