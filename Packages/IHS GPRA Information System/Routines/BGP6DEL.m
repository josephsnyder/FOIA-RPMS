BGP6DEL ; IHS/CMI/LAB - IHS GPRA 16 REPORT DRIVER 26 Jun 2010 3:41 PM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
 W:$D(IOF) @IOF
 W !!,$$CTR("2016 Elder Care Clinical Performance Measure Report",80)
INTRO ;
 D XIT
 W !!,"This will produce an Elder Care Performance Measure Report for all"
 W !,"ELDER performance measures for a year period you specify.  You will"
 W !,"be asked to provide: 1) the reporting period, 2) the baseline period"
 W !,"to compare data to, 3) the community taxonomy to determine which"
 W !,"patients will be included, and 4) the patient population (i.e. AI/AN only,"
 W !,"non AI/AN, or both) to determine which patients will be included."
 W !!,"If you choose to run the report for all Elder Care measures, you "
 W !,"will be given the opportunity to export this data to the Area office."
 W !,"If you answer yes, this option will produce a report in export format for the"
 W !,"Area Office to use in Area aggregated data.  Depending on site specific"
 W !,"configuration, the export file will either be automatically transmitted "
 W !,"directly to the Area or the site will have to send the file manually.",!
 W !!,"There are "_$$CNT()_" measures in the Elder Care Performance Measure Report."
 K DIR S DIR(0)="E",DIR("A")="Press enter to continue" D ^DIR K DIR
 D XIT
 K DIR
 S DIR(0)="S^S:Selected set of Measures;A:All Measures",DIR("A")="Run the report on",DIR("B")="S" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D XIT Q
 S BGPZZ=Y
 I BGPZZ="S" D EN^BGP6DESI I '$D(BGPIND) W !!,"No measures selected" G INTRO
 I BGPZZ="A" S X=0 F  S X=$O(^BGPELIM(X)) Q:X'=+X  S BGPIND(X)=""
 D TAXCHK^BGP6XTEL
 S X=$$DEMOCHK^BGP6UTL2()
 I 'X W !!,"Exiting Report....." D PAUSE^BGP6DU,XIT Q
TP ;get time period
 S BGPRTYPE=5
 S (BGPBD,BGPED,BGPTP)=""
 S DIR(0)="S^1:January 1 - December 31;2:April 1 - March 31;3:July 1 - June 30;4:October 1 - September 30;5:User defined date range",DIR("A")="Enter the date range for your report" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D XIT Q
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
 W !!,"Enter the Baseline Year to compare data to.",!,"Use a 4 digit year, e.g. 2010"
 S DIR(0)="D^::EP"
 S DIR("A")="Enter Year (e.g. 2010)"
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
COMM ;
 W !!,"Specify the community taxonomy to determine which patients will be",!,"included in the report.  You should have created this taxonomy using QMAN.",!
 K BGPTAX
 S BGPTAXI=""
 D ^XBFMK
 S DIC("S")="I $P(^(0),U,15)=9999999.05",DIC="^ATXAX(",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Community Taxonomy: "
 S B=$P($G(^BGPSITE(DUZ(2),0)),U,5) I B S DIC("B")=$P(^ATXAX(B,0),U)
 D ^DIC
 I X="^" G INTRO
 I Y=-1 G INTRO
 S BGPTAXI=+Y
COM1 ;
 S X=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .Q
 I '$D(BGPTAX) W !!,"There are no communities in that taxonomy." G COMM
 S X=0,G=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S C=$P(^ATXAX(BGPTAXI,21,X,0),U)
 .I '$D(^AUTTCOM("B",C)) W !!,"***  Warning: Community ",C," is in the taxonomy but was not",!,"found in the standard community table." S G=1
 .Q
 I G D  I BGPQUIT D XIT Q
 .W !!,"These communities may have been renamed or there may be patients"
 .W !,"who have been reassigned from this community to a new community and this"
 .W !,"could reduce your patient population."
 .S BGPQUIT=0
 .S DIR(0)="Y",DIR("A")="Do you want to cancel the report and review the communities" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S BGPQUIT=1
 .I Y S BGPQUIT=1
 .Q
 K BGPQUIT
 ;
HOME ;
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 I BGPHOME="" W !!,"Home Location not found in Site File!!",!,"PHN Visits counts to Home will be calculated using clinic 11 only!!" H 2 G BEN
 W !,"Your HOME location is defined as: ",$P(^DIC(4,BGPHOME,0),U)," asufac:  ",$P(^AUTTLOC(BGPHOME,0),U,10)
 D LISTS
BEN ;
 S BGPBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01)",DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G COMM
 S BGPBEN=Y
EXPORT ;export to area or not?
 S BGPEXPT="" I BGPZZ'="A" G SUM
 I BGPZZ="A" S DIR(0)="Y",DIR("A")="Do you wish to export this data to Area" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G BEN
 S BGPEXPT=Y
