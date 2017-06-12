BGP61F47 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,63304-0532-01 ",.02)
 ;;63304-0532-01
 ;;9002226.02101,"1733,63304-0532-10 ",.01)
 ;;63304-0532-10
 ;;9002226.02101,"1733,63304-0532-10 ",.02)
 ;;63304-0532-10
 ;;9002226.02101,"1733,63304-0533-01 ",.01)
 ;;63304-0533-01
 ;;9002226.02101,"1733,63304-0533-01 ",.02)
 ;;63304-0533-01
 ;;9002226.02101,"1733,63304-0533-10 ",.01)
 ;;63304-0533-10
 ;;9002226.02101,"1733,63304-0533-10 ",.02)
 ;;63304-0533-10
 ;;9002226.02101,"1733,63304-0534-01 ",.01)
 ;;63304-0534-01
 ;;9002226.02101,"1733,63304-0534-01 ",.02)
 ;;63304-0534-01
 ;;9002226.02101,"1733,63304-0534-10 ",.01)
 ;;63304-0534-10
 ;;9002226.02101,"1733,63304-0534-10 ",.02)
 ;;63304-0534-10
 ;;9002226.02101,"1733,63304-0535-01 ",.01)
 ;;63304-0535-01
 ;;9002226.02101,"1733,63304-0535-01 ",.02)
 ;;63304-0535-01
 ;;9002226.02101,"1733,63304-0535-10 ",.01)
 ;;63304-0535-10
 ;;9002226.02101,"1733,63304-0535-10 ",.02)
 ;;63304-0535-10
 ;;9002226.02101,"1733,63304-0536-01 ",.01)
 ;;63304-0536-01
 ;;9002226.02101,"1733,63304-0536-01 ",.02)
 ;;63304-0536-01
 ;;9002226.02101,"1733,63304-0536-05 ",.01)
 ;;63304-0536-05
 ;;9002226.02101,"1733,63304-0536-05 ",.02)
 ;;63304-0536-05
 ;;9002226.02101,"1733,63304-0537-01 ",.01)
 ;;63304-0537-01
 ;;9002226.02101,"1733,63304-0537-01 ",.02)
 ;;63304-0537-01
 ;;9002226.02101,"1733,63304-0537-05 ",.01)
 ;;63304-0537-05
 ;;9002226.02101,"1733,63304-0537-05 ",.02)
 ;;63304-0537-05
 ;;9002226.02101,"1733,63304-0538-01 ",.01)
 ;;63304-0538-01
 ;;9002226.02101,"1733,63304-0538-01 ",.02)
 ;;63304-0538-01
 ;;9002226.02101,"1733,63304-0538-05 ",.01)
 ;;63304-0538-05
 ;;9002226.02101,"1733,63304-0538-05 ",.02)
 ;;63304-0538-05
 ;;9002226.02101,"1733,63304-0548-90 ",.01)
 ;;63304-0548-90
 ;;9002226.02101,"1733,63304-0548-90 ",.02)
 ;;63304-0548-90
 ;;9002226.02101,"1733,63304-0549-90 ",.01)
 ;;63304-0549-90
 ;;9002226.02101,"1733,63304-0549-90 ",.02)
 ;;63304-0549-90
 ;;9002226.02101,"1733,63304-0550-90 ",.01)
 ;;63304-0550-90
 ;;9002226.02101,"1733,63304-0550-90 ",.02)
 ;;63304-0550-90
 ;;9002226.02101,"1733,63304-0551-90 ",.01)
 ;;63304-0551-90
 ;;9002226.02101,"1733,63304-0551-90 ",.02)
 ;;63304-0551-90
 ;;9002226.02101,"1733,63304-0599-01 ",.01)
 ;;63304-0599-01
 ;;9002226.02101,"1733,63304-0599-01 ",.02)
 ;;63304-0599-01
 ;;9002226.02101,"1733,63629-1241-01 ",.01)
 ;;63629-1241-01
 ;;9002226.02101,"1733,63629-1241-01 ",.02)
 ;;63629-1241-01
 ;;9002226.02101,"1733,63629-1242-01 ",.01)
 ;;63629-1242-01
 ;;9002226.02101,"1733,63629-1242-01 ",.02)
 ;;63629-1242-01
 ;;9002226.02101,"1733,63629-1253-01 ",.01)
 ;;63629-1253-01
 ;;9002226.02101,"1733,63629-1253-01 ",.02)
 ;;63629-1253-01
 ;;9002226.02101,"1733,63629-1253-02 ",.01)
 ;;63629-1253-02
 ;;9002226.02101,"1733,63629-1253-02 ",.02)
 ;;63629-1253-02
 ;;9002226.02101,"1733,63629-1254-01 ",.01)
 ;;63629-1254-01
 ;;9002226.02101,"1733,63629-1254-01 ",.02)
 ;;63629-1254-01
 ;;9002226.02101,"1733,63629-1254-02 ",.01)
 ;;63629-1254-02
 ;;9002226.02101,"1733,63629-1254-02 ",.02)
 ;;63629-1254-02
 ;;9002226.02101,"1733,63629-1337-01 ",.01)
 ;;63629-1337-01
 ;;9002226.02101,"1733,63629-1337-01 ",.02)
 ;;63629-1337-01
 ;;9002226.02101,"1733,63629-1337-02 ",.01)
 ;;63629-1337-02
 ;;9002226.02101,"1733,63629-1337-02 ",.02)
 ;;63629-1337-02
 ;;9002226.02101,"1733,63629-1337-03 ",.01)
 ;;63629-1337-03
 ;;9002226.02101,"1733,63629-1337-03 ",.02)
 ;;63629-1337-03
 ;;9002226.02101,"1733,63629-1338-01 ",.01)
 ;;63629-1338-01
 ;;9002226.02101,"1733,63629-1338-01 ",.02)
 ;;63629-1338-01
 ;;9002226.02101,"1733,63629-1338-02 ",.01)
 ;;63629-1338-02
 ;;9002226.02101,"1733,63629-1338-02 ",.02)
 ;;63629-1338-02
 ;;9002226.02101,"1733,63629-1338-03 ",.01)
 ;;63629-1338-03
 ;;9002226.02101,"1733,63629-1338-03 ",.02)
 ;;63629-1338-03
 ;;9002226.02101,"1733,63629-1454-01 ",.01)
 ;;63629-1454-01
 ;;9002226.02101,"1733,63629-1454-01 ",.02)
 ;;63629-1454-01
 ;;9002226.02101,"1733,63629-1522-01 ",.01)
 ;;63629-1522-01
 ;;9002226.02101,"1733,63629-1522-01 ",.02)
 ;;63629-1522-01
 ;;9002226.02101,"1733,63629-1522-02 ",.01)
 ;;63629-1522-02
 ;;9002226.02101,"1733,63629-1522-02 ",.02)
 ;;63629-1522-02
 ;;9002226.02101,"1733,63629-1522-03 ",.01)
 ;;63629-1522-03
 ;;9002226.02101,"1733,63629-1522-03 ",.02)
 ;;63629-1522-03
 ;;9002226.02101,"1733,63629-1522-04 ",.01)
 ;;63629-1522-04
 ;;9002226.02101,"1733,63629-1522-04 ",.02)
 ;;63629-1522-04
 ;;9002226.02101,"1733,63629-1525-01 ",.01)
 ;;63629-1525-01
 ;;9002226.02101,"1733,63629-1525-01 ",.02)
 ;;63629-1525-01
 ;;9002226.02101,"1733,63629-1525-02 ",.01)
 ;;63629-1525-02
 ;;9002226.02101,"1733,63629-1525-02 ",.02)
 ;;63629-1525-02
 ;;9002226.02101,"1733,63629-1525-03 ",.01)
 ;;63629-1525-03
 ;;9002226.02101,"1733,63629-1525-03 ",.02)
 ;;63629-1525-03
 ;;9002226.02101,"1733,63629-1526-01 ",.01)
 ;;63629-1526-01
 ;;9002226.02101,"1733,63629-1526-01 ",.02)
 ;;63629-1526-01
 ;;9002226.02101,"1733,63629-1526-02 ",.01)
 ;;63629-1526-02
 ;;9002226.02101,"1733,63629-1526-02 ",.02)
 ;;63629-1526-02
 ;;9002226.02101,"1733,63629-1526-03 ",.01)
 ;;63629-1526-03
 ;;9002226.02101,"1733,63629-1526-03 ",.02)
 ;;63629-1526-03
 ;;9002226.02101,"1733,63629-1679-01 ",.01)
 ;;63629-1679-01
 ;;9002226.02101,"1733,63629-1679-01 ",.02)
 ;;63629-1679-01
 ;;9002226.02101,"1733,63629-1679-02 ",.01)
 ;;63629-1679-02
 ;;9002226.02101,"1733,63629-1679-02 ",.02)
 ;;63629-1679-02
 ;;9002226.02101,"1733,63629-1679-03 ",.01)
 ;;63629-1679-03
 ;;9002226.02101,"1733,63629-1679-03 ",.02)
 ;;63629-1679-03
 ;;9002226.02101,"1733,63629-1679-04 ",.01)
 ;;63629-1679-04
 ;;9002226.02101,"1733,63629-1679-04 ",.02)
 ;;63629-1679-04
 ;;9002226.02101,"1733,63629-1706-01 ",.01)
 ;;63629-1706-01
 ;;9002226.02101,"1733,63629-1706-01 ",.02)
 ;;63629-1706-01
 ;;9002226.02101,"1733,63629-1706-02 ",.01)
 ;;63629-1706-02
 ;;9002226.02101,"1733,63629-1706-02 ",.02)
 ;;63629-1706-02
 ;;9002226.02101,"1733,63629-1706-03 ",.01)
 ;;63629-1706-03
 ;;9002226.02101,"1733,63629-1706-03 ",.02)
 ;;63629-1706-03
 ;;9002226.02101,"1733,63629-1728-01 ",.01)
 ;;63629-1728-01
 ;;9002226.02101,"1733,63629-1728-01 ",.02)
 ;;63629-1728-01
 ;;9002226.02101,"1733,63629-1728-02 ",.01)
 ;;63629-1728-02
 ;;9002226.02101,"1733,63629-1728-02 ",.02)
 ;;63629-1728-02
 ;;9002226.02101,"1733,63629-1728-03 ",.01)
 ;;63629-1728-03
 ;;9002226.02101,"1733,63629-1728-03 ",.02)
 ;;63629-1728-03
 ;;9002226.02101,"1733,63629-1761-01 ",.01)
 ;;63629-1761-01
 ;;9002226.02101,"1733,63629-1761-01 ",.02)
 ;;63629-1761-01
 ;;9002226.02101,"1733,63629-1809-01 ",.01)
 ;;63629-1809-01
 ;;9002226.02101,"1733,63629-1809-01 ",.02)
 ;;63629-1809-01
 ;;9002226.02101,"1733,63629-1809-02 ",.01)
 ;;63629-1809-02
 ;;9002226.02101,"1733,63629-1809-02 ",.02)
 ;;63629-1809-02
 ;;9002226.02101,"1733,63629-1809-03 ",.01)
 ;;63629-1809-03
 ;;9002226.02101,"1733,63629-1809-03 ",.02)
 ;;63629-1809-03
 ;;9002226.02101,"1733,63629-2541-01 ",.01)
 ;;63629-2541-01
 ;;9002226.02101,"1733,63629-2541-01 ",.02)
 ;;63629-2541-01
 ;;9002226.02101,"1733,63629-2541-02 ",.01)
 ;;63629-2541-02
 ;;9002226.02101,"1733,63629-2541-02 ",.02)
 ;;63629-2541-02
 ;;9002226.02101,"1733,63629-2541-03 ",.01)
 ;;63629-2541-03
 ;;9002226.02101,"1733,63629-2541-03 ",.02)
 ;;63629-2541-03
 ;;9002226.02101,"1733,63629-2541-04 ",.01)
 ;;63629-2541-04
 ;;9002226.02101,"1733,63629-2541-04 ",.02)
 ;;63629-2541-04
 ;;9002226.02101,"1733,63629-2672-01 ",.01)
 ;;63629-2672-01
 ;;9002226.02101,"1733,63629-2672-01 ",.02)
 ;;63629-2672-01
 ;;9002226.02101,"1733,63629-2672-02 ",.01)
 ;;63629-2672-02
 ;;9002226.02101,"1733,63629-2672-02 ",.02)
 ;;63629-2672-02
 ;;9002226.02101,"1733,63629-2672-03 ",.01)
 ;;63629-2672-03
 ;;9002226.02101,"1733,63629-2672-03 ",.02)
 ;;63629-2672-03
 ;;9002226.02101,"1733,63629-2679-01 ",.01)
 ;;63629-2679-01
 ;;9002226.02101,"1733,63629-2679-01 ",.02)
 ;;63629-2679-01
 ;;9002226.02101,"1733,63629-2680-01 ",.01)
 ;;63629-2680-01
 ;;9002226.02101,"1733,63629-2680-01 ",.02)
 ;;63629-2680-01
 ;;9002226.02101,"1733,63629-2680-02 ",.01)
 ;;63629-2680-02
 ;;9002226.02101,"1733,63629-2680-02 ",.02)
 ;;63629-2680-02
 ;;9002226.02101,"1733,63629-2680-03 ",.01)
 ;;63629-2680-03
 ;;9002226.02101,"1733,63629-2680-03 ",.02)
 ;;63629-2680-03
 ;;9002226.02101,"1733,63629-2688-01 ",.01)
 ;;63629-2688-01
 ;;9002226.02101,"1733,63629-2688-01 ",.02)
 ;;63629-2688-01
 ;;9002226.02101,"1733,63629-2688-02 ",.01)
 ;;63629-2688-02
 ;;9002226.02101,"1733,63629-2688-02 ",.02)
 ;;63629-2688-02
 ;;9002226.02101,"1733,63629-2688-03 ",.01)
 ;;63629-2688-03
 ;;9002226.02101,"1733,63629-2688-03 ",.02)
 ;;63629-2688-03
 ;;9002226.02101,"1733,63629-2735-01 ",.01)
 ;;63629-2735-01
 ;;9002226.02101,"1733,63629-2735-01 ",.02)
 ;;63629-2735-01
 ;;9002226.02101,"1733,63629-2896-01 ",.01)
 ;;63629-2896-01
 ;;9002226.02101,"1733,63629-2896-01 ",.02)
 ;;63629-2896-01
 ;;9002226.02101,"1733,63629-2908-01 ",.01)
 ;;63629-2908-01
 ;;9002226.02101,"1733,63629-2908-01 ",.02)
 ;;63629-2908-01
 ;;9002226.02101,"1733,63629-2908-02 ",.01)
 ;;63629-2908-02
 ;;9002226.02101,"1733,63629-2908-02 ",.02)
 ;;63629-2908-02
 ;;9002226.02101,"1733,63629-2908-03 ",.01)
 ;;63629-2908-03
 ;;9002226.02101,"1733,63629-2908-03 ",.02)
 ;;63629-2908-03
 ;;9002226.02101,"1733,63629-2908-04 ",.01)
 ;;63629-2908-04
 ;;9002226.02101,"1733,63629-2908-04 ",.02)
 ;;63629-2908-04
 ;;9002226.02101,"1733,63629-2912-01 ",.01)
 ;;63629-2912-01
 ;;9002226.02101,"1733,63629-2912-01 ",.02)
 ;;63629-2912-01
 ;;9002226.02101,"1733,63629-2912-02 ",.01)
 ;;63629-2912-02
 ;;9002226.02101,"1733,63629-2912-02 ",.02)
 ;;63629-2912-02
 ;;9002226.02101,"1733,63629-2912-03 ",.01)
 ;;63629-2912-03
 ;;9002226.02101,"1733,63629-2912-03 ",.02)
 ;;63629-2912-03
 ;;9002226.02101,"1733,63629-2912-04 ",.01)
 ;;63629-2912-04
 ;;9002226.02101,"1733,63629-2912-04 ",.02)
 ;;63629-2912-04
 ;;9002226.02101,"1733,63629-2923-01 ",.01)
 ;;63629-2923-01
 ;;9002226.02101,"1733,63629-2923-01 ",.02)
 ;;63629-2923-01
 ;;9002226.02101,"1733,63629-2923-02 ",.01)
 ;;63629-2923-02
 ;;9002226.02101,"1733,63629-2923-02 ",.02)
 ;;63629-2923-02
 ;;9002226.02101,"1733,63629-2935-01 ",.01)
 ;;63629-2935-01
 ;;9002226.02101,"1733,63629-2935-01 ",.02)
 ;;63629-2935-01
 ;;9002226.02101,"1733,63629-2935-02 ",.01)
 ;;63629-2935-02
 ;;9002226.02101,"1733,63629-2935-02 ",.02)
 ;;63629-2935-02
 ;;9002226.02101,"1733,63629-2935-03 ",.01)
 ;;63629-2935-03
 ;;9002226.02101,"1733,63629-2935-03 ",.02)
 ;;63629-2935-03
 ;;9002226.02101,"1733,63629-2935-04 ",.01)
 ;;63629-2935-04
 ;;9002226.02101,"1733,63629-2935-04 ",.02)
 ;;63629-2935-04
 ;;9002226.02101,"1733,63629-3217-01 ",.01)
 ;;63629-3217-01
 ;;9002226.02101,"1733,63629-3217-01 ",.02)
 ;;63629-3217-01
 ;;9002226.02101,"1733,63629-3344-01 ",.01)
 ;;63629-3344-01
 ;;9002226.02101,"1733,63629-3344-01 ",.02)
 ;;63629-3344-01
 ;;9002226.02101,"1733,63629-3344-02 ",.01)
 ;;63629-3344-02
 ;;9002226.02101,"1733,63629-3344-02 ",.02)
 ;;63629-3344-02
 ;;9002226.02101,"1733,63629-3371-01 ",.01)
 ;;63629-3371-01
 ;;9002226.02101,"1733,63629-3371-01 ",.02)
 ;;63629-3371-01
 ;;9002226.02101,"1733,63629-3371-02 ",.01)
 ;;63629-3371-02
 ;;9002226.02101,"1733,63629-3371-02 ",.02)
 ;;63629-3371-02
 ;;9002226.02101,"1733,63629-3371-03 ",.01)
 ;;63629-3371-03
 ;;9002226.02101,"1733,63629-3371-03 ",.02)
 ;;63629-3371-03
 ;;9002226.02101,"1733,63629-3371-04 ",.01)
 ;;63629-3371-04
 ;;9002226.02101,"1733,63629-3371-04 ",.02)
 ;;63629-3371-04
 ;;9002226.02101,"1733,63629-3373-01 ",.01)
 ;;63629-3373-01
 ;;9002226.02101,"1733,63629-3373-01 ",.02)
 ;;63629-3373-01
 ;;9002226.02101,"1733,63629-3373-02 ",.01)
 ;;63629-3373-02
 ;;9002226.02101,"1733,63629-3373-02 ",.02)
 ;;63629-3373-02
 ;;9002226.02101,"1733,63629-3373-03 ",.01)
 ;;63629-3373-03
 ;;9002226.02101,"1733,63629-3373-03 ",.02)
 ;;63629-3373-03
 ;;9002226.02101,"1733,63629-3373-04 ",.01)
 ;;63629-3373-04
 ;;9002226.02101,"1733,63629-3373-04 ",.02)
 ;;63629-3373-04
 ;;9002226.02101,"1733,63629-3374-01 ",.01)
 ;;63629-3374-01
 ;;9002226.02101,"1733,63629-3374-01 ",.02)
 ;;63629-3374-01
 ;;9002226.02101,"1733,63629-3374-02 ",.01)
 ;;63629-3374-02
 ;;9002226.02101,"1733,63629-3374-02 ",.02)
 ;;63629-3374-02
 ;;9002226.02101,"1733,63629-3374-03 ",.01)
 ;;63629-3374-03
 ;;9002226.02101,"1733,63629-3374-03 ",.02)
 ;;63629-3374-03
 ;;9002226.02101,"1733,63629-3374-04 ",.01)
 ;;63629-3374-04
 ;;9002226.02101,"1733,63629-3374-04 ",.02)
 ;;63629-3374-04
 ;;9002226.02101,"1733,63629-3376-01 ",.01)
 ;;63629-3376-01
 ;;9002226.02101,"1733,63629-3376-01 ",.02)
 ;;63629-3376-01
 ;;9002226.02101,"1733,63629-3376-02 ",.01)
 ;;63629-3376-02
