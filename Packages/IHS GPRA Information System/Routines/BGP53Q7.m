BGP53Q7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,00185-0010-05 ",.02)
 ;;00185-0010-05
 ;;9002226.02101,"805,00185-0117-01 ",.01)
 ;;00185-0117-01
 ;;9002226.02101,"805,00185-0117-01 ",.02)
 ;;00185-0117-01
 ;;9002226.02101,"805,00185-0117-05 ",.01)
 ;;00185-0117-05
 ;;9002226.02101,"805,00185-0117-05 ",.02)
 ;;00185-0117-05
 ;;9002226.02101,"805,00185-0118-01 ",.01)
 ;;00185-0118-01
 ;;9002226.02101,"805,00185-0118-01 ",.02)
 ;;00185-0118-01
 ;;9002226.02101,"805,00185-0118-05 ",.01)
 ;;00185-0118-05
 ;;9002226.02101,"805,00185-0118-05 ",.02)
 ;;00185-0118-05
 ;;9002226.02101,"805,00185-0170-01 ",.01)
 ;;00185-0170-01
 ;;9002226.02101,"805,00185-0170-01 ",.02)
 ;;00185-0170-01
 ;;9002226.02101,"805,00185-0170-09 ",.01)
 ;;00185-0170-09
 ;;9002226.02101,"805,00185-0170-09 ",.02)
 ;;00185-0170-09
 ;;9002226.02101,"805,00185-0171-01 ",.01)
 ;;00185-0171-01
 ;;9002226.02101,"805,00185-0171-01 ",.02)
 ;;00185-0171-01
 ;;9002226.02101,"805,00185-0171-05 ",.01)
 ;;00185-0171-05
 ;;9002226.02101,"805,00185-0171-05 ",.02)
 ;;00185-0171-05
 ;;9002226.02101,"805,00185-0171-09 ",.01)
 ;;00185-0171-09
 ;;9002226.02101,"805,00185-0171-09 ",.02)
 ;;00185-0171-09
 ;;9002226.02101,"805,00185-0174-01 ",.01)
 ;;00185-0174-01
 ;;9002226.02101,"805,00185-0174-01 ",.02)
 ;;00185-0174-01
 ;;9002226.02101,"805,00185-0174-09 ",.01)
 ;;00185-0174-09
 ;;9002226.02101,"805,00185-0174-09 ",.02)
 ;;00185-0174-09
 ;;9002226.02101,"805,00185-0177-01 ",.01)
 ;;00185-0177-01
 ;;9002226.02101,"805,00185-0177-01 ",.02)
 ;;00185-0177-01
 ;;9002226.02101,"805,00185-0177-09 ",.01)
 ;;00185-0177-09
 ;;9002226.02101,"805,00185-0177-09 ",.02)
 ;;00185-0177-09
 ;;9002226.02101,"805,00185-0281-01 ",.01)
 ;;00185-0281-01
 ;;9002226.02101,"805,00185-0281-01 ",.02)
 ;;00185-0281-01
 ;;9002226.02101,"805,00185-0281-10 ",.01)
 ;;00185-0281-10
 ;;9002226.02101,"805,00185-0281-10 ",.02)
 ;;00185-0281-10
 ;;9002226.02101,"805,00185-0282-01 ",.01)
 ;;00185-0282-01
 ;;9002226.02101,"805,00185-0282-01 ",.02)
 ;;00185-0282-01
 ;;9002226.02101,"805,00185-0282-10 ",.01)
 ;;00185-0282-10
 ;;9002226.02101,"805,00185-0282-10 ",.02)
 ;;00185-0282-10
 ;;9002226.02101,"805,00185-0283-01 ",.01)
 ;;00185-0283-01
 ;;9002226.02101,"805,00185-0283-01 ",.02)
 ;;00185-0283-01
 ;;9002226.02101,"805,00185-0283-10 ",.01)
 ;;00185-0283-10
 ;;9002226.02101,"805,00185-0283-10 ",.02)
 ;;00185-0283-10
 ;;9002226.02101,"805,00185-0284-01 ",.01)
 ;;00185-0284-01
 ;;9002226.02101,"805,00185-0284-01 ",.02)
 ;;00185-0284-01
 ;;9002226.02101,"805,00185-0284-10 ",.01)
 ;;00185-0284-10
 ;;9002226.02101,"805,00185-0284-10 ",.02)
 ;;00185-0284-10
 ;;9002226.02101,"805,00185-0701-01 ",.01)
 ;;00185-0701-01
 ;;9002226.02101,"805,00185-0701-01 ",.02)
 ;;00185-0701-01
 ;;9002226.02101,"805,00185-0701-05 ",.01)
 ;;00185-0701-05
 ;;9002226.02101,"805,00185-0701-05 ",.02)
 ;;00185-0701-05
 ;;9002226.02101,"805,00185-0701-30 ",.01)
 ;;00185-0701-30
 ;;9002226.02101,"805,00185-0701-30 ",.02)
 ;;00185-0701-30
 ;;9002226.02101,"805,00185-0704-01 ",.01)
 ;;00185-0704-01
 ;;9002226.02101,"805,00185-0704-01 ",.02)
 ;;00185-0704-01
 ;;9002226.02101,"805,00185-0704-05 ",.01)
 ;;00185-0704-05
 ;;9002226.02101,"805,00185-0704-05 ",.02)
 ;;00185-0704-05
 ;;9002226.02101,"805,00185-0704-30 ",.01)
 ;;00185-0704-30
 ;;9002226.02101,"805,00185-0704-30 ",.02)
 ;;00185-0704-30
 ;;9002226.02101,"805,00185-0707-01 ",.01)
 ;;00185-0707-01
 ;;9002226.02101,"805,00185-0707-01 ",.02)
 ;;00185-0707-01
 ;;9002226.02101,"805,00185-0707-05 ",.01)
 ;;00185-0707-05
 ;;9002226.02101,"805,00185-0707-05 ",.02)
 ;;00185-0707-05
 ;;9002226.02101,"805,00185-0707-30 ",.01)
 ;;00185-0707-30
 ;;9002226.02101,"805,00185-0707-30 ",.02)
 ;;00185-0707-30
 ;;9002226.02101,"805,00185-0771-01 ",.01)
 ;;00185-0771-01
 ;;9002226.02101,"805,00185-0771-01 ",.02)
 ;;00185-0771-01
 ;;9002226.02101,"805,00185-0771-30 ",.01)
 ;;00185-0771-30
 ;;9002226.02101,"805,00185-0771-30 ",.02)
 ;;00185-0771-30
 ;;9002226.02101,"805,00185-0774-01 ",.01)
 ;;00185-0774-01
 ;;9002226.02101,"805,00185-0774-01 ",.02)
 ;;00185-0774-01
 ;;9002226.02101,"805,00185-0774-30 ",.01)
 ;;00185-0774-30
 ;;9002226.02101,"805,00185-0774-30 ",.02)
 ;;00185-0774-30
 ;;9002226.02101,"805,00186-1088-05 ",.01)
 ;;00186-1088-05
 ;;9002226.02101,"805,00186-1088-05 ",.02)
 ;;00186-1088-05
 ;;9002226.02101,"805,00186-1088-39 ",.01)
 ;;00186-1088-39
 ;;9002226.02101,"805,00186-1088-39 ",.02)
 ;;00186-1088-39
 ;;9002226.02101,"805,00186-1090-05 ",.01)
 ;;00186-1090-05
 ;;9002226.02101,"805,00186-1090-05 ",.02)
 ;;00186-1090-05
 ;;9002226.02101,"805,00186-1090-39 ",.01)
 ;;00186-1090-39
 ;;9002226.02101,"805,00186-1090-39 ",.02)
 ;;00186-1090-39
 ;;9002226.02101,"805,00186-1092-05 ",.01)
 ;;00186-1092-05
 ;;9002226.02101,"805,00186-1092-05 ",.02)
 ;;00186-1092-05
 ;;9002226.02101,"805,00186-1092-39 ",.01)
 ;;00186-1092-39
 ;;9002226.02101,"805,00186-1092-39 ",.02)
 ;;00186-1092-39
 ;;9002226.02101,"805,00186-1094-05 ",.01)
 ;;00186-1094-05
 ;;9002226.02101,"805,00186-1094-05 ",.02)
 ;;00186-1094-05
 ;;9002226.02101,"805,00186-7300-05 ",.01)
 ;;00186-7300-05
 ;;9002226.02101,"805,00186-7300-05 ",.02)
 ;;00186-7300-05
 ;;9002226.02101,"805,00186-7301-05 ",.01)
 ;;00186-7301-05
 ;;9002226.02101,"805,00186-7301-05 ",.02)
 ;;00186-7301-05
 ;;9002226.02101,"805,00186-7302-05 ",.01)
 ;;00186-7302-05
 ;;9002226.02101,"805,00186-7302-05 ",.02)
 ;;00186-7302-05
 ;;9002226.02101,"805,00186-7303-05 ",.01)
 ;;00186-7303-05
 ;;9002226.02101,"805,00186-7303-05 ",.02)
 ;;00186-7303-05
 ;;9002226.02101,"805,00228-2175-11 ",.01)
 ;;00228-2175-11
 ;;9002226.02101,"805,00228-2175-11 ",.02)
 ;;00228-2175-11
 ;;9002226.02101,"805,00228-2176-11 ",.01)
 ;;00228-2176-11
 ;;9002226.02101,"805,00228-2176-11 ",.02)
 ;;00228-2176-11
 ;;9002226.02101,"805,00228-2177-11 ",.01)
 ;;00228-2177-11
 ;;9002226.02101,"805,00228-2177-11 ",.02)
 ;;00228-2177-11
 ;;9002226.02101,"805,00228-2178-11 ",.01)
 ;;00228-2178-11
 ;;9002226.02101,"805,00228-2178-11 ",.02)
 ;;00228-2178-11
 ;;9002226.02101,"805,00228-2778-11 ",.01)
 ;;00228-2778-11
 ;;9002226.02101,"805,00228-2778-11 ",.02)
 ;;00228-2778-11
 ;;9002226.02101,"805,00228-2778-50 ",.01)
 ;;00228-2778-50
 ;;9002226.02101,"805,00228-2778-50 ",.02)
 ;;00228-2778-50
 ;;9002226.02101,"805,00228-2779-11 ",.01)
 ;;00228-2779-11
 ;;9002226.02101,"805,00228-2779-11 ",.02)
 ;;00228-2779-11
 ;;9002226.02101,"805,00228-2779-50 ",.01)
 ;;00228-2779-50
 ;;9002226.02101,"805,00228-2779-50 ",.02)
 ;;00228-2779-50
 ;;9002226.02101,"805,00228-2780-11 ",.01)
 ;;00228-2780-11
 ;;9002226.02101,"805,00228-2780-11 ",.02)
 ;;00228-2780-11
 ;;9002226.02101,"805,00228-2780-50 ",.01)
 ;;00228-2780-50
 ;;9002226.02101,"805,00228-2780-50 ",.02)
 ;;00228-2780-50
 ;;9002226.02101,"805,00228-2781-11 ",.01)
 ;;00228-2781-11
 ;;9002226.02101,"805,00228-2781-11 ",.02)
 ;;00228-2781-11
 ;;9002226.02101,"805,00228-2781-50 ",.01)
 ;;00228-2781-50
 ;;9002226.02101,"805,00228-2781-50 ",.02)
 ;;00228-2781-50
 ;;9002226.02101,"805,00245-0012-01 ",.01)
 ;;00245-0012-01
 ;;9002226.02101,"805,00245-0012-01 ",.02)
 ;;00245-0012-01
 ;;9002226.02101,"805,00245-0012-89 ",.01)
 ;;00245-0012-89
 ;;9002226.02101,"805,00245-0012-89 ",.02)
 ;;00245-0012-89
 ;;9002226.02101,"805,00245-0013-01 ",.01)
 ;;00245-0013-01
 ;;9002226.02101,"805,00245-0013-01 ",.02)
 ;;00245-0013-01
 ;;9002226.02101,"805,00245-0013-89 ",.01)
 ;;00245-0013-89
 ;;9002226.02101,"805,00245-0013-89 ",.02)
 ;;00245-0013-89
 ;;9002226.02101,"805,00245-0014-01 ",.01)
 ;;00245-0014-01
 ;;9002226.02101,"805,00245-0014-01 ",.02)
 ;;00245-0014-01
 ;;9002226.02101,"805,00245-0014-89 ",.01)
 ;;00245-0014-89
 ;;9002226.02101,"805,00245-0014-89 ",.02)
 ;;00245-0014-89
 ;;9002226.02101,"805,00245-0015-01 ",.01)
 ;;00245-0015-01
 ;;9002226.02101,"805,00245-0015-01 ",.02)
 ;;00245-0015-01
 ;;9002226.02101,"805,00245-0015-89 ",.01)
 ;;00245-0015-89
 ;;9002226.02101,"805,00245-0015-89 ",.02)
 ;;00245-0015-89
 ;;9002226.02101,"805,00245-0084-10 ",.01)
 ;;00245-0084-10
 ;;9002226.02101,"805,00245-0084-10 ",.02)
 ;;00245-0084-10
 ;;9002226.02101,"805,00245-0084-11 ",.01)
 ;;00245-0084-11
 ;;9002226.02101,"805,00245-0084-11 ",.02)
 ;;00245-0084-11
 ;;9002226.02101,"805,00245-0085-10 ",.01)
 ;;00245-0085-10
 ;;9002226.02101,"805,00245-0085-10 ",.02)
 ;;00245-0085-10
 ;;9002226.02101,"805,00245-0085-11 ",.01)
 ;;00245-0085-11
 ;;9002226.02101,"805,00245-0085-11 ",.02)
 ;;00245-0085-11
 ;;9002226.02101,"805,00245-0086-10 ",.01)
 ;;00245-0086-10
 ;;9002226.02101,"805,00245-0086-10 ",.02)
 ;;00245-0086-10
 ;;9002226.02101,"805,00245-0086-11 ",.01)
 ;;00245-0086-11
 ;;9002226.02101,"805,00245-0086-11 ",.02)
 ;;00245-0086-11
 ;;9002226.02101,"805,00245-0087-10 ",.01)
 ;;00245-0087-10
 ;;9002226.02101,"805,00245-0087-10 ",.02)
 ;;00245-0087-10
 ;;9002226.02101,"805,00245-0087-11 ",.01)
 ;;00245-0087-11
 ;;9002226.02101,"805,00245-0087-11 ",.02)
 ;;00245-0087-11
 ;;9002226.02101,"805,00247-1012-30 ",.01)
 ;;00247-1012-30
 ;;9002226.02101,"805,00247-1012-30 ",.02)
 ;;00247-1012-30
 ;;9002226.02101,"805,00247-1044-30 ",.01)
 ;;00247-1044-30
 ;;9002226.02101,"805,00247-1044-30 ",.02)
 ;;00247-1044-30
 ;;9002226.02101,"805,00247-1044-60 ",.01)
 ;;00247-1044-60
 ;;9002226.02101,"805,00247-1044-60 ",.02)
 ;;00247-1044-60
 ;;9002226.02101,"805,00247-1051-60 ",.01)
 ;;00247-1051-60
 ;;9002226.02101,"805,00247-1051-60 ",.02)
 ;;00247-1051-60
 ;;9002226.02101,"805,00247-1051-99 ",.01)
 ;;00247-1051-99
 ;;9002226.02101,"805,00247-1051-99 ",.02)
 ;;00247-1051-99
 ;;9002226.02101,"805,00247-1065-00 ",.01)
 ;;00247-1065-00
 ;;9002226.02101,"805,00247-1065-00 ",.02)
 ;;00247-1065-00
 ;;9002226.02101,"805,00247-1065-60 ",.01)
 ;;00247-1065-60
 ;;9002226.02101,"805,00247-1065-60 ",.02)
 ;;00247-1065-60
 ;;9002226.02101,"805,00247-1065-77 ",.01)
 ;;00247-1065-77
 ;;9002226.02101,"805,00247-1065-77 ",.02)
 ;;00247-1065-77
 ;;9002226.02101,"805,00247-1065-90 ",.01)
 ;;00247-1065-90
 ;;9002226.02101,"805,00247-1065-90 ",.02)
 ;;00247-1065-90
 ;;9002226.02101,"805,00247-1072-00 ",.01)
 ;;00247-1072-00
 ;;9002226.02101,"805,00247-1072-00 ",.02)
 ;;00247-1072-00
 ;;9002226.02101,"805,00247-1072-06 ",.01)
 ;;00247-1072-06
 ;;9002226.02101,"805,00247-1072-06 ",.02)
 ;;00247-1072-06
 ;;9002226.02101,"805,00247-1072-14 ",.01)
 ;;00247-1072-14
 ;;9002226.02101,"805,00247-1072-14 ",.02)
 ;;00247-1072-14
 ;;9002226.02101,"805,00247-1072-90 ",.01)
 ;;00247-1072-90
 ;;9002226.02101,"805,00247-1072-90 ",.02)
 ;;00247-1072-90
 ;;9002226.02101,"805,00247-1133-30 ",.01)
 ;;00247-1133-30
 ;;9002226.02101,"805,00247-1133-30 ",.02)
 ;;00247-1133-30
 ;;9002226.02101,"805,00247-1133-60 ",.01)
 ;;00247-1133-60
 ;;9002226.02101,"805,00247-1133-60 ",.02)
 ;;00247-1133-60
 ;;9002226.02101,"805,00247-1134-30 ",.01)
 ;;00247-1134-30
 ;;9002226.02101,"805,00247-1134-30 ",.02)
 ;;00247-1134-30
 ;;9002226.02101,"805,00247-1134-60 ",.01)
 ;;00247-1134-60
 ;;9002226.02101,"805,00247-1134-60 ",.02)
 ;;00247-1134-60
 ;;9002226.02101,"805,00247-1146-02 ",.01)
 ;;00247-1146-02
 ;;9002226.02101,"805,00247-1146-02 ",.02)
 ;;00247-1146-02
 ;;9002226.02101,"805,00247-1146-07 ",.01)
 ;;00247-1146-07
 ;;9002226.02101,"805,00247-1146-07 ",.02)
 ;;00247-1146-07
 ;;9002226.02101,"805,00247-1273-30 ",.01)
 ;;00247-1273-30
 ;;9002226.02101,"805,00247-1273-30 ",.02)
 ;;00247-1273-30
 ;;9002226.02101,"805,00247-1273-99 ",.01)
 ;;00247-1273-99
 ;;9002226.02101,"805,00247-1273-99 ",.02)
 ;;00247-1273-99
 ;;9002226.02101,"805,00247-1384-20 ",.01)
 ;;00247-1384-20
 ;;9002226.02101,"805,00247-1384-20 ",.02)
 ;;00247-1384-20
 ;;9002226.02101,"805,00247-1634-30 ",.01)
 ;;00247-1634-30
 ;;9002226.02101,"805,00247-1634-30 ",.02)
 ;;00247-1634-30
 ;;9002226.02101,"805,00247-1671-30 ",.01)
 ;;00247-1671-30
 ;;9002226.02101,"805,00247-1671-30 ",.02)
 ;;00247-1671-30
 ;;9002226.02101,"805,00247-1672-30 ",.01)
 ;;00247-1672-30
 ;;9002226.02101,"805,00247-1672-30 ",.02)
 ;;00247-1672-30
 ;;9002226.02101,"805,00247-1673-30 ",.01)
 ;;00247-1673-30
 ;;9002226.02101,"805,00247-1673-30 ",.02)
 ;;00247-1673-30
 ;;9002226.02101,"805,00247-1801-00 ",.01)
 ;;00247-1801-00
 ;;9002226.02101,"805,00247-1801-00 ",.02)
 ;;00247-1801-00
 ;;9002226.02101,"805,00247-1801-30 ",.01)
 ;;00247-1801-30
 ;;9002226.02101,"805,00247-1801-30 ",.02)
 ;;00247-1801-30
 ;;9002226.02101,"805,00247-1801-60 ",.01)
 ;;00247-1801-60
 ;;9002226.02101,"805,00247-1801-60 ",.02)
 ;;00247-1801-60
 ;;9002226.02101,"805,00247-1801-77 ",.01)
 ;;00247-1801-77
 ;;9002226.02101,"805,00247-1801-77 ",.02)
 ;;00247-1801-77
 ;;9002226.02101,"805,00247-1801-90 ",.01)
 ;;00247-1801-90
 ;;9002226.02101,"805,00247-1801-90 ",.02)
 ;;00247-1801-90
 ;;9002226.02101,"805,00247-1802-00 ",.01)
 ;;00247-1802-00
 ;;9002226.02101,"805,00247-1802-00 ",.02)
 ;;00247-1802-00
 ;;9002226.02101,"805,00247-1802-30 ",.01)
 ;;00247-1802-30
 ;;9002226.02101,"805,00247-1802-30 ",.02)
 ;;00247-1802-30
 ;;9002226.02101,"805,00247-1802-60 ",.01)
 ;;00247-1802-60
 ;;9002226.02101,"805,00247-1802-60 ",.02)
 ;;00247-1802-60
 ;;9002226.02101,"805,00247-1802-77 ",.01)
 ;;00247-1802-77
 ;;9002226.02101,"805,00247-1802-77 ",.02)
 ;;00247-1802-77
 ;;9002226.02101,"805,00247-1802-90 ",.01)
 ;;00247-1802-90
 ;;9002226.02101,"805,00247-1802-90 ",.02)
 ;;00247-1802-90
 ;;9002226.02101,"805,00247-1803-00 ",.01)
 ;;00247-1803-00
 ;;9002226.02101,"805,00247-1803-00 ",.02)
 ;;00247-1803-00
 ;;9002226.02101,"805,00247-1803-30 ",.01)
 ;;00247-1803-30
