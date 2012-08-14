BGP2DPEL ; IHS/CMI/LAB - IHS gpra print ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 Q:$G(BGPAREAA)
 Q:'$D(BGPLIST)
 S BGPQUIT="",BGPGPG=0
 S BGPL=0 F  S BGPL=$O(BGPLIST(BGPL)) Q:BGPL'=+BGPL!(BGPQUIT)  D
 .S BGPCOUNT=0,BGPPCNT=0
 .D HEADER Q:BGPQUIT
 .S BGPCNT=$G(BGPLIST(BGPL))
 .I 'BGPCNT S BGPCNT=0 G GO
 .I BGPCNT<100 S BGPCNT=1 G GO
 .I BGPLIST'="R" S BGPCNT=1 G GO
 .S BGPCNT=10
GO .;
 .W !,$P(^BGPPEIW(BGPL,0),U,2),!
 .W !,"Denominator(s):"
 .S BGPNODE=61
 .S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPL,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPPEIW(BGPL,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...D WP
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Numerator(s):"
 .S BGPNODE=62
 .S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPL,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPPEIW(BGPL,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...D WP
 .S BGPNODE=11
 .W ! S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPL,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPPEIW(BGPL,BGPNODE,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPPEIW(BGPL,71,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPPEIW(BGPL,71,BGPX,0)
 .D H1
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM)) Q:BGPCOM=""!(BGPQUIT)  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""!(BGPQUIT)  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""!(BGPQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN!(BGPQUIT)  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Total # of Patients on list: ",+$G(BGPPCNT)
 Q
WP ;
 K ^UTILITY($J,"W")
 S BGPZ=0,BGPLCNT=0
 S DIWL=1,DIWR=80,DIWF="",BGPZ=0 F  S BGPZ=$O(^BGPPEIW(BGPL,BGPNODE,BGPY,11,BGPZ)) Q:BGPZ'=+BGPZ  D
 .S BGPLCNT=BGPLCNT+1
 .S X=^BGPPEIW(BGPL,BGPNODE,BGPY,11,BGPZ,0) S:BGPLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I $Y>(BGPIOSL-3) D HEADER^BGP2DPH Q:BGPQUIT
 .W !,^UTILITY($J,"W",DIWL,Z,0)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT  D
 .S X=0 F  S X=$O(^BGPPEIW(BGPL,72,X)) Q:X'=+X  W !,^BGPPEIW(BGPL,72,X,0)
 .D H1
 S BGPPCNT=BGPPCNT+1
 W !,$E($P(^DPT(DFN,0),U),1,22),?24,$$HRN^AUPNPAT(DFN,DUZ(2)),?31,$E(BGPCOM,1,14),?46,BGPSEX,?49,BGPAGE
 W ?53,"UP" ;$P(^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1)
 W ?65,^XTMP("BGP2PE",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)
 Q
 ;
HEADER ;EP
 G:'BGPGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S BGPGPG=BGPGPG+1
 I $G(BGPGUI) W "ZZZZZZZ",!  ;maw
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BGPGPG,!
 W !,$$CTR("*** IHS 2012 Patient Education Clinical Performance Report Patient List  ***",80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U),80),!
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W $$CTR(X,80),!
 W $$CTR($S(BGPLIST="A":"Entire Patient List",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),80),!
 W !,$TR($J("",80)," ","-")
 Q
H1 ;
 W !,"UP=User Pop",!
 W !,"PATIENT NAME",?24,"HRN",?31,"COMMUNITY",?45,"SEX",?49,"AGE",?53,"DENOMINATOR",?65,"NUMERATOR"
 W !,$TR($J("",80)," ","-")
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------