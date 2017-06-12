BUDCRP7I ; IHS/CMI/LAB - UDS REPORT DRIVER TABLE 6B ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
 ;----------
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
GENI ;EP - general introductions
 W !,"NOTE: Patient lists may be hundreds of pages long, depending on the size of your"
 W !,"patient population.  It is recommended that you run these reports at night and"
 W !,"print to an electronic file, not directly to a printer.",!
 K DIR S DIR(0)="E",DIR("A")="Press Enter to Continue" D ^DIR K DIR
 W !!,"This Patient List option documents the individual patients and visits"
 W !,"that are counted and summarized on each Table report (main menu"
 W !,"option REP).  The summary Table report is included at the beginning of each"
 W !,"List report."
 W !,"UDS searches your database to find all visits and related patients"
 W !,"during the time period selected. Based on the UDS definition, to be counted"
 W !,"as a patient, the patient must have had at least one visit meeting the "
 W !,"following criteria:"
 W !?4,"- must be to a location specified in your visit location setup"
 W !?4,"- must be to Service Category Ambulatory (A), Hospitalization (H), Day"
 W !?6,"Surgery (S), Observation (O), Telemedicine (M), Nursing home visit (R), "
 W !?6,"or In-Hospital (I) visit"
 W !?4,"- must NOT have an excluded clinic code (see User Manual for a list)"
 W !?4,"- must have a primary provider and a coded purpose of visit"
 W !?4,"- the patient must NOT have a gender of 'Unknown'"
 W !
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
PRGH ;EP
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2015",80)
 W !!,"Pregnant Patients w/HIV (Table 7, Section A)",!
 D GENI
 D PAUSE
 W !!,"This report provides a list of patients that had pregnancy-related visits"
 W !,"during the past 20 months, with at least one pregnancy-related visit"
 W !,"during the report period, and who have been diagnosed with HIV."
 W !
 Q
PRGHL ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D PRGHH Q:BUDQUIT
 I '$D(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH")) S X="No patients to report." W:BUDROT="P" !!,X D:BUDROT="D" S(),S(X) Q
 D PRGHL1
 I BUDROT="P",$Y>(IOSL-3) D PRGHH G:BUDQUIT PRGHLX
 S X="TOTAL HIV POSITIVE PREGNANT PATIENTS: "_BUDTOT
 I BUDROT="P" W !!,X,!
 I BUDROT="D" D S(),S(X)
PRGHLX ;
 Q
PRGHL1 ;
 I BUDROT="P",$Y>(IOSL-7) D PRGHH Q:BUDQUIT
 S BUDTOT=0
 S BUDA=0 F  S BUDA=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA)) Q:BUDA'=+BUDA!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA,BUDNAME,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA,BUDNAME,BUDCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D PRGHH Q:BUDQUIT
 ....S BUDX=^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA,BUDNAME,BUDCOM,DFN)
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,23),?25,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCOM,1,12),?54,BUDA,?59,$P(BUDX,"@",2),!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDCRP7",BUDJ,BUDH,"PRGH",BUDA,BUDNAME,BUDCOM,DFN)
 ....S BUDPPV=$P(BUDALL,"#",1)
 ....S BUDHIV=$P(BUDALL,"#",2)
 ....S BUDHIV=$P(BUDHIV,"@",1)
 ....S BUDPV="" I BUDROT="D" S BUDPV=$E($P(^DPT(DFN,0),U,1),1,30)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_BUDA_U_$P(BUDX,"@",2)
 ....F BUDX=1:1 S BUDV=$P(BUDPPV,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D PRGHH Q:BUDQUIT
 .....I BUDROT="P",$E(BUDV)="P" W ?5,BUDV,! Q
 .....I BUDROT="D" S BUDPV=BUDPV_U_BUDV D S(BUDPV) Q
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?19,C,?35,$$PRIMPROV^APCLV(V,"D"),?45,$P(^AUPNVSIT(V,0),U,7),?53,$$CLINIC^APCLV(V,"C"),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=BUDPV_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_$$PRIMPROV^APCLV(V,"D")_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"C")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 ....F BUDX=1:1 S BUDV=$P(BUDHIV,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D PRGHH Q:BUDQUIT
 .....I BUDROT="P",$E(BUDV)="P" W ?5,BUDV,! Q
 .....I BUDROT="D" S BUDPV=BUDPV_U_BUDV D S(BUDPV) Q
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?19,C,?35,$$PRIMPROV^APCLV(V,"D"),?45,$P(^AUPNVSIT(V,0),U,7),?53,$$CLINIC^APCLV(V,"C"),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=BUDPV_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_$$PRIMPROV^APCLV(V,"D")_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"C")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 Q
PRGHHD ;
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 7,  HIV Positive Pregnant Women")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDCEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDCEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDCEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D S("List of all pregnant patients with HIV, with most recent pregnancy")
 D S("related visits during the past 20 months.")
 D S("Age is calculated as of June 30.")
 D S()
 D S("PATIENT NAME^HRN^COMMUNITY^AGE^CD & Date Last HIV DX^VISIT DATE^DX OR SVC CD^PROV TYPE^SVC CAT^CLINIC^LOCATION")
 Q
