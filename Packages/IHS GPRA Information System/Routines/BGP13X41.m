BGP13X41 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,63304-0523-01 ",.01)
 ;;63304-0523-01
 ;;9002226.02101,"1100,63304-0523-01 ",.02)
 ;;63304-0523-01
 ;;9002226.02101,"1100,63304-0523-10 ",.01)
 ;;63304-0523-10
 ;;9002226.02101,"1100,63304-0523-10 ",.02)
 ;;63304-0523-10
 ;;9002226.02101,"1100,63304-0524-01 ",.01)
 ;;63304-0524-01
 ;;9002226.02101,"1100,63304-0524-01 ",.02)
 ;;63304-0524-01
 ;;9002226.02101,"1100,63304-0524-10 ",.01)
 ;;63304-0524-10
 ;;9002226.02101,"1100,63304-0524-10 ",.02)
 ;;63304-0524-10
 ;;9002226.02101,"1100,63304-0525-01 ",.01)
 ;;63304-0525-01
 ;;9002226.02101,"1100,63304-0525-01 ",.02)
 ;;63304-0525-01
 ;;9002226.02101,"1100,63304-0525-10 ",.01)
 ;;63304-0525-10
 ;;9002226.02101,"1100,63304-0525-10 ",.02)
 ;;63304-0525-10
 ;;9002226.02101,"1100,63304-0531-01 ",.01)
 ;;63304-0531-01
 ;;9002226.02101,"1100,63304-0531-01 ",.02)
 ;;63304-0531-01
 ;;9002226.02101,"1100,63304-0532-01 ",.01)
 ;;63304-0532-01
 ;;9002226.02101,"1100,63304-0532-01 ",.02)
 ;;63304-0532-01
 ;;9002226.02101,"1100,63304-0532-10 ",.01)
 ;;63304-0532-10
 ;;9002226.02101,"1100,63304-0532-10 ",.02)
 ;;63304-0532-10
 ;;9002226.02101,"1100,63304-0533-01 ",.01)
 ;;63304-0533-01
 ;;9002226.02101,"1100,63304-0533-01 ",.02)
 ;;63304-0533-01
 ;;9002226.02101,"1100,63304-0533-10 ",.01)
 ;;63304-0533-10
 ;;9002226.02101,"1100,63304-0533-10 ",.02)
 ;;63304-0533-10
 ;;9002226.02101,"1100,63304-0534-01 ",.01)
 ;;63304-0534-01
 ;;9002226.02101,"1100,63304-0534-01 ",.02)
 ;;63304-0534-01
 ;;9002226.02101,"1100,63304-0534-10 ",.01)
 ;;63304-0534-10
 ;;9002226.02101,"1100,63304-0534-10 ",.02)
 ;;63304-0534-10
 ;;9002226.02101,"1100,63304-0535-01 ",.01)
 ;;63304-0535-01
 ;;9002226.02101,"1100,63304-0535-01 ",.02)
 ;;63304-0535-01
 ;;9002226.02101,"1100,63304-0535-10 ",.01)
 ;;63304-0535-10
 ;;9002226.02101,"1100,63304-0535-10 ",.02)
 ;;63304-0535-10
 ;;9002226.02101,"1100,63304-0536-01 ",.01)
 ;;63304-0536-01
 ;;9002226.02101,"1100,63304-0536-01 ",.02)
 ;;63304-0536-01
 ;;9002226.02101,"1100,63304-0536-05 ",.01)
 ;;63304-0536-05
 ;;9002226.02101,"1100,63304-0536-05 ",.02)
 ;;63304-0536-05
 ;;9002226.02101,"1100,63304-0537-01 ",.01)
 ;;63304-0537-01
 ;;9002226.02101,"1100,63304-0537-01 ",.02)
 ;;63304-0537-01
 ;;9002226.02101,"1100,63304-0537-05 ",.01)
 ;;63304-0537-05
 ;;9002226.02101,"1100,63304-0537-05 ",.02)
 ;;63304-0537-05
 ;;9002226.02101,"1100,63304-0538-01 ",.01)
 ;;63304-0538-01
 ;;9002226.02101,"1100,63304-0538-01 ",.02)
 ;;63304-0538-01
 ;;9002226.02101,"1100,63304-0538-05 ",.01)
 ;;63304-0538-05
 ;;9002226.02101,"1100,63304-0538-05 ",.02)
 ;;63304-0538-05
 ;;9002226.02101,"1100,63304-0548-90 ",.01)
 ;;63304-0548-90
 ;;9002226.02101,"1100,63304-0548-90 ",.02)
 ;;63304-0548-90
 ;;9002226.02101,"1100,63304-0549-90 ",.01)
 ;;63304-0549-90
 ;;9002226.02101,"1100,63304-0549-90 ",.02)
 ;;63304-0549-90
 ;;9002226.02101,"1100,63304-0550-90 ",.01)
 ;;63304-0550-90
 ;;9002226.02101,"1100,63304-0550-90 ",.02)
 ;;63304-0550-90
 ;;9002226.02101,"1100,63304-0551-90 ",.01)
 ;;63304-0551-90
 ;;9002226.02101,"1100,63304-0551-90 ",.02)
 ;;63304-0551-90
 ;;9002226.02101,"1100,63304-0599-01 ",.01)
 ;;63304-0599-01
 ;;9002226.02101,"1100,63304-0599-01 ",.02)
 ;;63304-0599-01
 ;;9002226.02101,"1100,63304-0736-01 ",.01)
 ;;63304-0736-01
 ;;9002226.02101,"1100,63304-0736-01 ",.02)
 ;;63304-0736-01
 ;;9002226.02101,"1100,63304-0736-05 ",.01)
 ;;63304-0736-05
 ;;9002226.02101,"1100,63304-0736-05 ",.02)
 ;;63304-0736-05
 ;;9002226.02101,"1100,63304-0736-90 ",.01)
 ;;63304-0736-90
 ;;9002226.02101,"1100,63304-0736-90 ",.02)
 ;;63304-0736-90
 ;;9002226.02101,"1100,63304-0737-01 ",.01)
 ;;63304-0737-01
 ;;9002226.02101,"1100,63304-0737-01 ",.02)
 ;;63304-0737-01
 ;;9002226.02101,"1100,63304-0737-05 ",.01)
 ;;63304-0737-05
 ;;9002226.02101,"1100,63304-0737-05 ",.02)
 ;;63304-0737-05
 ;;9002226.02101,"1100,63304-0737-90 ",.01)
 ;;63304-0737-90
 ;;9002226.02101,"1100,63304-0737-90 ",.02)
 ;;63304-0737-90
 ;;9002226.02101,"1100,63304-0738-01 ",.01)
 ;;63304-0738-01
 ;;9002226.02101,"1100,63304-0738-01 ",.02)
 ;;63304-0738-01
 ;;9002226.02101,"1100,63304-0738-05 ",.01)
 ;;63304-0738-05
 ;;9002226.02101,"1100,63304-0738-05 ",.02)
 ;;63304-0738-05
 ;;9002226.02101,"1100,63304-0738-90 ",.01)
 ;;63304-0738-90
 ;;9002226.02101,"1100,63304-0738-90 ",.02)
 ;;63304-0738-90
 ;;9002226.02101,"1100,63304-0739-01 ",.01)
 ;;63304-0739-01
 ;;9002226.02101,"1100,63304-0739-01 ",.02)
 ;;63304-0739-01
 ;;9002226.02101,"1100,63304-0739-05 ",.01)
 ;;63304-0739-05
 ;;9002226.02101,"1100,63304-0739-05 ",.02)
 ;;63304-0739-05
 ;;9002226.02101,"1100,63304-0739-90 ",.01)
 ;;63304-0739-90
 ;;9002226.02101,"1100,63304-0739-90 ",.02)
 ;;63304-0739-90
 ;;9002226.02101,"1100,63304-0775-10 ",.01)
 ;;63304-0775-10
 ;;9002226.02101,"1100,63304-0775-10 ",.02)
 ;;63304-0775-10
 ;;9002226.02101,"1100,63304-0775-90 ",.01)
 ;;63304-0775-90
 ;;9002226.02101,"1100,63304-0775-90 ",.02)
 ;;63304-0775-90
 ;;9002226.02101,"1100,63304-0776-10 ",.01)
 ;;63304-0776-10
 ;;9002226.02101,"1100,63304-0776-10 ",.02)
 ;;63304-0776-10
 ;;9002226.02101,"1100,63304-0776-90 ",.01)
 ;;63304-0776-90
 ;;9002226.02101,"1100,63304-0776-90 ",.02)
 ;;63304-0776-90
 ;;9002226.02101,"1100,63304-0777-10 ",.01)
 ;;63304-0777-10
 ;;9002226.02101,"1100,63304-0777-10 ",.02)
 ;;63304-0777-10
 ;;9002226.02101,"1100,63304-0777-90 ",.01)
 ;;63304-0777-90
 ;;9002226.02101,"1100,63304-0777-90 ",.02)
 ;;63304-0777-90
 ;;9002226.02101,"1100,63304-0834-01 ",.01)
 ;;63304-0834-01
 ;;9002226.02101,"1100,63304-0834-01 ",.02)
 ;;63304-0834-01
 ;;9002226.02101,"1100,63304-0834-10 ",.01)
 ;;63304-0834-10
 ;;9002226.02101,"1100,63304-0834-10 ",.02)
 ;;63304-0834-10
 ;;9002226.02101,"1100,63304-0835-01 ",.01)
 ;;63304-0835-01
 ;;9002226.02101,"1100,63304-0835-01 ",.02)
 ;;63304-0835-01
 ;;9002226.02101,"1100,63304-0835-10 ",.01)
 ;;63304-0835-10
 ;;9002226.02101,"1100,63304-0835-10 ",.02)
 ;;63304-0835-10
 ;;9002226.02101,"1100,63304-0836-01 ",.01)
 ;;63304-0836-01
 ;;9002226.02101,"1100,63304-0836-01 ",.02)
 ;;63304-0836-01
 ;;9002226.02101,"1100,63304-0836-10 ",.01)
 ;;63304-0836-10
 ;;9002226.02101,"1100,63304-0836-10 ",.02)
 ;;63304-0836-10
 ;;9002226.02101,"1100,63304-0837-01 ",.01)
 ;;63304-0837-01
 ;;9002226.02101,"1100,63304-0837-01 ",.02)
 ;;63304-0837-01
 ;;9002226.02101,"1100,63304-0837-10 ",.01)
 ;;63304-0837-10
 ;;9002226.02101,"1100,63304-0837-10 ",.02)
 ;;63304-0837-10
 ;;9002226.02101,"1100,63629-1241-01 ",.01)
 ;;63629-1241-01
 ;;9002226.02101,"1100,63629-1241-01 ",.02)
 ;;63629-1241-01
 ;;9002226.02101,"1100,63629-1242-01 ",.01)
 ;;63629-1242-01
 ;;9002226.02101,"1100,63629-1242-01 ",.02)
 ;;63629-1242-01
 ;;9002226.02101,"1100,63629-1253-01 ",.01)
 ;;63629-1253-01
 ;;9002226.02101,"1100,63629-1253-01 ",.02)
 ;;63629-1253-01
 ;;9002226.02101,"1100,63629-1253-02 ",.01)
 ;;63629-1253-02
 ;;9002226.02101,"1100,63629-1253-02 ",.02)
 ;;63629-1253-02
 ;;9002226.02101,"1100,63629-1254-01 ",.01)
 ;;63629-1254-01
 ;;9002226.02101,"1100,63629-1254-01 ",.02)
 ;;63629-1254-01
 ;;9002226.02101,"1100,63629-1254-02 ",.01)
 ;;63629-1254-02
 ;;9002226.02101,"1100,63629-1254-02 ",.02)
 ;;63629-1254-02
 ;;9002226.02101,"1100,63629-1337-01 ",.01)
 ;;63629-1337-01
 ;;9002226.02101,"1100,63629-1337-01 ",.02)
 ;;63629-1337-01
 ;;9002226.02101,"1100,63629-1337-02 ",.01)
 ;;63629-1337-02
 ;;9002226.02101,"1100,63629-1337-02 ",.02)
 ;;63629-1337-02
 ;;9002226.02101,"1100,63629-1337-03 ",.01)
 ;;63629-1337-03
 ;;9002226.02101,"1100,63629-1337-03 ",.02)
 ;;63629-1337-03
 ;;9002226.02101,"1100,63629-1338-01 ",.01)
 ;;63629-1338-01
 ;;9002226.02101,"1100,63629-1338-01 ",.02)
 ;;63629-1338-01
 ;;9002226.02101,"1100,63629-1338-02 ",.01)
 ;;63629-1338-02
 ;;9002226.02101,"1100,63629-1338-02 ",.02)
 ;;63629-1338-02
 ;;9002226.02101,"1100,63629-1338-03 ",.01)
 ;;63629-1338-03
 ;;9002226.02101,"1100,63629-1338-03 ",.02)
 ;;63629-1338-03
 ;;9002226.02101,"1100,63629-1454-01 ",.01)
 ;;63629-1454-01
 ;;9002226.02101,"1100,63629-1454-01 ",.02)
 ;;63629-1454-01
 ;;9002226.02101,"1100,63629-1522-01 ",.01)
 ;;63629-1522-01
 ;;9002226.02101,"1100,63629-1522-01 ",.02)
 ;;63629-1522-01
 ;;9002226.02101,"1100,63629-1522-02 ",.01)
 ;;63629-1522-02
 ;;9002226.02101,"1100,63629-1522-02 ",.02)
 ;;63629-1522-02
 ;;9002226.02101,"1100,63629-1522-03 ",.01)
 ;;63629-1522-03
 ;;9002226.02101,"1100,63629-1522-03 ",.02)
 ;;63629-1522-03
 ;;9002226.02101,"1100,63629-1522-04 ",.01)
 ;;63629-1522-04
 ;;9002226.02101,"1100,63629-1522-04 ",.02)
 ;;63629-1522-04
 ;;9002226.02101,"1100,63629-1525-01 ",.01)
 ;;63629-1525-01
 ;;9002226.02101,"1100,63629-1525-01 ",.02)
 ;;63629-1525-01
 ;;9002226.02101,"1100,63629-1525-02 ",.01)
 ;;63629-1525-02
 ;;9002226.02101,"1100,63629-1525-02 ",.02)
 ;;63629-1525-02
 ;;9002226.02101,"1100,63629-1525-03 ",.01)
 ;;63629-1525-03
 ;;9002226.02101,"1100,63629-1525-03 ",.02)
 ;;63629-1525-03
 ;;9002226.02101,"1100,63629-1526-01 ",.01)
 ;;63629-1526-01
 ;;9002226.02101,"1100,63629-1526-01 ",.02)
 ;;63629-1526-01
 ;;9002226.02101,"1100,63629-1526-02 ",.01)
 ;;63629-1526-02
 ;;9002226.02101,"1100,63629-1526-02 ",.02)
 ;;63629-1526-02
 ;;9002226.02101,"1100,63629-1526-03 ",.01)
 ;;63629-1526-03
 ;;9002226.02101,"1100,63629-1526-03 ",.02)
 ;;63629-1526-03
 ;;9002226.02101,"1100,63629-1679-01 ",.01)
 ;;63629-1679-01
 ;;9002226.02101,"1100,63629-1679-01 ",.02)
 ;;63629-1679-01
 ;;9002226.02101,"1100,63629-1679-02 ",.01)
 ;;63629-1679-02
 ;;9002226.02101,"1100,63629-1679-02 ",.02)
 ;;63629-1679-02
 ;;9002226.02101,"1100,63629-1679-03 ",.01)
 ;;63629-1679-03
 ;;9002226.02101,"1100,63629-1679-03 ",.02)
 ;;63629-1679-03
 ;;9002226.02101,"1100,63629-1679-04 ",.01)
 ;;63629-1679-04
 ;;9002226.02101,"1100,63629-1679-04 ",.02)
 ;;63629-1679-04
 ;;9002226.02101,"1100,63629-1706-01 ",.01)
 ;;63629-1706-01
 ;;9002226.02101,"1100,63629-1706-01 ",.02)
 ;;63629-1706-01
 ;;9002226.02101,"1100,63629-1706-02 ",.01)
 ;;63629-1706-02
 ;;9002226.02101,"1100,63629-1706-02 ",.02)
 ;;63629-1706-02
 ;;9002226.02101,"1100,63629-1706-03 ",.01)
 ;;63629-1706-03
 ;;9002226.02101,"1100,63629-1706-03 ",.02)
 ;;63629-1706-03
 ;;9002226.02101,"1100,63629-1728-01 ",.01)
 ;;63629-1728-01
 ;;9002226.02101,"1100,63629-1728-01 ",.02)
 ;;63629-1728-01
 ;;9002226.02101,"1100,63629-1728-02 ",.01)
 ;;63629-1728-02
 ;;9002226.02101,"1100,63629-1728-02 ",.02)
 ;;63629-1728-02
 ;;9002226.02101,"1100,63629-1728-03 ",.01)
 ;;63629-1728-03
 ;;9002226.02101,"1100,63629-1728-03 ",.02)
 ;;63629-1728-03
 ;;9002226.02101,"1100,63629-1761-01 ",.01)
 ;;63629-1761-01
 ;;9002226.02101,"1100,63629-1761-01 ",.02)
 ;;63629-1761-01
 ;;9002226.02101,"1100,63629-1809-01 ",.01)
 ;;63629-1809-01
 ;;9002226.02101,"1100,63629-1809-01 ",.02)
 ;;63629-1809-01
 ;;9002226.02101,"1100,63629-1809-02 ",.01)
 ;;63629-1809-02
 ;;9002226.02101,"1100,63629-1809-02 ",.02)
 ;;63629-1809-02
 ;;9002226.02101,"1100,63629-2541-01 ",.01)
 ;;63629-2541-01
 ;;9002226.02101,"1100,63629-2541-01 ",.02)
 ;;63629-2541-01
 ;;9002226.02101,"1100,63629-2541-02 ",.01)
 ;;63629-2541-02
 ;;9002226.02101,"1100,63629-2541-02 ",.02)
 ;;63629-2541-02
 ;;9002226.02101,"1100,63629-2541-03 ",.01)
 ;;63629-2541-03
 ;;9002226.02101,"1100,63629-2541-03 ",.02)
 ;;63629-2541-03
 ;;9002226.02101,"1100,63629-2541-04 ",.01)
 ;;63629-2541-04
 ;;9002226.02101,"1100,63629-2541-04 ",.02)
 ;;63629-2541-04
 ;;9002226.02101,"1100,63629-2672-01 ",.01)
 ;;63629-2672-01
 ;;9002226.02101,"1100,63629-2672-01 ",.02)
 ;;63629-2672-01
 ;;9002226.02101,"1100,63629-2672-02 ",.01)
 ;;63629-2672-02
 ;;9002226.02101,"1100,63629-2672-02 ",.02)
 ;;63629-2672-02
 ;;9002226.02101,"1100,63629-2672-03 ",.01)
 ;;63629-2672-03
 ;;9002226.02101,"1100,63629-2672-03 ",.02)
 ;;63629-2672-03
 ;;9002226.02101,"1100,63629-2679-01 ",.01)
 ;;63629-2679-01
 ;;9002226.02101,"1100,63629-2679-01 ",.02)
 ;;63629-2679-01
 ;;9002226.02101,"1100,63629-2680-01 ",.01)
 ;;63629-2680-01
 ;;9002226.02101,"1100,63629-2680-01 ",.02)
 ;;63629-2680-01
 ;;9002226.02101,"1100,63629-2680-02 ",.01)
 ;;63629-2680-02
 ;;9002226.02101,"1100,63629-2680-02 ",.02)
 ;;63629-2680-02
 ;;9002226.02101,"1100,63629-2680-03 ",.01)
 ;;63629-2680-03
 ;;9002226.02101,"1100,63629-2680-03 ",.02)
 ;;63629-2680-03
 ;;9002226.02101,"1100,63629-2688-01 ",.01)
 ;;63629-2688-01
 ;;9002226.02101,"1100,63629-2688-01 ",.02)
 ;;63629-2688-01
 ;;9002226.02101,"1100,63629-2688-02 ",.01)
 ;;63629-2688-02
 ;;9002226.02101,"1100,63629-2688-02 ",.02)
 ;;63629-2688-02
 ;;9002226.02101,"1100,63629-2688-03 ",.01)
 ;;63629-2688-03
 ;;9002226.02101,"1100,63629-2688-03 ",.02)
 ;;63629-2688-03
