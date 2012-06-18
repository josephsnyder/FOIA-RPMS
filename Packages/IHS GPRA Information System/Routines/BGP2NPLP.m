BGP2NPLP ; IHS/CMI/LAB - IHS gpra print 30 Jun 2010 5:58 PM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
NPL ;
 Q:$G(BGPAREAA)
 S BGPQUIT="",BGPGPG=0
 S BGPINDW=0,BGPCOUNT=0
 S BGPINDW=0 F  S BGPINDW=$O(BGPINDL(BGPINDW)) Q:BGPINDW'=+BGPINDW  D
 .S BGPORD=$P($G(^BGPINDW(BGPINDW,12)),U,6)
 .S BGPLIEN=0 F  S BGPLIEN=$O(BGPINDW(BGPINDW,BGPLIEN)) Q:BGPLIEN'=+BGPLIEN  D
 ..S BGPLORD=$S(BGPRTYPE=1:$P(^BGPNPLW(BGPLIEN,0),U,5),1:$P(^BGPNPLW(BGPLIEN,0),U,6))
 ..S BGPINDW("AOI",BGPORD,BGPINDW,BGPLORD,BGPLIEN)=""
 S BGPORD=0 F  S BGPORD=$O(BGPINDL("AOI",BGPORD)) Q:BGPORD=""!(BGPQUIT)  D
 .S BGPINDW=$O(BGPINDL("AOI",BGPORD,0))
 .S BGPLORD=0 F  S BGPLORD=$O(BGPINDL("AOI",BGPORD,BGPINDW,BGPLORD)) Q:BGPLORD=""!(BGPQUIT)  D
 ..S BGPLIEN=$O(BGPINDL("AOI",BGPORD,BGPINDW,BGPLORD,0))
 ..;I '$$ANYPATS(BGPINDW,BGPINDII) D HEADER W !!,"No Patients to Report.",! Q
 ..D NPL11 ;F  S BGPINDW=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPINDW)) Q:BGPINDW'=+BGPINDW!(BGPQUIT)  D NPL1
 Q
ANYPATS(I,L) ;
 NEW O,G
 S G=""
 S O=0 F  S O=$O(^XTMP("BGP2DNP",BGJP,BGPH,"LIST",BGPINDW,O)) Q:O'=+O  D
 .I $D(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPINDW,O,BGPL)) S G=1
 .Q
 Q
NPL1 ;EP
 Q:$G(BGPAREAA)
 S BGPCR=$S(BGPRTYPE=7:"AON",1:"AN")
 S BGPORD=$P(^BGPINDW(BGPINDW,12),U,6)
 S BGPLORD=0 F  S BGPLORD=$O(^BGPNPLW(BGPCR,BGPINDW,BGPLORD)) Q:BGPLORD'=+BGPLORD  D
 .S BGPLIEN=$O(^BGPNPLW(BGPCR,BGPINDW,BGPLORD,0)) Q:'BGPLIEN
 .I BGPRTYPE=1!(BGPRTYPE=9) Q:BGPRTYPE'=$P(^BGPNPLW(BGPLIEN,0),U,7)
 .Q:'$D(BGPINDL(BGPINDW,BGPLIEN))
 .I '$D(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN)) D  Q
 ..D HEADER
 ..S X=0 F  S X=$O(^BGPNPLW(BGPLIEN,11,X)) Q:X'=+X  D W^BGP2DP(^BGPNPLW(BGPLIEN,11,X,0),0,1,BGPPTYPE)
 ..D H1
 ..D W^BGP2DP(" ",0,0,BGPRTYPE)
 ..D W^BGP2DP("Total # of patients on list: 0",0,0,BGPPTYPE)
 .D NPL11
 Q
NPL11 ;
 D  ;S BGPLIEN=0 F  S BGPLIEN=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN)) Q:BGPLIEN'=+BGPLIEN!(BGPQUIT)  D
 .I BGPRTYPE=1!(BGPRTYPE=9) Q:BGPRTYPE'=$P(^BGPNPLW(BGPLIEN,0),U,7)
 .;I BGPRTYPE="" S BGPRTYPE=1
 .S BGPCOUNT=0,BGPPCNT=0
 .D HEADER Q:BGPQUIT
 .;I BGPPTYPE="D" D W^BGP2DP("",0,3,BGPPTYPE)
 .S BGPCNT=BGPINDL(BGPINDW,BGPLIEN)
 .I BGPCNT<11!(BGPLIST'="R") S BGPCNT=1 G GO
 .I BGPCNT<100 S BGPCNT=BGPCNT\10 G GO
 .S BGPCNT=10
GO .;
 .D WTITLE^BGP2DP(BGPINDW)  ;W !,$P(^BGPINDW(BGPINDW,0),U,3)
NEXT .;
 .S BGPX=0 F  S BGPX=$O(^BGPNPLW(BGPLIEN,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 ..D W^BGP2DP(^BGPNPLW(BGPLIEN,11,BGPX,0),0,1,BGPPTYPE)
 .D H1
 .;I '$D(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN)) W !!,"No patients to report.",! Q
 .S BGPCOM="" F  S BGPCOM=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM)) Q:BGPCOM=""!(BGPQUIT)  D
 ..S BGPSEX="" F  S BGPSEX=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX)) Q:BGPSEX=""!(BGPQUIT)  D
 ...S BGPAGE="" F  S BGPAGE=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE)) Q:BGPAGE=""!(BGPQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN)) Q:DFN'=+DFN!(BGPQUIT)  S BGPCOUNT=BGPCOUNT+1 D PRINTL
 ...Q
 ..Q
 .Q
 I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 D W^BGP2DP("Total # of patients on list: ",+$G(BGPPCNT),0,2,BGPPTYPE)
 D W^BGP2DP("",0,1,BGPPTYPE)
 Q
 ;
