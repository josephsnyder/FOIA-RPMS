ATXXB204 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,BR0BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0CZZZ ",.01)
 ;;BR0CZZZ 
 ;;9002226.02101,"1804,BR0CZZZ ",.02)
 ;;BR0CZZZ 
 ;;9002226.02101,"1804,BR0CZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0D0ZZ ",.01)
 ;;BR0D0ZZ 
 ;;9002226.02101,"1804,BR0D0ZZ ",.02)
 ;;BR0D0ZZ 
 ;;9002226.02101,"1804,BR0D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0D1ZZ ",.01)
 ;;BR0D1ZZ 
 ;;9002226.02101,"1804,BR0D1ZZ ",.02)
 ;;BR0D1ZZ 
 ;;9002226.02101,"1804,BR0D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0DYZZ ",.01)
 ;;BR0DYZZ 
 ;;9002226.02101,"1804,BR0DYZZ ",.02)
 ;;BR0DYZZ 
 ;;9002226.02101,"1804,BR0DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0DZZZ ",.01)
 ;;BR0DZZZ 
 ;;9002226.02101,"1804,BR0DZZZ ",.02)
 ;;BR0DZZZ 
 ;;9002226.02101,"1804,BR0DZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0FZZZ ",.01)
 ;;BR0FZZZ 
 ;;9002226.02101,"1804,BR0FZZZ ",.02)
 ;;BR0FZZZ 
 ;;9002226.02101,"1804,BR0FZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0GZZ1 ",.01)
 ;;BR0GZZ1 
 ;;9002226.02101,"1804,BR0GZZ1 ",.02)
 ;;BR0GZZ1 
 ;;9002226.02101,"1804,BR0GZZ1 ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0GZZZ ",.01)
 ;;BR0GZZZ 
 ;;9002226.02101,"1804,BR0GZZZ ",.02)
 ;;BR0GZZZ 
 ;;9002226.02101,"1804,BR0GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR0HZZZ ",.01)
 ;;BR0HZZZ 
 ;;9002226.02101,"1804,BR0HZZZ ",.02)
 ;;BR0HZZZ 
 ;;9002226.02101,"1804,BR0HZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR100ZZ ",.01)
 ;;BR100ZZ 
 ;;9002226.02101,"1804,BR100ZZ ",.02)
 ;;BR100ZZ 
 ;;9002226.02101,"1804,BR100ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR101ZZ ",.01)
 ;;BR101ZZ 
 ;;9002226.02101,"1804,BR101ZZ ",.02)
 ;;BR101ZZ 
 ;;9002226.02101,"1804,BR101ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR10YZZ ",.01)
 ;;BR10YZZ 
 ;;9002226.02101,"1804,BR10YZZ ",.02)
 ;;BR10YZZ 
 ;;9002226.02101,"1804,BR10YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR10ZZZ ",.01)
 ;;BR10ZZZ 
 ;;9002226.02101,"1804,BR10ZZZ ",.02)
 ;;BR10ZZZ 
 ;;9002226.02101,"1804,BR10ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR110ZZ ",.01)
 ;;BR110ZZ 
 ;;9002226.02101,"1804,BR110ZZ ",.02)
 ;;BR110ZZ 
 ;;9002226.02101,"1804,BR110ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR111ZZ ",.01)
 ;;BR111ZZ 
 ;;9002226.02101,"1804,BR111ZZ ",.02)
 ;;BR111ZZ 
 ;;9002226.02101,"1804,BR111ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR11YZZ ",.01)
 ;;BR11YZZ 
 ;;9002226.02101,"1804,BR11YZZ ",.02)
 ;;BR11YZZ 
 ;;9002226.02101,"1804,BR11YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR11ZZZ ",.01)
 ;;BR11ZZZ 
 ;;9002226.02101,"1804,BR11ZZZ ",.02)
 ;;BR11ZZZ 
 ;;9002226.02101,"1804,BR11ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR120ZZ ",.01)
 ;;BR120ZZ 
 ;;9002226.02101,"1804,BR120ZZ ",.02)
 ;;BR120ZZ 
 ;;9002226.02101,"1804,BR120ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR121ZZ ",.01)
 ;;BR121ZZ 
 ;;9002226.02101,"1804,BR121ZZ ",.02)
 ;;BR121ZZ 
 ;;9002226.02101,"1804,BR121ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR12YZZ ",.01)
 ;;BR12YZZ 
 ;;9002226.02101,"1804,BR12YZZ ",.02)
 ;;BR12YZZ 
 ;;9002226.02101,"1804,BR12YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR12ZZZ ",.01)
 ;;BR12ZZZ 
 ;;9002226.02101,"1804,BR12ZZZ ",.02)
 ;;BR12ZZZ 
 ;;9002226.02101,"1804,BR12ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR130ZZ ",.01)
 ;;BR130ZZ 
 ;;9002226.02101,"1804,BR130ZZ ",.02)
 ;;BR130ZZ 
 ;;9002226.02101,"1804,BR130ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR131ZZ ",.01)
 ;;BR131ZZ 
 ;;9002226.02101,"1804,BR131ZZ ",.02)
 ;;BR131ZZ 
 ;;9002226.02101,"1804,BR131ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR13YZZ ",.01)
 ;;BR13YZZ 
 ;;9002226.02101,"1804,BR13YZZ ",.02)
 ;;BR13YZZ 
 ;;9002226.02101,"1804,BR13YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR13ZZZ ",.01)
 ;;BR13ZZZ 
 ;;9002226.02101,"1804,BR13ZZZ ",.02)
 ;;BR13ZZZ 
 ;;9002226.02101,"1804,BR13ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR140ZZ ",.01)
 ;;BR140ZZ 
 ;;9002226.02101,"1804,BR140ZZ ",.02)
 ;;BR140ZZ 
 ;;9002226.02101,"1804,BR140ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR141ZZ ",.01)
 ;;BR141ZZ 
 ;;9002226.02101,"1804,BR141ZZ ",.02)
 ;;BR141ZZ 
 ;;9002226.02101,"1804,BR141ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR14YZZ ",.01)
 ;;BR14YZZ 
 ;;9002226.02101,"1804,BR14YZZ ",.02)
 ;;BR14YZZ 
 ;;9002226.02101,"1804,BR14YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR14ZZZ ",.01)
 ;;BR14ZZZ 
 ;;9002226.02101,"1804,BR14ZZZ ",.02)
 ;;BR14ZZZ 
 ;;9002226.02101,"1804,BR14ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR150ZZ ",.01)
 ;;BR150ZZ 
 ;;9002226.02101,"1804,BR150ZZ ",.02)
 ;;BR150ZZ 
 ;;9002226.02101,"1804,BR150ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR151ZZ ",.01)
 ;;BR151ZZ 
 ;;9002226.02101,"1804,BR151ZZ ",.02)
 ;;BR151ZZ 
 ;;9002226.02101,"1804,BR151ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR15YZZ ",.01)
 ;;BR15YZZ 
 ;;9002226.02101,"1804,BR15YZZ ",.02)
 ;;BR15YZZ 
 ;;9002226.02101,"1804,BR15YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR15ZZZ ",.01)
 ;;BR15ZZZ 
 ;;9002226.02101,"1804,BR15ZZZ ",.02)
 ;;BR15ZZZ 
 ;;9002226.02101,"1804,BR15ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR160ZZ ",.01)
 ;;BR160ZZ 
 ;;9002226.02101,"1804,BR160ZZ ",.02)
 ;;BR160ZZ 
 ;;9002226.02101,"1804,BR160ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR161ZZ ",.01)
 ;;BR161ZZ 
 ;;9002226.02101,"1804,BR161ZZ ",.02)
 ;;BR161ZZ 
 ;;9002226.02101,"1804,BR161ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR16YZZ ",.01)
 ;;BR16YZZ 
 ;;9002226.02101,"1804,BR16YZZ ",.02)
 ;;BR16YZZ 
 ;;9002226.02101,"1804,BR16YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR16ZZZ ",.01)
 ;;BR16ZZZ 
 ;;9002226.02101,"1804,BR16ZZZ ",.02)
 ;;BR16ZZZ 
 ;;9002226.02101,"1804,BR16ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR170ZZ ",.01)
 ;;BR170ZZ 
 ;;9002226.02101,"1804,BR170ZZ ",.02)
 ;;BR170ZZ 
 ;;9002226.02101,"1804,BR170ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR171ZZ ",.01)
 ;;BR171ZZ 
 ;;9002226.02101,"1804,BR171ZZ ",.02)
 ;;BR171ZZ 
 ;;9002226.02101,"1804,BR171ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR17YZZ ",.01)
 ;;BR17YZZ 
 ;;9002226.02101,"1804,BR17YZZ ",.02)
 ;;BR17YZZ 
 ;;9002226.02101,"1804,BR17YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR17ZZZ ",.01)
 ;;BR17ZZZ 
 ;;9002226.02101,"1804,BR17ZZZ ",.02)
 ;;BR17ZZZ 
 ;;9002226.02101,"1804,BR17ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR180ZZ ",.01)
 ;;BR180ZZ 
 ;;9002226.02101,"1804,BR180ZZ ",.02)
 ;;BR180ZZ 
 ;;9002226.02101,"1804,BR180ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR181ZZ ",.01)
 ;;BR181ZZ 
 ;;9002226.02101,"1804,BR181ZZ ",.02)
 ;;BR181ZZ 
 ;;9002226.02101,"1804,BR181ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR18YZZ ",.01)
 ;;BR18YZZ 
 ;;9002226.02101,"1804,BR18YZZ ",.02)
 ;;BR18YZZ 
 ;;9002226.02101,"1804,BR18YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR18ZZZ ",.01)
 ;;BR18ZZZ 
 ;;9002226.02101,"1804,BR18ZZZ ",.02)
 ;;BR18ZZZ 
 ;;9002226.02101,"1804,BR18ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR190ZZ ",.01)
 ;;BR190ZZ 
 ;;9002226.02101,"1804,BR190ZZ ",.02)
 ;;BR190ZZ 
 ;;9002226.02101,"1804,BR190ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR191ZZ ",.01)
 ;;BR191ZZ 
 ;;9002226.02101,"1804,BR191ZZ ",.02)
 ;;BR191ZZ 
 ;;9002226.02101,"1804,BR191ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR19YZZ ",.01)
 ;;BR19YZZ 
 ;;9002226.02101,"1804,BR19YZZ ",.02)
 ;;BR19YZZ 
 ;;9002226.02101,"1804,BR19YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR19ZZZ ",.01)
 ;;BR19ZZZ 
 ;;9002226.02101,"1804,BR19ZZZ ",.02)
 ;;BR19ZZZ 
 ;;9002226.02101,"1804,BR19ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1B0ZZ ",.01)
 ;;BR1B0ZZ 
 ;;9002226.02101,"1804,BR1B0ZZ ",.02)
 ;;BR1B0ZZ 
 ;;9002226.02101,"1804,BR1B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1B1ZZ ",.01)
 ;;BR1B1ZZ 
 ;;9002226.02101,"1804,BR1B1ZZ ",.02)
 ;;BR1B1ZZ 
 ;;9002226.02101,"1804,BR1B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1BYZZ ",.01)
 ;;BR1BYZZ 
 ;;9002226.02101,"1804,BR1BYZZ ",.02)
 ;;BR1BYZZ 
 ;;9002226.02101,"1804,BR1BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1BZZZ ",.01)
 ;;BR1BZZZ 
 ;;9002226.02101,"1804,BR1BZZZ ",.02)
 ;;BR1BZZZ 
 ;;9002226.02101,"1804,BR1BZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1C0ZZ ",.01)
 ;;BR1C0ZZ 
 ;;9002226.02101,"1804,BR1C0ZZ ",.02)
 ;;BR1C0ZZ 
 ;;9002226.02101,"1804,BR1C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1C1ZZ ",.01)
 ;;BR1C1ZZ 
 ;;9002226.02101,"1804,BR1C1ZZ ",.02)
 ;;BR1C1ZZ 
 ;;9002226.02101,"1804,BR1C1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1CYZZ ",.01)
 ;;BR1CYZZ 
 ;;9002226.02101,"1804,BR1CYZZ ",.02)
 ;;BR1CYZZ 
 ;;9002226.02101,"1804,BR1CYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1CZZZ ",.01)
 ;;BR1CZZZ 
 ;;9002226.02101,"1804,BR1CZZZ ",.02)
 ;;BR1CZZZ 
 ;;9002226.02101,"1804,BR1CZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1D0ZZ ",.01)
 ;;BR1D0ZZ 
 ;;9002226.02101,"1804,BR1D0ZZ ",.02)
 ;;BR1D0ZZ 
 ;;9002226.02101,"1804,BR1D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1D1ZZ ",.01)
 ;;BR1D1ZZ 
 ;;9002226.02101,"1804,BR1D1ZZ ",.02)
 ;;BR1D1ZZ 
 ;;9002226.02101,"1804,BR1D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1DYZZ ",.01)
 ;;BR1DYZZ 
 ;;9002226.02101,"1804,BR1DYZZ ",.02)
 ;;BR1DYZZ 
 ;;9002226.02101,"1804,BR1DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1DZZZ ",.01)
 ;;BR1DZZZ 
 ;;9002226.02101,"1804,BR1DZZZ ",.02)
 ;;BR1DZZZ 
 ;;9002226.02101,"1804,BR1DZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1F0ZZ ",.01)
 ;;BR1F0ZZ 
 ;;9002226.02101,"1804,BR1F0ZZ ",.02)
 ;;BR1F0ZZ 
 ;;9002226.02101,"1804,BR1F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1F1ZZ ",.01)
 ;;BR1F1ZZ 
 ;;9002226.02101,"1804,BR1F1ZZ ",.02)
 ;;BR1F1ZZ 
 ;;9002226.02101,"1804,BR1F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1FYZZ ",.01)
 ;;BR1FYZZ 
 ;;9002226.02101,"1804,BR1FYZZ ",.02)
 ;;BR1FYZZ 
 ;;9002226.02101,"1804,BR1FYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1FZZZ ",.01)
 ;;BR1FZZZ 
 ;;9002226.02101,"1804,BR1FZZZ ",.02)
 ;;BR1FZZZ 
 ;;9002226.02101,"1804,BR1FZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1G0ZZ ",.01)
 ;;BR1G0ZZ 
 ;;9002226.02101,"1804,BR1G0ZZ ",.02)
 ;;BR1G0ZZ 
 ;;9002226.02101,"1804,BR1G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1G1ZZ ",.01)
 ;;BR1G1ZZ 
 ;;9002226.02101,"1804,BR1G1ZZ ",.02)
 ;;BR1G1ZZ 
 ;;9002226.02101,"1804,BR1G1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1GYZZ ",.01)
 ;;BR1GYZZ 
 ;;9002226.02101,"1804,BR1GYZZ ",.02)
 ;;BR1GYZZ 
 ;;9002226.02101,"1804,BR1GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1GZZZ ",.01)
 ;;BR1GZZZ 
 ;;9002226.02101,"1804,BR1GZZZ ",.02)
 ;;BR1GZZZ 
 ;;9002226.02101,"1804,BR1GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1H0ZZ ",.01)
 ;;BR1H0ZZ 
 ;;9002226.02101,"1804,BR1H0ZZ ",.02)
 ;;BR1H0ZZ 
 ;;9002226.02101,"1804,BR1H0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1H1ZZ ",.01)
 ;;BR1H1ZZ 
 ;;9002226.02101,"1804,BR1H1ZZ ",.02)
 ;;BR1H1ZZ 
 ;;9002226.02101,"1804,BR1H1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1HYZZ ",.01)
 ;;BR1HYZZ 
 ;;9002226.02101,"1804,BR1HYZZ ",.02)
 ;;BR1HYZZ 
 ;;9002226.02101,"1804,BR1HYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR1HZZZ ",.01)
 ;;BR1HZZZ 
 ;;9002226.02101,"1804,BR1HZZZ ",.02)
 ;;BR1HZZZ 
 ;;9002226.02101,"1804,BR1HZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR200ZZ ",.01)
 ;;BR200ZZ 
 ;;9002226.02101,"1804,BR200ZZ ",.02)
 ;;BR200ZZ 
 ;;9002226.02101,"1804,BR200ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR201ZZ ",.01)
 ;;BR201ZZ 
 ;;9002226.02101,"1804,BR201ZZ ",.02)
 ;;BR201ZZ 
 ;;9002226.02101,"1804,BR201ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR20YZZ ",.01)
 ;;BR20YZZ 
 ;;9002226.02101,"1804,BR20YZZ ",.02)
 ;;BR20YZZ 
 ;;9002226.02101,"1804,BR20YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR20ZZZ ",.01)
 ;;BR20ZZZ 
 ;;9002226.02101,"1804,BR20ZZZ ",.02)
 ;;BR20ZZZ 
 ;;9002226.02101,"1804,BR20ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BR270ZZ ",.01)
 ;;BR270ZZ 
 ;;9002226.02101,"1804,BR270ZZ ",.02)
 ;;BR270ZZ 
 ;;9002226.02101,"1804,BR270ZZ ",.03)
 ;;31
