ATXXB156 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,2W57X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57XYZ ",.01)
 ;;2W57XYZ 
 ;;9002226.02101,"1804,2W57XYZ ",.02)
 ;;2W57XYZ 
 ;;9002226.02101,"1804,2W57XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X0Z ",.01)
 ;;2W58X0Z 
 ;;9002226.02101,"1804,2W58X0Z ",.02)
 ;;2W58X0Z 
 ;;9002226.02101,"1804,2W58X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X1Z ",.01)
 ;;2W58X1Z 
 ;;9002226.02101,"1804,2W58X1Z ",.02)
 ;;2W58X1Z 
 ;;9002226.02101,"1804,2W58X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X2Z ",.01)
 ;;2W58X2Z 
 ;;9002226.02101,"1804,2W58X2Z ",.02)
 ;;2W58X2Z 
 ;;9002226.02101,"1804,2W58X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X3Z ",.01)
 ;;2W58X3Z 
 ;;9002226.02101,"1804,2W58X3Z ",.02)
 ;;2W58X3Z 
 ;;9002226.02101,"1804,2W58X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X4Z ",.01)
 ;;2W58X4Z 
 ;;9002226.02101,"1804,2W58X4Z ",.02)
 ;;2W58X4Z 
 ;;9002226.02101,"1804,2W58X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X5Z ",.01)
 ;;2W58X5Z 
 ;;9002226.02101,"1804,2W58X5Z ",.02)
 ;;2W58X5Z 
 ;;9002226.02101,"1804,2W58X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X6Z ",.01)
 ;;2W58X6Z 
 ;;9002226.02101,"1804,2W58X6Z ",.02)
 ;;2W58X6Z 
 ;;9002226.02101,"1804,2W58X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58X7Z ",.01)
 ;;2W58X7Z 
 ;;9002226.02101,"1804,2W58X7Z ",.02)
 ;;2W58X7Z 
 ;;9002226.02101,"1804,2W58X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W58XYZ ",.01)
 ;;2W58XYZ 
 ;;9002226.02101,"1804,2W58XYZ ",.02)
 ;;2W58XYZ 
 ;;9002226.02101,"1804,2W58XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X0Z ",.01)
 ;;2W59X0Z 
 ;;9002226.02101,"1804,2W59X0Z ",.02)
 ;;2W59X0Z 
 ;;9002226.02101,"1804,2W59X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X1Z ",.01)
 ;;2W59X1Z 
 ;;9002226.02101,"1804,2W59X1Z ",.02)
 ;;2W59X1Z 
 ;;9002226.02101,"1804,2W59X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X2Z ",.01)
 ;;2W59X2Z 
 ;;9002226.02101,"1804,2W59X2Z ",.02)
 ;;2W59X2Z 
 ;;9002226.02101,"1804,2W59X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X3Z ",.01)
 ;;2W59X3Z 
 ;;9002226.02101,"1804,2W59X3Z ",.02)
 ;;2W59X3Z 
 ;;9002226.02101,"1804,2W59X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X4Z ",.01)
 ;;2W59X4Z 
 ;;9002226.02101,"1804,2W59X4Z ",.02)
 ;;2W59X4Z 
 ;;9002226.02101,"1804,2W59X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X5Z ",.01)
 ;;2W59X5Z 
 ;;9002226.02101,"1804,2W59X5Z ",.02)
 ;;2W59X5Z 
 ;;9002226.02101,"1804,2W59X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X6Z ",.01)
 ;;2W59X6Z 
 ;;9002226.02101,"1804,2W59X6Z ",.02)
 ;;2W59X6Z 
 ;;9002226.02101,"1804,2W59X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59X7Z ",.01)
 ;;2W59X7Z 
 ;;9002226.02101,"1804,2W59X7Z ",.02)
 ;;2W59X7Z 
 ;;9002226.02101,"1804,2W59X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W59XYZ ",.01)
 ;;2W59XYZ 
 ;;9002226.02101,"1804,2W59XYZ ",.02)
 ;;2W59XYZ 
 ;;9002226.02101,"1804,2W59XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX0Z ",.01)
 ;;2W5AX0Z 
 ;;9002226.02101,"1804,2W5AX0Z ",.02)
 ;;2W5AX0Z 
 ;;9002226.02101,"1804,2W5AX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX1Z ",.01)
 ;;2W5AX1Z 
 ;;9002226.02101,"1804,2W5AX1Z ",.02)
 ;;2W5AX1Z 
 ;;9002226.02101,"1804,2W5AX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX2Z ",.01)
 ;;2W5AX2Z 
 ;;9002226.02101,"1804,2W5AX2Z ",.02)
 ;;2W5AX2Z 
 ;;9002226.02101,"1804,2W5AX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX3Z ",.01)
 ;;2W5AX3Z 
 ;;9002226.02101,"1804,2W5AX3Z ",.02)
 ;;2W5AX3Z 
 ;;9002226.02101,"1804,2W5AX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX4Z ",.01)
 ;;2W5AX4Z 
 ;;9002226.02101,"1804,2W5AX4Z ",.02)
 ;;2W5AX4Z 
 ;;9002226.02101,"1804,2W5AX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX5Z ",.01)
 ;;2W5AX5Z 
 ;;9002226.02101,"1804,2W5AX5Z ",.02)
 ;;2W5AX5Z 
 ;;9002226.02101,"1804,2W5AX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX6Z ",.01)
 ;;2W5AX6Z 
 ;;9002226.02101,"1804,2W5AX6Z ",.02)
 ;;2W5AX6Z 
 ;;9002226.02101,"1804,2W5AX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AX7Z ",.01)
 ;;2W5AX7Z 
 ;;9002226.02101,"1804,2W5AX7Z ",.02)
 ;;2W5AX7Z 
 ;;9002226.02101,"1804,2W5AX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5AXYZ ",.01)
 ;;2W5AXYZ 
 ;;9002226.02101,"1804,2W5AXYZ ",.02)
 ;;2W5AXYZ 
 ;;9002226.02101,"1804,2W5AXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX0Z ",.01)
 ;;2W5BX0Z 
 ;;9002226.02101,"1804,2W5BX0Z ",.02)
 ;;2W5BX0Z 
 ;;9002226.02101,"1804,2W5BX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX1Z ",.01)
 ;;2W5BX1Z 
 ;;9002226.02101,"1804,2W5BX1Z ",.02)
 ;;2W5BX1Z 
 ;;9002226.02101,"1804,2W5BX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX2Z ",.01)
 ;;2W5BX2Z 
 ;;9002226.02101,"1804,2W5BX2Z ",.02)
 ;;2W5BX2Z 
 ;;9002226.02101,"1804,2W5BX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX3Z ",.01)
 ;;2W5BX3Z 
 ;;9002226.02101,"1804,2W5BX3Z ",.02)
 ;;2W5BX3Z 
 ;;9002226.02101,"1804,2W5BX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX4Z ",.01)
 ;;2W5BX4Z 
 ;;9002226.02101,"1804,2W5BX4Z ",.02)
 ;;2W5BX4Z 
 ;;9002226.02101,"1804,2W5BX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX5Z ",.01)
 ;;2W5BX5Z 
 ;;9002226.02101,"1804,2W5BX5Z ",.02)
 ;;2W5BX5Z 
 ;;9002226.02101,"1804,2W5BX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX6Z ",.01)
 ;;2W5BX6Z 
 ;;9002226.02101,"1804,2W5BX6Z ",.02)
 ;;2W5BX6Z 
 ;;9002226.02101,"1804,2W5BX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BX7Z ",.01)
 ;;2W5BX7Z 
 ;;9002226.02101,"1804,2W5BX7Z ",.02)
 ;;2W5BX7Z 
 ;;9002226.02101,"1804,2W5BX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5BXYZ ",.01)
 ;;2W5BXYZ 
 ;;9002226.02101,"1804,2W5BXYZ ",.02)
 ;;2W5BXYZ 
 ;;9002226.02101,"1804,2W5BXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX0Z ",.01)
 ;;2W5CX0Z 
 ;;9002226.02101,"1804,2W5CX0Z ",.02)
 ;;2W5CX0Z 
 ;;9002226.02101,"1804,2W5CX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX1Z ",.01)
 ;;2W5CX1Z 
 ;;9002226.02101,"1804,2W5CX1Z ",.02)
 ;;2W5CX1Z 
 ;;9002226.02101,"1804,2W5CX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX2Z ",.01)
 ;;2W5CX2Z 
 ;;9002226.02101,"1804,2W5CX2Z ",.02)
 ;;2W5CX2Z 
 ;;9002226.02101,"1804,2W5CX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX3Z ",.01)
 ;;2W5CX3Z 
 ;;9002226.02101,"1804,2W5CX3Z ",.02)
 ;;2W5CX3Z 
 ;;9002226.02101,"1804,2W5CX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX4Z ",.01)
 ;;2W5CX4Z 
 ;;9002226.02101,"1804,2W5CX4Z ",.02)
 ;;2W5CX4Z 
 ;;9002226.02101,"1804,2W5CX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX5Z ",.01)
 ;;2W5CX5Z 
 ;;9002226.02101,"1804,2W5CX5Z ",.02)
 ;;2W5CX5Z 
 ;;9002226.02101,"1804,2W5CX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX6Z ",.01)
 ;;2W5CX6Z 
 ;;9002226.02101,"1804,2W5CX6Z ",.02)
 ;;2W5CX6Z 
 ;;9002226.02101,"1804,2W5CX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CX7Z ",.01)
 ;;2W5CX7Z 
 ;;9002226.02101,"1804,2W5CX7Z ",.02)
 ;;2W5CX7Z 
 ;;9002226.02101,"1804,2W5CX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5CXYZ ",.01)
 ;;2W5CXYZ 
 ;;9002226.02101,"1804,2W5CXYZ ",.02)
 ;;2W5CXYZ 
 ;;9002226.02101,"1804,2W5CXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX0Z ",.01)
 ;;2W5DX0Z 
 ;;9002226.02101,"1804,2W5DX0Z ",.02)
 ;;2W5DX0Z 
 ;;9002226.02101,"1804,2W5DX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX1Z ",.01)
 ;;2W5DX1Z 
 ;;9002226.02101,"1804,2W5DX1Z ",.02)
 ;;2W5DX1Z 
 ;;9002226.02101,"1804,2W5DX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX2Z ",.01)
 ;;2W5DX2Z 
 ;;9002226.02101,"1804,2W5DX2Z ",.02)
 ;;2W5DX2Z 
 ;;9002226.02101,"1804,2W5DX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX3Z ",.01)
 ;;2W5DX3Z 
 ;;9002226.02101,"1804,2W5DX3Z ",.02)
 ;;2W5DX3Z 
 ;;9002226.02101,"1804,2W5DX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX4Z ",.01)
 ;;2W5DX4Z 
 ;;9002226.02101,"1804,2W5DX4Z ",.02)
 ;;2W5DX4Z 
 ;;9002226.02101,"1804,2W5DX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX5Z ",.01)
 ;;2W5DX5Z 
 ;;9002226.02101,"1804,2W5DX5Z ",.02)
 ;;2W5DX5Z 
 ;;9002226.02101,"1804,2W5DX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX6Z ",.01)
 ;;2W5DX6Z 
 ;;9002226.02101,"1804,2W5DX6Z ",.02)
 ;;2W5DX6Z 
 ;;9002226.02101,"1804,2W5DX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DX7Z ",.01)
 ;;2W5DX7Z 
 ;;9002226.02101,"1804,2W5DX7Z ",.02)
 ;;2W5DX7Z 
 ;;9002226.02101,"1804,2W5DX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5DXYZ ",.01)
 ;;2W5DXYZ 
 ;;9002226.02101,"1804,2W5DXYZ ",.02)
 ;;2W5DXYZ 
 ;;9002226.02101,"1804,2W5DXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX0Z ",.01)
 ;;2W5EX0Z 
 ;;9002226.02101,"1804,2W5EX0Z ",.02)
 ;;2W5EX0Z 
 ;;9002226.02101,"1804,2W5EX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX1Z ",.01)
 ;;2W5EX1Z 
 ;;9002226.02101,"1804,2W5EX1Z ",.02)
 ;;2W5EX1Z 
 ;;9002226.02101,"1804,2W5EX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX2Z ",.01)
 ;;2W5EX2Z 
 ;;9002226.02101,"1804,2W5EX2Z ",.02)
 ;;2W5EX2Z 
 ;;9002226.02101,"1804,2W5EX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX3Z ",.01)
 ;;2W5EX3Z 
 ;;9002226.02101,"1804,2W5EX3Z ",.02)
 ;;2W5EX3Z 
 ;;9002226.02101,"1804,2W5EX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX4Z ",.01)
 ;;2W5EX4Z 
 ;;9002226.02101,"1804,2W5EX4Z ",.02)
 ;;2W5EX4Z 
 ;;9002226.02101,"1804,2W5EX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX5Z ",.01)
 ;;2W5EX5Z 
 ;;9002226.02101,"1804,2W5EX5Z ",.02)
 ;;2W5EX5Z 
 ;;9002226.02101,"1804,2W5EX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX6Z ",.01)
 ;;2W5EX6Z 
 ;;9002226.02101,"1804,2W5EX6Z ",.02)
 ;;2W5EX6Z 
 ;;9002226.02101,"1804,2W5EX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EX7Z ",.01)
 ;;2W5EX7Z 
 ;;9002226.02101,"1804,2W5EX7Z ",.02)
 ;;2W5EX7Z 
 ;;9002226.02101,"1804,2W5EX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5EXYZ ",.01)
 ;;2W5EXYZ 
 ;;9002226.02101,"1804,2W5EXYZ ",.02)
 ;;2W5EXYZ 
 ;;9002226.02101,"1804,2W5EXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX0Z ",.01)
 ;;2W5FX0Z 
 ;;9002226.02101,"1804,2W5FX0Z ",.02)
 ;;2W5FX0Z 
 ;;9002226.02101,"1804,2W5FX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX1Z ",.01)
 ;;2W5FX1Z 
 ;;9002226.02101,"1804,2W5FX1Z ",.02)
 ;;2W5FX1Z 
 ;;9002226.02101,"1804,2W5FX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX2Z ",.01)
 ;;2W5FX2Z 
 ;;9002226.02101,"1804,2W5FX2Z ",.02)
 ;;2W5FX2Z 
 ;;9002226.02101,"1804,2W5FX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX3Z ",.01)
 ;;2W5FX3Z 
 ;;9002226.02101,"1804,2W5FX3Z ",.02)
 ;;2W5FX3Z 
 ;;9002226.02101,"1804,2W5FX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX4Z ",.01)
 ;;2W5FX4Z 
 ;;9002226.02101,"1804,2W5FX4Z ",.02)
 ;;2W5FX4Z 
 ;;9002226.02101,"1804,2W5FX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX5Z ",.01)
 ;;2W5FX5Z 
 ;;9002226.02101,"1804,2W5FX5Z ",.02)
 ;;2W5FX5Z 
 ;;9002226.02101,"1804,2W5FX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX6Z ",.01)
 ;;2W5FX6Z 
 ;;9002226.02101,"1804,2W5FX6Z ",.02)
 ;;2W5FX6Z 
 ;;9002226.02101,"1804,2W5FX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FX7Z ",.01)
 ;;2W5FX7Z 
 ;;9002226.02101,"1804,2W5FX7Z ",.02)
 ;;2W5FX7Z 
 ;;9002226.02101,"1804,2W5FX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5FXYZ ",.01)
 ;;2W5FXYZ 
 ;;9002226.02101,"1804,2W5FXYZ ",.02)
 ;;2W5FXYZ 
 ;;9002226.02101,"1804,2W5FXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5GX0Z ",.01)
 ;;2W5GX0Z 
 ;;9002226.02101,"1804,2W5GX0Z ",.02)
 ;;2W5GX0Z 
 ;;9002226.02101,"1804,2W5GX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5GX1Z ",.01)
 ;;2W5GX1Z 
 ;;9002226.02101,"1804,2W5GX1Z ",.02)
 ;;2W5GX1Z 
 ;;9002226.02101,"1804,2W5GX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5GX2Z ",.01)
 ;;2W5GX2Z 
 ;;9002226.02101,"1804,2W5GX2Z ",.02)
 ;;2W5GX2Z 
 ;;9002226.02101,"1804,2W5GX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5GX3Z ",.01)
 ;;2W5GX3Z 
 ;;9002226.02101,"1804,2W5GX3Z ",.02)
 ;;2W5GX3Z 
 ;;9002226.02101,"1804,2W5GX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W5GX4Z ",.01)
 ;;2W5GX4Z 
 ;;9002226.02101,"1804,2W5GX4Z ",.02)
 ;;2W5GX4Z 
 ;;9002226.02101,"1804,2W5GX4Z ",.03)
 ;;31
