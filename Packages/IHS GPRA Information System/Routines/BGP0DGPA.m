BGP0DGPA ; IHS/CMI/LAB - ihs area GPRA 02 Sep 2004 1:11 PM ;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
 ;
 W:$D(IOF) @IOF
 S BGPA=$E($P(^AUTTLOC(DUZ(2),0),U,10),1,2),BGPA=$O(^AUTTAREA("C",BGPA,0)) S BGPA=$S(BGPA:$P(^AUTTAREA(BGPA,0),U),1:"UNKNOWN AREA")
 W !!,$$CTR(BGPA_" Area Aggregate GPRA & PART Performance Report "),$$CTR("with user defined date range",80)
INTRO ;
 D EXIT
TP ;
 S BGPAREAA=1
 S BGPRTYPE=1,BGP0RPTH="",BGP0GPU=1
 ;
 S (BGPBD,BGPED,BGPTP)=""
 S DIR(0)="S^1:January 1 - December 31;2:April 1 - March 31;3:July 1 - June 30;4:October 1 - September 30;5:User-Defined Report Period",DIR("A")="Enter the date range for your report" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EXIT Q
 S BGPQTR=Y
 I BGPQTR=5 D ENDDATE
 I BGPQTR'=5 D F
 I BGPPER="" W !,"Year not entered.",! G TP
 I BGPQTR=1 S BGPBD=$E(BGPPER,1,3)_"0101",BGPED=$E(BGPPER,1,3)_"1231"
 I BGPQTR=2 S BGPBD=($E(BGPPER,1,3)-1)_"0401",BGPED=$E(BGPPER,1,3)_"0331"
 I BGPQTR=3 S BGPBD=($E(BGPPER,1,3)-1)_"0701",BGPED=$E(BGPPER,1,3)_"0630"
 I BGPQTR=4 S BGPBD=($E(BGPPER,1,3)-1)_"1001",BGPED=$E(BGPPER,1,3)_"0930"
 I BGPQTR=5 S BGPBD=$$FMADD^XLFDT(BGPPER,-364),BGPED=BGPPER,BGPPER=$E(BGPED,1,3)_"0000"
 I BGPED>DT D  G:BGPDO=1 TP
 .W !!,"You have selected Current Report period ",$$FMTE^XLFDT(BGPBD)," through ",$$FMTE^XLFDT(BGPED),"."
 .W !,"The end date of this report is in the future; your data will not be",!,"complete.",!
 .K DIR S BGPDO=0 S DIR(0)="Y",DIR("A")="Do you want to change your Current Report Dates",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S BGPDO=1 Q
 .I Y S BGPDO=1 Q
 .Q
BY ;get baseline year
 S BGPVDT=""
 W !!,"Enter the Baseline Year to compare data to.",!,"Use a 4 digit year, e.g. 1999, 2000"
 S DIR(0)="D^::EP"
 S DIR("A")="Enter Year (e.g. 2000)"
 D ^DIR KILL DIR
 I $D(DIRUT) G TP
 I $D(DUOUT) S DIRUT=1 G TP
 S BGPVDT=Y
 I $E(Y,4,7)'="0000" W !!,"Please enter a year only!",! G BY
 S X=$E(BGPPER,1,3)-$E(BGPVDT,1,3)
 S X=X_"0000"
 S BGPBBD=BGPBD-X,BGPBBD=$E(BGPBBD,1,3)_$E(BGPBD,4,7)
 S BGPBED=BGPED-X,BGPBED=$E(BGPBED,1,3)_$E(BGPED,4,7)
 S BGPPBD=($E(BGPBD,1,3)-1)_$E(BGPBD,4,7)
 S BGPPED=($E(BGPED,1,3)-1)_$E(BGPED,4,7)
 W !!,"The date ranges for this report are:"
 W !?5,"Report Period: ",?31,$$FMTE^XLFDT(BGPBD)," to ",?31,$$FMTE^XLFDT(BGPED)
 W !?5,"Previous Year Period: ",?31,$$FMTE^XLFDT(BGPPBD)," to ",?31,$$FMTE^XLFDT(BGPPED)
 W !?5,"Baseline Period: ",?31,$$FMTE^XLFDT(BGPBBD)," to ",?31,$$FMTE^XLFDT(BGPBED)
 I BGPPBD=BGPBBD,BGPPED=BGPBED K Y D CHKY I Y K BGPBBD,BGPBED,BGPPBD,BGPPED G BY
BEN ;
 S BGPBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01)",DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G BY
 S BGPBEN=Y,BGPBENF=Y(0)
