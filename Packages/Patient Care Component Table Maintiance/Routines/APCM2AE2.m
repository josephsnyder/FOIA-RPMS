APCM2AE2 ; IHS/CMI/LAB - IHS MU ;
 ;;1.0;MU PERFORMANCE REPORTS;**7**;MAR 26, 2012;Build 15
 ;;;;;;Build 3
DEMO ;EP - CALCULATE DEMOGRAPHICS
 ;for each provider or for the facility find out if this
 ;patient had a visit of A, O, R, S to this provider or facility
 ;if so, then check to see if they had dob, preferred language, gender, race, ethnicity recorded
 NEW APCMP
 S (APCMD1,APCMN1)=0
 I APCMRPTT=1 D  Q
 .S APCMP=0 F  S APCMP=$O(APCMPRV(APCMP)) Q:APCMP'=+APCMP  D
 ..Q:'$D(APCMHVTP(APCMP))  ;DID NOT SEE THIS PATIENT
 ..D DEMO1
 I APCMRPTT=2 D
 .S APCMP=APCMFAC
 .Q:'$D(APCMHVTP(APCMP))
 .D DEMO1
 .Q
 Q
DEMO1 ;set denominator value into field
 S F=$P(^APCM25OB(APCMIC,0),U,8)  ;denom field for this measure
 D S^APCM2AE1(APCMRPT,APCMIC,1,APCMP,APCMRPTT,APCMTIME,F)
 S APCMVALU="VISIT: "_$$DATE^APCM1UTL(APCMHVTP(APCMP))
 ;numerator?
 S APCMEP=$$HASDEMO(DFN,APCMBDAT,APCMEDAT,APCMRPTT,$G(APCMVDOD))
 S APCMVALU=APCMVALU_"|||"_$S($P(APCMEP,U,1)=1:"MEETS OBJECTIVE: ",1:"DOES NOT MEET OBJECTIVE: ")_$P(APCMEP,U,2)_"|||"_$P(APCMEP,U,1)
 S F=$P(^APCM25OB(APCMIC,0),U,9)
 D S^APCM2AE1(APCMRPT,APCMIC,$P(APCMEP,U,1),APCMP,APCMRPTT,APCMTIME,F)
 D SETLIST^APCM2AE1
 Q
HASDEMO(P,BD,ED,T,DODV) ;
 NEW PL,G,R,E,D,C,Y,X,B,Z
 S C=0
 S T=$G(T)
 S DODV=$G(DODV)
 S (PL,G,R,E,D)=""
 ;preferred language
 S X=0 F  S X=$O(^AUPNPAT(P,86,X)) Q:X'=+X!(PL]"")  D
 .S B=$P(^AUPNPAT(P,86,X,0),U)
 .;Q:B>ED
 .S C=C+1,PL="Preferred Language"
 S G=$P(^DPT(P,0),U,2) I G]"" S C=C+1,G="Gender"
 I $T(RACE^AGUTL)]"" S R=$$RACE^AGUTL(P)
 I R S C=C+1,R="Race" I 1
 E  S R=$$VAL^XBDIQ1(2,P,.06) I R]"" S C=C+1,R="Race"
 S Z=0 F  S Z=$O(^DPT(P,.06,Z)) Q:Z'=+Z!(E]"")  D
 .S E=$P($G(^DPT(P,.06,Z,0)),U,1)
 .Q:E=""
 .S E="Ethnicity",C=C+1
 .Q
 I $P(^DPT(P,0),U,3)]"" S D="DOB",C=C+1
 I T=2,$G(DODV) G HASDEMOH
 I C=5 Q 1_U_"Has: "_PL_";"_G_";"_R_";"_E_";"_D
 Q 0_U_"Has: "_PL_";"_G_";"_R_";"_E_";"_D
HASDEMOH ;did patient die in the hospital during report period?  if so is dod and underlying cause there?
 NEW VDOD,L,PCD
 S PCD=""
 S VDOD=$$DATE^APCM1UTL($P($P(^AUPNVINP(DODV,0),U,1),"."))
 I VDOD]"" S C=C+1,VDOD="DIED IN HOSP "_VDOD
 S L=$$VAL^XBDIQ1(9000010.02,DODV,2101)
 I L]"" S C=C+1,PCD="PCD"
 I C=7 Q 1_U_"Has: "_PL_";"_G_";"_R_";"_E_";"_D_";"_VDOD_";"_PCD
 Q 0_U_"Has: "_PL_";"_G_";"_R_";"_E_";"_D_";"_VDOD_";"_PCD
 ;
