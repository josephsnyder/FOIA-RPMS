AMQQMGR3 ; IHS/CMI/THL - LAB STARTUP ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;----
EN ;EP;TO CHECK ALL LABS
 I '$O(^AUPNVLAB(0)) G EXAM
 D ^%ZIS
 I POP D EXAM Q
 U IO
 S AMQQLDFN=0
 F  S AMQQLDFN=$O(^LAB(60,AMQQLDFN)) Q:'AMQQLDFN  D LAB
EXAM D ^%ZISC
EXIT K %,AMQQCONO,AMQQI,AMQQLAKA,AMQQLAKN,AMQQLC,AMQQLCO,AMQQLDFN,AMQQLDS,AMQQLHL,AMQQL1,AMQQLOFF,AMQQLOUT,AMQQLSPC,AMQQLSPX,AMQQLSS,AMQQLSSN,AMQQSSX,AMQQLSTG,AMQQLTRM,AMQQLTYP,AMQQLUNT,I,N,Y,Z
 K DIRUT,DTOUT,DUOUT
 Q
 ;
EN1 ; PROGRAMMER ENTRY POINT FOR INDIVIDUAL LAB ENTRIES
 S AMQQLDFN=X
 N X
 F DA=AMQQLDFN+999.999999:0 S DA=$O(^AMQQ(5,DA)) Q:'DA  Q:DA<(AMQQLDFN+1001)  S DIK="^AMQQ(5," D ^DIK
 K DIK,DA D LAB,EXIT
 Q
 ;
LABZIS D ^%ZIS
 I POP D EXIT Q
 U IO D LAB
 D ^%ZISC
 Q
 ;
