BGP13X18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,00245-0195-30 ",.01)
 ;;00245-0195-30
 ;;9002226.02101,"1100,00245-0195-30 ",.02)
 ;;00245-0195-30
 ;;9002226.02101,"1100,00245-0195-90 ",.01)
 ;;00245-0195-90
 ;;9002226.02101,"1100,00245-0195-90 ",.02)
 ;;00245-0195-90
 ;;9002226.02101,"1100,00247-1023-00 ",.01)
 ;;00247-1023-00
 ;;9002226.02101,"1100,00247-1023-00 ",.02)
 ;;00247-1023-00
 ;;9002226.02101,"1100,00247-1023-30 ",.01)
 ;;00247-1023-30
 ;;9002226.02101,"1100,00247-1023-30 ",.02)
 ;;00247-1023-30
 ;;9002226.02101,"1100,00247-1023-60 ",.01)
 ;;00247-1023-60
 ;;9002226.02101,"1100,00247-1023-60 ",.02)
 ;;00247-1023-60
 ;;9002226.02101,"1100,00247-1090-30 ",.01)
 ;;00247-1090-30
 ;;9002226.02101,"1100,00247-1090-30 ",.02)
 ;;00247-1090-30
 ;;9002226.02101,"1100,00247-1090-60 ",.01)
 ;;00247-1090-60
 ;;9002226.02101,"1100,00247-1090-60 ",.02)
 ;;00247-1090-60
 ;;9002226.02101,"1100,00247-1091-30 ",.01)
 ;;00247-1091-30
 ;;9002226.02101,"1100,00247-1091-30 ",.02)
 ;;00247-1091-30
 ;;9002226.02101,"1100,00247-1091-60 ",.01)
 ;;00247-1091-60
 ;;9002226.02101,"1100,00247-1091-60 ",.02)
 ;;00247-1091-60
 ;;9002226.02101,"1100,00247-1147-10 ",.01)
 ;;00247-1147-10
 ;;9002226.02101,"1100,00247-1147-10 ",.02)
 ;;00247-1147-10
 ;;9002226.02101,"1100,00247-1147-30 ",.01)
 ;;00247-1147-30
 ;;9002226.02101,"1100,00247-1147-30 ",.02)
 ;;00247-1147-30
 ;;9002226.02101,"1100,00247-1147-60 ",.01)
 ;;00247-1147-60
 ;;9002226.02101,"1100,00247-1147-60 ",.02)
 ;;00247-1147-60
 ;;9002226.02101,"1100,00247-1149-30 ",.01)
 ;;00247-1149-30
 ;;9002226.02101,"1100,00247-1149-30 ",.02)
 ;;00247-1149-30
 ;;9002226.02101,"1100,00247-1149-60 ",.01)
 ;;00247-1149-60
 ;;9002226.02101,"1100,00247-1149-60 ",.02)
 ;;00247-1149-60
 ;;9002226.02101,"1100,00247-1150-30 ",.01)
 ;;00247-1150-30
 ;;9002226.02101,"1100,00247-1150-30 ",.02)
 ;;00247-1150-30
 ;;9002226.02101,"1100,00247-1150-60 ",.01)
 ;;00247-1150-60
 ;;9002226.02101,"1100,00247-1150-60 ",.02)
 ;;00247-1150-60
 ;;9002226.02101,"1100,00247-1222-00 ",.01)
 ;;00247-1222-00
 ;;9002226.02101,"1100,00247-1222-00 ",.02)
 ;;00247-1222-00
 ;;9002226.02101,"1100,00247-1396-30 ",.01)
 ;;00247-1396-30
 ;;9002226.02101,"1100,00247-1396-30 ",.02)
 ;;00247-1396-30
 ;;9002226.02101,"1100,00310-0130-10 ",.01)
 ;;00310-0130-10
 ;;9002226.02101,"1100,00310-0130-10 ",.02)
 ;;00310-0130-10
 ;;9002226.02101,"1100,00310-0130-11 ",.01)
 ;;00310-0130-11
 ;;9002226.02101,"1100,00310-0130-11 ",.02)
 ;;00310-0130-11
 ;;9002226.02101,"1100,00310-0130-34 ",.01)
 ;;00310-0130-34
 ;;9002226.02101,"1100,00310-0130-34 ",.02)
 ;;00310-0130-34
 ;;9002226.02101,"1100,00310-0130-39 ",.01)
 ;;00310-0130-39
 ;;9002226.02101,"1100,00310-0130-39 ",.02)
 ;;00310-0130-39
 ;;9002226.02101,"1100,00310-0131-10 ",.01)
 ;;00310-0131-10
 ;;9002226.02101,"1100,00310-0131-10 ",.02)
 ;;00310-0131-10
 ;;9002226.02101,"1100,00310-0131-11 ",.01)
 ;;00310-0131-11
 ;;9002226.02101,"1100,00310-0131-11 ",.02)
 ;;00310-0131-11
 ;;9002226.02101,"1100,00310-0131-34 ",.01)
 ;;00310-0131-34
 ;;9002226.02101,"1100,00310-0131-34 ",.02)
 ;;00310-0131-34
 ;;9002226.02101,"1100,00310-0131-39 ",.01)
 ;;00310-0131-39
 ;;9002226.02101,"1100,00310-0131-39 ",.02)
 ;;00310-0131-39
 ;;9002226.02101,"1100,00310-0131-73 ",.01)
 ;;00310-0131-73
 ;;9002226.02101,"1100,00310-0131-73 ",.02)
 ;;00310-0131-73
 ;;9002226.02101,"1100,00310-0132-10 ",.01)
 ;;00310-0132-10
 ;;9002226.02101,"1100,00310-0132-10 ",.02)
 ;;00310-0132-10
 ;;9002226.02101,"1100,00310-0132-11 ",.01)
 ;;00310-0132-11
 ;;9002226.02101,"1100,00310-0132-11 ",.02)
 ;;00310-0132-11
 ;;9002226.02101,"1100,00310-0132-34 ",.01)
 ;;00310-0132-34
 ;;9002226.02101,"1100,00310-0132-34 ",.02)
 ;;00310-0132-34
 ;;9002226.02101,"1100,00310-0132-39 ",.01)
 ;;00310-0132-39
 ;;9002226.02101,"1100,00310-0132-39 ",.02)
 ;;00310-0132-39
 ;;9002226.02101,"1100,00310-0132-73 ",.01)
 ;;00310-0132-73
 ;;9002226.02101,"1100,00310-0132-73 ",.02)
 ;;00310-0132-73
 ;;9002226.02101,"1100,00310-0133-10 ",.01)
 ;;00310-0133-10
 ;;9002226.02101,"1100,00310-0133-10 ",.02)
 ;;00310-0133-10
 ;;9002226.02101,"1100,00310-0133-11 ",.01)
 ;;00310-0133-11
 ;;9002226.02101,"1100,00310-0133-11 ",.02)
 ;;00310-0133-11
 ;;9002226.02101,"1100,00310-0134-10 ",.01)
 ;;00310-0134-10
 ;;9002226.02101,"1100,00310-0134-10 ",.02)
 ;;00310-0134-10
 ;;9002226.02101,"1100,00310-0134-11 ",.01)
 ;;00310-0134-11
 ;;9002226.02101,"1100,00310-0134-11 ",.02)
 ;;00310-0134-11
 ;;9002226.02101,"1100,00310-0135-10 ",.01)
 ;;00310-0135-10
 ;;9002226.02101,"1100,00310-0135-10 ",.02)
 ;;00310-0135-10
 ;;9002226.02101,"1100,00310-0141-10 ",.01)
 ;;00310-0141-10
 ;;9002226.02101,"1100,00310-0141-10 ",.02)
 ;;00310-0141-10
 ;;9002226.02101,"1100,00310-0141-11 ",.01)
 ;;00310-0141-11
 ;;9002226.02101,"1100,00310-0141-11 ",.02)
 ;;00310-0141-11
 ;;9002226.02101,"1100,00310-0142-10 ",.01)
 ;;00310-0142-10
 ;;9002226.02101,"1100,00310-0142-10 ",.02)
 ;;00310-0142-10
 ;;9002226.02101,"1100,00310-0145-10 ",.01)
 ;;00310-0145-10
 ;;9002226.02101,"1100,00310-0145-10 ",.02)
 ;;00310-0145-10
 ;;9002226.02101,"1100,00310-0145-11 ",.01)
 ;;00310-0145-11
 ;;9002226.02101,"1100,00310-0145-11 ",.02)
 ;;00310-0145-11
 ;;9002226.02101,"1100,00378-0081-01 ",.01)
 ;;00378-0081-01
 ;;9002226.02101,"1100,00378-0081-01 ",.02)
 ;;00378-0081-01
 ;;9002226.02101,"1100,00378-0083-01 ",.01)
 ;;00378-0083-01
 ;;9002226.02101,"1100,00378-0083-01 ",.02)
 ;;00378-0083-01
 ;;9002226.02101,"1100,00378-0084-01 ",.01)
 ;;00378-0084-01
 ;;9002226.02101,"1100,00378-0084-01 ",.02)
 ;;00378-0084-01
 ;;9002226.02101,"1100,00378-0086-01 ",.01)
 ;;00378-0086-01
 ;;9002226.02101,"1100,00378-0086-01 ",.02)
 ;;00378-0086-01
 ;;9002226.02101,"1100,00378-0226-77 ",.01)
 ;;00378-0226-77
 ;;9002226.02101,"1100,00378-0226-77 ",.02)
 ;;00378-0226-77
 ;;9002226.02101,"1100,00378-0254-77 ",.01)
 ;;00378-0254-77
 ;;9002226.02101,"1100,00378-0254-77 ",.02)
 ;;00378-0254-77
 ;;9002226.02101,"1100,00378-0272-77 ",.01)
 ;;00378-0272-77
 ;;9002226.02101,"1100,00378-0272-77 ",.02)
 ;;00378-0272-77
 ;;9002226.02101,"1100,00378-0441-01 ",.01)
 ;;00378-0441-01
 ;;9002226.02101,"1100,00378-0441-01 ",.02)
 ;;00378-0441-01
 ;;9002226.02101,"1100,00378-0443-01 ",.01)
 ;;00378-0443-01
 ;;9002226.02101,"1100,00378-0443-01 ",.02)
 ;;00378-0443-01
 ;;9002226.02101,"1100,00378-0444-01 ",.01)
 ;;00378-0444-01
 ;;9002226.02101,"1100,00378-0444-01 ",.02)
 ;;00378-0444-01
 ;;9002226.02101,"1100,00378-0447-01 ",.01)
 ;;00378-0447-01
 ;;9002226.02101,"1100,00378-0447-01 ",.02)
 ;;00378-0447-01
 ;;9002226.02101,"1100,00378-0542-77 ",.01)
 ;;00378-0542-77
 ;;9002226.02101,"1100,00378-0542-77 ",.02)
 ;;00378-0542-77
 ;;9002226.02101,"1100,00378-0543-77 ",.01)
 ;;00378-0543-77
 ;;9002226.02101,"1100,00378-0543-77 ",.02)
 ;;00378-0543-77
 ;;9002226.02101,"1100,00378-0544-77 ",.01)
 ;;00378-0544-77
 ;;9002226.02101,"1100,00378-0544-77 ",.02)
 ;;00378-0544-77
 ;;9002226.02101,"1100,00378-0712-01 ",.01)
 ;;00378-0712-01
 ;;9002226.02101,"1100,00378-0712-01 ",.02)
 ;;00378-0712-01
 ;;9002226.02101,"1100,00378-0723-01 ",.01)
 ;;00378-0723-01
 ;;9002226.02101,"1100,00378-0723-01 ",.02)
 ;;00378-0723-01
 ;;9002226.02101,"1100,00378-1012-01 ",.01)
 ;;00378-1012-01
 ;;9002226.02101,"1100,00378-1012-01 ",.02)
 ;;00378-1012-01
 ;;9002226.02101,"1100,00378-1051-01 ",.01)
 ;;00378-1051-01
 ;;9002226.02101,"1100,00378-1051-01 ",.02)
 ;;00378-1051-01
 ;;9002226.02101,"1100,00378-1051-05 ",.01)
 ;;00378-1051-05
 ;;9002226.02101,"1100,00378-1051-05 ",.02)
 ;;00378-1051-05
 ;;9002226.02101,"1100,00378-1052-01 ",.01)
 ;;00378-1052-01
 ;;9002226.02101,"1100,00378-1052-01 ",.02)
 ;;00378-1052-01
 ;;9002226.02101,"1100,00378-1052-10 ",.01)
 ;;00378-1052-10
 ;;9002226.02101,"1100,00378-1052-10 ",.02)
 ;;00378-1052-10
 ;;9002226.02101,"1100,00378-1053-01 ",.01)
 ;;00378-1053-01
 ;;9002226.02101,"1100,00378-1053-01 ",.02)
 ;;00378-1053-01
 ;;9002226.02101,"1100,00378-1053-10 ",.01)
 ;;00378-1053-10
 ;;9002226.02101,"1100,00378-1053-10 ",.02)
 ;;00378-1053-10
 ;;9002226.02101,"1100,00378-1054-01 ",.01)
 ;;00378-1054-01
 ;;9002226.02101,"1100,00378-1054-01 ",.02)
 ;;00378-1054-01
 ;;9002226.02101,"1100,00378-1054-05 ",.01)
 ;;00378-1054-05
 ;;9002226.02101,"1100,00378-1054-05 ",.02)
 ;;00378-1054-05
 ;;9002226.02101,"1100,00378-1117-77 ",.01)
 ;;00378-1117-77
 ;;9002226.02101,"1100,00378-1117-77 ",.02)
 ;;00378-1117-77
 ;;9002226.02101,"1100,00378-1419-10 ",.01)
 ;;00378-1419-10
 ;;9002226.02101,"1100,00378-1419-10 ",.02)
 ;;00378-1419-10
 ;;9002226.02101,"1100,00378-1419-77 ",.01)
 ;;00378-1419-77
 ;;9002226.02101,"1100,00378-1419-77 ",.02)
 ;;00378-1419-77
 ;;9002226.02101,"1100,00378-2012-01 ",.01)
 ;;00378-2012-01
 ;;9002226.02101,"1100,00378-2012-01 ",.02)
 ;;00378-2012-01
 ;;9002226.02101,"1100,00378-2025-01 ",.01)
 ;;00378-2025-01
 ;;9002226.02101,"1100,00378-2025-01 ",.02)
 ;;00378-2025-01
 ;;9002226.02101,"1100,00378-2072-01 ",.01)
 ;;00378-2072-01
 ;;9002226.02101,"1100,00378-2072-01 ",.02)
 ;;00378-2072-01
 ;;9002226.02101,"1100,00378-2073-01 ",.01)
 ;;00378-2073-01
 ;;9002226.02101,"1100,00378-2073-01 ",.02)
 ;;00378-2073-01
 ;;9002226.02101,"1100,00378-2073-10 ",.01)
 ;;00378-2073-10
 ;;9002226.02101,"1100,00378-2073-10 ",.02)
 ;;00378-2073-10
 ;;9002226.02101,"1100,00378-2074-01 ",.01)
 ;;00378-2074-01
 ;;9002226.02101,"1100,00378-2074-01 ",.02)
 ;;00378-2074-01
 ;;9002226.02101,"1100,00378-2074-10 ",.01)
 ;;00378-2074-10
 ;;9002226.02101,"1100,00378-2074-10 ",.02)
 ;;00378-2074-10
 ;;9002226.02101,"1100,00378-2075-01 ",.01)
 ;;00378-2075-01
 ;;9002226.02101,"1100,00378-2075-01 ",.02)
 ;;00378-2075-01
 ;;9002226.02101,"1100,00378-2075-10 ",.01)
 ;;00378-2075-10
 ;;9002226.02101,"1100,00378-2075-10 ",.02)
 ;;00378-2075-10
 ;;9002226.02101,"1100,00378-2076-01 ",.01)
 ;;00378-2076-01
 ;;9002226.02101,"1100,00378-2076-01 ",.02)
 ;;00378-2076-01
 ;;9002226.02101,"1100,00378-2076-05 ",.01)
 ;;00378-2076-05
 ;;9002226.02101,"1100,00378-2076-05 ",.02)
 ;;00378-2076-05
 ;;9002226.02101,"1100,00378-2077-01 ",.01)
 ;;00378-2077-01
 ;;9002226.02101,"1100,00378-2077-01 ",.02)
 ;;00378-2077-01
 ;;9002226.02101,"1100,00378-3007-01 ",.01)
 ;;00378-3007-01
 ;;9002226.02101,"1100,00378-3007-01 ",.02)
 ;;00378-3007-01
 ;;9002226.02101,"1100,00378-3007-10 ",.01)
 ;;00378-3007-10
 ;;9002226.02101,"1100,00378-3007-10 ",.02)
 ;;00378-3007-10
 ;;9002226.02101,"1100,00378-3012-01 ",.01)
 ;;00378-3012-01
 ;;9002226.02101,"1100,00378-3012-01 ",.02)
 ;;00378-3012-01
 ;;9002226.02101,"1100,00378-3012-10 ",.01)
 ;;00378-3012-10
 ;;9002226.02101,"1100,00378-3012-10 ",.02)
 ;;00378-3012-10
 ;;9002226.02101,"1100,00378-3017-01 ",.01)
 ;;00378-3017-01
 ;;9002226.02101,"1100,00378-3017-01 ",.02)
 ;;00378-3017-01
 ;;9002226.02101,"1100,00378-3017-10 ",.01)
 ;;00378-3017-10
 ;;9002226.02101,"1100,00378-3017-10 ",.02)
 ;;00378-3017-10
 ;;9002226.02101,"1100,00378-3022-01 ",.01)
 ;;00378-3022-01
 ;;9002226.02101,"1100,00378-3022-01 ",.02)
 ;;00378-3022-01
 ;;9002226.02101,"1100,00378-3241-01 ",.01)
 ;;00378-3241-01
 ;;9002226.02101,"1100,00378-3241-01 ",.02)
 ;;00378-3241-01
 ;;9002226.02101,"1100,00378-3242-01 ",.01)
 ;;00378-3242-01
 ;;9002226.02101,"1100,00378-3242-01 ",.02)
 ;;00378-3242-01
 ;;9002226.02101,"1100,00378-3243-01 ",.01)
 ;;00378-3243-01
 ;;9002226.02101,"1100,00378-3243-01 ",.02)
 ;;00378-3243-01
 ;;9002226.02101,"1100,00378-4725-01 ",.01)
 ;;00378-4725-01
 ;;9002226.02101,"1100,00378-4725-01 ",.02)
 ;;00378-4725-01
 ;;9002226.02101,"1100,00378-4735-01 ",.01)
 ;;00378-4735-01
 ;;9002226.02101,"1100,00378-4735-01 ",.02)
 ;;00378-4735-01
 ;;9002226.02101,"1100,00378-4745-01 ",.01)
 ;;00378-4745-01
 ;;9002226.02101,"1100,00378-4745-01 ",.02)
 ;;00378-4745-01
 ;;9002226.02101,"1100,00378-4775-01 ",.01)
 ;;00378-4775-01
 ;;9002226.02101,"1100,00378-4775-01 ",.02)
 ;;00378-4775-01
 ;;9002226.02101,"1100,00440-7140-30 ",.01)
 ;;00440-7140-30
 ;;9002226.02101,"1100,00440-7140-30 ",.02)
 ;;00440-7140-30
 ;;9002226.02101,"1100,00440-7140-90 ",.01)
 ;;00440-7140-90
 ;;9002226.02101,"1100,00440-7140-90 ",.02)
 ;;00440-7140-90
 ;;9002226.02101,"1100,00440-7141-30 ",.01)
 ;;00440-7141-30
 ;;9002226.02101,"1100,00440-7141-30 ",.02)
 ;;00440-7141-30
 ;;9002226.02101,"1100,00440-7141-90 ",.01)
 ;;00440-7141-90
 ;;9002226.02101,"1100,00440-7141-90 ",.02)
 ;;00440-7141-90
 ;;9002226.02101,"1100,00440-7142-30 ",.01)
 ;;00440-7142-30
 ;;9002226.02101,"1100,00440-7142-30 ",.02)
 ;;00440-7142-30
 ;;9002226.02101,"1100,00440-7142-90 ",.01)
 ;;00440-7142-90
 ;;9002226.02101,"1100,00440-7142-90 ",.02)
 ;;00440-7142-90
