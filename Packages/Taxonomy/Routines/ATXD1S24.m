ATXD1S24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"821,X71.9XXA ",.01)
 ;;X71.9XXA
 ;;9002226.02101,"821,X71.9XXA ",.02)
 ;;X71.9XXA
 ;;9002226.02101,"821,X71.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X72.XXXA ",.01)
 ;;X72.XXXA
 ;;9002226.02101,"821,X72.XXXA ",.02)
 ;;X72.XXXA
 ;;9002226.02101,"821,X72.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X73.0XXA ",.01)
 ;;X73.0XXA
 ;;9002226.02101,"821,X73.0XXA ",.02)
 ;;X73.0XXA
 ;;9002226.02101,"821,X73.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X73.1XXA ",.01)
 ;;X73.1XXA
 ;;9002226.02101,"821,X73.1XXA ",.02)
 ;;X73.1XXA
 ;;9002226.02101,"821,X73.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X73.2XXA ",.01)
 ;;X73.2XXA
 ;;9002226.02101,"821,X73.2XXA ",.02)
 ;;X73.2XXA
 ;;9002226.02101,"821,X73.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X73.8XXA ",.01)
 ;;X73.8XXA
 ;;9002226.02101,"821,X73.8XXA ",.02)
 ;;X73.8XXA
 ;;9002226.02101,"821,X73.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X73.9XXA ",.01)
 ;;X73.9XXA
 ;;9002226.02101,"821,X73.9XXA ",.02)
 ;;X73.9XXA
 ;;9002226.02101,"821,X73.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X74.01XA ",.01)
 ;;X74.01XA
 ;;9002226.02101,"821,X74.01XA ",.02)
 ;;X74.01XA
 ;;9002226.02101,"821,X74.01XA ",.03)
 ;;30
 ;;9002226.02101,"821,X74.02XA ",.01)
 ;;X74.02XA
 ;;9002226.02101,"821,X74.02XA ",.02)
 ;;X74.02XA
 ;;9002226.02101,"821,X74.02XA ",.03)
 ;;30
 ;;9002226.02101,"821,X74.09XA ",.01)
 ;;X74.09XA
 ;;9002226.02101,"821,X74.09XA ",.02)
 ;;X74.09XA
 ;;9002226.02101,"821,X74.09XA ",.03)
 ;;30
 ;;9002226.02101,"821,X74.8XXA ",.01)
 ;;X74.8XXA
 ;;9002226.02101,"821,X74.8XXA ",.02)
 ;;X74.8XXA
 ;;9002226.02101,"821,X74.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X74.9XXA ",.01)
 ;;X74.9XXA
 ;;9002226.02101,"821,X74.9XXA ",.02)
 ;;X74.9XXA
 ;;9002226.02101,"821,X74.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X75.XXXA ",.01)
 ;;X75.XXXA
 ;;9002226.02101,"821,X75.XXXA ",.02)
 ;;X75.XXXA
 ;;9002226.02101,"821,X75.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X76.XXXA ",.01)
 ;;X76.XXXA
 ;;9002226.02101,"821,X76.XXXA ",.02)
 ;;X76.XXXA
 ;;9002226.02101,"821,X76.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.0XXA ",.01)
 ;;X77.0XXA
 ;;9002226.02101,"821,X77.0XXA ",.02)
 ;;X77.0XXA
 ;;9002226.02101,"821,X77.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.1XXA ",.01)
 ;;X77.1XXA
 ;;9002226.02101,"821,X77.1XXA ",.02)
 ;;X77.1XXA
 ;;9002226.02101,"821,X77.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.2XXA ",.01)
 ;;X77.2XXA
 ;;9002226.02101,"821,X77.2XXA ",.02)
 ;;X77.2XXA
 ;;9002226.02101,"821,X77.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.3XXA ",.01)
 ;;X77.3XXA
 ;;9002226.02101,"821,X77.3XXA ",.02)
 ;;X77.3XXA
 ;;9002226.02101,"821,X77.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.8XXA ",.01)
 ;;X77.8XXA
 ;;9002226.02101,"821,X77.8XXA ",.02)
 ;;X77.8XXA
 ;;9002226.02101,"821,X77.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X77.9XXA ",.01)
 ;;X77.9XXA
 ;;9002226.02101,"821,X77.9XXA ",.02)
 ;;X77.9XXA
 ;;9002226.02101,"821,X77.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X78.0XXA ",.01)
 ;;X78.0XXA
 ;;9002226.02101,"821,X78.0XXA ",.02)
 ;;X78.0XXA
 ;;9002226.02101,"821,X78.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X78.1XXA ",.01)
 ;;X78.1XXA
 ;;9002226.02101,"821,X78.1XXA ",.02)
 ;;X78.1XXA
 ;;9002226.02101,"821,X78.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X78.2XXA ",.01)
 ;;X78.2XXA
 ;;9002226.02101,"821,X78.2XXA ",.02)
 ;;X78.2XXA
 ;;9002226.02101,"821,X78.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X78.8XXA ",.01)
 ;;X78.8XXA
 ;;9002226.02101,"821,X78.8XXA ",.02)
 ;;X78.8XXA
 ;;9002226.02101,"821,X78.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X78.9XXA ",.01)
 ;;X78.9XXA
 ;;9002226.02101,"821,X78.9XXA ",.02)
 ;;X78.9XXA
 ;;9002226.02101,"821,X78.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X79.XXXA ",.01)
 ;;X79.XXXA
 ;;9002226.02101,"821,X79.XXXA ",.02)
 ;;X79.XXXA
 ;;9002226.02101,"821,X79.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X80.XXXA ",.01)
 ;;X80.XXXA
 ;;9002226.02101,"821,X80.XXXA ",.02)
 ;;X80.XXXA
 ;;9002226.02101,"821,X80.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X81.0XXA ",.01)
 ;;X81.0XXA
 ;;9002226.02101,"821,X81.0XXA ",.02)
 ;;X81.0XXA
 ;;9002226.02101,"821,X81.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X81.1XXA ",.01)
 ;;X81.1XXA
 ;;9002226.02101,"821,X81.1XXA ",.02)
 ;;X81.1XXA
 ;;9002226.02101,"821,X81.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X81.8XXA ",.01)
 ;;X81.8XXA
 ;;9002226.02101,"821,X81.8XXA ",.02)
 ;;X81.8XXA
 ;;9002226.02101,"821,X81.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X82.0XXA ",.01)
 ;;X82.0XXA
 ;;9002226.02101,"821,X82.0XXA ",.02)
 ;;X82.0XXA
 ;;9002226.02101,"821,X82.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X82.1XXA ",.01)
 ;;X82.1XXA
 ;;9002226.02101,"821,X82.1XXA ",.02)
 ;;X82.1XXA
 ;;9002226.02101,"821,X82.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X82.2XXA ",.01)
 ;;X82.2XXA
 ;;9002226.02101,"821,X82.2XXA ",.02)
 ;;X82.2XXA
 ;;9002226.02101,"821,X82.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X82.8XXA ",.01)
 ;;X82.8XXA
 ;;9002226.02101,"821,X82.8XXA ",.02)
 ;;X82.8XXA
 ;;9002226.02101,"821,X82.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X83.0XXA ",.01)
 ;;X83.0XXA
 ;;9002226.02101,"821,X83.0XXA ",.02)
 ;;X83.0XXA
 ;;9002226.02101,"821,X83.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X83.1XXA ",.01)
 ;;X83.1XXA
 ;;9002226.02101,"821,X83.1XXA ",.02)
 ;;X83.1XXA
 ;;9002226.02101,"821,X83.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X83.2XXA ",.01)
 ;;X83.2XXA
 ;;9002226.02101,"821,X83.2XXA ",.02)
 ;;X83.2XXA
 ;;9002226.02101,"821,X83.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X83.8XXA ",.01)
 ;;X83.8XXA
 ;;9002226.02101,"821,X83.8XXA ",.02)
 ;;X83.8XXA
 ;;9002226.02101,"821,X83.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.0XXA ",.01)
 ;;X92.0XXA
 ;;9002226.02101,"821,X92.0XXA ",.02)
 ;;X92.0XXA
 ;;9002226.02101,"821,X92.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.1XXA ",.01)
 ;;X92.1XXA
 ;;9002226.02101,"821,X92.1XXA ",.02)
 ;;X92.1XXA
 ;;9002226.02101,"821,X92.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.2XXA ",.01)
 ;;X92.2XXA
 ;;9002226.02101,"821,X92.2XXA ",.02)
 ;;X92.2XXA
 ;;9002226.02101,"821,X92.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.3XXA ",.01)
 ;;X92.3XXA
 ;;9002226.02101,"821,X92.3XXA ",.02)
 ;;X92.3XXA
 ;;9002226.02101,"821,X92.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.8XXA ",.01)
 ;;X92.8XXA
 ;;9002226.02101,"821,X92.8XXA ",.02)
 ;;X92.8XXA
 ;;9002226.02101,"821,X92.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X92.9XXA ",.01)
 ;;X92.9XXA
 ;;9002226.02101,"821,X92.9XXA ",.02)
 ;;X92.9XXA
 ;;9002226.02101,"821,X92.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X93.XXXA ",.01)
 ;;X93.XXXA
 ;;9002226.02101,"821,X93.XXXA ",.02)
 ;;X93.XXXA
 ;;9002226.02101,"821,X93.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X94.0XXA ",.01)
 ;;X94.0XXA
 ;;9002226.02101,"821,X94.0XXA ",.02)
 ;;X94.0XXA
 ;;9002226.02101,"821,X94.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X94.1XXA ",.01)
 ;;X94.1XXA
 ;;9002226.02101,"821,X94.1XXA ",.02)
 ;;X94.1XXA
 ;;9002226.02101,"821,X94.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X94.2XXA ",.01)
 ;;X94.2XXA
 ;;9002226.02101,"821,X94.2XXA ",.02)
 ;;X94.2XXA
 ;;9002226.02101,"821,X94.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X94.8XXA ",.01)
 ;;X94.8XXA
 ;;9002226.02101,"821,X94.8XXA ",.02)
 ;;X94.8XXA
 ;;9002226.02101,"821,X94.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X94.9XXA ",.01)
 ;;X94.9XXA
 ;;9002226.02101,"821,X94.9XXA ",.02)
 ;;X94.9XXA
 ;;9002226.02101,"821,X94.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X95.01XA ",.01)
 ;;X95.01XA
 ;;9002226.02101,"821,X95.01XA ",.02)
 ;;X95.01XA
 ;;9002226.02101,"821,X95.01XA ",.03)
 ;;30
 ;;9002226.02101,"821,X95.02XA ",.01)
 ;;X95.02XA
 ;;9002226.02101,"821,X95.02XA ",.02)
 ;;X95.02XA
 ;;9002226.02101,"821,X95.02XA ",.03)
 ;;30
 ;;9002226.02101,"821,X95.09XA ",.01)
 ;;X95.09XA
 ;;9002226.02101,"821,X95.09XA ",.02)
 ;;X95.09XA
 ;;9002226.02101,"821,X95.09XA ",.03)
 ;;30
 ;;9002226.02101,"821,X95.8XXA ",.01)
 ;;X95.8XXA
 ;;9002226.02101,"821,X95.8XXA ",.02)
 ;;X95.8XXA
 ;;9002226.02101,"821,X95.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X95.9XXA ",.01)
 ;;X95.9XXA
 ;;9002226.02101,"821,X95.9XXA ",.02)
 ;;X95.9XXA
 ;;9002226.02101,"821,X95.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.0XXA ",.01)
 ;;X96.0XXA
 ;;9002226.02101,"821,X96.0XXA ",.02)
 ;;X96.0XXA
 ;;9002226.02101,"821,X96.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.1XXA ",.01)
 ;;X96.1XXA
 ;;9002226.02101,"821,X96.1XXA ",.02)
 ;;X96.1XXA
 ;;9002226.02101,"821,X96.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.2XXA ",.01)
 ;;X96.2XXA
 ;;9002226.02101,"821,X96.2XXA ",.02)
 ;;X96.2XXA
 ;;9002226.02101,"821,X96.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.3XXA ",.01)
 ;;X96.3XXA
 ;;9002226.02101,"821,X96.3XXA ",.02)
 ;;X96.3XXA
 ;;9002226.02101,"821,X96.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.4XXA ",.01)
 ;;X96.4XXA
 ;;9002226.02101,"821,X96.4XXA ",.02)
 ;;X96.4XXA
 ;;9002226.02101,"821,X96.4XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.8XXA ",.01)
 ;;X96.8XXA
 ;;9002226.02101,"821,X96.8XXA ",.02)
 ;;X96.8XXA
 ;;9002226.02101,"821,X96.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X96.9XXA ",.01)
 ;;X96.9XXA
 ;;9002226.02101,"821,X96.9XXA ",.02)
 ;;X96.9XXA
 ;;9002226.02101,"821,X96.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X97.XXXA ",.01)
 ;;X97.XXXA
 ;;9002226.02101,"821,X97.XXXA ",.02)
 ;;X97.XXXA
 ;;9002226.02101,"821,X97.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.0XXA ",.01)
 ;;X98.0XXA
 ;;9002226.02101,"821,X98.0XXA ",.02)
 ;;X98.0XXA
 ;;9002226.02101,"821,X98.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.1XXA ",.01)
 ;;X98.1XXA
 ;;9002226.02101,"821,X98.1XXA ",.02)
 ;;X98.1XXA
 ;;9002226.02101,"821,X98.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.2XXA ",.01)
 ;;X98.2XXA
 ;;9002226.02101,"821,X98.2XXA ",.02)
 ;;X98.2XXA
 ;;9002226.02101,"821,X98.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.3XXA ",.01)
 ;;X98.3XXA
 ;;9002226.02101,"821,X98.3XXA ",.02)
 ;;X98.3XXA
 ;;9002226.02101,"821,X98.3XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.8XXA ",.01)
 ;;X98.8XXA
 ;;9002226.02101,"821,X98.8XXA ",.02)
 ;;X98.8XXA
 ;;9002226.02101,"821,X98.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X98.9XXA ",.01)
 ;;X98.9XXA
 ;;9002226.02101,"821,X98.9XXA ",.02)
 ;;X98.9XXA
 ;;9002226.02101,"821,X98.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X99.0XXA ",.01)
 ;;X99.0XXA
 ;;9002226.02101,"821,X99.0XXA ",.02)
 ;;X99.0XXA
 ;;9002226.02101,"821,X99.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X99.1XXA ",.01)
 ;;X99.1XXA
 ;;9002226.02101,"821,X99.1XXA ",.02)
 ;;X99.1XXA
 ;;9002226.02101,"821,X99.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X99.2XXA ",.01)
 ;;X99.2XXA
 ;;9002226.02101,"821,X99.2XXA ",.02)
 ;;X99.2XXA
 ;;9002226.02101,"821,X99.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X99.8XXA ",.01)
 ;;X99.8XXA
 ;;9002226.02101,"821,X99.8XXA ",.02)
 ;;X99.8XXA
 ;;9002226.02101,"821,X99.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,X99.9XXA ",.01)
 ;;X99.9XXA
 ;;9002226.02101,"821,X99.9XXA ",.02)
 ;;X99.9XXA
 ;;9002226.02101,"821,X99.9XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y00.XXXA ",.01)
 ;;Y00.XXXA
 ;;9002226.02101,"821,Y00.XXXA ",.02)
 ;;Y00.XXXA
 ;;9002226.02101,"821,Y00.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y01.XXXA ",.01)
 ;;Y01.XXXA
 ;;9002226.02101,"821,Y01.XXXA ",.02)
 ;;Y01.XXXA
 ;;9002226.02101,"821,Y01.XXXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y02.0XXA ",.01)
 ;;Y02.0XXA
 ;;9002226.02101,"821,Y02.0XXA ",.02)
 ;;Y02.0XXA
 ;;9002226.02101,"821,Y02.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y02.1XXA ",.01)
 ;;Y02.1XXA
 ;;9002226.02101,"821,Y02.1XXA ",.02)
 ;;Y02.1XXA
 ;;9002226.02101,"821,Y02.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y02.8XXA ",.01)
 ;;Y02.8XXA
 ;;9002226.02101,"821,Y02.8XXA ",.02)
 ;;Y02.8XXA
 ;;9002226.02101,"821,Y02.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y03.0XXA ",.01)
 ;;Y03.0XXA
 ;;9002226.02101,"821,Y03.0XXA ",.02)
 ;;Y03.0XXA
 ;;9002226.02101,"821,Y03.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y03.8XXA ",.01)
 ;;Y03.8XXA
 ;;9002226.02101,"821,Y03.8XXA ",.02)
 ;;Y03.8XXA
 ;;9002226.02101,"821,Y03.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y04.0XXA ",.01)
 ;;Y04.0XXA
 ;;9002226.02101,"821,Y04.0XXA ",.02)
 ;;Y04.0XXA
 ;;9002226.02101,"821,Y04.0XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y04.1XXA ",.01)
 ;;Y04.1XXA
 ;;9002226.02101,"821,Y04.1XXA ",.02)
 ;;Y04.1XXA
 ;;9002226.02101,"821,Y04.1XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y04.2XXA ",.01)
 ;;Y04.2XXA
 ;;9002226.02101,"821,Y04.2XXA ",.02)
 ;;Y04.2XXA
 ;;9002226.02101,"821,Y04.2XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y04.8XXA ",.01)
 ;;Y04.8XXA
 ;;9002226.02101,"821,Y04.8XXA ",.02)
 ;;Y04.8XXA
 ;;9002226.02101,"821,Y04.8XXA ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.01 ",.01)
 ;;Y07.01
 ;;9002226.02101,"821,Y07.01 ",.02)
 ;;Y07.01
 ;;9002226.02101,"821,Y07.01 ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.02 ",.01)
 ;;Y07.02
 ;;9002226.02101,"821,Y07.02 ",.02)
 ;;Y07.02
 ;;9002226.02101,"821,Y07.02 ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.03 ",.01)
 ;;Y07.03
 ;;9002226.02101,"821,Y07.03 ",.02)
 ;;Y07.03
 ;;9002226.02101,"821,Y07.03 ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.04 ",.01)
 ;;Y07.04
 ;;9002226.02101,"821,Y07.04 ",.02)
 ;;Y07.04
 ;;9002226.02101,"821,Y07.04 ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.11 ",.01)
 ;;Y07.11
 ;;9002226.02101,"821,Y07.11 ",.02)
 ;;Y07.11
 ;;9002226.02101,"821,Y07.11 ",.03)
 ;;30
 ;;9002226.02101,"821,Y07.12 ",.01)
 ;;Y07.12
 ;;9002226.02101,"821,Y07.12 ",.02)
 ;;Y07.12
 ;;9002226.02101,"821,Y07.12 ",.03)
 ;;30
