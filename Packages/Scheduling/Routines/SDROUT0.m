SDROUT0 ;BSN/GRR - ROUTING SLIPS BY CLINIC ; [ 12/15/2003  11:39 AM ]
 ;;5.3;Scheduling;;Aug 13, 1993
 ;IHS/ANMC/LJF 11/15/2000 only VA code used is TM subroutine
 ;                        contains $N but subroutines not used by IHS
 ;
GO ;
 S SDCNT=0 D GO1 G:ORDER=2 CLIN
 F G=0:0 S I=$N(^UTILITY($J,I)) Q:I<0  F J=0:0 S J=$N(^UTILITY($J,I,J)) Q:J<0  S P=0 D HED^SDROUT2,HD^SDROUT2,CNT F K=0:0 S K=$N(^UTILITY($J,I,J,K)) D:K<0 FUT Q:K<0  S L=0 F LL=0:0 S L=$N(^UTILITY($J,I,J,K,L)) Q:L<0  D LIN,X
 W:IOF]"" !,@IOF G END^SDROUT1
CNT S SDCNT=SDCNT+1 Q
X I $P(^UTILITY($J,I,J,K,L),"^")]"" W !,?4,$P(^(L),"^") Q
 I $D(^DPT(+J,.36)),$D(^DIC(8,+^DPT(+J,.36),0)),$P(^(0),"^",9)=13 W !,?4,"** COLLATERAL **"
 Q
GO1 S I=0 Q:'SDREP!(SDX'["ALL")!(SDSTART="0000")  I SDSTART?4N S SDZ=(SDSTART-1)/10000,SDZ=$P(SDZ,".",2),SDZ=SDZ_$E("0000",1,4-$L(SDZ)),I=" "_SDZ K SDZ Q
 I '$D(^UTILITY($J,SDSTART)) S I=SDSTART Q
 S SDZ=$A($E(SDSTART,$L(SDSTART))),I=$E(SDSTART,1,$L(SDSTART)-1)_$C(SDZ-1) K SDZ Q
GOT ;
 S DFN=$P(^SC(SC,"S",GDATE,1,L,0),"^") S POP=1 D CKP Q:POP
 S NAME=$P(^DPT(DFN,0),"^"),TDO=$P(^(0),"^",9),TDO=$E(TDO,8,9)_$E(TDO,6,7) D ^SDROUT1 G TDO:ORDER=1,CLO:ORDER=2 D COL S ^UTILITY($J,NAME,DFN,GDATE,SC)=$S(V:"** COLLATERAL **",1:"") K V
 Q
TDO D COL S ^UTILITY($J," "_TDO,DFN,GDATE,SC)=$S(V:"** COLLATERAL **",1:"") Q
CLO D COL S SCN=$S($D(^SC(SC,0)):$P(^(0),"^"),1:SC),^UTILITY($J,"A",SCN," "_TDO,DFN)=SC_$S(V:"^** COLLATERAL **",1:""),^UTILITY($J,"B",DFN,GDATE)=SC K V Q
COL S V=0 I $P(^SC(SC,"S",GDATE,1,L,0),"^",10)]"" S V=$P(^(0),"^",10),V=$S($D(^DIC(8,+V,0)):$P(^(0),"^",9)=13,1:0)
 Q
CKP I SDREP D CKP1 Q
 I $D(^DPT(DFN,"S",GDATE,0)),$P(^(0),"^",2)'["C",$S($D(SDI1):1,SDX["ALL":1,SDIQ=1:1,$P(^(0),"^",6)'["Y":1,1:0) S POP=0
 Q
