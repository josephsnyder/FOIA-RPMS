ATXXA47 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S31.809A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.811A ",.01)
 ;;S31.811A
 ;;9002226.02101,"873,S31.811A ",.02)
 ;;S31.811A
 ;;9002226.02101,"873,S31.811A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.812A ",.01)
 ;;S31.812A
 ;;9002226.02101,"873,S31.812A ",.02)
 ;;S31.812A
 ;;9002226.02101,"873,S31.812A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.813A ",.01)
 ;;S31.813A
 ;;9002226.02101,"873,S31.813A ",.02)
 ;;S31.813A
 ;;9002226.02101,"873,S31.813A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.814A ",.01)
 ;;S31.814A
 ;;9002226.02101,"873,S31.814A ",.02)
 ;;S31.814A
 ;;9002226.02101,"873,S31.814A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.815A ",.01)
 ;;S31.815A
 ;;9002226.02101,"873,S31.815A ",.02)
 ;;S31.815A
 ;;9002226.02101,"873,S31.815A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.819A ",.01)
 ;;S31.819A
 ;;9002226.02101,"873,S31.819A ",.02)
 ;;S31.819A
 ;;9002226.02101,"873,S31.819A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.821A ",.01)
 ;;S31.821A
 ;;9002226.02101,"873,S31.821A ",.02)
 ;;S31.821A
 ;;9002226.02101,"873,S31.821A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.822A ",.01)
 ;;S31.822A
 ;;9002226.02101,"873,S31.822A ",.02)
 ;;S31.822A
 ;;9002226.02101,"873,S31.822A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.823A ",.01)
 ;;S31.823A
 ;;9002226.02101,"873,S31.823A ",.02)
 ;;S31.823A
 ;;9002226.02101,"873,S31.823A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.824A ",.01)
 ;;S31.824A
 ;;9002226.02101,"873,S31.824A ",.02)
 ;;S31.824A
 ;;9002226.02101,"873,S31.824A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.825A ",.01)
 ;;S31.825A
 ;;9002226.02101,"873,S31.825A ",.02)
 ;;S31.825A
 ;;9002226.02101,"873,S31.825A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.829A ",.01)
 ;;S31.829A
 ;;9002226.02101,"873,S31.829A ",.02)
 ;;S31.829A
 ;;9002226.02101,"873,S31.829A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.831A ",.01)
 ;;S31.831A
 ;;9002226.02101,"873,S31.831A ",.02)
 ;;S31.831A
 ;;9002226.02101,"873,S31.831A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.832A ",.01)
 ;;S31.832A
 ;;9002226.02101,"873,S31.832A ",.02)
 ;;S31.832A
 ;;9002226.02101,"873,S31.832A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.833A ",.01)
 ;;S31.833A
 ;;9002226.02101,"873,S31.833A ",.02)
 ;;S31.833A
 ;;9002226.02101,"873,S31.833A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.834A ",.01)
 ;;S31.834A
 ;;9002226.02101,"873,S31.834A ",.02)
 ;;S31.834A
 ;;9002226.02101,"873,S31.834A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.835A ",.01)
 ;;S31.835A
 ;;9002226.02101,"873,S31.835A ",.02)
 ;;S31.835A
 ;;9002226.02101,"873,S31.835A ",.03)
 ;;30
 ;;9002226.02101,"873,S31.839A ",.01)
 ;;S31.839A
 ;;9002226.02101,"873,S31.839A ",.02)
 ;;S31.839A
 ;;9002226.02101,"873,S31.839A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.000A ",.01)
 ;;S32.000A
 ;;9002226.02101,"873,S32.000A ",.02)
 ;;S32.000A
 ;;9002226.02101,"873,S32.000A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.000B ",.01)
 ;;S32.000B
 ;;9002226.02101,"873,S32.000B ",.02)
 ;;S32.000B
 ;;9002226.02101,"873,S32.000B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.001A ",.01)
 ;;S32.001A
 ;;9002226.02101,"873,S32.001A ",.02)
 ;;S32.001A
 ;;9002226.02101,"873,S32.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.001B ",.01)
 ;;S32.001B
 ;;9002226.02101,"873,S32.001B ",.02)
 ;;S32.001B
 ;;9002226.02101,"873,S32.001B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.002A ",.01)
 ;;S32.002A
 ;;9002226.02101,"873,S32.002A ",.02)
 ;;S32.002A
 ;;9002226.02101,"873,S32.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.002B ",.01)
 ;;S32.002B
 ;;9002226.02101,"873,S32.002B ",.02)
 ;;S32.002B
 ;;9002226.02101,"873,S32.002B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.008A ",.01)
 ;;S32.008A
 ;;9002226.02101,"873,S32.008A ",.02)
 ;;S32.008A
 ;;9002226.02101,"873,S32.008A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.008B ",.01)
 ;;S32.008B
 ;;9002226.02101,"873,S32.008B ",.02)
 ;;S32.008B
 ;;9002226.02101,"873,S32.008B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.009A ",.01)
 ;;S32.009A
 ;;9002226.02101,"873,S32.009A ",.02)
 ;;S32.009A
 ;;9002226.02101,"873,S32.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.009B ",.01)
 ;;S32.009B
 ;;9002226.02101,"873,S32.009B ",.02)
 ;;S32.009B
 ;;9002226.02101,"873,S32.009B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.010A ",.01)
 ;;S32.010A
 ;;9002226.02101,"873,S32.010A ",.02)
 ;;S32.010A
 ;;9002226.02101,"873,S32.010A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.010B ",.01)
 ;;S32.010B
 ;;9002226.02101,"873,S32.010B ",.02)
 ;;S32.010B
 ;;9002226.02101,"873,S32.010B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.011A ",.01)
 ;;S32.011A
 ;;9002226.02101,"873,S32.011A ",.02)
 ;;S32.011A
 ;;9002226.02101,"873,S32.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.011B ",.01)
 ;;S32.011B
 ;;9002226.02101,"873,S32.011B ",.02)
 ;;S32.011B
 ;;9002226.02101,"873,S32.011B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.012A ",.01)
 ;;S32.012A
 ;;9002226.02101,"873,S32.012A ",.02)
 ;;S32.012A
 ;;9002226.02101,"873,S32.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.012B ",.01)
 ;;S32.012B
 ;;9002226.02101,"873,S32.012B ",.02)
 ;;S32.012B
 ;;9002226.02101,"873,S32.012B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.018A ",.01)
 ;;S32.018A
 ;;9002226.02101,"873,S32.018A ",.02)
 ;;S32.018A
 ;;9002226.02101,"873,S32.018A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.018B ",.01)
 ;;S32.018B
 ;;9002226.02101,"873,S32.018B ",.02)
 ;;S32.018B
 ;;9002226.02101,"873,S32.018B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.019A ",.01)
 ;;S32.019A
 ;;9002226.02101,"873,S32.019A ",.02)
 ;;S32.019A
 ;;9002226.02101,"873,S32.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.019B ",.01)
 ;;S32.019B
 ;;9002226.02101,"873,S32.019B ",.02)
 ;;S32.019B
 ;;9002226.02101,"873,S32.019B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.020A ",.01)
 ;;S32.020A
 ;;9002226.02101,"873,S32.020A ",.02)
 ;;S32.020A
 ;;9002226.02101,"873,S32.020A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.020B ",.01)
 ;;S32.020B
 ;;9002226.02101,"873,S32.020B ",.02)
 ;;S32.020B
 ;;9002226.02101,"873,S32.020B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.021A ",.01)
 ;;S32.021A
 ;;9002226.02101,"873,S32.021A ",.02)
 ;;S32.021A
 ;;9002226.02101,"873,S32.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.021B ",.01)
 ;;S32.021B
 ;;9002226.02101,"873,S32.021B ",.02)
 ;;S32.021B
 ;;9002226.02101,"873,S32.021B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.022A ",.01)
 ;;S32.022A
 ;;9002226.02101,"873,S32.022A ",.02)
 ;;S32.022A
 ;;9002226.02101,"873,S32.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.022B ",.01)
 ;;S32.022B
 ;;9002226.02101,"873,S32.022B ",.02)
 ;;S32.022B
 ;;9002226.02101,"873,S32.022B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.028A ",.01)
 ;;S32.028A
 ;;9002226.02101,"873,S32.028A ",.02)
 ;;S32.028A
 ;;9002226.02101,"873,S32.028A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.028B ",.01)
 ;;S32.028B
 ;;9002226.02101,"873,S32.028B ",.02)
 ;;S32.028B
 ;;9002226.02101,"873,S32.028B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.029A ",.01)
 ;;S32.029A
 ;;9002226.02101,"873,S32.029A ",.02)
 ;;S32.029A
 ;;9002226.02101,"873,S32.029A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.029B ",.01)
 ;;S32.029B
 ;;9002226.02101,"873,S32.029B ",.02)
 ;;S32.029B
 ;;9002226.02101,"873,S32.029B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.030A ",.01)
 ;;S32.030A
 ;;9002226.02101,"873,S32.030A ",.02)
 ;;S32.030A
 ;;9002226.02101,"873,S32.030A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.030B ",.01)
 ;;S32.030B
 ;;9002226.02101,"873,S32.030B ",.02)
 ;;S32.030B
 ;;9002226.02101,"873,S32.030B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.031A ",.01)
 ;;S32.031A
 ;;9002226.02101,"873,S32.031A ",.02)
 ;;S32.031A
 ;;9002226.02101,"873,S32.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.031B ",.01)
 ;;S32.031B
 ;;9002226.02101,"873,S32.031B ",.02)
 ;;S32.031B
 ;;9002226.02101,"873,S32.031B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.032A ",.01)
 ;;S32.032A
 ;;9002226.02101,"873,S32.032A ",.02)
 ;;S32.032A
 ;;9002226.02101,"873,S32.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.032B ",.01)
 ;;S32.032B
 ;;9002226.02101,"873,S32.032B ",.02)
 ;;S32.032B
 ;;9002226.02101,"873,S32.032B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.038A ",.01)
 ;;S32.038A
 ;;9002226.02101,"873,S32.038A ",.02)
 ;;S32.038A
 ;;9002226.02101,"873,S32.038A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.038B ",.01)
 ;;S32.038B
 ;;9002226.02101,"873,S32.038B ",.02)
 ;;S32.038B
 ;;9002226.02101,"873,S32.038B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.039A ",.01)
 ;;S32.039A
 ;;9002226.02101,"873,S32.039A ",.02)
 ;;S32.039A
 ;;9002226.02101,"873,S32.039A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.039B ",.01)
 ;;S32.039B
 ;;9002226.02101,"873,S32.039B ",.02)
 ;;S32.039B
 ;;9002226.02101,"873,S32.039B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.040A ",.01)
 ;;S32.040A
 ;;9002226.02101,"873,S32.040A ",.02)
 ;;S32.040A
 ;;9002226.02101,"873,S32.040A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.040B ",.01)
 ;;S32.040B
 ;;9002226.02101,"873,S32.040B ",.02)
 ;;S32.040B
 ;;9002226.02101,"873,S32.040B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.041A ",.01)
 ;;S32.041A
 ;;9002226.02101,"873,S32.041A ",.02)
 ;;S32.041A
 ;;9002226.02101,"873,S32.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.041B ",.01)
 ;;S32.041B
 ;;9002226.02101,"873,S32.041B ",.02)
 ;;S32.041B
 ;;9002226.02101,"873,S32.041B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.042A ",.01)
 ;;S32.042A
 ;;9002226.02101,"873,S32.042A ",.02)
 ;;S32.042A
 ;;9002226.02101,"873,S32.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.042B ",.01)
 ;;S32.042B
 ;;9002226.02101,"873,S32.042B ",.02)
 ;;S32.042B
 ;;9002226.02101,"873,S32.042B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.048A ",.01)
 ;;S32.048A
 ;;9002226.02101,"873,S32.048A ",.02)
 ;;S32.048A
 ;;9002226.02101,"873,S32.048A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.048B ",.01)
 ;;S32.048B
 ;;9002226.02101,"873,S32.048B ",.02)
 ;;S32.048B
 ;;9002226.02101,"873,S32.048B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.049A ",.01)
 ;;S32.049A
 ;;9002226.02101,"873,S32.049A ",.02)
 ;;S32.049A
 ;;9002226.02101,"873,S32.049A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.049B ",.01)
 ;;S32.049B
 ;;9002226.02101,"873,S32.049B ",.02)
 ;;S32.049B
 ;;9002226.02101,"873,S32.049B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.050A ",.01)
 ;;S32.050A
 ;;9002226.02101,"873,S32.050A ",.02)
 ;;S32.050A
 ;;9002226.02101,"873,S32.050A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.050B ",.01)
 ;;S32.050B
 ;;9002226.02101,"873,S32.050B ",.02)
 ;;S32.050B
 ;;9002226.02101,"873,S32.050B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.051A ",.01)
 ;;S32.051A
 ;;9002226.02101,"873,S32.051A ",.02)
 ;;S32.051A
 ;;9002226.02101,"873,S32.051A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.051B ",.01)
 ;;S32.051B
 ;;9002226.02101,"873,S32.051B ",.02)
 ;;S32.051B
 ;;9002226.02101,"873,S32.051B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.052A ",.01)
 ;;S32.052A
 ;;9002226.02101,"873,S32.052A ",.02)
 ;;S32.052A
 ;;9002226.02101,"873,S32.052A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.052B ",.01)
 ;;S32.052B
 ;;9002226.02101,"873,S32.052B ",.02)
 ;;S32.052B
 ;;9002226.02101,"873,S32.052B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.058A ",.01)
 ;;S32.058A
 ;;9002226.02101,"873,S32.058A ",.02)
 ;;S32.058A
 ;;9002226.02101,"873,S32.058A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.058B ",.01)
 ;;S32.058B
 ;;9002226.02101,"873,S32.058B ",.02)
 ;;S32.058B
 ;;9002226.02101,"873,S32.058B ",.03)
 ;;30
 ;;9002226.02101,"873,S32.059A ",.01)
 ;;S32.059A
 ;;9002226.02101,"873,S32.059A ",.02)
 ;;S32.059A
 ;;9002226.02101,"873,S32.059A ",.03)
 ;;30
 ;;9002226.02101,"873,S32.059B ",.01)
 ;;S32.059B
 ;;9002226.02101,"873,S32.059B ",.02)
 ;;S32.059B
 ;;9002226.02101,"873,S32.059B ",.03)
 ;;30