PL ;EP - CALCULATE PROBLEM LIST
 ;for each provider or for the facility find out if this
 ;patient had a visit of A, O, R, S to this provider or facility
 ;if so, then check to see if they any problems on their problem list (skip deleted) or a NAP documented in report period
 NEW APCMP
 S (APCMD1,APCMN1)=0
 I APCMRPTT=1 D  Q
 .S APCMP=0 F  S APCMP=$O(APCMPRV(APCMP)) Q:APCMP'=+APCMP  D
 ..Q:'$D(APCMHVTP(APCMP))  ;no visits to this provider for this patient so don't bother, the patient is not in the denominator
 ..D PL1
 ..Q
 I APCMRPTT=2 D
 .S APCMP=APCMFAC
 .Q:'$D(APCMHVTP(APCMP))
 .D PL1
 .Q
 Q
PL1 ;set denominator value into field
 S F=$P(^APCM25OB(APCMIC,0),U,8)  ;denom field for this measure
 D S^APCM2AE1(APCMRPT,APCMIC,1,APCMP,APCMRPTT,APCMTIME,F)
 S APCMVALU="VISIT: "_$$DATE^APCM1UTL(APCMHVTP(APCMP))
 ;numerator?
 S APCMEP=$$HASPL(DFN,APCMBDAT,APCMEDAT)
 S APCMVALU=APCMVALU_"|||"_$P(APCMEP,U,2)_"|||"_$P(APCMEP,U,1)
 S F=$P(^APCM25OB(APCMIC,0),U,9)
 D S^APCM2AE1(APCMRPT,APCMIC,$P(APCMEP,U,1),APCMP,APCMRPTT,APCMTIME,F)
 D SETLIST^APCM2AE1
 Q
HASPL(P,BD,ED) ;does patient have a problem entered before end of report period
 ;
 NEW A,B,C,D,E
 S E=""
 S A=0 F  S A=$O(^AUPNPROB("AC",P,A)) Q:A'=+A!(E]"")  D
 .;if date entered is after the ED don't count it
 .Q:'$D(^AUPNPROB(A,0))
 .Q:$P(^AUPNPROB(A,0),U,8)>ED  ;after end date of report period
 .I $P(^AUPNPROB(A,0),U,12)'="D" S E=1_U_"Problem Entry: "_$$VAL^XBDIQ1(9000011,A,.01)_" entered on "_$$VAL^XBDIQ1(9000011,A,.08) Q
 .;since it's deleted, deletion date must not be before time period
 .S D=$P($P($G(^AUPNPROB(A,2)),U,2),".")  ;date deleted
 .Q:D>ED
 .Q:D<BD
 .S E="1^Problem Entry: "_$$VAL^XBDIQ1(9000011,A,.01)_" entered on "_$$VAL^XBDIQ1(9000011,A,.08)
 I E]"" Q E
 ;no problems on PL so how about a NAP before end of time period
 S C=$O(^AUTTCRA("B","NO ACTIVE PROBLEMS",0))
 I 'C Q ""
 S A=0 F  S A=$O(^AUPNVRUP("AC",P,A)) Q:A'=+A!(E]"")  D
 .Q:'$D(^AUPNVRUP(A,0))  ;oops
 .Q:$P(^AUPNVRUP(A,0),U,1)'=C  ;not NAP
 .S D=$$VD^APCLV($P(^AUPNVRUP(A,0),U,3))
 .Q:D>ED
 .S E="1^No Active Problems on "_$$DATE^APCM1UTL(D)
 Q E
 ; Return boolean flag indicating valid patient
PATVRY(RX,PAT) ;EP
 Q:PAT="*" 1
 Q +$P($G(^PSRX(RX,0)),U,2)=PAT
 ; Return release date for dispense
