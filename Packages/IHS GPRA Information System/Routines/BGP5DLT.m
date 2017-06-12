BGP5DLT ; IHS/CMI/LAB - national patient list 20 Dec 2004 9:24 AM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
 ;
START ;EP
 I $G(BGPGUI) D  Q  ;cmi/maw added 10/30/2010
 . S BGPPAGE=1
 . S BGPSUBH="Lab Taxonomies for the: ",BGPSUBH1=BGPRPTN_" REPORT"
 I '$G(BGPGUI) W:$D(IOF) @IOF  ;cmi/maw added 1/14/08
 W !,$$CTR("Lab Taxonomy Report",80)
 W !,$$CTR($$RPTVER^BGP5BAN,80)
INTRO ;
 W !!,"Site populated Lab Taxonomy Report for the: ",!?5,BGPRPTN," Report",!
 S BGPSUBH="Lab Taxonomies for the: ",BGPSUBH1=BGPRPTN_" REPORT"
 S BGPCTRL=$O(^BGPCTRL("B",2015,0))
 S X=0 F  S X=$O(^BGPCTRL(BGPCTRL,43,X)) Q:X'=+X  W !,^BGPCTRL(BGPCTRL,43,X,0)
 K DIR S DIR(0)="Y",DIR("A")="Do you wish to continue",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D XIT Q
 I 'Y D XIT Q
ZIS ;call to XBDBQUE
 K ZTSK
 K IOP,%ZIS S %ZIS="PQM" D ^%ZIS I POP S IO=IO(0) Q
 G:$D(IO("Q")) QUE
NOQUE ;
 U IO
 D PRINT
 D ^%ZISC
 D XIT
 Q
QUE ;
 K ZTSAVE S ZTSAVE("BGP*")=""
 S ZTRTN="PRINT^BGP5DLT",ZTDESC="BGP 15 LAB TAX REPORT",ZTIO=ION,ZTDTH=""
 D ^%ZTLOAD
 D HOME^%ZIS
 D XIT
 Q
CMS ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="CMS",BGPRT(5)=""
 D START
 Q
ELDER ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="ELDER CARE",BGPRT(4)=""
 D START
 Q
HEDIS ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="HEDIS",BGPRT(3)=""
 D START
 Q
CRS ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="SELECTED MEASURES (LOCAL)",BGPRT(2)=""
 D START
 Q
ONM ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="OTHER NATIONAL MEASURES",BGPRT(7)=""
 D START
 Q
GPRA ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="NATIONAL GPRA/GPRAMA and GPRA/GPRAMA PERFORMANCE",BGPRT(1)=""
 D START
 Q
EO ;EP
 I '$G(BGPGUI) D XIT  ;cmi/maw 10/30/2009
 S BGPRPTN="EO QUALITY TRANSPARENCY MEASURES",BGPRT(8)=""
 D START
 Q
XIT ;
 D EN^XBVK("BGP") I $D(ZTQUEUED) S ZTREQ="@"
 D ^XBFMK
 Q
 ;
PRINT ;
 S (BGPPAGE,BGPQUIT)=0
 S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 D HEADER
 D N
 D EOP
 Q
N ;GATHER UP AND DISPLAY ALL NATIONAL GPRA
 S BGPC=0
 I $Y>(BGPIOSL-5) D HEADER Q:BGPQUIT
 S BGPTNAME="" F  S BGPTNAME=$O(^BGPTAXK("B",BGPTNAME)) Q:BGPTNAME=""!(BGPQUIT)  D
 .S BGPTIEN=0,BGPTIEN=$O(^BGPTAXK("B",BGPTNAME,BGPTIEN))
 .Q:'BGPTIEN  ;oops, error in xref
 .Q:'$D(^BGPTAXK(BGPTIEN,0))  ;oops, error in xref
 .Q:$P(^BGPTAXK(BGPTIEN,0),U,2)'="L"  ;only lab taxonomies in this report
 .S (G,X)=0 F  S X=$O(^BGPTAXK(BGPTIEN,12,"B",X)) Q:X'=+X!(G)  D
 ..I $D(BGPRT(X)) S G=1
 .Q:'G
 .;now eliminate those in BGPNO
 .S (G,X)=0 F  S X=$O(^BGPTAXK(BGPTIEN,12,"B",X)) Q:X'=+X!(G)  D
 ..I $D(BGPNO(X)) S G=1
 .Q:G
 .S BGPLTI=$O(^ATXLAB("B",BGPTNAME,0))
 .S BGPC=BGPC+1
 .I 'BGPLTI W !!?3,BGPC,".",?8,BGPTNAME,!?8,"WARNING - You are missing this taxonomy in the Lab Taxonomy file." Q
 .;SET UP STRING OF ALL LAB TEST NAMES
 .K BGPLABS S (BGPLC,BGPLC1)=0
 .S BGPX=0 F  S BGPX=$O(^ATXLAB(BGPLTI,21,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S X=$P($G(^LAB(60,BGPX,0)),U) D
 ...Q:X=""
 ...;I '(BGPLC#2) S BGPLC1=BGPLC1+1 S BGPLABS(BGPLC1)=X,BGPLC=BGPLC+1 Q
 ...S BGPLC1=BGPLC1+1,BGPLABS(BGPLC1)=X
 ...Q
 ..Q
 .I $Y>(BGPIOSL-5) D HEADER Q:BGPQUIT
 .W !!?3,BGPC,".",?8,BGPTNAME,!?8,"Members: "
 .I '$D(BGPLABS) W ?17,"NONE"
 .S BGPY=0 F  S BGPY=$O(BGPLABS(BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ..I $Y>(BGPIOSL-5) D HEADER Q:BGPQUIT
 ..W:BGPY>1 ! W ?17,BGPY,")  ",BGPLABS(BGPY)
 .Q
 Q
HEADER ;EP
 G:'BGPPAGE HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED),'$D(IO("S")) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
HEADER1 ;
 S BGPPAGE=BGPPAGE+1
 I BGPPAGE'=1 W:$D(IOF) @IOF
 I $G(BGPGUI),BGPPAGE>1 W "ZZZZZZZ",!  ;maw
 W $P(^VA(200,DUZ,0),U,2),?70,"Page ",BGPPAGE,!
 W $$CTR("*** Lab Taxonomy Report ***",80),!
 W $$CTR($$RPTVER^BGP5BAN,80),!
 S X="Date Report Run: "_$$FMTE^XLFDT(DT) W $$CTR(X,80),!
 S X="Site where Run: "_$P(^DIC(4,DUZ(2),0),U) W $$CTR(X,80),!
 S X="Report Generated by: "_$P(^VA(200,DUZ,0),U) W $$CTR(X,80),!
 ;
 W !!,$$CTR(BGPSUBH1_" TAXONOMIES",80),! ;,$$CTR(BGPSUBH1,80),!
 S X=$$REPEAT^XLFSTR("-",80) W !,X
 W !
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT["TRM")!$D(IO("S"))
 NEW DIR
 K DIR,DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 W ! S DIR("A")="End of report.  Press ENTER to continue",DIR(0)="E" D ^DIR KILL DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
