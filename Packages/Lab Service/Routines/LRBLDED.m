LRBLDED ; IHS/DIR/AAB - BLOOD DONOR EDIT 5/1/97 12:10 ; [ 04/29/98 9:31 AM ]
 ;;5.2;LR;**1003**;JUN 01, 1998
 ;;5.2;LAB SERVICE;**90**;Sep 27, 1994
O D END S LRC="",LRD("U")=1
ASK S LRA=0 D G G:Y<1 END D REST G ASK
REST I 'LRA W $C(7),!?28,"DONOR PREVIOUSLY ENTERED.",!?3,"THIS OPTION IS FOR ENTERING OLD DATA ON DONORS NOT PREVIOUSLY ENTERED !" Q
 S DR="[LRBLDOLD]" D ^DIE I $D(Y) W !,$C(7),"Respond to ALL prompts. No '^' allowed ! ENTRY DELETED" S DIK="^LRE(" D ^DIK K DIK Q
SH W @IOF S DR="0;1;2;4" D EN^DIQ W !,"EDIT above information: " S %=2 D YN^LRU Q:%<1  I %=1 K DR S DR="[LRBLDEMO]" D ^DIE G SH
 S:'$D(^LRE(DA,5,0)) ^(0)="^65.54DA^^" S LRQ=DA
DD W ! K LRZ S DA(1)=LRQ,DIC="^LRE(LRQ,5,",DIC(0)="AEQLM",DLAYGO=65 D ^DIC K DIC,DLAYGO Q:Y<1
 S DA=+Y,DIE="^LRE(LRQ,5,",DR=".011////^S X=DUZ;.14///^S X=""YES"";.01;.02//^S X=LRC;S:X LRC=$P(^LAB(65.4,X,0),U);.03;1//^S X=""WHOLE BLOOD"";S:X'=""N"" Y=1.1;2;S LRZ=1,Y=0;1.1//^S X=""HOMOLOGOUS"";3//^S X=""NONE"""
 D ^DIE G:$D(Y)!($D(LRZ)) DD
ID R !,"DONOR UNIT ID: ",X:DTIME G:X=""!(X[U) DD S X(1)=DA D ^LRBLU I '$D(X) W $C(7),! W:$D(^DD(65.54,4,3)) ^(3) X:$D(^(4)) ^(4) G ID
 S $P(^LRE(LRQ,5,DA,0),"^",4)=X,^LRE("C",X,LRQ,DA)="" G DD
 ;
D D END,G G:Y<1 END G:$D(LR("CK")) D S DR="[LRBLDEMO]" D ^DIE D FRE^LRU W @IOF S DR="0;1;2;4" D:$G(DA) EN^DIQ G D
E D END,D^LRBLU G:'$D(X) END D G G:Y<1 END G:$D(LR("CK")) E S DR="[LRBLDCP]" D ^DIE D FRE^LRU G E
B D END,G G:Y<1 END G:$D(LR("CK")) B S DR="[LRBLDEDIT]" D ^DIE D FRE^LRU G B
C D END,G G:Y<1 END G:$D(LR("CK")) C S DR="[LRBLDON]" D ^DIE D FRE^LRU K LRP G C
EN D G G:Y<1 END G:$D(LR("CK")) EN S DR=.085 D ^DIE D FRE^LRU G EN
R D ^LRBLDRR Q
G K LR("CK"),DA,DQ,DIC,DIE,DR S IOP="HOME" D ^%ZIS
 I '$D(LRAA) S X="BLOOD BANK" D ^LRUTL K LRDPAF
 S (DIC,DIE)="^LRE(",DIC(0)="AEQLMZ",DLAYGO=65,D="B^C^"_$S("NAFARMY"[DUZ("AG")&(DUZ("AG")]""):"G4^G",1:"D") W ! D MIX^DIC1 K DIC,DLAYGO,DR Q:Y<1
 S DA=+Y I $P(Y,U,3) S LRA=1,LRP=$P(Y,U,2) D ^LRBLD G:'$D(DA) G S Y=DA
 D CK^LRU Q
 ;
END D V^LRU Q
