BGP2DGPU ; IHS/CMI/LAB - IHS AREA CLIN 05 REPORT DRIVER ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
 W:$D(IOF) @IOF
 W !,$$CTR("IHS GPRA & PART Performance Report for a User Selected Date Range",80)
INTRO ;
 D XIT
 W !!,"This will produce a GPRA & PART report for a year period you specify."
 W !!,"You will be asked to provide: 1) the reporting period, 2) the baseline"
 W !,"period to compare data to, 3) the Community taxonomy and 4) the patient"
 W !,"population (i.e. AI/AN only, non AI/AN, or both) to determine which"
 W !,"patients will be included."
 W !!,"You can choose to export this data to the Area office.  If you"
 W !,"answer yes at the export prompt, a report will be produced in export format"
 W !,"for the Area Office to use in Area aggregated data.  Depending on site specific"
 W !,"configuration, the export file will either be automatically transmitted "
 W !,"directly to the Area or the site will have to send the file manually.",!
 K DIR S DIR(0)="E",DIR("A")="Press enter to continue" D ^DIR K DIR
 S BGPYGPU=1
 D TAXCHK^BGP2XTCN
 S X=$$DEMOCHK^BGP2UTL2()
 I 'X W !!,"Exiting Report....." D PAUSE^BGP2CL,XIT Q
 D XIT
ST ;
 W !!
 S DIR(0)="Y",DIR("A")="Do you want to run the report on a Patient Panel",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D XIT Q
 I 'Y G TP
 ;get search template name
 W !!,"Please enter the search template name.  The template will contain a",!,"panel of patients defined by the user.",!
 S DIC("S")="I $P(^(0),U,4)=2!($P(^(0),U,4)=9000001)" S DIC="^DIBT(",DIC("A")="Enter SEARCH TEMPLATE name: ",DIC(0)="AEMQ" D ^DIC K DIC,DA,DR,DICR
 I Y=-1 G XIT
 S BGPSEAT=+Y,BGPBEN=3
TP ;get time period
 S BGPRTYPE=1,BGPYRPTH="",BGPYGPU=1
 ;
 S (BGPBD,BGPED,BGPTP)=""
 S DIR(0)="S^1:January 1 - December 31;2:April 1 - March 31;3:July 1 - June 30;4:October 1 - September 30;5:User-Defined Report Period",DIR("A")="Enter the date range for your report" KILL DA D ^DIR KILL DIR
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
COMM ;
 I $G(BGPSEAT) G MFIC
 W !!,"Specify the community taxonomy to determine which patients will be",!,"included in the report.  You should have created this taxonomy using QMAN.",!
 K BGPTAX
 S BGPTAXI=""
 D ^XBFMK
 S DIC("S")="I $P(^(0),U,15)=9999999.05",DIC="^ATXAX(",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Community Taxonomy: "
 S B=$P($G(^BGPSITE(DUZ(2),0)),U,5) I B S DIC("B")=$P(^ATXAX(B,0),U)
 D ^DIC
 I Y=-1 Q
 S BGPTAXI=+Y
COM1 S X=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .Q
 I '$D(BGPTAX) W !!,"There are no communities in that taxonomy." G COMM
 S X=0,G=0
 F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .S C=$P(^ATXAX(BGPTAXI,21,X,0),U)
 .I '$D(^AUTTCOM("B",C)) W !!,"***  Warning: Community ",C," is in the taxonomy but does not",!,"exist in the community table.  Please recreate your community taxonomy." S G=1
 .Q
 I G W !!,"The community taxonomy may not be accurate." D  I BGPQUIT D XIT Q
 .S BGPQUIT=0
 .S DIR(0)="Y",DIR("A")="Do you wish to continue running the report" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S BGPQUIT=1
 .I 'Y S BGPQUIT=1
 .Q
MFIC K BGPQUIT
 I $P($G(^BGPSITE(DUZ(2),0)),U,8)=1 D  I BGPMFITI="" G COMM
 .S BGPMFITI=""
 .W !!,"Specify the LOCATION taxonomy to determine which patient visits will be"
 .W !,"used to determine whether a patient is in the denominators for the report."
 .W !,"You should have created this taxonomy using QMAN.",!
 .K BGPMFIT
 .S BGPMFITI=""
 .D ^XBFMK
 .S DIC("S")="I $P(^(0),U,15)=9999999.06",DIC="^ATXAX(",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Location/Facility Taxonomy: "
 .S B=$P($G(^BGPSITE(DUZ(2),0)),U,9) I B S DIC("B")=$P(^ATXAX(B,0),U)
 .D ^DIC
 .I Y=-1 Q
 .S BGPMFITI=+Y
BEN ;
 I $G(BGPSEAT) G HOME
 S BGPBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01)"
 S DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G COMM
 S BGPBEN=Y,BGPBENF=Y(0)
HOME ;
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 I BGPHOME="" W !!,"Home Location not found in Site File!!",!,"PHN Visits counts to Home will be calculated using clinic 11 only!!" H 2 G AI
 W !,"Your HOME location is defined as: ",$P(^DIC(4,BGPHOME,0),U)," asufac:  ",$P(^AUTTLOC(BGPHOME,0),U,10)
