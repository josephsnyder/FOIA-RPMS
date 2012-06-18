APCLDE1 ; IHS/CMI/LAB - list DEPRESSION ; 
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;
 ;
INFORM ;
 W !,$$CTR($$USR)
 W !,$$LOC()
 W !!,$$CTR("TALLY AND LISTING OF PATIENTS RECEIVING DEPRESSION SCREENING, INCLUDING REFUSALS",80)
 W !!,"This report will tally and optionally list all patients who have had "
 W !,"DEPRESSION screening or a refusal documented in the time frame specified by "
 W !,"the user.  Depression Screening is defined as any of the following documented:"
 W !?5,"- Depression Screening Exam (Exam code 36)"
 W !?5,"- Measurements: PHQ2, PHQ9"
 W !?5,"- Diagnoses V79.0, 14.1 (Behavioral Health Problem Code)"
 W !?5,"- Education Topics: DEP-SCR"
 W !?5,"- refusal of exam code 36"
 W !,"This report will tally the patients by age, gender, screening exam result,"
 W !,"provider (either exam provider, if available, or primary provider on the "
 W !,"visit), clinic, date of screening, designated PCP, MH Provider, SS Provider"
 W !,"and A/SA Provider."
 W !,"  Notes:  "
 W !?10,"- the last screening/refusal for each patient is used.  If a patient"
 W !?10,"  was screened more than once in the time period, only the latest"
 W !?10,"  is used in this report."
 W !?10,"- this report will optionally, look at both PCC and the Behavioral"
 W !?10,"   Health databases for evidence of screening/refusal"
 W !?10,"- this is a tally of Patients, not visits or screenings"
 W !
 D PAUSE^APCLVL01
 D XIT
 S APCLEXC=$O(^AUTTEXAM("C",36,0))
 I 'APCLEXC W !!,"Exam code 36 is missing from the EXAM table.  Cannot run report.",! H 3 D XIT Q
 ;
DATES K APCLED,APCLBD
 W !,"Please enter the date range during which the screening was done.",!,"To get all screenings ever put in a long date range like 01/01/1980 ",!,"to the present date.",!
 K DIR W ! S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Date for Screening"
 D ^DIR Q:Y<1  S APCLBD=Y
 K DIR S DIR(0)="DO^:DT:EXP",DIR("A")="Enter Ending Date for Screening"
 D ^DIR Q:Y<1  S APCLED=Y
 ;
 I APCLED<APCLBD D  G DATES
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 ;
TALLY ;which items to tally
 K APCLTALL
 W !!,"Please select which items you wish to tally on this report:",!
 W !?3,"0)  Do not include any Tallies",?40,"6)  Date of Screening"
 W !?3,"1)  Type/Result of Screening",?40,"7)  Primary Provider on Visit"
 W !?3,"2)  Gender",?40,"8)  Designated Primary Care Provider"
 W !?3,"3)  Age of Patient"  ;,?40,"9)  Designated SS Provider (BH)"
 W !?3,"4)  Provider who Screened"  ;,?40,"10) Designated ASA/CD Provider (BH)"
 W !?3,"5)  Clinic",?40  ;,"11) Designated Primary Care Provider"
 K DIR S DIR(0)="L^0:8",DIR("A")="Which items should be tallied",DIR("B")="" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 I Y="" G DATES
 S APCLTALL=Y
 S A=Y,C="" F I=1:1 S C=$P(A,",",I) Q:C=""  S APCLTALL(C)=""
EXCL ;
 S APCLEXPC=""
 W !!,"Would you like to include screenings recorded in the Behavioral Clinics"
 W !,"Mental Health (14); DEPRESSION and Substance Abuse (43), Medical Social"
 S DIR(0)="Y",DIR("A")="Services, Behavioral Health (C4) and Telebehavioral Health (C9): ",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 S APCLEXPC=Y
LIST ;
 S APCLLIST=""
 W !
 S DIR(0)="Y",DIR("A")="Would you like to include a list of patients screened",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 S APCLLIST=Y
 I 'APCLLIST G ZIS
