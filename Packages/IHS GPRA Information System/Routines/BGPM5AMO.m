BGPM5AMO ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 22, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"843,588 ",.01)
 ;;588
 ;;9002226.02101,"843,588 ",.02)
 ;;588
 ;;9002226.02101,"843,588.0 ",.01)
 ;;588.0
 ;;9002226.02101,"843,588.0 ",.02)
 ;;588.0
 ;;9002226.02101,"843,588.1 ",.01)
 ;;588.1
 ;;9002226.02101,"843,588.1 ",.02)
 ;;588.1
 ;;9002226.02101,"843,588.8 ",.01)
 ;;588.8
 ;;9002226.02101,"843,588.8 ",.02)
 ;;588.8
 ;;9002226.02101,"843,588.81 ",.01)
 ;;588.81
 ;;9002226.02101,"843,588.81 ",.02)
 ;;588.81
 ;;9002226.02101,"843,588.89 ",.01)
 ;;588.89
 ;;9002226.02101,"843,588.89 ",.02)
 ;;588.89
 ;;9002226.02101,"843,588.9 ",.01)
 ;;588.9
 ;;9002226.02101,"843,588.9 ",.02)
 ;;588.9
 ;;9002226.02101,"843,753.0 ",.01)
 ;;753.0
 ;;9002226.02101,"843,753.0 ",.02)
 ;;753.0
 ;;9002226.02101,"843,753.1 ",.01)
 ;;753.1
 ;;9002226.02101,"843,753.1 ",.02)
 ;;753.1
 ;;9002226.02101,"843,753.10 ",.01)
 ;;753.10
 ;;9002226.02101,"843,753.10 ",.02)
 ;;753.10
 ;;9002226.02101,"843,753.11 ",.01)
 ;;753.11
 ;;9002226.02101,"843,753.11 ",.02)
 ;;753.11
 ;;9002226.02101,"843,753.12 ",.01)
 ;;753.12
 ;;9002226.02101,"843,753.12 ",.02)
 ;;753.12
 ;;9002226.02101,"843,753.13 ",.01)
 ;;753.13
 ;;9002226.02101,"843,753.13 ",.02)
 ;;753.13
 ;;9002226.02101,"843,753.14 ",.01)
 ;;753.14
 ;;9002226.02101,"843,753.14 ",.02)
 ;;753.14
 ;;9002226.02101,"843,753.15 ",.01)
 ;;753.15
 ;;9002226.02101,"843,753.15 ",.02)
 ;;753.15
 ;;9002226.02101,"843,753.16 ",.01)
 ;;753.16
 ;;9002226.02101,"843,753.16 ",.02)
 ;;753.16
 ;;9002226.02101,"843,753.17 ",.01)
 ;;753.17
 ;;9002226.02101,"843,753.17 ",.02)
 ;;753.17
 ;;9002226.02101,"843,753.19 ",.01)
 ;;753.19
 ;;9002226.02101,"843,753.19 ",.02)
 ;;753.19
 ;;9002226.02101,"843,791.0 ",.01)
 ;;791.0
 ;;9002226.02101,"843,791.0 ",.02)
 ;;791.0
 ;;9002226.02101,"843,V42.0 ",.01)
 ;;V42.0
 ;;9002226.02101,"843,V42.0 ",.02)
 ;;V42.0
 ;;9002226.02101,"843,V45.1 ",.01)
 ;;V45.1
 ;;9002226.02101,"843,V45.1 ",.02)
 ;;V45.1
 ;;9002226.02101,"843,V45.11 ",.01)
 ;;V45.11
 ;;9002226.02101,"843,V45.11 ",.02)
 ;;V45.11
 ;;9002226.02101,"843,V45.12 ",.01)
 ;;V45.12
 ;;9002226.02101,"843,V45.12 ",.02)
 ;;V45.12
 ;;9002226.02101,"843,V56 ",.01)
 ;;V56
 ;;9002226.02101,"843,V56 ",.02)
 ;;V56
 ;;9002226.02101,"843,V56.0 ",.01)
 ;;V56.0
 ;;9002226.02101,"843,V56.0 ",.02)
 ;;V56.0
 ;;9002226.02101,"843,V56.1 ",.01)
 ;;V56.1
 ;;9002226.02101,"843,V56.1 ",.02)
 ;;V56.1
 ;;9002226.02101,"843,V56.2 ",.01)
 ;;V56.2
 ;;9002226.02101,"843,V56.2 ",.02)
 ;;V56.2
 ;;9002226.02101,"843,V56.3 ",.01)
 ;;V56.3
 ;;9002226.02101,"843,V56.3 ",.02)
 ;;V56.3
 ;;9002226.02101,"843,V56.31 ",.01)
 ;;V56.31
 ;;9002226.02101,"843,V56.31 ",.02)
 ;;V56.31
 ;;9002226.02101,"843,V56.32 ",.01)
 ;;V56.32
 ;;9002226.02101,"843,V56.32 ",.02)
 ;;V56.32
 ;;9002226.02101,"843,V56.8 ",.01)
 ;;V56.8
 ;;9002226.02101,"843,V56.8 ",.02)
 ;;V56.8
