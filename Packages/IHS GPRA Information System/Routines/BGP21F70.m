BGP21F70 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,67544-0240-45 ",.01)
 ;;67544-0240-45
 ;;9002226.02101,"1195,67544-0240-45 ",.02)
 ;;67544-0240-45
 ;;9002226.02101,"1195,67544-0240-60 ",.01)
 ;;67544-0240-60
 ;;9002226.02101,"1195,67544-0240-60 ",.02)
 ;;67544-0240-60
 ;;9002226.02101,"1195,67544-0240-80 ",.01)
 ;;67544-0240-80
 ;;9002226.02101,"1195,67544-0240-80 ",.02)
 ;;67544-0240-80
 ;;9002226.02101,"1195,67544-0272-30 ",.01)
 ;;67544-0272-30
 ;;9002226.02101,"1195,67544-0272-30 ",.02)
 ;;67544-0272-30
 ;;9002226.02101,"1195,67544-0272-45 ",.01)
 ;;67544-0272-45
 ;;9002226.02101,"1195,67544-0272-45 ",.02)
 ;;67544-0272-45
 ;;9002226.02101,"1195,67544-0272-53 ",.01)
 ;;67544-0272-53
 ;;9002226.02101,"1195,67544-0272-53 ",.02)
 ;;67544-0272-53
 ;;9002226.02101,"1195,67544-0272-60 ",.01)
 ;;67544-0272-60
 ;;9002226.02101,"1195,67544-0272-60 ",.02)
 ;;67544-0272-60
 ;;9002226.02101,"1195,67544-0272-70 ",.01)
 ;;67544-0272-70
 ;;9002226.02101,"1195,67544-0272-70 ",.02)
 ;;67544-0272-70
 ;;9002226.02101,"1195,67544-0272-73 ",.01)
 ;;67544-0272-73
 ;;9002226.02101,"1195,67544-0272-73 ",.02)
 ;;67544-0272-73
 ;;9002226.02101,"1195,67544-0272-80 ",.01)
 ;;67544-0272-80
 ;;9002226.02101,"1195,67544-0272-80 ",.02)
 ;;67544-0272-80
 ;;9002226.02101,"1195,67544-0272-86 ",.01)
 ;;67544-0272-86
 ;;9002226.02101,"1195,67544-0272-86 ",.02)
 ;;67544-0272-86
 ;;9002226.02101,"1195,67544-0272-92 ",.01)
 ;;67544-0272-92
 ;;9002226.02101,"1195,67544-0272-92 ",.02)
 ;;67544-0272-92
 ;;9002226.02101,"1195,67544-0272-94 ",.01)
 ;;67544-0272-94
 ;;9002226.02101,"1195,67544-0272-94 ",.02)
 ;;67544-0272-94
 ;;9002226.02101,"1195,67544-0282-30 ",.01)
 ;;67544-0282-30
 ;;9002226.02101,"1195,67544-0282-30 ",.02)
 ;;67544-0282-30
 ;;9002226.02101,"1195,67544-0282-45 ",.01)
 ;;67544-0282-45
 ;;9002226.02101,"1195,67544-0282-45 ",.02)
 ;;67544-0282-45
 ;;9002226.02101,"1195,67544-0282-82 ",.01)
 ;;67544-0282-82
 ;;9002226.02101,"1195,67544-0282-82 ",.02)
 ;;67544-0282-82
 ;;9002226.02101,"1195,67544-0282-99 ",.01)
 ;;67544-0282-99
 ;;9002226.02101,"1195,67544-0282-99 ",.02)
 ;;67544-0282-99
 ;;9002226.02101,"1195,67544-0305-30 ",.01)
 ;;67544-0305-30
 ;;9002226.02101,"1195,67544-0305-30 ",.02)
 ;;67544-0305-30
 ;;9002226.02101,"1195,67544-0305-53 ",.01)
 ;;67544-0305-53
 ;;9002226.02101,"1195,67544-0305-53 ",.02)
 ;;67544-0305-53
 ;;9002226.02101,"1195,67544-0305-60 ",.01)
 ;;67544-0305-60
 ;;9002226.02101,"1195,67544-0305-60 ",.02)
 ;;67544-0305-60
 ;;9002226.02101,"1195,67544-0326-15 ",.01)
 ;;67544-0326-15
 ;;9002226.02101,"1195,67544-0326-15 ",.02)
 ;;67544-0326-15
 ;;9002226.02101,"1195,67544-0326-30 ",.01)
 ;;67544-0326-30
 ;;9002226.02101,"1195,67544-0326-30 ",.02)
 ;;67544-0326-30
 ;;9002226.02101,"1195,67544-0326-45 ",.01)
 ;;67544-0326-45
 ;;9002226.02101,"1195,67544-0326-45 ",.02)
 ;;67544-0326-45
 ;;9002226.02101,"1195,67544-0326-60 ",.01)
 ;;67544-0326-60
 ;;9002226.02101,"1195,67544-0326-60 ",.02)
 ;;67544-0326-60
 ;;9002226.02101,"1195,67544-0326-73 ",.01)
 ;;67544-0326-73
 ;;9002226.02101,"1195,67544-0326-73 ",.02)
 ;;67544-0326-73
 ;;9002226.02101,"1195,67544-0326-80 ",.01)
 ;;67544-0326-80
 ;;9002226.02101,"1195,67544-0326-80 ",.02)
 ;;67544-0326-80
 ;;9002226.02101,"1195,67544-0332-60 ",.01)
 ;;67544-0332-60
 ;;9002226.02101,"1195,67544-0332-60 ",.02)
 ;;67544-0332-60
 ;;9002226.02101,"1195,67544-0376-30 ",.01)
 ;;67544-0376-30
 ;;9002226.02101,"1195,67544-0376-30 ",.02)
 ;;67544-0376-30
 ;;9002226.02101,"1195,67544-0376-45 ",.01)
 ;;67544-0376-45
 ;;9002226.02101,"1195,67544-0376-45 ",.02)
 ;;67544-0376-45
 ;;9002226.02101,"1195,67544-0376-60 ",.01)
 ;;67544-0376-60
 ;;9002226.02101,"1195,67544-0376-60 ",.02)
 ;;67544-0376-60
 ;;9002226.02101,"1195,67544-0376-70 ",.01)
 ;;67544-0376-70
 ;;9002226.02101,"1195,67544-0376-70 ",.02)
 ;;67544-0376-70
 ;;9002226.02101,"1195,67544-0376-73 ",.01)
 ;;67544-0376-73
 ;;9002226.02101,"1195,67544-0376-73 ",.02)
 ;;67544-0376-73
 ;;9002226.02101,"1195,67544-0376-80 ",.01)
 ;;67544-0376-80
 ;;9002226.02101,"1195,67544-0376-80 ",.02)
 ;;67544-0376-80
 ;;9002226.02101,"1195,67544-0387-30 ",.01)
 ;;67544-0387-30
 ;;9002226.02101,"1195,67544-0387-30 ",.02)
 ;;67544-0387-30
 ;;9002226.02101,"1195,67544-0387-60 ",.01)
 ;;67544-0387-60
 ;;9002226.02101,"1195,67544-0387-60 ",.02)
 ;;67544-0387-60
 ;;9002226.02101,"1195,67544-0387-80 ",.01)
 ;;67544-0387-80
 ;;9002226.02101,"1195,67544-0387-80 ",.02)
 ;;67544-0387-80
 ;;9002226.02101,"1195,67544-0491-45 ",.01)
 ;;67544-0491-45
 ;;9002226.02101,"1195,67544-0491-45 ",.02)
 ;;67544-0491-45
 ;;9002226.02101,"1195,67544-0491-53 ",.01)
 ;;67544-0491-53
 ;;9002226.02101,"1195,67544-0491-53 ",.02)
 ;;67544-0491-53
 ;;9002226.02101,"1195,67544-0491-60 ",.01)
 ;;67544-0491-60
 ;;9002226.02101,"1195,67544-0491-60 ",.02)
 ;;67544-0491-60
 ;;9002226.02101,"1195,67544-0491-80 ",.01)
 ;;67544-0491-80
 ;;9002226.02101,"1195,67544-0491-80 ",.02)
 ;;67544-0491-80
 ;;9002226.02101,"1195,67544-0491-82 ",.01)
 ;;67544-0491-82
 ;;9002226.02101,"1195,67544-0491-82 ",.02)
 ;;67544-0491-82
 ;;9002226.02101,"1195,67544-0491-99 ",.01)
 ;;67544-0491-99
 ;;9002226.02101,"1195,67544-0491-99 ",.02)
 ;;67544-0491-99
 ;;9002226.02101,"1195,67544-0565-60 ",.01)
 ;;67544-0565-60
