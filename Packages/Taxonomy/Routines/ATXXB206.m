ATXXB206 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,BT07ZZZ ",.02)
 ;;BT07ZZZ 
 ;;9002226.02101,"1804,BT07ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT080ZZ ",.01)
 ;;BT080ZZ 
 ;;9002226.02101,"1804,BT080ZZ ",.02)
 ;;BT080ZZ 
 ;;9002226.02101,"1804,BT080ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT081ZZ ",.01)
 ;;BT081ZZ 
 ;;9002226.02101,"1804,BT081ZZ ",.02)
 ;;BT081ZZ 
 ;;9002226.02101,"1804,BT081ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT08YZZ ",.01)
 ;;BT08YZZ 
 ;;9002226.02101,"1804,BT08YZZ ",.02)
 ;;BT08YZZ 
 ;;9002226.02101,"1804,BT08YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT08ZZZ ",.01)
 ;;BT08ZZZ 
 ;;9002226.02101,"1804,BT08ZZZ ",.02)
 ;;BT08ZZZ 
 ;;9002226.02101,"1804,BT08ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0B0ZZ ",.01)
 ;;BT0B0ZZ 
 ;;9002226.02101,"1804,BT0B0ZZ ",.02)
 ;;BT0B0ZZ 
 ;;9002226.02101,"1804,BT0B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0B1ZZ ",.01)
 ;;BT0B1ZZ 
 ;;9002226.02101,"1804,BT0B1ZZ ",.02)
 ;;BT0B1ZZ 
 ;;9002226.02101,"1804,BT0B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0BYZZ ",.01)
 ;;BT0BYZZ 
 ;;9002226.02101,"1804,BT0BYZZ ",.02)
 ;;BT0BYZZ 
 ;;9002226.02101,"1804,BT0BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0BZZZ ",.01)
 ;;BT0BZZZ 
 ;;9002226.02101,"1804,BT0BZZZ ",.02)
 ;;BT0BZZZ 
 ;;9002226.02101,"1804,BT0BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0C0ZZ ",.01)
 ;;BT0C0ZZ 
 ;;9002226.02101,"1804,BT0C0ZZ ",.02)
 ;;BT0C0ZZ 
 ;;9002226.02101,"1804,BT0C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0C1ZZ ",.01)
 ;;BT0C1ZZ 
 ;;9002226.02101,"1804,BT0C1ZZ ",.02)
 ;;BT0C1ZZ 
 ;;9002226.02101,"1804,BT0C1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0CYZZ ",.01)
 ;;BT0CYZZ 
 ;;9002226.02101,"1804,BT0CYZZ ",.02)
 ;;BT0CYZZ 
 ;;9002226.02101,"1804,BT0CYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT0CZZZ ",.01)
 ;;BT0CZZZ 
 ;;9002226.02101,"1804,BT0CZZZ ",.02)
 ;;BT0CZZZ 
 ;;9002226.02101,"1804,BT0CZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT100ZZ ",.01)
 ;;BT100ZZ 
 ;;9002226.02101,"1804,BT100ZZ ",.02)
 ;;BT100ZZ 
 ;;9002226.02101,"1804,BT100ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT101ZZ ",.01)
 ;;BT101ZZ 
 ;;9002226.02101,"1804,BT101ZZ ",.02)
 ;;BT101ZZ 
 ;;9002226.02101,"1804,BT101ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT10YZZ ",.01)
 ;;BT10YZZ 
 ;;9002226.02101,"1804,BT10YZZ ",.02)
 ;;BT10YZZ 
 ;;9002226.02101,"1804,BT10YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT10ZZZ ",.01)
 ;;BT10ZZZ 
 ;;9002226.02101,"1804,BT10ZZZ ",.02)
 ;;BT10ZZZ 
 ;;9002226.02101,"1804,BT10ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT110ZZ ",.01)
 ;;BT110ZZ 
 ;;9002226.02101,"1804,BT110ZZ ",.02)
 ;;BT110ZZ 
 ;;9002226.02101,"1804,BT110ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT111ZZ ",.01)
 ;;BT111ZZ 
 ;;9002226.02101,"1804,BT111ZZ ",.02)
 ;;BT111ZZ 
 ;;9002226.02101,"1804,BT111ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT11YZZ ",.01)
 ;;BT11YZZ 
 ;;9002226.02101,"1804,BT11YZZ ",.02)
 ;;BT11YZZ 
 ;;9002226.02101,"1804,BT11YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT11ZZZ ",.01)
 ;;BT11ZZZ 
 ;;9002226.02101,"1804,BT11ZZZ ",.02)
 ;;BT11ZZZ 
 ;;9002226.02101,"1804,BT11ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT120ZZ ",.01)
 ;;BT120ZZ 
 ;;9002226.02101,"1804,BT120ZZ ",.02)
 ;;BT120ZZ 
 ;;9002226.02101,"1804,BT120ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT121ZZ ",.01)
 ;;BT121ZZ 
 ;;9002226.02101,"1804,BT121ZZ ",.02)
 ;;BT121ZZ 
 ;;9002226.02101,"1804,BT121ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT12YZZ ",.01)
 ;;BT12YZZ 
 ;;9002226.02101,"1804,BT12YZZ ",.02)
 ;;BT12YZZ 
 ;;9002226.02101,"1804,BT12YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT12ZZZ ",.01)
 ;;BT12ZZZ 
 ;;9002226.02101,"1804,BT12ZZZ ",.02)
 ;;BT12ZZZ 
 ;;9002226.02101,"1804,BT12ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT130ZZ ",.01)
 ;;BT130ZZ 
 ;;9002226.02101,"1804,BT130ZZ ",.02)
 ;;BT130ZZ 
 ;;9002226.02101,"1804,BT130ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT131ZZ ",.01)
 ;;BT131ZZ 
 ;;9002226.02101,"1804,BT131ZZ ",.02)
 ;;BT131ZZ 
 ;;9002226.02101,"1804,BT131ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT13YZZ ",.01)
 ;;BT13YZZ 
 ;;9002226.02101,"1804,BT13YZZ ",.02)
 ;;BT13YZZ 
 ;;9002226.02101,"1804,BT13YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT13ZZZ ",.01)
 ;;BT13ZZZ 
 ;;9002226.02101,"1804,BT13ZZZ ",.02)
 ;;BT13ZZZ 
 ;;9002226.02101,"1804,BT13ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT140ZZ ",.01)
 ;;BT140ZZ 
 ;;9002226.02101,"1804,BT140ZZ ",.02)
 ;;BT140ZZ 
 ;;9002226.02101,"1804,BT140ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT141ZZ ",.01)
 ;;BT141ZZ 
 ;;9002226.02101,"1804,BT141ZZ ",.02)
 ;;BT141ZZ 
 ;;9002226.02101,"1804,BT141ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT14YZZ ",.01)
 ;;BT14YZZ 
 ;;9002226.02101,"1804,BT14YZZ ",.02)
 ;;BT14YZZ 
 ;;9002226.02101,"1804,BT14YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT14ZZZ ",.01)
 ;;BT14ZZZ 
 ;;9002226.02101,"1804,BT14ZZZ ",.02)
 ;;BT14ZZZ 
 ;;9002226.02101,"1804,BT14ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT150ZZ ",.01)
 ;;BT150ZZ 
 ;;9002226.02101,"1804,BT150ZZ ",.02)
 ;;BT150ZZ 
 ;;9002226.02101,"1804,BT150ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT151ZZ ",.01)
 ;;BT151ZZ 
 ;;9002226.02101,"1804,BT151ZZ ",.02)
 ;;BT151ZZ 
 ;;9002226.02101,"1804,BT151ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT15YZZ ",.01)
 ;;BT15YZZ 
 ;;9002226.02101,"1804,BT15YZZ ",.02)
 ;;BT15YZZ 
 ;;9002226.02101,"1804,BT15YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT15ZZZ ",.01)
 ;;BT15ZZZ 
 ;;9002226.02101,"1804,BT15ZZZ ",.02)
 ;;BT15ZZZ 
 ;;9002226.02101,"1804,BT15ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT160ZZ ",.01)
 ;;BT160ZZ 
 ;;9002226.02101,"1804,BT160ZZ ",.02)
 ;;BT160ZZ 
 ;;9002226.02101,"1804,BT160ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT161ZZ ",.01)
 ;;BT161ZZ 
 ;;9002226.02101,"1804,BT161ZZ ",.02)
 ;;BT161ZZ 
 ;;9002226.02101,"1804,BT161ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT16YZZ ",.01)
 ;;BT16YZZ 
 ;;9002226.02101,"1804,BT16YZZ ",.02)
 ;;BT16YZZ 
 ;;9002226.02101,"1804,BT16YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT16ZZZ ",.01)
 ;;BT16ZZZ 
 ;;9002226.02101,"1804,BT16ZZZ ",.02)
 ;;BT16ZZZ 
 ;;9002226.02101,"1804,BT16ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT170ZZ ",.01)
 ;;BT170ZZ 
 ;;9002226.02101,"1804,BT170ZZ ",.02)
 ;;BT170ZZ 
 ;;9002226.02101,"1804,BT170ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT171ZZ ",.01)
 ;;BT171ZZ 
 ;;9002226.02101,"1804,BT171ZZ ",.02)
 ;;BT171ZZ 
 ;;9002226.02101,"1804,BT171ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT17YZZ ",.01)
 ;;BT17YZZ 
 ;;9002226.02101,"1804,BT17YZZ ",.02)
 ;;BT17YZZ 
 ;;9002226.02101,"1804,BT17YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT17ZZZ ",.01)
 ;;BT17ZZZ 
 ;;9002226.02101,"1804,BT17ZZZ ",.02)
 ;;BT17ZZZ 
 ;;9002226.02101,"1804,BT17ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1B0ZZ ",.01)
 ;;BT1B0ZZ 
 ;;9002226.02101,"1804,BT1B0ZZ ",.02)
 ;;BT1B0ZZ 
 ;;9002226.02101,"1804,BT1B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1B1ZZ ",.01)
 ;;BT1B1ZZ 
 ;;9002226.02101,"1804,BT1B1ZZ ",.02)
 ;;BT1B1ZZ 
 ;;9002226.02101,"1804,BT1B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1BYZZ ",.01)
 ;;BT1BYZZ 
 ;;9002226.02101,"1804,BT1BYZZ ",.02)
 ;;BT1BYZZ 
 ;;9002226.02101,"1804,BT1BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1BZZZ ",.01)
 ;;BT1BZZZ 
 ;;9002226.02101,"1804,BT1BZZZ ",.02)
 ;;BT1BZZZ 
 ;;9002226.02101,"1804,BT1BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1C0ZZ ",.01)
 ;;BT1C0ZZ 
 ;;9002226.02101,"1804,BT1C0ZZ ",.02)
 ;;BT1C0ZZ 
 ;;9002226.02101,"1804,BT1C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1C1ZZ ",.01)
 ;;BT1C1ZZ 
 ;;9002226.02101,"1804,BT1C1ZZ ",.02)
 ;;BT1C1ZZ 
 ;;9002226.02101,"1804,BT1C1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1CYZZ ",.01)
 ;;BT1CYZZ 
 ;;9002226.02101,"1804,BT1CYZZ ",.02)
 ;;BT1CYZZ 
 ;;9002226.02101,"1804,BT1CYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1CZZZ ",.01)
 ;;BT1CZZZ 
 ;;9002226.02101,"1804,BT1CZZZ ",.02)
 ;;BT1CZZZ 
 ;;9002226.02101,"1804,BT1CZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1D0ZZ ",.01)
 ;;BT1D0ZZ 
 ;;9002226.02101,"1804,BT1D0ZZ ",.02)
 ;;BT1D0ZZ 
 ;;9002226.02101,"1804,BT1D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1D1ZZ ",.01)
 ;;BT1D1ZZ 
 ;;9002226.02101,"1804,BT1D1ZZ ",.02)
 ;;BT1D1ZZ 
 ;;9002226.02101,"1804,BT1D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1DYZZ ",.01)
 ;;BT1DYZZ 
 ;;9002226.02101,"1804,BT1DYZZ ",.02)
 ;;BT1DYZZ 
 ;;9002226.02101,"1804,BT1DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1DZZZ ",.01)
 ;;BT1DZZZ 
 ;;9002226.02101,"1804,BT1DZZZ ",.02)
 ;;BT1DZZZ 
 ;;9002226.02101,"1804,BT1DZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1F0ZZ ",.01)
 ;;BT1F0ZZ 
 ;;9002226.02101,"1804,BT1F0ZZ ",.02)
 ;;BT1F0ZZ 
 ;;9002226.02101,"1804,BT1F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1F1ZZ ",.01)
 ;;BT1F1ZZ 
 ;;9002226.02101,"1804,BT1F1ZZ ",.02)
 ;;BT1F1ZZ 
 ;;9002226.02101,"1804,BT1F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1FYZZ ",.01)
 ;;BT1FYZZ 
 ;;9002226.02101,"1804,BT1FYZZ ",.02)
 ;;BT1FYZZ 
 ;;9002226.02101,"1804,BT1FYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1FZZZ ",.01)
 ;;BT1FZZZ 
 ;;9002226.02101,"1804,BT1FZZZ ",.02)
 ;;BT1FZZZ 
 ;;9002226.02101,"1804,BT1FZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1G0ZZ ",.01)
 ;;BT1G0ZZ 
 ;;9002226.02101,"1804,BT1G0ZZ ",.02)
 ;;BT1G0ZZ 
 ;;9002226.02101,"1804,BT1G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1G1ZZ ",.01)
 ;;BT1G1ZZ 
 ;;9002226.02101,"1804,BT1G1ZZ ",.02)
 ;;BT1G1ZZ 
 ;;9002226.02101,"1804,BT1G1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1GYZZ ",.01)
 ;;BT1GYZZ 
 ;;9002226.02101,"1804,BT1GYZZ ",.02)
 ;;BT1GYZZ 
 ;;9002226.02101,"1804,BT1GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT1GZZZ ",.01)
 ;;BT1GZZZ 
 ;;9002226.02101,"1804,BT1GZZZ ",.02)
 ;;BT1GZZZ 
 ;;9002226.02101,"1804,BT1GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2000Z ",.01)
 ;;BT2000Z 
 ;;9002226.02101,"1804,BT2000Z ",.02)
 ;;BT2000Z 
 ;;9002226.02101,"1804,BT2000Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT200ZZ ",.01)
 ;;BT200ZZ 
 ;;9002226.02101,"1804,BT200ZZ ",.02)
 ;;BT200ZZ 
 ;;9002226.02101,"1804,BT200ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2010Z ",.01)
 ;;BT2010Z 
 ;;9002226.02101,"1804,BT2010Z ",.02)
 ;;BT2010Z 
 ;;9002226.02101,"1804,BT2010Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT201ZZ ",.01)
 ;;BT201ZZ 
 ;;9002226.02101,"1804,BT201ZZ ",.02)
 ;;BT201ZZ 
 ;;9002226.02101,"1804,BT201ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT20Y0Z ",.01)
 ;;BT20Y0Z 
 ;;9002226.02101,"1804,BT20Y0Z ",.02)
 ;;BT20Y0Z 
 ;;9002226.02101,"1804,BT20Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT20YZZ ",.01)
 ;;BT20YZZ 
 ;;9002226.02101,"1804,BT20YZZ ",.02)
 ;;BT20YZZ 
 ;;9002226.02101,"1804,BT20YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT20ZZZ ",.01)
 ;;BT20ZZZ 
 ;;9002226.02101,"1804,BT20ZZZ ",.02)
 ;;BT20ZZZ 
 ;;9002226.02101,"1804,BT20ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2100Z ",.01)
 ;;BT2100Z 
 ;;9002226.02101,"1804,BT2100Z ",.02)
 ;;BT2100Z 
 ;;9002226.02101,"1804,BT2100Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT210ZZ ",.01)
 ;;BT210ZZ 
 ;;9002226.02101,"1804,BT210ZZ ",.02)
 ;;BT210ZZ 
 ;;9002226.02101,"1804,BT210ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2110Z ",.01)
 ;;BT2110Z 
 ;;9002226.02101,"1804,BT2110Z ",.02)
 ;;BT2110Z 
 ;;9002226.02101,"1804,BT2110Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT211ZZ ",.01)
 ;;BT211ZZ 
 ;;9002226.02101,"1804,BT211ZZ ",.02)
 ;;BT211ZZ 
 ;;9002226.02101,"1804,BT211ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT21Y0Z ",.01)
 ;;BT21Y0Z 
 ;;9002226.02101,"1804,BT21Y0Z ",.02)
 ;;BT21Y0Z 
 ;;9002226.02101,"1804,BT21Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT21YZZ ",.01)
 ;;BT21YZZ 
 ;;9002226.02101,"1804,BT21YZZ ",.02)
 ;;BT21YZZ 
 ;;9002226.02101,"1804,BT21YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT21ZZZ ",.01)
 ;;BT21ZZZ 
 ;;9002226.02101,"1804,BT21ZZZ ",.02)
 ;;BT21ZZZ 
