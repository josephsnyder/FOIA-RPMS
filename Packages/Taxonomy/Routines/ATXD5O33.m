ATXD5O33 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"168,V86.33XA ",.01)
 ;;V86.33XA 
 ;;9002226.02101,"168,V86.33XA ",.02)
 ;;V86.33XA 
 ;;9002226.02101,"168,V86.33XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.33XD ",.01)
 ;;V86.33XD 
 ;;9002226.02101,"168,V86.33XD ",.02)
 ;;V86.33XD 
 ;;9002226.02101,"168,V86.33XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.33XS ",.01)
 ;;V86.33XS 
 ;;9002226.02101,"168,V86.33XS ",.02)
 ;;V86.33XS 
 ;;9002226.02101,"168,V86.33XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.34XA ",.01)
 ;;V86.34XA 
 ;;9002226.02101,"168,V86.34XA ",.02)
 ;;V86.34XA 
 ;;9002226.02101,"168,V86.34XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.34XD ",.01)
 ;;V86.34XD 
 ;;9002226.02101,"168,V86.34XD ",.02)
 ;;V86.34XD 
 ;;9002226.02101,"168,V86.34XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.34XS ",.01)
 ;;V86.34XS 
 ;;9002226.02101,"168,V86.34XS ",.02)
 ;;V86.34XS 
 ;;9002226.02101,"168,V86.34XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.39XA ",.01)
 ;;V86.39XA 
 ;;9002226.02101,"168,V86.39XA ",.02)
 ;;V86.39XA 
 ;;9002226.02101,"168,V86.39XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.39XD ",.01)
 ;;V86.39XD 
 ;;9002226.02101,"168,V86.39XD ",.02)
 ;;V86.39XD 
 ;;9002226.02101,"168,V86.39XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.39XS ",.01)
 ;;V86.39XS 
 ;;9002226.02101,"168,V86.39XS ",.02)
 ;;V86.39XS 
 ;;9002226.02101,"168,V86.39XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.41XA ",.01)
 ;;V86.41XA 
 ;;9002226.02101,"168,V86.41XA ",.02)
 ;;V86.41XA 
 ;;9002226.02101,"168,V86.41XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.41XD ",.01)
 ;;V86.41XD 
 ;;9002226.02101,"168,V86.41XD ",.02)
 ;;V86.41XD 
 ;;9002226.02101,"168,V86.41XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.41XS ",.01)
 ;;V86.41XS 
 ;;9002226.02101,"168,V86.41XS ",.02)
 ;;V86.41XS 
 ;;9002226.02101,"168,V86.41XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.42XA ",.01)
 ;;V86.42XA 
 ;;9002226.02101,"168,V86.42XA ",.02)
 ;;V86.42XA 
 ;;9002226.02101,"168,V86.42XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.42XD ",.01)
 ;;V86.42XD 
 ;;9002226.02101,"168,V86.42XD ",.02)
 ;;V86.42XD 
 ;;9002226.02101,"168,V86.42XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.42XS ",.01)
 ;;V86.42XS 
 ;;9002226.02101,"168,V86.42XS ",.02)
 ;;V86.42XS 
 ;;9002226.02101,"168,V86.42XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.43XA ",.01)
 ;;V86.43XA 
 ;;9002226.02101,"168,V86.43XA ",.02)
 ;;V86.43XA 
 ;;9002226.02101,"168,V86.43XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.43XD ",.01)
 ;;V86.43XD 
 ;;9002226.02101,"168,V86.43XD ",.02)
 ;;V86.43XD 
 ;;9002226.02101,"168,V86.43XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.43XS ",.01)
 ;;V86.43XS 
 ;;9002226.02101,"168,V86.43XS ",.02)
 ;;V86.43XS 
 ;;9002226.02101,"168,V86.43XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.44XA ",.01)
 ;;V86.44XA 
 ;;9002226.02101,"168,V86.44XA ",.02)
 ;;V86.44XA 
 ;;9002226.02101,"168,V86.44XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.44XD ",.01)
 ;;V86.44XD 
 ;;9002226.02101,"168,V86.44XD ",.02)
 ;;V86.44XD 
 ;;9002226.02101,"168,V86.44XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.44XS ",.01)
 ;;V86.44XS 
 ;;9002226.02101,"168,V86.44XS ",.02)
 ;;V86.44XS 
 ;;9002226.02101,"168,V86.44XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.49XA ",.01)
 ;;V86.49XA 
 ;;9002226.02101,"168,V86.49XA ",.02)
 ;;V86.49XA 
 ;;9002226.02101,"168,V86.49XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.49XD ",.01)
 ;;V86.49XD 
 ;;9002226.02101,"168,V86.49XD ",.02)
 ;;V86.49XD 
 ;;9002226.02101,"168,V86.49XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.49XS ",.01)
 ;;V86.49XS 
 ;;9002226.02101,"168,V86.49XS ",.02)
 ;;V86.49XS 
 ;;9002226.02101,"168,V86.49XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.51XA ",.01)
 ;;V86.51XA 
 ;;9002226.02101,"168,V86.51XA ",.02)
 ;;V86.51XA 
 ;;9002226.02101,"168,V86.51XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.51XD ",.01)
 ;;V86.51XD 
 ;;9002226.02101,"168,V86.51XD ",.02)
 ;;V86.51XD 
 ;;9002226.02101,"168,V86.51XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.51XS ",.01)
 ;;V86.51XS 
 ;;9002226.02101,"168,V86.51XS ",.02)
 ;;V86.51XS 
 ;;9002226.02101,"168,V86.51XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.52XA ",.01)
 ;;V86.52XA 
 ;;9002226.02101,"168,V86.52XA ",.02)
 ;;V86.52XA 
 ;;9002226.02101,"168,V86.52XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.52XD ",.01)
 ;;V86.52XD 
 ;;9002226.02101,"168,V86.52XD ",.02)
 ;;V86.52XD 
 ;;9002226.02101,"168,V86.52XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.52XS ",.01)
 ;;V86.52XS 
 ;;9002226.02101,"168,V86.52XS ",.02)
 ;;V86.52XS 
 ;;9002226.02101,"168,V86.52XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.53XA ",.01)
 ;;V86.53XA 
 ;;9002226.02101,"168,V86.53XA ",.02)
 ;;V86.53XA 
 ;;9002226.02101,"168,V86.53XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.53XD ",.01)
 ;;V86.53XD 
 ;;9002226.02101,"168,V86.53XD ",.02)
 ;;V86.53XD 
 ;;9002226.02101,"168,V86.53XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.53XS ",.01)
 ;;V86.53XS 
 ;;9002226.02101,"168,V86.53XS ",.02)
 ;;V86.53XS 
 ;;9002226.02101,"168,V86.53XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.54XA ",.01)
 ;;V86.54XA 
 ;;9002226.02101,"168,V86.54XA ",.02)
 ;;V86.54XA 
 ;;9002226.02101,"168,V86.54XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.54XD ",.01)
 ;;V86.54XD 
 ;;9002226.02101,"168,V86.54XD ",.02)
 ;;V86.54XD 
 ;;9002226.02101,"168,V86.54XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.54XS ",.01)
 ;;V86.54XS 
 ;;9002226.02101,"168,V86.54XS ",.02)
 ;;V86.54XS 
 ;;9002226.02101,"168,V86.54XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.59XA ",.01)
 ;;V86.59XA 
 ;;9002226.02101,"168,V86.59XA ",.02)
 ;;V86.59XA 
 ;;9002226.02101,"168,V86.59XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.59XD ",.01)
 ;;V86.59XD 
 ;;9002226.02101,"168,V86.59XD ",.02)
 ;;V86.59XD 
 ;;9002226.02101,"168,V86.59XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.59XS ",.01)
 ;;V86.59XS 
 ;;9002226.02101,"168,V86.59XS ",.02)
 ;;V86.59XS 
 ;;9002226.02101,"168,V86.59XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.61XA ",.01)
 ;;V86.61XA 
 ;;9002226.02101,"168,V86.61XA ",.02)
 ;;V86.61XA 
 ;;9002226.02101,"168,V86.61XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.61XD ",.01)
 ;;V86.61XD 
 ;;9002226.02101,"168,V86.61XD ",.02)
 ;;V86.61XD 
 ;;9002226.02101,"168,V86.61XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.61XS ",.01)
 ;;V86.61XS 
 ;;9002226.02101,"168,V86.61XS ",.02)
 ;;V86.61XS 
 ;;9002226.02101,"168,V86.61XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.62XA ",.01)
 ;;V86.62XA 
 ;;9002226.02101,"168,V86.62XA ",.02)
 ;;V86.62XA 
 ;;9002226.02101,"168,V86.62XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.62XD ",.01)
 ;;V86.62XD 
 ;;9002226.02101,"168,V86.62XD ",.02)
 ;;V86.62XD 
 ;;9002226.02101,"168,V86.62XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.62XS ",.01)
 ;;V86.62XS 
 ;;9002226.02101,"168,V86.62XS ",.02)
 ;;V86.62XS 
 ;;9002226.02101,"168,V86.62XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.63XA ",.01)
 ;;V86.63XA 
 ;;9002226.02101,"168,V86.63XA ",.02)
 ;;V86.63XA 
 ;;9002226.02101,"168,V86.63XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.63XD ",.01)
 ;;V86.63XD 
 ;;9002226.02101,"168,V86.63XD ",.02)
 ;;V86.63XD 
 ;;9002226.02101,"168,V86.63XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.63XS ",.01)
 ;;V86.63XS 
 ;;9002226.02101,"168,V86.63XS ",.02)
 ;;V86.63XS 
 ;;9002226.02101,"168,V86.63XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.64XA ",.01)
 ;;V86.64XA 
 ;;9002226.02101,"168,V86.64XA ",.02)
 ;;V86.64XA 
 ;;9002226.02101,"168,V86.64XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.64XD ",.01)
 ;;V86.64XD 
 ;;9002226.02101,"168,V86.64XD ",.02)
 ;;V86.64XD 
 ;;9002226.02101,"168,V86.64XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.64XS ",.01)
 ;;V86.64XS 
 ;;9002226.02101,"168,V86.64XS ",.02)
 ;;V86.64XS 
 ;;9002226.02101,"168,V86.64XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.69XA ",.01)
 ;;V86.69XA 
 ;;9002226.02101,"168,V86.69XA ",.02)
 ;;V86.69XA 
 ;;9002226.02101,"168,V86.69XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.69XD ",.01)
 ;;V86.69XD 
 ;;9002226.02101,"168,V86.69XD ",.02)
 ;;V86.69XD 
 ;;9002226.02101,"168,V86.69XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.69XS ",.01)
 ;;V86.69XS 
 ;;9002226.02101,"168,V86.69XS ",.02)
 ;;V86.69XS 
 ;;9002226.02101,"168,V86.69XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.71XA ",.01)
 ;;V86.71XA 
 ;;9002226.02101,"168,V86.71XA ",.02)
 ;;V86.71XA 
 ;;9002226.02101,"168,V86.71XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.71XD ",.01)
 ;;V86.71XD 
 ;;9002226.02101,"168,V86.71XD ",.02)
 ;;V86.71XD 
 ;;9002226.02101,"168,V86.71XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.71XS ",.01)
 ;;V86.71XS 
 ;;9002226.02101,"168,V86.71XS ",.02)
 ;;V86.71XS 
 ;;9002226.02101,"168,V86.71XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.72XA ",.01)
 ;;V86.72XA 
 ;;9002226.02101,"168,V86.72XA ",.02)
 ;;V86.72XA 
 ;;9002226.02101,"168,V86.72XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.72XD ",.01)
 ;;V86.72XD 
 ;;9002226.02101,"168,V86.72XD ",.02)
 ;;V86.72XD 
 ;;9002226.02101,"168,V86.72XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.72XS ",.01)
 ;;V86.72XS 
 ;;9002226.02101,"168,V86.72XS ",.02)
 ;;V86.72XS 
 ;;9002226.02101,"168,V86.72XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.73XA ",.01)
 ;;V86.73XA 
 ;;9002226.02101,"168,V86.73XA ",.02)
 ;;V86.73XA 
 ;;9002226.02101,"168,V86.73XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.73XD ",.01)
 ;;V86.73XD 
 ;;9002226.02101,"168,V86.73XD ",.02)
 ;;V86.73XD 
 ;;9002226.02101,"168,V86.73XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.73XS ",.01)
 ;;V86.73XS 
 ;;9002226.02101,"168,V86.73XS ",.02)
 ;;V86.73XS 
 ;;9002226.02101,"168,V86.73XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.74XA ",.01)
 ;;V86.74XA 
 ;;9002226.02101,"168,V86.74XA ",.02)
 ;;V86.74XA 
 ;;9002226.02101,"168,V86.74XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.74XD ",.01)
 ;;V86.74XD 
 ;;9002226.02101,"168,V86.74XD ",.02)
 ;;V86.74XD 
 ;;9002226.02101,"168,V86.74XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.74XS ",.01)
 ;;V86.74XS 
 ;;9002226.02101,"168,V86.74XS ",.02)
 ;;V86.74XS 
 ;;9002226.02101,"168,V86.74XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.79XA ",.01)
 ;;V86.79XA 
 ;;9002226.02101,"168,V86.79XA ",.02)
 ;;V86.79XA 
 ;;9002226.02101,"168,V86.79XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.79XD ",.01)
 ;;V86.79XD 
 ;;9002226.02101,"168,V86.79XD ",.02)
 ;;V86.79XD 
 ;;9002226.02101,"168,V86.79XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.79XS ",.01)
 ;;V86.79XS 
 ;;9002226.02101,"168,V86.79XS ",.02)
 ;;V86.79XS 
 ;;9002226.02101,"168,V86.79XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.91XA ",.01)
 ;;V86.91XA 
 ;;9002226.02101,"168,V86.91XA ",.02)
 ;;V86.91XA 
 ;;9002226.02101,"168,V86.91XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.91XD ",.01)
 ;;V86.91XD 
 ;;9002226.02101,"168,V86.91XD ",.02)
 ;;V86.91XD 
 ;;9002226.02101,"168,V86.91XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.91XS ",.01)
 ;;V86.91XS 
 ;;9002226.02101,"168,V86.91XS ",.02)
 ;;V86.91XS 
 ;;9002226.02101,"168,V86.91XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.92XA ",.01)
 ;;V86.92XA 
 ;;9002226.02101,"168,V86.92XA ",.02)
 ;;V86.92XA 
 ;;9002226.02101,"168,V86.92XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.92XD ",.01)
 ;;V86.92XD 
 ;;9002226.02101,"168,V86.92XD ",.02)
 ;;V86.92XD 
 ;;9002226.02101,"168,V86.92XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.92XS ",.01)
 ;;V86.92XS 
 ;;9002226.02101,"168,V86.92XS ",.02)
 ;;V86.92XS 
 ;;9002226.02101,"168,V86.92XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.93XA ",.01)
 ;;V86.93XA 
 ;;9002226.02101,"168,V86.93XA ",.02)
 ;;V86.93XA 
 ;;9002226.02101,"168,V86.93XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.93XD ",.01)
 ;;V86.93XD 
 ;;9002226.02101,"168,V86.93XD ",.02)
 ;;V86.93XD 
 ;;9002226.02101,"168,V86.93XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.93XS ",.01)
 ;;V86.93XS 
 ;;9002226.02101,"168,V86.93XS ",.02)
 ;;V86.93XS 
 ;;9002226.02101,"168,V86.93XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.94XA ",.01)
 ;;V86.94XA 
 ;;9002226.02101,"168,V86.94XA ",.02)
 ;;V86.94XA 
 ;;9002226.02101,"168,V86.94XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.94XD ",.01)
 ;;V86.94XD 
 ;;9002226.02101,"168,V86.94XD ",.02)
 ;;V86.94XD 
 ;;9002226.02101,"168,V86.94XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.94XS ",.01)
 ;;V86.94XS 
 ;;9002226.02101,"168,V86.94XS ",.02)
 ;;V86.94XS 
 ;;9002226.02101,"168,V86.94XS ",.03)
 ;;30
 ;;9002226.02101,"168,V86.99XA ",.01)
 ;;V86.99XA 
 ;;9002226.02101,"168,V86.99XA ",.02)
 ;;V86.99XA 
 ;;9002226.02101,"168,V86.99XA ",.03)
 ;;30
 ;;9002226.02101,"168,V86.99XD ",.01)
 ;;V86.99XD 
 ;;9002226.02101,"168,V86.99XD ",.02)
 ;;V86.99XD 
 ;;9002226.02101,"168,V86.99XD ",.03)
 ;;30
 ;;9002226.02101,"168,V86.99XS ",.01)
 ;;V86.99XS 
 ;;9002226.02101,"168,V86.99XS ",.02)
 ;;V86.99XS 
 ;;9002226.02101,"168,V86.99XS ",.03)
 ;;30
 ;;9002226.02101,"168,V87.0XXA ",.01)
 ;;V87.0XXA 
 ;;9002226.02101,"168,V87.0XXA ",.02)
 ;;V87.0XXA 
 ;;9002226.02101,"168,V87.0XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V87.0XXD ",.01)
 ;;V87.0XXD 
 ;;9002226.02101,"168,V87.0XXD ",.02)
 ;;V87.0XXD 
 ;;9002226.02101,"168,V87.0XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V87.0XXS ",.01)
 ;;V87.0XXS 
 ;;9002226.02101,"168,V87.0XXS ",.02)
 ;;V87.0XXS 
 ;;9002226.02101,"168,V87.0XXS ",.03)
 ;;30
 ;;9002226.02101,"168,V87.1XXA ",.01)
 ;;V87.1XXA 
 ;;9002226.02101,"168,V87.1XXA ",.02)
 ;;V87.1XXA 
 ;;9002226.02101,"168,V87.1XXA ",.03)
 ;;30
 ;;9002226.02101,"168,V87.1XXD ",.01)
 ;;V87.1XXD 
 ;;9002226.02101,"168,V87.1XXD ",.02)
 ;;V87.1XXD 
 ;;9002226.02101,"168,V87.1XXD ",.03)
 ;;30
 ;;9002226.02101,"168,V87.1XXS ",.01)
 ;;V87.1XXS 
 ;;9002226.02101,"168,V87.1XXS ",.02)
 ;;V87.1XXS 
