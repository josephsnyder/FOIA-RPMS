ATXXA98 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S68.628A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.629A ",.01)
 ;;S68.629A
 ;;9002226.02101,"873,S68.629A ",.02)
 ;;S68.629A
 ;;9002226.02101,"873,S68.629A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.711A ",.01)
 ;;S68.711A
 ;;9002226.02101,"873,S68.711A ",.02)
 ;;S68.711A
 ;;9002226.02101,"873,S68.711A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.712A ",.01)
 ;;S68.712A
 ;;9002226.02101,"873,S68.712A ",.02)
 ;;S68.712A
 ;;9002226.02101,"873,S68.712A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.719A ",.01)
 ;;S68.719A
 ;;9002226.02101,"873,S68.719A ",.02)
 ;;S68.719A
 ;;9002226.02101,"873,S68.719A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.721A ",.01)
 ;;S68.721A
 ;;9002226.02101,"873,S68.721A ",.02)
 ;;S68.721A
 ;;9002226.02101,"873,S68.721A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.722A ",.01)
 ;;S68.722A
 ;;9002226.02101,"873,S68.722A ",.02)
 ;;S68.722A
 ;;9002226.02101,"873,S68.722A ",.03)
 ;;30
 ;;9002226.02101,"873,S68.729A ",.01)
 ;;S68.729A
 ;;9002226.02101,"873,S68.729A ",.02)
 ;;S68.729A
 ;;9002226.02101,"873,S68.729A ",.03)
 ;;30
 ;;9002226.02101,"873,S69.80XA ",.01)
 ;;S69.80XA
 ;;9002226.02101,"873,S69.80XA ",.02)
 ;;S69.80XA
 ;;9002226.02101,"873,S69.80XA ",.03)
 ;;30
 ;;9002226.02101,"873,S69.81XA ",.01)
 ;;S69.81XA
 ;;9002226.02101,"873,S69.81XA ",.02)
 ;;S69.81XA
 ;;9002226.02101,"873,S69.81XA ",.03)
 ;;30
 ;;9002226.02101,"873,S69.82XA ",.01)
 ;;S69.82XA
 ;;9002226.02101,"873,S69.82XA ",.02)
 ;;S69.82XA
 ;;9002226.02101,"873,S69.82XA ",.03)
 ;;30
 ;;9002226.02101,"873,S69.90XA ",.01)
 ;;S69.90XA
 ;;9002226.02101,"873,S69.90XA ",.02)
 ;;S69.90XA
 ;;9002226.02101,"873,S69.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S69.91XA ",.01)
 ;;S69.91XA
 ;;9002226.02101,"873,S69.91XA ",.02)
 ;;S69.91XA
 ;;9002226.02101,"873,S69.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S69.92XA ",.01)
 ;;S69.92XA
 ;;9002226.02101,"873,S69.92XA ",.02)
 ;;S69.92XA
 ;;9002226.02101,"873,S69.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.00XA ",.01)
 ;;S70.00XA
 ;;9002226.02101,"873,S70.00XA ",.02)
 ;;S70.00XA
 ;;9002226.02101,"873,S70.00XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.01XA ",.01)
 ;;S70.01XA
 ;;9002226.02101,"873,S70.01XA ",.02)
 ;;S70.01XA
 ;;9002226.02101,"873,S70.01XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.02XA ",.01)
 ;;S70.02XA
 ;;9002226.02101,"873,S70.02XA ",.02)
 ;;S70.02XA
 ;;9002226.02101,"873,S70.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.10XA ",.01)
 ;;S70.10XA
 ;;9002226.02101,"873,S70.10XA ",.02)
 ;;S70.10XA
 ;;9002226.02101,"873,S70.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.11XA ",.01)
 ;;S70.11XA
 ;;9002226.02101,"873,S70.11XA ",.02)
 ;;S70.11XA
 ;;9002226.02101,"873,S70.11XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.12XA ",.01)
 ;;S70.12XA
 ;;9002226.02101,"873,S70.12XA ",.02)
 ;;S70.12XA
 ;;9002226.02101,"873,S70.12XA ",.03)
 ;;30
 ;;9002226.02101,"873,S70.211A ",.01)
 ;;S70.211A
 ;;9002226.02101,"873,S70.211A ",.02)
 ;;S70.211A
 ;;9002226.02101,"873,S70.211A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.212A ",.01)
 ;;S70.212A
 ;;9002226.02101,"873,S70.212A ",.02)
 ;;S70.212A
 ;;9002226.02101,"873,S70.212A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.219A ",.01)
 ;;S70.219A
 ;;9002226.02101,"873,S70.219A ",.02)
 ;;S70.219A
 ;;9002226.02101,"873,S70.219A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.241A ",.01)
 ;;S70.241A
 ;;9002226.02101,"873,S70.241A ",.02)
 ;;S70.241A
 ;;9002226.02101,"873,S70.241A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.242A ",.01)
 ;;S70.242A
 ;;9002226.02101,"873,S70.242A ",.02)
 ;;S70.242A
 ;;9002226.02101,"873,S70.242A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.249A ",.01)
 ;;S70.249A
 ;;9002226.02101,"873,S70.249A ",.02)
 ;;S70.249A
 ;;9002226.02101,"873,S70.249A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.251A ",.01)
 ;;S70.251A
 ;;9002226.02101,"873,S70.251A ",.02)
 ;;S70.251A
 ;;9002226.02101,"873,S70.251A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.252A ",.01)
 ;;S70.252A
 ;;9002226.02101,"873,S70.252A ",.02)
 ;;S70.252A
 ;;9002226.02101,"873,S70.252A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.259A ",.01)
 ;;S70.259A
 ;;9002226.02101,"873,S70.259A ",.02)
 ;;S70.259A
 ;;9002226.02101,"873,S70.259A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.271A ",.01)
 ;;S70.271A
 ;;9002226.02101,"873,S70.271A ",.02)
 ;;S70.271A
 ;;9002226.02101,"873,S70.271A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.272A ",.01)
 ;;S70.272A
 ;;9002226.02101,"873,S70.272A ",.02)
 ;;S70.272A
 ;;9002226.02101,"873,S70.272A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.279A ",.01)
 ;;S70.279A
 ;;9002226.02101,"873,S70.279A ",.02)
 ;;S70.279A
 ;;9002226.02101,"873,S70.279A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.311A ",.01)
 ;;S70.311A
 ;;9002226.02101,"873,S70.311A ",.02)
 ;;S70.311A
 ;;9002226.02101,"873,S70.311A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.312A ",.01)
 ;;S70.312A
 ;;9002226.02101,"873,S70.312A ",.02)
 ;;S70.312A
 ;;9002226.02101,"873,S70.312A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.319A ",.01)
 ;;S70.319A
 ;;9002226.02101,"873,S70.319A ",.02)
 ;;S70.319A
 ;;9002226.02101,"873,S70.319A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.341A ",.01)
 ;;S70.341A
 ;;9002226.02101,"873,S70.341A ",.02)
 ;;S70.341A
 ;;9002226.02101,"873,S70.341A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.342A ",.01)
 ;;S70.342A
 ;;9002226.02101,"873,S70.342A ",.02)
 ;;S70.342A
 ;;9002226.02101,"873,S70.342A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.349A ",.01)
 ;;S70.349A
 ;;9002226.02101,"873,S70.349A ",.02)
 ;;S70.349A
 ;;9002226.02101,"873,S70.349A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.351A ",.01)
 ;;S70.351A
 ;;9002226.02101,"873,S70.351A ",.02)
 ;;S70.351A
 ;;9002226.02101,"873,S70.351A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.352A ",.01)
 ;;S70.352A
 ;;9002226.02101,"873,S70.352A ",.02)
 ;;S70.352A
 ;;9002226.02101,"873,S70.352A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.359A ",.01)
 ;;S70.359A
 ;;9002226.02101,"873,S70.359A ",.02)
 ;;S70.359A
 ;;9002226.02101,"873,S70.359A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.371A ",.01)
 ;;S70.371A
 ;;9002226.02101,"873,S70.371A ",.02)
 ;;S70.371A
 ;;9002226.02101,"873,S70.371A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.372A ",.01)
 ;;S70.372A
 ;;9002226.02101,"873,S70.372A ",.02)
 ;;S70.372A
 ;;9002226.02101,"873,S70.372A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.379A ",.01)
 ;;S70.379A
 ;;9002226.02101,"873,S70.379A ",.02)
 ;;S70.379A
 ;;9002226.02101,"873,S70.379A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.911A ",.01)
 ;;S70.911A
 ;;9002226.02101,"873,S70.911A ",.02)
 ;;S70.911A
 ;;9002226.02101,"873,S70.911A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.912A ",.01)
 ;;S70.912A
 ;;9002226.02101,"873,S70.912A ",.02)
 ;;S70.912A
 ;;9002226.02101,"873,S70.912A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.919A ",.01)
 ;;S70.919A
 ;;9002226.02101,"873,S70.919A ",.02)
 ;;S70.919A
 ;;9002226.02101,"873,S70.919A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.921A ",.01)
 ;;S70.921A
 ;;9002226.02101,"873,S70.921A ",.02)
 ;;S70.921A
 ;;9002226.02101,"873,S70.921A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.922A ",.01)
 ;;S70.922A
 ;;9002226.02101,"873,S70.922A ",.02)
 ;;S70.922A
 ;;9002226.02101,"873,S70.922A ",.03)
 ;;30
 ;;9002226.02101,"873,S70.929A ",.01)
 ;;S70.929A
 ;;9002226.02101,"873,S70.929A ",.02)
 ;;S70.929A
 ;;9002226.02101,"873,S70.929A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.001A ",.01)
 ;;S71.001A
 ;;9002226.02101,"873,S71.001A ",.02)
 ;;S71.001A
 ;;9002226.02101,"873,S71.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.002A ",.01)
 ;;S71.002A
 ;;9002226.02101,"873,S71.002A ",.02)
 ;;S71.002A
 ;;9002226.02101,"873,S71.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.009A ",.01)
 ;;S71.009A
 ;;9002226.02101,"873,S71.009A ",.02)
 ;;S71.009A
 ;;9002226.02101,"873,S71.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.011A ",.01)
 ;;S71.011A
 ;;9002226.02101,"873,S71.011A ",.02)
 ;;S71.011A
 ;;9002226.02101,"873,S71.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.012A ",.01)
 ;;S71.012A
 ;;9002226.02101,"873,S71.012A ",.02)
 ;;S71.012A
 ;;9002226.02101,"873,S71.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.019A ",.01)
 ;;S71.019A
 ;;9002226.02101,"873,S71.019A ",.02)
 ;;S71.019A
 ;;9002226.02101,"873,S71.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.021A ",.01)
 ;;S71.021A
 ;;9002226.02101,"873,S71.021A ",.02)
 ;;S71.021A
 ;;9002226.02101,"873,S71.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.022A ",.01)
 ;;S71.022A
 ;;9002226.02101,"873,S71.022A ",.02)
 ;;S71.022A
 ;;9002226.02101,"873,S71.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.029A ",.01)
 ;;S71.029A
 ;;9002226.02101,"873,S71.029A ",.02)
 ;;S71.029A
 ;;9002226.02101,"873,S71.029A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.031A ",.01)
 ;;S71.031A
 ;;9002226.02101,"873,S71.031A ",.02)
 ;;S71.031A
 ;;9002226.02101,"873,S71.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.032A ",.01)
 ;;S71.032A
 ;;9002226.02101,"873,S71.032A ",.02)
 ;;S71.032A
 ;;9002226.02101,"873,S71.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.039A ",.01)
 ;;S71.039A
 ;;9002226.02101,"873,S71.039A ",.02)
 ;;S71.039A
 ;;9002226.02101,"873,S71.039A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.041A ",.01)
 ;;S71.041A
 ;;9002226.02101,"873,S71.041A ",.02)
 ;;S71.041A
 ;;9002226.02101,"873,S71.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.042A ",.01)
 ;;S71.042A
 ;;9002226.02101,"873,S71.042A ",.02)
 ;;S71.042A
 ;;9002226.02101,"873,S71.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.049A ",.01)
 ;;S71.049A
 ;;9002226.02101,"873,S71.049A ",.02)
 ;;S71.049A
 ;;9002226.02101,"873,S71.049A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.051A ",.01)
 ;;S71.051A
 ;;9002226.02101,"873,S71.051A ",.02)
 ;;S71.051A
 ;;9002226.02101,"873,S71.051A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.052A ",.01)
 ;;S71.052A
 ;;9002226.02101,"873,S71.052A ",.02)
 ;;S71.052A
 ;;9002226.02101,"873,S71.052A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.059A ",.01)
 ;;S71.059A
 ;;9002226.02101,"873,S71.059A ",.02)
 ;;S71.059A
 ;;9002226.02101,"873,S71.059A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.101A ",.01)
 ;;S71.101A
 ;;9002226.02101,"873,S71.101A ",.02)
 ;;S71.101A
 ;;9002226.02101,"873,S71.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.102A ",.01)
 ;;S71.102A
 ;;9002226.02101,"873,S71.102A ",.02)
 ;;S71.102A
 ;;9002226.02101,"873,S71.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.109A ",.01)
 ;;S71.109A
 ;;9002226.02101,"873,S71.109A ",.02)
 ;;S71.109A
 ;;9002226.02101,"873,S71.109A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.111A ",.01)
 ;;S71.111A
 ;;9002226.02101,"873,S71.111A ",.02)
 ;;S71.111A
 ;;9002226.02101,"873,S71.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.112A ",.01)
 ;;S71.112A
 ;;9002226.02101,"873,S71.112A ",.02)
 ;;S71.112A
 ;;9002226.02101,"873,S71.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.119A ",.01)
 ;;S71.119A
 ;;9002226.02101,"873,S71.119A ",.02)
 ;;S71.119A
 ;;9002226.02101,"873,S71.119A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.121A ",.01)
 ;;S71.121A
 ;;9002226.02101,"873,S71.121A ",.02)
 ;;S71.121A
 ;;9002226.02101,"873,S71.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.122A ",.01)
 ;;S71.122A
 ;;9002226.02101,"873,S71.122A ",.02)
 ;;S71.122A
 ;;9002226.02101,"873,S71.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.129A ",.01)
 ;;S71.129A
 ;;9002226.02101,"873,S71.129A ",.02)
 ;;S71.129A
 ;;9002226.02101,"873,S71.129A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.131A ",.01)
 ;;S71.131A
 ;;9002226.02101,"873,S71.131A ",.02)
 ;;S71.131A
 ;;9002226.02101,"873,S71.131A ",.03)
 ;;30
 ;;9002226.02101,"873,S71.132A ",.01)
 ;;S71.132A
 ;;9002226.02101,"873,S71.132A ",.02)
 ;;S71.132A
 ;;9002226.02101,"873,S71.132A ",.03)
 ;;30
