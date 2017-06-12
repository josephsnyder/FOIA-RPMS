BGP62Z20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,00185-0372-01 ",.01)
 ;;00185-0372-01
 ;;9002226.02101,"869,00185-0372-01 ",.02)
 ;;00185-0372-01
 ;;9002226.02101,"869,00185-0373-01 ",.01)
 ;;00185-0373-01
 ;;9002226.02101,"869,00185-0373-01 ",.02)
 ;;00185-0373-01
 ;;9002226.02101,"869,00185-0373-10 ",.01)
 ;;00185-0373-10
 ;;9002226.02101,"869,00185-0373-10 ",.02)
 ;;00185-0373-10
 ;;9002226.02101,"869,00185-0410-01 ",.01)
 ;;00185-0410-01
 ;;9002226.02101,"869,00185-0410-01 ",.02)
 ;;00185-0410-01
 ;;9002226.02101,"869,00185-0410-05 ",.01)
 ;;00185-0410-05
 ;;9002226.02101,"869,00185-0410-05 ",.02)
 ;;00185-0410-05
 ;;9002226.02101,"869,00185-0410-60 ",.01)
 ;;00185-0410-60
 ;;9002226.02101,"869,00185-0410-60 ",.02)
 ;;00185-0410-60
 ;;9002226.02101,"869,00185-0415-01 ",.01)
 ;;00185-0415-01
 ;;9002226.02101,"869,00185-0415-01 ",.02)
 ;;00185-0415-01
 ;;9002226.02101,"869,00185-0415-05 ",.01)
 ;;00185-0415-05
 ;;9002226.02101,"869,00185-0415-05 ",.02)
 ;;00185-0415-05
 ;;9002226.02101,"869,00185-0415-52 ",.01)
 ;;00185-0415-52
 ;;9002226.02101,"869,00185-0415-52 ",.02)
 ;;00185-0415-52
 ;;9002226.02101,"869,00185-0415-60 ",.01)
 ;;00185-0415-60
 ;;9002226.02101,"869,00185-0415-60 ",.02)
 ;;00185-0415-60
 ;;9002226.02101,"869,00185-1111-60 ",.01)
 ;;00185-1111-60
 ;;9002226.02101,"869,00185-1111-60 ",.02)
 ;;00185-1111-60
 ;;9002226.02101,"869,00187-0730-30 ",.01)
 ;;00187-0730-30
 ;;9002226.02101,"869,00187-0730-30 ",.02)
 ;;00187-0730-30
 ;;9002226.02101,"869,00187-0730-90 ",.01)
 ;;00187-0730-90
 ;;9002226.02101,"869,00187-0730-90 ",.02)
 ;;00187-0730-90
 ;;9002226.02101,"869,00187-0731-30 ",.01)
 ;;00187-0731-30
 ;;9002226.02101,"869,00187-0731-30 ",.02)
 ;;00187-0731-30
 ;;9002226.02101,"869,00187-3805-10 ",.01)
 ;;00187-3805-10
 ;;9002226.02101,"869,00187-3805-10 ",.02)
 ;;00187-3805-10
 ;;9002226.02101,"869,00187-3806-10 ",.01)
 ;;00187-3806-10
 ;;9002226.02101,"869,00187-3806-10 ",.02)
 ;;00187-3806-10
 ;;9002226.02101,"869,00187-5810-30 ",.01)
 ;;00187-5810-30
 ;;9002226.02101,"869,00187-5810-30 ",.02)
 ;;00187-5810-30
 ;;9002226.02101,"869,00187-5811-30 ",.01)
 ;;00187-5811-30
 ;;9002226.02101,"869,00187-5811-30 ",.02)
 ;;00187-5811-30
 ;;9002226.02101,"869,00187-5812-30 ",.01)
 ;;00187-5812-30
 ;;9002226.02101,"869,00187-5812-30 ",.02)
 ;;00187-5812-30
 ;;9002226.02101,"869,00228-2721-09 ",.01)
 ;;00228-2721-09
 ;;9002226.02101,"869,00228-2721-09 ",.02)
 ;;00228-2721-09
 ;;9002226.02101,"869,00228-2721-50 ",.01)
 ;;00228-2721-50
 ;;9002226.02101,"869,00228-2721-50 ",.02)
 ;;00228-2721-50
 ;;9002226.02101,"869,00228-2722-09 ",.01)
 ;;00228-2722-09
 ;;9002226.02101,"869,00228-2722-09 ",.02)
 ;;00228-2722-09
 ;;9002226.02101,"869,00228-2722-90 ",.01)
 ;;00228-2722-90
 ;;9002226.02101,"869,00228-2722-90 ",.02)
 ;;00228-2722-90
 ;;9002226.02101,"869,00228-2723-09 ",.01)
 ;;00228-2723-09
 ;;9002226.02101,"869,00228-2723-09 ",.02)
 ;;00228-2723-09
 ;;9002226.02101,"869,00228-2723-96 ",.01)
 ;;00228-2723-96
 ;;9002226.02101,"869,00228-2723-96 ",.02)
 ;;00228-2723-96
 ;;9002226.02101,"869,00228-2848-03 ",.01)
 ;;00228-2848-03
 ;;9002226.02101,"869,00228-2848-03 ",.02)
 ;;00228-2848-03
 ;;9002226.02101,"869,00228-2849-03 ",.01)
 ;;00228-2849-03
 ;;9002226.02101,"869,00228-2849-03 ",.02)
 ;;00228-2849-03
 ;;9002226.02101,"869,00228-2890-06 ",.01)
 ;;00228-2890-06
 ;;9002226.02101,"869,00228-2890-06 ",.02)
 ;;00228-2890-06
 ;;9002226.02101,"869,00228-2891-03 ",.01)
 ;;00228-2891-03
 ;;9002226.02101,"869,00228-2891-03 ",.02)
 ;;00228-2891-03
 ;;9002226.02101,"869,00228-2892-03 ",.01)
 ;;00228-2892-03
 ;;9002226.02101,"869,00228-2892-03 ",.02)
 ;;00228-2892-03
 ;;9002226.02101,"869,00247-0370-30 ",.01)
 ;;00247-0370-30
 ;;9002226.02101,"869,00247-0370-30 ",.02)
 ;;00247-0370-30
 ;;9002226.02101,"869,00247-0371-03 ",.01)
 ;;00247-0371-03
 ;;9002226.02101,"869,00247-0371-03 ",.02)
 ;;00247-0371-03
 ;;9002226.02101,"869,00247-0371-45 ",.01)
 ;;00247-0371-45
 ;;9002226.02101,"869,00247-0371-45 ",.02)
 ;;00247-0371-45
 ;;9002226.02101,"869,00247-0372-04 ",.01)
 ;;00247-0372-04
 ;;9002226.02101,"869,00247-0372-04 ",.02)
 ;;00247-0372-04
 ;;9002226.02101,"869,00247-0372-10 ",.01)
 ;;00247-0372-10
 ;;9002226.02101,"869,00247-0372-10 ",.02)
 ;;00247-0372-10
 ;;9002226.02101,"869,00247-0615-10 ",.01)
 ;;00247-0615-10
 ;;9002226.02101,"869,00247-0615-10 ",.02)
 ;;00247-0615-10
 ;;9002226.02101,"869,00247-0615-50 ",.01)
 ;;00247-0615-50
 ;;9002226.02101,"869,00247-0615-50 ",.02)
 ;;00247-0615-50
 ;;9002226.02101,"869,00247-0615-52 ",.01)
 ;;00247-0615-52
 ;;9002226.02101,"869,00247-0615-52 ",.02)
 ;;00247-0615-52
 ;;9002226.02101,"869,00247-0616-10 ",.01)
 ;;00247-0616-10
 ;;9002226.02101,"869,00247-0616-10 ",.02)
 ;;00247-0616-10
 ;;9002226.02101,"869,00247-0616-15 ",.01)
 ;;00247-0616-15
 ;;9002226.02101,"869,00247-0616-15 ",.02)
 ;;00247-0616-15
 ;;9002226.02101,"869,00247-0616-30 ",.01)
 ;;00247-0616-30
 ;;9002226.02101,"869,00247-0616-30 ",.02)
 ;;00247-0616-30
 ;;9002226.02101,"869,00247-0673-00 ",.01)
 ;;00247-0673-00
 ;;9002226.02101,"869,00247-0673-00 ",.02)
 ;;00247-0673-00
 ;;9002226.02101,"869,00247-0673-07 ",.01)
 ;;00247-0673-07
 ;;9002226.02101,"869,00247-0673-07 ",.02)
 ;;00247-0673-07
 ;;9002226.02101,"869,00247-0673-10 ",.01)
 ;;00247-0673-10
 ;;9002226.02101,"869,00247-0673-10 ",.02)
 ;;00247-0673-10
 ;;9002226.02101,"869,00247-0673-14 ",.01)
 ;;00247-0673-14
 ;;9002226.02101,"869,00247-0673-14 ",.02)
 ;;00247-0673-14
 ;;9002226.02101,"869,00247-0673-30 ",.01)
 ;;00247-0673-30
 ;;9002226.02101,"869,00247-0673-30 ",.02)
 ;;00247-0673-30
 ;;9002226.02101,"869,00247-0673-60 ",.01)
 ;;00247-0673-60
 ;;9002226.02101,"869,00247-0673-60 ",.02)
 ;;00247-0673-60
 ;;9002226.02101,"869,00247-0673-90 ",.01)
 ;;00247-0673-90
 ;;9002226.02101,"869,00247-0673-90 ",.02)
 ;;00247-0673-90
 ;;9002226.02101,"869,00247-0675-03 ",.01)
 ;;00247-0675-03
 ;;9002226.02101,"869,00247-0675-03 ",.02)
 ;;00247-0675-03
 ;;9002226.02101,"869,00247-0675-08 ",.01)
 ;;00247-0675-08
 ;;9002226.02101,"869,00247-0675-08 ",.02)
 ;;00247-0675-08
 ;;9002226.02101,"869,00247-0675-33 ",.01)
 ;;00247-0675-33
 ;;9002226.02101,"869,00247-0675-33 ",.02)
 ;;00247-0675-33
 ;;9002226.02101,"869,00247-0787-07 ",.01)
 ;;00247-0787-07
 ;;9002226.02101,"869,00247-0787-07 ",.02)
 ;;00247-0787-07
 ;;9002226.02101,"869,00247-0787-10 ",.01)
 ;;00247-0787-10
 ;;9002226.02101,"869,00247-0787-10 ",.02)
 ;;00247-0787-10
 ;;9002226.02101,"869,00247-0787-14 ",.01)
 ;;00247-0787-14
 ;;9002226.02101,"869,00247-0787-14 ",.02)
 ;;00247-0787-14
 ;;9002226.02101,"869,00247-0787-15 ",.01)
 ;;00247-0787-15
 ;;9002226.02101,"869,00247-0787-15 ",.02)
 ;;00247-0787-15
 ;;9002226.02101,"869,00247-0787-28 ",.01)
 ;;00247-0787-28
 ;;9002226.02101,"869,00247-0787-28 ",.02)
 ;;00247-0787-28
 ;;9002226.02101,"869,00247-0787-30 ",.01)
 ;;00247-0787-30
 ;;9002226.02101,"869,00247-0787-30 ",.02)
 ;;00247-0787-30
 ;;9002226.02101,"869,00247-0787-50 ",.01)
 ;;00247-0787-50
 ;;9002226.02101,"869,00247-0787-50 ",.02)
 ;;00247-0787-50
 ;;9002226.02101,"869,00247-0787-60 ",.01)
 ;;00247-0787-60
 ;;9002226.02101,"869,00247-0787-60 ",.02)
 ;;00247-0787-60
 ;;9002226.02101,"869,00247-0789-07 ",.01)
 ;;00247-0789-07
 ;;9002226.02101,"869,00247-0789-07 ",.02)
 ;;00247-0789-07
 ;;9002226.02101,"869,00247-0789-14 ",.01)
 ;;00247-0789-14
 ;;9002226.02101,"869,00247-0789-14 ",.02)
 ;;00247-0789-14
 ;;9002226.02101,"869,00247-0789-30 ",.01)
 ;;00247-0789-30
 ;;9002226.02101,"869,00247-0789-30 ",.02)
 ;;00247-0789-30
 ;;9002226.02101,"869,00247-0853-04 ",.01)
 ;;00247-0853-04
 ;;9002226.02101,"869,00247-0853-04 ",.02)
 ;;00247-0853-04
 ;;9002226.02101,"869,00247-0853-08 ",.01)
 ;;00247-0853-08
 ;;9002226.02101,"869,00247-0853-08 ",.02)
 ;;00247-0853-08
 ;;9002226.02101,"869,00247-1035-30 ",.01)
 ;;00247-1035-30
 ;;9002226.02101,"869,00247-1035-30 ",.02)
 ;;00247-1035-30
 ;;9002226.02101,"869,00247-1041-03 ",.01)
 ;;00247-1041-03
 ;;9002226.02101,"869,00247-1041-03 ",.02)
 ;;00247-1041-03
 ;;9002226.02101,"869,00247-1041-07 ",.01)
 ;;00247-1041-07
 ;;9002226.02101,"869,00247-1041-07 ",.02)
 ;;00247-1041-07
 ;;9002226.02101,"869,00247-1041-30 ",.01)
 ;;00247-1041-30
 ;;9002226.02101,"869,00247-1041-30 ",.02)
 ;;00247-1041-30
 ;;9002226.02101,"869,00247-1042-30 ",.01)
 ;;00247-1042-30
 ;;9002226.02101,"869,00247-1042-30 ",.02)
 ;;00247-1042-30
 ;;9002226.02101,"869,00247-1056-60 ",.01)
 ;;00247-1056-60
 ;;9002226.02101,"869,00247-1056-60 ",.02)
 ;;00247-1056-60
 ;;9002226.02101,"869,00247-1057-15 ",.01)
 ;;00247-1057-15
 ;;9002226.02101,"869,00247-1057-15 ",.02)
 ;;00247-1057-15
 ;;9002226.02101,"869,00247-1057-60 ",.01)
 ;;00247-1057-60
 ;;9002226.02101,"869,00247-1057-60 ",.02)
 ;;00247-1057-60
 ;;9002226.02101,"869,00247-1058-60 ",.01)
 ;;00247-1058-60
 ;;9002226.02101,"869,00247-1058-60 ",.02)
 ;;00247-1058-60
 ;;9002226.02101,"869,00247-1075-10 ",.01)
 ;;00247-1075-10
 ;;9002226.02101,"869,00247-1075-10 ",.02)
 ;;00247-1075-10
 ;;9002226.02101,"869,00247-1075-30 ",.01)
 ;;00247-1075-30
 ;;9002226.02101,"869,00247-1075-30 ",.02)
 ;;00247-1075-30
 ;;9002226.02101,"869,00247-1075-60 ",.01)
 ;;00247-1075-60
 ;;9002226.02101,"869,00247-1075-60 ",.02)
 ;;00247-1075-60
 ;;9002226.02101,"869,00247-1214-03 ",.01)
 ;;00247-1214-03
 ;;9002226.02101,"869,00247-1214-03 ",.02)
 ;;00247-1214-03
 ;;9002226.02101,"869,00247-1214-07 ",.01)
 ;;00247-1214-07
 ;;9002226.02101,"869,00247-1214-07 ",.02)
 ;;00247-1214-07
 ;;9002226.02101,"869,00247-1214-30 ",.01)
 ;;00247-1214-30
 ;;9002226.02101,"869,00247-1214-30 ",.02)
 ;;00247-1214-30
 ;;9002226.02101,"869,00247-1521-30 ",.01)
 ;;00247-1521-30
 ;;9002226.02101,"869,00247-1521-30 ",.02)
 ;;00247-1521-30
 ;;9002226.02101,"869,00247-1521-60 ",.01)
 ;;00247-1521-60
 ;;9002226.02101,"869,00247-1521-60 ",.02)
 ;;00247-1521-60
 ;;9002226.02101,"869,00247-1522-30 ",.01)
 ;;00247-1522-30
 ;;9002226.02101,"869,00247-1522-30 ",.02)
 ;;00247-1522-30
 ;;9002226.02101,"869,00247-1522-60 ",.01)
 ;;00247-1522-60
 ;;9002226.02101,"869,00247-1522-60 ",.02)
 ;;00247-1522-60
 ;;9002226.02101,"869,00247-1523-30 ",.01)
 ;;00247-1523-30
 ;;9002226.02101,"869,00247-1523-30 ",.02)
 ;;00247-1523-30
 ;;9002226.02101,"869,00247-1523-60 ",.01)
 ;;00247-1523-60
 ;;9002226.02101,"869,00247-1523-60 ",.02)
 ;;00247-1523-60
 ;;9002226.02101,"869,00247-1677-10 ",.01)
 ;;00247-1677-10
 ;;9002226.02101,"869,00247-1677-10 ",.02)
 ;;00247-1677-10
 ;;9002226.02101,"869,00247-1677-60 ",.01)
 ;;00247-1677-60
 ;;9002226.02101,"869,00247-1677-60 ",.02)
 ;;00247-1677-60
 ;;9002226.02101,"869,00247-1679-10 ",.01)
 ;;00247-1679-10
 ;;9002226.02101,"869,00247-1679-10 ",.02)
 ;;00247-1679-10
 ;;9002226.02101,"869,00247-1679-60 ",.01)
 ;;00247-1679-60
 ;;9002226.02101,"869,00247-1679-60 ",.02)
 ;;00247-1679-60
 ;;9002226.02101,"869,00247-1680-10 ",.01)
 ;;00247-1680-10
 ;;9002226.02101,"869,00247-1680-10 ",.02)
 ;;00247-1680-10
 ;;9002226.02101,"869,00247-1731-30 ",.01)
 ;;00247-1731-30
 ;;9002226.02101,"869,00247-1731-30 ",.02)
 ;;00247-1731-30
 ;;9002226.02101,"869,00247-1731-60 ",.01)
 ;;00247-1731-60
 ;;9002226.02101,"869,00247-1731-60 ",.02)
 ;;00247-1731-60
 ;;9002226.02101,"869,00247-1731-90 ",.01)
 ;;00247-1731-90
 ;;9002226.02101,"869,00247-1731-90 ",.02)
 ;;00247-1731-90
 ;;9002226.02101,"869,00247-1813-04 ",.01)
 ;;00247-1813-04
 ;;9002226.02101,"869,00247-1813-04 ",.02)
 ;;00247-1813-04
 ;;9002226.02101,"869,00247-1813-08 ",.01)
 ;;00247-1813-08
 ;;9002226.02101,"869,00247-1813-08 ",.02)
 ;;00247-1813-08
 ;;9002226.02101,"869,00247-1813-30 ",.01)
 ;;00247-1813-30
 ;;9002226.02101,"869,00247-1813-30 ",.02)
 ;;00247-1813-30
