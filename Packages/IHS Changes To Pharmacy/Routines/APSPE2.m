APSPE2 ; ;02/14/03
 D DE G BEGIN
DE S DIE="^APSPP(31,",DIC=DIE,DP=9009031,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^APSPP(31,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,9) S:%]"" DE(1)=% S %=$P(%Z,U,12) S:%]"" DE(5)=% S %=$P(%Z,U,13) S:%]"" DE(2)=% S %=$P(%Z,U,14) S:%]"" DE(3)=% S %=$P(%Z,U,16) S:%]"" DE(7)=%
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
N I X="" G A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) I DV'["*" D ^DIC S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
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
BEGIN S DNM="APSPE2",DQ=1
1 D:$D(DG)>9 F^DIE17,DE S DQ=1,DW="0;9",DV="RNJ3,0",DU="",DLB="NUMBER OF PREPACKS",DIFLD=.09
 S DE(DW)="C1^APSPE2"
 G RE
C1 G C1S:$D(DE(1))[0 K DB S X=DE(1),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X S X=$D(DIU(0))=0 I X S X=DIV S Y(1)=$S($D(^APSPP(31,D0,0)):^(0),1:"") S X=$P(Y(1),U,11),X=X S DIU=X K Y S X="" X ^DD(9009031,.09,1,1,2.4)
 S X=DE(1),DIC=DIE
 X ^DD(9009031,.09,1,2,2.3) S:X X=$D(DIU(0))=0 I X S X=DIV X ^DD(9009031,.09,1,2,89.3) S X=$P(Y(201),U,1) S D0=I(0,0) S DIU=X K Y X ^DD(9009031,.09,1,2,2.1) X ^DD(9009031,.09,1,2,2.4)
 S X=DE(1),DIC=DIE
 K APSP("PREPACK LOG FLG")
C1S S X="" Q:DG(DQ)=X  K DB S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X S X=$D(DIU(0))=0 I X S X=DIV S Y(1)=$S($D(^APSPP(31,D0,0)):^(0),1:"") S X=$P(Y(1),U,11),X=X S DIU=X K Y X ^DD(9009031,.09,1,1,1.1) X ^DD(9009031,.09,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X X ^DD(9009031,.09,1,2,69.2) S X=X="YES" S:X X=$D(DIU(0))=0 I X S X=DIV X ^DD(9009031,.09,1,2,89.3) S X=$P(Y(201),U,1) S D0=I(0,0) S DIU=X K Y X ^DD(9009031,.09,1,2,1.1) X ^DD(9009031,.09,1,2,1.4)
 S X=DG(DQ),DIC=DIE
 ;
 Q
X1 K:+X'=X!(X>999)!(X<0)!(X?.E1"."1N.N) X
 Q
 ;
2 D:$D(DG)>9 F^DIE17,DE S DQ=2,DW="0;13",DV="RIP3'",DU="",DLB="CLERK CODE",DIFLD=.13
 S DU="DIC(3,"
 G RE
X2 Q
3 S DW="0;14",DV="R*P3'IX",DU="",DLB="PHARMACIST",DIFLD=.14
 S DU="DIC(3,"
 G RE
X3 S DIC("S")="I $D(^XUSEC(""PSORPH"",Y))" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
4 S D=0 K DE(1) ;1501
 S DIFLD=1501,DGO="^APSPE3",DC="3^9009031.15PA^15^",DV="9009031.15M*P9009031.2",DW="0;1",DOW="LOCATION",DLB="Select "_DOW S:D DC=DC_D
 S DU="APSPP(31.2,"
 G RE:D I $D(DSC(9009031.15))#2,$P(DSC(9009031.15),"I $D(^UTILITY(",1)="" X DSC(9009031.15) S D=$O(^(0)) S:D="" D=-1 G M4
 S D=$S($D(^APSPP(31,DA,15,0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M4 I D>0 S DC=DC_D I $D(^APSPP(31,DA,15,+D,0)) S DE(4)=$P(^(0),U,1)
 G RE
R4 D DE
 S D=$S($D(^APSPP(31,DA,15,0)):$P(^(0),U,3,4),1:1) G 4+1
 ;
5 S DW="0;12",DV="F",DU="",DLB="REMARKS",DIFLD=.12
 G RE
X5 K:$L(X)>80!($L(X)<1) X
 I $D(X),X'?.ANP K X
 Q
 ;
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 I $D(%PSITE),$P(%PSITE,U,1)'=1 S Y=""
 Q
7 S DW="0;16",DV="RS",DU="",DLB="SUBTRACT FROM INVENTORY",DIFLD=.16
 S DE(DW)="C7^APSPE2"
 S DU="y:YES;n:NO;"
 G RE
C7 G C7S:$D(DE(7))[0 K DB S X=DE(7),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X X ^DD(9009031,.16,1,1,79.3) S X=X&Y I X S X=DIV X ^DD(9009031,.16,1,1,89.3) S X=$P(Y(201),U,1) S D0=I(0,0) S DIU=X K Y X ^DD(9009031,.16,1,1,2.1) X ^DD(9009031,.16,1,1,2.4)
 S X=DE(7),DIC=DIE
 K DIV S DIV=X,D0=DA,DIV(0)=D0 S Y(0)=X X ^DD(9009031,.16,1,2,79.3) S X=X&Y I X S X=DIV X ^DD(9009031,.16,1,2,89.3) S X=$P(Y(201),U,1) S D0=I(0,0) S DIU=X K Y X ^DD(9009031,.16,1,2,2.1) X ^DD(9009031,.16,1,2,2.4)
C7S S X="" Q:DG(DQ)=X  K DB S X=DG(DQ),DIC=DIE
 ;
 S X=DG(DQ),DIC=DIE
 ;
 Q
X7 Q
8 G 0^DIE17
