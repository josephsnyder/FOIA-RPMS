BUDRPTL2 ; IHS/CMI/LAB - UDS print lists ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
T52 ;EP
 S BUDP=0
 D T52H
 S BUD5L=35,BUDY=$O(^BUDTFIVE("B",BUD5L,0)),BUDY=$P(^BUDTFIVE(BUDY,0),U,2)
 W !!,"Line ",BUD5L,"   ",BUDY
 S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDRPT1",BUDJ,BUDH,"T5",BUD5L,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 .S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDRPT1",BUDJ,BUDH,"T5",BUD5L,BUDCOM,BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 ..S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDRPT1",BUDJ,BUDH,"T5",BUD5L,BUDCOM,BUDAGE,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDRPT1",BUDJ,BUDH,"T5",BUD5L,BUDCOM,BUDAGE,BUDSEX,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D T5W
 ...Q
 ..Q
 .Q
 Q
T5W W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,$$AGE^AUPNPAT(DFN,BUDCAD),?60,$P($$RACE^BUDRPTC(DFN),U,2)
 K BUDVLST S BUDV=0 F  S BUDV=$O(^XTMP("BUDRPT1",BUDJ,BUDH,"T5",BUD5L,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 .S BUDVLST($P(^AUPNVSIT(BUDV,0),U),BUDV)=""
 S BUDDD=0 F  S BUDDD=$O(BUDVLST(BUDDD)) Q:BUDDD=""!(BUDQUIT)  D
 .S BUDV=0 F  S BUDV=$O(BUDVLST(BUDDD,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 ..I $Y>(IOSL-3) D T52H Q:BUDQUIT
 ..W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,$E($$PRIMPROV^APCLV(BUDV,"E"),1,14),?42,$$PRIMPROV^APCLV(BUDV,"D"),?50,$P(^AUPNVSIT(BUDV,0),U,7),?55,$E($$CLINIC^APCLV(BUDV,"E"),1,14),?70,$E($$LOCENC^APCLV(BUDV,"E"),1,9)
 ..Q
 Q
T52H ;
 G:'BUDGPG T5H2
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
T5H2 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  BPHC Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 5 Columns B & C, Uncategorized Provider Visits",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 W !,"List of all Users, for uncategorized provider visits.  Displays",!,"community, gender, age and visit data, including Provider codes."
 W !,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?50,"SEX",?55,"AGE",?60,"RACE/ETHN"
 W !,$TR($J("",80)," ","-")
 S BUDP=1
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
