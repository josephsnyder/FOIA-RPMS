ATXXB177 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,B030Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B030YZZ ",.01)
 ;;B030YZZ 
 ;;9002226.02101,"1804,B030YZZ ",.02)
 ;;B030YZZ 
 ;;9002226.02101,"1804,B030YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B030ZZZ ",.01)
 ;;B030ZZZ 
 ;;9002226.02101,"1804,B030ZZZ ",.02)
 ;;B030ZZZ 
 ;;9002226.02101,"1804,B030ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B039Y0Z ",.01)
 ;;B039Y0Z 
 ;;9002226.02101,"1804,B039Y0Z ",.02)
 ;;B039Y0Z 
 ;;9002226.02101,"1804,B039Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B039YZZ ",.01)
 ;;B039YZZ 
 ;;9002226.02101,"1804,B039YZZ ",.02)
 ;;B039YZZ 
 ;;9002226.02101,"1804,B039YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B039ZZZ ",.01)
 ;;B039ZZZ 
 ;;9002226.02101,"1804,B039ZZZ ",.02)
 ;;B039ZZZ 
 ;;9002226.02101,"1804,B039ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B03BY0Z ",.01)
 ;;B03BY0Z 
 ;;9002226.02101,"1804,B03BY0Z ",.02)
 ;;B03BY0Z 
 ;;9002226.02101,"1804,B03BY0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B03BYZZ ",.01)
 ;;B03BYZZ 
 ;;9002226.02101,"1804,B03BYZZ ",.02)
 ;;B03BYZZ 
 ;;9002226.02101,"1804,B03BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B03BZZZ ",.01)
 ;;B03BZZZ 
 ;;9002226.02101,"1804,B03BZZZ ",.02)
 ;;B03BZZZ 
 ;;9002226.02101,"1804,B03BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B03CY0Z ",.01)
 ;;B03CY0Z 
 ;;9002226.02101,"1804,B03CY0Z ",.02)
 ;;B03CY0Z 
 ;;9002226.02101,"1804,B03CY0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B03CYZZ ",.01)
 ;;B03CYZZ 
 ;;9002226.02101,"1804,B03CYZZ ",.02)
 ;;B03CYZZ 
 ;;9002226.02101,"1804,B03CYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B03CZZZ ",.01)
 ;;B03CZZZ 
 ;;9002226.02101,"1804,B03CZZZ ",.02)
 ;;B03CZZZ 
 ;;9002226.02101,"1804,B03CZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B040ZZZ ",.01)
 ;;B040ZZZ 
 ;;9002226.02101,"1804,B040ZZZ ",.02)
 ;;B040ZZZ 
 ;;9002226.02101,"1804,B040ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B04BZZZ ",.01)
 ;;B04BZZZ 
 ;;9002226.02101,"1804,B04BZZZ ",.02)
 ;;B04BZZZ 
 ;;9002226.02101,"1804,B04BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2000ZZ ",.01)
 ;;B2000ZZ 
 ;;9002226.02101,"1804,B2000ZZ ",.02)
 ;;B2000ZZ 
 ;;9002226.02101,"1804,B2000ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2001ZZ ",.01)
 ;;B2001ZZ 
 ;;9002226.02101,"1804,B2001ZZ ",.02)
 ;;B2001ZZ 
 ;;9002226.02101,"1804,B2001ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B200YZZ ",.01)
 ;;B200YZZ 
 ;;9002226.02101,"1804,B200YZZ ",.02)
 ;;B200YZZ 
 ;;9002226.02101,"1804,B200YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2010ZZ ",.01)
 ;;B2010ZZ 
 ;;9002226.02101,"1804,B2010ZZ ",.02)
 ;;B2010ZZ 
 ;;9002226.02101,"1804,B2010ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2011ZZ ",.01)
 ;;B2011ZZ 
 ;;9002226.02101,"1804,B2011ZZ ",.02)
 ;;B2011ZZ 
 ;;9002226.02101,"1804,B2011ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B201YZZ ",.01)
 ;;B201YZZ 
 ;;9002226.02101,"1804,B201YZZ ",.02)
 ;;B201YZZ 
 ;;9002226.02101,"1804,B201YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2020ZZ ",.01)
 ;;B2020ZZ 
 ;;9002226.02101,"1804,B2020ZZ ",.02)
 ;;B2020ZZ 
 ;;9002226.02101,"1804,B2020ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2021ZZ ",.01)
 ;;B2021ZZ 
 ;;9002226.02101,"1804,B2021ZZ ",.02)
 ;;B2021ZZ 
 ;;9002226.02101,"1804,B2021ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B202YZZ ",.01)
 ;;B202YZZ 
 ;;9002226.02101,"1804,B202YZZ ",.02)
 ;;B202YZZ 
 ;;9002226.02101,"1804,B202YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2030ZZ ",.01)
 ;;B2030ZZ 
 ;;9002226.02101,"1804,B2030ZZ ",.02)
 ;;B2030ZZ 
 ;;9002226.02101,"1804,B2030ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2031ZZ ",.01)
 ;;B2031ZZ 
 ;;9002226.02101,"1804,B2031ZZ ",.02)
 ;;B2031ZZ 
 ;;9002226.02101,"1804,B2031ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B203YZZ ",.01)
 ;;B203YZZ 
 ;;9002226.02101,"1804,B203YZZ ",.02)
 ;;B203YZZ 
 ;;9002226.02101,"1804,B203YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2040ZZ ",.01)
 ;;B2040ZZ 
 ;;9002226.02101,"1804,B2040ZZ ",.02)
 ;;B2040ZZ 
 ;;9002226.02101,"1804,B2040ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2041ZZ ",.01)
 ;;B2041ZZ 
 ;;9002226.02101,"1804,B2041ZZ ",.02)
 ;;B2041ZZ 
 ;;9002226.02101,"1804,B2041ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B204YZZ ",.01)
 ;;B204YZZ 
 ;;9002226.02101,"1804,B204YZZ ",.02)
 ;;B204YZZ 
 ;;9002226.02101,"1804,B204YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2050ZZ ",.01)
 ;;B2050ZZ 
 ;;9002226.02101,"1804,B2050ZZ ",.02)
 ;;B2050ZZ 
 ;;9002226.02101,"1804,B2050ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2051ZZ ",.01)
 ;;B2051ZZ 
 ;;9002226.02101,"1804,B2051ZZ ",.02)
 ;;B2051ZZ 
 ;;9002226.02101,"1804,B2051ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B205YZZ ",.01)
 ;;B205YZZ 
 ;;9002226.02101,"1804,B205YZZ ",.02)
 ;;B205YZZ 
 ;;9002226.02101,"1804,B205YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2060ZZ ",.01)
 ;;B2060ZZ 
 ;;9002226.02101,"1804,B2060ZZ ",.02)
 ;;B2060ZZ 
 ;;9002226.02101,"1804,B2060ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2061ZZ ",.01)
 ;;B2061ZZ 
 ;;9002226.02101,"1804,B2061ZZ ",.02)
 ;;B2061ZZ 
 ;;9002226.02101,"1804,B2061ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B206YZZ ",.01)
 ;;B206YZZ 
 ;;9002226.02101,"1804,B206YZZ ",.02)
 ;;B206YZZ 
 ;;9002226.02101,"1804,B206YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2070ZZ ",.01)
 ;;B2070ZZ 
 ;;9002226.02101,"1804,B2070ZZ ",.02)
 ;;B2070ZZ 
 ;;9002226.02101,"1804,B2070ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2071ZZ ",.01)
 ;;B2071ZZ 
 ;;9002226.02101,"1804,B2071ZZ ",.02)
 ;;B2071ZZ 
 ;;9002226.02101,"1804,B2071ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B207YZZ ",.01)
 ;;B207YZZ 
 ;;9002226.02101,"1804,B207YZZ ",.02)
 ;;B207YZZ 
 ;;9002226.02101,"1804,B207YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2080ZZ ",.01)
 ;;B2080ZZ 
 ;;9002226.02101,"1804,B2080ZZ ",.02)
 ;;B2080ZZ 
 ;;9002226.02101,"1804,B2080ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2081ZZ ",.01)
 ;;B2081ZZ 
 ;;9002226.02101,"1804,B2081ZZ ",.02)
 ;;B2081ZZ 
 ;;9002226.02101,"1804,B2081ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B208YZZ ",.01)
 ;;B208YZZ 
 ;;9002226.02101,"1804,B208YZZ ",.02)
 ;;B208YZZ 
 ;;9002226.02101,"1804,B208YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B20F0ZZ ",.01)
 ;;B20F0ZZ 
 ;;9002226.02101,"1804,B20F0ZZ ",.02)
 ;;B20F0ZZ 
 ;;9002226.02101,"1804,B20F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B20F1ZZ ",.01)
 ;;B20F1ZZ 
 ;;9002226.02101,"1804,B20F1ZZ ",.02)
 ;;B20F1ZZ 
 ;;9002226.02101,"1804,B20F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B20FYZZ ",.01)
 ;;B20FYZZ 
 ;;9002226.02101,"1804,B20FYZZ ",.02)
 ;;B20FYZZ 
 ;;9002226.02101,"1804,B20FYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B210010 ",.01)
 ;;B210010 
 ;;9002226.02101,"1804,B210010 ",.02)
 ;;B210010 
 ;;9002226.02101,"1804,B210010 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2100ZZ ",.01)
 ;;B2100ZZ 
 ;;9002226.02101,"1804,B2100ZZ ",.02)
 ;;B2100ZZ 
 ;;9002226.02101,"1804,B2100ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B210110 ",.01)
 ;;B210110 
 ;;9002226.02101,"1804,B210110 ",.02)
 ;;B210110 
 ;;9002226.02101,"1804,B210110 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2101ZZ ",.01)
 ;;B2101ZZ 
 ;;9002226.02101,"1804,B2101ZZ ",.02)
 ;;B2101ZZ 
 ;;9002226.02101,"1804,B2101ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B210Y10 ",.01)
 ;;B210Y10 
 ;;9002226.02101,"1804,B210Y10 ",.02)
 ;;B210Y10 
 ;;9002226.02101,"1804,B210Y10 ",.03)
 ;;31
 ;;9002226.02101,"1804,B210YZZ ",.01)
 ;;B210YZZ 
 ;;9002226.02101,"1804,B210YZZ ",.02)
 ;;B210YZZ 
 ;;9002226.02101,"1804,B210YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B211010 ",.01)
 ;;B211010 
 ;;9002226.02101,"1804,B211010 ",.02)
 ;;B211010 
 ;;9002226.02101,"1804,B211010 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2110ZZ ",.01)
 ;;B2110ZZ 
 ;;9002226.02101,"1804,B2110ZZ ",.02)
 ;;B2110ZZ 
 ;;9002226.02101,"1804,B2110ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B211110 ",.01)
 ;;B211110 
 ;;9002226.02101,"1804,B211110 ",.02)
 ;;B211110 
 ;;9002226.02101,"1804,B211110 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2111ZZ ",.01)
 ;;B2111ZZ 
 ;;9002226.02101,"1804,B2111ZZ ",.02)
 ;;B2111ZZ 
 ;;9002226.02101,"1804,B2111ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B211Y10 ",.01)
 ;;B211Y10 
 ;;9002226.02101,"1804,B211Y10 ",.02)
 ;;B211Y10 
 ;;9002226.02101,"1804,B211Y10 ",.03)
 ;;31
 ;;9002226.02101,"1804,B211YZZ ",.01)
 ;;B211YZZ 
 ;;9002226.02101,"1804,B211YZZ ",.02)
 ;;B211YZZ 
 ;;9002226.02101,"1804,B211YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B212010 ",.01)
 ;;B212010 
 ;;9002226.02101,"1804,B212010 ",.02)
 ;;B212010 
 ;;9002226.02101,"1804,B212010 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2120ZZ ",.01)
 ;;B2120ZZ 
 ;;9002226.02101,"1804,B2120ZZ ",.02)
 ;;B2120ZZ 
 ;;9002226.02101,"1804,B2120ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B212110 ",.01)
 ;;B212110 
 ;;9002226.02101,"1804,B212110 ",.02)
 ;;B212110 
 ;;9002226.02101,"1804,B212110 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2121ZZ ",.01)
 ;;B2121ZZ 
 ;;9002226.02101,"1804,B2121ZZ ",.02)
 ;;B2121ZZ 
 ;;9002226.02101,"1804,B2121ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B212Y10 ",.01)
 ;;B212Y10 
 ;;9002226.02101,"1804,B212Y10 ",.02)
 ;;B212Y10 
 ;;9002226.02101,"1804,B212Y10 ",.03)
 ;;31
 ;;9002226.02101,"1804,B212YZZ ",.01)
 ;;B212YZZ 
 ;;9002226.02101,"1804,B212YZZ ",.02)
 ;;B212YZZ 
 ;;9002226.02101,"1804,B212YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B213010 ",.01)
 ;;B213010 
 ;;9002226.02101,"1804,B213010 ",.02)
 ;;B213010 
 ;;9002226.02101,"1804,B213010 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2130ZZ ",.01)
 ;;B2130ZZ 
 ;;9002226.02101,"1804,B2130ZZ ",.02)
 ;;B2130ZZ 
 ;;9002226.02101,"1804,B2130ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B213110 ",.01)
 ;;B213110 
 ;;9002226.02101,"1804,B213110 ",.02)
 ;;B213110 
 ;;9002226.02101,"1804,B213110 ",.03)
 ;;31
 ;;9002226.02101,"1804,B2131ZZ ",.01)
 ;;B2131ZZ 
 ;;9002226.02101,"1804,B2131ZZ ",.02)
 ;;B2131ZZ 
 ;;9002226.02101,"1804,B2131ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B213Y10 ",.01)
 ;;B213Y10 
 ;;9002226.02101,"1804,B213Y10 ",.02)
 ;;B213Y10 
 ;;9002226.02101,"1804,B213Y10 ",.03)
 ;;31
 ;;9002226.02101,"1804,B213YZZ ",.01)
 ;;B213YZZ 
 ;;9002226.02101,"1804,B213YZZ ",.02)
 ;;B213YZZ 
 ;;9002226.02101,"1804,B213YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2140ZZ ",.01)
 ;;B2140ZZ 
 ;;9002226.02101,"1804,B2140ZZ ",.02)
 ;;B2140ZZ 
 ;;9002226.02101,"1804,B2140ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2141ZZ ",.01)
 ;;B2141ZZ 
 ;;9002226.02101,"1804,B2141ZZ ",.02)
 ;;B2141ZZ 
 ;;9002226.02101,"1804,B2141ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B214YZZ ",.01)
 ;;B214YZZ 
 ;;9002226.02101,"1804,B214YZZ ",.02)
 ;;B214YZZ 
 ;;9002226.02101,"1804,B214YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2150ZZ ",.01)
 ;;B2150ZZ 
 ;;9002226.02101,"1804,B2150ZZ ",.02)
 ;;B2150ZZ 
 ;;9002226.02101,"1804,B2150ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2151ZZ ",.01)
 ;;B2151ZZ 
 ;;9002226.02101,"1804,B2151ZZ ",.02)
 ;;B2151ZZ 
 ;;9002226.02101,"1804,B2151ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B215YZZ ",.01)
 ;;B215YZZ 
 ;;9002226.02101,"1804,B215YZZ ",.02)
 ;;B215YZZ 
 ;;9002226.02101,"1804,B215YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2160ZZ ",.01)
 ;;B2160ZZ 
 ;;9002226.02101,"1804,B2160ZZ ",.02)
 ;;B2160ZZ 
 ;;9002226.02101,"1804,B2160ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2161ZZ ",.01)
 ;;B2161ZZ 
 ;;9002226.02101,"1804,B2161ZZ ",.02)
 ;;B2161ZZ 
 ;;9002226.02101,"1804,B2161ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B216YZZ ",.01)
 ;;B216YZZ 
 ;;9002226.02101,"1804,B216YZZ ",.02)
 ;;B216YZZ 
 ;;9002226.02101,"1804,B216YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2170ZZ ",.01)
 ;;B2170ZZ 
 ;;9002226.02101,"1804,B2170ZZ ",.02)
 ;;B2170ZZ 
 ;;9002226.02101,"1804,B2170ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B2171ZZ ",.01)
 ;;B2171ZZ 
 ;;9002226.02101,"1804,B2171ZZ ",.02)
 ;;B2171ZZ 
 ;;9002226.02101,"1804,B2171ZZ ",.03)
 ;;31