DSPRDT(RX,TYP,SIEN) ;EP
 Q $S($G(SIEN):+$P($G(^PSRX(RX,$S(TYP="ADP":"P",1:1),SIEN,0)),U,$S(TYP="ADP":19,1:18)),1:+$P(^PSRX(RX,2),U,13))
EMAR ;EP
 ;for each provider count each Visit that HAS a v referral
 K ^TMP($J,"TRANS")
 NEW EMAR
 D EMAR1
 NEW APCMP,N,F,O,Y
 I APCMRPTT=2 S APCMP=APCMFAC  D
 .I $$AVC^APCM2AEM(APCMBDAT,APCMEDAT,APCMFAC)<10 D
 ..S F=$P(^APCM25OB(APCMIC,0),U,11) D S^APCM2AE1(APCMRPT,APCMIC,"Facility is excluded from this measure as the average daily census was <10 during the previous year.",APCMP,APCMRPTT,APCMTIME,F,1)
 .S F=$P(^APCM25OB(APCMIC,0),U,8)  ;denom field for this measure
 .S N=$P(EMAR,U,1)  ;returns
 .D S^APCM2AE1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 .;now set patient list for this provider
 .S P=0 F  S P=$O(^TMP($J,"BCMA","TRUD",P)) Q:P'=+P  D
 ..S APCMVALU="# orders: "_$P(^TMP($J,"BCMA","TRUD",P),U,1)_"|||"_" # w/100%eMAR: "_+$P(^TMP($J,"BCMA","TRUD",P),U,2)_"|||1"
 ..S DFN=P
 ..D SETLIST^APCM2AE1
 .;numerator?
 .S F=$P(^APCM25OB(APCMIC,0),U,9)
 .S N=$P(EMAR,U,2)
 .D S^APCM2AE1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 K ^TMP($J)
 Q
EMAR1 ;EP - ep toc
START ;Set beginning/ending sort dates for ORDERS
 NEW CNT,CNTT,CNTTR,CPS55,CPSDATE,CPSDFN,CPSEND,CPSFRE,CPSN,CPSN1,CPSNUM,CPSPOS,CPSPSB
 NEW CPSQ,CPSRAT,CPSS1,CPSSCH,CPSTART,CPSTOP,CPSTYPE,CPSVOL
 S CPSTART=APCMBDAT
 S CPSEND=APCMEDAT
 S EMAR=""
 S (CNT("UNIT DOSE","TR"),CNT("UNIT DOSE"))=0
 K ^TMP($J)