PRINTL ;print one line
 Q:(BGPCOUNT#BGPCNT)
 I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT  D
 .S X=0 F  S X=$O(^BGPNPLW(BGPLIEN,11,X)) Q:X'=+X  W !,^BGPNPLW(BGPLIEN,11,X,0)
 .D H1
 Q:BGPQUIT
 S BGPPCNT=BGPPCNT+1
 I BGPPTYPE="P" W !,$E($P(^DPT(DFN,0),U),1,22),?24,$$HRN^AUPNPAT(DFN,DUZ(2)),?31,$E(BGPCOM,1,14),?46,BGPSEX,?49,BGPAGE D
 .S L=$$LASTV(DFN,BGPED)
 .I BGPRTYPE=1!(BGPRTYPE=9) D  I 1
 ..W ?54,$P(L,U),?70,$P(L,U,2)
 ..W !,$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1),?30,$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2)
 .E  D
 ..W ?53,$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1),?65,$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2)
 I BGPPTYPE="D" D
 .S X=$E($P(^DPT(DFN,0),U),1,22)_U_$$HRN^AUPNPAT(DFN,DUZ(2))_U_$E(BGPCOM,1,14)_U_BGPSEX_U_BGPAGE
 .S L=$$LASTV(DFN,BGPED)
 .I BGPRTYPE=1!(BGPRTYPE=9) D  I 1
 ..S $P(X,U,6)=$P(L,U)
 ..S $P(X,U,7)=$P(L,U,2)
 ..S Y=$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1) S $P(X,U,8)=Y
 ..S Y=$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2) S $P(X,U,9)=Y
 .E  D
 ..S Y=$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",1) S $P(X,U,6)=Y
 ..S Y=$P(^XTMP("BGP2DNP",BGPJ,BGPH,"LIST",BGPORD,BGPINDW,BGPLORD,BGPLIEN,BGPCOM,BGPSEX,BGPAGE,DFN),"|||",2) S $P(X,U,7)=Y
PRINTL1 .D W^BGP2DP(X,0,1,BGPPTYPE)
 K ^TMP($J,"A")
 Q
 ;
HEADER ;EP
 I BGPPTYPE="D" D HEADERD Q
 G:'BGPGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S BGPGPG=BGPGPG+1
 I $G(BGPGUI) W "ZZZZZZZ",!  ;maw
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BGPGPG,!
 I BGPRTYPE=1 W !,$$CTR("***  IHS 2012 GPRA Performance & PART Patient List  ***",80),!
 I BGPRTYPE=9 W !,$$CTR("***  IHS 2012 GPRA Developmental Measures Patient List  ***",80),!
 I BGPRTYPE=7 W !,$$CTR("***  IHS 2012 Other National Measures Patient List  ***",80),!
 W $$CTR($$RPTVER^BGP2BAN,80),!
 W $$CTR($P(^DIC(4,DUZ(2),0),U),80),!
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) W $$CTR(X,80),!
 W $$CTR($S(BGPLIST="A":"All Patients",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV),80),!
 W !,$TR($J("",80)," ","-")
 Q
H1 ;
 I BGPRTYPE'=1,BGPRTYPE'=9 D H1O Q
 D W^BGP2DP("UP=User Pop; AC=Active Clinical; AD=Active Diabetic; AAD=Active Adult Diabetic",0,2,BGPPTYPE)
 D W^BGP2DP("PREG=Pregnant Female; IMM=Active IMM Pkg Pt; IHD=Active Ischemic Heart Disease",0,1,BGPPTYPE)
 D W^BGP2DP("CHD=Active Coronary Heart Disease; HR-High Risk Patient",0,1,BGPPTYPE)
 D W^BGP2DP("PATIENT NAME",0,1,BGPPTYPE,1)
 D W^BGP2DP("HRN",0,0,BGPPTYPE,2,24)  ;,?24,"HRN",
 D W^BGP2DP("COMMUNITY",0,0,BGPPTYPE,3,31)  ;?31,"COMMUNITY",
 D W^BGP2DP("SEX",0,0,BGPPTYPE,4,45)  ;?45,"SEX",
 D W^BGP2DP("AGE",0,0,BGPPTYPE,5,49)  ;?49,"AGE",
 I BGPPTYPE="D" D W^BGP2DP("LAST MEDICAL VISIT",0,0,BGPPTYPE,6,54)
 I BGPPTYPE="P" D W^BGP2DP("LAST MEDICAL",0,0,BGPPTYPE,6,54)
 D W^BGP2DP("LAST VISIT",0,0,BGPPTYPE,7,70)
 D W^BGP2DP("DENOMINATOR",0,$S(BGPPTYPE="P":1,1:0),BGPPTYPE,8,1)  ;?53,"DENOMINATOR",
 D W^BGP2DP("NUMERATOR",0,0,BGPPTYPE,9,30)  ;?65,"NUMERATOR"
 I BGPPTYPE="P" D W^BGP2DP("VISIT",0,0,BGPPTYPE,6,56)
 D W^BGP2DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 Q
