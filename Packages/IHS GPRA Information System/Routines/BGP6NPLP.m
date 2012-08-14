BGP6NPLP ; IHS/CMI/LAB - IHS gpra print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
NPL ;
 Q:$G(BGPAREAA)
 S BGPQUIT="",BGPGPG=0
 S BGPINDN=0,BGPCOUNT=0 F  S BGPINDN=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN)) Q:BGPINDN'=+BGPINDN!(BGPQUIT)  D NPL1
 Q
NPL1 ;EP
 Q:$G(BGPAREAA)
 S BGPL=0 F  S BGPL=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL)) Q:BGPL'=+BGPL!(BGPQUIT)  D
 .S BGPINDN=$P(^BGPSNPL(BGPL,0),U)
 .S BGPCOUNT=0,BGPPCNT=0
 .D HEADER Q:BGPQUIT
 .S BGPCNT=BGPINDL(BGPINDN,BGPL)
 .I BGPCNT<11!(BGPLIST'="R") S BGPCNT=1 G GO
 .I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .S BGPCNT=10
GO .;
 .W !,$P(^BGPINDS(BGPINDN,0),U,3)
 .G NEXT
 .W !,"Denominator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPINDS(BGPINDN,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDS(BGPINDN,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...I $P(^BGPINDS(BGPINDN,61,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDS(BGPINDN,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ....W !,^BGPINDS(BGPINDN,61,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Numerator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPINDS(BGPINDN,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDS(BGPINDN,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...I $P(^BGPINDS(BGPINDN,62,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDS(BGPINDN,62,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ....W !,^BGPINDS(BGPINDN,62,BGPY,1,BGPZ,0)
 ....Q
 ...Q
 ..Q
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDS(BGPINDN,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPINDS(BGPINDN,11,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDS(BGPINDN,51,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPINDS(BGPINDN,51,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDS(BGPINDN,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPINDS(BGPINDN,52,BGPX,0)
NEXT .;
 .S BGPX=0 F  S BGPX=$O(^BGPSNPL(BGPL,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..W !,^BGPSNPL(BGPL,11,BGPX,0)
 .D H1
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM)) Q:BGPCOM=""!(BGPQUIT)  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""!(BGPQUIT)  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""!(BGPQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN!(BGPQUIT)  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .W !!,"Total # of patients on list: ",+$G(BGPPCNT),!
 Q
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 I $Y>(BGPIOSL-3) D HEADER Q:BGPQUIT  D
 .S X=0 F  S X=$O(^BGPSNPL(BGPL,11,X)) Q:X'=+X  W !,^BGPSNPL(BGPL,11,X,0)
 .D H1
 S BGPPCNT=BGPPCNT+1
 W !,$E($P(^DPT(DFN,0),U),1,22),?24,$$HRN^AUPNPAT(DFN,DUZ(2)),?31,$E(BGPCOM,1,14),?46,BGPSEX,?49,BGPAGE
 W ?53,$P(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1),?65,$P(^XTMP("BGP6DNP",BGPJ,BGPH,"LIST",BGPINDN,BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2)
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
 W !,$$CTR("***  IHS GPRA Performance Patient List  ***",80),!
 W $$CTR("CRS 2006, Version 6.1",80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U),80),!
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W $$CTR(X,80),!
 W $$CTR($S(BGPLIST="A":"All Patients",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),80),!
 W !,$TR($J("",80)," ","-")
 Q
H1 ;
 W !,"UP=User Pop; AC=Active Clinical; AD=Active Diabetic; AAD=Active Adult Diabetic",!,"PREG=Pregnant Female; IMM=Active IMM Pkg Pt",!
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