HOME ;
AI ;gather all gpra measures
 S X=0 F  S X=$O(^BGPINDT("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDT="G"
ASU ;
 S BGPSUCNT=0
 S BGPRPTT=""
 W !!!,"You will now be able to select which sites to use in the",!,"area aggregate report.",!
 S DIR(0)="E",DIR("A")="Press Enter to Continue" KILL DA D ^DIR KILL DIR
 K BGPSUL
 D EN^BGP0ASL
 I '$D(BGPSUL) W !!,"No sites selected" D EXIT Q
 S X=0,C=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  S C=C+1
 W !!,"A total of ",C," facilities have been selected.",!!
 I C=1 S BGPRPTT="F",BGPSUCNT=1,Y=$O(BGPSUL(0)),X=$P(^BGPGPDCT(Y,0),U,9),X=$O(^AUTTLOC("C",X,0)) I X S BGPSUNM=$P(^DIC(4,X,0),U)
 I C>1 S BGPRPTT="A"
ZIS ;call to XBDBQUE
EISSEX ;
 S BGPEXCEL=""
 D ^XBFMK
 K DIC,DIADD,DLAYGO,DR,DA,DD,X,Y,DINUM
GI ;gather all gpra measures
 S X=0 F  S X=$O(^BGPINDT("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDT="G"
 D PT^BGP0DSL
 I BGPROT="" G ASU
 ;
 K IOP,%ZIS I BGPROT="D",BGPDELT="F" D NODEV,EXIT Q
 K IOP,%ZIS W !! S %ZIS=$S(BGPDELT'="S":"PQM",1:"PM") D ^%ZIS
 I $D(IO("Q")) G TSKMN
DRIVER ;
 U IO
 D PRINT^BGP0PARP
 D ^%ZISC
 D EXIT
 Q
 ;
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BGP*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BGP0DGPA",ZTDTH="",ZTDESC="GPRA REPORT" D ^%ZTLOAD D EXIT Q
 Q
 ;
 K IOP,%ZIS I BGPROT="D",BGPDELT="F" D NODEV,EXIT Q
 K IOP,%ZIS W !! S %ZIS=$S(BGPDELT'="S":"PQM",1:"PM") D ^%ZIS
 I POP D EXIT Q
 I $D(IO("Q")) G TSKMN
 ;
EXIT ;
 D ^%ZISC
 D EN^XBVK("BGP") I $D(ZTQUEUED) S ZTREQ="@"
 D KILL^AUPNPAT
 D ^XBFMK
 Q
NODEV ;
 S XBRP="",XBRC="NODEV1^BGP0DGPA",XBRX="EXIT^BGP0DGPA",XBNS="BGP"
 D ^XBDBQUE
 Q
 ;
NODEV1 ;
 D PRINT^BGP0PARP
 D ^%ZISC
 D EXIT
 Q
FAC(S) ;
 NEW N S N=$O(^AUTTLOC("C",S,0))
 I N="" Q N
 Q $P(^DIC(4,N,0),U)
SU(S) ;
 NEW N S N=$O(^AUTTSU("C",S,0))
 I N="" Q N
 Q $P(^AUTTSU(N,0),U)
 ;
CHKY ;
 W !!,"The baseline year and the previous year time periods are the same.",!!
 S DIR(0)="Y",DIR("A")="Do you want to change the baseline year",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S Y="" Q
 Q
F ;calendar year
 S (BGPPER,BGPVDT)=""
 W !!,"Enter the Calendar Year for the report END date.  Use a 4 digit",!,"year, e.g. 2010"
 S DIR(0)="D^::EP"
 S DIR("A")="Enter Year"
 S DIR("?")="This report is compiled for a period.  Enter a valid date."
 D ^DIR KILL DIR
 I $D(DIRUT) Q
 I $D(DUOUT) S DIRUT=1 Q
 S BGPVDT=Y
 I $E(Y,4,7)'="0000" W !!,"Please enter a year only!",! G F
 S BGPPER=BGPVDT
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
ENDDATE ;
 W !!,"When entering dates, if you do not enter a full 4 digit year (e.g. 2010)"
 W !,"will assume a year in the past, if you want to put in a future date,"
 W !,"remember to enter the full 4 digit year.  For example, if today is"
 W !,"January 4, 2009 and you type in 6/30/05 the system will assume the year"
 W !,"as 1905 since that is a date in the past.  You must type 6/30/2009 if you"
 W !,"want a date in the future."
 S (BGPPER,BGPVDT)=""
 W ! K DIR,X,Y S DIR(0)="D^::EP",DIR("A")="Enter End Date for the Report: (e.g. 11/30/2005)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) Q
 S (BGPPER,BGPVDT)=Y
 Q
DISP ;
 W:BGPC=1 !,"#",?4,"BEG DATE",?13,"END DATE",?22,"BASE BEG",?32,"BASE END",?42,"SU",?59,"FACILITY",!,"-",?4,"--------",?13,"--------",?22,"---------",?32,"-------",?42,"--",?59,"--------"
 W !,BGPC,?4,$$DATE^BGP0UTL($P(BGP0,U,1)),?13,$$DATE^BGP0UTL($P(BGP0,U,2)),?22,$$DATE^BGP0UTL($P(BGP0,U,5)),?32,$$DATE^BGP0UTL($P(BGP0,U,6)),?42,$E($$SU($P(BGP0,U,11)),1,15),?59,$E($$FAC($P(BGP0,U,9)),1,20)
 Q
