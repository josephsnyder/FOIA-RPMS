BMCSPD ; IHS/PHXAO/TMJ - display site parameters ;    [ 09/27/2006  2:16 PM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1,2,3**;JAN 09, 2006
 ;4.0 IHS/OIT/FCJ ADDED FIELDS TO BE DISPLAYED
 ;4.0*1 2.14.06 IHS/OIT/FCJ ADDED FIELDS TO PRINT ADDRESS
 ;4.0*2 2.14.06 IHS/OIT/FCJ ADDED 2nd Ref POV and Mailman subject line
 ;4.0*2 2.14.06 IHS/OIT/FCJ ADDED Consult letter, Alert for Ref Phy and Prim Prov to display
 ;
 ;
EN1 ;
 K BMCQUIT
 W !!,"Display Referred Care Information System (RCIS) Site Parameters",!
 S DIC="^BMCPARM(",DIC(0)="AEMQ" D ^DIC K DIC I Y=-1 W !!,"Goodbye" G XIT
 S BMCPARM=+Y
 S DIR(0)="SO^B:BROWSE Output on Screen;P:PRINT Output to Printer",DIR("A")="Do you want to",DIR("B")="B" K DA D ^DIR K DIR
 G:$D(DIRUT) XIT
 I Y="B" D BROWSE,XIT Q
 S XBRP="PRINT^BMCSPD",XBRC="PROC^BMCSPD",XBRX="XIT^BMCSPD",XBNS="BMC"
 D ^XBDBQUE
 D XIT
 Q
XIT ;EP
 K BMCPARM,BMCX,BMCI,BMCPG,Y
 Q
BROWSE ;
 D VIEWR^XBLM("PRINT^BMCSPD","RCIS Site Parameter Display")
 Q
PROC ;
 Q
PRINT ;
 S BMCPG=0
 K BMCX,BMCI
 W:$D(IOF) @IOF W !?30,"RCIS SITE PARAMETERS",!
 F BMCI=.01:.01:.99 I $D(^DD(90001.31,BMCI)) S BMCX(BMCI)=$P(^DD(90001.31,BMCI,0),U)_U_$$VAL^XBDIQ1(90001.31,BMCPARM,BMCI)
 ;4.0*3 9.27.2007 IHS/OIT/FCJ FCJ Patch 2 changed 4104 to 4107 and patch 3 changed 4107 TO 4110 in next line New parameters added
 F BMCI=4101:.01:4110 I $D(^DD(90001.31,BMCI)) S BMCX(BMCI)=$P(^DD(90001.31,BMCI,0),U)_U_$$VAL^XBDIQ1(90001.31,BMCPARM,BMCI)  ;4.0*3 IHS/OIT/FCJ
 F BMCI=1101:.01:1199 I $D(^DD(90001.31,BMCI)) S BMCX(BMCI)=$P(^DD(90001.31,BMCI,0),U)_U_$$VAL^XBDIQ1(90001.31,BMCPARM,BMCI)
 F BMCI=201:.01:204 I $D(^DD(90001.31,BMCI)) S BMCX(BMCI)=$P(^DD(90001.31,BMCI,0),U)_U_$$VAL^XBDIQ1(90001.31,BMCPARM,BMCI) ;4.0*1 IHS/OIT/FCJ ADDED TO PRINT ADDRESS
 S X=0 F  S X=$O(BMCX(X)) Q:X'=+X!($D(BMCQUIT))  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .S L=$L($P(BMCX(X),U)) W !?(37-$S(L>37:37,1:L)),$P(BMCX(X),U),":",?40,$P(BMCX(X),U,2)
 .Q
 K BMCX D ENP^XBDIQ1(90001.31,BMCPARM,1,"BMCX(","E")
 I $Y>(IOSL-3) D FF Q:$D(BMCQUIT)
 W !!,"HELP PROMPT FOR PRIORITY SYSTEM:"
 S BMCI=0 F  S BMCI=$O(BMCX(1,BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,BMCX(1,BMCI)
 .Q
HCDB ;
 K BMCX D ENPM^XBDIQ1(90001.312101,DUZ(2)_",0",".01:.02","BMCX(")
 I $D(BMCX) W !!,"HIGH COST DIAGNOSES BULLETINS: "
 S BMCI=0 F  S BMCI=$O(BMCX(BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,"Person Receiving Bulletin: ",$G(BMCX(BMCI,.01)),"  Types: ",$G(BMCX(BMCI,.02))
 .Q
HCPB ;
 K BMCX D ENPM^XBDIQ1(90001.312201,DUZ(2)_",0",".01:.02","BMCX(")
 I $D(BMCX) W !!,"HIGH COST PROCEDURES BULLETINS: "
 S BMCI=0 F  S BMCI=$O(BMCX(BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,"Person Receiving Bulletin: ",$G(BMCX(BMCI,.01)),"  Types: ",$G(BMCX(BMCI,.02))
 .Q
CP ;
 K BMCX D ENPM^XBDIQ1(90001.312301,DUZ(2)_",0",".01:.02","BMCX(")
 I $D(BMCX) W !!,"COSMETIC PROCEDURE BULLETINS: "
 S BMCI=0 F  S BMCI=$O(BMCX(BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,"Person Receiving Bulletin: ",$G(BMCX(BMCI,.01)),"  Types: ",$G(BMCX(BMCI,.02))
 .Q
EP ;
 K BMCX D ENPM^XBDIQ1(90001.312401,DUZ(2)_",0",".01:.02","BMCX(")
 I $D(BMCX) W !!,"EXPERIMENTAL PROCEDURE BULLETINS: "
 S BMCI=0 F  S BMCI=$O(BMCX(BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,"Person Receiving Bulletin: ",$G(BMCX(BMCI,.01)),"  Types: ",$G(BMCX(BMCI,.02))
 .Q
TPL ;
 K BMCX D ENPM^XBDIQ1(90001.312501,DUZ(2)_",0",".01:.02","BMCX(")
 I $D(BMCX) W !!,"THIRD PARTY LIABILITY BULLETINS: "
 S BMCI=0 F  S BMCI=$O(BMCX(BMCI)) Q:BMCI'=+BMCI  D
 .I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .W !,"Person Receiving Bulletin: ",$G(BMCX(BMCI,.01)),"  Types: ",$G(BMCX(BMCI,.02))
 .Q
SSTXT ; SITE-SPECIFIC TEXT FOR REFERRAL LETTERS
 N BMCI1 F BMCI1=31:1:34 D
 . K BMCX
 . D ENP^XBDIQ1(90001.31,BMCPARM,BMCI1_"01","BMCX(","E")
 . W:$D(^BMCPARM(BMCPARM,BMCI1)) !!,$P(^DD(90001.31,BMCI1_"01",0),U),":"
 . S BMCI=0 F  S BMCI=$O(BMCX(BMCI1_"01",BMCI)) Q:BMCI'=+BMCI  D
 .. I $Y>(IOSL-4) D FF Q:$D(BMCQUIT)
 .. W !,BMCX(BMCI1_"01",BMCI)
 .. Q
 . Q
 K BMCI1
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)
 S DIR(0)="FO^1:1",DIR("A")="Press 'RETURN' to Continue" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
FF ;
 NEW X
 I $E(IOST)="C" S DIR(0)="E",DIR("A")="Press 'RETURN' to continue or '^' to exit" D ^DIR K DIR I $D(DIRUT) S BMCQUIT=1 Q
 S BMCPG=BMCPG+1
 W:$D(IOF) @IOF
 W !?40,"RCIS SITE PARAMETERS          Page ",BMCPG,!!
 Q
