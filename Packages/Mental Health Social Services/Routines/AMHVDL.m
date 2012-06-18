AMHVDL ; IHS/CMI/LAB - LIST PT'S VISIT DATES ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
START ;
 NEW AMHX,AMHY,AMHR0,DFN,AUPNPAT,AUPNDOB,AUPNDOD,AUPNDAYS,AUPNSEX,AMHV,AMHBD,AMHED
 NEW D,R
 K AMHV
 W:$D(IOF) @IOF
 W $$CTR("List Patient's Visit Dates",80)
 D DBHUSR^AMHUTIL
PAT ;
 S DFN=""
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC,DA,DR,DLAYGO,DIADD
 I Y<0 W !,"No Patient Selected." Q
 S DFN=+Y
 S Y=DFN D ^AUPNPAT
 I DFN,'$$ALLOWP^AMHUTIL(DUZ,DFN) D NALLOWP^AMHUTIL D PAUSE^AMHLEA G PAT
 I $G(AUPNDOD)]"" W !!?10,"***** PATIENT'S DATE OF DEATH IS ",$$FMTE^XLFDT(AUPNDOD),!! H 2
WHICH ;
 S AMHQUIT=0
 S AMHW=""
 S DIR(0)="S^L:Patient's Last Visit;N:Patient's Last N Visits;D:Visits in a Date Range;A:All of this Patient's Visits;P:Visits to one Program"
 S DIR("A")="Browse which subset of visits for "_$P(^DPT(DFN,0),U),DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 S AMHW=Y
 I AMHW="S" S AMHW="SAN"
 D @AMHW Q:AMHQUIT
 ;
BROWSE ;
 K ^TMP("AMHVDL",$J)
 D GATHER
 D EN^VALM("AMH LIST VISITS")
 K ^TMP("AMHVDL",$J)
 D CLEAR^VALM1
 D FULL^VALM1
END ;
 K AMHP,AMHQUIT,AMHW
 Q
 ;
EP(DFN) ;EP to list for one patient
 NEW AMHX,AMHY,AMHR0,AUPNPAT,AUPNDOB,AUPNDOD,AUPNDAYS,AUPNSEX,AMHV,AMHBD,AMHED
 D FULL^VALM1
 W:$D(IOF) @IOF
 D DBHUSR^AMHUTIL
 NEW D,R
 K AMHV
 I '$G(DFN) D PAT Q
 ;W:$D(IOF) @IOF
 W $$CTR("List Patient's Visit Dates",80)
 S Y=DFN D ^AUPNPAT
 D WHICH
 Q
L ;get patients last visit
 ;AMHV array
 ;I '$D(^AMHREC("AE",DFN)) W !!,"No visits on file for this patient.",! S AMHQUIT=1 Q
 ;S D=$O(^AMHREC("AE",DFN,"")),R=$O(^AMHREC("AE",DFN,D,""))
 S (C,D)=0 F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D!(C>0)  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V!(C>0)  I $$ALLOWVI^AMHUTIL(DUZ,V) S C=C+1,AMHV(D,V)=""
 ;I R S AMHV(D,R)=""
 Q
SAN ;san only
 S D=0,V=0
 F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V  I $P(^AMHREC(V,0),U,33)="S",$$ALLOWVI^AMHUTIL(DUZ,V) S AMHV(D,V)=""
 Q
N ;patients last N visits
 S N=""
 S DIR(0)="N^1:99:0",DIR("A")="How many visits should be displayed",DIR("B")="5" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S AMHQUIT=1 Q
 S N=Y
  S (C,D)=0 F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D!(C=N)  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V!(C=N)  I $$ALLOWVI^AMHUTIL(DUZ,V) S C=C+1,AMHV(D,V)=""
 Q
P ;on program
 S N=""
 S DIR(0)="9002011,.02",DIR("A")="Visits to Which Program",DIR("B")="M" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S AMHQUIT=1 Q
 S N=Y
 S D=0 F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V  I $P(^AMHREC(V,0),U,2)=N,$$ALLOWVI^AMHUTIL(DUZ,V) S AMHV(D,V)=""
 Q
A ;all visits
 S D=0,V=0
 F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V  I $$ALLOWVI^AMHUTIL(DUZ,V) S AMHV(D,V)=""
 Q
