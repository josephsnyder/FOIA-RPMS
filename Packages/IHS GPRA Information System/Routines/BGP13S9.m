BGP13S9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"999,00186-1094-05 ",.01)
 ;;00186-1094-05
 ;;9002226.02101,"999,00186-1094-05 ",.02)
 ;;00186-1094-05
 ;;9002226.02101,"999,00186-7300-05 ",.01)
 ;;00186-7300-05
 ;;9002226.02101,"999,00186-7300-05 ",.02)
 ;;00186-7300-05
 ;;9002226.02101,"999,00186-7301-05 ",.01)
 ;;00186-7301-05
 ;;9002226.02101,"999,00186-7301-05 ",.02)
 ;;00186-7301-05
 ;;9002226.02101,"999,00186-7302-05 ",.01)
 ;;00186-7302-05
 ;;9002226.02101,"999,00186-7302-05 ",.02)
 ;;00186-7302-05
 ;;9002226.02101,"999,00186-7303-05 ",.01)
 ;;00186-7303-05
 ;;9002226.02101,"999,00186-7303-05 ",.02)
 ;;00186-7303-05
 ;;9002226.02101,"999,00223-2550-01 ",.01)
 ;;00223-2550-01
 ;;9002226.02101,"999,00223-2550-01 ",.02)
 ;;00223-2550-01
 ;;9002226.02101,"999,00223-2550-02 ",.01)
 ;;00223-2550-02
 ;;9002226.02101,"999,00223-2550-02 ",.02)
 ;;00223-2550-02
 ;;9002226.02101,"999,00223-2551-01 ",.01)
 ;;00223-2551-01
 ;;9002226.02101,"999,00223-2551-01 ",.02)
 ;;00223-2551-01
 ;;9002226.02101,"999,00223-2551-02 ",.01)
 ;;00223-2551-02
 ;;9002226.02101,"999,00223-2551-02 ",.02)
 ;;00223-2551-02
 ;;9002226.02101,"999,00223-2552-01 ",.01)
 ;;00223-2552-01
 ;;9002226.02101,"999,00223-2552-01 ",.02)
 ;;00223-2552-01
 ;;9002226.02101,"999,00223-2552-02 ",.01)
 ;;00223-2552-02
 ;;9002226.02101,"999,00223-2552-02 ",.02)
 ;;00223-2552-02
 ;;9002226.02101,"999,00223-2553-01 ",.01)
 ;;00223-2553-01
 ;;9002226.02101,"999,00223-2553-01 ",.02)
 ;;00223-2553-01
 ;;9002226.02101,"999,00223-2553-02 ",.01)
 ;;00223-2553-02
 ;;9002226.02101,"999,00223-2553-02 ",.02)
 ;;00223-2553-02
 ;;9002226.02101,"999,00223-2554-01 ",.01)
 ;;00223-2554-01
 ;;9002226.02101,"999,00223-2554-01 ",.02)
 ;;00223-2554-01
 ;;9002226.02101,"999,00223-2554-02 ",.01)
 ;;00223-2554-02
 ;;9002226.02101,"999,00223-2554-02 ",.02)
 ;;00223-2554-02
 ;;9002226.02101,"999,00228-2175-11 ",.01)
 ;;00228-2175-11
 ;;9002226.02101,"999,00228-2175-11 ",.02)
 ;;00228-2175-11
 ;;9002226.02101,"999,00228-2176-11 ",.01)
 ;;00228-2176-11
 ;;9002226.02101,"999,00228-2176-11 ",.02)
 ;;00228-2176-11
 ;;9002226.02101,"999,00228-2177-11 ",.01)
 ;;00228-2177-11
 ;;9002226.02101,"999,00228-2177-11 ",.02)
 ;;00228-2177-11
 ;;9002226.02101,"999,00228-2178-11 ",.01)
 ;;00228-2178-11
 ;;9002226.02101,"999,00228-2178-11 ",.02)
 ;;00228-2178-11
 ;;9002226.02101,"999,00228-2327-10 ",.01)
 ;;00228-2327-10
 ;;9002226.02101,"999,00228-2327-10 ",.02)
 ;;00228-2327-10
 ;;9002226.02101,"999,00228-2327-50 ",.01)
 ;;00228-2327-50
 ;;9002226.02101,"999,00228-2327-50 ",.02)
 ;;00228-2327-50
 ;;9002226.02101,"999,00228-2329-10 ",.01)
 ;;00228-2329-10
 ;;9002226.02101,"999,00228-2329-10 ",.02)
 ;;00228-2329-10
 ;;9002226.02101,"999,00228-2329-96 ",.01)
 ;;00228-2329-96
 ;;9002226.02101,"999,00228-2329-96 ",.02)
 ;;00228-2329-96
 ;;9002226.02101,"999,00228-2331-10 ",.01)
 ;;00228-2331-10
 ;;9002226.02101,"999,00228-2331-10 ",.02)
 ;;00228-2331-10
 ;;9002226.02101,"999,00228-2331-50 ",.01)
 ;;00228-2331-50
 ;;9002226.02101,"999,00228-2331-50 ",.02)
 ;;00228-2331-50
 ;;9002226.02101,"999,00228-2358-10 ",.01)
 ;;00228-2358-10
 ;;9002226.02101,"999,00228-2358-10 ",.02)
 ;;00228-2358-10
 ;;9002226.02101,"999,00228-2358-50 ",.01)
 ;;00228-2358-50
 ;;9002226.02101,"999,00228-2358-50 ",.02)
 ;;00228-2358-50
 ;;9002226.02101,"999,00228-2360-10 ",.01)
 ;;00228-2360-10
 ;;9002226.02101,"999,00228-2360-10 ",.02)
 ;;00228-2360-10
 ;;9002226.02101,"999,00228-2360-96 ",.01)
 ;;00228-2360-96
 ;;9002226.02101,"999,00228-2360-96 ",.02)
 ;;00228-2360-96
 ;;9002226.02101,"999,00228-2534-10 ",.01)
 ;;00228-2534-10
 ;;9002226.02101,"999,00228-2534-10 ",.02)
 ;;00228-2534-10
 ;;9002226.02101,"999,00228-2535-10 ",.01)
 ;;00228-2535-10
 ;;9002226.02101,"999,00228-2535-10 ",.02)
 ;;00228-2535-10
 ;;9002226.02101,"999,00228-2554-10 ",.01)
 ;;00228-2554-10
 ;;9002226.02101,"999,00228-2554-10 ",.02)
 ;;00228-2554-10
 ;;9002226.02101,"999,00228-2554-50 ",.01)
 ;;00228-2554-50
 ;;9002226.02101,"999,00228-2554-50 ",.02)
 ;;00228-2554-50
 ;;9002226.02101,"999,00228-2554-96 ",.01)
 ;;00228-2554-96
 ;;9002226.02101,"999,00228-2554-96 ",.02)
 ;;00228-2554-96
 ;;9002226.02101,"999,00228-2555-10 ",.01)
 ;;00228-2555-10
 ;;9002226.02101,"999,00228-2555-10 ",.02)
 ;;00228-2555-10
 ;;9002226.02101,"999,00228-2555-50 ",.01)
 ;;00228-2555-50
 ;;9002226.02101,"999,00228-2555-50 ",.02)
 ;;00228-2555-50
 ;;9002226.02101,"999,00228-2555-96 ",.01)
 ;;00228-2555-96
 ;;9002226.02101,"999,00228-2555-96 ",.02)
 ;;00228-2555-96
 ;;9002226.02101,"999,00228-2650-10 ",.01)
 ;;00228-2650-10
 ;;9002226.02101,"999,00228-2650-10 ",.02)
 ;;00228-2650-10
 ;;9002226.02101,"999,00228-2651-10 ",.01)
 ;;00228-2651-10
 ;;9002226.02101,"999,00228-2651-10 ",.02)
 ;;00228-2651-10
 ;;9002226.02101,"999,00228-2652-03 ",.01)
 ;;00228-2652-03
 ;;9002226.02101,"999,00228-2652-03 ",.02)
 ;;00228-2652-03
 ;;9002226.02101,"999,00228-2778-11 ",.01)
 ;;00228-2778-11
 ;;9002226.02101,"999,00228-2778-11 ",.02)
 ;;00228-2778-11
 ;;9002226.02101,"999,00228-2778-50 ",.01)
 ;;00228-2778-50
 ;;9002226.02101,"999,00228-2778-50 ",.02)
 ;;00228-2778-50
 ;;9002226.02101,"999,00228-2779-11 ",.01)
 ;;00228-2779-11
 ;;9002226.02101,"999,00228-2779-11 ",.02)
 ;;00228-2779-11
 ;;9002226.02101,"999,00228-2779-50 ",.01)
 ;;00228-2779-50
 ;;9002226.02101,"999,00228-2779-50 ",.02)
 ;;00228-2779-50
 ;;9002226.02101,"999,00228-2780-11 ",.01)
 ;;00228-2780-11
 ;;9002226.02101,"999,00228-2780-11 ",.02)
 ;;00228-2780-11
 ;;9002226.02101,"999,00228-2780-50 ",.01)
 ;;00228-2780-50
 ;;9002226.02101,"999,00228-2780-50 ",.02)
 ;;00228-2780-50
 ;;9002226.02101,"999,00228-2781-11 ",.01)
 ;;00228-2781-11
 ;;9002226.02101,"999,00228-2781-11 ",.02)
 ;;00228-2781-11
 ;;9002226.02101,"999,00228-2781-50 ",.01)
 ;;00228-2781-50
 ;;9002226.02101,"999,00228-2781-50 ",.02)
 ;;00228-2781-50
 ;;9002226.02101,"999,00245-0012-01 ",.01)
 ;;00245-0012-01
 ;;9002226.02101,"999,00245-0012-01 ",.02)
 ;;00245-0012-01
 ;;9002226.02101,"999,00245-0012-11 ",.01)
 ;;00245-0012-11
 ;;9002226.02101,"999,00245-0012-11 ",.02)
 ;;00245-0012-11
 ;;9002226.02101,"999,00245-0012-89 ",.01)
 ;;00245-0012-89
 ;;9002226.02101,"999,00245-0012-89 ",.02)
 ;;00245-0012-89
 ;;9002226.02101,"999,00245-0013-01 ",.01)
 ;;00245-0013-01
 ;;9002226.02101,"999,00245-0013-01 ",.02)
 ;;00245-0013-01
 ;;9002226.02101,"999,00245-0013-11 ",.01)
 ;;00245-0013-11
 ;;9002226.02101,"999,00245-0013-11 ",.02)
 ;;00245-0013-11
 ;;9002226.02101,"999,00245-0013-89 ",.01)
 ;;00245-0013-89
 ;;9002226.02101,"999,00245-0013-89 ",.02)
 ;;00245-0013-89
 ;;9002226.02101,"999,00245-0014-01 ",.01)
 ;;00245-0014-01
 ;;9002226.02101,"999,00245-0014-01 ",.02)
 ;;00245-0014-01
 ;;9002226.02101,"999,00245-0014-11 ",.01)
 ;;00245-0014-11
 ;;9002226.02101,"999,00245-0014-11 ",.02)
 ;;00245-0014-11
 ;;9002226.02101,"999,00245-0014-89 ",.01)
 ;;00245-0014-89
 ;;9002226.02101,"999,00245-0014-89 ",.02)
 ;;00245-0014-89
 ;;9002226.02101,"999,00245-0015-01 ",.01)
 ;;00245-0015-01
 ;;9002226.02101,"999,00245-0015-01 ",.02)
 ;;00245-0015-01
 ;;9002226.02101,"999,00245-0015-11 ",.01)
 ;;00245-0015-11
 ;;9002226.02101,"999,00245-0015-11 ",.02)
 ;;00245-0015-11
 ;;9002226.02101,"999,00245-0015-89 ",.01)
 ;;00245-0015-89
 ;;9002226.02101,"999,00245-0015-89 ",.02)
 ;;00245-0015-89
 ;;9002226.02101,"999,00245-0084-10 ",.01)
 ;;00245-0084-10
 ;;9002226.02101,"999,00245-0084-10 ",.02)
 ;;00245-0084-10
 ;;9002226.02101,"999,00245-0084-11 ",.01)
 ;;00245-0084-11
 ;;9002226.02101,"999,00245-0084-11 ",.02)
 ;;00245-0084-11
 ;;9002226.02101,"999,00245-0085-10 ",.01)
 ;;00245-0085-10
 ;;9002226.02101,"999,00245-0085-10 ",.02)
 ;;00245-0085-10
 ;;9002226.02101,"999,00245-0085-11 ",.01)
 ;;00245-0085-11
 ;;9002226.02101,"999,00245-0085-11 ",.02)
 ;;00245-0085-11
 ;;9002226.02101,"999,00245-0086-10 ",.01)
 ;;00245-0086-10
 ;;9002226.02101,"999,00245-0086-10 ",.02)
 ;;00245-0086-10
 ;;9002226.02101,"999,00245-0086-11 ",.01)
 ;;00245-0086-11
 ;;9002226.02101,"999,00245-0086-11 ",.02)
 ;;00245-0086-11
 ;;9002226.02101,"999,00245-0087-10 ",.01)
 ;;00245-0087-10
 ;;9002226.02101,"999,00245-0087-10 ",.02)
 ;;00245-0087-10
 ;;9002226.02101,"999,00245-0087-11 ",.01)
 ;;00245-0087-11
 ;;9002226.02101,"999,00245-0087-11 ",.02)
 ;;00245-0087-11
 ;;9002226.02101,"999,00247-1012-00 ",.01)
 ;;00247-1012-00
 ;;9002226.02101,"999,00247-1012-00 ",.02)
 ;;00247-1012-00
 ;;9002226.02101,"999,00247-1012-30 ",.01)
 ;;00247-1012-30
 ;;9002226.02101,"999,00247-1012-30 ",.02)
 ;;00247-1012-30
 ;;9002226.02101,"999,00247-1044-30 ",.01)
 ;;00247-1044-30
 ;;9002226.02101,"999,00247-1044-30 ",.02)
 ;;00247-1044-30
 ;;9002226.02101,"999,00247-1044-60 ",.01)
 ;;00247-1044-60
 ;;9002226.02101,"999,00247-1044-60 ",.02)
 ;;00247-1044-60
 ;;9002226.02101,"999,00247-1050-04 ",.01)
 ;;00247-1050-04
 ;;9002226.02101,"999,00247-1050-04 ",.02)
 ;;00247-1050-04
 ;;9002226.02101,"999,00247-1050-30 ",.01)
 ;;00247-1050-30
 ;;9002226.02101,"999,00247-1050-30 ",.02)
 ;;00247-1050-30
 ;;9002226.02101,"999,00247-1050-52 ",.01)
 ;;00247-1050-52
 ;;9002226.02101,"999,00247-1050-52 ",.02)
 ;;00247-1050-52
 ;;9002226.02101,"999,00247-1050-59 ",.01)
 ;;00247-1050-59
 ;;9002226.02101,"999,00247-1050-59 ",.02)
 ;;00247-1050-59
 ;;9002226.02101,"999,00247-1050-60 ",.01)
 ;;00247-1050-60
 ;;9002226.02101,"999,00247-1050-60 ",.02)
 ;;00247-1050-60
 ;;9002226.02101,"999,00247-1051-00 ",.01)
 ;;00247-1051-00
 ;;9002226.02101,"999,00247-1051-00 ",.02)
 ;;00247-1051-00
 ;;9002226.02101,"999,00247-1051-30 ",.01)
 ;;00247-1051-30
 ;;9002226.02101,"999,00247-1051-30 ",.02)
 ;;00247-1051-30
 ;;9002226.02101,"999,00247-1051-60 ",.01)
 ;;00247-1051-60
 ;;9002226.02101,"999,00247-1051-60 ",.02)
 ;;00247-1051-60
 ;;9002226.02101,"999,00247-1051-99 ",.01)
 ;;00247-1051-99
 ;;9002226.02101,"999,00247-1051-99 ",.02)
 ;;00247-1051-99
 ;;9002226.02101,"999,00247-1052-30 ",.01)
 ;;00247-1052-30
 ;;9002226.02101,"999,00247-1052-30 ",.02)
 ;;00247-1052-30
 ;;9002226.02101,"999,00247-1052-45 ",.01)
 ;;00247-1052-45
 ;;9002226.02101,"999,00247-1052-45 ",.02)
 ;;00247-1052-45
 ;;9002226.02101,"999,00247-1065-00 ",.01)
 ;;00247-1065-00
 ;;9002226.02101,"999,00247-1065-00 ",.02)
 ;;00247-1065-00
 ;;9002226.02101,"999,00247-1065-30 ",.01)
 ;;00247-1065-30
 ;;9002226.02101,"999,00247-1065-30 ",.02)
 ;;00247-1065-30
 ;;9002226.02101,"999,00247-1065-60 ",.01)
 ;;00247-1065-60
 ;;9002226.02101,"999,00247-1065-60 ",.02)
 ;;00247-1065-60
 ;;9002226.02101,"999,00247-1065-77 ",.01)
 ;;00247-1065-77
 ;;9002226.02101,"999,00247-1065-77 ",.02)
 ;;00247-1065-77
 ;;9002226.02101,"999,00247-1065-90 ",.01)
 ;;00247-1065-90
 ;;9002226.02101,"999,00247-1065-90 ",.02)
 ;;00247-1065-90
 ;;9002226.02101,"999,00247-1072-00 ",.01)
 ;;00247-1072-00
 ;;9002226.02101,"999,00247-1072-00 ",.02)
 ;;00247-1072-00
 ;;9002226.02101,"999,00247-1072-06 ",.01)
 ;;00247-1072-06
 ;;9002226.02101,"999,00247-1072-06 ",.02)
 ;;00247-1072-06
 ;;9002226.02101,"999,00247-1072-14 ",.01)
 ;;00247-1072-14
 ;;9002226.02101,"999,00247-1072-14 ",.02)
 ;;00247-1072-14
 ;;9002226.02101,"999,00247-1072-30 ",.01)
 ;;00247-1072-30
 ;;9002226.02101,"999,00247-1072-30 ",.02)
 ;;00247-1072-30
 ;;9002226.02101,"999,00247-1072-60 ",.01)
 ;;00247-1072-60
 ;;9002226.02101,"999,00247-1072-60 ",.02)
 ;;00247-1072-60
 ;;9002226.02101,"999,00247-1072-90 ",.01)
 ;;00247-1072-90
 ;;9002226.02101,"999,00247-1072-90 ",.02)
 ;;00247-1072-90
 ;;9002226.02101,"999,00247-1119-14 ",.01)
 ;;00247-1119-14
 ;;9002226.02101,"999,00247-1119-14 ",.02)
 ;;00247-1119-14
 ;;9002226.02101,"999,00247-1119-30 ",.01)
 ;;00247-1119-30
 ;;9002226.02101,"999,00247-1119-30 ",.02)
 ;;00247-1119-30
 ;;9002226.02101,"999,00247-1119-52 ",.01)
 ;;00247-1119-52
 ;;9002226.02101,"999,00247-1119-52 ",.02)
 ;;00247-1119-52
 ;;9002226.02101,"999,00247-1119-60 ",.01)
 ;;00247-1119-60
 ;;9002226.02101,"999,00247-1119-60 ",.02)
 ;;00247-1119-60
 ;;9002226.02101,"999,00247-1120-30 ",.01)
 ;;00247-1120-30
 ;;9002226.02101,"999,00247-1120-30 ",.02)
 ;;00247-1120-30
 ;;9002226.02101,"999,00247-1120-60 ",.01)
 ;;00247-1120-60
 ;;9002226.02101,"999,00247-1120-60 ",.02)
 ;;00247-1120-60
 ;;9002226.02101,"999,00247-1121-30 ",.01)
 ;;00247-1121-30
 ;;9002226.02101,"999,00247-1121-30 ",.02)
 ;;00247-1121-30
 ;;9002226.02101,"999,00247-1121-60 ",.01)
 ;;00247-1121-60
 ;;9002226.02101,"999,00247-1121-60 ",.02)
 ;;00247-1121-60
 ;;9002226.02101,"999,00247-1122-30 ",.01)
 ;;00247-1122-30
 ;;9002226.02101,"999,00247-1122-30 ",.02)
 ;;00247-1122-30
 ;;9002226.02101,"999,00247-1122-60 ",.01)
 ;;00247-1122-60
