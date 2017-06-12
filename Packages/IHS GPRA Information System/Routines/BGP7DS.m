BGP7DS ; IHS/CMI/LAB - IHS gpra print ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 Q:$G(BGPAREAA)
 Q:'$D(BGPLIST)
 I $G(BGPNPL) Q
 I $G(BGPCPPL) Q  ;not on comprehensive pt
 S BGPQUIT="",BGPGPG=0
 ;D HEADER
 S BGPORDSE=0 F  S BGPORDSE=$O(^BGPINDG("AOI",BGPORDSE)) Q:BGPORDSE'=+BGPORDSE!(BGPQUIT)  S BGPL=$O(^BGPINDG("AOI",BGPORDSE,0)) I $D(BGPLIST(BGPL)) D
 .S BGPFIRSP=1 S BGPCOUNT=0,BGPPCNT=0
 .D HEADER Q:BGPQUIT
 .S BGPCNT=$G(BGPLIST(BGPL))
 .I 'BGPCNT S BGPCNT=0 G GO
 .I BGPCNT<100 S BGPCNT=1 G GO
 .I BGPLIST'="R" S BGPCNT=1 G GO
 .;I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .;I BGPCNT<100 G GO
 .S BGPCNT=10
GO .;
 .D WTITLE^BGP7DP(BGPL)  ;W !,$P(^BGPINDG(BGPL,0),U,3),!
 .I $G(BGPDNT) G CALC
 .D W^BGP7DP("Denominator(s):",0,1,BGPPTYPE)
 .S BGPNODE=$S(BGPRTYPE=1:81,BGPRTYPE=4:61,BGPRTYPE=7:83,BGPRTYPE=9:85,1:61)
 .I BGPRTYPE=4 S BGPNODE=$S(BGPINDG="D":87,BGPINDG="C":89,BGPINDG="W":92,BGPINDG="I":94,BGPINDG="P":96,1:BGPNODE)
 .S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDG(BGPL,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...;I '$D(^BGPINDG(BGPL,BGPNODE,BGPY,11,"B",BGPRTYPE)) Q  ;not this report type
 ...;I BGPRTYPE=4,'$D(^BGPINDG(BGPL,BGPNODE,BGPY,12,"B",BGPINDG)) Q  ;not this measure type on selected
 ...D WP
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D W^BGP7DP("Numerator(s):",0,2,BGPPTYPE)
 .S BGPNODE=$S(BGPRTYPE=1:82,BGPRTYPE=4:62,BGPRTYPE=7:84,BGPRTYPE=9:86,1:62)
 .I BGPRTYPE=4 S BGPNODE=$S(BGPINDG="D":88,BGPINDG="C":91,BGPINDG="W":93,BGPINDG="I":95,BGPINDG="P":97,1:BGPNODE)
 .S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDG(BGPL,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...;I '$D(^BGPINDG(BGPL,62,BGPY,11,"B",BGPRTYPE)) Q  ;not this report type
 ...;I BGPRTYPE=4,'$D(^BGPINDG(BGPL,BGPNODE,BGPY,12,"B",BGPINDG)) Q  ;not this measure type on selected
 ...D WP
 .S BGPNODE=11
 .I BGPRTYPE=1,$O(^BGPINDG(BGPL,54,0)) S BGPNODE=54
 .I BGPRTYPE=7,$O(^BGPINDG(BGPL,56,0)) S BGPNODE=56
 .I BGPRTYPE=9,$O(^BGPINDG(BGPL,58,0)) S BGPNODE=58
 .D W^BGP7DP("Logic:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPL,BGPNODE,BGPX,0),0,1,BGPPTYPE)
 .D W^BGP7DP("Performance Measure Description:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,$S($G(BGPNGR09):57,1:51),BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPL,$S($G(BGPNGR09):57,1:51),BGPX,0),0,1,BGPPTYPE)
 .I $O(^BGPINDG(BGPL,52,0)) D W^BGP7DP("Past Performance and/or Target:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPL,52,BGPX,0),0,1,BGPPTYPE)
 .I $O(^BGPINDG(BGPL,55,0)) D W^BGP7DP("Source:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPL,55,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPL,55,BGPX,0),0,1,BGPPTYPE)
 .I '$O(^BGPINDG(BGPL,55,0)) D W^BGP7DP("",0,1,BGPPTYPE)
CALC .D H1
 .Q:BGPQUIT
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM)) Q:BGPCOM=""!(BGPQUIT)  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX)) Q:BGPSEX=""!(BGPQUIT)  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""!(BGPQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN!(BGPQUIT)  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ....Q
 ...Q
 ..Q
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .D W^BGP7DP("Total # of Patients on list: "_+$G(BGPPCNT),0,2,BGPPTYPE)
 .D W^BGP7DP("",0,1,BGPPTYPE)
 D W^BGP7DP("",0,1,BGPPTYPE)
 Q
WP ;
 K ^UTILITY($J,"W")
 S BGPZ=0,BGPLCNT=0
 S DIWL=1,DIWR=80,DIWF="",BGPZ=0 F  S BGPZ=$O(^BGPINDG(BGPL,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 .S BGPLCNT=BGPLCNT+1
 .S X=^BGPINDG(BGPL,BGPNODE,BGPY,1,BGPZ,0) S:BGPLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D W^BGP7DP(^UTILITY($J,"W",DIWL,Z,0),0,1,BGPPTYPE)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
 ;
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT  D
 .;S X=0 F  S X=$O(^BGPINDG(BGPL,72,X)) Q:X'=+X  W !,^BGPINDG(BGPL,72,X,0)
 .D H1
 Q:BGPQUIT
 S BGPPCNT=BGPPCNT+1
 I BGPPTYPE="P" W !,$E($P(^DPT(DFN,0),U),1,22),?24,$$HRN^AUPNPAT(DFN,DUZ(2)),?31,$E(BGPCOM,1,14),?46,BGPSEX,?49,BGPAGE,?54,$$DATE^BGP7UTL($$DOB^AUPNPAT(DFN)) D
 .W !,$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1)
 .;W:BGPL=43 " NUMERATOR: "
 .W ?30,$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2)
 I BGPPTYPE="D" D
 .S X=$E($P(^DPT(DFN,0),U),1,22)_U_$$HRN^AUPNPAT(DFN,DUZ(2))_U_$E(BGPCOM,1,14)_U_BGPSEX_U_BGPAGE_U_$$EDT^BGP7UTL($$DOB^AUPNPAT(DFN))
 .S Y=$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1) S $P(X,U,7)=Y
 .S Y=$P(^XTMP("BGP7D",BGPJ,BGPH,"LIST",BGPL,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2) S $P(X,U,8)=Y
 .D W^BGP7DP(X,0,1,BGPPTYPE)
 Q
 ;
HEADER ;EP
 I BGPPTYPE'="P" G HEADER1
 G:'BGPGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
HEADER1 ;
 I BGPPTYPE="P" W:$D(IOF) @IOF S BGPGPG=BGPGPG+1
 I $G(BGPGUI),BGPPTYPE="P" D W^BGP7DP("ZZZZZZZ",0,1,BGPPTYPE)  ;!  ;maw
 D W^BGP7DP("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****",1,1,BGPPTYPE)
 I BGPPTYPE="P" S X=$P(^VA(200,DUZ,0),U,2),$E(X,35)=$$FMTE^XLFDT(DT),$E(X,70)="Page "_BGPGPG D W^BGP7DP(X,1,1,BGPPTYPE)
 I BGPPTYPE'="P" S X=$P(^VA(200,DUZ,0),U,2),$P(X,U,2)=$$FMTE^XLFDT(DT) D W^BGP7DP(X,0,1,BGPPTYPE)
 D W^BGP7DP("*** IHS 2017 Clinical Performance Measure Patient List  ***",1,1,BGPPTYPE)
 D W^BGP7DP($P(^DIC(4,DUZ(2),0),U),1,1,BGPPTYPE)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D W^BGP7DP(X,1,1,BGPPTYPE)
 D W^BGP7DP($S(BGPLIST="A":"Entire Patient List",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),1,1,BGPPTYPE)
 D W^BGP7DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 Q
H1 ;
 S BGPTSUB=$S(BGPFIRSP:71,1:72)
 S X=0,C=0 F  S X=$O(^BGPINDG(BGPL,BGPTSUB,X)) Q:X'=+X  S C=C+1
 I BGPPTYPE="P",$Y>(BGPIOSL-(C+6)) D HEADER Q:BGPQUIT
 D W^BGP7DP("UP=User Pop; AC=Active Clinical; AD=Active Diabetic; AAD=Active Adult Diabetic",0,1,BGPPTYPE)
 D W^BGP7DP("PREG=Pregnant Female; IMM=Active IMM Pkg Pt; CHD=Active Coronary Heart Disease;",0,1,BGPPTYPE)
 D W^BGP7DP("HR=High Risk Patient",0,1,BGPPTYPE)
 D W^BGP7DP("",0,1,BGPPTYPE)
 S X=0 F  S X=$O(^BGPINDG(BGPL,BGPTSUB,X)) Q:X'=+X  D W^BGP7DP(^BGPINDG(BGPL,BGPTSUB,X,0),0,1,BGPPTYPE)
 D W^BGP7DP("",0,1,BGPPTYPE)
 D W^BGP7DP("PATIENT NAME",0,1,BGPPTYPE,1)
 D W^BGP7DP("HRN",0,0,BGPPTYPE,2,24)  ;,?24,"HRN",
 D W^BGP7DP("COMMUNITY",0,0,BGPPTYPE,3,31)  ;?31,"COMMUNITY",
 D W^BGP7DP("SEX",0,0,BGPPTYPE,4,45)  ;?45,"SEX",
 D W^BGP7DP("AGE",0,0,BGPPTYPE,5,49)  ;?49,"AGE",
 D W^BGP7DP("DOB",0,0,BGPPTYPE,6,54)
 D W^BGP7DP("DENOMINATOR",0,$S(BGPPTYPE="P":1,1:0),BGPPTYPE,7,1)  ;?53,"DENOMINATOR",
 D W^BGP7DP("NUMERATOR",0,0,BGPPTYPE,8,30)  ;?65,"NUMERATOR"
 D W^BGP7DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 S BGPFIRSP=0
 Q
