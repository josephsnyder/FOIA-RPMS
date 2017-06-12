APCM24H ; IHS/CMI/LAB - IHS MU ;
 ;;1.0;IHS MU PERFORMANCE REPORTS;**5,6**;MAR 26, 2012;Build 65
 ;
 ;
 W:$D(IOF) @IOF
 D XIT
INTRO ;
 S APCMRPTT=2  ;CONTROL VARIABLE FOR CAH REPORT
 S APCMRPTC=$O(^APCMMUCN("B","INTERIM STAGE 2 2014",0))
 W !!!
 S X=0 F  S X=$O(^APCMMUCN(APCMRPTC,15,X)) Q:X'=+X  W ^APCMMUCN(APCMRPTC,15,X,0),!
 S DIR(0)="Y",DIR("A")="Do you wish to continue to report",DIR("B")="YES" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D XIT Q
 I 'Y D XIT Q
 ;gather up measures for this report
 S X=0 F  S X=$O(^APCM24OB(X)) Q:X'=+X  I $P(^APCM24OB(X,0),U,2)="H" S APCMIND(X)=""
RT ;
 S APCMSUM="S"
TP ;
 S APCMRPTP=""
 W !! S X=0 F  S X=$O(^APCMMUCN(APCMRPTC,18,X)) Q:X'=+X  W ^APCMMUCN(APCMRPTC,18,X,0),!
YEAR ;
 S (APCMPER,APCMVDT,APCMBD,APCMED)=""
 W !!,"Enter the Fiscal Year for which report is to be run.  Use a 4 digit",!,"year, e.g. 2014."
 S DIR(0)="D^::EP"
 S DIR("A")="Enter the Fiscal year"
 S DIR("?")="This report is compiled for a period.  Enter a valid year."
 D ^DIR KILL DIR
 I $D(DIRUT) G INTRO
 I $D(DUOUT) S DIRUT=1 G INTRO
 S APCMVDT=Y
 I $E(Y,4,7)'="0000" W !!,"Please enter a year only!",! G YEAR
 S APCMPER=APCMVDT
 S APCMQ=0
 I APCMPER'="3150000"  D  G:APCMQ YEAR
 .W !!,"Select one of the following:",!
 .W !?10,"1  Quarter: October 1 - December 31"
 .W !?10,"2  Quarter: January 1 - March 31"
 .W !?10,"3  Quarter: April 1 - June 30"
 .W !?10,"4  Quarter: July 1 - September 30"
 .W !?10,"5  User Defined 90-Day Report"
 .W !?10,"6  User Defined Date Range"
 .S DIR(0)="N^1:6:",DIR("A")="Select Report Period" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S APCMQ=1
 .S APCMRPTP=Y
 .I APCMRPTP=1 S APCMBD=($E(APCMPER,1,3)-1)_"1001",APCMED=($E(APCMPER,1,3)-1)_"1231"
 .I APCMRPTP=2 S APCMBD=$E(APCMPER,1,3)_"0101",APCMED=$E(APCMPER,1,3)_"0331"
 .I APCMRPTP=3 S APCMBD=$E(APCMPER,1,3)_"0401",APCMED=$E(APCMPER,1,3)_"0630"
 .I APCMRPTP=4 S APCMBD=$E(APCMPER,1,3)_"0701",APCMED=$E(APCMPER,1,3)_"0930"
 .I APCMRPTP=5 D 5 Q
 .I APCMRPTP=6 D 6 Q
 I APCMPER="3150000"  D  G:APCMQ YEAR
 .W !!,"Select one of the following:",!
 .W !?10,"1  Year: October 1 - September 30"
 .W !?10,"2  User Defined 90-Day Report"
 .W !?10,"3  User Defined Date Range"
 .S DIR(0)="N^1:3:",DIR("A")="Select Report Period" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S APCMQ=1
 .S APCMRPTP=Y
 .I APCMRPTP=1 S APCMBD=($E(APCMPER,1,3)-1)_"1001",APCMED=($E(APCMPER,1,3)-1)_"1231" Q
 .I APCMRPTP=2 D 5 Q
 .I APCMRPTP=3 D 6 Q
 I APCMBD="" G TP
 I APCMED="" G TP
 ;
METHOD ;
 S APCMMETH=""
 S DIR(0)="S^E:All Emergency Department;O:Observation Method",DIR("A")="Run the report using which method",DIR("B")="E" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G TP
 S APCMMETH=Y
FAC ;
 S APCMFAC=""
 S DIC("A")="Select Hospital or CAH: ",DIC="^AUTTLOC(",DIC(0)="AEMQ",DIC("B")=$P(^DIC(4,DUZ(2),0),U) D ^DIC K DIC,DA
 G:Y<0 METHOD
 S APCMFAC=+Y
PRV ;
 S APCMQUIT=""
DEMO ;
 D DEMOCHK^APCLUTL(.APCMDEMO)
 I APCMDEMO=-1 G FAC
ATTEST ;get answers to attestation questions for each provider.
 K APCMATTE
 D ATTESTQ
 I APCMQ G DEMO
 ;
SUM ;display summary of this report
 W:$D(IOF) @IOF
 W !,$$CTR("SUMMARY OF STAGE 2 2014 and/or 2015 MEANINGFUL USE REPORT TO BE GENERATED")
 W !!,"The date ranges for this report are:"
 W !?5,"Report Period: ",?31,$$FMTE^XLFDT(APCMBD)," to ",?31,$$FMTE^XLFDT(APCMED)
 W !!,"Hospital: ",$P(^DIC(4,APCMFAC,0),U,1)
 D PT^APCM24SL
 I APCMROT="" G DEMO
