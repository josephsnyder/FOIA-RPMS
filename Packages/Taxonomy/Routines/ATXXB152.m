ATXXB152 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,2W0VXYZ ",.02)
 ;;2W0VXYZ 
 ;;9002226.02101,"1804,2W0VXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W10X6Z ",.01)
 ;;2W10X6Z 
 ;;9002226.02101,"1804,2W10X6Z ",.02)
 ;;2W10X6Z 
 ;;9002226.02101,"1804,2W10X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W10X7Z ",.01)
 ;;2W10X7Z 
 ;;9002226.02101,"1804,2W10X7Z ",.02)
 ;;2W10X7Z 
 ;;9002226.02101,"1804,2W10X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W11X6Z ",.01)
 ;;2W11X6Z 
 ;;9002226.02101,"1804,2W11X6Z ",.02)
 ;;2W11X6Z 
 ;;9002226.02101,"1804,2W11X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W11X7Z ",.01)
 ;;2W11X7Z 
 ;;9002226.02101,"1804,2W11X7Z ",.02)
 ;;2W11X7Z 
 ;;9002226.02101,"1804,2W11X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W12X6Z ",.01)
 ;;2W12X6Z 
 ;;9002226.02101,"1804,2W12X6Z ",.02)
 ;;2W12X6Z 
 ;;9002226.02101,"1804,2W12X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W12X7Z ",.01)
 ;;2W12X7Z 
 ;;9002226.02101,"1804,2W12X7Z ",.02)
 ;;2W12X7Z 
 ;;9002226.02101,"1804,2W12X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W13X6Z ",.01)
 ;;2W13X6Z 
 ;;9002226.02101,"1804,2W13X6Z ",.02)
 ;;2W13X6Z 
 ;;9002226.02101,"1804,2W13X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W13X7Z ",.01)
 ;;2W13X7Z 
 ;;9002226.02101,"1804,2W13X7Z ",.02)
 ;;2W13X7Z 
 ;;9002226.02101,"1804,2W13X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W14X6Z ",.01)
 ;;2W14X6Z 
 ;;9002226.02101,"1804,2W14X6Z ",.02)
 ;;2W14X6Z 
 ;;9002226.02101,"1804,2W14X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W14X7Z ",.01)
 ;;2W14X7Z 
 ;;9002226.02101,"1804,2W14X7Z ",.02)
 ;;2W14X7Z 
 ;;9002226.02101,"1804,2W14X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W15X6Z ",.01)
 ;;2W15X6Z 
 ;;9002226.02101,"1804,2W15X6Z ",.02)
 ;;2W15X6Z 
 ;;9002226.02101,"1804,2W15X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W15X7Z ",.01)
 ;;2W15X7Z 
 ;;9002226.02101,"1804,2W15X7Z ",.02)
 ;;2W15X7Z 
 ;;9002226.02101,"1804,2W15X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W16X6Z ",.01)
 ;;2W16X6Z 
 ;;9002226.02101,"1804,2W16X6Z ",.02)
 ;;2W16X6Z 
 ;;9002226.02101,"1804,2W16X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W16X7Z ",.01)
 ;;2W16X7Z 
 ;;9002226.02101,"1804,2W16X7Z ",.02)
 ;;2W16X7Z 
 ;;9002226.02101,"1804,2W16X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W17X6Z ",.01)
 ;;2W17X6Z 
 ;;9002226.02101,"1804,2W17X6Z ",.02)
 ;;2W17X6Z 
 ;;9002226.02101,"1804,2W17X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W17X7Z ",.01)
 ;;2W17X7Z 
 ;;9002226.02101,"1804,2W17X7Z ",.02)
 ;;2W17X7Z 
 ;;9002226.02101,"1804,2W17X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W18X6Z ",.01)
 ;;2W18X6Z 
 ;;9002226.02101,"1804,2W18X6Z ",.02)
 ;;2W18X6Z 
 ;;9002226.02101,"1804,2W18X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W18X7Z ",.01)
 ;;2W18X7Z 
 ;;9002226.02101,"1804,2W18X7Z ",.02)
 ;;2W18X7Z 
 ;;9002226.02101,"1804,2W18X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W19X6Z ",.01)
 ;;2W19X6Z 
 ;;9002226.02101,"1804,2W19X6Z ",.02)
 ;;2W19X6Z 
 ;;9002226.02101,"1804,2W19X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W19X7Z ",.01)
 ;;2W19X7Z 
 ;;9002226.02101,"1804,2W19X7Z ",.02)
 ;;2W19X7Z 
 ;;9002226.02101,"1804,2W19X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1AX6Z ",.01)
 ;;2W1AX6Z 
 ;;9002226.02101,"1804,2W1AX6Z ",.02)
 ;;2W1AX6Z 
 ;;9002226.02101,"1804,2W1AX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1AX7Z ",.01)
 ;;2W1AX7Z 
 ;;9002226.02101,"1804,2W1AX7Z ",.02)
 ;;2W1AX7Z 
 ;;9002226.02101,"1804,2W1AX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1BX6Z ",.01)
 ;;2W1BX6Z 
 ;;9002226.02101,"1804,2W1BX6Z ",.02)
 ;;2W1BX6Z 
 ;;9002226.02101,"1804,2W1BX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1BX7Z ",.01)
 ;;2W1BX7Z 
 ;;9002226.02101,"1804,2W1BX7Z ",.02)
 ;;2W1BX7Z 
 ;;9002226.02101,"1804,2W1BX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1CX6Z ",.01)
 ;;2W1CX6Z 
 ;;9002226.02101,"1804,2W1CX6Z ",.02)
 ;;2W1CX6Z 
 ;;9002226.02101,"1804,2W1CX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1CX7Z ",.01)
 ;;2W1CX7Z 
 ;;9002226.02101,"1804,2W1CX7Z ",.02)
 ;;2W1CX7Z 
 ;;9002226.02101,"1804,2W1CX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1DX6Z ",.01)
 ;;2W1DX6Z 
 ;;9002226.02101,"1804,2W1DX6Z ",.02)
 ;;2W1DX6Z 
 ;;9002226.02101,"1804,2W1DX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1DX7Z ",.01)
 ;;2W1DX7Z 
 ;;9002226.02101,"1804,2W1DX7Z ",.02)
 ;;2W1DX7Z 
 ;;9002226.02101,"1804,2W1DX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1EX6Z ",.01)
 ;;2W1EX6Z 
 ;;9002226.02101,"1804,2W1EX6Z ",.02)
 ;;2W1EX6Z 
 ;;9002226.02101,"1804,2W1EX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1EX7Z ",.01)
 ;;2W1EX7Z 
 ;;9002226.02101,"1804,2W1EX7Z ",.02)
 ;;2W1EX7Z 
 ;;9002226.02101,"1804,2W1EX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1FX6Z ",.01)
 ;;2W1FX6Z 
 ;;9002226.02101,"1804,2W1FX6Z ",.02)
 ;;2W1FX6Z 
 ;;9002226.02101,"1804,2W1FX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1FX7Z ",.01)
 ;;2W1FX7Z 
 ;;9002226.02101,"1804,2W1FX7Z ",.02)
 ;;2W1FX7Z 
 ;;9002226.02101,"1804,2W1FX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1GX6Z ",.01)
 ;;2W1GX6Z 
 ;;9002226.02101,"1804,2W1GX6Z ",.02)
 ;;2W1GX6Z 
 ;;9002226.02101,"1804,2W1GX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1GX7Z ",.01)
 ;;2W1GX7Z 
 ;;9002226.02101,"1804,2W1GX7Z ",.02)
 ;;2W1GX7Z 
 ;;9002226.02101,"1804,2W1GX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1HX6Z ",.01)
 ;;2W1HX6Z 
 ;;9002226.02101,"1804,2W1HX6Z ",.02)
 ;;2W1HX6Z 
 ;;9002226.02101,"1804,2W1HX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1HX7Z ",.01)
 ;;2W1HX7Z 
 ;;9002226.02101,"1804,2W1HX7Z ",.02)
 ;;2W1HX7Z 
 ;;9002226.02101,"1804,2W1HX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1JX6Z ",.01)
 ;;2W1JX6Z 
 ;;9002226.02101,"1804,2W1JX6Z ",.02)
 ;;2W1JX6Z 
 ;;9002226.02101,"1804,2W1JX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1JX7Z ",.01)
 ;;2W1JX7Z 
 ;;9002226.02101,"1804,2W1JX7Z ",.02)
 ;;2W1JX7Z 
 ;;9002226.02101,"1804,2W1JX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1KX6Z ",.01)
 ;;2W1KX6Z 
 ;;9002226.02101,"1804,2W1KX6Z ",.02)
 ;;2W1KX6Z 
 ;;9002226.02101,"1804,2W1KX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1KX7Z ",.01)
 ;;2W1KX7Z 
 ;;9002226.02101,"1804,2W1KX7Z ",.02)
 ;;2W1KX7Z 
 ;;9002226.02101,"1804,2W1KX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1LX6Z ",.01)
 ;;2W1LX6Z 
 ;;9002226.02101,"1804,2W1LX6Z ",.02)
 ;;2W1LX6Z 
 ;;9002226.02101,"1804,2W1LX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1LX7Z ",.01)
 ;;2W1LX7Z 
 ;;9002226.02101,"1804,2W1LX7Z ",.02)
 ;;2W1LX7Z 
 ;;9002226.02101,"1804,2W1LX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1MX6Z ",.01)
 ;;2W1MX6Z 
 ;;9002226.02101,"1804,2W1MX6Z ",.02)
 ;;2W1MX6Z 
 ;;9002226.02101,"1804,2W1MX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1MX7Z ",.01)
 ;;2W1MX7Z 
 ;;9002226.02101,"1804,2W1MX7Z ",.02)
 ;;2W1MX7Z 
 ;;9002226.02101,"1804,2W1MX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1NX6Z ",.01)
 ;;2W1NX6Z 
 ;;9002226.02101,"1804,2W1NX6Z ",.02)
 ;;2W1NX6Z 
 ;;9002226.02101,"1804,2W1NX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1NX7Z ",.01)
 ;;2W1NX7Z 
 ;;9002226.02101,"1804,2W1NX7Z ",.02)
 ;;2W1NX7Z 
 ;;9002226.02101,"1804,2W1NX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1PX6Z ",.01)
 ;;2W1PX6Z 
 ;;9002226.02101,"1804,2W1PX6Z ",.02)
 ;;2W1PX6Z 
 ;;9002226.02101,"1804,2W1PX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1PX7Z ",.01)
 ;;2W1PX7Z 
 ;;9002226.02101,"1804,2W1PX7Z ",.02)
 ;;2W1PX7Z 
 ;;9002226.02101,"1804,2W1PX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1QX6Z ",.01)
 ;;2W1QX6Z 
 ;;9002226.02101,"1804,2W1QX6Z ",.02)
 ;;2W1QX6Z 
 ;;9002226.02101,"1804,2W1QX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1QX7Z ",.01)
 ;;2W1QX7Z 
 ;;9002226.02101,"1804,2W1QX7Z ",.02)
 ;;2W1QX7Z 
 ;;9002226.02101,"1804,2W1QX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1RX6Z ",.01)
 ;;2W1RX6Z 
 ;;9002226.02101,"1804,2W1RX6Z ",.02)
 ;;2W1RX6Z 
 ;;9002226.02101,"1804,2W1RX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1RX7Z ",.01)
 ;;2W1RX7Z 
 ;;9002226.02101,"1804,2W1RX7Z ",.02)
 ;;2W1RX7Z 
 ;;9002226.02101,"1804,2W1RX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1SX6Z ",.01)
 ;;2W1SX6Z 
 ;;9002226.02101,"1804,2W1SX6Z ",.02)
 ;;2W1SX6Z 
 ;;9002226.02101,"1804,2W1SX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1SX7Z ",.01)
 ;;2W1SX7Z 
 ;;9002226.02101,"1804,2W1SX7Z ",.02)
 ;;2W1SX7Z 
 ;;9002226.02101,"1804,2W1SX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1TX6Z ",.01)
 ;;2W1TX6Z 
 ;;9002226.02101,"1804,2W1TX6Z ",.02)
 ;;2W1TX6Z 
 ;;9002226.02101,"1804,2W1TX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1TX7Z ",.01)
 ;;2W1TX7Z 
 ;;9002226.02101,"1804,2W1TX7Z ",.02)
 ;;2W1TX7Z 
 ;;9002226.02101,"1804,2W1TX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1UX6Z ",.01)
 ;;2W1UX6Z 
 ;;9002226.02101,"1804,2W1UX6Z ",.02)
 ;;2W1UX6Z 
 ;;9002226.02101,"1804,2W1UX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1UX7Z ",.01)
 ;;2W1UX7Z 
 ;;9002226.02101,"1804,2W1UX7Z ",.02)
 ;;2W1UX7Z 
 ;;9002226.02101,"1804,2W1UX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1VX6Z ",.01)
 ;;2W1VX6Z 
 ;;9002226.02101,"1804,2W1VX6Z ",.02)
 ;;2W1VX6Z 
 ;;9002226.02101,"1804,2W1VX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W1VX7Z ",.01)
 ;;2W1VX7Z 
 ;;9002226.02101,"1804,2W1VX7Z ",.02)
 ;;2W1VX7Z 
 ;;9002226.02101,"1804,2W1VX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W20X4Z ",.01)
 ;;2W20X4Z 
 ;;9002226.02101,"1804,2W20X4Z ",.02)
 ;;2W20X4Z 
 ;;9002226.02101,"1804,2W20X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W21X4Z ",.01)
 ;;2W21X4Z 
 ;;9002226.02101,"1804,2W21X4Z ",.02)
 ;;2W21X4Z 
 ;;9002226.02101,"1804,2W21X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W22X4Z ",.01)
 ;;2W22X4Z 
 ;;9002226.02101,"1804,2W22X4Z ",.02)
 ;;2W22X4Z 
 ;;9002226.02101,"1804,2W22X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W23X4Z ",.01)
 ;;2W23X4Z 
 ;;9002226.02101,"1804,2W23X4Z ",.02)
 ;;2W23X4Z 
 ;;9002226.02101,"1804,2W23X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W24X4Z ",.01)
 ;;2W24X4Z 
 ;;9002226.02101,"1804,2W24X4Z ",.02)
 ;;2W24X4Z 
 ;;9002226.02101,"1804,2W24X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W25X4Z ",.01)
 ;;2W25X4Z 
 ;;9002226.02101,"1804,2W25X4Z ",.02)
 ;;2W25X4Z 
 ;;9002226.02101,"1804,2W25X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W26X4Z ",.01)
 ;;2W26X4Z 
 ;;9002226.02101,"1804,2W26X4Z ",.02)
 ;;2W26X4Z 
 ;;9002226.02101,"1804,2W26X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W27X4Z ",.01)
 ;;2W27X4Z 
 ;;9002226.02101,"1804,2W27X4Z ",.02)
 ;;2W27X4Z 
 ;;9002226.02101,"1804,2W27X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W28X4Z ",.01)
 ;;2W28X4Z 
 ;;9002226.02101,"1804,2W28X4Z ",.02)
 ;;2W28X4Z 
 ;;9002226.02101,"1804,2W28X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W29X4Z ",.01)
 ;;2W29X4Z 
 ;;9002226.02101,"1804,2W29X4Z ",.02)
 ;;2W29X4Z 
 ;;9002226.02101,"1804,2W29X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2AX4Z ",.01)
 ;;2W2AX4Z 
 ;;9002226.02101,"1804,2W2AX4Z ",.02)
 ;;2W2AX4Z 
 ;;9002226.02101,"1804,2W2AX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2BX4Z ",.01)
 ;;2W2BX4Z 
 ;;9002226.02101,"1804,2W2BX4Z ",.02)
 ;;2W2BX4Z 
 ;;9002226.02101,"1804,2W2BX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2CX4Z ",.01)
 ;;2W2CX4Z 
 ;;9002226.02101,"1804,2W2CX4Z ",.02)
 ;;2W2CX4Z 
 ;;9002226.02101,"1804,2W2CX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2DX4Z ",.01)
 ;;2W2DX4Z 
 ;;9002226.02101,"1804,2W2DX4Z ",.02)
 ;;2W2DX4Z 
 ;;9002226.02101,"1804,2W2DX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2EX4Z ",.01)
 ;;2W2EX4Z 
 ;;9002226.02101,"1804,2W2EX4Z ",.02)
 ;;2W2EX4Z 
 ;;9002226.02101,"1804,2W2EX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2FX4Z ",.01)
 ;;2W2FX4Z 
 ;;9002226.02101,"1804,2W2FX4Z ",.02)
 ;;2W2FX4Z 
 ;;9002226.02101,"1804,2W2FX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2GX4Z ",.01)
 ;;2W2GX4Z 
 ;;9002226.02101,"1804,2W2GX4Z ",.02)
 ;;2W2GX4Z 
 ;;9002226.02101,"1804,2W2GX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W2HX4Z ",.01)
 ;;2W2HX4Z 
 ;;9002226.02101,"1804,2W2HX4Z ",.02)
 ;;2W2HX4Z 
