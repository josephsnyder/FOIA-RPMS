LACMIRA ; IHS/DIR/FJE - COBAS MIRA 10/22/91 08:59 ;
 ;;5.2;LA;;NOV 01, 1997
 ;;5.2;AUTOMATED LAB INSTRUMENTS;;Sep 27, 1994
 ;CROSS LINK BY ID,IDE OR CUP
LA1 S:$D(ZTQUEUED) ZTREQ="@" S LANM=$T(+0),TSK=$O(^LAB(62.4,"C",LANM,0)) Q:TSK<1
 Q:'$D(^LA(TSK,"I",0))
 K LATOP D ^LASET Q:'TSK  S X="TRAP^"_LANM,@^%ZOSF("TRAP")
LA2 K TV S TOUT=0 D IN G QUIT:TOUT,LA2:$E(IN,1,2)'="02",LA2:$E(IN,21,22)'="03" F I=1:1:2 S TOUT=0 D IN G QUIT:TOUT
LA2A S TOUT=0 D IN G QUIT:TOUT,LA2:'$L(IN) S TRAY=1,CUP=+$E(IN,17,20),(ID,IDE)=+$E(IN,22,32),V=$E(IN,9,12) D NUM S TEST=V
 F I=0:0 S I=$O(TC(I)) Q:I<1  I TEST=TC(I,4),$E(IN,54)="N" S REMARK=$E(IN,56,57) I REMARK="00"!(REMARK="04")!(REMARK="07")!(REMARK>18) S V=+$J(+$E(IN,33,44),0,+$E(IN,46,47)) X:$D(TC(I,2)) TC(I,2) S @TC(I,1)=V
LA3 X LAGEN G LA2A:'ISQN ;Can be changed by the cross-link code
 F I=0:0 S I=$O(TV(I)) Q:I<1  S:TV(I,1)]"" ^LAH(LWL,1,ISQN,I)=TV(I,1)
 K TV G LA2A
NUM S X="" F JJ=1:1:$L(V) S:$A(V,JJ)>32 X=X_$E(V,JJ)
 S V=X Q
IN S CNT=^LA(TSK,"I",0)+1 IF '$D(^(CNT)) S TOUT=TOUT+1 Q:TOUT>9  H 5 G IN
 S ^LA(TSK,"I",0)=CNT,IN=^(CNT),TOUT=0
 S:IN["~" CTRL=$P(IN,"~",2),IN=$P(IN,"~",1)
 Q
QUIT LOCK ^LA(TSK) H 1 K ^LA(TSK),^LA("LOCK",TSK),^TMP($J),^TMP("LA",$J)
 Q
TRAP D ^LABERR S T=TSK D SET^LAB G @("LA2^"_LANM) ;ERROR TRAP
