BGP7LXPC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 29, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"633,00228-2183-96 ",.02)
 ;;00228-2183-96
 ;;9002226.02101,"633,00228-2185-10 ",.01)
 ;;00228-2185-10
 ;;9002226.02101,"633,00228-2185-10 ",.02)
 ;;00228-2185-10
 ;;9002226.02101,"633,00228-2185-96 ",.01)
 ;;00228-2185-96
 ;;9002226.02101,"633,00228-2185-96 ",.02)
 ;;00228-2185-96
 ;;9002226.02101,"633,00228-2193-10 ",.01)
 ;;00228-2193-10
 ;;9002226.02101,"633,00228-2193-10 ",.02)
 ;;00228-2193-10
 ;;9002226.02101,"633,00228-2193-96 ",.01)
 ;;00228-2193-96
 ;;9002226.02101,"633,00228-2193-96 ",.02)
 ;;00228-2193-96
 ;;9002226.02101,"633,00247-1469-03 ",.01)
 ;;00247-1469-03
 ;;9002226.02101,"633,00247-1469-03 ",.02)
 ;;00247-1469-03
 ;;9002226.02101,"633,00302-1280-01 ",.01)
 ;;00302-1280-01
 ;;9002226.02101,"633,00302-1280-01 ",.02)
 ;;00302-1280-01
 ;;9002226.02101,"633,00302-1282-01 ",.01)
 ;;00302-1282-01
 ;;9002226.02101,"633,00302-1282-01 ",.02)
 ;;00302-1282-01
 ;;9002226.02101,"633,00302-2290-01 ",.01)
 ;;00302-2290-01
 ;;9002226.02101,"633,00302-2290-01 ",.02)
 ;;00302-2290-01
 ;;9002226.02101,"633,00302-2290-10 ",.01)
 ;;00302-2290-10
 ;;9002226.02101,"633,00302-2290-10 ",.02)
 ;;00302-2290-10
 ;;9002226.02101,"633,00302-2291-01 ",.01)
 ;;00302-2291-01
 ;;9002226.02101,"633,00302-2291-01 ",.02)
 ;;00302-2291-01
 ;;9002226.02101,"633,00302-2291-10 ",.01)
 ;;00302-2291-10
 ;;9002226.02101,"633,00302-2291-10 ",.02)
 ;;00302-2291-10
 ;;9002226.02101,"633,00302-2292-01 ",.01)
 ;;00302-2292-01
 ;;9002226.02101,"633,00302-2292-01 ",.02)
 ;;00302-2292-01
 ;;9002226.02101,"633,00302-2292-10 ",.01)
 ;;00302-2292-10
 ;;9002226.02101,"633,00302-2292-10 ",.02)
 ;;00302-2292-10
 ;;9002226.02101,"633,00302-3400-01 ",.01)
 ;;00302-3400-01
 ;;9002226.02101,"633,00302-3400-01 ",.02)
 ;;00302-3400-01
 ;;9002226.02101,"633,00302-3401-01 ",.01)
 ;;00302-3401-01
 ;;9002226.02101,"633,00302-3401-01 ",.02)
 ;;00302-3401-01
 ;;9002226.02101,"633,00302-3402-01 ",.01)
 ;;00302-3402-01
 ;;9002226.02101,"633,00302-3402-01 ",.02)
 ;;00302-3402-01
 ;;9002226.02101,"633,00302-3670-01 ",.01)
 ;;00302-3670-01
 ;;9002226.02101,"633,00302-3670-01 ",.02)
 ;;00302-3670-01
 ;;9002226.02101,"633,00302-3671-01 ",.01)
 ;;00302-3671-01
 ;;9002226.02101,"633,00302-3671-01 ",.02)
 ;;00302-3671-01
 ;;9002226.02101,"633,00302-3671-05 ",.01)
 ;;00302-3671-05
 ;;9002226.02101,"633,00302-3671-05 ",.02)
 ;;00302-3671-05
 ;;9002226.02101,"633,00304-0114-00 ",.01)
 ;;00304-0114-00
 ;;9002226.02101,"633,00304-0114-00 ",.02)
 ;;00304-0114-00
 ;;9002226.02101,"633,00304-0116-00 ",.01)
 ;;00304-0116-00
 ;;9002226.02101,"633,00304-0116-00 ",.02)
 ;;00304-0116-00
 ;;9002226.02101,"633,00304-0154-00 ",.01)
 ;;00304-0154-00
 ;;9002226.02101,"633,00304-0154-00 ",.02)
 ;;00304-0154-00
 ;;9002226.02101,"633,00304-0154-01 ",.01)
 ;;00304-0154-01
 ;;9002226.02101,"633,00304-0154-01 ",.02)
 ;;00304-0154-01
 ;;9002226.02101,"633,00304-0717-00 ",.01)
 ;;00304-0717-00
 ;;9002226.02101,"633,00304-0717-00 ",.02)
 ;;00304-0717-00
 ;;9002226.02101,"633,00339-5106-12 ",.01)
 ;;00339-5106-12
 ;;9002226.02101,"633,00339-5106-12 ",.02)
 ;;00339-5106-12
 ;;9002226.02101,"633,00339-5107-12 ",.01)
 ;;00339-5107-12
 ;;9002226.02101,"633,00339-5107-12 ",.02)
 ;;00339-5107-12
 ;;9002226.02101,"633,00339-5109-12 ",.01)
 ;;00339-5109-12
 ;;9002226.02101,"633,00339-5109-12 ",.02)
 ;;00339-5109-12
 ;;9002226.02101,"633,00349-2047-01 ",.01)
 ;;00349-2047-01
 ;;9002226.02101,"633,00349-2047-01 ",.02)
 ;;00349-2047-01
 ;;9002226.02101,"633,00349-2047-10 ",.01)
 ;;00349-2047-10
 ;;9002226.02101,"633,00349-2047-10 ",.02)
 ;;00349-2047-10
 ;;9002226.02101,"633,00349-2075-01 ",.01)
 ;;00349-2075-01
 ;;9002226.02101,"633,00349-2075-01 ",.02)
 ;;00349-2075-01
 ;;9002226.02101,"633,00349-2075-05 ",.01)
 ;;00349-2075-05
 ;;9002226.02101,"633,00349-2075-05 ",.02)
 ;;00349-2075-05
 ;;9002226.02101,"633,00349-2155-01 ",.01)
 ;;00349-2155-01
 ;;9002226.02101,"633,00349-2155-01 ",.02)
 ;;00349-2155-01
 ;;9002226.02101,"633,00349-2155-05 ",.01)
 ;;00349-2155-05
 ;;9002226.02101,"633,00349-2155-05 ",.02)
 ;;00349-2155-05
 ;;9002226.02101,"633,00349-2310-01 ",.01)
 ;;00349-2310-01
 ;;9002226.02101,"633,00349-2310-01 ",.02)
 ;;00349-2310-01
 ;;9002226.02101,"633,00349-2310-10 ",.01)
 ;;00349-2310-10
 ;;9002226.02101,"633,00349-2310-10 ",.02)
 ;;00349-2310-10
 ;;9002226.02101,"633,00349-2314-01 ",.01)
 ;;00349-2314-01
 ;;9002226.02101,"633,00349-2314-01 ",.02)
 ;;00349-2314-01
 ;;9002226.02101,"633,00349-2314-10 ",.01)
 ;;00349-2314-10
 ;;9002226.02101,"633,00349-2314-10 ",.02)
 ;;00349-2314-10
 ;;9002226.02101,"633,00349-2340-01 ",.01)
 ;;00349-2340-01
 ;;9002226.02101,"633,00349-2340-01 ",.02)
 ;;00349-2340-01
 ;;9002226.02101,"633,00349-2340-10 ",.01)
 ;;00349-2340-10
 ;;9002226.02101,"633,00349-2340-10 ",.02)
 ;;00349-2340-10
 ;;9002226.02101,"633,00349-2341-01 ",.01)
 ;;00349-2341-01
 ;;9002226.02101,"633,00349-2341-01 ",.02)
 ;;00349-2341-01
 ;;9002226.02101,"633,00349-2341-10 ",.01)
 ;;00349-2341-10
 ;;9002226.02101,"633,00349-2341-10 ",.02)
 ;;00349-2341-10
 ;;9002226.02101,"633,00349-2354-01 ",.01)
 ;;00349-2354-01
 ;;9002226.02101,"633,00349-2354-01 ",.02)
 ;;00349-2354-01
 ;;9002226.02101,"633,00349-2354-10 ",.01)
 ;;00349-2354-10
 ;;9002226.02101,"633,00349-2354-10 ",.02)
 ;;00349-2354-10
 ;;9002226.02101,"633,00349-8071-01 ",.01)
 ;;00349-8071-01
 ;;9002226.02101,"633,00349-8071-01 ",.02)
 ;;00349-8071-01
 ;;9002226.02101,"633,00349-8071-05 ",.01)
 ;;00349-8071-05
 ;;9002226.02101,"633,00349-8071-05 ",.02)
 ;;00349-8071-05
 ;;9002226.02101,"633,00349-8071-10 ",.01)
 ;;00349-8071-10
 ;;9002226.02101,"633,00349-8071-10 ",.02)
 ;;00349-8071-10
 ;;9002226.02101,"633,00349-8379-01 ",.01)
 ;;00349-8379-01
 ;;9002226.02101,"633,00349-8379-01 ",.02)
 ;;00349-8379-01
 ;;9002226.02101,"633,00349-8379-10 ",.01)
 ;;00349-8379-10
 ;;9002226.02101,"633,00349-8379-10 ",.02)
 ;;00349-8379-10
 ;;9002226.02101,"633,00349-8379-52 ",.01)
 ;;00349-8379-52
 ;;9002226.02101,"633,00349-8379-52 ",.02)
 ;;00349-8379-52
 ;;9002226.02101,"633,00349-8908-01 ",.01)
 ;;00349-8908-01
 ;;9002226.02101,"633,00349-8908-01 ",.02)
 ;;00349-8908-01
 ;;9002226.02101,"633,00349-8908-10 ",.01)
 ;;00349-8908-10
 ;;9002226.02101,"633,00349-8908-10 ",.02)
 ;;00349-8908-10
 ;;9002226.02101,"633,00349-8909-01 ",.01)
 ;;00349-8909-01
 ;;9002226.02101,"633,00349-8909-01 ",.02)
 ;;00349-8909-01
 ;;9002226.02101,"633,00349-8909-10 ",.01)
 ;;00349-8909-10
 ;;9002226.02101,"633,00349-8909-10 ",.02)
 ;;00349-8909-10
 ;;9002226.02101,"633,00349-8910-01 ",.01)
 ;;00349-8910-01
 ;;9002226.02101,"633,00349-8910-01 ",.02)
 ;;00349-8910-01
 ;;9002226.02101,"633,00349-8910-10 ",.01)
 ;;00349-8910-10
 ;;9002226.02101,"633,00349-8910-10 ",.02)
 ;;00349-8910-10
 ;;9002226.02101,"633,00364-0535-01 ",.01)
 ;;00364-0535-01
 ;;9002226.02101,"633,00364-0535-01 ",.02)
 ;;00364-0535-01
 ;;9002226.02101,"633,00364-0535-05 ",.01)
 ;;00364-0535-05
 ;;9002226.02101,"633,00364-0535-05 ",.02)
 ;;00364-0535-05
 ;;9002226.02101,"633,00364-0570-01 ",.01)
 ;;00364-0570-01
 ;;9002226.02101,"633,00364-0570-01 ",.02)
 ;;00364-0570-01
 ;;9002226.02101,"633,00364-0571-01 ",.01)
 ;;00364-0571-01
 ;;9002226.02101,"633,00364-0571-01 ",.02)
 ;;00364-0571-01
 ;;9002226.02101,"633,00405-4284-01 ",.01)
 ;;00405-4284-01
 ;;9002226.02101,"633,00405-4284-01 ",.02)
 ;;00405-4284-01
 ;;9002226.02101,"633,00405-4285-01 ",.01)
 ;;00405-4285-01
 ;;9002226.02101,"633,00405-4285-01 ",.02)
 ;;00405-4285-01
 ;;9002226.02101,"633,00405-4350-01 ",.01)
 ;;00405-4350-01
 ;;9002226.02101,"633,00405-4350-01 ",.02)
 ;;00405-4350-01
 ;;9002226.02101,"633,00405-4350-03 ",.01)
 ;;00405-4350-03
 ;;9002226.02101,"633,00405-4350-03 ",.02)
 ;;00405-4350-03
 ;;9002226.02101,"633,00405-4351-01 ",.01)
 ;;00405-4351-01
 ;;9002226.02101,"633,00405-4351-01 ",.02)
 ;;00405-4351-01
 ;;9002226.02101,"633,00405-4351-03 ",.01)
 ;;00405-4351-03
 ;;9002226.02101,"633,00405-4351-03 ",.02)
 ;;00405-4351-03
 ;;9002226.02101,"633,00405-4352-01 ",.01)
 ;;00405-4352-01
 ;;9002226.02101,"633,00405-4352-01 ",.02)
 ;;00405-4352-01
 ;;9002226.02101,"633,00405-4352-03 ",.01)
 ;;00405-4352-03
 ;;9002226.02101,"633,00405-4352-03 ",.02)
 ;;00405-4352-03
 ;;9002226.02101,"633,00405-4384-01 ",.01)
 ;;00405-4384-01
 ;;9002226.02101,"633,00405-4384-01 ",.02)
 ;;00405-4384-01
 ;;9002226.02101,"633,00405-4384-02 ",.01)
 ;;00405-4384-02
 ;;9002226.02101,"633,00405-4384-02 ",.02)
 ;;00405-4384-02
 ;;9002226.02101,"633,00405-4575-01 ",.01)
 ;;00405-4575-01
 ;;9002226.02101,"633,00405-4575-01 ",.02)
 ;;00405-4575-01
 ;;9002226.02101,"633,00405-4575-03 ",.01)
 ;;00405-4575-03
 ;;9002226.02101,"633,00405-4575-03 ",.02)
 ;;00405-4575-03
 ;;9002226.02101,"633,00405-4576-01 ",.01)
 ;;00405-4576-01
 ;;9002226.02101,"633,00405-4576-01 ",.02)
 ;;00405-4576-01
 ;;9002226.02101,"633,00405-4576-03 ",.01)
 ;;00405-4576-03
 ;;9002226.02101,"633,00405-4576-03 ",.02)
 ;;00405-4576-03
 ;;9002226.02101,"633,00405-5350-01 ",.01)
 ;;00405-5350-01
 ;;9002226.02101,"633,00405-5350-01 ",.02)
 ;;00405-5350-01
 ;;9002226.02101,"633,00405-5350-03 ",.01)
 ;;00405-5350-03
 ;;9002226.02101,"633,00405-5350-03 ",.02)
 ;;00405-5350-03
 ;;9002226.02101,"633,00405-5351-01 ",.01)
 ;;00405-5351-01
 ;;9002226.02101,"633,00405-5351-01 ",.02)
 ;;00405-5351-01
 ;;9002226.02101,"633,00405-5352-01 ",.01)
 ;;00405-5352-01
 ;;9002226.02101,"633,00405-5352-01 ",.02)
 ;;00405-5352-01
 ;;9002226.02101,"633,00405-5352-03 ",.01)
 ;;00405-5352-03
 ;;9002226.02101,"633,00405-5352-03 ",.02)
 ;;00405-5352-03
 ;;9002226.02101,"633,00463-6336-10 ",.01)
 ;;00463-6336-10
 ;;9002226.02101,"633,00463-6336-10 ",.02)
 ;;00463-6336-10
 ;;9002226.02101,"633,00536-3529-05 ",.01)
 ;;00536-3529-05
 ;;9002226.02101,"633,00536-3529-05 ",.02)
 ;;00536-3529-05
 ;;9002226.02101,"633,00536-3616-01 ",.01)
 ;;00536-3616-01
 ;;9002226.02101,"633,00536-3616-01 ",.02)
 ;;00536-3616-01
 ;;9002226.02101,"633,00536-3616-10 ",.01)
 ;;00536-3616-10
 ;;9002226.02101,"633,00536-3616-10 ",.02)
 ;;00536-3616-10
 ;;9002226.02101,"633,00536-3859-05 ",.01)
 ;;00536-3859-05
 ;;9002226.02101,"633,00536-3859-05 ",.02)
 ;;00536-3859-05
 ;;9002226.02101,"633,00536-3906-05 ",.01)
 ;;00536-3906-05
 ;;9002226.02101,"633,00536-3906-05 ",.02)
 ;;00536-3906-05
 ;;9002226.02101,"633,00536-3906-10 ",.01)
 ;;00536-3906-10
 ;;9002226.02101,"633,00536-3906-10 ",.02)
 ;;00536-3906-10
 ;;9002226.02101,"633,00536-5538-01 ",.01)
 ;;00536-5538-01
 ;;9002226.02101,"633,00536-5538-01 ",.02)
 ;;00536-5538-01
 ;;9002226.02101,"633,00536-5538-05 ",.01)
 ;;00536-5538-05
 ;;9002226.02101,"633,00536-5538-05 ",.02)
 ;;00536-5538-05
 ;;9002226.02101,"633,00555-0252-02 ",.01)
 ;;00555-0252-02
 ;;9002226.02101,"633,00555-0252-02 ",.02)
 ;;00555-0252-02
 ;;9002226.02101,"633,00555-0252-04 ",.01)
 ;;00555-0252-04
 ;;9002226.02101,"633,00555-0252-04 ",.02)
 ;;00555-0252-04
 ;;9002226.02101,"633,00555-0252-05 ",.01)
 ;;00555-0252-05
 ;;9002226.02101,"633,00555-0252-05 ",.02)
 ;;00555-0252-05
 ;;9002226.02101,"633,00555-0285-02 ",.01)
 ;;00555-0285-02
 ;;9002226.02101,"633,00555-0285-02 ",.02)
 ;;00555-0285-02
 ;;9002226.02101,"633,00555-0285-04 ",.01)
 ;;00555-0285-04
 ;;9002226.02101,"633,00555-0285-04 ",.02)
 ;;00555-0285-04
 ;;9002226.02101,"633,00555-0285-05 ",.01)
 ;;00555-0285-05
 ;;9002226.02101,"633,00555-0285-05 ",.02)
 ;;00555-0285-05
 ;;9002226.02101,"633,00555-0286-02 ",.01)
 ;;00555-0286-02
 ;;9002226.02101,"633,00555-0286-02 ",.02)
 ;;00555-0286-02
 ;;9002226.02101,"633,00555-0286-04 ",.01)
 ;;00555-0286-04
 ;;9002226.02101,"633,00555-0286-04 ",.02)
 ;;00555-0286-04
 ;;9002226.02101,"633,00555-0286-05 ",.01)
 ;;00555-0286-05
 ;;9002226.02101,"633,00555-0286-05 ",.02)
 ;;00555-0286-05
 ;;9002226.02101,"633,00556-0182-01 ",.01)
 ;;00556-0182-01
 ;;9002226.02101,"633,00556-0182-01 ",.02)
 ;;00556-0182-01
 ;;9002226.02101,"633,00556-0182-10 ",.01)
 ;;00556-0182-10
 ;;9002226.02101,"633,00556-0182-10 ",.02)
 ;;00556-0182-10
 ;;9002226.02101,"633,00556-0210-01 ",.01)
 ;;00556-0210-01
 ;;9002226.02101,"633,00556-0210-01 ",.02)
 ;;00556-0210-01
 ;;9002226.02101,"633,00556-0210-10 ",.01)
 ;;00556-0210-10
 ;;9002226.02101,"633,00556-0210-10 ",.02)
 ;;00556-0210-10
 ;;9002226.02101,"633,00556-0274-01 ",.01)
 ;;00556-0274-01
 ;;9002226.02101,"633,00556-0274-01 ",.02)
 ;;00556-0274-01
 ;;9002226.02101,"633,00556-0274-10 ",.01)
 ;;00556-0274-10
 ;;9002226.02101,"633,00556-0274-10 ",.02)
 ;;00556-0274-10
 ;;9002226.02101,"633,00556-0289-01 ",.01)
 ;;00556-0289-01
 ;;9002226.02101,"633,00556-0289-01 ",.02)
 ;;00556-0289-01
 ;;9002226.02101,"633,00556-0289-05 ",.01)
 ;;00556-0289-05
 ;;9002226.02101,"633,00556-0289-05 ",.02)
 ;;00556-0289-05
 ;;9002226.02101,"633,00556-0385-01 ",.01)
 ;;00556-0385-01
 ;;9002226.02101,"633,00556-0385-01 ",.02)
 ;;00556-0385-01
 ;;9002226.02101,"633,00556-0385-05 ",.01)
 ;;00556-0385-05
 ;;9002226.02101,"633,00556-0385-05 ",.02)
 ;;00556-0385-05
 ;;9002226.02101,"633,00556-0386-01 ",.01)
 ;;00556-0386-01
 ;;9002226.02101,"633,00556-0386-01 ",.02)
 ;;00556-0386-01
 ;;9002226.02101,"633,00556-0386-05 ",.01)
 ;;00556-0386-05
 ;;9002226.02101,"633,00556-0386-05 ",.02)
 ;;00556-0386-05
 ;;9002226.02101,"633,00556-0393-01 ",.01)
 ;;00556-0393-01
 ;;9002226.02101,"633,00556-0393-01 ",.02)
 ;;00556-0393-01
 ;;9002226.02101,"633,00556-0393-10 ",.01)
 ;;00556-0393-10
 ;;9002226.02101,"633,00556-0393-10 ",.02)
 ;;00556-0393-10
 ;;9002226.02101,"633,00591-5501-01 ",.01)
 ;;00591-5501-01
