BUDCRPTL ; IHS/CMI/LAB - UDS ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 S BUDQUIT="",BUDGPG=0
 I $G(BUDTZL) S BUDGPG=0 D TZ
 Q:BUDQUIT
 I $G(BUDT3AL) S BUDGPG=0 D T3A
 Q:BUDQUIT
 I $G(BUDT3BRL) S BUDGPG=0 D T3BR
 Q:BUDQUIT
 I $G(BUDT4IPP) S BUDGPG=0 D T4IPPL
 Q:BUDQUIT
 I $G(BUDT4PMI) S BUDGPG=0 D T4PMIS
 Q:BUDQUIT
 I $G(BUDT4CHA) S BUDGPG=0 D T4CHAR
 Q:BUDQUIT
 I $G(BUDT5L1) S BUDGPG=0 D T51
 Q:BUDQUIT
 I $G(BUDT5L) S BUDGPG=0 D T5
 Q:BUDQUIT
 I $G(BUDT5L2) S BUDGPG=0 D T52
 Q:BUDQUIT
 I $G(BUDT6L) S BUDGPG=0 D T6
 Q:BUDQUIT
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
T3BR ;
 D T3BR^BUDCRPL4
 Q
T4IPPL ;
 D T4IPPL^BUDCRPL5
 Q
T4PMIS ;
 D T4PMIS^BUDCRPL5
 Q
T4CHAR ;
 D T4CHAR^BUDCRPL5
 Q
T3A ;
 D T3A^BUDCRPL2
 Q
T52 ;
 D T52^BUDCRPL2
 Q
T51 ;EP
 D T51^BUDCRPL2
 Q
T5 ;
 I BUDROT="D" D T5DH
 S BUDP=0
 S BUDX2L="" F   S BUDX2L=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L)) Q:BUDX2L=""!(BUDQUIT)  D
 .Q:BUDX2L=35
 .S BUDX2L2="" F  S BUDX2L2=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2)) Q:BUDX2L2=""!(BUDQUIT)  D
 ..S BUDX2LL=BUDX2L_$S(BUDX2L2=0:"",1:BUDX2L2)
 ..S BUDY=$O(^BUDBTFIV("B",BUDX2LL,0)),BUDY=$P(^BUDBTFIV(BUDY,0),U,2)_" "_$P(^BUDBTFIV(BUDY,0),U,3)_" "_$P(^BUDBTFIV(BUDY,0),U,4)
 ..S BUDSUBT="Line "_BUDX2LL_"   "_BUDY
 ..I BUDROT="P" D T5H Q:BUDQUIT
 ..I BUDROT="D" D S(""),S(BUDSUBT)
 ..S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 ...S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2,BUDCOM,BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 ....S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2,BUDCOM,BUDAGE,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 .....S DFN=0 F  S DFN=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2,BUDCOM,BUDAGE,BUDSEX,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D T5W
 I BUDROT="P" W !
 Q
T5W I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))
 I BUDROT="P" W ?36,$E(BUDCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,$$AGE^AUPNPAT(DFN,BUDCAD),?60,$E($P($$RACE^BUDCRPTC(DFN),U,4),1,16)," (",$P($$RACE^BUDCRPTC(DFN),U,3),")"
 K BUDVLST S BUDV=0 F  S BUDV=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T5",BUDX2L,BUDX2L2,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 .S BUDVLST($P(^AUPNVSIT(BUDV,0),U),BUDV)=""
 S BUDDD=0 F  S BUDDD=$O(BUDVLST(BUDDD)) Q:BUDDD=""!(BUDQUIT)  D
 .S BUDV=0 F  S BUDV=$O(BUDVLST(BUDDD,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 ..I BUDROT="P",$Y>(IOSL-3) D T5H Q:BUDQUIT
 ..I BUDROT="P" D
 ...W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,$E($$PRIMPROV^APCLV(BUDV,"E"),1,14),?42,$E($$PRIMPROV^APCLV(BUDV,"D"),1,8),?50,$P(^AUPNVSIT(BUDV,0),U,7),?55,$E($$CLINIC^APCLV(BUDV,"E"),1,14),?70,$E($$LOCENC^APCLV(BUDV,"E"),1,9)
 ..I BUDROT="D" D
 ...S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCAD)
 ...S X=X_U_$E($P($$RACE^BUDCRPTC(DFN),U,4),1,16)_" ("_$P($$RACE^BUDCRPTC(DFN),U,3)_")"
 ...S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),"."))_U_$$PRIMPROV^APCLV(BUDV,"E")_U_$$PRIMPROV^APCLV(BUDV,"D")_U_$P(^AUPNVSIT(BUDV,0),U,7)_U_$$CLINIC^APCLV(BUDV,"E")_U_$$LOCENC^APCLV(BUDV,"E")
 ...D S(X)
 ...Q
 Q
