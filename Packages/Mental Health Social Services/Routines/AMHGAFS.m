AMHGAFS ; IHS/CMI/MAW - GAF - MULTIPLE PATS 03 Jun 2009 11:28 AM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**1**;JUN 18, 2010;Build 8
 ;
 ;
START ;
 W:$D(IOF) @IOF
 D EN^XBVK("AMH")
 W !,$$CTR^AMHLEIN("GAF OUTCOME MEASURE - GAF Scores for Multiple Patients",80),!!
 W !,"This option is used to list GAF Scores for multiple patients sorted"
 W !,"by patient.",!
WHICH ;
 W !!,"Please note:  Only visits with GAF scores recorded will display on this",!,"list.",!
 D DBHUSR^AMHUTIL
DATES ;
 K AMHED,AMHBD
 K DIR W ! S DIR(0)="D^::EXP",DIR("A")="Enter Beginning Date of Visit"
 D ^DIR
 G:$D(DIRUT) XIT
 S AMHBD=Y
 K DIR S DIR(0)="D^::EXP",DIR("A")="Enter Ending Date of Visit"
 D ^DIR
 G:$D(DIRUT) DATES
 S AMHED=Y
 ;
 I AMHED<AMHBD D  G DATES
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 S AMHSD=$$FMADD^XLFDT(AMHBD,-1)_".9999"
PROG ;
 S AMHPROG=""
 S DIR(0)="S^O:ONE Program;A:ALL Programs",DIR("A")="List visits/GAF Scores for which PROGRAM",DIR("B")="A" KILL DA D ^DIR KILL DIR
 G:$D(DIRUT) DATES
 I Y="A" G PROV
 S DIR(0)="9002011,.02",DIR("A")="Which PROGRAM" KILL DA D ^DIR KILL DIR
 G:$D(DIRUT) PROG
 I X="" G PROG
 S AMHPROG=Y
PROV ;
 S AMHPROV=""
 S DIR(0)="S^A:All Providers;O:One Provider",DIR("A")="Include visits to",DIR("B")="A" K DA D ^DIR K DIR
 G:$D(DIRUT) XIT
 I Y="A" G DEMO
 S DIC="^VA(200,",DIC(0)="AEMQ",DIC("A")="Which PROVIDER: " D ^DIC
 K DIC,DA
 I Y=-1 G PROV
 S AMHPROV=+Y
DEMO ;
 D DEMOCHK^AMHUTIL1(.AMHDEMO)
 I AMHDEMO=-1 G PROV
ZIS ;
 S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to ",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) G XIT
 I $G(Y)="B" D BROWSE,XIT Q
 S XBRC="PROC^AMHGAFS",XBRP="PRINT^AMHGAFS",XBNS="AMH",XBRX="XIT^AMHGAFS"
 D ^XBDBQUE
XIT ;
 K ZTSK,Y,AMHBD,AMHED,IO("Q")
 D EN^XBVK("AMH")
 Q
 ;
BROWSE ;
 S XBRP="VIEWR^XBLM(""PRINT^AMHGAFS"")"
 S XBNS="AMH",XBRC="PROC^AMHGAFS",XBRX="XIT^AMHRP4",XBIOP=0 D ^XBDBQUE
 Q
 ;
PROC ;
 ;loop through visits and check GAF score
 D XTMP^AMHUTIL("AMHGAFS","BH - GAF SCORES MULT PATS")
 S (AMHBT,AMHBTH)=$H,AMHJOB=$J
 F  S AMHSD=$O(^AMHREC("B",AMHSD)) Q:AMHSD=""!($P(AMHSD,".")>$P(AMHED,"."))  D
 .S AMHVIEN=0 F  S AMHVIEN=$O(^AMHREC("B",AMHSD,AMHVIEN)) Q:AMHVIEN'=+AMHVIEN  D
 ..S AMHV0=$G(^AMHREC(AMHVIEN,0))
 ..Q:AMHV0=""
 ..S DFN=$P(AMHV0,U,8)
 ..Q:DFN=""
 ..I $P(AMHV0,U,14)="" Q  ;no GAF score
 ..Q:'$$ALLOWVI^AMHUTIL(DUZ,AMHVIEN)
 ..Q:$$DEMO^AMHUTIL1(DFN,$G(AMHDEMO))
 ..I AMHPROG]"",$P(AMHV0,U,2)'=AMHPROG Q  ;not correct program visit
 ..S AMHVPP=$$PPINT^AMHUTIL(AMHVIEN)
 ..I AMHVPP="",AMHPROV Q  ;PRIM PROV blank and want certain PRIM PROVS
 ..I AMHPROV,AMHVPP'=AMHPROV Q  ;not a PRIM PROV we want
 ..S ^XTMP("AMHGAFS",AMHJOB,AMHBTH,"PATS",$P(^DPT(DFN,0),U,1),DFN,(9999999-$P($P(^AMHREC(AMHVIEN,0),U),".")),AMHVIEN)=""
 ..Q
 .Q
 Q