P55 ;LOOP 55 UNIT DOSE
 S CPSDATE=CPSTART F  S CPSDATE=$O(^PS(55,"AUDS",CPSDATE)) Q:$P(CPSDATE,".")>CPSEND!('+CPSDATE)!(CPSDATE>$$NOW^XLFDT())  D
 .S CPSDFN=0 F  S CPSDFN=$O(^PS(55,"AUDS",CPSDATE,CPSDFN)) Q:'+CPSDFN  D
 ..S CPS55=0 F  S CPS55=$O(^PS(55,"AUDS",CPSDATE,CPSDFN,CPS55)) Q:'+CPS55  D
 ...;COUNT POSSIBLE DOSES DUE FOR ORDER.
 ...S CPSPOS=0
 ...S CPSFRE=$P($G(^PS(55,CPSDFN,5,+CPS55,2)),U,6),CPSTOP=$P($G(^PS(55,CPSDFN,5,+CPS55,2)),U,4)
 ...S CPSSCH=$P($G(^PS(55,CPSDFN,5,+CPS55,0)),U,7)
 ...Q:CPSTOP<CPSDATE
 ...I CPSFRE="D"&(CPSSCH="C") S CPSN=$L($P($G(^PS(55,CPSDFN,5,+CPS55,2)),U,1),"-") S X2=CPSDATE,X1=$S(CPSTOP<DT:DT,1:CPSTOP) D ^%DTC S CPSPOS=CPSN*X
 ...I +CPSFRE&(CPSSCH="C") D
 ....S CPSS1=$$FMDIFF^XLFDT($S(CPSTOP>$$NOW^XLFDT():$$NOW^XLFDT(),$P(CPSTOP,".")>CPSEND:CPSEND_".24",1:CPSTOP),CPSDATE,2),CPSS1=CPSS1\60
 ....S CPSPOS=CPSS1\CPSFRE  ;POSSIBLE DOSES?
 ....I CPSFRE>CPSS1 S CPSPOS=1  ;FREQ IS GREATER SO ONLY ONE POSSIBLE
 ....;S CPSS1=0,CPSS1=(24-$E($P(CPSDATE,".",2),1,2))*60 ;MINS FOR FIRST DATE  l
 ....;IF CPSTOP>DT D NOW^%DTC S CPSS1=CPSS1+($E($P(%,".",2),1,2)*60) ; MINS FOR MIDNIGHT LAST DATE  l
 ....;IF CPSTOP<DT S CPSS1=CPSS1+($E($P(CPSTOP,".",2),1,2)*60) ;MINS FOR MIDNIGHT LAST DATE  l
 ....;S X1=CPSDATE,X2=+1 D C^%DTC S X2=X,X1=$S(CPSTOP>DT:DT,1:CPSTOP) D ^%DTC S CPSPOS=((X*1440)+CPSS1)/CPSFRE  l
 ....;S X1=DT,X2=+1 D C^%DTC S CPSNDT=X S X2=CPSDATE,X1=$S(CPSTOP>DT:CPSNDT,1:CPSTOP) D ^%DTC S CPSPOS=((X*1440)+CPSS1)/CPSFRE
 ...I CPSSCH="C"!(CPSSCH="O") S CNT("UNIT DOSE")=CNT("UNIT DOSE")+1,$P(^TMP($J,"BCMA","TRUD",CPSDFN),U,1)=$P($G(^TMP($J,"BCMA","TRUD",CPSDFN)),U,1)+1
 ...;LOOK 53.79 FOR DOSE TRACKED.
 ...I CPSSCH="O" S CPSPOS=1 ;PRNS TO ONE
 ...Q:+CPSPOS<0!(CPSPOS=0)
 ...S CPSQ=$S(CPSSCH="O":1,CPSSCH="C":1,1:0)
 ...Q:CPSQ=0
 ...;W !,CPSSCH
 ...S (CPSPSB,CPSN1)=0 F  S CPSN1=$O(^PSB(53.79,"AORDX",CPSDFN,CPS55_"U",CPSN1)) Q:'+CPSN1  S CPSPSB=CPSPSB+1
 ...Q:CPSPSB<CPSPOS
 ...S CNT("UNIT DOSE","TR")=CNT("UNIT DOSE","TR")+1 S $P(^TMP($J,"BCMA","TRUD",CPSDFN),U,2)=$P(^TMP($J,"BCMA","TRUD",CPSDFN),U,2)+1
 ...;W !,CPS55,U,CPSPOS,U,CPSPSB,U,CPSSCH
IV ;LOOP IVS
 S (CNT("IV","TR"),CNT("IV"))=0
 S CPSDATE=CPSTART F  S CPSDATE=$O(^PS(55,"AIVS",CPSDATE)) Q:CPSDATE>CPSEND!('+CPSDATE)  D
 .S CPSDFN=0 F  S CPSDFN=$O(^PS(55,"AIVS",CPSDATE,CPSDFN)) Q:'+CPSDFN  D
 ..S CPS55=0 F  S CPS55=$O(^PS(55,"AIVS",CPSDATE,CPSDFN,CPS55)) Q:'+CPS55  D
 ...S CNT("IV")=CNT("IV")+1,(CPSPSB,CPSPOS)=0,$P(^TMP($J,"BCMA","TRUD",CPSDFN),U,1)=$P($G(^TMP($J,"BCMA","TRUD",CPSDFN)),U,1)+1
 ...S CPSTYPE=$P($G(^PS(55,CPSDFN,"IV",CPS55,0)),U,4)
 ...I CPSTYPE="P"!(CPSTYPE="S") D
 ....S CPSFRE=$P($G(^PS(55,CPSDFN,"IV",CPS55,0)),U,15) I +CPSFRE S CPSTOP=$P($G(^PS(55,CPSDFN,"IV",CPS55,0)),U,3) S X2=CPSDATE,X1=$S($P(CPSTOP,".")>CPSEND:CPSEND_".24",CPSTOP>$$NOW^XLFDT():$$NOW^XLFDT(),1:CPSTOP) D ^%DTC S CPSPOS=(X*1440)/CPSFRE
 ....I CPSFRE="O" S CPSPOS=1 ;ONCE 
 ...;COUND TOTAL NUMBER OF IV BAGS FOR ORDER
 ...I $D(^PS(55,CPSDFN,"IV",+CPS55,"BCMA"))&(CPSTYPE'="P")&(CPSTYPE'="S") S (CPSPOS,CPSNUM)=0 F  S CPSNUM=$O(^PS(55,CPSDFN,"IV",+CPS55,"BCMA",CPSNUM)) Q:'+CPSNUM  S CPSPOS=CPSPOS+1
 ...;NO LABELS
 ...I '$D(^PS(55,CPSDFN,"IV",+CPS55,"BCMA"))&(CPSTYPE'="P")&(CPSTYPE'="S") D
 ....S CPSVOL=$P($G(^PS(55,CPSDFN,"IV",CPS55,"SOL",1,0)),U,2),CPSRAT=$P($G(^PS(55,CPSDFN,"IV",CPS55,0)),U,8)
 ....S CPSTOP=$P($G(^PS(55,CPSDFN,"IV",CPS55,0)),U,3)
 ....S CPSS1=0,CPSS1=(24-$E($P(CPSDATE,".",2),1,2))*60 ;MINS FOR FIRST DATE
 ....IF CPSTOP>DT D NOW^%DTC S CPSS1=CPSS1+($E($P(%,".",2),1,2)*60) ; MINS FOR MIDNIGHT LAST DATE
 ....IF CPSTOP<DT S CPSS1=CPSS1+($E($P(CPSTOP,".",2),1,2)*60) ;MINS FOR MIDNIGHT LAST DATE
 ....S X1=CPSDATE,X2=+1 D C^%DTC S X2=X,X1=$S(CPSTOP>DT:DT,1:CPSTOP) D ^%DTC S CPSPOS=(((((+CPSRAT*24)*X)+CPSS1)+CPSS1)\+CPSVOL)
 ...Q:'+CPSPOS&('+$G(CPSRAT))  ;NO POSSIBLE FOUND AND NO INFUSTION RATE BAIL THIS ONE.
 ...;LOOK IN BCMA FOR IVS
 ...S (CPSNUM,CPSPSB)=0 F  S CPSNUM=$O(^PSB(53.79,"AUID",CPSDFN,CPS55_"V",CPSNUM)) Q:'+CPSNUM  S CPSPSB=CPSPSB+1
 ...Q:CPSPSB<CPSPOS
 ...S CNT("IV","TR")=CNT("IV","TR")+1 S $P(^TMP($J,"BCMA","TRUD",CPSDFN),U,2)=$P(^TMP($J,"BCMA","TRUD",CPSDFN),U,2)+1
 ..;NEXT FIND BCMA TOTAL MEDS GIVE ON UD AND MATCH IV ORDERS. 
PRT ;
 S (CNTT,CNTTR)=0
 ;W !,?5,"Meaningfull Use Stage II Report From " S Y=CPSTART D DD^%DT W Y_" TO " S Y=CPSEND D DD^%DT  W Y
 ;D NOW^%DTC S Y=% D DD^%DT W !,?45,"Run Date/Time:"_Y
 ;W !,"Order Type",?15,"Total Orders",?30," %100 Tracked"
 ;W ! F J=1:1:IOM W "-"
 ;W ! F I="UNIT DOSE","IV" W I,?17,$G(CNT(I)),?35,$G(CNT(I,"TR")),! S CNTT=CNTT+$G(CNT(I)),CNTTR=CNTTR+$G(CNT(I,"TR"))
 ;W ! F J=1:1:IOM W "-"
 ;W !,?17,CNTT,?35,CNTTR
 F I="UNIT DOSE","IV" S CNTT=CNTT+$G(CNT(I)),CNTTR=CNTTR+$G(CNT(I,"TR"))
 S EMAR=CNTT_U_CNTTR  ;_U_CNTTR/CNTT
EXIT ;
 Q
