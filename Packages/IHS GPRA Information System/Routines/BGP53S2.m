BGP53S2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"197,51314-3 ",.02)
 ;;51314-3
 ;;9002226.02101,"197,51315-0 ",.01)
 ;;51315-0
 ;;9002226.02101,"197,51315-0 ",.02)
 ;;51315-0
 ;;9002226.02101,"197,51316-8 ",.01)
 ;;51316-8
 ;;9002226.02101,"197,51316-8 ",.02)
 ;;51316-8
 ;;9002226.02101,"197,51755-7 ",.01)
 ;;51755-7
 ;;9002226.02101,"197,51755-7 ",.02)
 ;;51755-7
 ;;9002226.02101,"197,53939-5 ",.01)
 ;;53939-5
 ;;9002226.02101,"197,53939-5 ",.02)
 ;;53939-5
 ;;9002226.02101,"197,53940-3 ",.01)
 ;;53940-3
 ;;9002226.02101,"197,53940-3 ",.02)
 ;;53940-3
 ;;9002226.02101,"197,54218-3 ",.01)
 ;;54218-3
 ;;9002226.02101,"197,54218-3 ",.02)
 ;;54218-3
 ;;9002226.02101,"197,5472-6 ",.01)
 ;;5472-6
 ;;9002226.02101,"197,5472-6 ",.02)
 ;;5472-6
 ;;9002226.02101,"197,5473-4 ",.01)
 ;;5473-4
 ;;9002226.02101,"197,5473-4 ",.02)
 ;;5473-4
 ;;9002226.02101,"197,5474-2 ",.01)
 ;;5474-2
 ;;9002226.02101,"197,5474-2 ",.02)
 ;;5474-2
 ;;9002226.02101,"197,57401-2 ",.01)
 ;;57401-2
 ;;9002226.02101,"197,57401-2 ",.02)
 ;;57401-2
 ;;9002226.02101,"197,58920-0 ",.01)
 ;;58920-0
 ;;9002226.02101,"197,58920-0 ",.02)
 ;;58920-0
 ;;9002226.02101,"197,60457-9 ",.01)
 ;;60457-9
 ;;9002226.02101,"197,60457-9 ",.02)
 ;;60457-9
 ;;9002226.02101,"197,63450-1 ",.01)
 ;;63450-1
 ;;9002226.02101,"197,63450-1 ",.02)
 ;;63450-1
 ;;9002226.02101,"197,65758-5 ",.01)
 ;;65758-5
 ;;9002226.02101,"197,65758-5 ",.02)
 ;;65758-5
 ;;9002226.02101,"197,74839-2 ",.01)
 ;;74839-2
 ;;9002226.02101,"197,74839-2 ",.02)
 ;;74839-2
 ;;9002226.02101,"197,8123-2 ",.01)
 ;;8123-2
 ;;9002226.02101,"197,8123-2 ",.02)
 ;;8123-2
 ;;9002226.02101,"197,8127-3 ",.01)
 ;;8127-3
 ;;9002226.02101,"197,8127-3 ",.02)
 ;;8127-3
 ;;9002226.02101,"197,8128-1 ",.01)
 ;;8128-1
 ;;9002226.02101,"197,8128-1 ",.02)
 ;;8128-1
 ;;9002226.02101,"197,8129-9 ",.01)
 ;;8129-9
 ;;9002226.02101,"197,8129-9 ",.02)
 ;;8129-9
 ;;9002226.04101,"197,1",.01)
 ;;BGP
