BGP21F55 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,57664-0245-88 ",.02)
 ;;57664-0245-88
 ;;9002226.02101,"1195,57664-0247-13 ",.01)
 ;;57664-0247-13
 ;;9002226.02101,"1195,57664-0247-13 ",.02)
 ;;57664-0247-13
 ;;9002226.02101,"1195,57664-0247-18 ",.01)
 ;;57664-0247-18
 ;;9002226.02101,"1195,57664-0247-18 ",.02)
 ;;57664-0247-18
 ;;9002226.02101,"1195,57664-0247-88 ",.01)
 ;;57664-0247-88
 ;;9002226.02101,"1195,57664-0247-88 ",.02)
 ;;57664-0247-88
 ;;9002226.02101,"1195,57664-0264-18 ",.01)
 ;;57664-0264-18
 ;;9002226.02101,"1195,57664-0264-18 ",.02)
 ;;57664-0264-18
 ;;9002226.02101,"1195,57664-0264-88 ",.01)
 ;;57664-0264-88
 ;;9002226.02101,"1195,57664-0264-88 ",.02)
 ;;57664-0264-88
 ;;9002226.02101,"1195,57664-0265-18 ",.01)
 ;;57664-0265-18
 ;;9002226.02101,"1195,57664-0265-18 ",.02)
 ;;57664-0265-18
 ;;9002226.02101,"1195,57664-0265-88 ",.01)
 ;;57664-0265-88
 ;;9002226.02101,"1195,57664-0265-88 ",.02)
 ;;57664-0265-88
 ;;9002226.02101,"1195,57664-0266-18 ",.01)
 ;;57664-0266-18
 ;;9002226.02101,"1195,57664-0266-18 ",.02)
 ;;57664-0266-18
 ;;9002226.02101,"1195,57664-0266-88 ",.01)
 ;;57664-0266-88
 ;;9002226.02101,"1195,57664-0266-88 ",.02)
 ;;57664-0266-88
 ;;9002226.02101,"1195,57664-0477-08 ",.01)
 ;;57664-0477-08
 ;;9002226.02101,"1195,57664-0477-08 ",.02)
 ;;57664-0477-08
 ;;9002226.02101,"1195,57664-0477-18 ",.01)
 ;;57664-0477-18
 ;;9002226.02101,"1195,57664-0477-18 ",.02)
 ;;57664-0477-18
 ;;9002226.02101,"1195,57664-0477-52 ",.01)
 ;;57664-0477-52
 ;;9002226.02101,"1195,57664-0477-52 ",.02)
 ;;57664-0477-52
 ;;9002226.02101,"1195,57664-0477-58 ",.01)
 ;;57664-0477-58
 ;;9002226.02101,"1195,57664-0477-58 ",.02)
 ;;57664-0477-58
 ;;9002226.02101,"1195,57664-0506-08 ",.01)
 ;;57664-0506-08
 ;;9002226.02101,"1195,57664-0506-08 ",.02)
 ;;57664-0506-08
 ;;9002226.02101,"1195,57664-0506-18 ",.01)
 ;;57664-0506-18
 ;;9002226.02101,"1195,57664-0506-18 ",.02)
 ;;57664-0506-18
 ;;9002226.02101,"1195,57664-0506-52 ",.01)
 ;;57664-0506-52
 ;;9002226.02101,"1195,57664-0506-52 ",.02)
 ;;57664-0506-52
 ;;9002226.02101,"1195,57664-0506-58 ",.01)
 ;;57664-0506-58
 ;;9002226.02101,"1195,57664-0506-58 ",.02)
 ;;57664-0506-58
 ;;9002226.02101,"1195,57866-0219-01 ",.01)
 ;;57866-0219-01
 ;;9002226.02101,"1195,57866-0219-01 ",.02)
 ;;57866-0219-01
 ;;9002226.02101,"1195,57866-0251-01 ",.01)
 ;;57866-0251-01
 ;;9002226.02101,"1195,57866-0251-01 ",.02)
 ;;57866-0251-01
 ;;9002226.02101,"1195,57866-2607-02 ",.01)
 ;;57866-2607-02
 ;;9002226.02101,"1195,57866-2607-02 ",.02)
 ;;57866-2607-02
 ;;9002226.02101,"1195,57866-2608-02 ",.01)
 ;;57866-2608-02
 ;;9002226.02101,"1195,57866-2608-02 ",.02)
 ;;57866-2608-02
 ;;9002226.02101,"1195,57866-3155-01 ",.01)
 ;;57866-3155-01
 ;;9002226.02101,"1195,57866-3155-01 ",.02)
 ;;57866-3155-01
 ;;9002226.02101,"1195,57866-3330-01 ",.01)
 ;;57866-3330-01
 ;;9002226.02101,"1195,57866-3330-01 ",.02)
 ;;57866-3330-01
 ;;9002226.02101,"1195,57866-3330-03 ",.01)
 ;;57866-3330-03
 ;;9002226.02101,"1195,57866-3330-03 ",.02)
 ;;57866-3330-03
 ;;9002226.02101,"1195,57866-3330-05 ",.01)
 ;;57866-3330-05
 ;;9002226.02101,"1195,57866-3330-05 ",.02)
 ;;57866-3330-05
 ;;9002226.02101,"1195,57866-3331-01 ",.01)
 ;;57866-3331-01
 ;;9002226.02101,"1195,57866-3331-01 ",.02)
 ;;57866-3331-01
 ;;9002226.02101,"1195,57866-3331-02 ",.01)
 ;;57866-3331-02
 ;;9002226.02101,"1195,57866-3331-02 ",.02)
 ;;57866-3331-02
 ;;9002226.02101,"1195,57866-3331-03 ",.01)
 ;;57866-3331-03
 ;;9002226.02101,"1195,57866-3331-03 ",.02)
 ;;57866-3331-03
 ;;9002226.02101,"1195,57866-3332-01 ",.01)
 ;;57866-3332-01
 ;;9002226.02101,"1195,57866-3332-01 ",.02)
 ;;57866-3332-01
 ;;9002226.02101,"1195,57866-3332-03 ",.01)
 ;;57866-3332-03
 ;;9002226.02101,"1195,57866-3332-03 ",.02)
 ;;57866-3332-03
 ;;9002226.02101,"1195,57866-4309-01 ",.01)
 ;;57866-4309-01
 ;;9002226.02101,"1195,57866-4309-01 ",.02)
 ;;57866-4309-01
 ;;9002226.02101,"1195,57866-4313-01 ",.01)
 ;;57866-4313-01
 ;;9002226.02101,"1195,57866-4313-01 ",.02)
 ;;57866-4313-01
 ;;9002226.02101,"1195,57866-4313-04 ",.01)
 ;;57866-4313-04
 ;;9002226.02101,"1195,57866-4313-04 ",.02)
 ;;57866-4313-04
 ;;9002226.02101,"1195,57866-4314-01 ",.01)
 ;;57866-4314-01
 ;;9002226.02101,"1195,57866-4314-01 ",.02)
 ;;57866-4314-01
 ;;9002226.02101,"1195,57866-4315-01 ",.01)
 ;;57866-4315-01
 ;;9002226.02101,"1195,57866-4315-01 ",.02)
 ;;57866-4315-01
 ;;9002226.02101,"1195,57866-4316-01 ",.01)
 ;;57866-4316-01
 ;;9002226.02101,"1195,57866-4316-01 ",.02)
 ;;57866-4316-01
 ;;9002226.02101,"1195,57866-4655-01 ",.01)
 ;;57866-4655-01
 ;;9002226.02101,"1195,57866-4655-01 ",.02)
 ;;57866-4655-01
 ;;9002226.02101,"1195,57866-4655-02 ",.01)
 ;;57866-4655-02
 ;;9002226.02101,"1195,57866-4655-02 ",.02)
 ;;57866-4655-02
 ;;9002226.02101,"1195,57866-4911-01 ",.01)
 ;;57866-4911-01
 ;;9002226.02101,"1195,57866-4911-01 ",.02)
 ;;57866-4911-01
 ;;9002226.02101,"1195,57866-4912-01 ",.01)
 ;;57866-4912-01
 ;;9002226.02101,"1195,57866-4912-01 ",.02)
 ;;57866-4912-01
 ;;9002226.02101,"1195,57866-4913-01 ",.01)
 ;;57866-4913-01
 ;;9002226.02101,"1195,57866-4913-01 ",.02)
 ;;57866-4913-01
 ;;9002226.02101,"1195,57866-4914-01 ",.01)
 ;;57866-4914-01
 ;;9002226.02101,"1195,57866-4914-01 ",.02)
 ;;57866-4914-01