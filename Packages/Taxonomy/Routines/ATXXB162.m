ATXXB162 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,30263N1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263P0 ",.01)
 ;;30263P0 
 ;;9002226.02101,"1804,30263P0 ",.02)
 ;;30263P0 
 ;;9002226.02101,"1804,30263P0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263P1 ",.01)
 ;;30263P1 
 ;;9002226.02101,"1804,30263P1 ",.02)
 ;;30263P1 
 ;;9002226.02101,"1804,30263P1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263Q0 ",.01)
 ;;30263Q0 
 ;;9002226.02101,"1804,30263Q0 ",.02)
 ;;30263Q0 
 ;;9002226.02101,"1804,30263Q0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263Q1 ",.01)
 ;;30263Q1 
 ;;9002226.02101,"1804,30263Q1 ",.02)
 ;;30263Q1 
 ;;9002226.02101,"1804,30263Q1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263R0 ",.01)
 ;;30263R0 
 ;;9002226.02101,"1804,30263R0 ",.02)
 ;;30263R0 
 ;;9002226.02101,"1804,30263R0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263R1 ",.01)
 ;;30263R1 
 ;;9002226.02101,"1804,30263R1 ",.02)
 ;;30263R1 
 ;;9002226.02101,"1804,30263R1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263S0 ",.01)
 ;;30263S0 
 ;;9002226.02101,"1804,30263S0 ",.02)
 ;;30263S0 
 ;;9002226.02101,"1804,30263S0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263S1 ",.01)
 ;;30263S1 
 ;;9002226.02101,"1804,30263S1 ",.02)
 ;;30263S1 
 ;;9002226.02101,"1804,30263S1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263T0 ",.01)
 ;;30263T0 
 ;;9002226.02101,"1804,30263T0 ",.02)
 ;;30263T0 
 ;;9002226.02101,"1804,30263T0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263T1 ",.01)
 ;;30263T1 
 ;;9002226.02101,"1804,30263T1 ",.02)
 ;;30263T1 
 ;;9002226.02101,"1804,30263T1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263V0 ",.01)
 ;;30263V0 
 ;;9002226.02101,"1804,30263V0 ",.02)
 ;;30263V0 
 ;;9002226.02101,"1804,30263V0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263V1 ",.01)
 ;;30263V1 
 ;;9002226.02101,"1804,30263V1 ",.02)
 ;;30263V1 
 ;;9002226.02101,"1804,30263V1 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263W0 ",.01)
 ;;30263W0 
 ;;9002226.02101,"1804,30263W0 ",.02)
 ;;30263W0 
 ;;9002226.02101,"1804,30263W0 ",.03)
 ;;31
 ;;9002226.02101,"1804,30263W1 ",.01)
 ;;30263W1 
 ;;9002226.02101,"1804,30263W1 ",.02)
 ;;30263W1 
 ;;9002226.02101,"1804,30263W1 ",.03)
 ;;31
 ;;9002226.02101,"1804,38.29 ",.01)
 ;;38.29 
 ;;9002226.02101,"1804,38.29 ",.02)
 ;;38.29 
 ;;9002226.02101,"1804,38.29 ",.03)
 ;;2
 ;;9002226.02101,"1804,38.91 ",.01)
 ;;38.91 
 ;;9002226.02101,"1804,38.91 ",.02)
 ;;38.99 
 ;;9002226.02101,"1804,38.91 ",.03)
 ;;2
 ;;9002226.02101,"1804,3C1ZX8Z ",.01)
 ;;3C1ZX8Z 
 ;;9002226.02101,"1804,3C1ZX8Z ",.02)
 ;;3C1ZX8Z 
 ;;9002226.02101,"1804,3C1ZX8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00X0M ",.01)
 ;;3E00X0M 
 ;;9002226.02101,"1804,3E00X0M ",.02)
 ;;3E00X0M 
 ;;9002226.02101,"1804,3E00X0M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00X29 ",.01)
 ;;3E00X29 
 ;;9002226.02101,"1804,3E00X29 ",.02)
 ;;3E00X29 
 ;;9002226.02101,"1804,3E00X29 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00X3Z ",.01)
 ;;3E00X3Z 
 ;;9002226.02101,"1804,3E00X3Z ",.02)
 ;;3E00X3Z 
 ;;9002226.02101,"1804,3E00X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00X4Z ",.01)
 ;;3E00X4Z 
 ;;9002226.02101,"1804,3E00X4Z ",.02)
 ;;3E00X4Z 
 ;;9002226.02101,"1804,3E00X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XBZ ",.01)
 ;;3E00XBZ 
 ;;9002226.02101,"1804,3E00XBZ ",.02)
 ;;3E00XBZ 
 ;;9002226.02101,"1804,3E00XBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XGC ",.01)
 ;;3E00XGC 
 ;;9002226.02101,"1804,3E00XGC ",.02)
 ;;3E00XGC 
 ;;9002226.02101,"1804,3E00XGC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XKZ ",.01)
 ;;3E00XKZ 
 ;;9002226.02101,"1804,3E00XKZ ",.02)
 ;;3E00XKZ 
 ;;9002226.02101,"1804,3E00XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XMZ ",.01)
 ;;3E00XMZ 
 ;;9002226.02101,"1804,3E00XMZ ",.02)
 ;;3E00XMZ 
 ;;9002226.02101,"1804,3E00XMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XNZ ",.01)
 ;;3E00XNZ 
 ;;9002226.02101,"1804,3E00XNZ ",.02)
 ;;3E00XNZ 
 ;;9002226.02101,"1804,3E00XNZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E00XTZ ",.01)
 ;;3E00XTZ 
 ;;9002226.02101,"1804,3E00XTZ ",.02)
 ;;3E00XTZ 
 ;;9002226.02101,"1804,3E00XTZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0130M ",.01)
 ;;3E0130M 
 ;;9002226.02101,"1804,3E0130M ",.02)
 ;;3E0130M 
 ;;9002226.02101,"1804,3E0130M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E01329 ",.01)
 ;;3E01329 
 ;;9002226.02101,"1804,3E01329 ",.02)
 ;;3E01329 
 ;;9002226.02101,"1804,3E01329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0133Z ",.01)
 ;;3E0133Z 
 ;;9002226.02101,"1804,3E0133Z ",.02)
 ;;3E0133Z 
 ;;9002226.02101,"1804,3E0133Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0134Z ",.01)
 ;;3E0134Z 
 ;;9002226.02101,"1804,3E0134Z ",.02)
 ;;3E0134Z 
 ;;9002226.02101,"1804,3E0134Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E013GC ",.01)
 ;;3E013GC 
 ;;9002226.02101,"1804,3E013GC ",.02)
 ;;3E013GC 
 ;;9002226.02101,"1804,3E013GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E013NZ ",.01)
 ;;3E013NZ 
 ;;9002226.02101,"1804,3E013NZ ",.02)
 ;;3E013NZ 
 ;;9002226.02101,"1804,3E013NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E013VG ",.01)
 ;;3E013VG 
 ;;9002226.02101,"1804,3E013VG ",.02)
 ;;3E013VG 
 ;;9002226.02101,"1804,3E013VG ",.03)
 ;;31
 ;;9002226.02101,"1804,3E013VJ ",.01)
 ;;3E013VJ 
 ;;9002226.02101,"1804,3E013VJ ",.02)
 ;;3E013VJ 
 ;;9002226.02101,"1804,3E013VJ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0230M ",.01)
 ;;3E0230M 
 ;;9002226.02101,"1804,3E0230M ",.02)
 ;;3E0230M 
 ;;9002226.02101,"1804,3E0230M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E02329 ",.01)
 ;;3E02329 
 ;;9002226.02101,"1804,3E02329 ",.02)
 ;;3E02329 
 ;;9002226.02101,"1804,3E02329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0233Z ",.01)
 ;;3E0233Z 
 ;;9002226.02101,"1804,3E0233Z ",.02)
 ;;3E0233Z 
 ;;9002226.02101,"1804,3E0233Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0234Z ",.01)
 ;;3E0234Z 
 ;;9002226.02101,"1804,3E0234Z ",.02)
 ;;3E0234Z 
 ;;9002226.02101,"1804,3E0234Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E023GC ",.01)
 ;;3E023GC 
 ;;9002226.02101,"1804,3E023GC ",.02)
 ;;3E023GC 
 ;;9002226.02101,"1804,3E023GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E023NZ ",.01)
 ;;3E023NZ 
 ;;9002226.02101,"1804,3E023NZ ",.02)
 ;;3E023NZ 
 ;;9002226.02101,"1804,3E023NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03003 ",.01)
 ;;3E03003 
 ;;9002226.02101,"1804,3E03003 ",.02)
 ;;3E03003 
 ;;9002226.02101,"1804,3E03003 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03005 ",.01)
 ;;3E03005 
 ;;9002226.02101,"1804,3E03005 ",.02)
 ;;3E03005 
 ;;9002226.02101,"1804,3E03005 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0300M ",.01)
 ;;3E0300M 
 ;;9002226.02101,"1804,3E0300M ",.02)
 ;;3E0300M 
 ;;9002226.02101,"1804,3E0300M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03017 ",.01)
 ;;3E03017 
 ;;9002226.02101,"1804,3E03017 ",.02)
 ;;3E03017 
 ;;9002226.02101,"1804,3E03017 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03029 ",.01)
 ;;3E03029 
 ;;9002226.02101,"1804,3E03029 ",.02)
 ;;3E03029 
 ;;9002226.02101,"1804,3E03029 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0303Z ",.01)
 ;;3E0303Z 
 ;;9002226.02101,"1804,3E0303Z ",.02)
 ;;3E0303Z 
 ;;9002226.02101,"1804,3E0303Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0304Z ",.01)
 ;;3E0304Z 
 ;;9002226.02101,"1804,3E0304Z ",.02)
 ;;3E0304Z 
 ;;9002226.02101,"1804,3E0304Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0306Z ",.01)
 ;;3E0306Z 
 ;;9002226.02101,"1804,3E0306Z ",.02)
 ;;3E0306Z 
 ;;9002226.02101,"1804,3E0306Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0307Z ",.01)
 ;;3E0307Z 
 ;;9002226.02101,"1804,3E0307Z ",.02)
 ;;3E0307Z 
 ;;9002226.02101,"1804,3E0307Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030FZ ",.01)
 ;;3E030FZ 
 ;;9002226.02101,"1804,3E030FZ ",.02)
 ;;3E030FZ 
 ;;9002226.02101,"1804,3E030FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030GC ",.01)
 ;;3E030GC 
 ;;9002226.02101,"1804,3E030GC ",.02)
 ;;3E030GC 
 ;;9002226.02101,"1804,3E030GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030HZ ",.01)
 ;;3E030HZ 
 ;;9002226.02101,"1804,3E030HZ ",.02)
 ;;3E030HZ 
 ;;9002226.02101,"1804,3E030HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030KZ ",.01)
 ;;3E030KZ 
 ;;9002226.02101,"1804,3E030KZ ",.02)
 ;;3E030KZ 
 ;;9002226.02101,"1804,3E030KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030NZ ",.01)
 ;;3E030NZ 
 ;;9002226.02101,"1804,3E030NZ ",.02)
 ;;3E030NZ 
 ;;9002226.02101,"1804,3E030NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030PZ ",.01)
 ;;3E030PZ 
 ;;9002226.02101,"1804,3E030PZ ",.02)
 ;;3E030PZ 
 ;;9002226.02101,"1804,3E030PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030RZ ",.01)
 ;;3E030RZ 
 ;;9002226.02101,"1804,3E030RZ ",.02)
 ;;3E030RZ 
 ;;9002226.02101,"1804,3E030RZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030VG ",.01)
 ;;3E030VG 
 ;;9002226.02101,"1804,3E030VG ",.02)
 ;;3E030VG 
 ;;9002226.02101,"1804,3E030VG ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030VJ ",.01)
 ;;3E030VJ 
 ;;9002226.02101,"1804,3E030VJ ",.02)
 ;;3E030VJ 
 ;;9002226.02101,"1804,3E030VJ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E030WK ",.01)
 ;;3E030WK 
 ;;9002226.02101,"1804,3E030WK ",.02)
 ;;3E030WK 
 ;;9002226.02101,"1804,3E030WK ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03303 ",.01)
 ;;3E03303 
 ;;9002226.02101,"1804,3E03303 ",.02)
 ;;3E03303 
 ;;9002226.02101,"1804,3E03303 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03305 ",.01)
 ;;3E03305 
 ;;9002226.02101,"1804,3E03305 ",.02)
 ;;3E03305 
 ;;9002226.02101,"1804,3E03305 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0330M ",.01)
 ;;3E0330M 
 ;;9002226.02101,"1804,3E0330M ",.02)
 ;;3E0330M 
 ;;9002226.02101,"1804,3E0330M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03317 ",.01)
 ;;3E03317 
 ;;9002226.02101,"1804,3E03317 ",.02)
 ;;3E03317 
 ;;9002226.02101,"1804,3E03317 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E03329 ",.01)
 ;;3E03329 
 ;;9002226.02101,"1804,3E03329 ",.02)
 ;;3E03329 
 ;;9002226.02101,"1804,3E03329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0333Z ",.01)
 ;;3E0333Z 
 ;;9002226.02101,"1804,3E0333Z ",.02)
 ;;3E0333Z 
 ;;9002226.02101,"1804,3E0333Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0334Z ",.01)
 ;;3E0334Z 
 ;;9002226.02101,"1804,3E0334Z ",.02)
 ;;3E0334Z 
 ;;9002226.02101,"1804,3E0334Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0336Z ",.01)
 ;;3E0336Z 
 ;;9002226.02101,"1804,3E0336Z ",.02)
 ;;3E0336Z 
 ;;9002226.02101,"1804,3E0336Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0337Z ",.01)
 ;;3E0337Z 
 ;;9002226.02101,"1804,3E0337Z ",.02)
 ;;3E0337Z 
 ;;9002226.02101,"1804,3E0337Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033FZ ",.01)
 ;;3E033FZ 
 ;;9002226.02101,"1804,3E033FZ ",.02)
 ;;3E033FZ 
 ;;9002226.02101,"1804,3E033FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033GC ",.01)
 ;;3E033GC 
 ;;9002226.02101,"1804,3E033GC ",.02)
 ;;3E033GC 
 ;;9002226.02101,"1804,3E033GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033HZ ",.01)
 ;;3E033HZ 
 ;;9002226.02101,"1804,3E033HZ ",.02)
 ;;3E033HZ 
 ;;9002226.02101,"1804,3E033HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033KZ ",.01)
 ;;3E033KZ 
 ;;9002226.02101,"1804,3E033KZ ",.02)
 ;;3E033KZ 
 ;;9002226.02101,"1804,3E033KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033NZ ",.01)
 ;;3E033NZ 
 ;;9002226.02101,"1804,3E033NZ ",.02)
 ;;3E033NZ 
 ;;9002226.02101,"1804,3E033NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033PZ ",.01)
 ;;3E033PZ 
 ;;9002226.02101,"1804,3E033PZ ",.02)
 ;;3E033PZ 
 ;;9002226.02101,"1804,3E033PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033RZ ",.01)
 ;;3E033RZ 
 ;;9002226.02101,"1804,3E033RZ ",.02)
 ;;3E033RZ 
 ;;9002226.02101,"1804,3E033RZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033VG ",.01)
 ;;3E033VG 
 ;;9002226.02101,"1804,3E033VG ",.02)
 ;;3E033VG 
 ;;9002226.02101,"1804,3E033VG ",.03)
 ;;31
 ;;9002226.02101,"1804,3E033VJ ",.01)
 ;;3E033VJ 
 ;;9002226.02101,"1804,3E033VJ ",.02)
 ;;3E033VJ 
 ;;9002226.02101,"1804,3E033VJ ",.03)
 ;;31
