BMCRUTL ; IHS/ITSC/FCJ - REPORT UTILITES ;      
 ;;4.0;REFERRED CARE INFO SYSTEM;**9**;JAN 09, 2006;Build 51
 ;
GETDATES ;EP
BD ;EP;get beginning date
 W ! S DIR(0)="D^:DT:EP",DIR("A")="Enter beginning Referral Date" D ^DIR S:$D(DUOUT) DIRUT=1 K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G EXIT
 S BMCBD=Y
ED ;get ending date
 W ! S DIR(0)="DA^"_BMCBD_":DT:EP",DIR("A")="Enter ending Referral Date:  " S Y=BMCBD D DD^%DT S Y="" D ^DIR S:$D(DUOUT) DIRUT=1 K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S BMCED=Y
 S X1=BMCBD,X2=-1 D C^%DTC S BMCSD=X
 S Y=BMCBD D DD^%DT S BMCBDD=Y S Y=BMCED D DD^%DT S BMCEDD=Y
 ;
 Q
DT ;EP;FORMAT DATE
 S Y=$E(Y,4,5)_"/"_$E(Y,6,7)_"/"_$S($E(Y,1,3)>299:20_$E(Y,2,3),1:(19_$E(Y,2,3)))
 Q
SECREF ;EP;Secondary Referral
 I $D(^BMCPROV("AD",BMCREF)) S BMCSRIEN=0 D
 .F  S BMCSRIEN=$O(^BMCPROV("AD",BMCREF,BMCSRIEN)) Q:BMCSRIEN'?1N.N  D
 ..S Y=$P(^BMCPROV(BMCSRIEN,0),U) D DT^BMCRUTL S BMCSREF="  SEC "_Y
 ..S Y=$P(^BMCPROV(BMCSRIEN,0),U,6) D DT^BMCRUTL S BMCSREF=BMCSREF_" DOS "_Y
 ..W !,BMCSREF,?32,$E($$VAL^XBDIQ1(90001.04,BMCSRIEN,.07),1,22)
 ..S Y=$P($G(^BMCPROV(BMCSRIEN,2)),U,2)
 ..W ?55,$E($S(Y="C":$$VAL^XBDIQ1(90001.04,BMCSRIEN,.05),Y=I:$$VAL^XBDIQ1(90001.04,BMCSRIEN,.12),1:""),1,25)
 K BMCRIEN,BMCSREF Q
SECREF2 ;EP;Secondary Referral
 Q:BMCRNUMB=""
 I $D(^BMCREF("S",BMCRNUMB)) S BMCSUF=0 D
 .F  S BMCSUF=$O(^BMCREF("S",BMCRNUMB,BMCSUF)) Q:BMCSUF'?1A.N  D
 ..Q:$G(BMCSTST)=BMCSUF
 ..S BMCSRIEN=0
 ..F  S BMCSRIEN=$O(^BMCREF("S",BMCRNUMB,BMCSUF,BMCSRIEN)) Q:BMCSRIEN'?1N.N  D
 ...S Y=$P(^BMCREF(BMCSRIEN,0),U) D DT^BMCRUTL S BMCSREF=" SEC "_BMCSUF_" "_Y
 ...S Y=$S($P(^BMCREF(BMCSRIEN,11),U,6)'="":$P(^BMCREF(BMCSRIEN,11),U,6),1:$P(^BMCREF(BMCSRIEN,11),U,5)) D DT^BMCRUTL S BMCSREF=BMCSREF_" DOS "_Y
 ...W !,BMCSREF,?34,$E($$VAL^XBDIQ1(90001,BMCSRIEN,1201),1,21) ;FCJ CHG LENGHT FROM 22 TO 21
 ...S Y=$P($G(^BMCREF(BMCSRIEN,0)),U,4)
 ...W ?56,$E($S(Y="C":$$VAL^XBDIQ1(90001,BMCSRIEN,.07),Y="I":$$VAL^XBDIQ1(90001,BMCSRIEN,.08),1:""),1,24)
 K BMCSUF,BMCSRIEN,BMCSREF Q
 ;
BO ;EP;PRINT BO COMMENTS
 S BMCI=0,Y=0
 F  S BMCI=$O(^BMCCOM("AD",BMCREF,BMCI)) Q:BMCI'?1N.N  D  Q:BMCQUIT
 .Q:$P(^BMCCOM(BMCI,0),U,5)'=BMCCTYP
 .I Y=0,BMCCTYP="B" W !,"Business Office Comments:"
 .S BMCNODE=1,BMCIOM=70,BMCFILE=90001.03,BMCDA=BMCI D WP^BMCFDR K BMCIOM
 .S Y=0 F  S Y=$O(BMCWP(Y)) Q:Y'=+Y!(BMCQUIT)  D
 ..I $Y>(IOSL-3) D HEAD^BMCRR14P Q:BMCQUIT
 ..W !?5,BMCWP(Y)
 Q
ZIS ;EP;call to XBDBQUE
 K BMCOPT
 W ! S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) S BMCQUIT="" Q
 S BMCOPT=Y
 Q
EXIT ;
 Q
 ;