T5DH ;
 D S(""),S(""),S("")
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"       "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 5 Columns B & C, By Service Category")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDCEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDCEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDCEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S(" ")
 D S("List of all patients, sorted by defined Service Categories.  Displays")
 D S("community, gender, age and visit data, including Provider codes.")
 D S("* (R) - denotes the value was obtained from the Race field")
 D S("  (C) - denotes the value was obtained from the Classification/Beneficiary field")
 D S("Age is calculated as of June 30.")
 D S("")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^RACE*^VISIT DATE^PROV TYPE^PROV CD^SRV^CLINIC^LOCATION")
 Q
T5H ;
 G:'BUDGPG T5H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
T5H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 5 Columns B & C, By Service Category",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 W !,"List of all patients, sorted by defined Service Categories.  Displays",!,"community, gender, age and visit data, including Provider codes.",!,"Age is calculated as of June 30." D
 .W !,"* (R) - denotes the value was obtained from the Race field"
 .W !,"  (C) - denotes the value was obtained from the Classification/Beneficiary field"
 W !,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?50,"SEX",?55,"AGE",?60,"RACE*"
 W !?5,"VISIT DATE",?25,"PROV TYPE",?41,"PROV CD",?50,"SRV",?55,"CLINIC",?62,"LOCATION"
 W !,$TR($J("",80)," ","-")
 W !!,BUDSUBT,!
 S BUDP=1
 Q
TZ ;
 S BUDP=0
 I BUDROT="P" D TZH Q:BUDQUIT
 I BUDROT="D" D TZHD^BUDCRPTD
 S BUDYY=0 F  S BUDYY=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY)) Q:BUDYY'=+BUDYY!(BUDQUIT)  D TZ1
 Q:BUDQUIT
 ;
 S BUDYY="Unknown Residence" D TZ2
 Q
TZ2 ;
 S BUDINS="" F  S BUDINS=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS)) Q:BUDINS=""!(BUDQUIT)  D
 .S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 ..S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS,BUDCOM,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 ...S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS,BUDCOM,BUDSEX,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ....S DFN="" F  S DFN=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS,BUDCOM,BUDSEX,BUDNAME,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D TZH Q:BUDQUIT
 .....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,"Unk Res",?65,$$INS(BUDINS)
 .....S BUDV=0 F  S BUDV=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"Z",BUDYY,BUDINS,BUDCOM,BUDSEX,BUDNAME,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 ......I BUDROT="P",$Y>(IOSL-3) D TZH Q:BUDQUIT
 ......I BUDROT="P" W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,$E($$PRIMPROV^APCLV(BUDV,"E"),1,14),?42,$P(^AUPNVSIT(BUDV,0),U,7),?45,$E($$CLINIC^APCLV(BUDV,"E"),1,14),?62,$E($$LOCENC^APCLV(BUDV,"E"),1,14)
 ......I BUDROT="D" D
 .......S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_"Unk Res"_U_$$INS(BUDINS)
 .......S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),"."))_U_$$PRIMPROV^APCLV(BUDV,"E")_U_$P(^AUPNVSIT(BUDV,0),U,7)_U_$$CLINIC^APCLV(BUDV,"E")_U_$$LOCENC^APCLV(BUDV,"E")
 .......D S^BUDCRPTD(X)
 I BUDROT="P" W !
 Q
