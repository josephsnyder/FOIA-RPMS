BGP13W9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1099,00182-2632-89 ",.01)
 ;;00182-2632-89
 ;;9002226.02101,"1099,00182-2632-89 ",.02)
 ;;00182-2632-89
 ;;9002226.02101,"1099,00182-2633-89 ",.01)
 ;;00182-2633-89
 ;;9002226.02101,"1099,00182-2633-89 ",.02)
 ;;00182-2633-89
 ;;9002226.02101,"1099,00182-2634-89 ",.01)
 ;;00182-2634-89
 ;;9002226.02101,"1099,00182-2634-89 ",.02)
 ;;00182-2634-89
 ;;9002226.02101,"1099,00182-8202-00 ",.01)
 ;;00182-8202-00
 ;;9002226.02101,"1099,00182-8202-00 ",.02)
 ;;00182-8202-00
 ;;9002226.02101,"1099,00182-8202-89 ",.01)
 ;;00182-8202-89
 ;;9002226.02101,"1099,00182-8202-89 ",.02)
 ;;00182-8202-89
 ;;9002226.02101,"1099,00182-8203-00 ",.01)
 ;;00182-8203-00
 ;;9002226.02101,"1099,00182-8203-00 ",.02)
 ;;00182-8203-00
 ;;9002226.02101,"1099,00182-8203-89 ",.01)
 ;;00182-8203-89
 ;;9002226.02101,"1099,00182-8203-89 ",.02)
 ;;00182-8203-89
 ;;9002226.02101,"1099,00182-8235-00 ",.01)
 ;;00182-8235-00
 ;;9002226.02101,"1099,00182-8235-00 ",.02)
 ;;00182-8235-00
 ;;9002226.02101,"1099,00182-8235-89 ",.01)
 ;;00182-8235-89
 ;;9002226.02101,"1099,00182-8235-89 ",.02)
 ;;00182-8235-89
 ;;9002226.02101,"1099,00182-8236-00 ",.01)
 ;;00182-8236-00
 ;;9002226.02101,"1099,00182-8236-00 ",.02)
 ;;00182-8236-00
 ;;9002226.02101,"1099,00182-8236-89 ",.01)
 ;;00182-8236-89
 ;;9002226.02101,"1099,00182-8236-89 ",.02)
 ;;00182-8236-89
 ;;9002226.02101,"1099,00185-0010-01 ",.01)
 ;;00185-0010-01
 ;;9002226.02101,"1099,00185-0010-01 ",.02)
 ;;00185-0010-01
 ;;9002226.02101,"1099,00185-0010-05 ",.01)
 ;;00185-0010-05
 ;;9002226.02101,"1099,00185-0010-05 ",.02)
 ;;00185-0010-05
 ;;9002226.02101,"1099,00185-0117-01 ",.01)
 ;;00185-0117-01
 ;;9002226.02101,"1099,00185-0117-01 ",.02)
 ;;00185-0117-01
 ;;9002226.02101,"1099,00185-0117-05 ",.01)
 ;;00185-0117-05
 ;;9002226.02101,"1099,00185-0117-05 ",.02)
 ;;00185-0117-05
 ;;9002226.02101,"1099,00185-0118-01 ",.01)
 ;;00185-0118-01
 ;;9002226.02101,"1099,00185-0118-01 ",.02)
 ;;00185-0118-01
 ;;9002226.02101,"1099,00185-0118-05 ",.01)
 ;;00185-0118-05
 ;;9002226.02101,"1099,00185-0118-05 ",.02)
 ;;00185-0118-05
 ;;9002226.02101,"1099,00185-0281-01 ",.01)
 ;;00185-0281-01
 ;;9002226.02101,"1099,00185-0281-01 ",.02)
 ;;00185-0281-01
 ;;9002226.02101,"1099,00185-0281-10 ",.01)
 ;;00185-0281-10
 ;;9002226.02101,"1099,00185-0281-10 ",.02)
 ;;00185-0281-10
 ;;9002226.02101,"1099,00185-0282-01 ",.01)
 ;;00185-0282-01
 ;;9002226.02101,"1099,00185-0282-01 ",.02)
 ;;00185-0282-01
 ;;9002226.02101,"1099,00185-0282-10 ",.01)
 ;;00185-0282-10
 ;;9002226.02101,"1099,00185-0282-10 ",.02)
 ;;00185-0282-10
 ;;9002226.02101,"1099,00185-0283-01 ",.01)
 ;;00185-0283-01
 ;;9002226.02101,"1099,00185-0283-01 ",.02)
 ;;00185-0283-01
 ;;9002226.02101,"1099,00185-0283-10 ",.01)
 ;;00185-0283-10
 ;;9002226.02101,"1099,00185-0283-10 ",.02)
 ;;00185-0283-10
 ;;9002226.02101,"1099,00185-0284-01 ",.01)
 ;;00185-0284-01
 ;;9002226.02101,"1099,00185-0284-01 ",.02)
 ;;00185-0284-01
 ;;9002226.02101,"1099,00185-0284-10 ",.01)
 ;;00185-0284-10
 ;;9002226.02101,"1099,00185-0284-10 ",.02)
 ;;00185-0284-10
 ;;9002226.02101,"1099,00185-0701-01 ",.01)
 ;;00185-0701-01
 ;;9002226.02101,"1099,00185-0701-01 ",.02)
 ;;00185-0701-01
 ;;9002226.02101,"1099,00185-0701-05 ",.01)
 ;;00185-0701-05
 ;;9002226.02101,"1099,00185-0701-05 ",.02)
 ;;00185-0701-05
 ;;9002226.02101,"1099,00185-0701-30 ",.01)
 ;;00185-0701-30
 ;;9002226.02101,"1099,00185-0701-30 ",.02)
 ;;00185-0701-30
 ;;9002226.02101,"1099,00185-0704-01 ",.01)
 ;;00185-0704-01
 ;;9002226.02101,"1099,00185-0704-01 ",.02)
 ;;00185-0704-01
 ;;9002226.02101,"1099,00185-0704-05 ",.01)
 ;;00185-0704-05
 ;;9002226.02101,"1099,00185-0704-05 ",.02)
 ;;00185-0704-05
 ;;9002226.02101,"1099,00185-0704-30 ",.01)
 ;;00185-0704-30
 ;;9002226.02101,"1099,00185-0704-30 ",.02)
 ;;00185-0704-30
 ;;9002226.02101,"1099,00185-0707-01 ",.01)
 ;;00185-0707-01
 ;;9002226.02101,"1099,00185-0707-01 ",.02)
 ;;00185-0707-01
 ;;9002226.02101,"1099,00185-0707-05 ",.01)
 ;;00185-0707-05
 ;;9002226.02101,"1099,00185-0707-05 ",.02)
 ;;00185-0707-05
 ;;9002226.02101,"1099,00185-0707-30 ",.01)
 ;;00185-0707-30
 ;;9002226.02101,"1099,00185-0707-30 ",.02)
 ;;00185-0707-30
 ;;9002226.02101,"1099,00185-0771-01 ",.01)
 ;;00185-0771-01
 ;;9002226.02101,"1099,00185-0771-01 ",.02)
 ;;00185-0771-01
 ;;9002226.02101,"1099,00185-0771-30 ",.01)
 ;;00185-0771-30
 ;;9002226.02101,"1099,00185-0771-30 ",.02)
 ;;00185-0771-30
 ;;9002226.02101,"1099,00185-0774-01 ",.01)
 ;;00185-0774-01
 ;;9002226.02101,"1099,00185-0774-01 ",.02)
 ;;00185-0774-01
 ;;9002226.02101,"1099,00185-0774-30 ",.01)
 ;;00185-0774-30
 ;;9002226.02101,"1099,00185-0774-30 ",.02)
 ;;00185-0774-30
 ;;9002226.02101,"1099,00186-1088-05 ",.01)
 ;;00186-1088-05
 ;;9002226.02101,"1099,00186-1088-05 ",.02)
 ;;00186-1088-05
 ;;9002226.02101,"1099,00186-1088-39 ",.01)
 ;;00186-1088-39
 ;;9002226.02101,"1099,00186-1088-39 ",.02)
 ;;00186-1088-39
 ;;9002226.02101,"1099,00186-1090-05 ",.01)
 ;;00186-1090-05
 ;;9002226.02101,"1099,00186-1090-05 ",.02)
 ;;00186-1090-05
 ;;9002226.02101,"1099,00186-1090-39 ",.01)
 ;;00186-1090-39
 ;;9002226.02101,"1099,00186-1090-39 ",.02)
 ;;00186-1090-39
 ;;9002226.02101,"1099,00186-1090-50 ",.01)
 ;;00186-1090-50
 ;;9002226.02101,"1099,00186-1090-50 ",.02)
 ;;00186-1090-50
 ;;9002226.02101,"1099,00186-1092-05 ",.01)
 ;;00186-1092-05
 ;;9002226.02101,"1099,00186-1092-05 ",.02)
 ;;00186-1092-05
 ;;9002226.02101,"1099,00186-1092-39 ",.01)
 ;;00186-1092-39
 ;;9002226.02101,"1099,00186-1092-39 ",.02)
 ;;00186-1092-39
 ;;9002226.02101,"1099,00186-1094-05 ",.01)
 ;;00186-1094-05
 ;;9002226.02101,"1099,00186-1094-05 ",.02)
 ;;00186-1094-05
 ;;9002226.02101,"1099,00186-7300-05 ",.01)
 ;;00186-7300-05
 ;;9002226.02101,"1099,00186-7300-05 ",.02)
 ;;00186-7300-05
 ;;9002226.02101,"1099,00186-7301-05 ",.01)
 ;;00186-7301-05
 ;;9002226.02101,"1099,00186-7301-05 ",.02)
 ;;00186-7301-05
 ;;9002226.02101,"1099,00186-7302-05 ",.01)
 ;;00186-7302-05
 ;;9002226.02101,"1099,00186-7302-05 ",.02)
 ;;00186-7302-05
 ;;9002226.02101,"1099,00186-7303-05 ",.01)
 ;;00186-7303-05
 ;;9002226.02101,"1099,00186-7303-05 ",.02)
 ;;00186-7303-05
 ;;9002226.02101,"1099,00228-2175-11 ",.01)
 ;;00228-2175-11
 ;;9002226.02101,"1099,00228-2175-11 ",.02)
 ;;00228-2175-11
 ;;9002226.02101,"1099,00228-2176-11 ",.01)
 ;;00228-2176-11
 ;;9002226.02101,"1099,00228-2176-11 ",.02)
 ;;00228-2176-11
 ;;9002226.02101,"1099,00228-2177-11 ",.01)
 ;;00228-2177-11
 ;;9002226.02101,"1099,00228-2177-11 ",.02)
 ;;00228-2177-11
 ;;9002226.02101,"1099,00228-2178-11 ",.01)
 ;;00228-2178-11
 ;;9002226.02101,"1099,00228-2178-11 ",.02)
 ;;00228-2178-11
 ;;9002226.02101,"1099,00228-2358-10 ",.01)
 ;;00228-2358-10
 ;;9002226.02101,"1099,00228-2358-10 ",.02)
 ;;00228-2358-10
 ;;9002226.02101,"1099,00228-2358-50 ",.01)
 ;;00228-2358-50
 ;;9002226.02101,"1099,00228-2358-50 ",.02)
 ;;00228-2358-50
 ;;9002226.02101,"1099,00228-2358-96 ",.01)
 ;;00228-2358-96
 ;;9002226.02101,"1099,00228-2358-96 ",.02)
 ;;00228-2358-96
 ;;9002226.02101,"1099,00228-2360-10 ",.01)
 ;;00228-2360-10
 ;;9002226.02101,"1099,00228-2360-10 ",.02)
 ;;00228-2360-10
 ;;9002226.02101,"1099,00228-2650-10 ",.01)
 ;;00228-2650-10
 ;;9002226.02101,"1099,00228-2650-10 ",.02)
 ;;00228-2650-10
 ;;9002226.02101,"1099,00228-2651-10 ",.01)
 ;;00228-2651-10
 ;;9002226.02101,"1099,00228-2651-10 ",.02)
 ;;00228-2651-10
 ;;9002226.02101,"1099,00228-2652-03 ",.01)
 ;;00228-2652-03
 ;;9002226.02101,"1099,00228-2652-03 ",.02)
 ;;00228-2652-03
 ;;9002226.02101,"1099,00228-2778-11 ",.01)
 ;;00228-2778-11
 ;;9002226.02101,"1099,00228-2778-11 ",.02)
 ;;00228-2778-11
 ;;9002226.02101,"1099,00228-2778-50 ",.01)
 ;;00228-2778-50
 ;;9002226.02101,"1099,00228-2778-50 ",.02)
 ;;00228-2778-50
 ;;9002226.02101,"1099,00228-2779-11 ",.01)
 ;;00228-2779-11
 ;;9002226.02101,"1099,00228-2779-11 ",.02)
 ;;00228-2779-11
 ;;9002226.02101,"1099,00228-2779-50 ",.01)
 ;;00228-2779-50
 ;;9002226.02101,"1099,00228-2779-50 ",.02)
 ;;00228-2779-50
 ;;9002226.02101,"1099,00228-2780-11 ",.01)
 ;;00228-2780-11
 ;;9002226.02101,"1099,00228-2780-11 ",.02)
 ;;00228-2780-11
 ;;9002226.02101,"1099,00228-2780-50 ",.01)
 ;;00228-2780-50
 ;;9002226.02101,"1099,00228-2780-50 ",.02)
 ;;00228-2780-50
 ;;9002226.02101,"1099,00228-2781-11 ",.01)
 ;;00228-2781-11
 ;;9002226.02101,"1099,00228-2781-11 ",.02)
 ;;00228-2781-11
 ;;9002226.02101,"1099,00228-2781-50 ",.01)
 ;;00228-2781-50
 ;;9002226.02101,"1099,00228-2781-50 ",.02)
 ;;00228-2781-50
 ;;9002226.02101,"1099,00245-0084-10 ",.01)
 ;;00245-0084-10
 ;;9002226.02101,"1099,00245-0084-10 ",.02)
 ;;00245-0084-10
 ;;9002226.02101,"1099,00245-0084-11 ",.01)
 ;;00245-0084-11
 ;;9002226.02101,"1099,00245-0084-11 ",.02)
 ;;00245-0084-11
 ;;9002226.02101,"1099,00245-0085-10 ",.01)
 ;;00245-0085-10
 ;;9002226.02101,"1099,00245-0085-10 ",.02)
 ;;00245-0085-10
 ;;9002226.02101,"1099,00245-0085-11 ",.01)
 ;;00245-0085-11
 ;;9002226.02101,"1099,00245-0085-11 ",.02)
 ;;00245-0085-11
 ;;9002226.02101,"1099,00245-0086-10 ",.01)
 ;;00245-0086-10
 ;;9002226.02101,"1099,00245-0086-10 ",.02)
 ;;00245-0086-10
 ;;9002226.02101,"1099,00245-0086-11 ",.01)
 ;;00245-0086-11
 ;;9002226.02101,"1099,00245-0086-11 ",.02)
 ;;00245-0086-11
 ;;9002226.02101,"1099,00245-0087-10 ",.01)
 ;;00245-0087-10
 ;;9002226.02101,"1099,00245-0087-10 ",.02)
 ;;00245-0087-10
 ;;9002226.02101,"1099,00245-0087-11 ",.01)
 ;;00245-0087-11
 ;;9002226.02101,"1099,00245-0087-11 ",.02)
 ;;00245-0087-11
 ;;9002226.02101,"1099,00247-1012-00 ",.01)
 ;;00247-1012-00
 ;;9002226.02101,"1099,00247-1012-00 ",.02)
 ;;00247-1012-00
 ;;9002226.02101,"1099,00247-1050-04 ",.01)
 ;;00247-1050-04
 ;;9002226.02101,"1099,00247-1050-04 ",.02)
 ;;00247-1050-04
 ;;9002226.02101,"1099,00247-1050-30 ",.01)
 ;;00247-1050-30
 ;;9002226.02101,"1099,00247-1050-30 ",.02)
 ;;00247-1050-30
 ;;9002226.02101,"1099,00247-1050-52 ",.01)
 ;;00247-1050-52
 ;;9002226.02101,"1099,00247-1050-52 ",.02)
 ;;00247-1050-52
 ;;9002226.02101,"1099,00247-1050-59 ",.01)
 ;;00247-1050-59
 ;;9002226.02101,"1099,00247-1050-59 ",.02)
 ;;00247-1050-59
 ;;9002226.02101,"1099,00247-1050-60 ",.01)
 ;;00247-1050-60
 ;;9002226.02101,"1099,00247-1050-60 ",.02)
 ;;00247-1050-60
 ;;9002226.02101,"1099,00247-1051-00 ",.01)
 ;;00247-1051-00
 ;;9002226.02101,"1099,00247-1051-00 ",.02)
 ;;00247-1051-00
 ;;9002226.02101,"1099,00247-1051-30 ",.01)
 ;;00247-1051-30
 ;;9002226.02101,"1099,00247-1051-30 ",.02)
 ;;00247-1051-30
 ;;9002226.02101,"1099,00247-1052-30 ",.01)
 ;;00247-1052-30
 ;;9002226.02101,"1099,00247-1052-30 ",.02)
 ;;00247-1052-30
 ;;9002226.02101,"1099,00247-1052-45 ",.01)
 ;;00247-1052-45
 ;;9002226.02101,"1099,00247-1052-45 ",.02)
 ;;00247-1052-45
 ;;9002226.02101,"1099,00247-1065-30 ",.01)
 ;;00247-1065-30
 ;;9002226.02101,"1099,00247-1065-30 ",.02)
 ;;00247-1065-30
 ;;9002226.02101,"1099,00247-1072-30 ",.01)
 ;;00247-1072-30
 ;;9002226.02101,"1099,00247-1072-30 ",.02)
 ;;00247-1072-30
 ;;9002226.02101,"1099,00247-1072-60 ",.01)
 ;;00247-1072-60
 ;;9002226.02101,"1099,00247-1072-60 ",.02)
 ;;00247-1072-60
 ;;9002226.02101,"1099,00247-1119-14 ",.01)
 ;;00247-1119-14
 ;;9002226.02101,"1099,00247-1119-14 ",.02)
 ;;00247-1119-14
 ;;9002226.02101,"1099,00247-1119-30 ",.01)
 ;;00247-1119-30
 ;;9002226.02101,"1099,00247-1119-30 ",.02)
 ;;00247-1119-30
 ;;9002226.02101,"1099,00247-1119-52 ",.01)
 ;;00247-1119-52
 ;;9002226.02101,"1099,00247-1119-52 ",.02)
 ;;00247-1119-52
 ;;9002226.02101,"1099,00247-1119-60 ",.01)
 ;;00247-1119-60
 ;;9002226.02101,"1099,00247-1119-60 ",.02)
 ;;00247-1119-60
 ;;9002226.02101,"1099,00247-1120-30 ",.01)
 ;;00247-1120-30
 ;;9002226.02101,"1099,00247-1120-30 ",.02)
 ;;00247-1120-30
 ;;9002226.02101,"1099,00247-1120-60 ",.01)
 ;;00247-1120-60
 ;;9002226.02101,"1099,00247-1120-60 ",.02)
 ;;00247-1120-60
 ;;9002226.02101,"1099,00247-1121-30 ",.01)
 ;;00247-1121-30
 ;;9002226.02101,"1099,00247-1121-30 ",.02)
 ;;00247-1121-30
 ;;9002226.02101,"1099,00247-1121-60 ",.01)
 ;;00247-1121-60
 ;;9002226.02101,"1099,00247-1121-60 ",.02)
 ;;00247-1121-60
 ;;9002226.02101,"1099,00247-1122-30 ",.01)
 ;;00247-1122-30
 ;;9002226.02101,"1099,00247-1122-30 ",.02)
 ;;00247-1122-30
 ;;9002226.02101,"1099,00247-1122-60 ",.01)
 ;;00247-1122-60
 ;;9002226.02101,"1099,00247-1122-60 ",.02)
 ;;00247-1122-60
 ;;9002226.02101,"1099,00247-1123-30 ",.01)
 ;;00247-1123-30
 ;;9002226.02101,"1099,00247-1123-30 ",.02)
 ;;00247-1123-30
 ;;9002226.02101,"1099,00247-1123-60 ",.01)
 ;;00247-1123-60
 ;;9002226.02101,"1099,00247-1123-60 ",.02)
 ;;00247-1123-60