ASUAUAST ;DSD/DFM - UTILITY GET AREA & STATION ;  [ 04/15/98  2:50 PM ]
 ;;3.0;SAMS;**1**;AUG 20, 1993
 D AREA,STAT K DIR,DIC,X,Y Q
AREA ;EP ;AREA CODE
 K DIC S DIC=9002039.01,DIC(0)="MZE"
 W !,"2. ENTER AREA CODE: ",ASUK("AREA","ACCPT")
 S X=ASUK("AREA","ACCPT") D ^DIC I Y>0 S ASUTR(1,"AREA")=+Y
 Q
STAT ;EP ;STATION CODE CHECK
 I $E(ASUTRNS("TRANSACTION CODE"))=0 K DIC("S") G READDST
 I $D(ASUTRNS(ASUTRNS,"STATION")) I $L(ASUTRNS(ASUTRNS,"STATION"))>0 G STAFOUND
 S ASUTR(1,"STATION")=$O(^ASUTB01(ASUTR(1,"AREA"),1,"T","S","")) G:ASUTR(1,"STATION")="" STEXIT
 S ASUTRSTN=$O(^ASUTB01(ASUTR(1,"AREA"),1,"T","S",ASUTR(1,"STATION"))) I ASUTRSTN]"" K ASUTRSTN G READSTA
 K ASUTRSTN
 S ASUTRNS(ASUTRNS,"STATION")=$P(^ASUTB01(ASUTR(1,"AREA"),1,ASUTR(1,"STATION"),0),U)
 S ASUK("STATION","NAME")=$P(^ASUTB01(ASUTR(1,"AREA"),1,ASUTR(1,"STATION"),0),U,2)
STAFOUND ;
 W !,"3. ENTER STATION CODE ",ASUTRNS(ASUTRNS,"STATION")
 I '$D(ASUK("STATION","NAME")) G SETSTNM
 W ?30,ASUK("STATION","NAME") G STEXIT
READSTA ;STATION READ
 S DIC("S")="I $P(^ASUTB01(DA(1),1,+Y,0),U,3)=""S"""
READDST ;
 K ASUTRSST
 S DIR("A")="3. ENTER STATION CODE"
 S DIR("?")="Invalid Station Code for your Area"
 S DIR(0)="PE^ASUTB01("_ASUTR(1,"AREA")_",1,:MXE",DA(1)=ASUTR(1,"AREA")
 D ^ASUAUDIR
 I $D(DUOUT)!($D(DIROUT))!($D(DTOUT)) Q
 I Y>0 S ASUTR(1,"STATION")=+Y,ASUTRNS(ASUTRNS,"STATION")=$P(Y,U,2)
SETSTNM ;
 S ASUK("STATION","NAME")=$P(^ASUTB01(ASUTR(1,"AREA"),1,ASUTR(1,"STATION"),0),U,2)
 W ?30,ASUK("STATION","NAME")
STEXIT ;
 Q