PRINT ;EP - called from xbdbque
 S AMHPG=0 K AMHQ D HEADER
 I '$D(^XTMP("AMHGAFS",AMHJOB,AMHBTH)) W !!,"NO PATIENTS/GAF SCORES TO REPORT" G DONE
 S AMHNAME="" F  S AMHNAME=$O(^XTMP("AMHGAFS",AMHJOB,AMHBTH,"PATS",AMHNAME)) Q:AMHNAME=""!($D(AMHQ))  D
 .S DFN=0 F  S DFN=$O(^XTMP("AMHGAFS",AMHJOB,AMHBTH,"PATS",AMHNAME,DFN)) Q:DFN'=+DFN!($D(AMHQ))  D
 ..W ! S AMHDATE="" F  S AMHDATE=$O(^XTMP("AMHGAFS",AMHJOB,AMHBTH,"PATS",AMHNAME,DFN,AMHDATE)) Q:AMHDATE=""!($D(AMHQ))  D
 ...S AMHV=0 F  S AMHV=$O(^XTMP("AMHGAFS",AMHJOB,AMHBTH,"PATS",AMHNAME,DFN,AMHDATE,AMHV)) Q:AMHV'=+AMHV!($D(AMHQ))  D PRINT1
 ...Q
 ..Q
 .Q
DONE ;
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of report.  PRESS RETURN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 K ^XTMP("AMHGAFS",AMHJOB,AMHBTH),AMHJOB,AMHBTH
 Q
 ;
PRINT1 ;
 I $Y>(IOSL-3) D HEADER Q:$D(AMHQ)
 W !,$E(AMHNAME,1,15),?17,$$HRN^AUPNPAT(DFN,DUZ(2)),?24,$$D^AMHLEIN((9999999-AMHDATE))
 W ?33,$P(^AMHREC(AMHV,0),U,14),?37,$E($P($G(^AMHREC(AMHV,11)),U,15),1,7)
 W ?45,$E($$PPNAME^AMHUTIL(AMHV),1,9),?55,$P(^AMHREC(AMHV,0),U,2)
 S X=$O(^AMHRPRO("AD",AMHV,0))
 I X W ?58,$$VAL^XBDIQ1(9002011.01,X,.01)_"-"_$E($$VAL^XBDIQ1(9002011.01,X,.04),1,15)
 Q
 ;----------
HEADER ;EP
 G:'AMHPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S AMHQ="" Q
HEADER1 ;
 W:$D(IOF) @IOF S AMHPG=AMHPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",AMHPG,!
 W !,$$CTR^AMHLEIN("GAF SCORES FOR MULTIPLE PATIENTS",80),!
 S X="Visit Dates: "_$$FMTE^XLFDT(AMHBD)_" to "_$$FMTE^XLFDT(AMHED) W $$CTR^AMHLEIN(X,80),!
 I AMHPROG]"" S X="Program: "_$$EXTSET^XBFUNC(9002011,.02,AMHPROG) W $$CTR^AMHLEIN(X,80),!
 I AMHPROG="" S X="Program: ALL" W $$CTR^AMHLEIN(X,80),!
 I AMHPROV="" S X="Provider: ALL" W $$CTR^AMHLEIN(X,80),!
 I AMHPROV S X="Provider: "_$P(^VA(200,AMHPROV,0),U) W $$CTR^AMHLEIN(X,80),!
 W !,"PATIENT NAME",?17,"HRN",?24,"Date",?33,"GAF",?37,"TYPE",?45,"Provider",?55,"PG",?58,"Diagnosis/POV"
 W !,$TR($J("",80)," ","-")
 Q