IBXSC32 ; ;11/29/04
 D DE G BEGIN
DE S DIE="^DGCR(399,",DIC=DIE,DP=399,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGCR(399,DA,""))=""
 I $D(^("M")) S %Z=^("M") S %=$P(%Z,U,4) S:%]"" DE(10)=% S %=$P(%Z,U,5) S:%]"" DE(11)=% S %=$P(%Z,U,6) S:%]"" DE(12)=% S %=$P(%Z,U,7) S:%]"" DE(15)=% S %=$P(%Z,U,8) S:%]"" DE(16)=% S %=$P(%Z,U,9) S:%]"" DE(17)=% S %=$P(%Z,U,11) S:%]"" DE(1)=%
 I $D(^("M1")) S %Z=^("M1") S %=$P(%Z,U,1) S:%]"" DE(14)=% S %=$P(%Z,U,2) S:%]"" DE(5)=% S %=$P(%Z,U,3) S:%]"" DE(6)=% S %=$P(%Z,U,4) S:%]"" DE(7)=%
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
BEGIN S DNM="IBXSC32",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S DQ=1,DW="M;11",DV="RP4",DU="",DLB="RESPONSIBLE INSTITUTION",DIFLD=111
 S DE(DW)="C1^IBXSC32"
 S DU="DIC(4,"
 G RE
C1 G C1S:$D(DE(1))[0 K DB
 S X=DE(1),DIC=DIE
 D DEL^IBCU5
 S X=DE(1),DIC=DIE
 S DGRVRCAL=2
C1S S X="" G:DG(DQ)=X C1F1 K DB
 S X=DG(DQ),DIC=DIE
 D MAILIN^IBCU5
 S X=DG(DQ),DIC=DIE
 S DGRVRCAL=1
C1F1 Q
X1 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 K DIC("DR"),DLAYGO
 Q
3 S DQ=4 ;@31
4 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=4 D X4 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X4 S:IBDR20'["32" Y="@33"
 Q
5 D:$D(DG)>9 F^DIE17,DE S DQ=5,DW="M1;2",DV="F",DU="",DLB="PRIMARY PROVIDER #",DIFLD=122
 G RE
X5 K:$L(X)>13!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
6 S DW="M1;3",DV="F",DU="",DLB="SECONDARY PROVIDER #",DIFLD=123
 G RE
X6 K:$L(X)>13!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
7 S DW="M1;4",DV="F",DU="",DLB="TERTIARY PROVIDER #",DIFLD=124
 G RE
X7 K:$L(X)>13!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
8 S DQ=9 ;@33
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 S:IBDR20'["33" Y="@34"
 Q
10 S DW="M;4",DV="F",DU="",DLB="MAILING ADDRESS NAME",DIFLD=104
 G RE
X10 K:$L(X)>30!($L(X)<1) X
 I $D(X),X'?.ANP K X
 Q
 ;
11 S DW="M;5",DV="FX",DU="",DLB="MAILING ADDRESS STREET",DIFLD=105
 G RE
X11 K:$L(X)>35!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
12 S DW="M;6",DV="F",DU="",DLB="MAILING ADDRESS STREET2",DIFLD=106
 G RE
X12 K:$L(X)>35!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 S:X="" Y=107
 Q
14 S DW="M1;1",DV="F",DU="",DLB="MAILING ADDRESS STREET3",DIFLD=121
 G RE
X14 K:$L(X)>35!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
15 S DW="M;7",DV="F",DU="",DLB="MAILING ADDRESS CITY",DIFLD=107
 G RE
X15 K:$L(X)>25!($L(X)<2) X
 I $D(X),X'?.ANP K X
 Q
 ;
16 S DW="M;8",DV="P5'",DU="",DLB="MAILING ADDRESS STATE",DIFLD=108
 S DU="DIC(5,"
 G RE
X16 Q
17 S DW="M;9",DV="F",DU="",DLB="MAILING ADDRESS ZIP CODE",DIFLD=109
 G RE
X17 K:$L(X)>9!($L(X)<5)!'(X?5N!(X?9N)) X
 I $D(X),X'?.ANP K X
 Q
 ;
18 S DQ=19 ;@34
19 G 0^DIE17