LIST1 ;
 S APCLSORT=""
 W !
 S DIR(0)="S^H:Health Record Number;N:Patient Name;P:Provider who screened;C:Clinic;R:Result of Exam;D:Date Screened;A:Age of Patient at Screening;G:Gender of Patient;T:Terminal Digit HRN"
 S DIR("A")="How would you like the list to be sorted",DIR("B")="H"
 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G LIST
 S APCLSORT=Y
DP ;
 S APCLDP=""
 W !
 S DIR(0)="Y",DIR("A")="Display the Patient's Designated Providers on the list",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G LIST
 S APCLDP=Y
ZIS ;
 S XBRP="PRINT^APCLDE1P",XBRC="PROC^APCLDE1",XBRX="XIT^APCLDE1",XBNS="APC"
 D ^XBDBQUE
 D XIT
 Q
XIT ;
 D EN^XBVK("APC")
 D ^XBFMK
 Q
PROC ;
 S APCLCNT=0
 S APCLH=$H,APCLJ=$J
 K ^XTMP("APCLDE1",APCLJ,APCLH)
 D XTMP^APCLOSUT("APCLDE1","DEPRESSION SCREENING REPORT")
 ;now go through BH
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .;Q:'$$ALLOWP^APCUTIL(DUZ,DFN)  ;allowed to see this patient?
 .S APCALSC="" I APCLEXPC S APCALSC=$$BHALCS(DFN,APCLBD,APCLED),APCPFI="BH"  ;include refusals
 .S APCPCALS=""  S APCPCALS=$$PCCALCS(DFN,APCLBD,APCLED)  ;include refusals
 .I $P(APCPCALS,U,1)>$P(APCALSC,U,1) S APCALSC=APCPCALS,APCPFI="PCC"
 .S APCLEFS="" S APCLEFS=$$REFUSAL(DFN,9999999.15,$O(^AUTTEXAM("C",36,0)),APCLBD,APCLED)
 .I $P(APCLEFS,U,1)>$P(APCALSC,U,1) S APCALSC=APCLEFS,APCPFI="PCC"
 .I APCALSC="" Q  ;no screeningsI APCALSC="" Q  ;no screenings
 .S ^XTMP("APCLDE1",APCLJ,APCLH,"PTS",DFN)=APCALSC,$P(^XTMP("APCLDE1",APCLJ,APCLH,"PTS",DFN),U,20)=APCPFI
 Q
 ;
BHPPNAME(R) ;EP primary provider internal # from 200
 NEW %,%1
 S %=0,%1="" F  S %=$O(^AMHRPROV("AD",R,%)) Q:%'=+%  I $P(^AMHRPROV(%,0),U,4)="P" S %1=$P(^AMHRPROV(%,0),U),%1=$P($G(^VA(200,%1,0)),U)
 I %1]"" Q %1
 Q "UNKNOWN"
SPRV(E) ;
 I $P($G(^AUPNVXAM(E,12)),U,4) Q $$VAL^XBDIQ1(9000010.13,E,1204)
 Q "UNKNOWN"
PRVREF(R) ;
 I $P($G(^AUPNPREF(R,12)),U,4)]"" Q $$VAL^XBDIQ1(9000022,R,1204)
 Q "UNKNOWN"
PPV(V) ;
 NEW %
 S %=$$PRIMPROV^APCLV(V)
 I %]"" Q %
 Q "UNKNOWN"
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:IO'=IO(0)
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 W !
 S DIR("A")="End of Report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
