FHADR8	; HISC/NCA - Dietetic Costs ;11/28/94  09:10
	;;5.0;Dietetics;;Oct 11, 1995
EN1	; Enter/Edit Cost Diem
	K COST,N S COST="",NFLG=0 D QR^FHADR1 G:'PRE KIL
	S FHYR=$E(PRE,1,3) D Q2^FHADRPT K FHYR G:'SDT!('EDT) KIL
	S Z1=$P($G(^FH(117.3,PRE,"COST",0)),"^",3),Z2=$P($G(^FH(117.3,PRE,"COST",+Z1,0)),"^",1)
	I Z2="" S NFLG=1
E1	K DIR S DIR(0)="117.332,.01",DIR("A")="Enter Cumulative Total on the 830 Report of Costs" S:Z2 DIR("B")=Z2
	D ^DIR I X="@" W *7,"  REQUIRED FIELD!" G E1
	G:$D(DIRUT)!($D(DIROUT)) KIL
	S:X["$" X=$P(X,"$",2) S FHX=+X
	I Z1,Z2'=+FHX S $P(^FH(117.3,PRE,"COST",+Z1,0),"^",1)=+FHX K:$D(^FH(117.3,PRE,"COST","B",+Z2,+Z1)) ^FH(117.3,PRE,"COST","B",+Z2,+Z1) S ^FH(117.3,PRE,"COST","B",+FHX,+Z1)=""
	I 'NFLG G EDIT
	I '$D(^FH(117.3,PRE,"COST",0)) S ^FH(117.3,PRE,"COST",0)="^117.332^^"
	K DIC,DD,DO S DIC="^FH(117.3,PRE,""COST"",",DIC(0)="L",DLAYGO=117.3,DA(1)=PRE
	S DA=$P($G(^FH(117.3,PRE,"COST",0)),"^",3)+1 I $D(^FH(117.3,PRE,"COST",0)) S $P(^FH(117.3,PRE,"COST",0),"^",3)=DA
	S X=+FHX,DINUM=DA D FILE^DICN K DA,DIC,DLAYGO,DINUM S Z1=+Y
EDIT	K DIC,DIE S DA(0)=PRE,DA=+Z1,DIE="^FH(117.3,"_DA(0)_",""COST"","
	S DR="1:7"
	L +^FH(117.3,PRE,"COST",0):0 I '$T W !?5,"Another user is editing this entry." G KIL
	D ^DIE L -^FH(117.3,PRE,"COST",0)
KIL	G KILL^XUSCLEAN
