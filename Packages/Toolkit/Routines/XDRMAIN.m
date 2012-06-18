XDRMAIN ;SF-IRMFO/IHS/OHPRD/JCM - MAIN DRIVER FOR DUPLICATE MERGE SOFTWARE;    [ 04/02/2003   8:47 AM ]
 ;;7.3;TOOLKIT;**1001**;APR 1, 2003
 ;;7.3;TOOLKIT;**23**;Apr 25, 1995
 ;;
START ;
 S XDRMAINI="MERGE" D ^XDRMAINI G:XDRQFLG END
 F XDRMI1=0:0 S XDRMPAIR=$O(@XDRM("GL")) Q:'XDRMPAIR!(XDRQFLG)  S XDRMPDA="^VA(15,""APOT"","_""""_$P(XDRGL,U,2)_""""_",XDRMPAIR,0)" S XDRMPDA=$O(@XDRMPDA) D MAIN D:'$D(XDRM("NOTALK")) ASK
END D EOJ
 Q
 ;
MAIN ;
 S XDRMCD=$P(XDRMPAIR,U,1),XDRMCD2=$P(XDRMPAIR,U,2)
 S XDRMRG("LCK")="+" D LOCK^XDRU1 K XDRMRG("LCK") I $D(XDRMLOCK) G MAINX
 I '$D(XDRM("NOVERIFY")) S XDRMRG=0 D ^XDRMVFY G:'XDRMRG!(XDRQFLG) MAINX
 S (XDRMRG("FR"),XDRMAIN("FR"))=$S($P(^VA(15,XDRMPDA,0),U,4)=2:XDRMCD2,1:XDRMCD)
 S (XDRMRG("TO"),XDRMAIN("TO"))=$S(XDRMRG("FR")=XDRMCD2:XDRMCD,1:XDRMCD2)
 D ^XDRMPACK
 I '$P(^VA(15,XDRMPDA,0),U,5),'$D(XDRM("NOVERIFY")) S XDRMSG="VERIFY" D ^XDRMSG I 1
 E  D ^XDRMRG I $P(^VA(15,XDRMPDA,0),U,5)=2 S XDRMSG="MERGED" D ^XDRMSG
MAINX S XDRMRG("LCK")="-" D LOCK^XDRU1 K XDRMRG("LCK"),XDRMLOCK
 Q
 ;
EN Q  ; EP - Entry Point for Automatic Merge, Called by XDRDADD,XDRMADD
 I '$D(XDRMPDA) G ENX
 I '$D(XDRMPAIR) S XDRMPAIR=+$P(^VA(15,XDRMPDA,0),U,1)_U_+$P(^(0),U,2)
 S XDRMAINI="MERGE" D ^XDRMAINI G:XDRQFLG ENX
 D MAIN
ENX D EOJ
 Q
 ;
EN1 Q  ; EP - Entry point for looping through Verified ready to merge duplicates
 S:'$D(XDRM("NOVERIFY")) XDRM("NOVERIFY")=""
 S XDRMAINI="MERGE" D ^XDRMAINI G:XDRQFLG EN1X
 I $D(XDRM("NON-INTERACTIVE")) S DIE="^VA(15.1,",DA=XDRFL,DR=".32///@" D ^DIE K DA,DR,DIE
 S XDRMPDA=0
 S XDRM("GL")="^VA(15,""AMRG"","_""""_$P(XDRGL,U,2)_""""_",1,XDRMPDA)"
 F XDRMI1=0:0 S XDRMPDA=$O(@XDRM("GL")) Q:'XDRMPDA!(XDRQFLG)!($D(XDRM("NON-INTERACTIVE"))&($P(^VA(15.1,XDRFL,0),U,32)))  S XDRMPAIR=+$P(^VA(15,XDRMPDA,0),U,1)_U_+$P(^VA(15,XDRMPDA,0),U,2) D MAIN D:'$D(XDRM("NOTALK")) ASK
EN1X D EOJ
 Q
 ;
ASK ;
 S XDRQFLG=0
 G:$D(XDRMLOCK) ASKX
 W !!
 S DIR(0)="YO",DIR("A")="Do you wish to continue with the next pair of records",DIR("B")="Y"
 D ^DIR
 I $D(DTOUT)!($D(DUOUT)) S XDRQFLG=1 G ASKX
 I 'Y S XDRQFLG=1
ASKX K DIR,DA,Y,XDRMLOCK
 Q
 ;
EN2 Q  ; EP - Entry point to select Verified Ready to Merge Duplicate Pair
 S:'$D(XDRM("NOVERIFY")) XDRM("NOVERIFY")=""
 S XDRMAINI="MERGE" D ^XDRMAINI G:XDRQFLG EN2X
 I '$D(XDRM("NOTALK")),$D(XDRM("NON-INTERACTIVE")) S XDRM("NOTALK")=""
 S:$P(XDRM(0),U,25) (XDRM("NON-INTERACTIVE"),XDRM("NOTALK"))=""
 S DIC("S")="I $P($P(^VA(15,Y,0),U,1),"";"",2)=$P(XDRGL,U,2),$P(^VA(15,Y,0),U,5)=1"
 S DIC="^VA(15,",DIC(0)="QEAM"
 D ^DIC K DIC,DA I U[X S XDRQFLG=1 G EN2X
 S XDRMPDA=+Y,XDRMPAIR=+$P(^VA(15,XDRMPDA,0),U,1)_U_+$P(^(0),U,2)
 D MAIN
 I $D(XDRMLOCK) W !!,"Records currently busy, Please try again later.",!! K XDRMLOCK
EN2X D EOJ
 Q
 ;
EN3 Q  ; EP - Entry point to select Unverified Potential Duplicate Pair
 S XDRMAINI="MERGE" D ^XDRMAINI G:XDRQFLG EN3X
 S DIC("S")="I $P($P(^VA(15,Y,0),U,1),"";"",2)=$P(XDRGL,U,2),$P(^VA(15,Y,0),U,3)=""P"""
 S DIC="^VA(15,",DIC(0)="QEAM"
 D ^DIC K DIC,DA I U[X S XDRQFLG=1 G EN3X
 S XDRMPDA=+Y,XDRMPAIR=+$P(^VA(15,XDRMPDA,0),U,1)_U_+$P(^(0),U,2)
 D MAIN
 I $D(XDRMLOCK) W !!,"Records currently busy, Please try again later.",!! K XDRMLOCK
EN3X D EOJ
 Q
 ;
EOJ ;
 K:'$D(XDRDADD) XDRFL,XDRGL,XDRD
 K XDRM,XDRMAIN,XDRM("DEVICE"),XDRMPAIR,XDRMI1,XDRMCD,XDRMCD2
 K XDRMPDA,XDRM("POST-MERGE"),XDRM("PRE-MERGE"),XDRQFLG,XDRMRG,XDRM("VERIFYMSG"),XDRM("MERGEMSG")
 Q
