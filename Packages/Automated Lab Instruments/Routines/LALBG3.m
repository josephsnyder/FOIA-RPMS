LALBG3 ; IHS/DIR/FJE - IL BG3 Blood Gas Analyzer interface 9/2/94 14:33 ;
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
LA1 S:$D(ZTQUEUED) ZTREQ="@"
 S LANM=$T(+0),TSK=$O(^LAB(62.4,"C",LANM,0)),U="^" Q:TSK<1
 Q:'$D(^LA(TSK,"I",0))  D ^LASET Q:'TSK  S X="TRAP^"_LANM,@^%ZOSF("TRAP")
 S I=0 F  S I=$O(TC(I)) Q:'I  S TEST(TC(I,4))=TC(I,1),FIX(TC(I,4))=TC(I,2)
LA2 K TV,ID,IDE,TRAY,CUP S TOUT=0 D IN G QUIT:TOUT,LA2:IN'["BG3"
 D IN,IN S V=$G(IN) D NUM S (ID,IDE,CUP)=+V,TRAY=1 D
 .F I=0:0 D IN Q:IN["COMMENT"  D:IN["TEMP" TEMP S V=$E(IN,1,6) D NUM S TEST=V,V=$E(IN,7,14) D NUM,FIX I $D(TEST(TEST)) S @TEST(TEST)=+V
LA3 .X LAGEN G LA2:ISQN<1
 .F I=0:0 S I=$O(TV(I)) Q:I<1  I $D(TV(I,1)),TV(I,1)]"" S ^LAH(LWL,1,ISQN,I)=TV(I,1)
 G LA2
IN S CNT=^LA(TSK,"I",0)+1 IF '$D(^(CNT)) S TOUT=TOUT+1 Q:TOUT>9  H 9 G IN
 S ^LA(TSK,"I",0)=CNT,IN=^(CNT),TOUT=0
 S:IN["~" CTRL=$P(IN,"~",2),IN=$P(IN,"~",1)
 Q
NUM S X="" F I=1:1:$L(V) S:$A(V,I)-32 X=X_$E(V,I)
 S V=X Q
QUIT LOCK ^LA(TSK) H 1 K ^LA(TSK),^LA("LOCK",TSK) D
 .K CNT,CTRL,CUP,FIX,I,ID,IDE,IN,ISQN,LAGEN,LANM,LWL,T,TC,TEST
 .K TOUT,TRAY,TSK,TV,U,V,X
 Q
TRAP D ^LABERR S T=TSK D SET^LAB G @("LA2^"_LANM) ;ERROR TRAP
 Q
TEMP ;extracts the FIO2 test value from the temp line
 S IN=$E($P(IN,"xF",2),1,15)
 Q
FIX ;allows site to utilize param 1 for result manipulation
 I $L($G(FIX(TEST))) X FIX(TEST)
 Q