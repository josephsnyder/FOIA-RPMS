ACHSPDC ; IHS/ITSC/PMF - VIEW/PRINT DOCUMENTS FOR A PATIENT ;    [ 01/26/2005  10:31 PM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**12,18**;JUN 11, 2001
 ;
 ;12/4/00  pmf  add two lines for special pawnee benefit
 ;1/4/04 ITSC/SET/JVK mod for special pawnee benefit
 K A,DFN
 I $P($G(^AUTTLOC(DUZ(2),0)),U,10)=505613 S ACHSYAYA=U_"AZO"_"PWN"_"LK" D @ACHSYAYA K ACHSYAYA Q:'$D(DFN)
 ;
PAT ;
 ;ITSC/SET/JVK ACHS*3.1*12 FOR IHS/OKCAO/POC PAWNEE BEN PKG
 I $P($G(^AUTTLOC(DUZ(2),0)),U,10)=505613 S ACHSYAYA=U_"AZO"_"PWN"_"LK" D @ACHSYAYA K ACHSYAYA Q:'$D(DFN)
 ;D PTLK^ACHS
 I $P($G(^AUTTLOC(DUZ(2),0)),U,10)'=505613 D PTLK^ACHS
 I '$D(DFN) D K Q
 I '$D(^ACHSF(DUZ(2),"PB",DFN)) W *7,!!,"This patient has no CHS documents on file.",! G PAT
 S ACHSIO=IO
BDT ;
 S ACHSBDT=$$DATE^ACHS("B","DOCUMENTS FOR A PATIENT")
 I ACHSBDT<1 D K Q
EDT ;
 S ACHSEDT=$$DATE^ACHS("E","DOCUMENTS FOR A PATIENT")
 I ACHSEDT<1 D K Q
 I $$EBB^ACHS(ACHSBDT,ACHSEDT) G BDT
B ;
 W !!,"TYPE of service:"
 S ACHSTOS=$P(^DD(9002080.01,3,0),U,3)
 F ACHS=1:1 S ACHS(ACHS)=$P(ACHSTOS,";",ACHS) Q:ACHS(ACHS)=""  W ?20,$P(ACHS(ACHS),":",1),"   ",$P(ACHS(ACHS),":",2),!
 W !,"Select TYPE of service (1 - ",ACHS-1,"  'A' = 'ALL') ALL // "
 D READ^ACHSFU
 I $D(DTOUT) D K Q
 G BDT:$D(DUOUT)
 S:(Y="") Y="A"
 G B3:Y="A"
 I ($E(Y)="?")!(Y<1)!(Y>(ACHS-1)) W !!,"Enter an ""A"" to view documents for all types of service,",!,"otherwise, enter a number from 1 to ",ACHS-1,".",! G B
B3 ;
 S ACHSRPT=$S(Y="A":"ALL",1:+Y)
DEV ;
 S %ZIS="OPQ"
 D ^%ZIS,SLV^ACHSFU:$D(IO("S"))
 I POP D HOME^%ZIS D K Q
 G:'$D(IO("Q")) START
 K IO("Q")
 I $D(IO("S"))!($E(IOST)'="P") W *7,!,"Please queue to system printers." D ^%ZISC G DEV
 S ZTRTN="START^ACHSPDC",ZTDESC="CHS Patient "_ACHSRPT_" Summary, "_$$FMTE^XLFDT(ACHSBDT)_" to "_$$FMTE^XLFDT(ACHSEDT)_" for "_$P(^DPT(DFN,0),U)
 F %="ACHSBDT","DFN","ACHSEDT","ACHSRPT" S ZTSAVE(%)=""
 D ^%ZTLOAD
 G:'$D(ZTSK) DEV
 K ZTSK
 D K
 Q
 ;
START ;EP - From TaskMan.
 D FC^ACHSUF
 I $G(ACHSERR) D K Q
 S (ACHSTOT,ACHSCANC,ACHSCTOT,ACHSTOT("$"),ACHSDOC)=0
 S ACHST1=$$C^XBFUNC("PATIENT: "_$P($G(^DPT(DFN,0)),U)_"    CHART #: "_$$HRN^ACHS(DFN,DUZ(2)),80)
 S ACHST2=$$C^XBFUNC("For the period "_$$FMTE^XLFDT(ACHSBDT)_" through "_$$FMTE^XLFDT(ACHSEDT),80)
 S ACHSTOS=$P($G(^DD(9002080.01,3,0)),U,3)
 S ACHSSTS=$P(^DD(9002080.01,11,0),U,3)
 S ACHST3=$$C^XBFUNC($S(ACHSRPT:$P($P(ACHSTOS,";",ACHSRPT),":",2)_" documents ONLY",1:"All Documents"),80)
 D BRPT^ACHSFU
 X:$D(IO("S")) ACHSPPO
 D HDR
 K ACHSDVEW
 S ACHSVQIT=0
 S ACHSFAC=$P($G(^AUTTLOC($O(^AUTTLOC("B",DUZ(2),0)),0)),U,10)
A ; Main loop.
 S ACHSDOC=$O(^ACHSF(DUZ(2),"PB",DFN,ACHSDOC))
 I ACHSDOC="" D END Q
 S ACHSDOC0=$G(^ACHSF(DUZ(2),"D",ACHSDOC,0))
 I ACHSDOC0="" W !!,"NO DOCUMENT ZERO NODE FOR X-REF PB FOR FACILITY: "_DUZ(2)_" DOCUMENT IEN: "_ACHSDOC_" PATIENT DFN: "_DFN W !!,"PLEASE NOTIFY YOUR SITE MANAGER IMMEDIATELY!!" W !! D RTRN^ACHS D K Q
 G A:+$P(ACHSDOC0,U,2)<ACHSBDT,A:+$P(ACHSDOC0,U,2)>ACHSEDT,A:(ACHSRPT'="ALL")&(ACHSRPT'=$P(ACHSDOC0,U,4))
 W ACHSFAC,?7,$P(ACHSDOC0,U,14),ACHSFC,$P(ACHSDOC0,U)
 K Y
 I $D(^ACHSF(DUZ(2),"D",ACHSDOC,3)),+$P($G(^ACHSF(DUZ(2),"D",ACHSDOC,3)),U)>0 S Y=+$P(^(3),U)
 S:'$D(Y) Y=+$P(ACHSDOC0,U,2)
 ;ITSC/SET/JVK ACHS*3.1*12
 ;W ?17,$E(Y,2,7)
 W ?17,$E(Y,4,5),"/",$E(Y,6,7),"/",$E(Y,2,3)
 ;I $P(ACHSDOC0,U,8),$D(^AUTTVNDR($P(ACHSDOC0,U,8),0)) W ?24,$E($P(^(0),U),1,22)
 I $P(ACHSDOC0,U,8),$D(^AUTTVNDR($P(ACHSDOC0,U,8),0)) W ?27,$E($P(^(0),U),1,22)
 ;W ?47,$E($P($P(ACHSTOS,";",$P(ACHSDOC0,U,4)),":",2),1,2)
 W ?51,$E($P($P(ACHSTOS,";",$P(ACHSDOC0,U,4)),":",2),1,2)
 ;ITSC/SET/JVK ACHS*3.1*12 END OF CHANGES
 I $D(^ACHSF(DUZ(2),"D",ACHSDOC,"PA")) S X=$S($D(^("ZA")):+^("ZA"),1:+^("PA")) G P6
 S X=$S($D(^ACHSF(DUZ(2),"D",ACHSDOC,"PA")):+^("PA"),1:$P(ACHSDOC0,U,9))
 I $P(ACHSDOC0,U,12)=4 S X=0,ACHS=$O(^ACHSF(DUZ(2),"D",ACHSDOC,"T",0)) F  Q:+ACHS=0  S X=+$P(^(ACHS,0),U,4),ACHS=$O(^ACHSF(DUZ(2),"D",ACHSDOC,"T",ACHS))
 I $P(ACHSDOC0,U,12)=4 S ACHSCANC=ACHSCANC+X
P6 ;
 I $P(ACHSDOC0,U,12)]"" W ?54,$P($P(ACHSSTS,";",$P(ACHSDOC0,U,12)+1),":",2)
 S ACHSTOT("$")=ACHSTOT("$")+X
 S ACHSCTOT=ACHSTOT("$")-ACHSCANC
 W ?66,$J($FN(X,",",2),12),!
 I ACHSFAC=182730,$D(^ACHSF(DUZ(2),"D",ACHSDOC,"BJI")) W ?5,^ACHSF(DUZ(2),"D",ACHSDOC,"BJI"),! ;ACHS*3.1*18 OIT.IHS.FCJ NEW LINE FOR RED CLIFF
 I IOST["C-",$Y>24 G DISPLAY
 I IOST'["C-",($Y>ACHSBM) D CPI^ACHS D RTRN^ACHS G K:$G(ACHSQUIT) D HDR
 S ACHSTOT=ACHSTOT+1
 G A
 ;
END ;
 W ?69,"----------",!,"Total documents seen: ",$FN(ACHSTOT,","),?66,$J("$"_$FN(ACHSTOT("$"),",",2),12),!!?45,"LESS CANCELS",?66,$J($FN(-ACHSCANC,",P",2),13),!?69,"==========",!?66,$J("$"_$FN(ACHSCTOT,",",2),12)
 I IOST["C-",$Y>15 S ACHSVQIT=1 D DISPLAY
 D:IOST'["C-" CPI^ACHS
K ;EP - Kill vars, do ERPT, quit.
 K ACHSFAC,ACHSPPC,ACHSPPO,DFN,ACHSDOC0,ACHSDOC,ACHSSTS,ACHSTOS,ACHSTOT,ACHSDVEW,ACHSVQIT,ACHSCANC,ACHSCTOT
 D ERPT^ACHS    ;CLOSES ALL DEVICES
 Q
 ;
HDR ; Print header.
 S ACHSPG=ACHSPG+1
 W @IOF
 D CPI^ACHS:IOST'["C-"
 W !,$$REPEAT^XLFSTR("*",79),!,$$C^XBFUNC("CHS DOCUMENTS FOR A SPECIFIC PATIENT",80),!,ACHSUSR,?71,"Page",$J(ACHSPG,3),!,ACHST1,!,ACHST2,!,ACHST3,!,$$REPEAT^XLFSTR("*",79)
 ;ITSC/SET/JVK ACHS*3.1*12
 ;W !,"FAC",?7,"DOCUMENT",?17,"DATED",?24,"VENDOR",?47,"TYPE",?52,"STATUS",?69,"AMOUNT",!,$$REPEAT^XLFSTR("-",79),!
 W !,"FAC",?7,"DOCUMENT",?17,"DATED",?26,"VENDOR",?47,"TYPE",?52,"STATUS",?69,"AMOUNT",!,$$REPEAT^XLFSTR("-",79),!
 Q
 ;
DISPLAY ; View document selected from the report.
 K DIR
 S DIR(0)="Y",DIR("A")="Do you want to view one of the documents listed",DIR("B")="NO"
 D ^DIR
 K DIR
 I Y=0,ACHSVQIT=0 D HDR S ACHSTOT=ACHSTOT+1 G A
 I Y=0 Q
 I ACHSVQIT=1,Y=0,ACHSPG>1,$Y>24 G AGAIN
 S ACHSDVEW=0
 D
 . N DFN,ACHSDOC
 . D ^ACHSAD
 .Q
 K DIR
 S DIR(0)="E"
 W !!
 D ^DIR
 G K:Y=0
 I ACHSVQIT'=1 D HDR G A
AGAIN ;
 K DIR
 S DIR(0)="Y",DIR("A")="View document list again",DIR("B")="NO"
 W !!!
 D ^DIR
 I Y=1 S (ACHSCANC,ACHSVQIT,ACHSTOT,ACHSTOT("$"),ACHSPG)=0,ACHSDOC="" D HDR G A
 G K
 ;
