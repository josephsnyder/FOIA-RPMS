BGP51Q41 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,60429-0730-30 ",.01)
 ;;60429-0730-30
 ;;9002226.02101,"1729,60429-0730-30 ",.02)
 ;;60429-0730-30
 ;;9002226.02101,"1729,60429-0730-45 ",.01)
 ;;60429-0730-45
 ;;9002226.02101,"1729,60429-0730-45 ",.02)
 ;;60429-0730-45
 ;;9002226.02101,"1729,60429-0730-90 ",.01)
 ;;60429-0730-90
 ;;9002226.02101,"1729,60429-0730-90 ",.02)
 ;;60429-0730-90
 ;;9002226.02101,"1729,60429-0731-01 ",.01)
 ;;60429-0731-01
 ;;9002226.02101,"1729,60429-0731-01 ",.02)
 ;;60429-0731-01
 ;;9002226.02101,"1729,60429-0731-10 ",.01)
 ;;60429-0731-10
 ;;9002226.02101,"1729,60429-0731-10 ",.02)
 ;;60429-0731-10
 ;;9002226.02101,"1729,60429-0731-30 ",.01)
 ;;60429-0731-30
 ;;9002226.02101,"1729,60429-0731-30 ",.02)
 ;;60429-0731-30
 ;;9002226.02101,"1729,60429-0731-45 ",.01)
 ;;60429-0731-45
 ;;9002226.02101,"1729,60429-0731-45 ",.02)
 ;;60429-0731-45
 ;;9002226.02101,"1729,60429-0731-90 ",.01)
 ;;60429-0731-90
 ;;9002226.02101,"1729,60429-0731-90 ",.02)
 ;;60429-0731-90
 ;;9002226.02101,"1729,60429-0732-10 ",.01)
 ;;60429-0732-10
 ;;9002226.02101,"1729,60429-0732-10 ",.02)
 ;;60429-0732-10
 ;;9002226.02101,"1729,60429-0732-30 ",.01)
 ;;60429-0732-30
 ;;9002226.02101,"1729,60429-0732-30 ",.02)
 ;;60429-0732-30
 ;;9002226.02101,"1729,60429-0732-90 ",.01)
 ;;60429-0732-90
 ;;9002226.02101,"1729,60429-0732-90 ",.02)
 ;;60429-0732-90
 ;;9002226.02101,"1729,60429-0733-01 ",.01)
 ;;60429-0733-01
 ;;9002226.02101,"1729,60429-0733-01 ",.02)
 ;;60429-0733-01
 ;;9002226.02101,"1729,60429-0733-10 ",.01)
 ;;60429-0733-10
 ;;9002226.02101,"1729,60429-0733-10 ",.02)
 ;;60429-0733-10
 ;;9002226.02101,"1729,60429-0733-30 ",.01)
 ;;60429-0733-30
 ;;9002226.02101,"1729,60429-0733-30 ",.02)
 ;;60429-0733-30
 ;;9002226.02101,"1729,60429-0733-45 ",.01)
 ;;60429-0733-45
 ;;9002226.02101,"1729,60429-0733-45 ",.02)
 ;;60429-0733-45
 ;;9002226.02101,"1729,60429-0733-90 ",.01)
 ;;60429-0733-90
 ;;9002226.02101,"1729,60429-0733-90 ",.02)
 ;;60429-0733-90
 ;;9002226.02101,"1729,60429-0755-10 ",.01)
 ;;60429-0755-10
 ;;9002226.02101,"1729,60429-0755-10 ",.02)
 ;;60429-0755-10
 ;;9002226.02101,"1729,60429-0755-45 ",.01)
 ;;60429-0755-45
 ;;9002226.02101,"1729,60429-0755-45 ",.02)
 ;;60429-0755-45
 ;;9002226.02101,"1729,60429-0755-90 ",.01)
 ;;60429-0755-90
 ;;9002226.02101,"1729,60429-0755-90 ",.02)
 ;;60429-0755-90
 ;;9002226.02101,"1729,60429-0756-10 ",.01)
 ;;60429-0756-10
 ;;9002226.02101,"1729,60429-0756-10 ",.02)
 ;;60429-0756-10
 ;;9002226.02101,"1729,60429-0756-18 ",.01)
 ;;60429-0756-18
 ;;9002226.02101,"1729,60429-0756-18 ",.02)
 ;;60429-0756-18
 ;;9002226.02101,"1729,60429-0756-45 ",.01)
 ;;60429-0756-45
 ;;9002226.02101,"1729,60429-0756-45 ",.02)
 ;;60429-0756-45
 ;;9002226.02101,"1729,60429-0756-90 ",.01)
 ;;60429-0756-90
 ;;9002226.02101,"1729,60429-0756-90 ",.02)
 ;;60429-0756-90
 ;;9002226.02101,"1729,60429-0757-10 ",.01)
 ;;60429-0757-10
 ;;9002226.02101,"1729,60429-0757-10 ",.02)
 ;;60429-0757-10
 ;;9002226.02101,"1729,60429-0757-18 ",.01)
 ;;60429-0757-18
 ;;9002226.02101,"1729,60429-0757-18 ",.02)
 ;;60429-0757-18
 ;;9002226.02101,"1729,60429-0757-45 ",.01)
 ;;60429-0757-45
 ;;9002226.02101,"1729,60429-0757-45 ",.02)
 ;;60429-0757-45
 ;;9002226.02101,"1729,60429-0757-90 ",.01)
 ;;60429-0757-90
 ;;9002226.02101,"1729,60429-0757-90 ",.02)
 ;;60429-0757-90
 ;;9002226.02101,"1729,60505-0003-06 ",.01)
 ;;60505-0003-06
 ;;9002226.02101,"1729,60505-0003-06 ",.02)
 ;;60505-0003-06
 ;;9002226.02101,"1729,60505-0003-09 ",.01)
 ;;60505-0003-09
 ;;9002226.02101,"1729,60505-0003-09 ",.02)
 ;;60505-0003-09
 ;;9002226.02101,"1729,60505-0004-06 ",.01)
 ;;60505-0004-06
 ;;9002226.02101,"1729,60505-0004-06 ",.02)
 ;;60505-0004-06
 ;;9002226.02101,"1729,60505-0004-09 ",.01)
 ;;60505-0004-09
 ;;9002226.02101,"1729,60505-0004-09 ",.02)
 ;;60505-0004-09
 ;;9002226.02101,"1729,60505-0005-06 ",.01)
 ;;60505-0005-06
 ;;9002226.02101,"1729,60505-0005-06 ",.02)
 ;;60505-0005-06
 ;;9002226.02101,"1729,60505-0005-09 ",.01)
 ;;60505-0005-09
 ;;9002226.02101,"1729,60505-0005-09 ",.02)
 ;;60505-0005-09
 ;;9002226.02101,"1729,60505-0006-06 ",.01)
 ;;60505-0006-06
 ;;9002226.02101,"1729,60505-0006-06 ",.02)
 ;;60505-0006-06
 ;;9002226.02101,"1729,60505-0006-09 ",.01)
 ;;60505-0006-09
 ;;9002226.02101,"1729,60505-0006-09 ",.02)
 ;;60505-0006-09
 ;;9002226.02101,"1729,60505-0049-07 ",.01)
 ;;60505-0049-07
 ;;9002226.02101,"1729,60505-0049-07 ",.02)
 ;;60505-0049-07
 ;;9002226.02101,"1729,60505-0049-09 ",.01)
 ;;60505-0049-09
 ;;9002226.02101,"1729,60505-0049-09 ",.02)
 ;;60505-0049-09
 ;;9002226.02101,"1729,60505-0050-07 ",.01)
 ;;60505-0050-07
 ;;9002226.02101,"1729,60505-0050-07 ",.02)
 ;;60505-0050-07
 ;;9002226.02101,"1729,60505-0050-09 ",.01)
 ;;60505-0050-09
 ;;9002226.02101,"1729,60505-0050-09 ",.02)
 ;;60505-0050-09
 ;;9002226.02101,"1729,60505-0051-07 ",.01)
 ;;60505-0051-07
 ;;9002226.02101,"1729,60505-0051-07 ",.02)
 ;;60505-0051-07
 ;;9002226.02101,"1729,60505-0051-09 ",.01)
 ;;60505-0051-09
 ;;9002226.02101,"1729,60505-0051-09 ",.02)
 ;;60505-0051-09
 ;;9002226.02101,"1729,60505-0052-09 ",.01)
 ;;60505-0052-09
 ;;9002226.02101,"1729,60505-0052-09 ",.02)
 ;;60505-0052-09
 ;;9002226.02101,"1729,60505-0172-00 ",.01)
 ;;60505-0172-00
 ;;9002226.02101,"1729,60505-0172-00 ",.02)
 ;;60505-0172-00
 ;;9002226.02101,"1729,60505-0172-01 ",.01)
 ;;60505-0172-01
 ;;9002226.02101,"1729,60505-0172-01 ",.02)
 ;;60505-0172-01
 ;;9002226.02101,"1729,60505-0173-00 ",.01)
 ;;60505-0173-00
 ;;9002226.02101,"1729,60505-0173-00 ",.02)
 ;;60505-0173-00
 ;;9002226.02101,"1729,60505-0173-01 ",.01)
 ;;60505-0173-01
 ;;9002226.02101,"1729,60505-0173-01 ",.02)
 ;;60505-0173-01
 ;;9002226.02101,"1729,60505-0174-00 ",.01)
 ;;60505-0174-00
 ;;9002226.02101,"1729,60505-0174-00 ",.02)
 ;;60505-0174-00
 ;;9002226.02101,"1729,60505-0174-01 ",.01)
 ;;60505-0174-01
 ;;9002226.02101,"1729,60505-0174-01 ",.02)
 ;;60505-0174-01
 ;;9002226.02101,"1729,60505-0175-00 ",.01)
 ;;60505-0175-00
 ;;9002226.02101,"1729,60505-0175-00 ",.02)
 ;;60505-0175-00
 ;;9002226.02101,"1729,60505-0175-01 ",.01)
 ;;60505-0175-01
 ;;9002226.02101,"1729,60505-0175-01 ",.02)
 ;;60505-0175-01
 ;;9002226.02101,"1729,60505-0184-00 ",.01)
 ;;60505-0184-00
 ;;9002226.02101,"1729,60505-0184-00 ",.02)
 ;;60505-0184-00
 ;;9002226.02101,"1729,60505-0185-00 ",.01)
 ;;60505-0185-00
 ;;9002226.02101,"1729,60505-0185-00 ",.02)
 ;;60505-0185-00
 ;;9002226.02101,"1729,60505-0185-01 ",.01)
 ;;60505-0185-01
 ;;9002226.02101,"1729,60505-0185-01 ",.02)
 ;;60505-0185-01
 ;;9002226.02101,"1729,60505-0185-07 ",.01)
 ;;60505-0185-07
 ;;9002226.02101,"1729,60505-0185-07 ",.02)
 ;;60505-0185-07
 ;;9002226.02101,"1729,60505-0185-09 ",.01)
 ;;60505-0185-09
 ;;9002226.02101,"1729,60505-0185-09 ",.02)
 ;;60505-0185-09
 ;;9002226.02101,"1729,60505-0186-00 ",.01)
 ;;60505-0186-00
 ;;9002226.02101,"1729,60505-0186-00 ",.02)
 ;;60505-0186-00
 ;;9002226.02101,"1729,60505-0186-01 ",.01)
 ;;60505-0186-01
 ;;9002226.02101,"1729,60505-0186-01 ",.02)
 ;;60505-0186-01
 ;;9002226.02101,"1729,60505-0186-07 ",.01)
 ;;60505-0186-07
 ;;9002226.02101,"1729,60505-0186-07 ",.02)
 ;;60505-0186-07
 ;;9002226.02101,"1729,60505-0186-09 ",.01)
 ;;60505-0186-09
 ;;9002226.02101,"1729,60505-0186-09 ",.02)
 ;;60505-0186-09
 ;;9002226.02101,"1729,60505-0187-00 ",.01)
 ;;60505-0187-00
 ;;9002226.02101,"1729,60505-0187-00 ",.02)
 ;;60505-0187-00
 ;;9002226.02101,"1729,60505-0187-01 ",.01)
 ;;60505-0187-01
 ;;9002226.02101,"1729,60505-0187-01 ",.02)
 ;;60505-0187-01
 ;;9002226.02101,"1729,60505-0187-07 ",.01)
 ;;60505-0187-07
 ;;9002226.02101,"1729,60505-0187-07 ",.02)
 ;;60505-0187-07
 ;;9002226.02101,"1729,60505-0187-09 ",.01)
 ;;60505-0187-09
 ;;9002226.02101,"1729,60505-0187-09 ",.02)
 ;;60505-0187-09
 ;;9002226.02101,"1729,60505-0188-00 ",.01)
 ;;60505-0188-00
 ;;9002226.02101,"1729,60505-0188-00 ",.02)
 ;;60505-0188-00
 ;;9002226.02101,"1729,60505-0188-01 ",.01)
 ;;60505-0188-01
 ;;9002226.02101,"1729,60505-0188-01 ",.02)
 ;;60505-0188-01
 ;;9002226.02101,"1729,60505-0189-00 ",.01)
 ;;60505-0189-00
 ;;9002226.02101,"1729,60505-0189-00 ",.02)
 ;;60505-0189-00
 ;;9002226.02101,"1729,60505-0189-01 ",.01)
 ;;60505-0189-01
 ;;9002226.02101,"1729,60505-0189-01 ",.02)
 ;;60505-0189-01
 ;;9002226.02101,"1729,60505-0189-08 ",.01)
 ;;60505-0189-08
 ;;9002226.02101,"1729,60505-0189-08 ",.02)
 ;;60505-0189-08
 ;;9002226.02101,"1729,60505-0189-09 ",.01)
 ;;60505-0189-09
 ;;9002226.02101,"1729,60505-0189-09 ",.02)
 ;;60505-0189-09
 ;;9002226.02101,"1729,60505-0205-03 ",.01)
 ;;60505-0205-03
 ;;9002226.02101,"1729,60505-0205-03 ",.02)
 ;;60505-0205-03
 ;;9002226.02101,"1729,60505-0205-07 ",.01)
 ;;60505-0205-07
 ;;9002226.02101,"1729,60505-0205-07 ",.02)
 ;;60505-0205-07
 ;;9002226.02101,"1729,60505-0206-03 ",.01)
 ;;60505-0206-03
 ;;9002226.02101,"1729,60505-0206-03 ",.02)
 ;;60505-0206-03
 ;;9002226.02101,"1729,60505-0206-07 ",.01)
 ;;60505-0206-07
 ;;9002226.02101,"1729,60505-0206-07 ",.02)
 ;;60505-0206-07
 ;;9002226.02101,"1729,60505-0207-03 ",.01)
 ;;60505-0207-03
 ;;9002226.02101,"1729,60505-0207-03 ",.02)
 ;;60505-0207-03
 ;;9002226.02101,"1729,60505-0207-07 ",.01)
 ;;60505-0207-07
 ;;9002226.02101,"1729,60505-0207-07 ",.02)
 ;;60505-0207-07
 ;;9002226.02101,"1729,60505-0208-01 ",.01)
 ;;60505-0208-01
 ;;9002226.02101,"1729,60505-0208-01 ",.02)
 ;;60505-0208-01
 ;;9002226.02101,"1729,60505-0209-01 ",.01)
 ;;60505-0209-01
 ;;9002226.02101,"1729,60505-0209-01 ",.02)
 ;;60505-0209-01
 ;;9002226.02101,"1729,60505-0265-01 ",.01)
 ;;60505-0265-01
 ;;9002226.02101,"1729,60505-0265-01 ",.02)
 ;;60505-0265-01
 ;;9002226.02101,"1729,60505-0266-01 ",.01)
 ;;60505-0266-01
 ;;9002226.02101,"1729,60505-0266-01 ",.02)
 ;;60505-0266-01
 ;;9002226.02101,"1729,60505-0266-05 ",.01)
 ;;60505-0266-05
 ;;9002226.02101,"1729,60505-0266-05 ",.02)
 ;;60505-0266-05
 ;;9002226.02101,"1729,60505-0267-01 ",.01)
 ;;60505-0267-01
 ;;9002226.02101,"1729,60505-0267-01 ",.02)
 ;;60505-0267-01
 ;;9002226.02101,"1729,60505-0267-05 ",.01)
 ;;60505-0267-05
 ;;9002226.02101,"1729,60505-0267-05 ",.02)
 ;;60505-0267-05
 ;;9002226.02101,"1729,60505-0268-01 ",.01)
 ;;60505-0268-01
 ;;9002226.02101,"1729,60505-0268-01 ",.02)
 ;;60505-0268-01
 ;;9002226.02101,"1729,60505-0268-05 ",.01)
 ;;60505-0268-05
 ;;9002226.02101,"1729,60505-0268-05 ",.02)
 ;;60505-0268-05
 ;;9002226.02101,"1729,60505-0271-01 ",.01)
 ;;60505-0271-01
 ;;9002226.02101,"1729,60505-0271-01 ",.02)
 ;;60505-0271-01
 ;;9002226.02101,"1729,60505-0272-01 ",.01)
 ;;60505-0272-01
 ;;9002226.02101,"1729,60505-0272-01 ",.02)
 ;;60505-0272-01
 ;;9002226.02101,"1729,60505-2510-02 ",.01)
 ;;60505-2510-02
 ;;9002226.02101,"1729,60505-2510-02 ",.02)
 ;;60505-2510-02
 ;;9002226.02101,"1729,60505-2510-04 ",.01)
 ;;60505-2510-04
 ;;9002226.02101,"1729,60505-2510-04 ",.02)
 ;;60505-2510-04
 ;;9002226.02101,"1729,60505-2511-02 ",.01)
 ;;60505-2511-02
 ;;9002226.02101,"1729,60505-2511-02 ",.02)
 ;;60505-2511-02
 ;;9002226.02101,"1729,60505-2511-04 ",.01)
 ;;60505-2511-04
 ;;9002226.02101,"1729,60505-2511-04 ",.02)
 ;;60505-2511-04
 ;;9002226.02101,"1729,60505-2512-02 ",.01)
 ;;60505-2512-02
 ;;9002226.02101,"1729,60505-2512-02 ",.02)
 ;;60505-2512-02
 ;;9002226.02101,"1729,60505-2512-08 ",.01)
 ;;60505-2512-08
 ;;9002226.02101,"1729,60505-2512-08 ",.02)
 ;;60505-2512-08
 ;;9002226.02101,"1729,60505-2684-08 ",.01)
 ;;60505-2684-08
 ;;9002226.02101,"1729,60505-2684-08 ",.02)
 ;;60505-2684-08
 ;;9002226.02101,"1729,60505-2684-09 ",.01)
 ;;60505-2684-09
 ;;9002226.02101,"1729,60505-2684-09 ",.02)
 ;;60505-2684-09
 ;;9002226.02101,"1729,60505-2685-01 ",.01)
 ;;60505-2685-01
 ;;9002226.02101,"1729,60505-2685-01 ",.02)
 ;;60505-2685-01
 ;;9002226.02101,"1729,60505-2685-09 ",.01)
 ;;60505-2685-09
 ;;9002226.02101,"1729,60505-2685-09 ",.02)
 ;;60505-2685-09
 ;;9002226.02101,"1729,60505-2686-09 ",.01)
 ;;60505-2686-09
 ;;9002226.02101,"1729,60505-2686-09 ",.02)
 ;;60505-2686-09
 ;;9002226.02101,"1729,60505-2688-08 ",.01)
 ;;60505-2688-08
 ;;9002226.02101,"1729,60505-2688-08 ",.02)
 ;;60505-2688-08
 ;;9002226.02101,"1729,60505-2688-09 ",.01)
 ;;60505-2688-09
 ;;9002226.02101,"1729,60505-2688-09 ",.02)
 ;;60505-2688-09
 ;;9002226.02101,"1729,60505-2875-01 ",.01)
 ;;60505-2875-01
 ;;9002226.02101,"1729,60505-2875-01 ",.02)
 ;;60505-2875-01
 ;;9002226.02101,"1729,60505-2876-00 ",.01)
 ;;60505-2876-00
 ;;9002226.02101,"1729,60505-2876-00 ",.02)
 ;;60505-2876-00
 ;;9002226.02101,"1729,60505-2876-01 ",.01)
 ;;60505-2876-01
 ;;9002226.02101,"1729,60505-2876-01 ",.02)
 ;;60505-2876-01
 ;;9002226.02101,"1729,60505-2876-05 ",.01)
 ;;60505-2876-05
 ;;9002226.02101,"1729,60505-2876-05 ",.02)
 ;;60505-2876-05
 ;;9002226.02101,"1729,60505-2877-00 ",.01)
 ;;60505-2877-00
 ;;9002226.02101,"1729,60505-2877-00 ",.02)
 ;;60505-2877-00
 ;;9002226.02101,"1729,60505-2877-01 ",.01)
 ;;60505-2877-01
 ;;9002226.02101,"1729,60505-2877-01 ",.02)
 ;;60505-2877-01
 ;;9002226.02101,"1729,60505-2877-05 ",.01)
 ;;60505-2877-05
 ;;9002226.02101,"1729,60505-2877-05 ",.02)
 ;;60505-2877-05
 ;;9002226.02101,"1729,60505-2878-00 ",.01)
 ;;60505-2878-00
 ;;9002226.02101,"1729,60505-2878-00 ",.02)
 ;;60505-2878-00
 ;;9002226.02101,"1729,60505-2878-01 ",.01)
 ;;60505-2878-01
 ;;9002226.02101,"1729,60505-2878-01 ",.02)
 ;;60505-2878-01
 ;;9002226.02101,"1729,60505-2878-05 ",.01)
 ;;60505-2878-05
 ;;9002226.02101,"1729,60505-2878-05 ",.02)
 ;;60505-2878-05
 ;;9002226.02101,"1729,60505-2915-03 ",.01)
 ;;60505-2915-03