SUM ;display summary of this report
 S BGPUF=$$GETDIR^BGP6UTL2()
 I BGPEXPT,BGPUF="" W:'$D(ZTQUEUED) !!,"Cannot continue.....can't find export directory name. EXCEL file",!,"not written." D PAUSE^BGP6DU,XIT Q
 W:$D(IOF) @IOF
 W !,$$CTR("SUMMARY OF IHS 2016 ELDER REPORT TO BE GENERATED")
 W !!,"The date ranges for this report are:"
 W !?5,"Report Period: ",?31,$$FMTE^XLFDT(BGPBD)," to ",?31,$$FMTE^XLFDT(BGPED)
 W !?5,"Previous Year Period: ",?31,$$FMTE^XLFDT(BGPPBD)," to ",?31,$$FMTE^XLFDT(BGPPED)
 W !?5,"Baseline Period: ",?31,$$FMTE^XLFDT(BGPBBD)," to ",?31,$$FMTE^XLFDT(BGPBED)
 W !!,"The COMMUNITY Taxonomy to be used is: ",$P(^ATXAX(BGPTAXI,0),U)
 D TEXT^BGP6DSL
 I $D(DIRUT) G BEN
 D PT^BGP6DESL
 I BGPROT="" G BEN
ZIS ;call to XBDBQUE
 D REPORT^BGP6EUTL
 I $G(BGPQUIT) D XIT Q
 I BGPRPT="" D XIT Q
 I BGPEXPT D
 .W !!,"A file will be created called BG161",$P(^AUTTLOC(DUZ(2),0),U,10)_".EL"_BGPRPT," and will reside",!,"in the ",BGPUF," directory.",!
 .W !,"Depending on your site configuration, this file may need to be manually",!,"sent to your Area Office.",!
 K IOP,%ZIS I BGPROT="D",BGPDELT="F" D NODEV,XIT Q
 K IOP,%ZIS W !! S %ZIS=$S(BGPDELT'="S":"PQM",1:"PM") D ^%ZIS
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPELDCM(" D ^DIK K DIK D XIT Q
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPELDPM(" D ^DIK K DIK D XIT Q
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPELDBM(" D ^DIK K DIK D XIT Q
 I $D(IO("Q")) G TSKMN
DRIVER ;
 D ^BGP6D1
 U IO
 D ^BGP6DELP
 D ^%ZISC
 I BGPEXPT D GS^BGP6EUTL
 D XIT
 Q
 ;
CNT() ;
 NEW X,C
 S X=0,C=0 F  S X=$O(^BGPELIM(X)) Q:X'=+X  S C=C+1
 Q C
NODEV ;
 S XBRP="",XBRC="NODEV1^BGP6DEL",XBRX="XIT^BGP6DEL",XBNS="BGP"
 D ^XBDBQUE
 ;D XIT
 Q
 ;
NODEV1 ;
 D ^BGP6D1
 D ^BGP6DELP
 D ^%ZISC
 I BGPEXPT D GS^BGP6EUTL
 D XIT
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BGP*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BGP6DEL",ZTDTH="",ZTDESC="ELDER 13 REPORT" D ^%ZTLOAD D XIT Q
 Q
 ;
XIT ;
 D ^%ZISC
 D EN^XBVK("BGP") I $D(ZTQUEUED) S ZTREQ="@"
 K DIRUT,DUOUT,DIR,DOD
 K DIADD,DLAYGO
 D KILL^AUPNPAT
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K BD,ED
 D KILL^AUPNPAT
 D ^XBFMK
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIR,DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR KILL DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
LISTS ;any lists with measures?
 K BGPLIST
 W !!,"PATIENT LISTS"
 I '$D(^XUSEC("BGPZ PATIENT LISTS",DUZ)) W !!,"You do not have the security access to print patient lists.",!,"Please see your supervisor or program manager if you feel you should have",!,"the BGPZ PATIENT LISTS security key.",! D  Q
 .K DIR S DIR(0)="E",DIR("A")="Press enter to continue" D ^DIR K DIR
 S DIR(0)="Y",DIR("A")="Do you want patient lists for any of the measures",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT)!(Y="") Q
 I Y=0 Q
 K BGPLIST
 D EN^BGP6DESL
 I '$D(BGPLIST) W !!,"No lists selected.",!
 I $D(BGPLIST) D RT^BGP6DESL I '$D(BGPLIST)!($D(BGPQUIT)) G LISTS ;get report type for each list
 Q
CHKY ;
 W !!,"The baseline year and the previous year time periods are the same.",!!
 S DIR(0)="Y",DIR("A")="Do you want to change the baseline year",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S Y="" Q
 Q
F ;fiscal year
 S (BGPPER,BGPVDT)=""
 W !!,"Enter the Calendar Year for the report END date.  Use a 4 digit",!,"year, e.g. 2016"
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
ENDDATE ;
 W !!,"When entering dates, if you do not enter a full 4 digit year (e.g. 2016)"
 W !,"will assume a year in the past, if you want to put in a future date,"
 W !,"remember to enter the full 4 digit year.  For example, if today is"
 W !,"January 4, 2010 and you type in 6/30/05 the system will assume the year"
 W !,"as 1905 since that is a date in the past.  You must type 6/30/2010 if you"
 W !,"want a date in the future."
 S (BGPPER,BGPVDT)=""
 W ! K DIR,X,Y S DIR(0)="D^::EP",DIR("A")="Enter End Date for the Report: (e.g. 11/30/2005)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) Q
 S (BGPPER,BGPVDT)=Y
 Q