CKP1 I $S('$D(^DPT(DFN,"S",GDATE,0)):1,$P(^(0),"^",2)["C":1,1:0) S POP=1 Q
 I SDX["ALL" S POP=0 Q
 I $P(^DPT(DFN,"S",GDATE,0),"^",13)']""!($P(^(0),"^",13)=SDSTART) S POP=0,$P(^(0),"^",13)=SDSTART Q
 S POP=1 Q
LIN S X=K D TM W !,$J(X,8) I $D(^SC(L,0)) W ?11,$P(^(0),"^",1) D LOC W ?42,SDLOC K SDLOC D:$D(^DPT(J,"S",K,0)) SETP W:'$D(^DPT(J,"S",K,0)) ?70,"*DELETED*" D SCCOND^SDROUT2
 W:'$D(^SC(L,0)) ?11,L
 D:$Y>(IOSL-5) HED^SDROUT2 Q
LOC S SDLOC=$P(^SC(L,0),"^",11) I SDLOC']"",$D(^DIC(4,+$$SITE^VASITE,"DIV")),^("DIV")="Y" S SDLOC=$S($P(^SC(L,0),"^",15)=DIV:"",$D(^DG(40.8,+$P(^SC(L,0),"^",15),0)):$P(^(0),"^",1),1:"")
 Q
FUT I $N(^DPT(J,"S",SDATE_".9"))>0 D HED2 F M=SDATE_".9":0 S M=$N(^DPT(J,"S",M)) Q:M<0!($Y>(IOSL-5))  I $S($P(^(M,0),"^",2)']"":1,$P(^(0),"^",2)="I":1,1:0) D LIN2
 I SDREP,SDX'["ALL" W !!,"DATE PRINTED  : " S Y=SDSTART D DTS^SDUTL W Y,!,"DATE REPRINTED: ",PRDATE Q
 W !!,"DATE PRINTED: ",PRDATE Q
LIN2 D LIN2^SDROUT1
 S L=+^DPT(J,"S",M,0),X=M D TM S Y=M D DTS^SDUTL W !,Y,?11,$J(X,8),?20,$P(^SC(L,0),"^",1) D LOC W ?52,SDLOC K SDLOC
 Q
HED2 W !!,?9,"**FUTURE APPOINTMENTS**"
 W !!,"  DATE",?11,"TIME",?21,"CLINIC",?55,"LOCATION",! Q
TM I $P(X,".",2)']"" S X1=""
 ;IHS/ITSC/WAR 10/29/03 added a space to "M" now appears as "M "
 ;S X=$E($P(X,".",2)_"0000",1,4),%=X>1159 S:X>1259 X=X-1200 S X=X\100_":"_$E(X#100+100,2,3)_" "_$E("AP",%+1)_"M" Q
 S X=$E($P(X,".",2)_"0000",1,4),%=X>1159 S:X>1259 X=X-1200 S X=X\100_":"_$E(X#100+100,2,3)_" "_$E("AP",%+1)_"M " Q
SETP S $P(^DPT(J,"S",K,0),"^",6)="Y" I $P(^(0),"^",13)']"" S $P(^(0),"^",13)=DT
 Q
CLIN F G=0:0 S I=$N(^UTILITY($J,"A",I)) Q:I<0  S SDTD=0 F H=0:0 S SDTD=$N(^UTILITY($J,"A",I,SDTD)) Q:SDTD<0  F J=0:0 S J=$N(^UTILITY($J,"A",I,SDTD,J)) Q:J<0  I ^(J) S SC=+^(J),POP=1 D FIRST I 'POP S P=0 D HED^SDROUT2,HD^SDROUT2,CNT,TIME
 W:IOF]"" !,@IOF G END^SDROUT1
FIRST F A=SDATE:0 S A=$N(^DPT(J,"S",A)) Q:A'>0  I $P(^(A,0),"^",2)'["C" S SD=+^(0) I $D(^SC(SD,0)),$S(DIV="":1,$P(^SC(SD,0),"^",15)=DIV:1,1:0) S:SD=+SC POP=0 Q
 Q
TIME F K=0:0 S K=$N(^UTILITY($J,"B",J,K)) D:K<0 FUT Q:K<0  S L=^(K) D LIN,X1
 Q
X1 I $P(^UTILITY($J,"A",I,SDTD,J),"^",2)]"" W !,?4,$P(^(J),"^",2) Q
 I $D(^DPT(+J,.36)),$D(^DIC(8,+^DPT(+J,.36),0)),$P(^(0),"^",9)=13 W !,?4,"** COLLATERAL **"
 Q
