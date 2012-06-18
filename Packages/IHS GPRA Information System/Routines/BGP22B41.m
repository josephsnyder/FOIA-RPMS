BGP22B41 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1196,63629-1522-01 ",.01)
 ;;63629-1522-01
 ;;9002226.02101,"1196,63629-1522-01 ",.02)
 ;;63629-1522-01
 ;;9002226.02101,"1196,63629-1522-02 ",.01)
 ;;63629-1522-02
 ;;9002226.02101,"1196,63629-1522-02 ",.02)
 ;;63629-1522-02
 ;;9002226.02101,"1196,63629-1522-03 ",.01)
 ;;63629-1522-03
 ;;9002226.02101,"1196,63629-1522-03 ",.02)
 ;;63629-1522-03
 ;;9002226.02101,"1196,63629-1522-04 ",.01)
 ;;63629-1522-04
 ;;9002226.02101,"1196,63629-1522-04 ",.02)
 ;;63629-1522-04
 ;;9002226.02101,"1196,63629-1525-01 ",.01)
 ;;63629-1525-01
 ;;9002226.02101,"1196,63629-1525-01 ",.02)
 ;;63629-1525-01
 ;;9002226.02101,"1196,63629-1525-02 ",.01)
 ;;63629-1525-02
 ;;9002226.02101,"1196,63629-1525-02 ",.02)
 ;;63629-1525-02
 ;;9002226.02101,"1196,63629-1525-03 ",.01)
 ;;63629-1525-03
 ;;9002226.02101,"1196,63629-1525-03 ",.02)
 ;;63629-1525-03
 ;;9002226.02101,"1196,63629-1526-01 ",.01)
 ;;63629-1526-01
 ;;9002226.02101,"1196,63629-1526-01 ",.02)
 ;;63629-1526-01
 ;;9002226.02101,"1196,63629-1526-02 ",.01)
 ;;63629-1526-02
 ;;9002226.02101,"1196,63629-1526-02 ",.02)
 ;;63629-1526-02
 ;;9002226.02101,"1196,63629-1526-03 ",.01)
 ;;63629-1526-03
 ;;9002226.02101,"1196,63629-1526-03 ",.02)
 ;;63629-1526-03
 ;;9002226.02101,"1196,63629-1679-01 ",.01)
 ;;63629-1679-01
 ;;9002226.02101,"1196,63629-1679-01 ",.02)
 ;;63629-1679-01
 ;;9002226.02101,"1196,63629-1679-02 ",.01)
 ;;63629-1679-02
 ;;9002226.02101,"1196,63629-1679-02 ",.02)
 ;;63629-1679-02
 ;;9002226.02101,"1196,63629-1679-03 ",.01)
 ;;63629-1679-03
 ;;9002226.02101,"1196,63629-1679-03 ",.02)
 ;;63629-1679-03
 ;;9002226.02101,"1196,63629-1679-04 ",.01)
 ;;63629-1679-04
 ;;9002226.02101,"1196,63629-1679-04 ",.02)
 ;;63629-1679-04
 ;;9002226.02101,"1196,63629-1706-01 ",.01)
 ;;63629-1706-01
 ;;9002226.02101,"1196,63629-1706-01 ",.02)
 ;;63629-1706-01
 ;;9002226.02101,"1196,63629-1706-02 ",.01)
 ;;63629-1706-02
 ;;9002226.02101,"1196,63629-1706-02 ",.02)
 ;;63629-1706-02
 ;;9002226.02101,"1196,63629-1706-03 ",.01)
 ;;63629-1706-03
 ;;9002226.02101,"1196,63629-1706-03 ",.02)
 ;;63629-1706-03
 ;;9002226.02101,"1196,63629-1728-01 ",.01)
 ;;63629-1728-01
 ;;9002226.02101,"1196,63629-1728-01 ",.02)
 ;;63629-1728-01
 ;;9002226.02101,"1196,63629-1728-02 ",.01)
 ;;63629-1728-02
 ;;9002226.02101,"1196,63629-1728-02 ",.02)
 ;;63629-1728-02
 ;;9002226.02101,"1196,63629-1728-03 ",.01)
 ;;63629-1728-03
 ;;9002226.02101,"1196,63629-1728-03 ",.02)
 ;;63629-1728-03
 ;;9002226.02101,"1196,63629-1761-01 ",.01)
 ;;63629-1761-01
 ;;9002226.02101,"1196,63629-1761-01 ",.02)
 ;;63629-1761-01
 ;;9002226.02101,"1196,63629-1809-01 ",.01)
 ;;63629-1809-01
 ;;9002226.02101,"1196,63629-1809-01 ",.02)
 ;;63629-1809-01
 ;;9002226.02101,"1196,63629-1809-02 ",.01)
 ;;63629-1809-02
 ;;9002226.02101,"1196,63629-1809-02 ",.02)
 ;;63629-1809-02
 ;;9002226.02101,"1196,63629-2541-01 ",.01)
 ;;63629-2541-01
 ;;9002226.02101,"1196,63629-2541-01 ",.02)
 ;;63629-2541-01
 ;;9002226.02101,"1196,63629-2541-02 ",.01)
 ;;63629-2541-02
 ;;9002226.02101,"1196,63629-2541-02 ",.02)
 ;;63629-2541-02
 ;;9002226.02101,"1196,63629-2541-03 ",.01)
 ;;63629-2541-03
 ;;9002226.02101,"1196,63629-2541-03 ",.02)
 ;;63629-2541-03
 ;;9002226.02101,"1196,63629-2541-04 ",.01)
 ;;63629-2541-04
 ;;9002226.02101,"1196,63629-2541-04 ",.02)
 ;;63629-2541-04
 ;;9002226.02101,"1196,63629-2672-01 ",.01)
 ;;63629-2672-01
 ;;9002226.02101,"1196,63629-2672-01 ",.02)
 ;;63629-2672-01
 ;;9002226.02101,"1196,63629-2672-02 ",.01)
 ;;63629-2672-02
 ;;9002226.02101,"1196,63629-2672-02 ",.02)
 ;;63629-2672-02
 ;;9002226.02101,"1196,63629-2672-03 ",.01)
 ;;63629-2672-03
 ;;9002226.02101,"1196,63629-2672-03 ",.02)
 ;;63629-2672-03
 ;;9002226.02101,"1196,63629-2679-01 ",.01)
 ;;63629-2679-01
 ;;9002226.02101,"1196,63629-2679-01 ",.02)
 ;;63629-2679-01
 ;;9002226.02101,"1196,63629-2680-01 ",.01)
 ;;63629-2680-01
 ;;9002226.02101,"1196,63629-2680-01 ",.02)
 ;;63629-2680-01
 ;;9002226.02101,"1196,63629-2680-02 ",.01)
 ;;63629-2680-02
 ;;9002226.02101,"1196,63629-2680-02 ",.02)
 ;;63629-2680-02
 ;;9002226.02101,"1196,63629-2680-03 ",.01)
 ;;63629-2680-03
 ;;9002226.02101,"1196,63629-2680-03 ",.02)
 ;;63629-2680-03
 ;;9002226.02101,"1196,63629-2688-01 ",.01)
 ;;63629-2688-01
 ;;9002226.02101,"1196,63629-2688-01 ",.02)
 ;;63629-2688-01
 ;;9002226.02101,"1196,63629-2688-02 ",.01)
 ;;63629-2688-02
 ;;9002226.02101,"1196,63629-2688-02 ",.02)
 ;;63629-2688-02
 ;;9002226.02101,"1196,63629-2688-03 ",.01)
 ;;63629-2688-03
 ;;9002226.02101,"1196,63629-2688-03 ",.02)
 ;;63629-2688-03
 ;;9002226.02101,"1196,63629-2735-01 ",.01)
 ;;63629-2735-01
 ;;9002226.02101,"1196,63629-2735-01 ",.02)
 ;;63629-2735-01
 ;;9002226.02101,"1196,63629-2896-01 ",.01)
 ;;63629-2896-01
 ;;9002226.02101,"1196,63629-2896-01 ",.02)
 ;;63629-2896-01
 ;;9002226.02101,"1196,63629-2908-01 ",.01)
 ;;63629-2908-01
 ;;9002226.02101,"1196,63629-2908-01 ",.02)
 ;;63629-2908-01
 ;;9002226.02101,"1196,63629-2908-02 ",.01)
 ;;63629-2908-02
 ;;9002226.02101,"1196,63629-2908-02 ",.02)
 ;;63629-2908-02
 ;;9002226.02101,"1196,63629-2908-03 ",.01)
 ;;63629-2908-03
 ;;9002226.02101,"1196,63629-2908-03 ",.02)
 ;;63629-2908-03
 ;;9002226.02101,"1196,63629-2908-04 ",.01)
 ;;63629-2908-04
 ;;9002226.02101,"1196,63629-2908-04 ",.02)
 ;;63629-2908-04
 ;;9002226.02101,"1196,63629-2912-01 ",.01)
 ;;63629-2912-01
 ;;9002226.02101,"1196,63629-2912-01 ",.02)
 ;;63629-2912-01
 ;;9002226.02101,"1196,63629-2912-02 ",.01)
 ;;63629-2912-02
 ;;9002226.02101,"1196,63629-2912-02 ",.02)
 ;;63629-2912-02
 ;;9002226.02101,"1196,63629-2912-03 ",.01)
 ;;63629-2912-03
 ;;9002226.02101,"1196,63629-2912-03 ",.02)
 ;;63629-2912-03
 ;;9002226.02101,"1196,63629-2912-04 ",.01)
 ;;63629-2912-04
 ;;9002226.02101,"1196,63629-2912-04 ",.02)
 ;;63629-2912-04
 ;;9002226.02101,"1196,63629-2923-01 ",.01)
 ;;63629-2923-01
 ;;9002226.02101,"1196,63629-2923-01 ",.02)
 ;;63629-2923-01
 ;;9002226.02101,"1196,63629-2923-02 ",.01)
 ;;63629-2923-02
 ;;9002226.02101,"1196,63629-2923-02 ",.02)
 ;;63629-2923-02
 ;;9002226.02101,"1196,63629-2935-01 ",.01)
 ;;63629-2935-01
 ;;9002226.02101,"1196,63629-2935-01 ",.02)
 ;;63629-2935-01
 ;;9002226.02101,"1196,63629-2935-02 ",.01)
 ;;63629-2935-02
 ;;9002226.02101,"1196,63629-2935-02 ",.02)
 ;;63629-2935-02
 ;;9002226.02101,"1196,63629-2935-03 ",.01)
 ;;63629-2935-03
 ;;9002226.02101,"1196,63629-2935-03 ",.02)
 ;;63629-2935-03
 ;;9002226.02101,"1196,63629-2935-04 ",.01)
 ;;63629-2935-04
 ;;9002226.02101,"1196,63629-2935-04 ",.02)
 ;;63629-2935-04
 ;;9002226.02101,"1196,63629-3217-01 ",.01)
 ;;63629-3217-01
 ;;9002226.02101,"1196,63629-3217-01 ",.02)
 ;;63629-3217-01
 ;;9002226.02101,"1196,63629-3371-01 ",.01)
 ;;63629-3371-01
 ;;9002226.02101,"1196,63629-3371-01 ",.02)
 ;;63629-3371-01
 ;;9002226.02101,"1196,63629-3371-02 ",.01)
 ;;63629-3371-02
 ;;9002226.02101,"1196,63629-3371-02 ",.02)
 ;;63629-3371-02
 ;;9002226.02101,"1196,63629-3371-03 ",.01)
 ;;63629-3371-03
 ;;9002226.02101,"1196,63629-3371-03 ",.02)
 ;;63629-3371-03
 ;;9002226.02101,"1196,63629-3371-04 ",.01)
 ;;63629-3371-04
 ;;9002226.02101,"1196,63629-3371-04 ",.02)
 ;;63629-3371-04
 ;;9002226.02101,"1196,63629-3373-01 ",.01)
 ;;63629-3373-01
 ;;9002226.02101,"1196,63629-3373-01 ",.02)
 ;;63629-3373-01
 ;;9002226.02101,"1196,63629-3373-02 ",.01)
 ;;63629-3373-02
 ;;9002226.02101,"1196,63629-3373-02 ",.02)
 ;;63629-3373-02
 ;;9002226.02101,"1196,63629-3373-03 ",.01)
 ;;63629-3373-03
 ;;9002226.02101,"1196,63629-3373-03 ",.02)
 ;;63629-3373-03
 ;;9002226.02101,"1196,63629-3373-04 ",.01)
 ;;63629-3373-04
 ;;9002226.02101,"1196,63629-3373-04 ",.02)
 ;;63629-3373-04
 ;;9002226.02101,"1196,63629-3374-01 ",.01)
 ;;63629-3374-01
 ;;9002226.02101,"1196,63629-3374-01 ",.02)
 ;;63629-3374-01
 ;;9002226.02101,"1196,63629-3374-02 ",.01)
 ;;63629-3374-02
 ;;9002226.02101,"1196,63629-3374-02 ",.02)
 ;;63629-3374-02
 ;;9002226.02101,"1196,63629-3374-03 ",.01)
 ;;63629-3374-03
 ;;9002226.02101,"1196,63629-3374-03 ",.02)
 ;;63629-3374-03
 ;;9002226.02101,"1196,63629-3374-04 ",.01)
 ;;63629-3374-04
 ;;9002226.02101,"1196,63629-3374-04 ",.02)
 ;;63629-3374-04
 ;;9002226.02101,"1196,63629-3376-01 ",.01)
 ;;63629-3376-01
 ;;9002226.02101,"1196,63629-3376-01 ",.02)
 ;;63629-3376-01
 ;;9002226.02101,"1196,63629-3376-02 ",.01)
 ;;63629-3376-02
 ;;9002226.02101,"1196,63629-3376-02 ",.02)
 ;;63629-3376-02
 ;;9002226.02101,"1196,63629-3376-03 ",.01)
 ;;63629-3376-03
 ;;9002226.02101,"1196,63629-3376-03 ",.02)
 ;;63629-3376-03
 ;;9002226.02101,"1196,63629-3376-04 ",.01)
 ;;63629-3376-04
 ;;9002226.02101,"1196,63629-3376-04 ",.02)
 ;;63629-3376-04
 ;;9002226.02101,"1196,63629-3377-01 ",.01)
 ;;63629-3377-01
 ;;9002226.02101,"1196,63629-3377-01 ",.02)
 ;;63629-3377-01
 ;;9002226.02101,"1196,63629-3377-02 ",.01)
 ;;63629-3377-02
 ;;9002226.02101,"1196,63629-3377-02 ",.02)
 ;;63629-3377-02
 ;;9002226.02101,"1196,63629-3377-03 ",.01)
 ;;63629-3377-03
 ;;9002226.02101,"1196,63629-3377-03 ",.02)
 ;;63629-3377-03
 ;;9002226.02101,"1196,63629-3377-04 ",.01)
 ;;63629-3377-04
 ;;9002226.02101,"1196,63629-3377-04 ",.02)
 ;;63629-3377-04
 ;;9002226.02101,"1196,63629-3390-01 ",.01)
 ;;63629-3390-01
 ;;9002226.02101,"1196,63629-3390-01 ",.02)
 ;;63629-3390-01
 ;;9002226.02101,"1196,63629-3390-02 ",.01)
 ;;63629-3390-02
 ;;9002226.02101,"1196,63629-3390-02 ",.02)
 ;;63629-3390-02
 ;;9002226.02101,"1196,63629-3390-03 ",.01)
 ;;63629-3390-03
 ;;9002226.02101,"1196,63629-3390-03 ",.02)
 ;;63629-3390-03
 ;;9002226.02101,"1196,63629-3390-04 ",.01)
 ;;63629-3390-04
 ;;9002226.02101,"1196,63629-3390-04 ",.02)
 ;;63629-3390-04
 ;;9002226.02101,"1196,63629-3739-01 ",.01)
 ;;63629-3739-01
 ;;9002226.02101,"1196,63629-3739-01 ",.02)
 ;;63629-3739-01
 ;;9002226.02101,"1196,63629-3739-02 ",.01)
 ;;63629-3739-02
 ;;9002226.02101,"1196,63629-3739-02 ",.02)
 ;;63629-3739-02
 ;;9002226.02101,"1196,63739-0042-01 ",.01)
 ;;63739-0042-01
 ;;9002226.02101,"1196,63739-0042-01 ",.02)
 ;;63739-0042-01
 ;;9002226.02101,"1196,63739-0042-02 ",.01)
 ;;63739-0042-02
 ;;9002226.02101,"1196,63739-0042-02 ",.02)
 ;;63739-0042-02
 ;;9002226.02101,"1196,63739-0042-03 ",.01)
 ;;63739-0042-03
 ;;9002226.02101,"1196,63739-0042-03 ",.02)
 ;;63739-0042-03
 ;;9002226.02101,"1196,63739-0042-10 ",.01)
 ;;63739-0042-10
 ;;9002226.02101,"1196,63739-0042-10 ",.02)
 ;;63739-0042-10
 ;;9002226.02101,"1196,63739-0042-15 ",.01)
 ;;63739-0042-15
 ;;9002226.02101,"1196,63739-0042-15 ",.02)
 ;;63739-0042-15
 ;;9002226.02101,"1196,63739-0043-01 ",.01)
 ;;63739-0043-01
 ;;9002226.02101,"1196,63739-0043-01 ",.02)
 ;;63739-0043-01
 ;;9002226.02101,"1196,63739-0043-02 ",.01)
 ;;63739-0043-02
 ;;9002226.02101,"1196,63739-0043-02 ",.02)
 ;;63739-0043-02
 ;;9002226.02101,"1196,63739-0043-03 ",.01)
 ;;63739-0043-03
 ;;9002226.02101,"1196,63739-0043-03 ",.02)
 ;;63739-0043-03
 ;;9002226.02101,"1196,63739-0043-10 ",.01)
 ;;63739-0043-10
 ;;9002226.02101,"1196,63739-0043-10 ",.02)
 ;;63739-0043-10
 ;;9002226.02101,"1196,63739-0043-15 ",.01)
 ;;63739-0043-15
 ;;9002226.02101,"1196,63739-0043-15 ",.02)
 ;;63739-0043-15
 ;;9002226.02101,"1196,63739-0302-10 ",.01)
 ;;63739-0302-10
 ;;9002226.02101,"1196,63739-0302-10 ",.02)
 ;;63739-0302-10
 ;;9002226.02101,"1196,63739-0302-15 ",.01)
 ;;63739-0302-15
 ;;9002226.02101,"1196,63739-0302-15 ",.02)
 ;;63739-0302-15
 ;;9002226.02101,"1196,63739-0322-10 ",.01)
 ;;63739-0322-10
 ;;9002226.02101,"1196,63739-0322-10 ",.02)
 ;;63739-0322-10
 ;;9002226.02101,"1196,63739-0322-15 ",.01)
 ;;63739-0322-15
 ;;9002226.02101,"1196,63739-0322-15 ",.02)
 ;;63739-0322-15
 ;;9002226.02101,"1196,63739-0323-10 ",.01)
 ;;63739-0323-10
 ;;9002226.02101,"1196,63739-0323-10 ",.02)
 ;;63739-0323-10
 ;;9002226.02101,"1196,63739-0323-15 ",.01)
 ;;63739-0323-15
 ;;9002226.02101,"1196,63739-0323-15 ",.02)
 ;;63739-0323-15
 ;;9002226.02101,"1196,63739-0348-10 ",.01)
 ;;63739-0348-10
 ;;9002226.02101,"1196,63739-0348-10 ",.02)
 ;;63739-0348-10
 ;;9002226.02101,"1196,63739-0348-15 ",.01)
 ;;63739-0348-15
 ;;9002226.02101,"1196,63739-0348-15 ",.02)
 ;;63739-0348-15
 ;;9002226.02101,"1196,63739-0349-10 ",.01)
 ;;63739-0349-10
 ;;9002226.02101,"1196,63739-0349-10 ",.02)
 ;;63739-0349-10
 ;;9002226.02101,"1196,63739-0349-15 ",.01)
 ;;63739-0349-15
 ;;9002226.02101,"1196,63739-0349-15 ",.02)
 ;;63739-0349-15
 ;;9002226.02101,"1196,63739-0350-10 ",.01)
 ;;63739-0350-10
 ;;9002226.02101,"1196,63739-0350-10 ",.02)
 ;;63739-0350-10
 ;;9002226.02101,"1196,63739-0350-15 ",.01)
 ;;63739-0350-15
 ;;9002226.02101,"1196,63739-0350-15 ",.02)
 ;;63739-0350-15
 ;;9002226.02101,"1196,63874-0058-10 ",.01)
 ;;63874-0058-10
 ;;9002226.02101,"1196,63874-0058-10 ",.02)
 ;;63874-0058-10
 ;;9002226.02101,"1196,63874-0058-15 ",.01)
 ;;63874-0058-15
 ;;9002226.02101,"1196,63874-0058-15 ",.02)
 ;;63874-0058-15
 ;;9002226.02101,"1196,63874-0058-30 ",.01)
 ;;63874-0058-30
 ;;9002226.02101,"1196,63874-0058-30 ",.02)
 ;;63874-0058-30
 ;;9002226.02101,"1196,63874-0058-90 ",.01)
 ;;63874-0058-90
 ;;9002226.02101,"1196,63874-0058-90 ",.02)
 ;;63874-0058-90
 ;;9002226.02101,"1196,63874-0347-01 ",.01)
 ;;63874-0347-01
 ;;9002226.02101,"1196,63874-0347-01 ",.02)
 ;;63874-0347-01
 ;;9002226.02101,"1196,63874-0347-02 ",.01)
 ;;63874-0347-02
 ;;9002226.02101,"1196,63874-0347-02 ",.02)
 ;;63874-0347-02
 ;;9002226.02101,"1196,63874-0347-05 ",.01)
 ;;63874-0347-05
 ;;9002226.02101,"1196,63874-0347-05 ",.02)
 ;;63874-0347-05
 ;;9002226.02101,"1196,63874-0347-20 ",.01)
 ;;63874-0347-20
