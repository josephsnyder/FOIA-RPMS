ATXD5G8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"160,T48.293A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.293D ",.01)
 ;;T48.293D 
 ;;9002226.02101,"160,T48.293D ",.02)
 ;;T48.293D 
 ;;9002226.02101,"160,T48.293D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.293S ",.01)
 ;;T48.293S 
 ;;9002226.02101,"160,T48.293S ",.02)
 ;;T48.293S 
 ;;9002226.02101,"160,T48.293S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.3X3A ",.01)
 ;;T48.3X3A 
 ;;9002226.02101,"160,T48.3X3A ",.02)
 ;;T48.3X3A 
 ;;9002226.02101,"160,T48.3X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.3X3D ",.01)
 ;;T48.3X3D 
 ;;9002226.02101,"160,T48.3X3D ",.02)
 ;;T48.3X3D 
 ;;9002226.02101,"160,T48.3X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.3X3S ",.01)
 ;;T48.3X3S 
 ;;9002226.02101,"160,T48.3X3S ",.02)
 ;;T48.3X3S 
 ;;9002226.02101,"160,T48.3X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.4X3A ",.01)
 ;;T48.4X3A 
 ;;9002226.02101,"160,T48.4X3A ",.02)
 ;;T48.4X3A 
 ;;9002226.02101,"160,T48.4X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.4X3D ",.01)
 ;;T48.4X3D 
 ;;9002226.02101,"160,T48.4X3D ",.02)
 ;;T48.4X3D 
 ;;9002226.02101,"160,T48.4X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.4X3S ",.01)
 ;;T48.4X3S 
 ;;9002226.02101,"160,T48.4X3S ",.02)
 ;;T48.4X3S 
 ;;9002226.02101,"160,T48.4X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.5X3A ",.01)
 ;;T48.5X3A 
 ;;9002226.02101,"160,T48.5X3A ",.02)
 ;;T48.5X3A 
 ;;9002226.02101,"160,T48.5X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.5X3D ",.01)
 ;;T48.5X3D 
 ;;9002226.02101,"160,T48.5X3D ",.02)
 ;;T48.5X3D 
 ;;9002226.02101,"160,T48.5X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.5X3S ",.01)
 ;;T48.5X3S 
 ;;9002226.02101,"160,T48.5X3S ",.02)
 ;;T48.5X3S 
 ;;9002226.02101,"160,T48.5X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.6X3A ",.01)
 ;;T48.6X3A 
 ;;9002226.02101,"160,T48.6X3A ",.02)
 ;;T48.6X3A 
 ;;9002226.02101,"160,T48.6X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.6X3D ",.01)
 ;;T48.6X3D 
 ;;9002226.02101,"160,T48.6X3D ",.02)
 ;;T48.6X3D 
 ;;9002226.02101,"160,T48.6X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.6X3S ",.01)
 ;;T48.6X3S 
 ;;9002226.02101,"160,T48.6X3S ",.02)
 ;;T48.6X3S 
 ;;9002226.02101,"160,T48.6X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.903A ",.01)
 ;;T48.903A 
 ;;9002226.02101,"160,T48.903A ",.02)
 ;;T48.903A 
 ;;9002226.02101,"160,T48.903A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.903D ",.01)
 ;;T48.903D 
 ;;9002226.02101,"160,T48.903D ",.02)
 ;;T48.903D 
 ;;9002226.02101,"160,T48.903D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.903S ",.01)
 ;;T48.903S 
 ;;9002226.02101,"160,T48.903S ",.02)
 ;;T48.903S 
 ;;9002226.02101,"160,T48.903S ",.03)
 ;;30
 ;;9002226.02101,"160,T48.993A ",.01)
 ;;T48.993A 
 ;;9002226.02101,"160,T48.993A ",.02)
 ;;T48.993A 
 ;;9002226.02101,"160,T48.993A ",.03)
 ;;30
 ;;9002226.02101,"160,T48.993D ",.01)
 ;;T48.993D 
 ;;9002226.02101,"160,T48.993D ",.02)
 ;;T48.993D 
 ;;9002226.02101,"160,T48.993D ",.03)
 ;;30
 ;;9002226.02101,"160,T48.993S ",.01)
 ;;T48.993S 
 ;;9002226.02101,"160,T48.993S ",.02)
 ;;T48.993S 
 ;;9002226.02101,"160,T48.993S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.0X3A ",.01)
 ;;T49.0X3A 
 ;;9002226.02101,"160,T49.0X3A ",.02)
 ;;T49.0X3A 
 ;;9002226.02101,"160,T49.0X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.0X3D ",.01)
 ;;T49.0X3D 
 ;;9002226.02101,"160,T49.0X3D ",.02)
 ;;T49.0X3D 
 ;;9002226.02101,"160,T49.0X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.0X3S ",.01)
 ;;T49.0X3S 
 ;;9002226.02101,"160,T49.0X3S ",.02)
 ;;T49.0X3S 
 ;;9002226.02101,"160,T49.0X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.1X3A ",.01)
 ;;T49.1X3A 
 ;;9002226.02101,"160,T49.1X3A ",.02)
 ;;T49.1X3A 
 ;;9002226.02101,"160,T49.1X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.1X3D ",.01)
 ;;T49.1X3D 
 ;;9002226.02101,"160,T49.1X3D ",.02)
 ;;T49.1X3D 
 ;;9002226.02101,"160,T49.1X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.1X3S ",.01)
 ;;T49.1X3S 
 ;;9002226.02101,"160,T49.1X3S ",.02)
 ;;T49.1X3S 
 ;;9002226.02101,"160,T49.1X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.2X3A ",.01)
 ;;T49.2X3A 
 ;;9002226.02101,"160,T49.2X3A ",.02)
 ;;T49.2X3A 
 ;;9002226.02101,"160,T49.2X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.2X3D ",.01)
 ;;T49.2X3D 
 ;;9002226.02101,"160,T49.2X3D ",.02)
 ;;T49.2X3D 
 ;;9002226.02101,"160,T49.2X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.2X3S ",.01)
 ;;T49.2X3S 
 ;;9002226.02101,"160,T49.2X3S ",.02)
 ;;T49.2X3S 
 ;;9002226.02101,"160,T49.2X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.3X3A ",.01)
 ;;T49.3X3A 
 ;;9002226.02101,"160,T49.3X3A ",.02)
 ;;T49.3X3A 
 ;;9002226.02101,"160,T49.3X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.3X3D ",.01)
 ;;T49.3X3D 
 ;;9002226.02101,"160,T49.3X3D ",.02)
 ;;T49.3X3D 
 ;;9002226.02101,"160,T49.3X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.3X3S ",.01)
 ;;T49.3X3S 
 ;;9002226.02101,"160,T49.3X3S ",.02)
 ;;T49.3X3S 
 ;;9002226.02101,"160,T49.3X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.4X3A ",.01)
 ;;T49.4X3A 
 ;;9002226.02101,"160,T49.4X3A ",.02)
 ;;T49.4X3A 
 ;;9002226.02101,"160,T49.4X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.4X3D ",.01)
 ;;T49.4X3D 
 ;;9002226.02101,"160,T49.4X3D ",.02)
 ;;T49.4X3D 
 ;;9002226.02101,"160,T49.4X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.4X3S ",.01)
 ;;T49.4X3S 
 ;;9002226.02101,"160,T49.4X3S ",.02)
 ;;T49.4X3S 
 ;;9002226.02101,"160,T49.4X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.5X3A ",.01)
 ;;T49.5X3A 
 ;;9002226.02101,"160,T49.5X3A ",.02)
 ;;T49.5X3A 
 ;;9002226.02101,"160,T49.5X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.5X3D ",.01)
 ;;T49.5X3D 
 ;;9002226.02101,"160,T49.5X3D ",.02)
 ;;T49.5X3D 
 ;;9002226.02101,"160,T49.5X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.5X3S ",.01)
 ;;T49.5X3S 
 ;;9002226.02101,"160,T49.5X3S ",.02)
 ;;T49.5X3S 
 ;;9002226.02101,"160,T49.5X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.6X3A ",.01)
 ;;T49.6X3A 
 ;;9002226.02101,"160,T49.6X3A ",.02)
 ;;T49.6X3A 
 ;;9002226.02101,"160,T49.6X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.6X3D ",.01)
 ;;T49.6X3D 
 ;;9002226.02101,"160,T49.6X3D ",.02)
 ;;T49.6X3D 
 ;;9002226.02101,"160,T49.6X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.6X3S ",.01)
 ;;T49.6X3S 
 ;;9002226.02101,"160,T49.6X3S ",.02)
 ;;T49.6X3S 
 ;;9002226.02101,"160,T49.6X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.7X3A ",.01)
 ;;T49.7X3A 
 ;;9002226.02101,"160,T49.7X3A ",.02)
 ;;T49.7X3A 
 ;;9002226.02101,"160,T49.7X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.7X3D ",.01)
 ;;T49.7X3D 
 ;;9002226.02101,"160,T49.7X3D ",.02)
 ;;T49.7X3D 
 ;;9002226.02101,"160,T49.7X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.7X3S ",.01)
 ;;T49.7X3S 
 ;;9002226.02101,"160,T49.7X3S ",.02)
 ;;T49.7X3S 
 ;;9002226.02101,"160,T49.7X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.8X3A ",.01)
 ;;T49.8X3A 
 ;;9002226.02101,"160,T49.8X3A ",.02)
 ;;T49.8X3A 
 ;;9002226.02101,"160,T49.8X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T49.8X3D ",.01)
 ;;T49.8X3D 
 ;;9002226.02101,"160,T49.8X3D ",.02)
 ;;T49.8X3D 
 ;;9002226.02101,"160,T49.8X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T49.8X3S ",.01)
 ;;T49.8X3S 
 ;;9002226.02101,"160,T49.8X3S ",.02)
 ;;T49.8X3S 
 ;;9002226.02101,"160,T49.8X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T49.93XA ",.01)
 ;;T49.93XA 
 ;;9002226.02101,"160,T49.93XA ",.02)
 ;;T49.93XA 
 ;;9002226.02101,"160,T49.93XA ",.03)
 ;;30
 ;;9002226.02101,"160,T49.93XD ",.01)
 ;;T49.93XD 
 ;;9002226.02101,"160,T49.93XD ",.02)
 ;;T49.93XD 
 ;;9002226.02101,"160,T49.93XD ",.03)
 ;;30
 ;;9002226.02101,"160,T49.93XS ",.01)
 ;;T49.93XS 
 ;;9002226.02101,"160,T49.93XS ",.02)
 ;;T49.93XS 
 ;;9002226.02101,"160,T49.93XS ",.03)
 ;;30
 ;;9002226.02101,"160,T50.0X3A ",.01)
 ;;T50.0X3A 
 ;;9002226.02101,"160,T50.0X3A ",.02)
 ;;T50.0X3A 
 ;;9002226.02101,"160,T50.0X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.0X3D ",.01)
 ;;T50.0X3D 
 ;;9002226.02101,"160,T50.0X3D ",.02)
 ;;T50.0X3D 
 ;;9002226.02101,"160,T50.0X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.0X3S ",.01)
 ;;T50.0X3S 
 ;;9002226.02101,"160,T50.0X3S ",.02)
 ;;T50.0X3S 
 ;;9002226.02101,"160,T50.0X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.1X3A ",.01)
 ;;T50.1X3A 
 ;;9002226.02101,"160,T50.1X3A ",.02)
 ;;T50.1X3A 
 ;;9002226.02101,"160,T50.1X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.1X3D ",.01)
 ;;T50.1X3D 
 ;;9002226.02101,"160,T50.1X3D ",.02)
 ;;T50.1X3D 
 ;;9002226.02101,"160,T50.1X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.1X3S ",.01)
 ;;T50.1X3S 
 ;;9002226.02101,"160,T50.1X3S ",.02)
 ;;T50.1X3S 
 ;;9002226.02101,"160,T50.1X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.2X3A ",.01)
 ;;T50.2X3A 
 ;;9002226.02101,"160,T50.2X3A ",.02)
 ;;T50.2X3A 
 ;;9002226.02101,"160,T50.2X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.2X3D ",.01)
 ;;T50.2X3D 
 ;;9002226.02101,"160,T50.2X3D ",.02)
 ;;T50.2X3D 
 ;;9002226.02101,"160,T50.2X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.2X3S ",.01)
 ;;T50.2X3S 
 ;;9002226.02101,"160,T50.2X3S ",.02)
 ;;T50.2X3S 
 ;;9002226.02101,"160,T50.2X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.3X3A ",.01)
 ;;T50.3X3A 
 ;;9002226.02101,"160,T50.3X3A ",.02)
 ;;T50.3X3A 
 ;;9002226.02101,"160,T50.3X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.3X3D ",.01)
 ;;T50.3X3D 
 ;;9002226.02101,"160,T50.3X3D ",.02)
 ;;T50.3X3D 
 ;;9002226.02101,"160,T50.3X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.3X3S ",.01)
 ;;T50.3X3S 
 ;;9002226.02101,"160,T50.3X3S ",.02)
 ;;T50.3X3S 
 ;;9002226.02101,"160,T50.3X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.4X3A ",.01)
 ;;T50.4X3A 
 ;;9002226.02101,"160,T50.4X3A ",.02)
 ;;T50.4X3A 
 ;;9002226.02101,"160,T50.4X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.4X3D ",.01)
 ;;T50.4X3D 
 ;;9002226.02101,"160,T50.4X3D ",.02)
 ;;T50.4X3D 
 ;;9002226.02101,"160,T50.4X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.4X3S ",.01)
 ;;T50.4X3S 
 ;;9002226.02101,"160,T50.4X3S ",.02)
 ;;T50.4X3S 
 ;;9002226.02101,"160,T50.4X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.5X3A ",.01)
 ;;T50.5X3A 
 ;;9002226.02101,"160,T50.5X3A ",.02)
 ;;T50.5X3A 
 ;;9002226.02101,"160,T50.5X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.5X3D ",.01)
 ;;T50.5X3D 
 ;;9002226.02101,"160,T50.5X3D ",.02)
 ;;T50.5X3D 
 ;;9002226.02101,"160,T50.5X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.5X3S ",.01)
 ;;T50.5X3S 
 ;;9002226.02101,"160,T50.5X3S ",.02)
 ;;T50.5X3S 
 ;;9002226.02101,"160,T50.5X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.6X3A ",.01)
 ;;T50.6X3A 
 ;;9002226.02101,"160,T50.6X3A ",.02)
 ;;T50.6X3A 
 ;;9002226.02101,"160,T50.6X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.6X3D ",.01)
 ;;T50.6X3D 
 ;;9002226.02101,"160,T50.6X3D ",.02)
 ;;T50.6X3D 
 ;;9002226.02101,"160,T50.6X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.6X3S ",.01)
 ;;T50.6X3S 
 ;;9002226.02101,"160,T50.6X3S ",.02)
 ;;T50.6X3S 
 ;;9002226.02101,"160,T50.6X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.7X3A ",.01)
 ;;T50.7X3A 
 ;;9002226.02101,"160,T50.7X3A ",.02)
 ;;T50.7X3A 
 ;;9002226.02101,"160,T50.7X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.7X3D ",.01)
 ;;T50.7X3D 
 ;;9002226.02101,"160,T50.7X3D ",.02)
 ;;T50.7X3D 
 ;;9002226.02101,"160,T50.7X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.7X3S ",.01)
 ;;T50.7X3S 
 ;;9002226.02101,"160,T50.7X3S ",.02)
 ;;T50.7X3S 
 ;;9002226.02101,"160,T50.7X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.8X3A ",.01)
 ;;T50.8X3A 
 ;;9002226.02101,"160,T50.8X3A ",.02)
 ;;T50.8X3A 
 ;;9002226.02101,"160,T50.8X3A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.8X3D ",.01)
 ;;T50.8X3D 
 ;;9002226.02101,"160,T50.8X3D ",.02)
 ;;T50.8X3D 
 ;;9002226.02101,"160,T50.8X3D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.8X3S ",.01)
 ;;T50.8X3S 
 ;;9002226.02101,"160,T50.8X3S ",.02)
 ;;T50.8X3S 
 ;;9002226.02101,"160,T50.8X3S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.903A ",.01)
 ;;T50.903A 
 ;;9002226.02101,"160,T50.903A ",.02)
 ;;T50.903A 
 ;;9002226.02101,"160,T50.903A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.903D ",.01)
 ;;T50.903D 
 ;;9002226.02101,"160,T50.903D ",.02)
 ;;T50.903D 
 ;;9002226.02101,"160,T50.903D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.903S ",.01)
 ;;T50.903S 
 ;;9002226.02101,"160,T50.903S ",.02)
 ;;T50.903S 
 ;;9002226.02101,"160,T50.903S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.993A ",.01)
 ;;T50.993A 
 ;;9002226.02101,"160,T50.993A ",.02)
 ;;T50.993A 
 ;;9002226.02101,"160,T50.993A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.993D ",.01)
 ;;T50.993D 
 ;;9002226.02101,"160,T50.993D ",.02)
 ;;T50.993D 
 ;;9002226.02101,"160,T50.993D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.993S ",.01)
 ;;T50.993S 
 ;;9002226.02101,"160,T50.993S ",.02)
 ;;T50.993S 
 ;;9002226.02101,"160,T50.993S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A13A ",.01)
 ;;T50.A13A 
 ;;9002226.02101,"160,T50.A13A ",.02)
 ;;T50.A13A 
 ;;9002226.02101,"160,T50.A13A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A13D ",.01)
 ;;T50.A13D 
 ;;9002226.02101,"160,T50.A13D ",.02)
 ;;T50.A13D 
 ;;9002226.02101,"160,T50.A13D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A13S ",.01)
 ;;T50.A13S 
 ;;9002226.02101,"160,T50.A13S ",.02)
 ;;T50.A13S 
 ;;9002226.02101,"160,T50.A13S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A23A ",.01)
 ;;T50.A23A 
 ;;9002226.02101,"160,T50.A23A ",.02)
 ;;T50.A23A 
 ;;9002226.02101,"160,T50.A23A ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A23D ",.01)
 ;;T50.A23D 
 ;;9002226.02101,"160,T50.A23D ",.02)
 ;;T50.A23D 
 ;;9002226.02101,"160,T50.A23D ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A23S ",.01)
 ;;T50.A23S 
 ;;9002226.02101,"160,T50.A23S ",.02)
 ;;T50.A23S 
 ;;9002226.02101,"160,T50.A23S ",.03)
 ;;30
 ;;9002226.02101,"160,T50.A93A ",.01)
 ;;T50.A93A 
