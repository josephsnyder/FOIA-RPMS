ABPVEEIN ;ADD/EDIT ENTRY IN INSURER FILE;[ 06/04/91  12:18 PM ]
 ;;2.0;FACILITY PVT-INS TRACKING;*0*;IHS-OKC/KJR;AUGUST 7, 1991
 I '$D(DTIME) S DTIME=300
 I $D(DUZ(2))=0 S DUZ(2)=$P(^AUTTSITE(1,0),"^",1)
 I +DUZ(2)<1 S DUZ(2)=$P(^AUTTSITE(1,0),"^",1)
 S SITENAME=$P(^DIC(4,DUZ(2),0),"^",1)
 S Y=DT D D S DATE=Y
 G START
 ;
HEAD K ABPV("HD") S X="Enter/Edit Insurer" D SCREEN^ABPVZMM
 Q
 ;
SET S DIC="^AUTNINS(",DIC(0)="AELMQZ" W ! D ^DIC G:Y=-1 END
 S (DA,D0)=+Y I +$P(Y,"^",3)'=1 G DISP
 W !!,"<----------HOME OFFICE ADDRESS---------->"
 S DIE="^AUTNINS(",DA=+Y,DR=".02;.03;.04;.06;.09",DIE("NO^")="" W ! D ^DIE
 W !!,"<------------BILLING ADDRESS------------>"
 K ^DIE("NO^") S DR=1 W ! D ^DIE I X=""!(X="^") G DISP
 S DIE("NO^")="" F DR=2:1:5 D ^DIE I X="" W !?3,*7,"REQUIRED INFORMATION - PLEASE RESPOND!" S DR=DR-1
 ;S DR="1;I X="""" S Y="""";2;3;4;5;I X="""" W !?5,*7,""ZIP CODE REQUIRED - PLEASE RESPOND"" S Y=5" W ! D ^DIE
DISP K DXS D HEAD,^ABPVDIN K DXS
SELECT W !,"CHANGE which item? (1-12) OR ""^"" TO EXIT// " R X:DTIME
 G END:X="^",START:X=""
 I +X=0!(+X<1)!(+X>12) W *7,!,"     PLEASE ENTER A NUMBER FROM ""1"" TO ""12"" ONLY." G SELECT
 S LBL="X"_X,DIE="^AUTNINS(" W ! D @LBL G DISP
 ;
X1 S DR=.01 D ^DIE Q
X2 S DR=.02 D ^DIE Q
X3 S DR=.03 D ^DIE Q
X4 S DR=.04 D ^DIE Q
X5 S DR=.05 D ^DIE Q
X6 S DR=.06 D ^DIE Q
X7 S DR=.09 D ^DIE Q
X8 S DR=1 I $D(^AUTNINS(DA,1))=0 S DR=DR_";I X=""^""!(X="""") S Y="""",AFLG="""";5"
 K AFLG D ^DIE I $D(AFLG)=1 K AFLG Q
X8A I $P(^AUTNINS(DA,1),"^",1)'=""&($P(^AUTNINS(DA,1),"^",5)="") W !?3,*7,"REQUIRED INFORMATION - PLEASE RESPOND!" S DR=5 D ^DIE G X8A
 I $P(^AUTNINS(DA,1),"^",1)="" K ^AUTNINS(DA,1)
 Q
X9 S DR=2 D ^DIE Q
X10 S DR=3 D ^DIE Q
X11 S DR=4 D ^DIE Q
X12 S DR=5 D ^DIE Q
 ;
START W @IOF D HEAD G SET
END K NAME,STREET,CITY,STATE,ZIP,PHONE,DR,DATE,DA,DFN,SITENAME,ABPV("HD")
 Q
D I $L(Y)'<7 S %=$E(Y,4,5)*3,Y=$E("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC",%-2,%)_" "_$S($E(Y,6,7):$J(+$E(Y,6,7),2)_",",1:"")_($E(Y,1,3)+1700)_$S(Y[".":" "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12),1:"") Q