BGP51P27 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,67544-0043-80 ",.02)
 ;;67544-0043-80
 ;;9002226.02101,"1195,67544-0076-30 ",.01)
 ;;67544-0076-30
 ;;9002226.02101,"1195,67544-0076-30 ",.02)
 ;;67544-0076-30
 ;;9002226.02101,"1195,67544-0076-45 ",.01)
 ;;67544-0076-45
 ;;9002226.02101,"1195,67544-0076-45 ",.02)
 ;;67544-0076-45
 ;;9002226.02101,"1195,67544-0076-53 ",.01)
 ;;67544-0076-53
 ;;9002226.02101,"1195,67544-0076-53 ",.02)
 ;;67544-0076-53
 ;;9002226.02101,"1195,67544-0076-60 ",.01)
 ;;67544-0076-60
 ;;9002226.02101,"1195,67544-0076-60 ",.02)
 ;;67544-0076-60
 ;;9002226.02101,"1195,67544-0076-70 ",.01)
 ;;67544-0076-70
 ;;9002226.02101,"1195,67544-0076-70 ",.02)
 ;;67544-0076-70
 ;;9002226.02101,"1195,67544-0076-73 ",.01)
 ;;67544-0076-73
 ;;9002226.02101,"1195,67544-0076-73 ",.02)
 ;;67544-0076-73
 ;;9002226.02101,"1195,67544-0076-80 ",.01)
 ;;67544-0076-80
 ;;9002226.02101,"1195,67544-0076-80 ",.02)
 ;;67544-0076-80
 ;;9002226.02101,"1195,67544-0076-86 ",.01)
 ;;67544-0076-86
 ;;9002226.02101,"1195,67544-0076-86 ",.02)
 ;;67544-0076-86
 ;;9002226.02101,"1195,67544-0076-92 ",.01)
 ;;67544-0076-92
 ;;9002226.02101,"1195,67544-0076-92 ",.02)
 ;;67544-0076-92
 ;;9002226.02101,"1195,67544-0076-94 ",.01)
 ;;67544-0076-94
 ;;9002226.02101,"1195,67544-0076-94 ",.02)
 ;;67544-0076-94
 ;;9002226.02101,"1195,67544-0077-53 ",.01)
 ;;67544-0077-53
 ;;9002226.02101,"1195,67544-0077-53 ",.02)
 ;;67544-0077-53
 ;;9002226.02101,"1195,67544-0077-60 ",.01)
 ;;67544-0077-60
 ;;9002226.02101,"1195,67544-0077-60 ",.02)
 ;;67544-0077-60
 ;;9002226.02101,"1195,67544-0077-70 ",.01)
 ;;67544-0077-70
 ;;9002226.02101,"1195,67544-0077-70 ",.02)
 ;;67544-0077-70
 ;;9002226.02101,"1195,67544-0077-80 ",.01)
 ;;67544-0077-80
 ;;9002226.02101,"1195,67544-0077-80 ",.02)
 ;;67544-0077-80
 ;;9002226.02101,"1195,67544-0087-30 ",.01)
 ;;67544-0087-30
 ;;9002226.02101,"1195,67544-0087-30 ",.02)
 ;;67544-0087-30
 ;;9002226.02101,"1195,67544-0087-45 ",.01)
 ;;67544-0087-45
 ;;9002226.02101,"1195,67544-0087-45 ",.02)
 ;;67544-0087-45
 ;;9002226.02101,"1195,67544-0087-53 ",.01)
 ;;67544-0087-53
 ;;9002226.02101,"1195,67544-0087-53 ",.02)
 ;;67544-0087-53
 ;;9002226.02101,"1195,67544-0087-60 ",.01)
 ;;67544-0087-60
 ;;9002226.02101,"1195,67544-0087-60 ",.02)
 ;;67544-0087-60
 ;;9002226.02101,"1195,67544-0087-70 ",.01)
 ;;67544-0087-70
 ;;9002226.02101,"1195,67544-0087-70 ",.02)
 ;;67544-0087-70
 ;;9002226.02101,"1195,67544-0087-73 ",.01)
 ;;67544-0087-73
 ;;9002226.02101,"1195,67544-0087-73 ",.02)
 ;;67544-0087-73
 ;;9002226.02101,"1195,67544-0087-80 ",.01)
 ;;67544-0087-80
 ;;9002226.02101,"1195,67544-0087-80 ",.02)
 ;;67544-0087-80
 ;;9002226.02101,"1195,67544-0087-92 ",.01)
 ;;67544-0087-92
 ;;9002226.02101,"1195,67544-0087-92 ",.02)
 ;;67544-0087-92
 ;;9002226.02101,"1195,67544-0122-30 ",.01)
 ;;67544-0122-30
 ;;9002226.02101,"1195,67544-0122-30 ",.02)
 ;;67544-0122-30
 ;;9002226.02101,"1195,67544-0122-45 ",.01)
 ;;67544-0122-45
 ;;9002226.02101,"1195,67544-0122-45 ",.02)
 ;;67544-0122-45
 ;;9002226.02101,"1195,67544-0122-53 ",.01)
 ;;67544-0122-53
 ;;9002226.02101,"1195,67544-0122-53 ",.02)
 ;;67544-0122-53
 ;;9002226.02101,"1195,67544-0122-60 ",.01)
 ;;67544-0122-60
 ;;9002226.02101,"1195,67544-0122-60 ",.02)
 ;;67544-0122-60
 ;;9002226.02101,"1195,67544-0122-70 ",.01)
 ;;67544-0122-70
 ;;9002226.02101,"1195,67544-0122-70 ",.02)
 ;;67544-0122-70
 ;;9002226.02101,"1195,67544-0122-73 ",.01)
 ;;67544-0122-73
 ;;9002226.02101,"1195,67544-0122-73 ",.02)
 ;;67544-0122-73
 ;;9002226.02101,"1195,67544-0122-80 ",.01)
 ;;67544-0122-80
 ;;9002226.02101,"1195,67544-0122-80 ",.02)
 ;;67544-0122-80
 ;;9002226.02101,"1195,67544-0122-86 ",.01)
 ;;67544-0122-86
 ;;9002226.02101,"1195,67544-0122-86 ",.02)
 ;;67544-0122-86
 ;;9002226.02101,"1195,67544-0122-92 ",.01)
 ;;67544-0122-92
 ;;9002226.02101,"1195,67544-0122-92 ",.02)
 ;;67544-0122-92
 ;;9002226.02101,"1195,67544-0130-30 ",.01)
 ;;67544-0130-30
 ;;9002226.02101,"1195,67544-0130-30 ",.02)
 ;;67544-0130-30
 ;;9002226.02101,"1195,67544-0130-45 ",.01)
 ;;67544-0130-45
 ;;9002226.02101,"1195,67544-0130-45 ",.02)
 ;;67544-0130-45
 ;;9002226.02101,"1195,67544-0130-53 ",.01)
 ;;67544-0130-53
 ;;9002226.02101,"1195,67544-0130-53 ",.02)
 ;;67544-0130-53
 ;;9002226.02101,"1195,67544-0130-60 ",.01)
 ;;67544-0130-60
 ;;9002226.02101,"1195,67544-0130-60 ",.02)
 ;;67544-0130-60
 ;;9002226.02101,"1195,67544-0130-70 ",.01)
 ;;67544-0130-70
 ;;9002226.02101,"1195,67544-0130-70 ",.02)
 ;;67544-0130-70
 ;;9002226.02101,"1195,67544-0130-80 ",.01)
 ;;67544-0130-80
 ;;9002226.02101,"1195,67544-0130-80 ",.02)
 ;;67544-0130-80
 ;;9002226.02101,"1195,67544-0143-30 ",.01)
 ;;67544-0143-30
 ;;9002226.02101,"1195,67544-0143-30 ",.02)
 ;;67544-0143-30
 ;;9002226.02101,"1195,67544-0143-53 ",.01)
 ;;67544-0143-53
 ;;9002226.02101,"1195,67544-0143-53 ",.02)
 ;;67544-0143-53
 ;;9002226.02101,"1195,67544-0143-60 ",.01)
 ;;67544-0143-60
 ;;9002226.02101,"1195,67544-0143-60 ",.02)
 ;;67544-0143-60
 ;;9002226.02101,"1195,67544-0143-70 ",.01)
 ;;67544-0143-70
 ;;9002226.02101,"1195,67544-0143-70 ",.02)
 ;;67544-0143-70
 ;;9002226.02101,"1195,67544-0143-80 ",.01)
 ;;67544-0143-80
 ;;9002226.02101,"1195,67544-0143-80 ",.02)
 ;;67544-0143-80
 ;;9002226.02101,"1195,67544-0161-30 ",.01)
 ;;67544-0161-30
 ;;9002226.02101,"1195,67544-0161-30 ",.02)
 ;;67544-0161-30
 ;;9002226.02101,"1195,67544-0161-45 ",.01)
 ;;67544-0161-45
 ;;9002226.02101,"1195,67544-0161-45 ",.02)
 ;;67544-0161-45
 ;;9002226.02101,"1195,67544-0161-60 ",.01)
 ;;67544-0161-60
 ;;9002226.02101,"1195,67544-0161-60 ",.02)
 ;;67544-0161-60
 ;;9002226.02101,"1195,67544-0161-80 ",.01)
 ;;67544-0161-80
 ;;9002226.02101,"1195,67544-0161-80 ",.02)
 ;;67544-0161-80
 ;;9002226.02101,"1195,67544-0161-92 ",.01)
 ;;67544-0161-92
 ;;9002226.02101,"1195,67544-0161-92 ",.02)
 ;;67544-0161-92
 ;;9002226.02101,"1195,67544-0208-30 ",.01)
 ;;67544-0208-30
 ;;9002226.02101,"1195,67544-0208-30 ",.02)
 ;;67544-0208-30
 ;;9002226.02101,"1195,67544-0208-53 ",.01)
 ;;67544-0208-53
 ;;9002226.02101,"1195,67544-0208-53 ",.02)
 ;;67544-0208-53
 ;;9002226.02101,"1195,67544-0208-60 ",.01)
 ;;67544-0208-60
 ;;9002226.02101,"1195,67544-0208-60 ",.02)
 ;;67544-0208-60
 ;;9002226.02101,"1195,67544-0208-80 ",.01)
 ;;67544-0208-80
 ;;9002226.02101,"1195,67544-0208-80 ",.02)
 ;;67544-0208-80
 ;;9002226.02101,"1195,67544-0208-87 ",.01)
 ;;67544-0208-87
 ;;9002226.02101,"1195,67544-0208-87 ",.02)
 ;;67544-0208-87
 ;;9002226.02101,"1195,67544-0240-30 ",.01)
 ;;67544-0240-30
 ;;9002226.02101,"1195,67544-0240-30 ",.02)
 ;;67544-0240-30
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
 ;;9002226.02101,"1195,67544-0565-60 ",.02)
 ;;67544-0565-60
 ;;9002226.02101,"1195,67544-0567-30 ",.01)
 ;;67544-0567-30
 ;;9002226.02101,"1195,67544-0567-30 ",.02)
 ;;67544-0567-30
 ;;9002226.02101,"1195,67544-0567-53 ",.01)
 ;;67544-0567-53
 ;;9002226.02101,"1195,67544-0567-53 ",.02)
 ;;67544-0567-53
 ;;9002226.02101,"1195,67544-0567-60 ",.01)
 ;;67544-0567-60
 ;;9002226.02101,"1195,67544-0567-60 ",.02)
 ;;67544-0567-60
 ;;9002226.02101,"1195,67544-0567-70 ",.01)
 ;;67544-0567-70
 ;;9002226.02101,"1195,67544-0567-70 ",.02)
 ;;67544-0567-70
 ;;9002226.02101,"1195,67544-0567-80 ",.01)
 ;;67544-0567-80
 ;;9002226.02101,"1195,67544-0567-80 ",.02)
 ;;67544-0567-80
 ;;9002226.02101,"1195,67544-0567-92 ",.01)
 ;;67544-0567-92
 ;;9002226.02101,"1195,67544-0567-92 ",.02)
 ;;67544-0567-92
 ;;9002226.02101,"1195,67544-0567-98 ",.01)
 ;;67544-0567-98
 ;;9002226.02101,"1195,67544-0567-98 ",.02)
 ;;67544-0567-98
 ;;9002226.02101,"1195,67544-0573-82 ",.01)
 ;;67544-0573-82
 ;;9002226.02101,"1195,67544-0573-82 ",.02)
 ;;67544-0573-82
 ;;9002226.02101,"1195,67544-0573-99 ",.01)
 ;;67544-0573-99
 ;;9002226.02101,"1195,67544-0573-99 ",.02)
 ;;67544-0573-99
 ;;9002226.02101,"1195,67544-0627-53 ",.01)
 ;;67544-0627-53
 ;;9002226.02101,"1195,67544-0627-53 ",.02)
 ;;67544-0627-53
 ;;9002226.02101,"1195,67544-0627-60 ",.01)
 ;;67544-0627-60
 ;;9002226.02101,"1195,67544-0627-60 ",.02)
 ;;67544-0627-60
 ;;9002226.02101,"1195,67544-0627-80 ",.01)
 ;;67544-0627-80
 ;;9002226.02101,"1195,67544-0627-80 ",.02)
 ;;67544-0627-80
 ;;9002226.02101,"1195,67544-0911-30 ",.01)
 ;;67544-0911-30
 ;;9002226.02101,"1195,67544-0911-30 ",.02)
 ;;67544-0911-30