BHALCS(P,BDATE,EDATE) ;EP - pass back last BH screening
 I '$G(P) Q ""
 I '$G(BDATE) Q ""
 I '$G(EDATE) Q ""
 ;loop through all of this patient's visits in date range
 NEW SDATE,X,V,D,R,M,E
 S R=""
 S SDATE=9999999-$$FMADD^XLFDT(EDATE,1),SDATE=SDATE_".9999"
 F  S SDATE=$O(^AMHREC("AE",P,SDATE)) Q:SDATE'=+SDATE!($P(SDATE,".")>EDATE)!(R]"")  D
 .S V=0 F  S V=$O(^AMHREC("AE",P,SDATE,V)) Q:V'=+V!(R]"")  D
 ..Q:'$D(^AMHREC(V,0))
 ..;Q:'$$ALLOWVI^APCUTIL(DUZ,V)
 ..;get measurements 
 ..S X=0 F  S X=$O(^AMHRMSR("AD",V,X)) Q:X'=+X!(R]"")  D
 ...S M=$$VAL^XBDIQ1(9002011.12,X,.01)
 ...I M="PHQ2"!(M="PHQ9") S R=$$BHRT(V,M,$P(^AMHRMSR(X,0),U,4),P,$$VALI^XBDIQ1(9002011.12,X,1204))
 ..I R]"" Q
 ..;get exam
 ..S E=$P($G(^AMHREC(V,14)),U,5)
 ..I E]"" S R=$$BHRT(V,"DEPRESSION SCREENING",$$VAL^XBDIQ1(9002011,V,1405),P,$P($G(^AMHREC(V,14)),U,6),$P($G(^AMHREC(V,17)),U,1))
 ..I R]"" Q
 ..S X=0 F  S X=$O(^AMHRPRO("AD",V,X)) Q:X'=+X!(R]"")  D
 ...S M=$$VAL^XBDIQ1(9002011.01,X,.01)
 ...I M="14.1"!(M="V79.0") S R=$$BHRT(V,M,"",P,$$VALI^XBDIQ1(9002011.01,X,1204))
 ..I R]"" Q
 ..S X=0 F  S X=$O(^AMHREDU("AD",V,X)) Q:X'=+X!(R]"")  D
 ...S M=$$VAL^XBDIQ1(9002011.05,X,.01)
 ...I M="DEP-SCR" S R=$$BHRT(V,M,"",P,$$VALI^XBDIQ1(9002011.05,X,.04),$P($G(^AMHREDU(V,11)),U,1))
 ..I R]"" Q
 Q R
BHRT(V,TYPE,RES,PAT,PROVSCRN,COMMENT) ;EP
 S PROVSCRN=$G(PROVSCRN)
 S COMMENT=$G(COMMENT)
 NEW T,D
 S (D,T)=$P($P(^AMHREC(V,0),U),".")
 S $P(T,U,2)=TYPE_";"_RES
 S $P(T,U,3)=$P(^DPT(PAT,0),U,2)
 S $P(T,U,4)=$$AGE^AUPNPAT(PAT,D)
 S $P(T,U,5)=$S($G(PROVSCRN)]"":$P(^VA(200,PROVSCRN,0),U),1:"UNKNOWN")
 S $P(T,U,6)=$$VAL^XBDIQ1(9002011,V,.25)
 S $P(T,U,7)=$$BHPPNAME(V)
 S $P(T,U,8)=$$VAL^XBDIQ1(9002011.55,PAT,.02)
 S $P(T,U,9)=$$VAL^XBDIQ1(9002011.55,PAT,.03)
 S $P(T,U,10)=$$VAL^XBDIQ1(9002011.55,PAT,.04)
 S $P(T,U,11)=$$VAL^XBDIQ1(9000001,PAT,.14)
 S $P(T,U,13)=V
 S $P(T,U,12)=COMMENT
 S $P(T,U,15)=PAT
 S $P(T,U,20)="BH"
 Q T
 ;