LAB N AMQQLIEN
 S AMQQLIEN=AMQQLDFN+1000
 Q:$D(^AMQQ(5,(AMQQLIEN)))
 I '$D(^LAB(60,AMQQLDFN)) Q
 I $P(^LAB(60,AMQQLDFN,0),U)["(" D CO^AMQQMGR4 I $D(AMQQLCOF) K AMQQLCOF Q
 S X=$O(^LAB(60,AMQQLDFN,1,0))
 S AMQQLAKA=$P(^LAB(60,AMQQLDFN,0),U)
 S AMQQLAKN=1
 S X=0
 F  S X=$O(^LAB(60,AMQQLDFN,5,X)) Q:'X  S Y=^(X,0),AMQQLAKA=AMQQLAKA_U_Y,AMQQLAKN=AMQQLAKN+1
 S (AMQQLSS,AMQQLSSX)=""
 S AMQQLSSN=0
 F X=70:1:79 I $D(^LAB(60,AMQQLDFN,1,X,0)) D
 .I X=70!(X=73),$D(^LAB(60,AMQQLDFN,1,72)) Q
 .S AMQQLSS=AMQQLSS_$P("BLOOD^URINE^SERUM^PLASMA^CSF^URETHRAL FLUID^PERITONEAL FLUID^PLEURAL FLUID^SYNOVIAL FLUID^CLOT",U,(X-69))_U
 .S AMQQLSSN=AMQQLSSN+1
 .S AMQQLSSX=AMQQLSSX_X_U
 S AMQQLDS=0
 S %=$P(^LAB(60,AMQQLDFN,0),U,12)
 I %'="" S %=U_%_"0)",AMQQLDS=($P($G(@%),U,3)[";Trace:")
 I AMQQLAKA["HGB^" S AMQQLSS="BLOOD",AMQQLSSN=1
 I AMQQLSSN<2 D  G LEXIT
 .S AMQQLSPX=$P(AMQQLSSX,U)
 .S AMQQLOFF=0
 .D LN1
 .D LTYPE
 .D LHEAD^AMQQMGR4
 .D LSET
 F AMQQLI=1:1:AMQQLSSN D
 .S AMQQLSPC=$P(AMQQLSS,U,AMQQLI)
 .S AMQQLSPX=$P(AMQQLSSX,U,AMQQLI)
 .S AMQQLOFF=+("."_AMQQLSPX)
 .D LN2
 .D LTYPE
 .D LHEAD^AMQQMGR4
 .D LSET
LEXIT K AMQQLSTG,AMQQLSS,AMQQLSSN,AMQQLAKA,AMQQLAKN,AMQQLHL,AMQQLHN,AMQQLHL,AMQQLOUT,AMQQLUNT,I,%,N,X,Y,Z,AMQQLOFF,AMQQLI
 Q
 ;
LN1 S I=0
 S AMQQLSTG=""
 F X=1:1 S Y=$P(AMQQLAKA,U,X) Q:Y=""  D LNS
 Q
 ;
LNS S I=I+1
 S $P(AMQQLSTG,U,I)=Y_$S((AMQQLDS&(AMQQLSS["URINE")):",DIPSTICK",1:"")
 I $E(Y,U,6)="URINE " D
 .S %=$S(AMQQLDS:"DIPSTICK ",1:"")
 .S I=I+1
 .S $P(AMQQLSTG,U,I)=$E(Y,7,99)_","_%_"URINE"
 .S I=I+1
 .S $P(AMQQLSTG,U,I)="UR "_$E(Y,7,99)_$S(%'="":(","_%),1:"")
 Q
 ;
LN2 S AMQQLSTG=""
 S I=0
 F Y=1:1 S Z=$P(AMQQLAKA,U,Y) Q:Z=""  D LNSET
 Q
 ;
LNSET S I=I+1
 S $P(AMQQLSTG,U,I)=AMQQLSPC_" "_Z
 S I=I+1
 S $P(AMQQLSTG,U,I)=Z_$S(Z[",":" ",1:",")_AMQQLSPC
 I AMQQLSPC="URINE" S I=I+1,$P(AMQQLSTG,U,I)="UR "_Z
 Q
 ;
LTYPE I $O(^LAB(60,AMQQLDFN,200,0)) S AMQQLTYP="" Q
 S %=$P(^LAB(60,AMQQLDFN,0),U,12)
 I %="" G TF
 S %=U_%_"0)"
 I '$D(@%) G TF
 I $P(@%,U,3)[";Trace:" S AMQQLTYP=12 Q
 I ($P(@%,U,5,6)["Q9=")+($G(^(3))[" NUMBER ") S AMQQLTYP=9 Q
 I $P(@%,U,5,6)[" NUMBER " S AMQQLTYP=9 Q
 I $P(@%,U,3)[";Pos.:" S AMQQLTYP=11 Q
 I $G(AMQQLSTG)["TITRE"!($P(@%,U,5)["""""titre""""")!($G(^(3))["1:") S AMQQLTYP=15 Q
 I $P(@%,U,2)="S" S AMQQLTYP=6 Q
TF S AMQQLTYP=2
 Q
 ;
LSET ;
 I $D(AMQQLTRM) K AMQQLTRM Q
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 S DIC="^AMQQ(5,"
 S DIC(0)="L"
 S X=$P(AMQQLSTG,U)
 S DINUM=AMQQLDFN+1000+AMQQLOFF
 Q:$D(^AMQQ(5,DINUM))
 D FILE^DICN
 K DIE,DIC,DINUM,DR,DA,DD,DO,DIK,DLAYGO
 I Y=-1 Q
 S DIE="^AMQQ(5,"
 S DA=+Y
 F AMQQI=1:1 S %=$P(AMQQLSTG,U,AMQQI) Q:%=""  I $L(%)>1 S DR=".02///"_% D ^DIE
 S DR="1////P;1.1////V;3////3;4////9;19////C;20////M;41////"_AMQQLTYP_";42////"_AMQQLDFN_";43////"_AMQQLSPX_";44////"_AMQQLHN_";45////"_AMQQLHL_";46////"_AMQQLUNT
 I AMQQLOUT'[":",AMQQLOUT'[";" S DR=DR_";47////"_AMQQLOUT
 D ^DIE
 K DR,DIC,DIE,DQ,DR,DI,D1,D0
 I AMQQLOUT[";"!(AMQQLOUT[":") S $P(^AMQQ(5,DA,4),U,7)=AMQQLOUT
 ;W !,$P(AMQQLSTG,U)
 W "."
 Q
 ;
AQKILL ; ENTRY POINT FROM THE DD
 N AMQQKKK S AMQQKKK=""
AQ ; ENTRY POINT FROM THE DD
 N A,B,%
 S A=^AMQQ(5,DA,4)
 S A=$P(A,U)
 S A=$P(^AMQQ(4,A,0),U)
 I "SZTNQ"'[A Q
 I $D(AMQQKKK) K ^AMQQ(5,"AQ",((DA-1000)\1)) Q
 S ^AMQQ(5,"AQ",((DA-1000)\1),A)=""
 Q
 ;