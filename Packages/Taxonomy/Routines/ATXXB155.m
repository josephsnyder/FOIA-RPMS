ATXXB155 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,2W4PX5Z ",.02)
 ;;2W4PX5Z 
 ;;9002226.02101,"1804,2W4PX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4QX5Z ",.01)
 ;;2W4QX5Z 
 ;;9002226.02101,"1804,2W4QX5Z ",.02)
 ;;2W4QX5Z 
 ;;9002226.02101,"1804,2W4QX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4RX5Z ",.01)
 ;;2W4RX5Z 
 ;;9002226.02101,"1804,2W4RX5Z ",.02)
 ;;2W4RX5Z 
 ;;9002226.02101,"1804,2W4RX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4SX5Z ",.01)
 ;;2W4SX5Z 
 ;;9002226.02101,"1804,2W4SX5Z ",.02)
 ;;2W4SX5Z 
 ;;9002226.02101,"1804,2W4SX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4TX5Z ",.01)
 ;;2W4TX5Z 
 ;;9002226.02101,"1804,2W4TX5Z ",.02)
 ;;2W4TX5Z 
 ;;9002226.02101,"1804,2W4TX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4UX5Z ",.01)
 ;;2W4UX5Z 
 ;;9002226.02101,"1804,2W4UX5Z ",.02)
 ;;2W4UX5Z 
 ;;9002226.02101,"1804,2W4UX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W4VX5Z ",.01)
 ;;2W4VX5Z 
 ;;9002226.02101,"1804,2W4VX5Z ",.02)
 ;;2W4VX5Z 
 ;;9002226.02101,"1804,2W4VX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X0Z ",.01)
 ;;2W50X0Z 
 ;;9002226.02101,"1804,2W50X0Z ",.02)
 ;;2W50X0Z 
 ;;9002226.02101,"1804,2W50X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X1Z ",.01)
 ;;2W50X1Z 
 ;;9002226.02101,"1804,2W50X1Z ",.02)
 ;;2W50X1Z 
 ;;9002226.02101,"1804,2W50X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X2Z ",.01)
 ;;2W50X2Z 
 ;;9002226.02101,"1804,2W50X2Z ",.02)
 ;;2W50X2Z 
 ;;9002226.02101,"1804,2W50X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X3Z ",.01)
 ;;2W50X3Z 
 ;;9002226.02101,"1804,2W50X3Z ",.02)
 ;;2W50X3Z 
 ;;9002226.02101,"1804,2W50X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X4Z ",.01)
 ;;2W50X4Z 
 ;;9002226.02101,"1804,2W50X4Z ",.02)
 ;;2W50X4Z 
 ;;9002226.02101,"1804,2W50X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X5Z ",.01)
 ;;2W50X5Z 
 ;;9002226.02101,"1804,2W50X5Z ",.02)
 ;;2W50X5Z 
 ;;9002226.02101,"1804,2W50X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X6Z ",.01)
 ;;2W50X6Z 
 ;;9002226.02101,"1804,2W50X6Z ",.02)
 ;;2W50X6Z 
 ;;9002226.02101,"1804,2W50X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50X7Z ",.01)
 ;;2W50X7Z 
 ;;9002226.02101,"1804,2W50X7Z ",.02)
 ;;2W50X7Z 
 ;;9002226.02101,"1804,2W50X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W50XYZ ",.01)
 ;;2W50XYZ 
 ;;9002226.02101,"1804,2W50XYZ ",.02)
 ;;2W50XYZ 
 ;;9002226.02101,"1804,2W50XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X0Z ",.01)
 ;;2W51X0Z 
 ;;9002226.02101,"1804,2W51X0Z ",.02)
 ;;2W51X0Z 
 ;;9002226.02101,"1804,2W51X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X1Z ",.01)
 ;;2W51X1Z 
 ;;9002226.02101,"1804,2W51X1Z ",.02)
 ;;2W51X1Z 
 ;;9002226.02101,"1804,2W51X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X2Z ",.01)
 ;;2W51X2Z 
 ;;9002226.02101,"1804,2W51X2Z ",.02)
 ;;2W51X2Z 
 ;;9002226.02101,"1804,2W51X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X3Z ",.01)
 ;;2W51X3Z 
 ;;9002226.02101,"1804,2W51X3Z ",.02)
 ;;2W51X3Z 
 ;;9002226.02101,"1804,2W51X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X4Z ",.01)
 ;;2W51X4Z 
 ;;9002226.02101,"1804,2W51X4Z ",.02)
 ;;2W51X4Z 
 ;;9002226.02101,"1804,2W51X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X5Z ",.01)
 ;;2W51X5Z 
 ;;9002226.02101,"1804,2W51X5Z ",.02)
 ;;2W51X5Z 
 ;;9002226.02101,"1804,2W51X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X6Z ",.01)
 ;;2W51X6Z 
 ;;9002226.02101,"1804,2W51X6Z ",.02)
 ;;2W51X6Z 
 ;;9002226.02101,"1804,2W51X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X7Z ",.01)
 ;;2W51X7Z 
 ;;9002226.02101,"1804,2W51X7Z ",.02)
 ;;2W51X7Z 
 ;;9002226.02101,"1804,2W51X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51X9Z ",.01)
 ;;2W51X9Z 
 ;;9002226.02101,"1804,2W51X9Z ",.02)
 ;;2W51X9Z 
 ;;9002226.02101,"1804,2W51X9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W51XYZ ",.01)
 ;;2W51XYZ 
 ;;9002226.02101,"1804,2W51XYZ ",.02)
 ;;2W51XYZ 
 ;;9002226.02101,"1804,2W51XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X0Z ",.01)
 ;;2W52X0Z 
 ;;9002226.02101,"1804,2W52X0Z ",.02)
 ;;2W52X0Z 
 ;;9002226.02101,"1804,2W52X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X1Z ",.01)
 ;;2W52X1Z 
 ;;9002226.02101,"1804,2W52X1Z ",.02)
 ;;2W52X1Z 
 ;;9002226.02101,"1804,2W52X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X2Z ",.01)
 ;;2W52X2Z 
 ;;9002226.02101,"1804,2W52X2Z ",.02)
 ;;2W52X2Z 
 ;;9002226.02101,"1804,2W52X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X3Z ",.01)
 ;;2W52X3Z 
 ;;9002226.02101,"1804,2W52X3Z ",.02)
 ;;2W52X3Z 
 ;;9002226.02101,"1804,2W52X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X4Z ",.01)
 ;;2W52X4Z 
 ;;9002226.02101,"1804,2W52X4Z ",.02)
 ;;2W52X4Z 
 ;;9002226.02101,"1804,2W52X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X5Z ",.01)
 ;;2W52X5Z 
 ;;9002226.02101,"1804,2W52X5Z ",.02)
 ;;2W52X5Z 
 ;;9002226.02101,"1804,2W52X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X6Z ",.01)
 ;;2W52X6Z 
 ;;9002226.02101,"1804,2W52X6Z ",.02)
 ;;2W52X6Z 
 ;;9002226.02101,"1804,2W52X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52X7Z ",.01)
 ;;2W52X7Z 
 ;;9002226.02101,"1804,2W52X7Z ",.02)
 ;;2W52X7Z 
 ;;9002226.02101,"1804,2W52X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W52XYZ ",.01)
 ;;2W52XYZ 
 ;;9002226.02101,"1804,2W52XYZ ",.02)
 ;;2W52XYZ 
 ;;9002226.02101,"1804,2W52XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X0Z ",.01)
 ;;2W53X0Z 
 ;;9002226.02101,"1804,2W53X0Z ",.02)
 ;;2W53X0Z 
 ;;9002226.02101,"1804,2W53X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X1Z ",.01)
 ;;2W53X1Z 
 ;;9002226.02101,"1804,2W53X1Z ",.02)
 ;;2W53X1Z 
 ;;9002226.02101,"1804,2W53X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X2Z ",.01)
 ;;2W53X2Z 
 ;;9002226.02101,"1804,2W53X2Z ",.02)
 ;;2W53X2Z 
 ;;9002226.02101,"1804,2W53X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X3Z ",.01)
 ;;2W53X3Z 
 ;;9002226.02101,"1804,2W53X3Z ",.02)
 ;;2W53X3Z 
 ;;9002226.02101,"1804,2W53X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X4Z ",.01)
 ;;2W53X4Z 
 ;;9002226.02101,"1804,2W53X4Z ",.02)
 ;;2W53X4Z 
 ;;9002226.02101,"1804,2W53X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X5Z ",.01)
 ;;2W53X5Z 
 ;;9002226.02101,"1804,2W53X5Z ",.02)
 ;;2W53X5Z 
 ;;9002226.02101,"1804,2W53X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X6Z ",.01)
 ;;2W53X6Z 
 ;;9002226.02101,"1804,2W53X6Z ",.02)
 ;;2W53X6Z 
 ;;9002226.02101,"1804,2W53X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53X7Z ",.01)
 ;;2W53X7Z 
 ;;9002226.02101,"1804,2W53X7Z ",.02)
 ;;2W53X7Z 
 ;;9002226.02101,"1804,2W53X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W53XYZ ",.01)
 ;;2W53XYZ 
 ;;9002226.02101,"1804,2W53XYZ ",.02)
 ;;2W53XYZ 
 ;;9002226.02101,"1804,2W53XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X0Z ",.01)
 ;;2W54X0Z 
 ;;9002226.02101,"1804,2W54X0Z ",.02)
 ;;2W54X0Z 
 ;;9002226.02101,"1804,2W54X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X1Z ",.01)
 ;;2W54X1Z 
 ;;9002226.02101,"1804,2W54X1Z ",.02)
 ;;2W54X1Z 
 ;;9002226.02101,"1804,2W54X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X2Z ",.01)
 ;;2W54X2Z 
 ;;9002226.02101,"1804,2W54X2Z ",.02)
 ;;2W54X2Z 
 ;;9002226.02101,"1804,2W54X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X3Z ",.01)
 ;;2W54X3Z 
 ;;9002226.02101,"1804,2W54X3Z ",.02)
 ;;2W54X3Z 
 ;;9002226.02101,"1804,2W54X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X4Z ",.01)
 ;;2W54X4Z 
 ;;9002226.02101,"1804,2W54X4Z ",.02)
 ;;2W54X4Z 
 ;;9002226.02101,"1804,2W54X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X5Z ",.01)
 ;;2W54X5Z 
 ;;9002226.02101,"1804,2W54X5Z ",.02)
 ;;2W54X5Z 
 ;;9002226.02101,"1804,2W54X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X6Z ",.01)
 ;;2W54X6Z 
 ;;9002226.02101,"1804,2W54X6Z ",.02)
 ;;2W54X6Z 
 ;;9002226.02101,"1804,2W54X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54X7Z ",.01)
 ;;2W54X7Z 
 ;;9002226.02101,"1804,2W54X7Z ",.02)
 ;;2W54X7Z 
 ;;9002226.02101,"1804,2W54X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W54XYZ ",.01)
 ;;2W54XYZ 
 ;;9002226.02101,"1804,2W54XYZ ",.02)
 ;;2W54XYZ 
 ;;9002226.02101,"1804,2W54XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X0Z ",.01)
 ;;2W55X0Z 
 ;;9002226.02101,"1804,2W55X0Z ",.02)
 ;;2W55X0Z 
 ;;9002226.02101,"1804,2W55X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X1Z ",.01)
 ;;2W55X1Z 
 ;;9002226.02101,"1804,2W55X1Z ",.02)
 ;;2W55X1Z 
 ;;9002226.02101,"1804,2W55X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X2Z ",.01)
 ;;2W55X2Z 
 ;;9002226.02101,"1804,2W55X2Z ",.02)
 ;;2W55X2Z 
 ;;9002226.02101,"1804,2W55X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X3Z ",.01)
 ;;2W55X3Z 
 ;;9002226.02101,"1804,2W55X3Z ",.02)
 ;;2W55X3Z 
 ;;9002226.02101,"1804,2W55X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X4Z ",.01)
 ;;2W55X4Z 
 ;;9002226.02101,"1804,2W55X4Z ",.02)
 ;;2W55X4Z 
 ;;9002226.02101,"1804,2W55X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X5Z ",.01)
 ;;2W55X5Z 
 ;;9002226.02101,"1804,2W55X5Z ",.02)
 ;;2W55X5Z 
 ;;9002226.02101,"1804,2W55X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X6Z ",.01)
 ;;2W55X6Z 
 ;;9002226.02101,"1804,2W55X6Z ",.02)
 ;;2W55X6Z 
 ;;9002226.02101,"1804,2W55X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55X7Z ",.01)
 ;;2W55X7Z 
 ;;9002226.02101,"1804,2W55X7Z ",.02)
 ;;2W55X7Z 
 ;;9002226.02101,"1804,2W55X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W55XYZ ",.01)
 ;;2W55XYZ 
 ;;9002226.02101,"1804,2W55XYZ ",.02)
 ;;2W55XYZ 
 ;;9002226.02101,"1804,2W55XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X0Z ",.01)
 ;;2W56X0Z 
 ;;9002226.02101,"1804,2W56X0Z ",.02)
 ;;2W56X0Z 
 ;;9002226.02101,"1804,2W56X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X1Z ",.01)
 ;;2W56X1Z 
 ;;9002226.02101,"1804,2W56X1Z ",.02)
 ;;2W56X1Z 
 ;;9002226.02101,"1804,2W56X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X2Z ",.01)
 ;;2W56X2Z 
 ;;9002226.02101,"1804,2W56X2Z ",.02)
 ;;2W56X2Z 
 ;;9002226.02101,"1804,2W56X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X3Z ",.01)
 ;;2W56X3Z 
 ;;9002226.02101,"1804,2W56X3Z ",.02)
 ;;2W56X3Z 
 ;;9002226.02101,"1804,2W56X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X4Z ",.01)
 ;;2W56X4Z 
 ;;9002226.02101,"1804,2W56X4Z ",.02)
 ;;2W56X4Z 
 ;;9002226.02101,"1804,2W56X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X5Z ",.01)
 ;;2W56X5Z 
 ;;9002226.02101,"1804,2W56X5Z ",.02)
 ;;2W56X5Z 
 ;;9002226.02101,"1804,2W56X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X6Z ",.01)
 ;;2W56X6Z 
 ;;9002226.02101,"1804,2W56X6Z ",.02)
 ;;2W56X6Z 
 ;;9002226.02101,"1804,2W56X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56X7Z ",.01)
 ;;2W56X7Z 
 ;;9002226.02101,"1804,2W56X7Z ",.02)
 ;;2W56X7Z 
 ;;9002226.02101,"1804,2W56X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W56XYZ ",.01)
 ;;2W56XYZ 
 ;;9002226.02101,"1804,2W56XYZ ",.02)
 ;;2W56XYZ 
 ;;9002226.02101,"1804,2W56XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X0Z ",.01)
 ;;2W57X0Z 
 ;;9002226.02101,"1804,2W57X0Z ",.02)
 ;;2W57X0Z 
 ;;9002226.02101,"1804,2W57X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X1Z ",.01)
 ;;2W57X1Z 
 ;;9002226.02101,"1804,2W57X1Z ",.02)
 ;;2W57X1Z 
 ;;9002226.02101,"1804,2W57X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X2Z ",.01)
 ;;2W57X2Z 
 ;;9002226.02101,"1804,2W57X2Z ",.02)
 ;;2W57X2Z 
 ;;9002226.02101,"1804,2W57X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X3Z ",.01)
 ;;2W57X3Z 
 ;;9002226.02101,"1804,2W57X3Z ",.02)
 ;;2W57X3Z 
 ;;9002226.02101,"1804,2W57X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X4Z ",.01)
 ;;2W57X4Z 
 ;;9002226.02101,"1804,2W57X4Z ",.02)
 ;;2W57X4Z 
 ;;9002226.02101,"1804,2W57X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X5Z ",.01)
 ;;2W57X5Z 
 ;;9002226.02101,"1804,2W57X5Z ",.02)
 ;;2W57X5Z 
 ;;9002226.02101,"1804,2W57X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X6Z ",.01)
 ;;2W57X6Z 
 ;;9002226.02101,"1804,2W57X6Z ",.02)
 ;;2W57X6Z 
 ;;9002226.02101,"1804,2W57X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W57X7Z ",.01)
 ;;2W57X7Z 
 ;;9002226.02101,"1804,2W57X7Z ",.02)
 ;;2W57X7Z 