PRGHH ;
 I BUDROT="D" D PRGHHD Q
 G:'BUDGPG PRGHH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
PRGHH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 7, HIV Positive Pregnant Women",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List of all pregnant patients with HIV, with most recent pregnancy"
 .W !,"related visits during the past 20 months."
 .W !,"Age is calculated as of June 30."
 .W !
 W !,"PATIENT NAME",?25,"HRN",?41,"COMMUNITY",?53,"AGE",?59,"CD & Date Last HIV DX"
 W !?5,"VISIT DATE",?19,"DX OR SVC CD",?35,"PROV TYPE",?45,"SVC CAT",?53,"CLINIC",?65,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;
PRGR ;EP
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2015",80)
 W !!,"All Pregnant Patients by Race and Hispanic or Latino Identity",!,"(Table 7, Section A)",!
 D GENI
 D PAUSE
 W !!,"This report provides a list by race and Hispanic or Latino Identity"
 W !,"of patients that had pregnancy-related visits during the past 20 months,"
 W !,"with at least one pregnancy related visit during the report period."
 W !
 Q
PRGRL ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D PRGRH Q:BUDQUIT
 I '$D(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR")) S X="No patients to report." W:BUDROT="P" !!,X D:BUDROT="D" S(),S(X) Q
 D PRGRL1
 I BUDROT="P",$Y>(IOSL-3) D PRGRH G:BUDQUIT PRGRLX
 S X="TOTAL PREGNANT PATIENTS BY HISPANIC OR LATINO IDENTITY AND RACE: "_BUDTOT
 I BUDROT="P" W !!,X,!
 I BUDROT="D" D S(),S(X)
PRGRLX ;
 Q
RACE(R) ;EP
 I R="UNREP/REF" Q "Unreported/Refused to Report"
 I R="ASIAN" Q "Asian"
 I R="NATIVE HAWAIIAN" Q "Native Hawaiian"
 I R="OTH PAC ISLANDER" Q "Other Pacific Islander"
 I R="BLACK" Q "Black/African American"
 I R="AI/AN" Q "American Indian/Alaska Native"
 I R="WHITE" Q "White"
 I R="HISPANIC,WHITE" Q "White"
 I R="HISPANIC,BLACK" Q "Black/African American"
 I R="MORE THAN ONE RACE" Q "More than One Race"
 Q ""
 ;
PRGRL1 ;
 I BUDROT="P",$Y>(IOSL-7) D PRGRH Q:BUDQUIT
 S BUDTOT=0
 S BUDRACE="" F  S BUDRACE=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE)) Q:BUDRACE=""!(BUDQUIT)  D
 .S BUDETH="" F  S BUDETH=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH)) Q:BUDETH=""!(BUDQUIT)  D PRGRL2
 Q
