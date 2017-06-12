ACHSDSTE ; IHS/OIT/FCJ - DOCUMENT STATUS REPORT FOR EOBR DATA ;   [ 01/16/2003  8:54 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**26**;JUN 11, 2001;Build 37
 ;ACHS*3.1*26 NEW ROUTINE
 ;Modified routine to just print documents that have had payments
 ;between a specific data range.  This report if for aiding in service
 ;units monthly reconciliation.
 ;
 ;
 D ^ACHSVAR
TITLE ;;DOCUMENT STATUS
 S ACHSIO=IO
 K X2,X3
BDT ;
 S ACHSBDT=$$DATE^ACHS("B",$P($T(TITLE),";",3),"ISSUE")
 G K:$D(DUOUT)!$D(DTOUT)!(ACHSBDT<1)
EDT ;
 S ACHSEDT=$$DATE^ACHS("E",$P($T(TITLE),";",3),"ISSUE")
 G K:$D(DTOUT)!(ACHSEDT<1),BDT:$D(DUOUT)
 G:$$EBB^ACHS(ACHSBDT,ACHSEDT) EDT
FY ;
 W !!,"Enter Fiscal (e.g. 2016):  " D READ^ACHSFU Q:$D(DUOUT)!$D(DTOUT)  I Y'?4N W !!,*7,"Enter 4 DIGIT Fiscal Year" G FY
 S FY=$E(Y,4),ACHSFY=$E(Y,3,4)
 ;
 W !!!,"ONLY DOCUMENTS THAT HAVE HAD PAYMENTS WILL BE LISTED (P/IP/ZA)"
 W !!
 ;
DEV ;
 S %ZIS="OPQ"
 D ^%ZIS
 I POP D HOME^%ZIS G K
 G:'$D(IO("Q")) PRINT
 K IO("Q")
 I $D(IO("S"))!($E(IOST)'="P") W *7,!,"Please queue to system printers." D ^%ZISC G DEV
 S ZTRTN="PRINT^ACHSDSTE",ZTIO="",ZTDESC="CHS PAYMENTS",ACHSQIO=ION_";"_IOST_";"_IOM_";"_IOSL
 F ACHS="ACHSQIO","ACHSBDT","ACHSEDT","ACHSRPT","ACHSFY","FY" S ZTSAVE(ACHS)=""
 D ^%ZTLOAD
 G:'$D(ZTSK) DEV
K ;
 K ACHS,ACHSIO,ACHSQIO,ACHSBDT,ACHSEDT,ACHSRPT,ZTIO,ZTSK,ACHSFY,FY
 D ^%ZISC
 Q
 ;
PRINT ;EP - From TaskMan.
 ;
 D FC^ACHSUF
 I $D(ACHSERR),ACHSERR=1 K ZTSK G KILL
 S (ACHSTOTP,ACHSCNX,ACHSOPEN,ACHSTOTP("$"),ACHSCNX("$"),ACHSOPEN("$"))=0
 S ACHST1=$$C^XBFUNC("PAYMENTS",80),ACHST2=$$C^XBFUNC("For the period "_$$FMTE^XLFDT(ACHSBDT)_" through "_$$FMTE^XLFDT(ACHSEDT),80)
 D BRPT^ACHSFU
 D HDR
 S X3=0,ACHSBDT=ACHSBDT-1
A ; Main loop.
 F  S ACHSBDT=$O(^ACHSF(DUZ(2),"TB",ACHSBDT)) Q:(ACHSBDT'?1N.N)!(ACHSBDT>ACHSEDT)  D  Q:$D(QFLG)
 .S ACHSTYPE=0 F  S ACHSTYPE=$O(^ACHSF(DUZ(2),"TB",ACHSBDT,ACHSTYPE)) Q:ACHSTYPE=""  D  Q:$D(QFLG)
 ..I (ACHSTYPE'["P"),(ACHSTYPE'="ZA") Q
 ..S DA=0 F  S DA=$O(^ACHSF(DUZ(2),"TB",ACHSBDT,ACHSTYPE,DA)) Q:DA=""  D  Q:$D(QFLG)
 ...Q:'$D(^ACHSF(DUZ(2),"D",DA,0))
 ...Q:FY'=$P(^ACHSF(DUZ(2),"D",DA,0),U,14)
 ...S ACHSDOC1=$P(^ACHSF(DUZ(2),"D",DA,0),U),ACHSVPTR=$P(^(0),U,8),ACHSDOC2=$P(^(0),U,14),ACHSTOS=$P(^(0),U,4),ACHSBLNK=+$P(^(0),U,3)
 ...Q:(ACHSVPTR']"")!('$D(^AUTTVNDR(ACHSVPTR,0)))
 ...S ACHSVNDR=$P(^AUTTVNDR(ACHSVPTR,0),U)
 ...S ACHSDOC=ACHSDOC2_"-"_ACHSFC_"-"_ACHSDOC1
 ...S TXN=0 F  S TXN=$O(^ACHSF(DUZ(2),"TB",ACHSBDT,ACHSTYPE,DA,TXN)) Q:TXN=""  D  Q:$D(QFLG)
 ....S ACHSTXN=^ACHSF(DUZ(2),"D",DA,"T",TXN,0)
 ....S DFN=$P(ACHSTXN,U,3) I +DFN>0,$D(^DPT(DFN,0)) S ACHSNAME=$P(^(0),U)
 ....I '$D(ACHSNAME),ACHSBLNK S ACHSNAME=$S(ACHSBLNK=1:"* BLANKET",1:"* SPECIAL TRANS")
 ....S ACHSTXDT=$P(ACHSTXN,U,1)
 ....S ACHSTXTP=$P(ACHSTXN,U,2)
 ....S ACHSTXAM=$P(ACHSTXN,U,4)
 ....S ACHSPMTP=$P(ACHSTXN,U,5)
 ....S ACHSEOBR=$P(ACHSTXN,U,13)
 ....W $E(ACHSNAME,1,24),?25,$E(ACHSVNDR,1,26),?52,$E(ACHSTXDT,4,5)_"/"_$E(ACHSTXDT,6,7)_"/"_$E(ACHSTXDT,2,3)
 ....W ?66
 ....W ACHSTXTP
 ....S X=ACHSTXAM
 ....D COMMA^%DTC
 ....W ?80-$L(X),X
 ....W !,ACHSDOC,?25,$S(ACHSTOS=1:"HOSPITAL",ACHSTOS=2:"DENTAL",ACHSTOS=3:"OUTPATIENT",1:""),?52,$E(ACHSEOBR,4,5)_"/"_$E(ACHSEOBR,6,7)_"/"_$E(ACHSEOBR,2,3)
 ....S ACHSTOTP=ACHSTOTP+1,ACHSTOTP("$")=ACHSTOTP("$")+ACHSTXAM
 ....W !!
 ....I $Y>ACHSBM D CHECK Q:$D(QFLG)  D HDR
 ;
END ; Print totals, ask RTRN, write IOF.
 W !,$$REPEAT^XLFSTR("-",79),!
 S X2="2$",X3=14
 I ACHSTOTP S X=ACHSTOTP("$") D COMMA^%DTC W "TOTAL PAID DOCUMENTS:",$J(ACHSTOTP,11),?40,"TOTAL DOLLARS PAID:       ",X,!
 D CHECK Q:$D(QFLG)
 W @IOF
KILL ; Do ERPT, kill vars, quit.
 I $D(ZTQUEUED) K ACHSFC
 D ERPT^ACHS
 K ACHSDOC,ACHSDOC1,ACHSDOC2,ACHSBLNK,ACHSCNX,ACHSDOS,ACHSTYPE,ACHSVNDR,ACHSOPEN,ACHSNAME,ACHSSTS,ACHSTOS,ACHSTOTP,ACHSVPTR,ACHSTXN,ACHSTXDT,ACHSTXTP,ACHSTXAM,ACHSPMTP,ACHSEOBR
 K DA,DFN,X2,X3,TXN,FY
 Q
 ;
HDR ; Print report header.
 S ACHSPG=ACHSPG+1
 W @IOF,!!,ACHSUSR,?71,"Page",$J(ACHSPG,3),!,$$C^XBFUNC("***  CONTRACT HEALTH MANAGEMENT SYSTEM  ***",80),!!,ACHSLOC,!?25,"DOCUMENT STATUS REPORT"_" - "_"FY-"_ACHSFY
 W !,ACHSTIME,!,ACHST1,!,ACHST2,!!,"Patient Name",?25,"Provider of Service",?52,"Trans Date",?64,"Status",?73,"Amount",!,"Document Number",?25,"Type",?52,"EOBR Date"
 W !,$$REPEAT^XLFSTR("=",79),!
 Q
 ;
CHECK ;Check for Quit
 Q:$D(IO("S"))
 Q:$D(ZTQUEUED)
 K QFLG
 K DIR
 S DIR(0)="E"
 D ^DIR
 I ($D(DTOUT))!($D(DUOUT)) S QFLG=1
 Q