TZ1 ;
 S BUDZIP="" F  S BUDZIP=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP)) Q:BUDZIP=""!(BUDQUIT)  D
 .S BUDINS="" F  S BUDINS=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS)) Q:BUDINS=""!(BUDQUIT)  D
 ..S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 ...S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS,BUDCOM,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 ....S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS,BUDCOM,BUDSEX,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 .....S DFN="" F  S DFN=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS,BUDCOM,BUDSEX,BUDNAME,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ......I BUDROT="P",$Y>(IOSL-3) D TZH Q:BUDQUIT
 ......I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,BUDZIP,?65,$$INS(BUDINS)
 ......S BUDV=0 F  S BUDV=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"ZNEW",BUDYY,BUDZIP,BUDINS,BUDCOM,BUDSEX,BUDNAME,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  D
 .......I BUDROT="P",$Y>(IOSL-3) D TZH Q:BUDQUIT
 .......I BUDROT="P" W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,$E($$PRIMPROV^APCLV(BUDV,"E"),1,14),?42,$P(^AUPNVSIT(BUDV,0),U,7),?45,$E($$CLINIC^APCLV(BUDV,"E"),1,14),?62,$E($$LOCENC^APCLV(BUDV,"E"),1,14)
 .......I BUDROT="D" D
 ........S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_BUDZIP_U_$$INS(BUDINS)
 ........S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),"."))_U_$$PRIMPROV^APCLV(BUDV,"E")_U_$P(^AUPNVSIT(BUDV,0),U,7)_U_$$CLINIC^APCLV(BUDV,"E")_U_$$LOCENC^APCLV(BUDV,"E")
 ........D S^BUDCRPTD(X)
 I BUDROT="P" W !
 Q
INS(Z) ;
 I Z="e" Q "PI"
 I Z="d" Q "Medicare"
 I Z="c" Q "MCD/CHIP/OP"
 I Z="b" Q "None/Unins"
 Q ""
TZH ;
 I BUDROT="D" Q
 D TZH^BUDCRPTD
 Q
T6 ;
 I BUDROT="D" D T6DH
 S BUDP=0
 S BUDX2L=0 F  S BUDX2L=$O(^BUDCTSC("B",BUDX2L)) Q:BUDX2L'=+BUDX2L  S BUDY=0 F  S BUDY=$O(^BUDCTSC("B",BUDX2L,BUDY)) Q:BUDY'=+BUDY  D
 .Q:'$D(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L))
 .I BUDROT="P" D T6H Q:BUDQUIT
 .S BUDLLL="",X=0 F  S X=$O(^BUDCTSC(BUDY,2,X)) Q:X'=+X  S BUDLLL=BUDLLL_" "_$P(^BUDCTSC(BUDY,2,X,0),U,1)
 .I BUDROT="P" W !!,"Line ",$P(^BUDCTSC(BUDY,0),U,3),"   ",BUDLLL
 .I BUDROT="D" D S(""),S("Line "_$P(^BUDCTSC(BUDY,0),U,3)_"  "_BUDLLL)
 .S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 ..S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 ...S BUDSEX="" F  S BUDSEX=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX)) Q:BUDSEX=""!(BUDQUIT)  D
 ....S DFN=0 F  S DFN=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D T6W
 I BUDROT="P" W !
 Q
