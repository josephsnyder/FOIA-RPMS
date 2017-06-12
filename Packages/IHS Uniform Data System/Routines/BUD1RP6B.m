BUD1RP6B ; IHS/CMI/LAB - UDS REPORT DRIVER TABLE 6B ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
T6B ;
 D EOJ
EN ;
 D GENI
 D T6BI
 D PAUSE
 D PRENATT
 D PAUSE
 ;
EN1 ;EP
PNC ;
 S BUDPREN=""
 S DIR(0)="Y",DIR("A")="Does your facility provide prenatal care",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 S BUDPREN=Y
 ;
EN2 ;
 S BUDSITE=""
 S DIC="^BUDLSITE(",DIC(0)="AEMQ",DIC("A")="Enter your site: " D ^DIC
 I Y=-1 G PNC
 S BUDSITE=+Y
 I '$O(^BUDLSITE(BUDSITE,11,0)) W !!,"Warning:  There are no locations defined in the site parameter file for this",!,"site.  Report will not be accurate!" G EN
 S BUDTAXT="B6" D TAXCHK^BUD1XTCH
 D YEAR
 I BUDYEAR="" D EOJ Q
 W !!,"Your report will be run for the time period: ",$$FMTE^XLFDT(BUDBD)," to ",$$FMTE^XLFDT(BUDED)
 ;get indian or not
 S BUDBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01)",DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"Classification not entered." D EOJ Q
 S BUDBEN=Y
ZIS ;call to XBDBQUE
 K IOP,%ZIS
 W !! S %ZIS="PQM" D ^%ZIS
 I POP D EOJ Q
ZIS1 ;
 I $D(IO("Q")) G TSKMN
DRIVER ;
 D PROC
 U IO
 D PRINT
 D ^%ZISC
 D EOJ
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BUD*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BUD1RP6B",ZTDTH="",ZTDESC="UDS 11 REPORT TABLE 6B" D ^%ZTLOAD D EOJ Q
 Q
EOJ ;
 D EN^XBVK("BUD")
 Q
PAPLIST1 ;EP
 D EOJ
 S BUDPAP1L=1
 D PAP1^BUD1RP6P
 G EN1
 ;
PAPLIST2 ;EP
 D EOJ
 S BUDPAP2L=1
 D PAP2^BUD1RP6P
 G EN1
IMMLIST1 ;EP
 D EOJ
 S BUDIMM1L=1
 D IMM1^BUD1RP6I
 G EN1
IMMLIST2 ;EP
 D EOJ
 S BUDIMM2L=1
 D IMM2^BUD1RP6I
 G EN1
PRGA ;EP
 D EOJ
 S BUDPRGAL=1
 D PRGA^BUD1RP6I
 G EN1
 ;