AI ;gather all gpra measures
 S X=0 F  S X=$O(^BGPINDW("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 S BGPINDW="G"
EXPORT ;export to area or not?
 S BGPEXPT=""
 I $D(BGPSEAT) G EISSEX
 W ! S DIR(0)="Y",DIR("A")="Do you wish to export this data to Area" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G BEN
 S BGPEXPT=Y
EISSEX ;
 S BGPEXCEL=""
 S BGPUF=$$GETDIR^BGP2UTL2()
 ;I ^%ZOSF("OS")["PC"!(^%ZOSF("OS")["NT")!($P($G(^AUTTSITE(1,0)),U,21)=2) S BGPUF=$S($P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),1:"C:\EXPORT")
 ;I $P(^AUTTSITE(1,0),U,21)=1 S BGPUF="/usr/spool/uucppublic/"
 I BGPEXPT,BGPUF="" W:'$D(ZTQUEUED) !!,"Cannot continue.....can't find export directory name. EXCEL file",!,"not written." D PAUSE^BGP2CL,XIT Q
SUM ;display summary of this report
 W:$D(IOF) @IOF
 W !,$$CTR("SUMMARY OF IHS GPRA & PART PERFORMANCE REPORT TO BE GENERATED")
 W !,$$CTR($$RPTVER^BGP2BAN,80)
 W !!,"The date ranges for this report are:"
 W !?5,"Report Period: ",?31,$$FMTE^XLFDT(BGPBD)," to ",?31,$$FMTE^XLFDT(BGPED)
 W !?5,"Previous Year Period: ",?31,$$FMTE^XLFDT(BGPPBD)," to ",?31,$$FMTE^XLFDT(BGPPED)
 W !?5,"Baseline Period: ",?31,$$FMTE^XLFDT(BGPBBD)," to ",?31,$$FMTE^XLFDT(BGPBED)
 I '$G(BGPSEAT) W !!,"The COMMUNITY Taxonomy to be used is: ",$P(^ATXAX(BGPTAXI,0),U)
 I '$G(BGPSEAT) W !,"The Beneficiary Population is: ",BGPBENF
 I $G(BGPSEAT) W !!,"The Patient Population is: ",$P(^DIBT(BGPSEAT,0),U,1)
 I BGPHOME W !,"The HOME location is: ",$P(^DIC(4,BGPHOME,0),U)," ",$P(^AUTTLOC(BGPHOME,0),U,10)
 I 'BGPHOME W !,"No HOME Location selected."
 D PT^BGP2DSL
 I BGPROT="" G BEN
ZIS ;call to XBDBQUE
 D REPORT^BGP2UTL
 I $G(BGPQUIT) D XIT Q
 I BGPRPT="" D XIT Q
 I BGPEXPT D
 .W !!,"A file will be created called BG12",$P(^AUTTLOC(DUZ(2),0),U,10)_"."_BGPRPT," and will reside",!,"in the ",BGPUF," directory.",!
 .W !,"Depending on your site configuration, this file may need to be manually",!,"sent to your Area Office.",!
 I BGPEXCEL,BGPEXPT D
 .W !,"A file will be created called ",BGPFN,!,"and will reside in the ",BGPUF," directory. This file can be used in Excel.",!
 K IOP,%ZIS I BGPROT="D",BGPDELT="F" D NODEV,XIT Q
 K IOP,%ZIS W !! S %ZIS=$S(BGPDELT'="S":"PQM",1:"PM") D ^%ZIS
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPGPDCW(" D ^DIK K DIK D XIT Q
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPGPDPW(" D ^DIK K DIK D XIT Q
 I POP W !,"Report Aborted" S DA=BGPRPT,DIK="^BGPGPDBW(" D ^DIK K DIK D XIT Q
 I $D(IO("Q")) G TSKMN
DRIVER ;
 I '$D(BGPSEAT) D ^BGP2D1
 I $D(BGPSEAT) D ^BGP2D10
 U IO
 D ^BGP2DP
 D ^%ZISC
 I BGPEXPT D GS^BGP2UTL
 D XIT
 Q
 ;
NODEV ;
 S XBRP="",XBRC="NODEV1^BGP2DGPU",XBRX="XIT^BGP2DGPU",XBNS="BGP"
 D ^XBDBQUE
 Q
 ;
NODEV1 ;
 I '$D(BGPSEAT) D ^BGP2D1
 I $D(BGPSEAT) D ^BGP2D10
 D ^BGP2DP
 D ^%ZISC
 I BGPEXPT D GS^BGP2UTL
 D XIT
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BGP*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BGP2DGPU",ZTDTH="",ZTDESC="NATIONAL GPRA GPU REPORT 11" D ^%ZTLOAD D XIT Q
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
CHKY ;
 W !!,"The baseline year and the previous year time periods are the same.",!!
 S DIR(0)="Y",DIR("A")="Do you want to change the baseline year",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S Y="" Q
 Q
F ;calendar year
 S (BGPPER,BGPVDT)=""
 W !!,"Enter the Calendar Year for the report END date.  Use a 4 digit",!,"year, e.g. 2012"
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
ENDDATE ;EP
 W !!,"When entering dates, if you do not enter a full 4 digit year (e.g. 2012)"
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
