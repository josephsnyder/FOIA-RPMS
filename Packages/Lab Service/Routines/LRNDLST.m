LRNDLST ;VA/SLC/CJS - PRINT LIST OF NON-DRAW ORDERS ;JUL 06, 2010 3:14 PM;
 ;;5.2;LAB SERVICE;**7,13,351,1027**;NOV 01, 1997
 S %DT="AE" D ^%DT Q:Y<1  S U="^",LRODT=+Y,LRLLOC="",%ZIS="Q" W !!?10," You may enter 'ALL' as a response",! D FNDLOC^LRDRAW G END:LRLLOC["^"
 S LRBEG=1
 S %ZIS="QN" D ^%ZIS G:POP END I IO=IO(0) G GO
 K IO("Q") S ZTDESC="LONG FORM NO DRAW LIST",ZTIO=ION,ZTRTN="EN^LRNDLST",ZTSAVE("LRODT")="",ZTSAVE("LRLLOC")="",ZTSAVE("LRBEG")="" D ^%ZTLOAD W !!?10,"Report Queued to device "_ION,!
END K LROUT,DX(0),S,ZTSK
 ; K DIRUT,J,%DT,%,A,I,K,LRDC,LRSN,X,Y,Z,DIC,%ZIS,LRBECAUS,LRCOMB,LRODT,LRLLOC,LRPGM,LRIO,LRTIME,%H,%X,%Y,DFN,LRDFN,LRDPF,LRIOZERO,LRLWC,PNM,POP,SSN D ^%ZISC
 ; ----- BEGIN IHS/OIT/MKK - LR*5.2*1027
 K DIRUT,J,%DT,%,A,I,K,LRDC,LRSN,X,Y,Z,DIC,%ZIS,LRBECAUS,LRCOMB,LRODT,LRLLOC,LRPGM,LRIO,LRTIME,%H,%X,%Y,DFN,LRDFN,LRDPF,LRIOZERO,LRLWC,PNM,POP,SSN
 K HRCN
 D ^%ZISC
 ; ----- END IHS/OIT/MKK - LR*5.2*1027
 Q
% R %:DTIME S:'$T LROUT=1 Q:%=""!(%["N")!(%["Y")  W !,"Answer 'Y' or 'N': " G %
GO K X,DX,DR,DIC S DR="0:99",U="^",Y=LRODT,PG=1 D DD^LRX S (LROUT,LRDC)=0
 S DX(0)="I $E(IOST)=""C"" S S=$G(S)+1 I S>20 R ""'^' TO HALT: "",W:DTIME S:W=""^"" LROUT=1 S S=W'?1P W @IOF,!! I '$T S S=0,LROUT=1"
 I LRLLOC="" F  S LRLLOC=$O(^LRO(69,LRODT,1,"AC",LRLLOC)) Q:LRLLOC=""!(LROUT=1)  S LRTOP=0,LRSN=0 F  S LRSN=$O(^LRO(69,LRODT,1,"AC",LRLLOC,LRSN)) Q:LRSN<1!(LROUT=1)  S LRDC=1 D ORD,PRNT
 I LRLLOC'=""&(LROUT=0) S LRTOP=0,LRSN=0 F  S LRSN=$O(^LRO(69,LRODT,1,"AC",LRLLOC,LRSN)) Q:LRSN<1!(LROUT=1)  S LRDC=1 D ORD,PRNT
 I 'LRDC W !,"REPORT EMPTY"
 W !,"Finished",! W:$E(IOST,1,2)="P-" @IOF
 S W="" R:'$G(LRBEG)&($E(IOST)="C") "Hit Enter to return to menu: ",W:DTIME
 D ^%ZISC,END Q
ORD Q:$G(LROUT)
 I $D(^LRO(69,LRODT,1,LRSN,1)),$P(^(1),U,4)="C" Q
 I 'LRTOP S PG=1,W="" D
 .R:'$G(LRBEG)&($E(IOST)="C") "Enter to CONTINUE or '^' TO HALT: ",W:DTIME
 .S:W="^" LROUT=1 Q:$G(LROUT)  W @IOF,!,"LIST OF PATIENT LAB ORDERS NOT DRAWN  "_Y,!!!?10,"LISTING FOR ( ",LRLLOC," ) ",?50,"PG: ",PG,! S LRTOP=1 K LRBEG Q
 Q
PRNT ;
 Q:$G(LROUT)  N S
 I $D(^LRO(69,LRODT,1,LRSN,1)),$P(^(1),U,4)="C" Q
 I '$L($P(^LRO(69,LRODT,1,LRSN,0),U,4)) Q
 I $Y>$S($E(IOST)="C":18,1:60) S PG=PG+1 S W="" R:'$G(LRBEG)&($E(IOST)="C") "Enter to CONTINUE or '^' TO HALT: ",W:DTIME S:W="^" LROUT=1 Q:$G(LROUT)  W @IOF,!!?10,"LISTING FOR ( ",LRLLOC," ) ",?50,"PG: ",PG,!
 S DIC="^LRO(69,"_LRODT_",1,",(DA,D0)=LRSN,S=$Y S:'$D(DTOUT) DTOUT=0 D EN^LRDIQ Q:$G(LROUT)  S LROUT=$G(DIRUT) Q
EN D GO W:$E(IOST,1,2)="P-" @IOF S:$D(ZTQUEUED) ZTREQ="@" Q
 Q