PRGRL2 ;
 S BUDSTOT=0
 S BUDRACEL=$$RACEL(BUDRACE,BUDETH)
 I BUDROT="P" W !,BUDRACEL
 I BUDROT="D" D S(BUDRACEL)
 S BUDCOM="" F  S BUDCOM=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH,BUDCOM)) Q:BUDCOM=""!(BUDQUIT)  D
 .S BUDA="" F  S BUDA=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH,BUDCOM,BUDA)) Q:BUDA=""!(BUDQUIT)  D
 ..S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH,BUDCOM,BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH,BUDCOM,BUDA,BUDNAME,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D PRGRH Q:BUDQUIT  W !,BUDRACEL,!
 ....I BUDROT="P" W !?2,$E($P(^DPT(DFN,0),U,1),1,20),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCOM,1,10),?47,BUDA,!  ;
 ....I BUDROT="D" S BUDPV="",BUDPV=$E($P(^DPT(DFN,0),U,1),1,30)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCOM,1,12)_U_BUDA
 ....S BUDTOT=BUDTOT+1,BUDSTOT=BUDSTOT+1
 ....S BUDRACV=$$RACE^BUDCRPTC(DFN)
 ....I BUDROT="P" W ?2,$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3),")"  ;,?60,$E($P($$RACE^BUDCRPTC(DFN),U,3)_"-"_$P($$RACE^BUDCRPTC(DFN),U,4),1,19)
 ....I BUDROT="D" S BUDPV=BUDPV_U_$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3)_")"
 ....S BUDHISV=$$HISP^BUDCRPTC(DFN)
 ....I BUDROT="P" W ?24,$P(BUDHISV,U,3)," (",$P(BUDHISV,U,2),")",!
 ....I BUDROT="D" S BUDPV=BUDPV_U_$P(BUDHISV,U,3)_" ("_$P(BUDHISV,U,2)_")"
 ....S BUDALL=^XTMP("BUDCRP7",BUDJ,BUDH,"PRGR",BUDRACE,BUDETH,BUDCOM,BUDA,BUDNAME,DFN)
 ....S BUDPPV=$P(BUDALL,"#",1)
 ....F BUDX=1:1 S BUDV=$P(BUDPPV,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D PRGRH Q:BUDQUIT  W !,BUDRACEL,!
 .....I BUDROT="P" I $E(BUDV)="P" W ?5,BUDV,! Q
 .....I BUDROT="D" I $E(BUDV)="P" S X=BUDPV_U_BUDV D S(X) Q
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?19,C,?35,$$PRIMPROV^APCLV(V,"D"),?45,$P(^AUPNVSIT(V,0),U,7),?53,$$CLINIC^APCLV(V,"C"),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=BUDPV_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_$$PRIMPROV^APCLV(V,"D")_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"C")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 I BUDROT="P",$Y>(IOSL-4) D PRGRH Q:BUDQUIT  W !,BUDRACEL,!
 S X="Sub-Total "_BUDRACEL_":  "_BUDSTOT
 I BUDROT="P" W !,X,!
 I BUDROT="D" D S(X),S()
 Q
PRGRH ;
 I BUDROT="D" D PRGRHD Q
 G:'BUDGPG PRGRH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
PRGRH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 7, Section A",80),!,$$CTR("All Pregnant Patients by Race and Hispanic or Latino Identity",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List of all pregnant patients by race and Hispanic or Latino Identity,"
 .W !,"with most recent pregnancy related visits during the past 20 months."
 .W !,"Age is calculated as of June 30."
 .W !,"* E - denotes the value was obtained from the Ethnicity field."
 .W !,"  R - denotes the value was obtained from the Race field"
 .W !,"  C - denotes the value was obtained from the Classification/Beneficiary field"
 .W !
 W !?2,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?47,"AGE"
 W !?2,"RACE*",?24,"HISPANIC OR LATINO IDENTITY*"
 W !?5,"VISIT DATE",?19,"DX OR SVC CD",?35,"PROV TYPE",?45,"SVC CAT",?53,"CLINIC",?65,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
PRGRHD ;
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 7, Section A, All Pregnant Patients by Race and Hispanic or Latino Identity")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDCEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDCEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDCEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D S("List of all pregnant patients by race and Hispanic or Latino Identity,")
 D S("with most recent pregnancy related visits during the past 20 months.")
 D S("Age is calculated as of June 30.")
 D S("* E - denotes the value was obtained from the Ethnicity field.")
 D S("  R - denotes the value was obtained from the Race field")
 D S("  C - denotes the value was obtained from the Classification/Beneficiary field")
 D S()
 D S("PATIENT NAME^HRN^COMMUNITY^AGE^RACE*^HISPANIC OR LATINO IDENTITY^VISIT DATE^DX OR SVC CD^PROV TYPE^SVC CAT^CLINIC^LOCATION")
 Q
RACEL(R,E) ;EP
 I R=1,E=1 Q "Asian, Hispanic"
 I R=1,E=2 Q "Asian, Non-Hispanic"
 I R=2,E=1 Q "Native Hawaiian, Hispanic"
 I R=2,E=2 Q "Native Hawaiian, Non-Hispanic"
 I R=3,E=1 Q "Other Pacific Islander, Hispanic"
 I R=3,E=2 Q "Other Pacific Islander, Non-Hispanic"
 I R=4,E=1 Q "Black/African American, Hispanic"
 I R=4,E=2 Q "Black/African American, Non-Hispanic"
 I R=5,E=1 Q "American Indian/Alaska Native, Hispanic"
 I R=5,E=2 Q "American Indian/Alaska Native, Non-Hispanic"
 I R=6,E=1 Q "White, Hispanic"
 I R=6,E=2 Q "White, Non-Hispanic"
 I R=7,E=1 Q "More than one race, Hispanic"
 I R=7,E=2 Q "More than one race, Non-Hispanic"
 I R=8,E=1 Q "Unreported / Refused to Report, Hispanic"
 I R=8,E=2 Q "Unreported / Refused to Report, Non-Hispanic"
 I R=8,E=3 Q "Unreported / Refused to Report Race and Identity"
 Q "UNKNOWN"
 ;
