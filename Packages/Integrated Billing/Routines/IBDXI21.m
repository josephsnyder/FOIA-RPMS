IBDXI21 ; ;11/29/04
 D DE G BEGIN
DE S DIE="^IBE(357.2,D0,2,",DIC=DIE,DP=357.22,DL=2,DIEL=1,DU="" K DG,DE,DB Q:$O(^IBE(357.2,D0,2,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,1) S:%]"" DE(4)=% S %=$P(%Z,U,2) S:%]"" DE(25)=%,DE(28)=%,DE(30)=% S %=$P(%Z,U,4) S:%]"" DE(8)=% S %=$P(%Z,U,6) S:%]"" DE(11)=% S %=$P(%Z,U,8) S:%]"" DE(13)=%,DE(16)=% S %=$P(%Z,U,9) S:%]"" DE(21)=%
 I  S %=$P(%Z,U,10) S:%]"" DE(19)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="IBDXI21",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 S DIE("NO^")="BACKOUTOK"
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 S IBSC1=$P($G(^IBE(357.2,D0,2,D1,0)),U)
 Q
3 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=3 D X3 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X3 S IBSC1(IBSC1)=$P($G(^IBE(357.2,D0,2,D1,0)),U,4)_"^"_$P($G(^IBE(357.2,D0,2,D1,0)),U,5)
 Q
4 S DW="0;1",DV="MRNJ1,0X",DU="",DLB="SUBCOLUMN NUMBER",DIFLD=.01
 S DE(DW)="C4^IBDXI21"
 G RE
C4 G C4S:$D(DE(4))[0 K DB
 S X=DE(4),DIC=DIE
 K ^IBE(357.2,DA(1),2,"B",$E(X,1,30),DA)
C4S S X="" G:DG(DQ)=X C4F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^IBE(357.2,DA(1),2,"B",$E(X,1,30),DA)=""
C4F1 Q
X4 K:+X'=X!(X>8)!(X<1)!(X?.E1"."1N.N)!($D(^IBE(357.2,DA(1),2,"B",X))) X
 Q
 ;
5 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=5 D X5 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X5 N IBSC3,IBSC4 D SCLOOP^IBDF9A3
 Q
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 S IBSC2=$P($G(^IBE(357.2,D0,2,D1,0)),U)
 Q
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 S:(IBSC1'=IBSC2) IBSWITCH(+$G(IBSWITCH))=IBSC1_"^"_IBSC2,IBSWITCH=$G(IBSWITCH)+1
 Q
8 D:$D(DG)>9 F^DIE17,DE S DQ=8,DW="0;4",DV="RS",DU="",DLB="SUBCOLUMN CONTAINS TEXT, OR FOR MARKING? (TEXT/MARKING)",DIFLD=.04
 S DU="1:TEXT;2:MARKING;"
 S Y="TEXT"
 G Y
X8 Q
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 I X'=$P(IBSC1(IBSC1),U,1),$P(IBSC1(IBSC1),U,1)]"" S $P(^IBE(357.2,D0,2,D1,0),U,4)=$P(IBSC1(IBSC1),U,1) W !!,"*** PREVENTING LOSS OF DATA ***",!,"NOT ALLOWING THE 'TYPE OF SUBCOLUMN' TO BE CHANGED",!! S X=$P(IBSC1(IBSC1),U,1)
 Q
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 I X=1 S Y="@3"
 Q
11 S DW="0;6",DV="P357.91'R",DU="",DLB="TYPE OF MARKING AREA",DIFLD=.06
 S DU="IBE(357.91,"
 S Y="BUBBLE"
 G Y
X11 Q
12 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=12 D X12 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X12 I $P(^IBE(357.91,X,0),"^")'["BUBBLE" S Y="@6"
 Q
13 S DW="0;8",DV="S",DU="",DLB="DO NOT UNDERLINE MARKING AREA?",DIFLD=.08
 S DU="0:NO;1:YES;"
 S Y="1"
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X13 Q
14 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=14 D X14 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X14 S Y="@7"
 Q
15 S DQ=16 ;@6
16 S DW="0;8",DV="S",DU="",DLB="DO NOT UNDERLINE MARKING AREA?",DIFLD=.08
 S DU="0:NO;1:YES;"
 G RE
X16 Q
17 S DQ=18 ;@7
18 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=18 D X18 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X18 S:'$G(IBINPUT) Y="@8",IBD=0
 Q
19 S DW="0;10",DV="S",DU="",DLB="SELECTION RULE",DIFLD=.1
 S DU="0:ANY NUMBER;1:EXACTLY ONE;2:AT MOST ONE (0 or 1);3:AT LEAST ONE (1 or more);"
 G RE
X19 Q
20 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=20 D X20 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X20 S:'$O(^IBE(357.6,IBINPUT,13,0)) Y="@8",IBD=0
 Q
21 S DW="0;9",DV="*P357.98'",DU="",DLB="DATA QUALIFIER",DIFLD=.09
 S DU="IBD(357.98,"
 G RE
X21 S DIC("S")="I $$DQGOOD^IBDFU9($P($G(^IBE(357.2,DA(1),0)),""^"",11),Y)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
22 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=22 D X22 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X22 S IBD=+X
 Q
23 S DQ=24 ;@8
24 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=24 D X24 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X24 I $P(^IBE(357.2,D0,2,D1,0),U,2)'="" S Y="@10"
 Q
25 S DW="0;2",DV="F",DU="",DLB="SUBCOLUMN HEADER",DIFLD=.02
 S X=$S(IBD:$P($G(^IBD(357.98,IBD,0)),U,3),1:"")
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD
X25 K:$L(X)>150!($L(X)<1) X
 I $D(X),X'?.ANP K X
 Q
 ;
26 S DQ=27 ;@10
27 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=27 D X27 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X27 S X=X
 Q
28 S DW="0;2",DV="F",DU="",DLB="WHAT TEXT SHOULD APPEAR AT THE TOP OF THE SUBCOLUMN?",DIFLD=.02
 G RE
X28 K:$L(X)>150!($L(X)<1) X
 I $D(X),X'?.ANP K X
 Q
 ;
29 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=29 D X29 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X29 I X'="" S Y="@99"
 Q
30 S DW="0;2",DV="F",DU="",DLB="SUBCOLUMN HEADER",DIFLD=.02
 S X=" "
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
X30 Q
31 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=31 D X31 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X31 S Y="@99"
 Q
32 S DQ=33 ;@3
33 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=33 D X33 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X33 D HELP2^IBDFU5
 Q
34 D:$D(DG)>9 F^DIE17 G ^IBDXI24
