BINTEG ;INTEGRITY CHECKER;AUG 09, 2016
 ;;8.5;IMMUNIZATION;**13**;AUG 09,2016
 ;
START ;
 NEW BYTE,COUNT,RTN
 K ^UTILITY($J)
 F I=1:1 S X=$T(LIST+I) Q:X=""  S X=$P(X,";;",2),R=$P(X,"^",1),B=$P(X,"^",2),C=$P(X,"^",3),^UTILITY($J,R)=B_"^"_C
 F I=1:1:6 S X=$P($T(@("LINE"_I)),";;",2,99),@("XBSUMBLD("_I_")=X")
 X XBSUMBLD(1)
 Q
 ;
LINE1 ;;X XBSUMBLD(2),XBSUMBLD(6)
LINE2 ;;S RTN=0 F  S RTN=$O(^UTILITY($J,RTN)) Q:RTN=""  W !,RTN ZL @RTN S (BYTE,COUNT)=0 S X=$T(+1),X=$P(X," [ ",1) X XBSUMBLD(4),XBSUMBLD(3),XBSUMBLD(5)
LINE3 ;;F I=2:1 S X=$T(+I) Q:X=""  X XBSUMBLD(4)
LINE4 ;;F J=1:1 S Y=$E(X,J) Q:Y=""  S BYTE=BYTE+1,COUNT=COUNT+$A(Y)
LINE5 ;;S B=$P(^UTILITY($J,RTN),"^",1),C=$P(^(RTN),"^",2) I B'=BYTE!(C'=COUNT) W "  has been modified"
LINE6 ;;K XBSUMBLD,B,C,I,J,R,X,Y
 ;
LIST ;
 ;;BIDX^8912^612229
 ;;BIENVCHK^4443^288523
 ;;BIEXPRT6^9247^641349
 ;;BILOGO^4634^314446
 ;;BIPATUP1^14099^1011648
 ;;BIPATUP2^5363^370611
 ;;BIPOST^7836^538992
 ;;BIREPF4^8713^628770
 ;;BISITE1^7071^494018
 ;;BISITE4^13156^977268
 ;;BITN^14437^1105191
 ;;BITN2^14603^1088675
 ;;BIUTL8^12696^865956