T6W ;
 I BUDROT="P",$Y>(IOSL-3) D T6H Q:BUDQUIT  W !!,"Line ",$S($P($T(@BUDX2L),";;",3)]"":$P($T(@BUDX2L),";;",3),1:BUDX2L),"   ",$P($T(@BUDX2L),";;",2)
 I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,22),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))
 I BUDROT="P" W ?36,$E(BUDCOM,1,12),?51,$P(^DPT(DFN,0),U,2),?55,$$AGE^AUPNPAT(DFN,BUDCAD),?60,$E($P($$RACE^BUDCRPTC(DFN),U,4),1,16)," (",$P($$RACE^BUDCRPTC(DFN),U,3),")"
 K BUDVRR S BUDV=0,BUDVC=0 F  S BUDV=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)) Q:BUDV'=+BUDV!(BUDQUIT)  S BUDVC=BUDVC+1,BUDVRR($$VD^APCLV(BUDV),BUDVC)=BUDV
 S BUDVD=0 F  S BUDVD=$O(BUDVRR(BUDVD)) Q:BUDVD=""  S BUDVC=0 F  S BUDVC=$O(BUDVRR(BUDVD,BUDVC)) Q:BUDVC=""  D
 .I BUDROT="P",$Y>(IOSL-3) D T6H Q:BUDQUIT  W !!,"Line ",$P(^BUDCTSC(BUDY,0),U,3),"  ",BUDLLL
 .S BUDV=BUDVRR(BUDVD,BUDVC)
 .S Z=^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,BUDV)
 .F A=1:1 S J=$P(Z,U,A) Q:J=""  D
 ..I BUDROT="P" W !?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),".")),?25,J,?40,$P(^AUPNVSIT(BUDV,0),U,7),?45,$E($$CLINIC^APCLV(BUDV,"E"),1,15),?62,$E($$LOCENC^APCLV(BUDV,"E"),1,15) Q
 ..S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCAD)
 ..S X=X_U_$E($P($$RACE^BUDCRPTC(DFN),U,4),1,16)_" ("_$P($$RACE^BUDCRPTC(DFN),U,3)_")"
 ..S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(BUDV,0),U),"."))_U_J_U_$P(^AUPNVSIT(BUDV,0),U,7)_U_$$CLINIC^APCLV(BUDV,"E")_U_$$LOCENC^APCLV(BUDV,"E")
 ..D S^BUDCRPTD(X)
 ..Q
 I BUDX2L=35 D
 .S BUDW=0 F  S BUDW=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","MAM",BUDW)) Q:BUDW'=+BUDW!(BUDQUIT)  D
 ..I BUDROT="P" W !?5,$P(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","MAM",BUDW),U,2),?25,$P(^(BUDW),U,1)
 ..I BUDROT="D" D S($P(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","MAM",BUDW),U,2)_"^"_$P(^(BUDW),U,1))
 I BUDX2L=36 D
 .S BUDW=0 F  S BUDW=$O(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","PAP",BUDW)) Q:BUDW'=+BUDW!(BUDQUIT)  D
 ..I BUDROT="P" W !?5,$P(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","PAP",BUDW),U,2),?25,$P(^(BUDW),U,1)
 ..I BUDROT="D" D S($P(^XTMP("BUDCRPT1",BUDJ,BUDH,"T6",BUDX2L,BUDCOM,BUDAGE,BUDSEX,DFN,"WH","PAP",BUDW),U,2)_"^"_$P(^(BUDW),U,1))
 Q
T6H ;
 I BUDROT="D" D T6DH Q
 G:'BUDGPG T6H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
T6H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6A, By Diagnosis Category",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDCEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDCEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDCEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 W !,"List of all patients, sorted by diagnosis and tests/screening",!,"categories.  Displays community, gender, age and visit data, and codes." D
 .W !,"* (R) - denotes the value was obtained from the Race field"
 .W !,"  (C) - denotes the value was obtained from the Classification/Beneficiary field"
 W !,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?50,"SEX",?55,"AGE",?60,"RACE*"
 W !?5,"VISIT DATE",?25,"VALUE",?41,"SRV",?45,"CLINIC",?63,"LOCATION"
 W !,$TR($J("",80)," ","-")
 S BUDP=1
 Q
CTR(X,Y) ;
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
T6DH ;
 D T6DH^BUDCRPTD
 Q