ZIS ;call to XBDBQUE
 D REPORT^APCM24SL
 I $G(APCMQUIT) D XIT Q
 I APCMRPT="" D XIT Q
 K IOP,%ZIS I APCMROT="D",APCMDELT="F" D NODEV,XIT Q
 K IOP,%ZIS W !! S %ZIS=$S(APCMDELT'="S":"PQM",1:"PM") D ^%ZIS
 I POP W !,"Report Aborted" S DA=APCMRPT,DIK="^APCMM14C(" D ^DIK K DIK D XIT Q
 I $D(IO("Q")) G TSKMN
DRIVER ;
 D PROC^APCM24E1
 U IO
 D ^APCM24EP
 D ^%ZISC
 D XIT
 Q
 ;
NODEV ;
 S XBRP="",XBRC="NODEV1^APCM24H",XBRX="XIT^APCM24H",XBNS="APCM"
 D ^XBDBQUE
 Q
 ;
NODEV1 ;
 D PROC^APCM24E1
 D ^APCM24EP
 D ^%ZISC
 D XIT
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("APCM*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^APCM24H",ZTDTH="",ZTDESC="2014 MU STAGE 2 REPORT" D ^%ZTLOAD D XIT Q
 Q
 ;
XIT ;
 D ^%ZISC
 D EN^XBVK("APCM")
 I $D(ZTQUEUED) S ZTREQ="@"
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
 Q:$D(ZTQUEUED)!$D(IO("S"))
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
5 ;EP - TEXT
 W !!,"IMPORTANT NOTE:  This report may be run for any 90-day period.  For submission"
 W !,"to CMS, the report should not span Federal Fiscal Years."
 W !!,"Enter the start date of the 90-day report period.",!
 S (APCMPER,APCMVDT,APCMBD,APCMED)=""
 W ! K DIR,X,Y S DIR(0)="D^::EP",DIR("A")="Enter Start Date for the 90-Day Report (e.g. 01/01/2014)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) Q
 S (APCMPER,APCMVDT)=Y
 S APCMBD=Y,APCMED=$$FMADD^XLFDT(APCMBD,89)
 Q
6 ;EP - TEXT
 D 6^APCM24E
 Q
ATTESTQ ;EP
 K APCMATTE
 S APCMQ=0
 S Z=0 F  S Z=$O(^APCM24OB("ATT",Z)) Q:Z'=+Z  S A=0 F  S A=$O(^APCM24OB("ATT",Z,A)) Q:A'=+A  I $D(APCMIND(A)),$P(^APCM24OB(A,0),U,17) S X=$P(^APCM24OB(A,0),U,1) D
 .S Y=APCMFAC S APCMATTE(X,Y)="",APCMORA(Z,X)=""
 I '$D(APCMATTE) Q  ;no measures with attestation being run
 W !!,"Several Stage 2 Meaningful Use Performance Measures require an attestation of "
 W !,"Yes or No for the eligible hospital/CAH for which the report is being run.",!
 S DIR(0)="Y",DIR("A")="Do you wish to continue",DIR("B")="YES" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S APCMQ=1 Q
 I 'Y S APCMQ=1 Q
 S APCMQ=0
 S APCMO=0 F  S APCMO=$O(APCMORA(APCMO)) Q:APCMO=""!(APCMQ)  S APCMX="" F  S APCMX=$O(APCMORA(APCMO,APCMX)) Q:APCMX=""!(APCMQ)  D
 .;WRITE QUESTION 1 THEN QUESTION 2
 .I APCMX="S2.024.H" D IMMREG Q  ;SYNDROMIC
 .I APCMX="S2.022.H" D IMMREG Q  ;IMM REG
 .I APCMX="S2.023.H" D IMMREG Q  ;REPORTABLE LABS
 .F APCMQU=19,31 S APCMAP=$S(APCMQU=19:1,1:2) D ASK
 Q
ASK ;
 D
 .W !
 .S APCMY=$O(^APCM24OB("B",APCMX,0))
 .Q:'$O(^APCM24OB(APCMY,APCMQU,0))
 .S X=0 F  S X=$O(^APCM24OB(APCMY,APCMQU,X)) Q:X'=+X  W !,^APCM24OB(APCMY,APCMQU,X,0)
ATTIND .;
 .D
 ..W !
 ..I '$P(^APCM24OB(APCMY,0),U,13) S DIR(0)="Y",DIR("A")="Does "_$E($P(^DIC(4,APCMFAC,0),U,1),1,25)_$S($P($G(^APCM24OB(APCMY,11)),U,1)]"":$P(^APCM24OB(APCMY,11),U,1),1:" attest to this")
 ..S DIR("B")="YES"
 ..I $P(^APCM24OB(APCMY,0),U,1)="S2.025.H.1" S DIR("B")="NO"
 ..KILL DA D ^DIR KILL DIR
 ..I $P(^APCM24OB(APCMY,0),U,13) S DIR(0)="S^Y:YES;N:NO;X:No Registry Available" D
 ...S DIR("A")="Does "_$E($P(^DIC(4,APCMFAC,0),U,1),1,25)_$S($P($G(^APCM24OB(APCMY,11)),U,1)]"":$P(^APCM24OB(APCMY,11),U,1),1:" attest to this"),DIR("B")="YES" KILL DA D ^DIR KILL DIR
 ..I $D(DIRUT) S APCMQ=1 Q
 ..S $P(APCMATTE(APCMX,APCMFAC),U,APCMAP)=$S(Y="X":"N/A",Y="Y":"Yes",Y="N":"No",Y:"Yes",1:"No")
 Q
IMMREG ;EP - ask additional exclusion questions for IMM REG
 D IMMREGH^APCM24EA
 Q
