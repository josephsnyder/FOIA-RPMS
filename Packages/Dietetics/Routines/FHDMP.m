FHDMP ; HISC/REL/NCA/JH - Patient Data Log ;4/20/95  08:40
 ;;5.0;Dietetics;**9**;Jun 07, 1995
 S ALL=1 D ^FHDPA G:'DFN KIL
 I $O(^FHPT(DFN,"A",0))<1 W !!,"NO ADMISSIONS ON FILE!" G FHDMP
 S DIC="^FHPT(DFN,""A"",",DIC(0)="Q",DA=DFN,X="??" D ^DIC
 S WARD=$G(^DPT(DFN,.1))
A0 W !!,"Select ADMISSION",$S(WARD'="":" (or C for CURRENT)",1:""),": " R X:DTIME G:'$T!("^"[X) KIL D:X="c" TR^FH
 I WARD'="",X="C" S ADM=$G(^DPT("CN",WARD,DFN)) G A1:ADM,KIL
 S DIC="^FHPT(DFN,""A"",",DIC(0)="EQM" D ^DIC G:Y<1 A0 S ADM=+Y
A1 I '$D(^FHPT(DFN,0)),'$D(^FHPT(DFN,"P")),'$D(^FHPT(DFN,"A",ADM)) W !!,"No Dietetic Information Available",! G FHDMP
D1 S %DT="AEPX",%DT("A")="Starting Date: FIRST// " W ! D ^%DT S:$D(DTOUT) X="^" G:X[U KIL S:X="" Y=0 G:Y<0 D1 S SDT=+Y
 I SDT'<DT W *7,"  [Must Start before Today!] " G D1
P0 K IOP S %ZIS="MQ",%ZIS("B")="HOME" W ! D ^%ZIS K %ZIS,IOP G:POP KIL
 I $D(IO("Q")) S FHPGM="F0^FHDMP",FHLST="DFN^PID^ADM^SDT" D EN2^FH G KIL
 U IO D F0 D ^%ZISC K %ZIS,IOP G FHDMP
F0 ; Process Printing Patient Data log
 D NOW^%DTC S DT=%\1,DTP=% D DTP^FH S NOW=DTP,S1=$S(IOST?1"C".E:IOSL,1:IOSL-6)
 S Y(0)=^DPT(DFN,0),NAM=$P(Y(0),"^",1),SEX=$P(Y(0),"^",2),DOB=$P(Y(0),"^",3)
 S AGE=$E(DT,1,3)-$E(DOB,1,3)-($E(DT,4,7)<$E(DOB,4,7)),PG=0,QT="",PRTFM=""
 S PRTFM=$S(SDT:SDT,1:$P($G(^DGPM(ADM,0)),"^",1)) I PRTFM S DTP=PRTFM D DTP^FH S PRTFM=DTP
 S:PRTFM="" PRTFM="Admission Date" D HDR
 S LN="",$P(LN,"-",80)=""
 W !,LN,!?28,"P A T I E N T   D A T A"
 D ALG^FHCLN W !!,"Allergies: " S ALG=$S(ALG="":"None on file",1:ALG) D LNE
 W !!,"Food Preferences Currently on file:",!!?26,"Likes",?58,"Dislikes",!
 K N S P1=1 F K=0:0 S K=$O(^FHPT(DFN,"P",K)) Q:K<1  S X=^(K,0) D SP
 W ! S (M1,MM)="",L=0 F  S M1=$O(N(M1)) Q:M1=""  I $D(N(M1)) W $P(M1,"~",2) D  S MM=M1
 .  S (P1,P2)=0 F  S:P1'="" P1=$O(N(M1,"L",P1)) S X1=$S(P1>0:N(M1,"L",P1),1:"") S:P2'="" P2=$O(N(M1,"D",P2)) S X2=$S(P2>0:N(M1,"D",P2),1:"") Q:P1=""&(P2="")  D W0 W:MM'=M1 !
 .  Q
 I $O(N(""))="" W !!,"No Food Preferences on file",! G ^FHDMP1
 W ! K L,N,M,M1,M2 G ^FHDMP1
W0 I X1'="" W ?12 S X=X1 D W1 S X1=X
 I X2'="" W ?46 S X=X2 D W1 S X2=X
 Q:X1=""&(X2="")  S:$Y'<S1 L=1 D:$Y'<S1 HDR G:QT="^" KIL W ! W:L ! S L=0 G W0
W1 I $L(X)<34 W X S X="" Q
 F KK=35:-1:1 Q:$E(X,KK-1,KK)=", "
 W $E(X,1,KK-2) S X=$E(X,KK+1,999) Q
SP S M=$P(X,"^",2) S:M="A" M="BNE" S Z=$G(^FH(115.2,+X,0)),L1=$P(Z,"^",1),KK=$P(Z,"^",2),M1="",DAS=$P(X,"^",4)
 I KK="L" S Q=$P(X,"^",3),L1=$S(Q:Q,1:1)_" "_L1
 I M="BNE" S M1="1~All Meals" G SP1
 S Z1=$E(M,1) I Z1'="" S M1=$S(Z1="B":"2~Break",Z1="N":"3~Noon",1:"4~Even")
 S Z1=$E(M,2) I Z1'="" S M1=M1_","_$S(Z1="B":"Break",Z1="N":"Noon",1:"Even")
SP1 S:'$D(N(M1,KK,P1)) N(M1,KK,P1)="" I $L(N(M1,KK,P1))+$L(L1)<255 S N(M1,KK,P1)=N(M1,KK,P1)_$S(N(M1,KK,P1)="":"",1:", ")_L1_$S(DAS="Y":" (D)",1:"")
 E  S:'$D(N(M1,KK,K)) N(M1,KK,K)="" S N(M1,KK,K)=L1_$S(DAS="Y":" (D)",1:"") S P1=K
 Q
LNE ; Break Line if longer than 65 chars
 I $L(ALG)<66 W ALG Q
 F L=67:-1:1 Q:$E(ALG,L-1,L)=", "
 W $E(ALG,1,L-2)
 S ALG=$E(ALG,L+1,999)
 Q:ALG=""  W !?11
 G LNE
HDR ; Print Header
 S QT="" I PG,IOST?1"C".E W:$X>1 ! W *7 R QT:DTIME S:'$T QT="^" Q:QT="^"
 W:'($E(IOST,1,2)'="C-"&'PG) @IOF S PG=PG+1
 W !,PID,?17,NAM,?49,$S(SEX="M":"Male",SEX="F":"Female",1:""),?58,"Age ",AGE,?72,"Page ",PG,!,"Starting Date ",PRTFM,?62,NOW Q
DTP ; Printable Date/Time
 Q:Y<1  W $J(+$E(Y,6,7),2)_"-"_$P("Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"," ",+$E(Y,4,5))_"-"_$E(Y,2,3)
 I Y["." S %=+$E(Y_"0",9,10) W $J($S(%>12:%-12,1:%),3)_":"_$E(Y_"000",11,12)_$S(%<12:"am",%<24:"pm",1:"m")
 K % Q
KIL ; Final variable kill
 G KILL^XUSCLEAN
