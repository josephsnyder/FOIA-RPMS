ATXXB170 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,3E1U38X ",.02)
 ;;3E1U38X 
 ;;9002226.02101,"1804,3E1U38X ",.03)
 ;;31
 ;;9002226.02101,"1804,3E1U38Z ",.01)
 ;;3E1U38Z 
 ;;9002226.02101,"1804,3E1U38Z ",.02)
 ;;3E1U38Z 
 ;;9002226.02101,"1804,3E1U38Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0002Z ",.01)
 ;;4A0002Z 
 ;;9002226.02101,"1804,4A0002Z ",.02)
 ;;4A0002Z 
 ;;9002226.02101,"1804,4A0002Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0004Z ",.01)
 ;;4A0004Z 
 ;;9002226.02101,"1804,4A0004Z ",.02)
 ;;4A0004Z 
 ;;9002226.02101,"1804,4A0004Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A000BZ ",.01)
 ;;4A000BZ 
 ;;9002226.02101,"1804,4A000BZ ",.02)
 ;;4A000BZ 
 ;;9002226.02101,"1804,4A000BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0034Z ",.01)
 ;;4A0034Z 
 ;;9002226.02101,"1804,4A0034Z ",.02)
 ;;4A0034Z 
 ;;9002226.02101,"1804,4A0034Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A00X2Z ",.01)
 ;;4A00X2Z 
 ;;9002226.02101,"1804,4A00X2Z ",.02)
 ;;4A00X2Z 
 ;;9002226.02101,"1804,4A00X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A00X4Z ",.01)
 ;;4A00X4Z 
 ;;9002226.02101,"1804,4A00X4Z ",.02)
 ;;4A00X4Z 
 ;;9002226.02101,"1804,4A00X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A01029 ",.01)
 ;;4A01029 
 ;;9002226.02101,"1804,4A01029 ",.02)
 ;;4A01029 
 ;;9002226.02101,"1804,4A01029 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0102B ",.01)
 ;;4A0102B 
 ;;9002226.02101,"1804,4A0102B ",.02)
 ;;4A0102B 
 ;;9002226.02101,"1804,4A0102B ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0104Z ",.01)
 ;;4A0104Z 
 ;;9002226.02101,"1804,4A0104Z ",.02)
 ;;4A0104Z 
 ;;9002226.02101,"1804,4A0104Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A01329 ",.01)
 ;;4A01329 
 ;;9002226.02101,"1804,4A01329 ",.02)
 ;;4A01329 
 ;;9002226.02101,"1804,4A01329 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0132B ",.01)
 ;;4A0132B 
 ;;9002226.02101,"1804,4A0132B ",.02)
 ;;4A0132B 
 ;;9002226.02101,"1804,4A0132B ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0134Z ",.01)
 ;;4A0134Z 
 ;;9002226.02101,"1804,4A0134Z ",.02)
 ;;4A0134Z 
 ;;9002226.02101,"1804,4A0134Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A01X29 ",.01)
 ;;4A01X29 
 ;;9002226.02101,"1804,4A01X29 ",.02)
 ;;4A01X29 
 ;;9002226.02101,"1804,4A01X29 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A01X2B ",.01)
 ;;4A01X2B 
 ;;9002226.02101,"1804,4A01X2B ",.02)
 ;;4A01X2B 
 ;;9002226.02101,"1804,4A01X2B ",.03)
 ;;31
 ;;9002226.02101,"1804,4A01X4Z ",.01)
 ;;4A01X4Z 
 ;;9002226.02101,"1804,4A01X4Z ",.02)
 ;;4A01X4Z 
 ;;9002226.02101,"1804,4A01X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0204Z ",.01)
 ;;4A0204Z 
 ;;9002226.02101,"1804,4A0204Z ",.02)
 ;;4A0204Z 
 ;;9002226.02101,"1804,4A0204Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0209Z ",.01)
 ;;4A0209Z 
 ;;9002226.02101,"1804,4A0209Z ",.02)
 ;;4A0209Z 
 ;;9002226.02101,"1804,4A0209Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A020CZ ",.01)
 ;;4A020CZ 
 ;;9002226.02101,"1804,4A020CZ ",.02)
 ;;4A020CZ 
 ;;9002226.02101,"1804,4A020CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A020FZ ",.01)
 ;;4A020FZ 
 ;;9002226.02101,"1804,4A020FZ ",.02)
 ;;4A020FZ 
 ;;9002226.02101,"1804,4A020FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A020HZ ",.01)
 ;;4A020HZ 
 ;;9002226.02101,"1804,4A020HZ ",.02)
 ;;4A020HZ 
 ;;9002226.02101,"1804,4A020HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A020PZ ",.01)
 ;;4A020PZ 
 ;;9002226.02101,"1804,4A020PZ ",.02)
 ;;4A020PZ 
 ;;9002226.02101,"1804,4A020PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0234Z ",.01)
 ;;4A0234Z 
 ;;9002226.02101,"1804,4A0234Z ",.02)
 ;;4A0234Z 
 ;;9002226.02101,"1804,4A0234Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0239Z ",.01)
 ;;4A0239Z 
 ;;9002226.02101,"1804,4A0239Z ",.02)
 ;;4A0239Z 
 ;;9002226.02101,"1804,4A0239Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A023CZ ",.01)
 ;;4A023CZ 
 ;;9002226.02101,"1804,4A023CZ ",.02)
 ;;4A023CZ 
 ;;9002226.02101,"1804,4A023CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A023FZ ",.01)
 ;;4A023FZ 
 ;;9002226.02101,"1804,4A023FZ ",.02)
 ;;4A023FZ 
 ;;9002226.02101,"1804,4A023FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A023HZ ",.01)
 ;;4A023HZ 
 ;;9002226.02101,"1804,4A023HZ ",.02)
 ;;4A023HZ 
 ;;9002226.02101,"1804,4A023HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A023PZ ",.01)
 ;;4A023PZ 
 ;;9002226.02101,"1804,4A023PZ ",.02)
 ;;4A023PZ 
 ;;9002226.02101,"1804,4A023PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02X4A ",.01)
 ;;4A02X4A 
 ;;9002226.02101,"1804,4A02X4A ",.02)
 ;;4A02X4A 
 ;;9002226.02101,"1804,4A02X4A ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02X4Z ",.01)
 ;;4A02X4Z 
 ;;9002226.02101,"1804,4A02X4Z ",.02)
 ;;4A02X4Z 
 ;;9002226.02101,"1804,4A02X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02X9Z ",.01)
 ;;4A02X9Z 
 ;;9002226.02101,"1804,4A02X9Z ",.02)
 ;;4A02X9Z 
 ;;9002226.02101,"1804,4A02X9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02XCZ ",.01)
 ;;4A02XCZ 
 ;;9002226.02101,"1804,4A02XCZ ",.02)
 ;;4A02XCZ 
 ;;9002226.02101,"1804,4A02XCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02XFZ ",.01)
 ;;4A02XFZ 
 ;;9002226.02101,"1804,4A02XFZ ",.02)
 ;;4A02XFZ 
 ;;9002226.02101,"1804,4A02XFZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02XHZ ",.01)
 ;;4A02XHZ 
 ;;9002226.02101,"1804,4A02XHZ ",.02)
 ;;4A02XHZ 
 ;;9002226.02101,"1804,4A02XHZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02XM4 ",.01)
 ;;4A02XM4 
 ;;9002226.02101,"1804,4A02XM4 ",.02)
 ;;4A02XM4 
 ;;9002226.02101,"1804,4A02XM4 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A02XPZ ",.01)
 ;;4A02XPZ 
 ;;9002226.02101,"1804,4A02XPZ ",.02)
 ;;4A02XPZ 
 ;;9002226.02101,"1804,4A02XPZ ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03051 ",.01)
 ;;4A03051 
 ;;9002226.02101,"1804,4A03051 ",.02)
 ;;4A03051 
 ;;9002226.02101,"1804,4A03051 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03053 ",.01)
 ;;4A03053 
 ;;9002226.02101,"1804,4A03053 ",.02)
 ;;4A03053 
 ;;9002226.02101,"1804,4A03053 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0305C ",.01)
 ;;4A0305C 
 ;;9002226.02101,"1804,4A0305C ",.02)
 ;;4A0305C 
 ;;9002226.02101,"1804,4A0305C ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030B3 ",.01)
 ;;4A030B3 
 ;;9002226.02101,"1804,4A030B3 ",.02)
 ;;4A030B3 
 ;;9002226.02101,"1804,4A030B3 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030H1 ",.01)
 ;;4A030H1 
 ;;9002226.02101,"1804,4A030H1 ",.02)
 ;;4A030H1 
 ;;9002226.02101,"1804,4A030H1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030J1 ",.01)
 ;;4A030J1 
 ;;9002226.02101,"1804,4A030J1 ",.02)
 ;;4A030J1 
 ;;9002226.02101,"1804,4A030J1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030J3 ",.01)
 ;;4A030J3 
 ;;9002226.02101,"1804,4A030J3 ",.02)
 ;;4A030J3 
 ;;9002226.02101,"1804,4A030J3 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030JC ",.01)
 ;;4A030JC 
 ;;9002226.02101,"1804,4A030JC ",.02)
 ;;4A030JC 
 ;;9002226.02101,"1804,4A030JC ",.03)
 ;;31
 ;;9002226.02101,"1804,4A030R1 ",.01)
 ;;4A030R1 
 ;;9002226.02101,"1804,4A030R1 ",.02)
 ;;4A030R1 
 ;;9002226.02101,"1804,4A030R1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03351 ",.01)
 ;;4A03351 
 ;;9002226.02101,"1804,4A03351 ",.02)
 ;;4A03351 
 ;;9002226.02101,"1804,4A03351 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03353 ",.01)
 ;;4A03353 
 ;;9002226.02101,"1804,4A03353 ",.02)
 ;;4A03353 
 ;;9002226.02101,"1804,4A03353 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A0335C ",.01)
 ;;4A0335C 
 ;;9002226.02101,"1804,4A0335C ",.02)
 ;;4A0335C 
 ;;9002226.02101,"1804,4A0335C ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033B3 ",.01)
 ;;4A033B3 
 ;;9002226.02101,"1804,4A033B3 ",.02)
 ;;4A033B3 
 ;;9002226.02101,"1804,4A033B3 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033H1 ",.01)
 ;;4A033H1 
 ;;9002226.02101,"1804,4A033H1 ",.02)
 ;;4A033H1 
 ;;9002226.02101,"1804,4A033H1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033J1 ",.01)
 ;;4A033J1 
 ;;9002226.02101,"1804,4A033J1 ",.02)
 ;;4A033J1 
 ;;9002226.02101,"1804,4A033J1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033J3 ",.01)
 ;;4A033J3 
 ;;9002226.02101,"1804,4A033J3 ",.02)
 ;;4A033J3 
 ;;9002226.02101,"1804,4A033J3 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033JC ",.01)
 ;;4A033JC 
 ;;9002226.02101,"1804,4A033JC ",.02)
 ;;4A033JC 
 ;;9002226.02101,"1804,4A033JC ",.03)
 ;;31
 ;;9002226.02101,"1804,4A033R1 ",.01)
 ;;4A033R1 
 ;;9002226.02101,"1804,4A033R1 ",.02)
 ;;4A033R1 
 ;;9002226.02101,"1804,4A033R1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03X51 ",.01)
 ;;4A03X51 
 ;;9002226.02101,"1804,4A03X51 ",.02)
 ;;4A03X51 
 ;;9002226.02101,"1804,4A03X51 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03XB1 ",.01)
 ;;4A03XB1 
 ;;9002226.02101,"1804,4A03XB1 ",.02)
 ;;4A03XB1 
 ;;9002226.02101,"1804,4A03XB1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03XH1 ",.01)
 ;;4A03XH1 
 ;;9002226.02101,"1804,4A03XH1 ",.02)
 ;;4A03XH1 
 ;;9002226.02101,"1804,4A03XH1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03XJ1 ",.01)
 ;;4A03XJ1 
 ;;9002226.02101,"1804,4A03XJ1 ",.02)
 ;;4A03XJ1 
 ;;9002226.02101,"1804,4A03XJ1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A03XR1 ",.01)
 ;;4A03XR1 
 ;;9002226.02101,"1804,4A03XR1 ",.02)
 ;;4A03XR1 
 ;;9002226.02101,"1804,4A03XR1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04050 ",.01)
 ;;4A04050 
 ;;9002226.02101,"1804,4A04050 ",.02)
 ;;4A04050 
 ;;9002226.02101,"1804,4A04050 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04051 ",.01)
 ;;4A04051 
 ;;9002226.02101,"1804,4A04051 ",.02)
 ;;4A04051 
 ;;9002226.02101,"1804,4A04051 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04052 ",.01)
 ;;4A04052 
 ;;9002226.02101,"1804,4A04052 ",.02)
 ;;4A04052 
 ;;9002226.02101,"1804,4A04052 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04053 ",.01)
 ;;4A04053 
 ;;9002226.02101,"1804,4A04053 ",.02)
 ;;4A04053 
 ;;9002226.02101,"1804,4A04053 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040B0 ",.01)
 ;;4A040B0 
 ;;9002226.02101,"1804,4A040B0 ",.02)
 ;;4A040B0 
 ;;9002226.02101,"1804,4A040B0 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040B2 ",.01)
 ;;4A040B2 
 ;;9002226.02101,"1804,4A040B2 ",.02)
 ;;4A040B2 
 ;;9002226.02101,"1804,4A040B2 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040J0 ",.01)
 ;;4A040J0 
 ;;9002226.02101,"1804,4A040J0 ",.02)
 ;;4A040J0 
 ;;9002226.02101,"1804,4A040J0 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040J1 ",.01)
 ;;4A040J1 
 ;;9002226.02101,"1804,4A040J1 ",.02)
 ;;4A040J1 
 ;;9002226.02101,"1804,4A040J1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040J2 ",.01)
 ;;4A040J2 
 ;;9002226.02101,"1804,4A040J2 ",.02)
 ;;4A040J2 
 ;;9002226.02101,"1804,4A040J2 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040J3 ",.01)
 ;;4A040J3 
 ;;9002226.02101,"1804,4A040J3 ",.02)
 ;;4A040J3 
 ;;9002226.02101,"1804,4A040J3 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A040R1 ",.01)
 ;;4A040R1 
 ;;9002226.02101,"1804,4A040R1 ",.02)
 ;;4A040R1 
 ;;9002226.02101,"1804,4A040R1 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04350 ",.01)
 ;;4A04350 
 ;;9002226.02101,"1804,4A04350 ",.02)
 ;;4A04350 
 ;;9002226.02101,"1804,4A04350 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04351 ",.01)
 ;;4A04351 
 ;;9002226.02101,"1804,4A04351 ",.02)
 ;;4A04351 
 ;;9002226.02101,"1804,4A04351 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04352 ",.01)
 ;;4A04352 
 ;;9002226.02101,"1804,4A04352 ",.02)
 ;;4A04352 
 ;;9002226.02101,"1804,4A04352 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A04353 ",.01)
 ;;4A04353 
 ;;9002226.02101,"1804,4A04353 ",.02)
 ;;4A04353 
 ;;9002226.02101,"1804,4A04353 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A043B0 ",.01)
 ;;4A043B0 
 ;;9002226.02101,"1804,4A043B0 ",.02)
 ;;4A043B0 
 ;;9002226.02101,"1804,4A043B0 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A043B2 ",.01)
 ;;4A043B2 
 ;;9002226.02101,"1804,4A043B2 ",.02)
 ;;4A043B2 
 ;;9002226.02101,"1804,4A043B2 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A043J0 ",.01)
 ;;4A043J0 
 ;;9002226.02101,"1804,4A043J0 ",.02)
 ;;4A043J0 
 ;;9002226.02101,"1804,4A043J0 ",.03)
 ;;31
 ;;9002226.02101,"1804,4A043J1 ",.01)
 ;;4A043J1 
 ;;9002226.02101,"1804,4A043J1 ",.02)
 ;;4A043J1 
