CIMGAGPE ; CMI/TUCSON/LAB - aberdeen gpra print ;   [ 03/14/00  9:31 AM ]
 ;;1.0;ABERDEEN GPRA REPORT;;JAN 22, 2000
 ;
 ;
PHN ;
 D HEADER Q:CIMQUIT
 W !,"19/2000 Public Health Nursing",!,"Assure the total number of public health nursing services provided to ",!,"individuals in all settings and the total number of home visits are",!,"increased by 5% over the FY 1998 workload baselines",!
 W !,"Public Health Nursing"
 W !?38,"BASELINE",?45,"   %",?56,"REPORT",?64,"  %",?71,"% CHANGE",!?38,"PERIOD",?56,"PERIOD"
 S CIMGX=$$V(1,1),CIMGY=$$V(12,1)
 S CIMG1=$$V(19,25),CIMG1B=$$V(20,25)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !?3,"# active users",?36,$$C(CIMGY,0,9),?54,$$C(CIMGX,0,9)
 W !?3,"# of Persons served by PHN's",!?5,"in any setting",?36,$$C(CIMG1B,0,9),?44,$J(CIMG1BP,6,1),?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1),?72,$J($$CALC(CIMG1P,CIMG1BP),7)
 S CIMG1=$$V(19,26),CIMG1B=$$V(20,26)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !?3,"# of Persons Served by PHN's",!?5,"in a Home Setting",?36,$$C(CIMG1B,0,9),?44,$J(CIMG1BP,6,1),?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1),?72,$J($$CALC(CIMG1P,CIMG1BP),7)
 W !!?3,"# of PHN Visits - any Setting",?36,$$C($$V(20,18),0,9),?54,$$C($$V(19,18),0,9)
 S X=$$V(20,18),Y=$$V(19,18),%=$S(X:((Y-X)/X)*100,1:"") W ?72,$J(%,5,1)
 W !!?3,"# of PHN Visits - Home",?36,$$C($$V(20,19),0,9),?54,$$C($$V(19,19),0,9)
 S X=$$V(20,19),Y=$$V(19,19),%=$S(X:((Y-X)/X)*100,1:"") W ?72,$J(%,5,1)
FLUPNEU ;
 D HEADER Q:CIMQUIT
 W !,"21/2000 Adult Immunization",!,"Produce an overall pneumoccal and influenza vaccination level of at least 60%",!,"for adults aged 65 and older.",!
 W !,"Adult Immunizations"
 ;W !?38,"BASELINE",?45,"   %",?56,"REPORT",?64,"  %",?71,"% CHANGE",!?38,"PERIOD",?56,"PERIOD"
 W !?56,"REPORT",?64,"  %",!?56,"PERIOD"
 S CIMGX=$$V(19,20),CIMGY=$$V(20,20)
 S CIMG1=$$V(19,21),CIMG1B=$$V(20,21)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !?3,"# patients 65 yrs and older",?54,$$C(CIMGX,0,9)
 W !?3,"# w/Pneumovax ever",?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1)
 S CIMG1=$$V(19,22),CIMG1B=$$V(20,22)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !?3,"# with Flu Vaccine within",!?5,"1 year prior to end of time period",?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1)
SMOKER ;
 D HEADER Q:CIMQUIT
 W !!,"24/2000  Smoking",!,"Determine Area-age specific prevalance rates for the",!,"usage of tobacco products.",!
 I $Y>(IOSL-5) D HEADER Q:CIMQUIT
 W !,"Prevalance of Usage of Tobacco Products"
 W !?38,"BASELINE",?45,"   %",?56,"REPORT",?64,"  %",?71,"% CHANGE",!?38,"PERIOD",?56,"PERIOD"
 S CIMGX=$$V(1,1),CIMGY=$$V(12,1)
 S CIMG1=$$V(22,10),CIMG1B=$$V(23,10)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !?3,"# active users",?36,$$C(CIMGY,0,9),?54,$$C(CIMGX,0,9)
 W !!?3,"# w/ Tobacco Status documented",?36,$$C(CIMG1B,0,9),?44,$J(CIMG1BP,6,1),?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1),?72,$J($$CALC(CIMG1P,CIMG1BP),7)
 S CIMGX=$$V(22,10),CIMGY=$$V(23,10)
 S CIMG1=$$V(22,1),CIMG1B=$$V(23,1)
 S CIMG1P=$S(CIMGX:((CIMG1/CIMGX)*100),1:""),CIMG1BP=$S(CIMGY:((CIMG1B/CIMGY)*100),1:"")
 W !!?3,"# documented Tobacco Users",?36,$$C(CIMG1B,0,9),?44,$J(CIMG1BP,6,1),?54,$$C(CIMG1,0,9),?62,$J(CIMG1P,6,1),?72,$J($$CALC(CIMG1P,CIMG1BP),7)
