BGP7ELS ; IHS/CMI/LAB - IHS gpra print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 Q:$G(BGPAREAA)
 Q:'$D(BGPLIST)
 S BGPQUIT="",BGPGPG=0,BGPCOUNT=0
 S BGPL=0 F  S BGPL=$O(BGPLIST(BGPL)) Q:BGPL'=+BGPL!(BGPQUIT)  D
 .S BGPCOUNT=0,BGPPCNT=0
 .D HEADER Q:BGPQUIT
 .S BGPCNT=$G(BGPLIST(BGPL))
 .I 'BGPCNT S BGPCNT=0 G GO
 .I BGPCNT<11!(BGPLIST'="R") S BGPCNT=1 G GO
 .I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .S BGPCNT=10
GO .;
 .W !,$P(^BGPELIA(BGPL,0),U,3),!
 .W !,"Denominator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPELIA(BGPL,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
  ...S BGPZ=0 F  S BGPZ=$O(^BGPELIA(BGPL,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ....W !,^BGPELIA(BGPL,61,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Numerator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPELIA(BGPL,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...S BGPZ=0 F  S BGPZ=$O(^BGPELIA(BGPL,62,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ....W !,^BGPELIA(BGPL,62,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPELIA(BGPL,11,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,51,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPELIA(BGPL,51,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPELIA(BGPL,52,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPL,71,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPELIA(BGPL,71,BGPX,0)
 .D H1
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM)) Q:BGPCOM=""!(BGPQUIT)  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""!(BGPQUIT)  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""!(BGPQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN!(BGPQUIT)  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Total # of Patients on list: ",+$G(BGPPCNT)
 Q
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT  D
 .S X=0 F  S X=$O(^BGPELIA(BGPL,72,X)) Q:X'=+X  W !,^BGPELIA(BGPL,72,X,0)
 .D H1
 S BGPPCNT=BGPPCNT+1
 W !,$E($P(^DPT(DFN,0),U),1,22),?24,$$HRN^AUPNPAT(DFN,DUZ(2)),?31,$E(BGPCOM,1,14),?46,BGPSEX,?49,BGPAGE
 W ?53,$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1),?59,$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2)
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
 W !,$$CTR("***  IHS 2007 ELDER CARE Clinical Performance Report Patient List  ***",80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W $$CTR(X,80),!
 W $$CTR($S(BGPLIST="A":"Entire Patient List",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),80),!
 W !,$TR($J("",80)," ","-")
 Q
H1 ;
 W !,"UP=User Pop; AC=Active Clinical; AD=Active Diabetic",!
 W !,"PATIENT NAME",?24,"HRN",?31,"COMMUNITY",?45,"SEX",?49,"AGE",?53,"DENOM",?59,"NUMERATOR"
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