D ;date range
 K AMHED,AMHBD
 K DIR W ! S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Date of Visit"
 D ^DIR S:Y<1 AMHQUIT=1 Q:Y<1  S AMHBD=Y
 K DIR S DIR(0)="DO^::EXP",DIR("A")="Enter Ending Date of Visit"
 D ^DIR S:Y<1 AMHQUIT=1 Q:Y<1  S AMHED=Y
 ;
 I AMHED<AMHBD D  G D
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 S E=9999999-AMHBD,D=9999999-AMHED-1_".99" F  S D=$O(^AMHREC("AE",DFN,D)) Q:D'=+D!($P(D,".")>E)  S V=0 F  S V=$O(^AMHREC("AE",DFN,D,V)) Q:V'=+V  I $$ALLOWVI^AMHUTIL(DUZ,V) S AMHV(D,V)=""
 Q
 ;
PRINT ;EP - called from xbdbque
 S AMHQUIT=0
 ;gather up all visit records in ^TMP("AMHVDL",$J
 D GATHER
 D PRINT1
 K ^TMP("AMHVDL",$J)
 Q
 ;
PRINT1 ;
 W:$D(IOF) @IOF
 NEW AMHX
 S AMHX=0 F  S AMHX=$O(^TMP("AMHVDL",$J,AMHX)) Q:AMHX'=+AMHX!(AMHQUIT)  D
 .I $Y>(IOSL-5) D FF Q:AMHQUIT
 .W !,^TMP("AMHVDL",$J,AMHX,0)
 .Q
 Q
GATHER ;
 K ^TMP("AMHVDL",$J)
 NEW AMHX,AMHI,AMHJ,AMHY,AMHZ,AMHC,AMHD
 S AMHC=0
 S X="Patient Name: "_$P(^DPT(DFN,0),U),$E(X,45)="DOB: "_$$FMTE^XLFDT($P(^DPT(DFN,0),U,3)) D S(X)
 S X="HRN: "_$$HRN^AUPNPAT(DFN,DUZ(2)) D S(X)
 S X=$TR($J("",80)," ","*") D S(X)
 S X="Date",$E(X,25)="Provider",$E(X,52)="DX",$E(X,60)="NARRATIVE" D S(X)
 S AMHV=0,AMHD=0
 F  S AMHD=$O(AMHV(AMHD)) Q:AMHD'=+AMHD  S AMHV=0 F  S AMHV=$O(AMHV(AMHD,AMHV)) Q:AMHV'=+AMHV  D
 .S AMHR0=^AMHREC(AMHV,0)
 .S X=$$FMTE^XLFDT($P(AMHR0,U)),$E(X,25)=$E($$PPNAME^AMHUTIL(AMHV),1,25)
 .K Y,D,N S Y=$O(^AMHRPRO("AD",AMHV,0)) I Y S D=$$VAL^XBDIQ1(9002011.01,Y,.01),N=$E($$VAL^XBDIQ1(9002011.01,Y,.04),1,20)
 .S $E(X,52)=$G(D),$E(X,60)=$G(N)
 .D S(X)
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
FF ;EP
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S AMHQUIT=1 Q
 I $E(IOST)'="C" Q:'$P(AMHR0,U,8)  W !!,$TR($J(" ",79)," ","*"),!,$P(^DPT($P(AMHR0,U,8),0),U),?32,"HRN: " D
 .S H=$P($G(^AUPNPAT($P(AMHR0,U,8),41,DUZ(2),0)),U,2)
 .W H,?46,"DOB: ",$$FMTE^XLFDT($P(^DPT($P(AMHR0,U,8),0),U,3),"2D"),?59,"SSN: ",$$SSN^AMHUTIL($P(AMHR0,U,8)),!
 W:$D(IOF) @IOF
 Q
HDR ; -- header code
 Q
 ;
S(Y,F,C,T) ;EP - set up array
 I '$G(F) S F=0
 I '$G(T) S T=0
 ;blank lines
 F F=1:1:F S X="" D S1
 S X=Y
 I $G(C) S L=$L(Y),T=(80-L)/2 D  D S1 Q
 .F %=1:1:(T-1) S X=" "_X
 F %=1:1:T S X=" "_Y
 D S1
 Q
S1 ;
 S AMHC=AMHC+1
 S ^TMP("AMHVDL",$J,AMHC,0)=X
 Q
INIT ; -- init variables and list array
 S VALMCNT=$O(^TMP("AMHVDL",$J,""),-1)
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