AGE11 ;age distribution 1/1
 D HEADER Q:CIMQUIT
 W !,"Age specific Tobacco Usage Prevalance"
 W !?40,"Age Distribution"
 W !?23,"<1 yr",?30,"1-4",?37,"5-14",?44,"15-19",?51,"20-24",?56,"25-44",?65,"45-64",?72,">64 yrs",!
 W !," BASELINE"
 W !?2,"# active users"
 S T=23 F X=2:1:9 S Y=$$V(12,X) W ?T,$$C(Y,0,6) S T=T+7
 W !?2,"# Tobacco Use"
 S T=23 F X=2:1:9 S Y=$$V(23,X) W ?T,$$C(Y,0,6) S T=T+7
 K CIMX W !?2,"% tobacco use" S T=23 F X=2:1:9 S N=$$V(23,X),D=$$V(12,X),%=$S('D:"",1:(N/D)*100) W ?T,$S(%="":"    .",1:$J(%,5,1)) S T=T+7 S $P(CIMX(X),U,2)=%
 I $Y>(IOSL-7) D HEADER Q:CIMQUIT
 W !,"CURRENT PERIOD"
 W !?2,"# active users"
 S T=23 F X=2:1:9 S Y=$$V(1,X) W ?T,$$C(Y,0,6) S T=T+7
 W !?2,"# Tobacco Users"
 S T=23 F X=2:1:9 S Y=$$V(22,X) W ?T,$$C(Y,0,6) S T=T+7
 W !?2,"% Tobacco Users" S T=23 F X=2:1:9 S N=$$V(22,X),D=$$V(1,X),%=$S('D:"",1:(N/D)*100) W ?T,$S(%="":"    .",1:$J(%,5,1)) S T=T+7 S $P(CIMX(X),U)=%
 S T=23 W !!,"% Change" S X=0 F  S X=$O(CIMX(X)) Q:X'=+X  S N=$P(CIMX(X),U),O=$P(CIMX(X),U,2) W ?T,$J($$CALC(N,O),6) S T=T+7
 D ^CIMGAGPF
 Q
CALC(N,O) ;ENTRY POINT
 ;N is new
 ;O is old
 NEW Z
 I O=0!(N=0)!(O="")!(N="") Q "**"
 NEW X,X2,X3
 S X=N,X2=1,X3=0 D COMMA^%DTC S N=X
 S X=O,X2=1,X3=0 D COMMA^%DTC S O=X
 I +O=0 Q "**"
 S Z=(((N-O)/O)*100),Z=$FN(Z,"+,",1)
 Q Z
V(N,P) ;
 NEW X,C S (X,C)=0 F  S X=$O(CIMSUL(X)) Q:X'=+X  S C=C+$P($G(^CIMAGP(X,N)),U,P)
 Q C
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
HEADER ;EP
 G:'CIMGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S CIMQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S CIMGPG=CIMGPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",CIMGPG,!
 W !,$$CTR("***  ABERDEEN AREA GPRA INDICATORS  ***",80),!
 W $S(CIMSUCNT=1:$$CTR(CIMSUNM),1:$$CTR("AREA AGGREGATE")),!
 S X="Reporting Period: "_$$FMTE^XLFDT(CIMBD)_" to "_$$FMTE^XLFDT(CIMED) W $$CTR(X,80),!
 S X="Baseline Period:  "_$$FMTE^XLFDT(CIM98B)_" to "_$$FMTE^XLFDT(CIM98E) W $$CTR(X,80),!
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