H1O ;
 D W^BGP0DP("UP=User Pop; AC=Active Clinical; AD=Active Diabetic; AAD=Active Adult Diabetic",0,2,BGPPTYPE)
 D W^BGP0DP("PREG=Pregnant Female; IMM=Active IMM Pkg Pt; IHD=Active Ischemic Heart Disease",0,1,BGPPTYPE)
 ;D W^BGP0DP("CHD=Active Coronary Heart Disease",0,1,BGPRTYPE)
 D W^BGP0DP("PATIENT NAME",0,1,BGPPTYPE,1)
 D W^BGP0DP("HRN",0,0,BGPPTYPE,2,24)  ;,?24,"HRN",
 D W^BGP0DP("COMMUNITY",0,0,BGPPTYPE,3,31)  ;?31,"COMMUNITY",
 D W^BGP0DP("SEX",0,0,BGPPTYPE,4,45)  ;?45,"SEX",
 D W^BGP0DP("AGE",0,0,BGPPTYPE,5,49)  ;?49,"AGE",
 D W^BGP0DP("DENOMINATOR",0,0,BGPPTYPE,6,53)  ;?53,"DENOMINATOR",
 D W^BGP0DP("NUMERATOR",0,0,BGPPTYPE,7,65)  ;?65,"NUMERATOR"
 D W^BGP0DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 ;W !,"PATIENT NAME",?24,"HRN",?31,"COMMUNITY",?45,"SEX",?49,"AGE",?53,"DENOMINATOR",?65,"NUMERATOR"
 ;W !,$TR($J("",80)," ","-")
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
HEADERD ;EP
 S X="**** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****" D W^BGP2DP(X,0,2,BGPPTYPE)
 I BGPRTYPE=1 S X="***  IHS 2012 GPRA Performance & PART Patient List  ***" D W^BGP2DP(X,0,1,BGPPTYPE)
 I BGPRTYPE=9 S X="***  IHS 2012 GPRA Developmental Measures Patient List  ***" D W^BGP2DP(X,0,1,BGPPTYPE)
 I BGPRTYPE=7 S X="***  IHS 2012 Other National Measures Patient List  ***" D W^BGP2DP(X,0,1,BGPPTYPE)
 S X=$$RPTVER^BGP2BAN D W^BGP2DP(X,0,1,BGPPTYPE)
 S X=$P(^DIC(4,DUZ(2),0),U) D W^BGP2DP(X,0,1,BGPPTYPE)
 S X="Report Period: "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D W^BGP2DP(X,0,1,BGPPTYPE)
 S X=$S(BGPLIST="A":"All Patients",BGPLIST="R":"Random Patient List",1:"Patient List by Provider: "_BGPLPROV) D W^BGP2DP(X,0,1,BGPPTYPE)
 S X=$TR($J("",80)," ","-") D W^BGP2DP(X,0,1,BGPPTYPE)
 Q
LASTV(P,EDATE) ;
 ;return last medical visit date^last visit date in mm/dd/yy format
 K ^TMP($J,"A")
 NEW LCC,LV,A,B,E,X
 S LCC="",LV=""
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMADD^XLFDT(EDATE,-(4*365))_"-"_EDATE,E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 ;reorder in reverse order
 S (X,G,F,S)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:"SAHOR"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S D=$$VD^APCLV(V)
 .S B=$$CLINIC^APCLV(V,"C")
 .I B,$D(^BGPCTRL($O(^BGPCTRL("B",2012,0)),11,"B",B)) S LCC(9999999-D)=V
 .I B,$D(^BGPCTRL($O(^BGPCTRL("B",2012,0)),12,"B",B)) S LCC(9999999-D)=V
 .S LV(9999999-D)=V
 .Q
 S LV=$O(LV(0))
 S LCC=$O(LCC(0))
 I LV S LV=$$DATE^BGP2UTL((9999999-LV))
 I LCC S LCC=$$DATE^BGP2UTL((9999999-LCC))
 Q LCC_U_LV
