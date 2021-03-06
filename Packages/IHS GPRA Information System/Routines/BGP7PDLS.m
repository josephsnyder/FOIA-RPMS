BGP7PDLS ; IHS/CMI/LAB - IHS gpra print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 Q:$G(BGPAREAA)
 Q:$G(BGPCPPL)
 Q:'$D(BGPLIST)
 I $G(BGPNPL) Q
 S X=" " D S(X,1,1) D S(X,1,1) D S(X,1,1) S X="PATIENT LISTS" D S(X,1,1) S X=" " D S(X,1,1)
 ;S BGPL=0 F  S BGPL=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL)) Q:BGPL'=+BGPL  D
 S BGPL=0 F  S BGPL=$O(BGPLIST(BGPL)) Q:BGPL'=+BGPL  D
 .S BGPCOUNT=0,BGPPCNT=0
 .S BGPCNT=$G(BGPLIST(BGPL))
 .S:'BGPCNT BGPCNT=0
 .I BGPCNT<11!(BGPLIST'="R") S BGPCNT=1 G GO
 .I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .S BGPCNT=10
GO .;
 .S X="**** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****" D S(X,1,1)
 .S X=$P(^BGPINDA(BGPL,0),U,3) D S(X,1,1)
 .S X=" " D S(X,1,1)
 .S X="Denominator(s):" D S(X,1,1)
 .S BGPX=0 F  S BGPX=$O(^BGPINDA(BGPL,61,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDA(BGPL,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...I $P(^BGPINDA(BGPL,61,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...I BGPRTYPE=4,$P(^BGPINDA(BGPL,61,BGPY,0),U,3)'[BGPINDT Q  ;don't display
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDA(BGPL,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S Y=^BGPINDA(BGPL,61,BGPY,1,BGPZ,0) D S(Y,1,1)
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1)
 .S X="Numerator(s):" D S(X,1,1)
 .S BGPX=0 F  S BGPX=$O(^BGPINDA(BGPL,62,"B",BGPX)) Q:BGPX'=+BGPX  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDA(BGPL,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY  D
 ...I $P(^BGPINDA(BGPL,62,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...I BGPRTYPE=4,BGPINDT'="S",$P(^BGPINDA(BGPL,62,BGPY,0),U,3)'[BGPINDT Q  ;don't display
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDA(BGPL,62,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 ....S X=^BGPINDA(BGPL,62,BGPY,1,BGPZ,0) D S(X,1,1)
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1)
 .S BGPNODE=11 I BGPRTYPE=1,$O(^BGPINDA(BGPL,54,0)) S BGPNODE=54
 .S BGPX=0 F  S BGPX=$O(^BGPINDA(BGPL,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDA(BGPL,BGPNODE,BGPX,0) D S(X,1,1)
 .S X=" " D S(X,1,1) S BGPX=0 F  S BGPX=$O(^BGPINDA(BGPL,51,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDA(BGPL,51,BGPX,0) D S(X,1,1)
 .S X=" " D S(X,1,1) S BGPX=0 F  S BGPX=$O(^BGPINDA(BGPL,52,BGPX)) Q:BGPX'=+BGPX  D
 ..S X=^BGPINDA(BGPL,52,BGPX,0) D S(X,1,1)
 .D H1
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM)) Q:BGPCOM=""  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .S X=" " D S(X,1,1) S X="  " D S(X,1,1)
 .S X=" " D S(X,1,1) S X="  " D S(X,1,1)
 .S X="Total # of patients on list: "_+$G(BGPPCNT) D S(X,1,1)
 Q
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 S BGPPCNT=BGPPCNT+1
 S X=$E($P(^DPT(DFN,0),U),1,22) D S(X,1,1) S X=$$HRN^AUPNPAT(DFN,DUZ(2)) D S(X,,2) S X=$E(BGPCOM,1,14) D S(X,,3) S X=BGPSEX D S(X,,4) S X=BGPAGE D S(X,,5)
 S X=$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1) D S(X,,6)
 S X=$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2) D S(X,,7)
 Q
 ;
HEADER ;EP
 G:'BGPGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S BGPGPG=BGPGPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BGPGPG,!
 W !,$$CTR("***  IHS FY07 Clinical Performance Measure Patient List  ***",80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U),80),!
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W $$CTR(X,80),!
 W $$CTR($S(BGPLIST="A":"Entire Patient List",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),80),!
 W !,$TR($J("",80)," ","-")
 Q
H1 ;
 S X=" " D S(X,1,1)
 S X=$S(BGPLIST="A":"Entire Patient List",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV) D S(X,1,1)
 S X=" " D S(X,1,1) S X="UP=User Pop; AC=Active Clinical; AD=Active Diabetic;" D S(X,1,1) S X="AAD=Active Adult Diabetic; PREG=Pregnant Female;" D S(X,1,1) S X="IMM=Active IMM Pkg Pt; IHD=Active Ischemic Heart Disease" D S(X,1,1)
 S X=" " D S(X,1,1)
 S Y=0 F  S Y=$O(^BGPINDA(BGPL,71,Y)) Q:Y'=+Y  S X=^BGPINDA(BGPL,71,Y,0) D S(X,1,1)
 S X=" " D S(X,1,1)
 S X="PATIENT NAME" D S(X,1,1) S X="HRN" D S(X,,2) S X="COMMUNITY" D S(X,,3) S X="SEX" D S(X,,4) S X="AGE" D S(X,,5) S X="DENOMINATOR" D S(X,,6) S X="NUMERATOR" D S(X,,7)
 S X=$TR($J("",80)," ","-") D S(X,1,1)
 Q
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
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
