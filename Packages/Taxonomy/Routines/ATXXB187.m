ATXXB187 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,B51D0ZZ ",.01)
 ;;B51D0ZZ 
 ;;9002226.02101,"1804,B51D0ZZ ",.02)
 ;;B51D0ZZ 
 ;;9002226.02101,"1804,B51D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51D1ZA ",.01)
 ;;B51D1ZA 
 ;;9002226.02101,"1804,B51D1ZA ",.02)
 ;;B51D1ZA 
 ;;9002226.02101,"1804,B51D1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51D1ZZ ",.01)
 ;;B51D1ZZ 
 ;;9002226.02101,"1804,B51D1ZZ ",.02)
 ;;B51D1ZZ 
 ;;9002226.02101,"1804,B51D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51DYZA ",.01)
 ;;B51DYZA 
 ;;9002226.02101,"1804,B51DYZA ",.02)
 ;;B51DYZA 
 ;;9002226.02101,"1804,B51DYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51DYZZ ",.01)
 ;;B51DYZZ 
 ;;9002226.02101,"1804,B51DYZZ ",.02)
 ;;B51DYZZ 
 ;;9002226.02101,"1804,B51DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51DZZA ",.01)
 ;;B51DZZA 
 ;;9002226.02101,"1804,B51DZZA ",.02)
 ;;B51DZZA 
 ;;9002226.02101,"1804,B51DZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51DZZZ ",.01)
 ;;B51DZZZ 
 ;;9002226.02101,"1804,B51DZZZ ",.02)
 ;;B51DZZZ 
 ;;9002226.02101,"1804,B51DZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51F0ZA ",.01)
 ;;B51F0ZA 
 ;;9002226.02101,"1804,B51F0ZA ",.02)
 ;;B51F0ZA 
 ;;9002226.02101,"1804,B51F0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51F0ZZ ",.01)
 ;;B51F0ZZ 
 ;;9002226.02101,"1804,B51F0ZZ ",.02)
 ;;B51F0ZZ 
 ;;9002226.02101,"1804,B51F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51F1ZA ",.01)
 ;;B51F1ZA 
 ;;9002226.02101,"1804,B51F1ZA ",.02)
 ;;B51F1ZA 
 ;;9002226.02101,"1804,B51F1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51F1ZZ ",.01)
 ;;B51F1ZZ 
 ;;9002226.02101,"1804,B51F1ZZ ",.02)
 ;;B51F1ZZ 
 ;;9002226.02101,"1804,B51F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51FYZA ",.01)
 ;;B51FYZA 
 ;;9002226.02101,"1804,B51FYZA ",.02)
 ;;B51FYZA 
 ;;9002226.02101,"1804,B51FYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51FYZZ ",.01)
 ;;B51FYZZ 
 ;;9002226.02101,"1804,B51FYZZ ",.02)
 ;;B51FYZZ 
 ;;9002226.02101,"1804,B51FYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51FZZA ",.01)
 ;;B51FZZA 
 ;;9002226.02101,"1804,B51FZZA ",.02)
 ;;B51FZZA 
 ;;9002226.02101,"1804,B51FZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51FZZZ ",.01)
 ;;B51FZZZ 
 ;;9002226.02101,"1804,B51FZZZ ",.02)
 ;;B51FZZZ 
 ;;9002226.02101,"1804,B51FZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51G0ZA ",.01)
 ;;B51G0ZA 
 ;;9002226.02101,"1804,B51G0ZA ",.02)
 ;;B51G0ZA 
 ;;9002226.02101,"1804,B51G0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51G0ZZ ",.01)
 ;;B51G0ZZ 
 ;;9002226.02101,"1804,B51G0ZZ ",.02)
 ;;B51G0ZZ 
 ;;9002226.02101,"1804,B51G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51G1ZA ",.01)
 ;;B51G1ZA 
 ;;9002226.02101,"1804,B51G1ZA ",.02)
 ;;B51G1ZA 
 ;;9002226.02101,"1804,B51G1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51G1ZZ ",.01)
 ;;B51G1ZZ 
 ;;9002226.02101,"1804,B51G1ZZ ",.02)
 ;;B51G1ZZ 
 ;;9002226.02101,"1804,B51G1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51GYZA ",.01)
 ;;B51GYZA 
 ;;9002226.02101,"1804,B51GYZA ",.02)
 ;;B51GYZA 
 ;;9002226.02101,"1804,B51GYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51GYZZ ",.01)
 ;;B51GYZZ 
 ;;9002226.02101,"1804,B51GYZZ ",.02)
 ;;B51GYZZ 
 ;;9002226.02101,"1804,B51GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51GZZA ",.01)
 ;;B51GZZA 
 ;;9002226.02101,"1804,B51GZZA ",.02)
 ;;B51GZZA 
 ;;9002226.02101,"1804,B51GZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51GZZZ ",.01)
 ;;B51GZZZ 
 ;;9002226.02101,"1804,B51GZZZ ",.02)
 ;;B51GZZZ 
 ;;9002226.02101,"1804,B51GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51H0ZA ",.01)
 ;;B51H0ZA 
 ;;9002226.02101,"1804,B51H0ZA ",.02)
 ;;B51H0ZA 
 ;;9002226.02101,"1804,B51H0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51H0ZZ ",.01)
 ;;B51H0ZZ 
 ;;9002226.02101,"1804,B51H0ZZ ",.02)
 ;;B51H0ZZ 
 ;;9002226.02101,"1804,B51H0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51H1ZA ",.01)
 ;;B51H1ZA 
 ;;9002226.02101,"1804,B51H1ZA ",.02)
 ;;B51H1ZA 
 ;;9002226.02101,"1804,B51H1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51H1ZZ ",.01)
 ;;B51H1ZZ 
 ;;9002226.02101,"1804,B51H1ZZ ",.02)
 ;;B51H1ZZ 
 ;;9002226.02101,"1804,B51H1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51HYZA ",.01)
 ;;B51HYZA 
 ;;9002226.02101,"1804,B51HYZA ",.02)
 ;;B51HYZA 
 ;;9002226.02101,"1804,B51HYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51HYZZ ",.01)
 ;;B51HYZZ 
 ;;9002226.02101,"1804,B51HYZZ ",.02)
 ;;B51HYZZ 
 ;;9002226.02101,"1804,B51HYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51HZZA ",.01)
 ;;B51HZZA 
 ;;9002226.02101,"1804,B51HZZA ",.02)
 ;;B51HZZA 
 ;;9002226.02101,"1804,B51HZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51HZZZ ",.01)
 ;;B51HZZZ 
 ;;9002226.02101,"1804,B51HZZZ ",.02)
 ;;B51HZZZ 
 ;;9002226.02101,"1804,B51HZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51J0ZA ",.01)
 ;;B51J0ZA 
 ;;9002226.02101,"1804,B51J0ZA ",.02)
 ;;B51J0ZA 
 ;;9002226.02101,"1804,B51J0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51J0ZZ ",.01)
 ;;B51J0ZZ 
 ;;9002226.02101,"1804,B51J0ZZ ",.02)
 ;;B51J0ZZ 
 ;;9002226.02101,"1804,B51J0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51J1ZA ",.01)
 ;;B51J1ZA 
 ;;9002226.02101,"1804,B51J1ZA ",.02)
 ;;B51J1ZA 
 ;;9002226.02101,"1804,B51J1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51J1ZZ ",.01)
 ;;B51J1ZZ 
 ;;9002226.02101,"1804,B51J1ZZ ",.02)
 ;;B51J1ZZ 
 ;;9002226.02101,"1804,B51J1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51JYZA ",.01)
 ;;B51JYZA 
 ;;9002226.02101,"1804,B51JYZA ",.02)
 ;;B51JYZA 
 ;;9002226.02101,"1804,B51JYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51JYZZ ",.01)
 ;;B51JYZZ 
 ;;9002226.02101,"1804,B51JYZZ ",.02)
 ;;B51JYZZ 
 ;;9002226.02101,"1804,B51JYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51JZZA ",.01)
 ;;B51JZZA 
 ;;9002226.02101,"1804,B51JZZA ",.02)
 ;;B51JZZA 
 ;;9002226.02101,"1804,B51JZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51JZZZ ",.01)
 ;;B51JZZZ 
 ;;9002226.02101,"1804,B51JZZZ ",.02)
 ;;B51JZZZ 
 ;;9002226.02101,"1804,B51JZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51K0ZA ",.01)
 ;;B51K0ZA 
 ;;9002226.02101,"1804,B51K0ZA ",.02)
 ;;B51K0ZA 
 ;;9002226.02101,"1804,B51K0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51K0ZZ ",.01)
 ;;B51K0ZZ 
 ;;9002226.02101,"1804,B51K0ZZ ",.02)
 ;;B51K0ZZ 
 ;;9002226.02101,"1804,B51K0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51K1ZA ",.01)
 ;;B51K1ZA 
 ;;9002226.02101,"1804,B51K1ZA ",.02)
 ;;B51K1ZA 
 ;;9002226.02101,"1804,B51K1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51K1ZZ ",.01)
 ;;B51K1ZZ 
 ;;9002226.02101,"1804,B51K1ZZ ",.02)
 ;;B51K1ZZ 
 ;;9002226.02101,"1804,B51K1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51KYZA ",.01)
 ;;B51KYZA 
 ;;9002226.02101,"1804,B51KYZA ",.02)
 ;;B51KYZA 
 ;;9002226.02101,"1804,B51KYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51KYZZ ",.01)
 ;;B51KYZZ 
 ;;9002226.02101,"1804,B51KYZZ ",.02)
 ;;B51KYZZ 
 ;;9002226.02101,"1804,B51KYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51KZZA ",.01)
 ;;B51KZZA 
 ;;9002226.02101,"1804,B51KZZA ",.02)
 ;;B51KZZA 
 ;;9002226.02101,"1804,B51KZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51KZZZ ",.01)
 ;;B51KZZZ 
 ;;9002226.02101,"1804,B51KZZZ ",.02)
 ;;B51KZZZ 
 ;;9002226.02101,"1804,B51KZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51L0ZA ",.01)
 ;;B51L0ZA 
 ;;9002226.02101,"1804,B51L0ZA ",.02)
 ;;B51L0ZA 
 ;;9002226.02101,"1804,B51L0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51L0ZZ ",.01)
 ;;B51L0ZZ 
 ;;9002226.02101,"1804,B51L0ZZ ",.02)
 ;;B51L0ZZ 
 ;;9002226.02101,"1804,B51L0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51L1ZA ",.01)
 ;;B51L1ZA 
 ;;9002226.02101,"1804,B51L1ZA ",.02)
 ;;B51L1ZA 
 ;;9002226.02101,"1804,B51L1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51L1ZZ ",.01)
 ;;B51L1ZZ 
 ;;9002226.02101,"1804,B51L1ZZ ",.02)
 ;;B51L1ZZ 
 ;;9002226.02101,"1804,B51L1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51LYZA ",.01)
 ;;B51LYZA 
 ;;9002226.02101,"1804,B51LYZA ",.02)
 ;;B51LYZA 
 ;;9002226.02101,"1804,B51LYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51LYZZ ",.01)
 ;;B51LYZZ 
 ;;9002226.02101,"1804,B51LYZZ ",.02)
 ;;B51LYZZ 
 ;;9002226.02101,"1804,B51LYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51LZZA ",.01)
 ;;B51LZZA 
 ;;9002226.02101,"1804,B51LZZA ",.02)
 ;;B51LZZA 
 ;;9002226.02101,"1804,B51LZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51LZZZ ",.01)
 ;;B51LZZZ 
 ;;9002226.02101,"1804,B51LZZZ ",.02)
 ;;B51LZZZ 
 ;;9002226.02101,"1804,B51LZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51M0ZA ",.01)
 ;;B51M0ZA 
 ;;9002226.02101,"1804,B51M0ZA ",.02)
 ;;B51M0ZA 
 ;;9002226.02101,"1804,B51M0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51M0ZZ ",.01)
 ;;B51M0ZZ 
 ;;9002226.02101,"1804,B51M0ZZ ",.02)
 ;;B51M0ZZ 
 ;;9002226.02101,"1804,B51M0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51M1ZA ",.01)
 ;;B51M1ZA 
 ;;9002226.02101,"1804,B51M1ZA ",.02)
 ;;B51M1ZA 
 ;;9002226.02101,"1804,B51M1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51M1ZZ ",.01)
 ;;B51M1ZZ 
 ;;9002226.02101,"1804,B51M1ZZ ",.02)
 ;;B51M1ZZ 
 ;;9002226.02101,"1804,B51M1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51MYZA ",.01)
 ;;B51MYZA 
 ;;9002226.02101,"1804,B51MYZA ",.02)
 ;;B51MYZA 
 ;;9002226.02101,"1804,B51MYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51MYZZ ",.01)
 ;;B51MYZZ 
 ;;9002226.02101,"1804,B51MYZZ ",.02)
 ;;B51MYZZ 
 ;;9002226.02101,"1804,B51MYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51MZZA ",.01)
 ;;B51MZZA 
 ;;9002226.02101,"1804,B51MZZA ",.02)
 ;;B51MZZA 
 ;;9002226.02101,"1804,B51MZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51MZZZ ",.01)
 ;;B51MZZZ 
 ;;9002226.02101,"1804,B51MZZZ ",.02)
 ;;B51MZZZ 
 ;;9002226.02101,"1804,B51MZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51N0ZA ",.01)
 ;;B51N0ZA 
 ;;9002226.02101,"1804,B51N0ZA ",.02)
 ;;B51N0ZA 
 ;;9002226.02101,"1804,B51N0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51N0ZZ ",.01)
 ;;B51N0ZZ 
 ;;9002226.02101,"1804,B51N0ZZ ",.02)
 ;;B51N0ZZ 
 ;;9002226.02101,"1804,B51N0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51N1ZA ",.01)
 ;;B51N1ZA 
 ;;9002226.02101,"1804,B51N1ZA ",.02)
 ;;B51N1ZA 
 ;;9002226.02101,"1804,B51N1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51N1ZZ ",.01)
 ;;B51N1ZZ 
 ;;9002226.02101,"1804,B51N1ZZ ",.02)
 ;;B51N1ZZ 
 ;;9002226.02101,"1804,B51N1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51NYZA ",.01)
 ;;B51NYZA 
 ;;9002226.02101,"1804,B51NYZA ",.02)
 ;;B51NYZA 
 ;;9002226.02101,"1804,B51NYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51NYZZ ",.01)
 ;;B51NYZZ 
 ;;9002226.02101,"1804,B51NYZZ ",.02)
 ;;B51NYZZ 
 ;;9002226.02101,"1804,B51NYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51NZZA ",.01)
 ;;B51NZZA 
 ;;9002226.02101,"1804,B51NZZA ",.02)
 ;;B51NZZA 
 ;;9002226.02101,"1804,B51NZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51NZZZ ",.01)
 ;;B51NZZZ 
 ;;9002226.02101,"1804,B51NZZZ ",.02)
 ;;B51NZZZ 
 ;;9002226.02101,"1804,B51NZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51P0ZA ",.01)
 ;;B51P0ZA 
 ;;9002226.02101,"1804,B51P0ZA ",.02)
 ;;B51P0ZA 
 ;;9002226.02101,"1804,B51P0ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51P0ZZ ",.01)
 ;;B51P0ZZ 
 ;;9002226.02101,"1804,B51P0ZZ ",.02)
 ;;B51P0ZZ 
 ;;9002226.02101,"1804,B51P0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51P1ZA ",.01)
 ;;B51P1ZA 
 ;;9002226.02101,"1804,B51P1ZA ",.02)
 ;;B51P1ZA 
 ;;9002226.02101,"1804,B51P1ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51P1ZZ ",.01)
 ;;B51P1ZZ 
 ;;9002226.02101,"1804,B51P1ZZ ",.02)
 ;;B51P1ZZ 
 ;;9002226.02101,"1804,B51P1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51PYZA ",.01)
 ;;B51PYZA 
 ;;9002226.02101,"1804,B51PYZA ",.02)
 ;;B51PYZA 
 ;;9002226.02101,"1804,B51PYZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51PYZZ ",.01)
 ;;B51PYZZ 
 ;;9002226.02101,"1804,B51PYZZ ",.02)
 ;;B51PYZZ 
 ;;9002226.02101,"1804,B51PYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B51PZZA ",.01)
 ;;B51PZZA 
 ;;9002226.02101,"1804,B51PZZA ",.02)
 ;;B51PZZA 
 ;;9002226.02101,"1804,B51PZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B51PZZZ ",.01)
 ;;B51PZZZ 
