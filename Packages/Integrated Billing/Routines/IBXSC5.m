IBXSC5 ; GENERATED FROM 'IB SCREEN5' INPUT TEMPLATE(#2567), FILE 399;11/29/04
 D DE G BEGIN
DE S DIE="^DGCR(399,",DIC=DIE,DP=399,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^DGCR(399,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,3) S:%]"" DE(8)=% S %=$P(%Z,U,9) S:%]"" DE(22)=%
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
BEGIN S DNM="IBXSC5",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(2567,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=2567,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 S:IBDR20'["53" Y="@51"
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 S:$D(IBOUT) Y="@999"
 Q
3 S D=0 K DE(1) ;43
 S DIFLD=43,DGO="^IBXSC51",DC="1^399.043DA^OP^",DV="399.043MDX",DW="0;1",DOW="OP VISITS DATE(S)",DLB="Select "_DOW S:D DC=DC_D
 G RE:D I $D(DSC(399.043))#2,$P(DSC(399.043),"I $D(^UTILITY(",1)="" X DSC(399.043) S D=$O(^(0)) S:D="" D=-1 G M3
 S D=$S($D(^DGCR(399,DA,"OP",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M3 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"OP",+D,0)) S DE(3)=$P(^(0),U,1)
 G RE
R3 D DE
 S D=$S($D(^DGCR(399,DA,"OP",0)):$P(^(0),U,3,4),1:1) G 3+1
 ;
4 S DQ=5 ;@999
5 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=5 D X5 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X5 K IBOUT
 Q
6 S DQ=7 ;@51
7 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=7 D X7 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X7 S:IBDR20'["51" Y="@52"
 Q
8 S DW="0;3",DV="RDX",DU="",DLB="EVENT DATE",DIFLD=.03
 S DE(DW)="C8^IBXSC5"
 G RE
C8 G C8S:$D(DE(8))[0 K DB
 S X=DE(8),DIC=DIE
 K ^DGCR(399,"D",$E(X,1,30),DA)
 S X=DE(8),DIC=DIE
 S IBN=$P(^DGCR(399,DA,0),"^",2) I $D(IBN) K ^DGCR(399,"APDT",IBN,DA,9999999-X),IBN
 S X=DE(8),DIC=DIE
 K ^DGCR(399,"ABNDT",DA,9999999-X)
C8S S X="" G:DG(DQ)=X C8F1 K DB
 S X=DG(DQ),DIC=DIE
 S ^DGCR(399,"D",$E(X,1,30),DA)=""
 S X=DG(DQ),DIC=DIE
 S IBN=$P(^DGCR(399,DA,0),"^",2) S:$D(IBN) ^DGCR(399,"APDT",IBN,DA,9999999-X)="" K IBN
 S X=DG(DQ),DIC=DIE
 S ^DGCR(399,"ABNDT",DA,9999999-X)=""
C8F1 Q
X8 S %DT="ETP",%DT(0)="-0" D ^%DT S X=Y K:Y<1 X I $D(X),'$D(IBNWBL) W !?4,"Event date can no longer be edited...cancel and submit a new bill if necessary." K X
 Q
 ;
9 S DQ=10 ;@52
10 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=10 D X10 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X10 S:IBDR20'["52" Y="@55"
 Q
11 S DQ=12 ;@55
12 S DQ=13 ;@56
13 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=13 D X13 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X13 S:IBDR20'["57" Y="@58"
 Q
14 D:$D(DG)>9 F^DIE17,DE S DQ=14,D=0 K DE(1) ;41
 S DIFLD=41,DGO="^IBXSC52",DC="4^399.041IPA^OC^",DV="399.041M*P399.1'",DW="0;1",DOW="OCCURRENCE CODE",DLB="Select "_DOW S:D DC=DC_D
 S DU="DGCR(399.1,"
 G RE:D I $D(DSC(399.041))#2,$P(DSC(399.041),"I $D(^UTILITY(",1)="" X DSC(399.041) S D=$O(^(0)) S:D="" D=-1 G M14
 S D=$S($D(^DGCR(399,DA,"OC",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M14 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"OC",+D,0)) S DE(14)=$P(^(0),U,1)
 G RE
R14 D DE
 S D=$S($D(^DGCR(399,DA,"OC",0)):$P(^(0),U,3,4),1:1) G 14+1
 ;
15 S DQ=16 ;@56
16 S DQ=17 ;@58
17 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=17 D X17 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X17 S:IBDR20'["58" Y="@54"
 Q
18 S D=0 K DE(1) ;40
 S DIFLD=40,DGO="^IBXSC53",DC="1^399.04SA^CC^",DV="399.04MSX",DW="0;1",DOW="CONDITION CODE",DLB="Select "_DOW S:D DC=DC_D
 S DU="02:CONDITION EMPLOYMENT RELATED;03:PT COVERED BY INSURANCE NOT REFLECTED HERE;05:LIEN FILED;06:ESRD PT IN 1ST YR OF ENTITLEMENT;17:PT OVER 100 YRS. OLD;18:MAIDEN NAME RETAINED;"
 G RE:D I $D(DSC(399.04))#2,$P(DSC(399.04),"I $D(^UTILITY(",1)="" X DSC(399.04) S D=$O(^(0)) S:D="" D=-1 G M18
 S D=$S($D(^DGCR(399,DA,"CC",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M18 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"CC",+D,0)) S DE(18)=$P(^(0),U,1)
 G RE
R18 D DE
 S D=$S($D(^DGCR(399,DA,"CC",0)):$P(^(0),U,3,4),1:1) G 18+1
 ;
19 S DQ=20 ;@54
20 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=20 D X20 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X20 S:IBDR20'["54" Y="@59"
 Q
21 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=21 D X21 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X21 S IBZ20=$P(^DGCR(399,DA,0),U,9)
 Q
22 S DW="0;9",DV="S",DU="",DLB="PROCEDURE CODING METHOD",DIFLD=.09
 S DU="4:CPT-4;5:HCPCS (HCFA COMMON PROCEDURE CODING SYSTEM);9:ICD-9-CM;"
 G RE
X22 Q
23 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=23 D X23 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X23 S IBASKCOD=1
 Q
24 S DQ=25 ;@59
25 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=25 D X25 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X25 S:IBDR20'["59" Y="@999"
 Q
26 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=26 D X26 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X26 I $P(^DGCR(399,DA,0),U,19)=2 S Y="@999"
 Q
27 S D=0 K DE(1) ;47
 S DIFLD=47,DGO="^IBXSC54",DC="2^399.047PA^CV^",DV="399.047M*P399.1'",DW="0;1",DOW="VALUE CODE",DLB="Select "_DOW S:D DC=DC_D
 S DU="DGCR(399.1,"
 G RE:D I $D(DSC(399.047))#2,$P(DSC(399.047),"I $D(^UTILITY(",1)="" X DSC(399.047) S D=$O(^(0)) S:D="" D=-1 G M27
 S D=$S($D(^DGCR(399,DA,"CV",0)):$P(^(0),U,3,4),$O(^(0))'="":$O(^(0)),1:-1)
M27 I D>0 S DC=DC_D I $D(^DGCR(399,DA,"CV",+D,0)) S DE(27)=$P(^(0),U,1)
 G RE
R27 D DE
 S D=$S($D(^DGCR(399,DA,"CV",0)):$P(^(0),U,3,4),1:1) G 27+1
 ;
28 S DQ=29 ;@999
29 G 0^DIE17
