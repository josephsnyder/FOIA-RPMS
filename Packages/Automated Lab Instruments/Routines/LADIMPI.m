LADIMPI ; IHS/DIR/FJE - DIMENSION DIRECT CONNECT SETUP 8/16/90 14:15 ;
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
EN ;
 D ^LASET Q:TSK<1
 S:$D(ZTQUEUED) ZTREQ="@" X ^%ZOSF("TYPE-AHEAD"),^%ZOSF("LABOFF") K ^LA(T) D SET
 S DEB="D"_T,DUZ=.5,PAR=$S($D(^LAB(62.4,T,.5))#2:^(.5),1:""),OUT="",BASE=0,TOUT=15,U="^",^LA(T,"P")="",FL=0,^LA(T,"P")="",(^("P1"),^("P2"),^("P3"))=0,FS="|",FS1=$C(28),POS=0,ERC=0
 S J="" F I=0:0 S J=$O(TC(J)) Q:J=""  S TEST(TC(J,4))=J
 R X:1,X:1 ;ALLOW BREAK AND FLUSH BUFFER
 G @("LA^"_LANM)
SET S:'$D(^LA(T,"I"))#2 ^LA(T,"I")=0,^("I",0)=0
SETO S:'$D(^LA(T,"O"))#2 ^LA(T,"O")=0,^("O",0)=0 Q
 Q