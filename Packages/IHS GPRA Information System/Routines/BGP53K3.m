BGP53K3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"745,65162-0335-10 ",.01)
 ;;65162-0335-10
 ;;9002226.02101,"745,65162-0335-10 ",.02)
 ;;65162-0335-10
 ;;9002226.02101,"745,67781-0251-01 ",.01)
 ;;67781-0251-01
 ;;9002226.02101,"745,67781-0251-01 ",.02)
 ;;67781-0251-01
 ;;9002226.02101,"745,67781-0251-05 ",.01)
 ;;67781-0251-05
 ;;9002226.02101,"745,67781-0251-05 ",.02)
 ;;67781-0251-05
 ;;9002226.02101,"745,67781-0252-01 ",.01)
 ;;67781-0252-01
 ;;9002226.02101,"745,67781-0252-01 ",.02)
 ;;67781-0252-01
 ;;9002226.02101,"745,68462-0356-01 ",.01)
 ;;68462-0356-01
 ;;9002226.02101,"745,68462-0356-01 ",.02)
 ;;68462-0356-01
 ;;9002226.02101,"745,68462-0380-01 ",.01)
 ;;68462-0380-01
 ;;9002226.02101,"745,68462-0380-01 ",.02)
 ;;68462-0380-01
