BUD1ZA18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,00247-0444-02 ",.01)
 ;;00247-0444-02
 ;;9002226.02101,"1062,00247-0444-02 ",.02)
 ;;00247-0444-02
 ;;9002226.02101,"1062,00247-0444-03 ",.01)
 ;;00247-0444-03
 ;;9002226.02101,"1062,00247-0444-03 ",.02)
 ;;00247-0444-03
 ;;9002226.02101,"1062,00247-0444-30 ",.01)
 ;;00247-0444-30
 ;;9002226.02101,"1062,00247-0444-30 ",.02)
 ;;00247-0444-30
 ;;9002226.02101,"1062,00247-0444-60 ",.01)
 ;;00247-0444-60
 ;;9002226.02101,"1062,00247-0444-60 ",.02)
 ;;00247-0444-60
 ;;9002226.02101,"1062,00247-0447-10 ",.01)
 ;;00247-0447-10
 ;;9002226.02101,"1062,00247-0447-10 ",.02)
 ;;00247-0447-10
 ;;9002226.02101,"1062,00247-1045-30 ",.01)
 ;;00247-1045-30
 ;;9002226.02101,"1062,00247-1045-30 ",.02)
 ;;00247-1045-30
 ;;9002226.02101,"1062,00247-1045-45 ",.01)
 ;;00247-1045-45
 ;;9002226.02101,"1062,00247-1045-45 ",.02)
 ;;00247-1045-45
 ;;9002226.02101,"1062,00247-1270-00 ",.01)
 ;;00247-1270-00
 ;;9002226.02101,"1062,00247-1270-00 ",.02)
 ;;00247-1270-00
 ;;9002226.02101,"1062,00247-1270-03 ",.01)
 ;;00247-1270-03
 ;;9002226.02101,"1062,00247-1270-03 ",.02)
 ;;00247-1270-03
 ;;9002226.02101,"1062,00247-1270-06 ",.01)
 ;;00247-1270-06
 ;;9002226.02101,"1062,00247-1270-06 ",.02)
 ;;00247-1270-06
 ;;9002226.02101,"1062,00247-1270-30 ",.01)
 ;;00247-1270-30
 ;;9002226.02101,"1062,00247-1270-30 ",.02)
 ;;00247-1270-30
 ;;9002226.02101,"1062,00247-1270-60 ",.01)
 ;;00247-1270-60
 ;;9002226.02101,"1062,00247-1270-60 ",.02)
 ;;00247-1270-60
 ;;9002226.02101,"1062,00247-1270-90 ",.01)
 ;;00247-1270-90
 ;;9002226.02101,"1062,00247-1270-90 ",.02)
 ;;00247-1270-90
 ;;9002226.02101,"1062,00247-1538-10 ",.01)
 ;;00247-1538-10
 ;;9002226.02101,"1062,00247-1538-10 ",.02)
 ;;00247-1538-10
 ;;9002226.02101,"1062,00247-1539-10 ",.01)
 ;;00247-1539-10
 ;;9002226.02101,"1062,00247-1539-10 ",.02)
 ;;00247-1539-10
 ;;9002226.02101,"1062,00247-1704-30 ",.01)
 ;;00247-1704-30
 ;;9002226.02101,"1062,00247-1704-30 ",.02)
 ;;00247-1704-30
 ;;9002226.02101,"1062,00247-1760-00 ",.01)
 ;;00247-1760-00
 ;;9002226.02101,"1062,00247-1760-00 ",.02)
 ;;00247-1760-00
 ;;9002226.02101,"1062,00247-1760-02 ",.01)
 ;;00247-1760-02
 ;;9002226.02101,"1062,00247-1760-02 ",.02)
 ;;00247-1760-02
 ;;9002226.02101,"1062,00247-1760-30 ",.01)
 ;;00247-1760-30
 ;;9002226.02101,"1062,00247-1760-30 ",.02)
 ;;00247-1760-30
 ;;9002226.02101,"1062,00247-1760-60 ",.01)
 ;;00247-1760-60
 ;;9002226.02101,"1062,00247-1760-60 ",.02)
 ;;00247-1760-60
 ;;9002226.02101,"1062,00247-1760-77 ",.01)
 ;;00247-1760-77
 ;;9002226.02101,"1062,00247-1760-77 ",.02)
 ;;00247-1760-77
 ;;9002226.02101,"1062,00247-1762-02 ",.01)
 ;;00247-1762-02
 ;;9002226.02101,"1062,00247-1762-02 ",.02)
 ;;00247-1762-02
 ;;9002226.02101,"1062,00247-1763-02 ",.01)
 ;;00247-1763-02
 ;;9002226.02101,"1062,00247-1763-02 ",.02)
 ;;00247-1763-02
 ;;9002226.02101,"1062,00247-1763-30 ",.01)
 ;;00247-1763-30
 ;;9002226.02101,"1062,00247-1763-30 ",.02)
 ;;00247-1763-30
 ;;9002226.02101,"1062,00247-1924-30 ",.01)
 ;;00247-1924-30
 ;;9002226.02101,"1062,00247-1924-30 ",.02)
 ;;00247-1924-30
 ;;9002226.02101,"1062,00247-1925-30 ",.01)
 ;;00247-1925-30
 ;;9002226.02101,"1062,00247-1925-30 ",.02)
 ;;00247-1925-30
 ;;9002226.02101,"1062,00247-1926-30 ",.01)
 ;;00247-1926-30
 ;;9002226.02101,"1062,00247-1926-30 ",.02)
 ;;00247-1926-30
 ;;9002226.02101,"1062,00247-1927-06 ",.01)
 ;;00247-1927-06
 ;;9002226.02101,"1062,00247-1927-06 ",.02)
 ;;00247-1927-06
 ;;9002226.02101,"1062,00247-1927-30 ",.01)
 ;;00247-1927-30
 ;;9002226.02101,"1062,00247-1927-30 ",.02)
 ;;00247-1927-30
 ;;9002226.02101,"1062,00247-1928-30 ",.01)
 ;;00247-1928-30
 ;;9002226.02101,"1062,00247-1928-30 ",.02)
 ;;00247-1928-30
 ;;9002226.02101,"1062,00247-1989-15 ",.01)
 ;;00247-1989-15
 ;;9002226.02101,"1062,00247-1989-15 ",.02)
 ;;00247-1989-15
 ;;9002226.02101,"1062,00247-2069-30 ",.01)
 ;;00247-2069-30
 ;;9002226.02101,"1062,00247-2069-30 ",.02)
 ;;00247-2069-30
 ;;9002226.02101,"1062,00247-2069-60 ",.01)
 ;;00247-2069-60
 ;;9002226.02101,"1062,00247-2069-60 ",.02)
 ;;00247-2069-60
 ;;9002226.02101,"1062,00247-2069-90 ",.01)
 ;;00247-2069-90
 ;;9002226.02101,"1062,00247-2069-90 ",.02)
 ;;00247-2069-90
 ;;9002226.02101,"1062,00247-2159-00 ",.01)
 ;;00247-2159-00
 ;;9002226.02101,"1062,00247-2159-00 ",.02)
 ;;00247-2159-00
 ;;9002226.02101,"1062,00247-2159-30 ",.01)
 ;;00247-2159-30
 ;;9002226.02101,"1062,00247-2159-30 ",.02)
 ;;00247-2159-30
 ;;9002226.02101,"1062,00247-2160-30 ",.01)
 ;;00247-2160-30
 ;;9002226.02101,"1062,00247-2160-30 ",.02)
 ;;00247-2160-30
 ;;9002226.02101,"1062,00247-2288-30 ",.01)
 ;;00247-2288-30
 ;;9002226.02101,"1062,00247-2288-30 ",.02)
 ;;00247-2288-30
 ;;9002226.02101,"1062,00247-2288-60 ",.01)
 ;;00247-2288-60
 ;;9002226.02101,"1062,00247-2288-60 ",.02)
 ;;00247-2288-60
 ;;9002226.02101,"1062,00247-2288-77 ",.01)
 ;;00247-2288-77
 ;;9002226.02101,"1062,00247-2288-77 ",.02)
 ;;00247-2288-77
 ;;9002226.02101,"1062,00247-2288-90 ",.01)
 ;;00247-2288-90
 ;;9002226.02101,"1062,00247-2288-90 ",.02)
 ;;00247-2288-90
 ;;9002226.02101,"1062,00247-2289-30 ",.01)
 ;;00247-2289-30
 ;;9002226.02101,"1062,00247-2289-30 ",.02)
 ;;00247-2289-30
 ;;9002226.02101,"1062,00247-2289-60 ",.01)
 ;;00247-2289-60