PCCALCS(P,BDATE,EDATE) ;EP - get  screening from pcc
 I '$G(P) Q ""
 I '$G(BDATE) Q ""
 I '$G(EDATE) Q ""
 NEW T
 ;S T=$$LASTALC^APCAPI(P,BDATE,EDATE,"A")
 NEW R,V,APCLDATE,SDATE
 S R=""
 S SDATE=9999999-$$FMADD^XLFDT(EDATE,1),SDATE=SDATE_".9999"
 F  S SDATE=$O(^AUPNVSIT("AA",P,SDATE)) Q:SDATE'=+SDATE!($P(SDATE,".")>(9999999-BDATE))!(R]"")  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,SDATE,V)) Q:V'=+V!(R]"")  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..;Q:'$$ALLOWPCC^APCUTIL(DUZ,V)
 ..S APCLDATE=$P($P(^AUPNVSIT(V,0),U),".")
 ..S DFN=$P(^AUPNVSIT(V,0),U,5)
 ..Q:DFN=""
 ..;Q:'$$ALLOWP^APCUTIL(DUZ,DFN)
 ..I 'APCLEXPC S C=$$CLINIC^APCLV(V,"C") I C=14!(C=43)!(C=48)!(C="C4")!(C="C9") Q
 ..I APCLEXPC,$D(^AHHREC("AVISIT",V)) Q  ;in BH module so already got it
 ..S R=$$PCCSCR^APCLDE2(V)
 Q R
REFUSAL(PAT,F,I,B,E) ;EP
 I '$G(PAT) Q ""
 I '$G(F) Q ""
 I '$G(I) Q ""
 I $G(B)="" Q ""
 I $G(E)="" Q ""
 NEW T,X,Y,%DT S X=B,%DT="P" D ^%DT S B=Y
 S T=""
 S X=E,%DT="P" D ^%DT S E=Y
 S (X,T)="" F  S X=$O(^AUPNPREF("AA",PAT,F,I,X)) Q:X'=+X!(T]"")  S Y=0 F  S Y=$O(^AUPNPREF("AA",PAT,F,I,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<B&(D'>E) D
 .S T=D
 .S $P(T,U,2)="REFUSED;"_$$VAL^XBDIQ1(9000022,Y,.07)
 .S $P(T,U,3)=$P(^DPT(PAT,0),U,2)
 .S $P(T,U,4)=$$AGE^AUPNPAT(PAT,D)
 .S $P(T,U,5)=$$VAL^XBDIQ1(9000022,Y,1204) I $P(T,U,5)="" S $P(T,U,5)="UNKNOWN"
 .S $P(T,U,6)="UNKNOWN"
 .S $P(T,U,7)="UNKNOWN"
 .S $P(T,U,8)=$$VAL^XBDIQ1(9002011.55,PAT,.02)
 .S $P(T,U,9)=$$VAL^XBDIQ1(9002011.55,PAT,.03)
 .S $P(T,U,10)=$$VAL^XBDIQ1(9002011.55,PAT,.04)
 .S $P(T,U,11)=$$VAL^XBDIQ1(9000001,PAT,.14)
 Q T
PCCV(S,PAT) ;EP
 NEW T
 S T=""
 S $P(T,U)=$P(S,U)
 S $P(T,U,2)=$P(S,U,2)_";"_$P(S,U,3)
 S $P(T,U,3)=$P(^DPT(PAT,0),U,2)
 S $P(T,U,4)=$$AGE^AUPNPAT(PAT,$P(S,U))
 S $P(T,U,5)=$$SCRNPCC(S)
 S $P(T,U,6)=$$VAL^XBDIQ1(9000010,$P(S,U,4),.08)
 S $P(T,U,7)=$$PRIMPROV^APCLV($P(S,U,4),"N")
 S $P(T,U,8)=$$VAL^XBDIQ1(9002011.55,PAT,.02)
 S $P(T,U,9)=$$VAL^XBDIQ1(9002011.55,PAT,.03)
 S $P(T,U,10)=$$VAL^XBDIQ1(9002011.55,PAT,.04)
 S $P(T,U,11)=$$VAL^XBDIQ1(9000001,PAT,.14)
 S $P(T,U,14)=$P(S,U,4)
 S $P(T,U,15)=PAT
 S $P(T,U,20)="PCC"
 Q T
SCRNPCC(T) ;get screening provider based on v file
 NEW S,F
 S F=1202
 I $P(T,U,5)=9000010.16!($P(T,U,5)=9000010.23) S F=".05"
 S S=$$VAL^XBDIQ1($P(T,U,5),$P(T,U,6),F)
 I S]"" Q S
 Q "UNKNOWN"
