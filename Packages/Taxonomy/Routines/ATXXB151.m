ATXXB151 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,2W0MX2Z ",.01)
 ;;2W0MX2Z 
 ;;9002226.02101,"1804,2W0MX2Z ",.02)
 ;;2W0MX2Z 
 ;;9002226.02101,"1804,2W0MX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MX3Z ",.01)
 ;;2W0MX3Z 
 ;;9002226.02101,"1804,2W0MX3Z ",.02)
 ;;2W0MX3Z 
 ;;9002226.02101,"1804,2W0MX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MX4Z ",.01)
 ;;2W0MX4Z 
 ;;9002226.02101,"1804,2W0MX4Z ",.02)
 ;;2W0MX4Z 
 ;;9002226.02101,"1804,2W0MX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MX5Z ",.01)
 ;;2W0MX5Z 
 ;;9002226.02101,"1804,2W0MX5Z ",.02)
 ;;2W0MX5Z 
 ;;9002226.02101,"1804,2W0MX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MX6Z ",.01)
 ;;2W0MX6Z 
 ;;9002226.02101,"1804,2W0MX6Z ",.02)
 ;;2W0MX6Z 
 ;;9002226.02101,"1804,2W0MX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MX7Z ",.01)
 ;;2W0MX7Z 
 ;;9002226.02101,"1804,2W0MX7Z ",.02)
 ;;2W0MX7Z 
 ;;9002226.02101,"1804,2W0MX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0MXYZ ",.01)
 ;;2W0MXYZ 
 ;;9002226.02101,"1804,2W0MXYZ ",.02)
 ;;2W0MXYZ 
 ;;9002226.02101,"1804,2W0MXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX0Z ",.01)
 ;;2W0NX0Z 
 ;;9002226.02101,"1804,2W0NX0Z ",.02)
 ;;2W0NX0Z 
 ;;9002226.02101,"1804,2W0NX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX1Z ",.01)
 ;;2W0NX1Z 
 ;;9002226.02101,"1804,2W0NX1Z ",.02)
 ;;2W0NX1Z 
 ;;9002226.02101,"1804,2W0NX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX2Z ",.01)
 ;;2W0NX2Z 
 ;;9002226.02101,"1804,2W0NX2Z ",.02)
 ;;2W0NX2Z 
 ;;9002226.02101,"1804,2W0NX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX3Z ",.01)
 ;;2W0NX3Z 
 ;;9002226.02101,"1804,2W0NX3Z ",.02)
 ;;2W0NX3Z 
 ;;9002226.02101,"1804,2W0NX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX4Z ",.01)
 ;;2W0NX4Z 
 ;;9002226.02101,"1804,2W0NX4Z ",.02)
 ;;2W0NX4Z 
 ;;9002226.02101,"1804,2W0NX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX5Z ",.01)
 ;;2W0NX5Z 
 ;;9002226.02101,"1804,2W0NX5Z ",.02)
 ;;2W0NX5Z 
 ;;9002226.02101,"1804,2W0NX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX6Z ",.01)
 ;;2W0NX6Z 
 ;;9002226.02101,"1804,2W0NX6Z ",.02)
 ;;2W0NX6Z 
 ;;9002226.02101,"1804,2W0NX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NX7Z ",.01)
 ;;2W0NX7Z 
 ;;9002226.02101,"1804,2W0NX7Z ",.02)
 ;;2W0NX7Z 
 ;;9002226.02101,"1804,2W0NX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0NXYZ ",.01)
 ;;2W0NXYZ 
 ;;9002226.02101,"1804,2W0NXYZ ",.02)
 ;;2W0NXYZ 
 ;;9002226.02101,"1804,2W0NXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX0Z ",.01)
 ;;2W0PX0Z 
 ;;9002226.02101,"1804,2W0PX0Z ",.02)
 ;;2W0PX0Z 
 ;;9002226.02101,"1804,2W0PX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX1Z ",.01)
 ;;2W0PX1Z 
 ;;9002226.02101,"1804,2W0PX1Z ",.02)
 ;;2W0PX1Z 
 ;;9002226.02101,"1804,2W0PX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX2Z ",.01)
 ;;2W0PX2Z 
 ;;9002226.02101,"1804,2W0PX2Z ",.02)
 ;;2W0PX2Z 
 ;;9002226.02101,"1804,2W0PX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX3Z ",.01)
 ;;2W0PX3Z 
 ;;9002226.02101,"1804,2W0PX3Z ",.02)
 ;;2W0PX3Z 
 ;;9002226.02101,"1804,2W0PX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX4Z ",.01)
 ;;2W0PX4Z 
 ;;9002226.02101,"1804,2W0PX4Z ",.02)
 ;;2W0PX4Z 
 ;;9002226.02101,"1804,2W0PX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX5Z ",.01)
 ;;2W0PX5Z 
 ;;9002226.02101,"1804,2W0PX5Z ",.02)
 ;;2W0PX5Z 
 ;;9002226.02101,"1804,2W0PX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX6Z ",.01)
 ;;2W0PX6Z 
 ;;9002226.02101,"1804,2W0PX6Z ",.02)
 ;;2W0PX6Z 
 ;;9002226.02101,"1804,2W0PX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PX7Z ",.01)
 ;;2W0PX7Z 
 ;;9002226.02101,"1804,2W0PX7Z ",.02)
 ;;2W0PX7Z 
 ;;9002226.02101,"1804,2W0PX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0PXYZ ",.01)
 ;;2W0PXYZ 
 ;;9002226.02101,"1804,2W0PXYZ ",.02)
 ;;2W0PXYZ 
 ;;9002226.02101,"1804,2W0PXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX0Z ",.01)
 ;;2W0QX0Z 
 ;;9002226.02101,"1804,2W0QX0Z ",.02)
 ;;2W0QX0Z 
 ;;9002226.02101,"1804,2W0QX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX1Z ",.01)
 ;;2W0QX1Z 
 ;;9002226.02101,"1804,2W0QX1Z ",.02)
 ;;2W0QX1Z 
 ;;9002226.02101,"1804,2W0QX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX2Z ",.01)
 ;;2W0QX2Z 
 ;;9002226.02101,"1804,2W0QX2Z ",.02)
 ;;2W0QX2Z 
 ;;9002226.02101,"1804,2W0QX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX3Z ",.01)
 ;;2W0QX3Z 
 ;;9002226.02101,"1804,2W0QX3Z ",.02)
 ;;2W0QX3Z 
 ;;9002226.02101,"1804,2W0QX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX4Z ",.01)
 ;;2W0QX4Z 
 ;;9002226.02101,"1804,2W0QX4Z ",.02)
 ;;2W0QX4Z 
 ;;9002226.02101,"1804,2W0QX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX5Z ",.01)
 ;;2W0QX5Z 
 ;;9002226.02101,"1804,2W0QX5Z ",.02)
 ;;2W0QX5Z 
 ;;9002226.02101,"1804,2W0QX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX6Z ",.01)
 ;;2W0QX6Z 
 ;;9002226.02101,"1804,2W0QX6Z ",.02)
 ;;2W0QX6Z 
 ;;9002226.02101,"1804,2W0QX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QX7Z ",.01)
 ;;2W0QX7Z 
 ;;9002226.02101,"1804,2W0QX7Z ",.02)
 ;;2W0QX7Z 
 ;;9002226.02101,"1804,2W0QX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0QXYZ ",.01)
 ;;2W0QXYZ 
 ;;9002226.02101,"1804,2W0QXYZ ",.02)
 ;;2W0QXYZ 
 ;;9002226.02101,"1804,2W0QXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX0Z ",.01)
 ;;2W0RX0Z 
 ;;9002226.02101,"1804,2W0RX0Z ",.02)
 ;;2W0RX0Z 
 ;;9002226.02101,"1804,2W0RX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX1Z ",.01)
 ;;2W0RX1Z 
 ;;9002226.02101,"1804,2W0RX1Z ",.02)
 ;;2W0RX1Z 
 ;;9002226.02101,"1804,2W0RX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX2Z ",.01)
 ;;2W0RX2Z 
 ;;9002226.02101,"1804,2W0RX2Z ",.02)
 ;;2W0RX2Z 
 ;;9002226.02101,"1804,2W0RX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX3Z ",.01)
 ;;2W0RX3Z 
 ;;9002226.02101,"1804,2W0RX3Z ",.02)
 ;;2W0RX3Z 
 ;;9002226.02101,"1804,2W0RX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX4Z ",.01)
 ;;2W0RX4Z 
 ;;9002226.02101,"1804,2W0RX4Z ",.02)
 ;;2W0RX4Z 
 ;;9002226.02101,"1804,2W0RX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX5Z ",.01)
 ;;2W0RX5Z 
 ;;9002226.02101,"1804,2W0RX5Z ",.02)
 ;;2W0RX5Z 
 ;;9002226.02101,"1804,2W0RX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX6Z ",.01)
 ;;2W0RX6Z 
 ;;9002226.02101,"1804,2W0RX6Z ",.02)
 ;;2W0RX6Z 
 ;;9002226.02101,"1804,2W0RX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RX7Z ",.01)
 ;;2W0RX7Z 
 ;;9002226.02101,"1804,2W0RX7Z ",.02)
 ;;2W0RX7Z 
 ;;9002226.02101,"1804,2W0RX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0RXYZ ",.01)
 ;;2W0RXYZ 
 ;;9002226.02101,"1804,2W0RXYZ ",.02)
 ;;2W0RXYZ 
 ;;9002226.02101,"1804,2W0RXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX0Z ",.01)
 ;;2W0SX0Z 
 ;;9002226.02101,"1804,2W0SX0Z ",.02)
 ;;2W0SX0Z 
 ;;9002226.02101,"1804,2W0SX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX1Z ",.01)
 ;;2W0SX1Z 
 ;;9002226.02101,"1804,2W0SX1Z ",.02)
 ;;2W0SX1Z 
 ;;9002226.02101,"1804,2W0SX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX2Z ",.01)
 ;;2W0SX2Z 
 ;;9002226.02101,"1804,2W0SX2Z ",.02)
 ;;2W0SX2Z 
 ;;9002226.02101,"1804,2W0SX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX3Z ",.01)
 ;;2W0SX3Z 
 ;;9002226.02101,"1804,2W0SX3Z ",.02)
 ;;2W0SX3Z 
 ;;9002226.02101,"1804,2W0SX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX4Z ",.01)
 ;;2W0SX4Z 
 ;;9002226.02101,"1804,2W0SX4Z ",.02)
 ;;2W0SX4Z 
 ;;9002226.02101,"1804,2W0SX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX5Z ",.01)
 ;;2W0SX5Z 
 ;;9002226.02101,"1804,2W0SX5Z ",.02)
 ;;2W0SX5Z 
 ;;9002226.02101,"1804,2W0SX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX6Z ",.01)
 ;;2W0SX6Z 
 ;;9002226.02101,"1804,2W0SX6Z ",.02)
 ;;2W0SX6Z 
 ;;9002226.02101,"1804,2W0SX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SX7Z ",.01)
 ;;2W0SX7Z 
 ;;9002226.02101,"1804,2W0SX7Z ",.02)
 ;;2W0SX7Z 
 ;;9002226.02101,"1804,2W0SX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0SXYZ ",.01)
 ;;2W0SXYZ 
 ;;9002226.02101,"1804,2W0SXYZ ",.02)
 ;;2W0SXYZ 
 ;;9002226.02101,"1804,2W0SXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX0Z ",.01)
 ;;2W0TX0Z 
 ;;9002226.02101,"1804,2W0TX0Z ",.02)
 ;;2W0TX0Z 
 ;;9002226.02101,"1804,2W0TX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX1Z ",.01)
 ;;2W0TX1Z 
 ;;9002226.02101,"1804,2W0TX1Z ",.02)
 ;;2W0TX1Z 
 ;;9002226.02101,"1804,2W0TX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX2Z ",.01)
 ;;2W0TX2Z 
 ;;9002226.02101,"1804,2W0TX2Z ",.02)
 ;;2W0TX2Z 
 ;;9002226.02101,"1804,2W0TX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX3Z ",.01)
 ;;2W0TX3Z 
 ;;9002226.02101,"1804,2W0TX3Z ",.02)
 ;;2W0TX3Z 
 ;;9002226.02101,"1804,2W0TX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX4Z ",.01)
 ;;2W0TX4Z 
 ;;9002226.02101,"1804,2W0TX4Z ",.02)
 ;;2W0TX4Z 
 ;;9002226.02101,"1804,2W0TX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX5Z ",.01)
 ;;2W0TX5Z 
 ;;9002226.02101,"1804,2W0TX5Z ",.02)
 ;;2W0TX5Z 
 ;;9002226.02101,"1804,2W0TX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX6Z ",.01)
 ;;2W0TX6Z 
 ;;9002226.02101,"1804,2W0TX6Z ",.02)
 ;;2W0TX6Z 
 ;;9002226.02101,"1804,2W0TX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TX7Z ",.01)
 ;;2W0TX7Z 
 ;;9002226.02101,"1804,2W0TX7Z ",.02)
 ;;2W0TX7Z 
 ;;9002226.02101,"1804,2W0TX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0TXYZ ",.01)
 ;;2W0TXYZ 
 ;;9002226.02101,"1804,2W0TXYZ ",.02)
 ;;2W0TXYZ 
 ;;9002226.02101,"1804,2W0TXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX0Z ",.01)
 ;;2W0UX0Z 
 ;;9002226.02101,"1804,2W0UX0Z ",.02)
 ;;2W0UX0Z 
 ;;9002226.02101,"1804,2W0UX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX1Z ",.01)
 ;;2W0UX1Z 
 ;;9002226.02101,"1804,2W0UX1Z ",.02)
 ;;2W0UX1Z 
 ;;9002226.02101,"1804,2W0UX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX2Z ",.01)
 ;;2W0UX2Z 
 ;;9002226.02101,"1804,2W0UX2Z ",.02)
 ;;2W0UX2Z 
 ;;9002226.02101,"1804,2W0UX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX3Z ",.01)
 ;;2W0UX3Z 
 ;;9002226.02101,"1804,2W0UX3Z ",.02)
 ;;2W0UX3Z 
 ;;9002226.02101,"1804,2W0UX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX4Z ",.01)
 ;;2W0UX4Z 
 ;;9002226.02101,"1804,2W0UX4Z ",.02)
 ;;2W0UX4Z 
 ;;9002226.02101,"1804,2W0UX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX5Z ",.01)
 ;;2W0UX5Z 
 ;;9002226.02101,"1804,2W0UX5Z ",.02)
 ;;2W0UX5Z 
 ;;9002226.02101,"1804,2W0UX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX6Z ",.01)
 ;;2W0UX6Z 
 ;;9002226.02101,"1804,2W0UX6Z ",.02)
 ;;2W0UX6Z 
 ;;9002226.02101,"1804,2W0UX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UX7Z ",.01)
 ;;2W0UX7Z 
 ;;9002226.02101,"1804,2W0UX7Z ",.02)
 ;;2W0UX7Z 
 ;;9002226.02101,"1804,2W0UX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0UXYZ ",.01)
 ;;2W0UXYZ 
 ;;9002226.02101,"1804,2W0UXYZ ",.02)
 ;;2W0UXYZ 
 ;;9002226.02101,"1804,2W0UXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX0Z ",.01)
 ;;2W0VX0Z 
 ;;9002226.02101,"1804,2W0VX0Z ",.02)
 ;;2W0VX0Z 
 ;;9002226.02101,"1804,2W0VX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX1Z ",.01)
 ;;2W0VX1Z 
 ;;9002226.02101,"1804,2W0VX1Z ",.02)
 ;;2W0VX1Z 
 ;;9002226.02101,"1804,2W0VX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX2Z ",.01)
 ;;2W0VX2Z 
 ;;9002226.02101,"1804,2W0VX2Z ",.02)
 ;;2W0VX2Z 
 ;;9002226.02101,"1804,2W0VX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX3Z ",.01)
 ;;2W0VX3Z 
 ;;9002226.02101,"1804,2W0VX3Z ",.02)
 ;;2W0VX3Z 
 ;;9002226.02101,"1804,2W0VX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX4Z ",.01)
 ;;2W0VX4Z 
 ;;9002226.02101,"1804,2W0VX4Z ",.02)
 ;;2W0VX4Z 
 ;;9002226.02101,"1804,2W0VX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX5Z ",.01)
 ;;2W0VX5Z 
 ;;9002226.02101,"1804,2W0VX5Z ",.02)
 ;;2W0VX5Z 
 ;;9002226.02101,"1804,2W0VX5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX6Z ",.01)
 ;;2W0VX6Z 
 ;;9002226.02101,"1804,2W0VX6Z ",.02)
 ;;2W0VX6Z 
 ;;9002226.02101,"1804,2W0VX6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VX7Z ",.01)
 ;;2W0VX7Z 
 ;;9002226.02101,"1804,2W0VX7Z ",.02)
 ;;2W0VX7Z 
 ;;9002226.02101,"1804,2W0VX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W0VXYZ ",.01)
 ;;2W0VXYZ 