M ;EP - called from option
 D EOJ
 D GENI^BUD1RP6I
 S (BUDIMM1L,BUDIMM2L,BUDPAP1L,BUDPAP2L,BUDPRGAL)=0
 W !!,"UDS Table 6B List Selection"
 W !!?2,"1  All Pregnant Patients by Age"
 W !?2,"2  All Patients Age 2 w/All Child Immunizations"
 W !?2,"3  All Patients Age 2 w/o All Child Immunizations"
 W !?2,"4  All Female Patients w/Pap Test"
 W !?2,"5  All Female Patients w/o Pap Test"
 W !?2,"6  All Patients 2-17 w/Weight Assessment and Counseling"
 W !?2,"7  All Patients 2-17 w/o Weight Assessment and Counseling"
 W !?2,"8  All Patients 18 & older w/BMI who were over/underweight w/follow-up plan"
 W !?2,"9  All Patients 18 & older w/o BMI or does not have a follow-up plan"
 W !?2,"10 All Patients 18 & older w/tobacco use assessment"
 W !?2,"11 All Patients 18 & older w/o tobacco use assessment"
 W !?2,"12 All Patients 18 & older smokers or tobacco users w/Cessation Intervention"
 W !?2,"13 All Patients 18 & older smokers or tobacco users w/o Cessation Intervention"
 W !?2,"14 All Asthma patients 5-40 years of age w/Preferred Asthma Therapy Medication"
 W !?2,"15 All Asthma patients 5-40 years of age w/o Preferred Asthma Therapy Med"
 W !?2,"16 ALL Patient Lists for LST2 (Table 6B)"
 S DIR(0)="L^1:16",DIR("A")="Include which Tables",DIR("B")=1 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 F X=1:1 S Z=$P(Y,",",X) Q:Z=""  D
 .I Z=16 S (BUDIMM1L,BUDIMM2L,BUDPAP1L,BUDPAP2L,BUDPRGAL,BUDWAC1L,BUDWAC2L,BUDAWS1L,BUDAWS2L,BUDTUA1L,BUDTUA2L,BUDTCI1L,BUDTCI2L,BUDAPT1L,BUDAPT2L)=1
 .I Z=1 S BUDPRGAL=1
 .I Z=2 S BUDIMM1L=1
 .I Z=3 S BUDIMM2L=1
 .I Z=4 S BUDPAP1L=1
 .I Z=5 S BUDPAP2L=1
 .I Z=6 S BUDWAC1L=1
 .I Z=7 S BUDWAC2L=1
 .I Z=8 S BUDAWS1L=1
 .I Z=9 S BUDAWS2L=1
 .I Z=10 S BUDTUA1L=1
 .I Z=11 S BUDTUA2L=1
 .I Z=12 S BUDTCI1L=1
 .I Z=13 S BUDTCI2L=1
 .I Z=14 S BUDAPT1L=1
 .I Z=15 S BUDAPT2L=1
 G EN1
