XUCT03 ; DRIVER FOR COMPILED XREFS FOR FILE #3.081 ; 01/06/16
 ; 
 N DH,DU,DIKILL,DISET,DIKJ,DIKZ,DIKYR,DIKZA,DIK0Z,DIKZK,DIKDP,DIKM1,DIKUP,DIKUM,DV,DIIX,DIKF,DIAU,DIKNM,DIKDA,DIKLK,DIKLM,DIKY,DIXR,DIKCOND,DIKSVDA,DIKPUSH,X1,X2
 I '$D(DIKSAT) S DIKLK=DIK_DA_")" L +@DIKLK:10 K:'$T DIKLK
 D DI I '$D(DIKSAT),$D(DIKLK) L -@DIKLK
 G Q
DI S DIKM1=0,DIKUM=0,DA(0)="",DV=0 F  S DV=$O(DA(DV)) Q:DV'>0  S DIKUM=DIKUM+1,DIKUP(DV)=DA(DV)
 S:DV="" DV=-1 S DH(1)=3.081,DIKUP=DA
 I $D(DIKKS) D:DIKZ1=DH(1) ^XUCT031 S DA=DIKUP D:DIKZ1=DH(1) ^XUCT032 D:DIKZ1'=DH(1) KILL D:DIKZ1'=DH(1) DA D:DIKZ1'=DH(1) SET D DA Q
 I $D(DIKIL) D:DIKZ1=DH(1) ^XUCT031 S:DIKZ1=DH(1) DIKM1=1 D:DIKZ1'=DH(1) KILL S DA=DIKUP D:DIKM1>0 KIL1 D DA Q
 I $D(DIKST) D:DIKZ1=DH(1) ^XUCT032 D:DIKZ1'=DH(1) SET D DA Q
 I $D(DIKSAT) D SET1 D DA Q
 Q
DA K DA F DV=1:1 Q:'$D(DIKUP(DV))  S DA(DV)=DIKUP(DV)
 S DA=DIKUP Q
SET1 S (DA,DCNT)=0
 S DU=$E(DIK,1,$L(DIK)-1),DIKLK=$S(DIK[",":DU_")",1:DU) L +@DIKLK:10 K:'$T DIKLK
C I @("$O("_DIK_"DA))'>0") S DA=$$C1(DA),^(0)=$P(@(DIK_"0)"),U,1,2)_U_DA_U_DCNT K DCNT L:$D(DIKLK) -@DIKLK Q
 S (DIKY,DA)=$O(^(DA)) G C:$P($G(^(DA,0)),U)']"" S DU=1,DCNT=DCNT+1 S:DA="" (DIKY,DA)=-1 D:DIKZ1=DH(1) ^XUCT032 D:DIKZ1'=DH(1) SET D:DIKZ1'=DH(1) DA K DB(0) S DA=DIKY G C
 Q
C1(A) Q:$P($G(@(DIK_"A,0)")),U)]"" A
 F  S @("A=+$O("_DIK_"A),-1)") Q:$P($G(@(DIK_"A,0)")),U)]""!(A'>0)
 Q A
KILL S DIKILL=1,DIKZK=2
 Q
SET S DISET=1,DIKZK=1 K DIKPUSH
 Q
KIL1 K @(DIK_"DA)") Q:'$D(^(0))
 S Y=^(0),DH=$S($O(^(0))'>0:0,1:$P(Y,U,4)-1),X=$P($P(Y,U,3),U,DH>0) D 3:X=DA
 S ^(0)=$P(Y,U,1,2)_U_X_U_DH
 Q
Q K DIKGP,DIKZ1 Q
 ;
3 I X>1,$D(^(X-1)) S X=X-1 Q
 S DV=1 F X=X:1 S X=X+DV,DV=DV+1 I $O(^(X))'>0 S DU=X-2,DV=1 Q
L S X=$O(^(DU)) Q:X>0  S DU=DU-DV,DV=DV+1 S:DU<0 DU=0 G L
 Q
BUL S DIKOZ=1,DIKZA=$P("CREA^DELE",U,DIKZK)_"TE VALUE"
 I $D(^DD(DIKZ1,DIKZZ,1,DIKZR,DIKZA)) W "...(`",^(DIKZA),"` BULLETIN WILL NOT BE TRIGGERED) " Q
END Q
