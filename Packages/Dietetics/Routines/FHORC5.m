FHORC5	; HISC/REL - Consult Management ;3/9/95  15:52
	;;5.0;Dietetics;;Oct 11, 1995
EN9	; Enter/Edit Ward Assignments
	K DIC S (DIC,DIE)="^FH(119.6,",DIC(0)="AEQM"
	W ! D ^DIC G KIL:U[X!$D(DTOUT),EN9:Y<1 S OLD=$S($P(Y,"^",3):"",1:$P(^FH(119.6,+Y,0),"^",2))
	S DA=+Y,DR="1" D ^DIE S NEW=$P(^FH(119.6,DA,0),"^",2) I 'NEW!('OLD) K OLD,NEW,X,Y G EN9
	D:OLD'=NEW EN2^FHORC4 K OLD,NEW,X,Y G EN9
EN10	; List Ward Assignments
	W ! S L=0,DIC="^FH(119.6,",FLDS="[FHORWRD]",BY=".01"
	S (FR,TO)="",DHD="WARD ASSIGNMENTS" D EN1^DIP,RSET Q
EN11	; Enter/Edit Consult Types
	S (DIC,DIE)="^FH(119.5,",DIC(0)="AEQLM",DIC("DR")=".01",DLAYGO=119.5
	W ! D ^DIC K DIC,DLAYGO G KIL:U[X!$D(DTOUT),EN11:Y<1
	S DA=+Y,DR=".01:2;S FHA1=X;3;S Y=$S(FHA1=""Y"":4,1:5);4;5:99" S:$D(^XUSEC("FHMGR",DUZ)) DIDEL=119.5 D ^DIE K DA,DIE,DIDEL,DR,FHA1 G EN11
EN12	; List Consult Types
	W !!,"The list requires a 132 column printer.",!
	W ! S L=0,DIC="^FH(119.5,",FLDS="[FHORCON]",BY=".01"
	S (FR,TO)="",DHD="CONSULTATION TYPES" D EN1^DIP,RSET Q
RSET	K %ZIS S IOP="" D ^%ZIS
KIL	K %,%ZIS,IOP,BY,DA,DHD,DIC,DIE,DR,FLDS,FR,L,NEW,OLD,TO,X,Y Q
