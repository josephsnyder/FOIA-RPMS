ABPAACHD ;OUTSTANDING CLAIM REPORTS HEADER; [ 05/17/91  4:22 PM ]
 ;;1.4;AO PVT-INS TRACKING;*0*;IHS-OKC/KJR;JULY 25, 1991
START S X=0,SITENAME=$P(^DIC(4,DUZ(2),0),"^",1)
NXTX S X=$O(ABPA("HD",X)) G:+X=0 MOVE
 S AU("MAX")=X G NXTX
MOVE F I=AU("MAX"):-1:1 S ABPA("HD",I+2)=ABPA("HD",I)
WRITE S ABPA("HD",1)=SITENAME
 I ABPA("RTYP")=1 D
 .S ABPA("HD",1)=ABPA("HD",1)_" - "_ABPATLE_" - OPEN ITEMS LIST"
 I ABPA("RTYP")=3 D
 .S ABPA("HD",1)=ABPA("HD",1)_" - "_ABPATLE_" - PAID ITEMS LIST"
 S $P(AU("LINE"),"-",$L(ABPA("HD",1))+1)=""
 S ABPA("HD",2)=AU("LINE"),AU("MAX")=AU("MAX")+2
 S XX="",$P(XX,"*",+IOM)=""
 D NOW^%DTC S Y=% X ^DD("DD") S RUNTM=$P(Y,"@",2)
 S RUNDT=+%I(1)_"/"_+%I(2)_"/"_+$E(+%I(3),2,3)_" AT "_RUNTM
 S ABPAPG=ABPAPG+1 S PG="PAGE: "_ABPAPG W @IOF
 W "RUN DATE: ",RUNDT S X="(Task #"_ZTNN_")"
 W ?((+IOM/2)-($L(X)/2)),X,?((+IOM-1)-($L(PG))),PG,!,XX
 F I=1:1:AU("MAX") D  W:I=AU("MAX") !,XX
 .W !,"*",?(+IOM/2)-(($L(ABPA("HD",I))/2)),ABPA("HD",I),?(+IOM-2),"*"
 I ABPA("RTYP")=1!(ABPA("RTYP")=3) D
 .W !!,"PATIENT NAME",?36,"SSN",?52,"SUBSCRIBER NAME",?79,"DOS"
 .W ?87,"LOCATION OF SERVICE",?119,"CLAIM AMT"
 I ABPA("RTYP")=2 D
 .W !!,"INSURANCE COMPANY",?42,"CURRENT",?53,"60 DAY",?63,"90 DAY"
 .W ?72,"BALANCE"
 I ABPA("RTYP") W ! F I=1:1:(+IOM-1) W "="
 W ! K X,Y,I,AU("MAX"),SITENAME,XX,AU("LINE"),RUNDT,RUNTM,PG
 F I=3:1 Q:$D(ABPA("HD",I))=0  D  K ABPA("HD",I)
 .S ABPA("HD",(I-2))=ABPA("HD",I)
QUIT Q