PROC ;EP - called from taskman
 S BUDJ=$J,BUDH=$H
 S ^XTMP("BUD1RP6B",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^BUD TABLE 6B LISTS"
 ;NOW LOOP PATS
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .;Q:'$D(^DIBT(4751,1,DFN))
 .;;I DUZ=5634 Q:DFN'=16126
 .;;I DUZ=5634 Q:$$HRN^AUPNPAT(DFN,DUZ(2))'=182140
 .;;I DUZ=5634 Q:'$D(^DIBT(4840,1,DFN))
 .K ^TMP($J)
 .Q:'$D(^AUPNPAT(DFN,0))
 .Q:'$D(^DPT(DFN,0))
 .Q:$P(^DPT(DFN,0),U,19)  ;merged away
 .Q:$P(^DPT(DFN,0),U,1)["DEMO,PATIENT"
 .Q:$P(^DPT(DFN,0),U,1)["PATIENT,CRS"
 .Q:$P(^DPT(DFN,0),U,1)["PATIENT,UDS"
 .Q:$$DEMO^BUD1DU(DFN,"E")
 .;DO NOT COUNT BASED ON CLASSIFICATION IN V6.0
 .I BUDBEN=1,$$BEN^AUPNPAT(DFN,"C")'="01" Q  ;must be Indian/Alaskan Native
 .I BUDBEN=2,$$BEN^AUPNPAT(DFN,"C")="01" Q  ;must not be I/A
 .S C=$$COMMRES^AUPNPAT(DFN,"E")
 .S BUDSEX=$P(^DPT(DFN,0),U,2)
 .S BUDCOM=$$COMMRES^AUPNPAT(DFN,"E") I BUDCOM="" S BUDCOM="UNKNOWN"
 .S BUDAGE=$$AGE^AUPNPAT(DFN,BUDED)  ;age at end of time period
 .S BUDAGEP=$$AGE^AUPNPAT(DFN,BUDCAD)  ;age on june 30 for pregnancy 
 .D GETV^BUD1RPTD  ;get visits that meet criteria
 .I BUDT35V=0 Q  ;user doesn't have any countable visits
 .I $G(BUDPRGAL) D PRGALST
 .D IMM^BUD1RP6C
 .D PAPD^BUD1RP6D
 .D ADOLWT^BUD1RP6V
 .D ADULT^BUD1RP6V
 .D G1^BUD1RP6V
 .D G2^BUD1RP6U
 .D H^BUD1RP6U
 Q
PRGALST ;EP - list of pregnant females
 ;is patient pregnant during the time period BUDBD and BUDED
 Q:BUDSEX'="F"
 S BUDP=$$PREG(DFN,$$FMADD^XLFDT(BUDED,-609),BUDED)
 I '$P(BUDP,U) Q  ;not pregnant
 S X=$$AGB(BUDAGEP)
 S ^XTMP("BUD1RP6B",BUDJ,BUDH,"PRGA",X,BUDAGEP,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDP,"*",2)
 Q
AGB(N) ;
 I N<15 Q "Less than 15 Years"
 I N>14,N<20 Q "Ages 15-19"
 I N>19,N<25 Q "Ages 20-24"
 I N>24,N<45 Q "Ages 25-44"
 Q "Ages 45 and Over"
PREG(P,BDATE,EDATE,NORXCHR) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL,BUDA
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 S NORXCHR=$G(NORXCHR)
 K BUDG
 S Y="BUDG("
 S X=P_"^ALL DX [BGP GPRA PREGNANCY DIAGNOSES;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 ;now reorder by date of diagnosis and eliminate all chr and rx if necessary
 ;I '$D(BUDG) G PROB  ;no diagnoses
 ;unduplicate by date
 S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDA($P(BUDG(X),U,1))=BUDG(X)
 K BUDG
 M BUDG=BUDA
 S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  D
 .;get date
 .S D=$P(BUDG(X),U,1)
 .S C=$$CLINIC^APCLV($P(BUDG(X),U,5),"C")
 .I NORXCHR,C=39 Q
 .S C=$$PRIMPROV^APCLV($P(BUDG(X),U,5),"D")
 .I NORXCHR,C=53 Q  ;no chr as primary provider
 .S V=$P(BUDG(X),U,5)
 .S BUDDX(D)="",CNT=CNT+1,BUDALL=BUDALL_V_"|"_$P(BUDG(X),U,2)_U I CNT=2 S BUDD=D
 .I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q
 I CNT>1,B G MA
 I 'B Q 0  ;no visit during time period
PROB S T=$O(^ATXAX("B","BGP GPRA PREGNANCY DIAGNOSES",0))
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G=0,BUDD="" Q 0  ;no dxs and no problem list
 S BUDD=G,BUDALL=BUDALL_"Problem List: "_$$VAL^XBDIQ1(9000011,Z,.01)_" on "_$$DATE^BUD1UTL1(G)
MA ;now check for abortion or miscarriage
 ;abortion first
 K BUDG S Y="BUDG(" S X=P_"^LAST DX [BGP MISCARRIAGE/ABORTION DXS;DURING "_$$FMTE^XLFDT(BUDD)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 0  ;HAD MIS/AB
 S BUDG=$$LASTPRC^BUD1UTL1(P,"BGP ABORTION PROCEDURES",BDATE,EDATE)
 I BUDG Q 0
 S T=$O(^ATXAX("B","BGP MISCARRIAGE/ABORTION DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:$P(^AUPNPROB(X,0),U,8)<BUDD
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=1
 .Q
 I G Q 0
 ;now check CPTs for Abortion and Miscarriage
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$CPT^BUD1DU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$CPT^BUD1DU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$TRAN^BUD1DU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$TRAN^BUD1DU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 Q 1_"*"_BUDALL
 ;
PRINT ;EP - called from taskman
 S BUDPG=0
 S BUDQUIT=0
 S BUD80L="",$P(BUD80L,"_",79)="_"
 D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W !!,"(NO PRENATAL CARE PROVIDED?  CHECK HERE:  "_$S(BUDPREN=0:"X",1:""),")",!
 D LINE
 W $$CTR("SECTION A:  AGE CATEGORIES FOR PRENATAL PATIENTS"),!
 W $$CTR("(GRANTEES WHO PROVIDE PRENATAL CARE ONLY)"),!
 D LINE
 W $$CTR("DEMOGRAPHIC CHARACTERISTICS OF PRENATAL CARE PATIENTS"),!
 D LINE
 W ?20,"AGE",?45,"|",?50,"NUMBER OF PATIENTS (a)",!
 D LINE1
 W ?2,"1",?5,"LESS THAN 15 YEARS",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),!
 D LINE1
 W ?2,"2",?5,"AGES 15-19",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),!
 D LINE1
 I $Y>(IOSL-3) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W ?2,"3",?5,"AGES 20-24",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),! D LINE1
 I $Y>(IOSL-3) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W ?2,"4",?5,"AGES 25-44",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),! D LINE1
 I $Y>(IOSL-3) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W ?2,"5",?5,"AGES 45 AND OVER",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),! D LINE1
 I $Y>(IOSL-3) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W ?2,"6",?5,"TOTAL PATIENTS (SUM LINES 1-5)",?45,"|",?58,$S(BUDPREN:"",1:"N/A"),! D LINE1
 I $Y>(IOSL-12) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W !,$$CTR("SECTION B - TRIMESTER OF ENTRY INTO PRENATAL CARE"),! D LINE
 W "TRIMESTER OF FIRST KNOWN VISIT",?37,"|",?40,"WOMEN HAVING",?60,"|",?63,"WOMEN HAVING",!
 W "FOR WOMEN RECEIVING PRENATAL",?37,"|",?40,"FIRST VISIT WITH",?60,"|",?63,"FIRST VISIT WITH",!
 W "CARE DURING REPORTING YEAR",?37,"|",?40,"   GRANTEE",?60,"|",?63,"ANOTHER PROVIDER",!
 W ?37,"|",?45,"(a)",?60,"|",?68,"(b)",!
 D LINE2
 W ?2,7,?5,"First Trimester",?37,"|",?45,$S(BUDPREN:"",1:"N/A"),?60,"|",?68,$S(BUDPREN:"",1:"N/A"),! D LINE2
 W ?2,8,?5,"Second Trimester",?37,"|",?45,$S(BUDPREN:"",1:"N/A"),?60,"|",?68,$S(BUDPREN:"",1:"N/A"),! D LINE2
 W ?2,9,?5,"Third Trimester",?37,"|",?45,$S(BUDPREN:"",1:"N/A"),?60,"|",?68,$S(BUDPREN:"",1:"N/A"),! D LINE2
 ;
 D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION C - CHILDHOOD IMMUNIZATION"),!
 D LINE
 W "CHILDHOOD IMMUNIZATION",?23,"|",?26,"TOTAL NUMBER",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"NUMBER OF",!
 W ?23,"|",?26,"PATIENTS WITH 2ND",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PATIENTS",!
 W ?23,"|",?26,"BIRTHDAY DURING",?45,"|",?47,"TOTAL",?65,"|",?67,"IMMUNIZED",!
 W ?23,"|",?26,"MEASUREMENT YEAR",?45,"|",?47,"",?65,"|",?67,"",!
 W ?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"10",?5,"Children who have",?23,"|",?45,"|",?65,"|",!
 W ?5,"received age",?23,"|",?45,"|",?65,"|",!
 W ?5,"appropriate",?23,"|",?45,"|",?65,"|",!
 W ?5,"vaccines who",?23,"|",?45,"|",?65,"|",!
 W ?5,"had their 2nd",?23,"|",?30,$$C($G(BUDSECTC("PTS"))),?45,"|",?50,$$C($G(BUDSECTC("PTS"))),?65,"|",?70,$$C($G(BUDSECTC("IMM"))),!
 W ?5,"birthday during",?23,"|",?45,"|",?65,"|",!
 W ?5,"measurement year",?23,"|",?45,"|",?65,"|",!
 W ?5,"(on or prior to",?23,"|",?45,"|",?65,"|",!
 W ?5,"31 December)",?23,"|",?45,"|",?65,"|",!
 D LINE
 I $Y>(IOSL-20) D HEADER^BUD1RPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION D - CERVICAL CANCER SCREENING"),!
 D LINE
 W "PAP TESTS",?23,"|",?26,"TOTAL NUMBER",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"NUMBER OF",!
 W ?23,"|",?26,"OF FEMALE PATIENTS",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PATIENTS",!
 W ?23,"|",?26,"24-64 YEARS OF AGE",?45,"|",?47,"TOTAL",?65,"|",?67,"TESTED",!
 W ?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"11",?5,"Female patients",?23,"|",?45,"|",?65,"|",!
 W ?5,"aged 24-64 who",?23,"|",?45,"|",?65,"|",!
 W ?5,"received one or",?23,"|",?45,"|",?65,"|",!
 W ?5,"more Pap tests",?23,"|",?30,$$C($G(BUDSECTD("PTS"))),?45,"|",?50,$$C($G(BUDSECTD("PTS"))),?65,"|",?70,$$C($G(BUDSECTD("PAP"))),!
 W ?5,"to screen for",?23,"|",?45,"|",?65,"|",!
 W ?5,"cervical cancer",?23,"|",?45,"|",?65,"|",!
 D LINE
 D REST6B^BUD1RP6E
 D LISTS^BUD1RP6I
 K ^XTMP("BUD1RP6B",BUDJ,BUDH)
 Q
T6BH ;
 W !,$$CTR("TABLE 6B - QUALITY OF CARE INDICATORS"),!,$$REPEAT^XLFSTR("_",79),!
 Q
LINE ;
 W $$REPEAT^XLFSTR("_",79),!
 Q
LINE1 ;
 W $$REPEAT^XLFSTR("_",45),"|",$$REPEAT^XLFSTR("_",33),!
 Q
LINE2 ;
 W $$REPEAT^XLFSTR("_",37),"|",$$REPEAT^XLFSTR("_",22),"|",$$REPEAT^XLFSTR("_",18),!
 Q
LINE3 ;
 W $$REPEAT^XLFSTR("_",23),"|",$$REPEAT^XLFSTR("_",21),"|",$$REPEAT^XLFSTR("_",19),"|",$$REPEAT^XLFSTR("_",13),!
 Q
T6BI ;
 W !!,"TABLE 6B:  QUALITY OF CARE INDICATORS"
 W !,"This report will produce UDS Table 6B, quality of care indicators"
 W !,"for prenatal care, childhood immunizations and Pap tests.  Patients"
 W !,"must meet additional criteria as specified for each indicator."
 Q
GENI ;general introductions
 W:$D(IOF) @(IOF)
 W !!,$$CTR($$LOC,80),!,$$CTR("UDS 2011",80),!
 W !,"UDS searches your database to find all patients reported for the quality"
 W !,"of care indicators during the time period January 1 - "
 W !,"December 31, 2011.  Based on the UDS defintion, to be considered a"
 W !,"patient, the patient must have had at least one visit meeting the"
 W !,"following criteria:"
 W !?4,"- must be to a location specified in your visit location setup"
 W !?4,"- must be to Service Category Ambulatory (A), Hospitalization (H), Day"
 W !?6,"Surgery (S), Observation (O), Telemedicine (M), Nursing home visit (R), "
 W !?6,"or In-Hospital (I) visit"
 W !?4,"- must NOT have an excluded clinic code (see User Manual for a list)"
 W !?4,"- must have a primary provider and a coded purpose of visit"
 W !
 Q
 ;
PRENATT ;EP
 D PRENATT^BUD1RP6I
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
NRY ;
 W !!,"not developed yet....." H 3
 Q
PAUSE ;
  K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
  Q
C(X,Y) ;
 I $G(Y)=1,+X=0 Q ""
 I $G(Y)=2 Q "********"
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
YEAR ;
 S BUDYEAR=""
 W !
 W !,"Enter the Calendar Year.  Use a 4 digit year, e.g. 2003, 2007"
 S DIR(0)="D^::EP"
 S DIR("A")="Enter Calendar Year"
 S DIR("?")="This report is compiled for a period.  Enter a valid date."
 D ^DIR KILL DIR
 K DIC
 I $D(DUOUT) S DIRUT=1 Q
 I $D(DIRUT) Q
 I $E(Y,4,7)'="0000" W !!,"Please enter a year only!",! G YEAR
 S BUDYEAR=Y,BUDBD=$E(BUDYEAR,1,3)_"0101",BUDED=$E(BUDYEAR,1,3)_"1231"
 S BUDCAD=$E(BUDYEAR,1,3)_"0630"
 Q
