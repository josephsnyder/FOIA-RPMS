APCM24E7 ;IHS/CMI/LAB - IHS MU; 
 ;;1.0;IHS MU PERFORMANCE REPORTS;**5,6**;MAR 26, 2012;Build 65
 ;
LAB ;EP - CALCULATE LAB
 ;for each provider or for the facility count all labs that meet criteria and if it is not written it meets numerator
 K ^TMP($J,"PATSRX")
 K APCMLABS
 D TOTLAB
 NEW APCMP,N,F
 S (APCMD1,APCMN1)=0
 I APCMRPTT=2 S APCMP=APCMFAC  D
 .;I '$P($G(APCMLABS(APCMP)),U,1) S F=$P(^APCM24OB(APCMIC,0),U,11) D S^APCM24E1(APCMRPT,APCMIC,"Provider is excluded from this measure as he/she did not order any lab tests with results during the time period.",APCMP,APCMRPTT,APCMTIME,F,1) Q
 .;set denominator value into field
 .S F=$P(^APCM24OB(APCMIC,0),U,8)  ;denom field for this measure
 .S N=$P($G(APCMLABS(APCMP)),U,1)  ;returns # of LABS^# not Structured data
 .D S^APCM24E1(APCMRPT,APCMIC,+N,APCMP,APCMRPTT,APCMTIME,F)
 .;now set patient list for this provider
 .S P=0 F  S P=$O(^TMP($J,"PATSRX",APCMP,P)) Q:P'=+P  D
 ..;Q:'$P(^TMP($J,"PATSRX",APCMP,P),U,1)
 ..I $P(^TMP($J,"PATSRX",APCMP,P),U,1)=$P(^TMP($J,"PATSRX",APCMP,P),U,2) S APCMVALU="# Labs: "_$P(^TMP($J,"PATSRX",APCMP,P),U,1)_"|||"_" # w/structured result: "_+$P(^TMP($J,"PATSRX",APCMP,P),U,2)_"|||1" D  Q
 ...S DFN=P D SETLIST^APCM24E1 Q
 ..S S="",APCMVALU="No Structured Result: "
 ..F  S S=$O(^TMP($J,"PATSRX",APCMP,P,"SCRIPTS",S)) Q:S=""  D
 ...I '$D(^TMP($J,"PATSRX",APCMP,P,"ELEC",S)) D
 ....S APCMVALU=APCMVALU_S_";"
 ..S DFN=P,APCMVALU="# of Labs: "_$P(^TMP($J,"PATSRX",APCMP,P),U,1)_" # w/structured results: "_+$P(^TMP($J,"PATSRX",APCMP,P),U,2)_"|||"_APCMVALU,$P(APCMVALU,"|||",3)=0 D SETLIST^APCM24E1
 .;numerator?
 .S F=$P(^APCM24OB(APCMIC,0),U,9)
 .S N=$P($G(APCMLABS(APCMP)),U,2)
 .D S^APCM24E1(APCMRPT,APCMIC,+N,APCMP,APCMRPTT,APCMTIME,F)
 K ^TMP($J,"PATSRX")
 Q
TOTLAB ;EP - ep LAB
 ;SET ARRAY APCMLABS to APCMLABS(prov ien)=denom^numer
 ;IF DENOM =0 THEN PROVIDER EXCLUSION
 NEW ID,C,Y,X,D,S,N,A,B,R,PAT,ED,APCMLAB,APCMX,APCML,PAR
 S ED=9999999-APCMBDAT,ED=ED_".9999"
 S SD=9999999-APCMEDAT
 S C=0,N=0,PAT=""
 S LABSNO=""
 S T=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S PAT="" F  S PAT=$O(^AUPNVSIT("AA",PAT)) Q:PAT'=+PAT  D TOTLAB1
 Q
TOTLAB1 ;
 NEW APCMLAB,APCMLAB1
 S APCMLAB="APCMLAB"
 D ALLLAB^APCM24EB(PAT,APCMBDAT,APCMEDAT,,,,.APCMLAB)
 ;reorder by IEN of v lab
 K APCMLAB1
 S APCMX=0 F  S APCMX=$O(APCMLAB(APCMX)) Q:APCMX'=+APCMX  D
 .S V=$P(APCMLAB(APCMX),U,5)  ;VISIT IEN
 .S Y=$P(APCMLAB(APCMX),U,4)  ;V LAB IEN
 .Q:'$D(^AUPNVSIT(V,0))  ;NO VISIT??
 .Q:$P(^AUPNVSIT(V,0),U,6)'=APCMFAC
 .I APCMMETH="E" I '$$HOSER^APCM24E6(V,APCMFAC),$P(^AUPNVSIT(V,0),U,7)'="I" Q  ;not a H or 30 or I
 .I APCMMETH="O" Q:"IOH"'[$P(^AUPNVSIT(V,0),U,7)
 .S A=$P(^AUPNVLAB(Y,0),U,1)  ;test pointer
 .I T,$D(^ATXLAB(T,21,"B",A)) Q   ;it's a pap smear
 .I $$UP^XLFSTR($$VAL^XBDIQ1(9000010.09,Y,.01))="PAP SMEAR" Q  ;it's a pap smear
 .I $$UP^XLFSTR($P(^AUPNVLAB(Y,0),U,4))="CANC" Q
 .I $O(^LAB(60,A,2,0)) Q  ;this is the v lab for the panel
 .I '$D(APCMLABS(APCMFAC)) S APCMLABS(APCMFAC)=""
 .S $P(APCMLABS(APCMFAC),U,1)=$P(APCMLABS(APCMFAC),U,1)+1 D
 ..S $P(^TMP($J,"PATSRX",APCMFAC,PAT),U,1)=$P($G(^TMP($J,"PATSRX",APCMFAC,PAT)),U,1)+1,^TMP($J,"PATSRX",APCMFAC,PAT,"SCRIPTS",$$VAL^XBDIQ1(9000010.09,Y,1201)_" "_$$VAL^XBDIQ1(9000010.09,Y,.01))=""
 .;now check numerator
 .Q:$P($G(^AUPNVLAB(Y,11)),U,9)'="R"  ;if status not resulted it doesn't make the numerator
 .I $$UP^XLFSTR($P(^AUPNVLAB(Y,0),U,4))="COMMENT",'$$HASCOM(Y) Q
 .S $P(APCMLABS(APCMFAC),U,2)=$P(APCMLABS(APCMFAC),U,2)+1 D
 ..S $P(^TMP($J,"PATSRX",APCMFAC,PAT),U,2)=$P($G(^TMP($J,"PATSRX",APCMFAC,PAT)),U,2)+1 S ^TMP($J,"PATSRX",APCMFAC,PAT,"ELEC",$$VAL^XBDIQ1(9000010.09,Y,1201)_" "_$$VAL^XBDIQ1(9000010.09,Y,.01))=""  ;S N=N+G Q  ;S N=N+G
 Q
 ;
HASCOM(L) ;ARE THERE ANY COMMENTS
 I '$D(^AUPNVLAB(L,21)) Q 0
 NEW B,G
 S G=0
 S B=0 F  S B=$O(^AUPNVLAB(L,21,B)) Q:B'=+B  I ^AUPNVLAB(L,21,B,0)]"" S G=1  ;has comment
 Q G
 ;
MEDREC ;EP
 ;for each provider count each Visit that is a new patient visit and of those # with snomed in v updated/reviewed
 K ^TMP($J,"TRANS")
 NEW APCMLABS,MMR
 D TOTMEDR
 NEW APCMP,N,F
 S (APCMD1,APCMN1)=0
 I APCMRPTT=1 S APCMP=0 F  S APCMP=$O(APCMPRV(APCMP)) Q:APCMP'=+APCMP  D
 .I '$P($G(MMR(APCMP)),U,1) D  Q
 ..S F=$P(^APCM24OB(APCMIC,0),U,11) D S^APCM24E1(APCMRPT,APCMIC,"Provider is excluded from this measure as he/she did not have any transitions during the EHR reporting period.",APCMP,APCMRPTT,APCMTIME,F,1) Q
 .;set denominator value into field
 .S F=$P(^APCM24OB(APCMIC,0),U,8)  ;denom field for this measure
 .S N=$P($G(MMR(APCMP)),U,1)  ;returns # of transS^# with mmr
 .D S^APCM24E1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 .;now set patient list for this provider
 .S P=0 F  S P=$O(^TMP($J,"TRANS",APCMP,P)) Q:P'=+P  D
 ..I $P(^TMP($J,"TRANS",APCMP,P),U,1)=$P(^TMP($J,"TRANS",APCMP,P),U,2) S APCMVALU="# transitions: "_$P(^TMP($J,"TRANS",APCMP,P),U,1)_"|||"_" # w/mmr: "_+$P(^TMP($J,"TRANS",APCMP,P),U,2)_" "_$P(^TMP($J,"TRANS",APCMP,P),U,3)_"|||1" D  Q
 ...S DFN=P D SETLIST^APCM24E1 Q
 ..S DFN=P,APCMVALU="# transitions: "_$P(^TMP($J,"TRANS",APCMP,P),U,1)_"|||"_" # w/mmr: "_+$P(^TMP($J,"TRANS",APCMP,P),U,2)_" "_$P(^TMP($J,"TRANS",APCMP,P),U,3)_"|||0" D SETLIST^APCM24E1
 .;numerator?
 .S F=$P(^APCM24OB(APCMIC,0),U,9)
 .S N=$P($G(MMR(APCMP)),U,2)
 .D S^APCM24E1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 K ^TMP($J,"TRANS")
 Q
TOTMEDR ;EP - ep MR
 ;SET ARRAY MMR to MMR(prov ien)=denom^numer
 ;IF DENOM =0 THEN PROVIDER EXCLUSION
 NEW T,C,PAT,N,APCMX,R,C,G
 S C=0,N=0,PAT=""
 S T=$O(^APCMMUCN("B","INTERIM STAGE 2 2014",0))
 ;GO THROUGH EACH PATIENT WHO HAS VISITS
 S PAT=0 F  S PAT=$O(^AUPNVSIT("AA",PAT)) Q:PAT'=+PAT  D TOTMEDR1
 Q
TOTMEDR1 ;
 NEW APCMLAB
 S APCMLAB="APCMLAB"
 D ALLV^APCLAPIU(PAT,APCMBDAT,APCMEDAT,APCMLAB)  ;get all visits for this patient in time period
 S APCMX=0 F  S APCMX=$O(APCMLAB(APCMX)) Q:APCMX'=+APCMX  D
 .S V=$P(APCMLAB(APCMX),U,5)  ;VISIT IEN
 .Q:'$D(^AUPNVSIT(V,0))  ;NO VISIT??
 .S R=$$PRIMPROV^APCLV(V,"I")  ;primary provider IEN
 .Q:'R
 .I '$D(APCMPRV(R)) Q  ;not a provider of interest for this report
 .Q:"AOSM"'[$P(^AUPNVSIT(V,0),U,7)
 .S C=$$CLINIC^APCLV(V,"C")
 .Q:C=30
 .I C]"",T,$D(^APCMMUCN(T,14,"B",C)) Q  ;don't count these clinics
 .;IS THERE A V CPT OR IMAGE
 .S G=$$CPT(V)
 .I G G NUM
 .S G=$$IMAGE(V,R)
 .I 'G Q
NUM .;
 .I '$D(MMR(R)) S MMR(R)=""
 .S $P(MMR(R),U,1)=$P(MMR(R),U,1)+1 D
 ..S $P(^TMP($J,"TRANS",R,PAT),U,1)=$P($G(^TMP($J,"TRANS",R,PAT)),U,1)+1
 ..S $P(^TMP($J,"TRANS",R,PAT),U,3)=$P(^TMP($J,"TRANS",R,PAT),U,3)_" "_$$VD^APCLV(V,"S")
 .;now check numerator
 .S G=$$HASMMR(PAT,APCMBDAT,APCMEDAT)
 .I 'G S $P(^TMP($J,"TRANS",R,PAT),U,3)=$P(^TMP($J,"TRANS",R,PAT),U,3)_";NO MMR" Q
 .S $P(MMR(R),U,2)=$P(MMR(R),U,2)+1 D
 ..S $P(^TMP($J,"TRANS",R,PAT),U,2)=$P($G(^TMP($J,"TRANS",R,PAT)),U,2)+1
 ..S $P(^TMP($J,"TRANS",R,PAT),U,3)=$P(^TMP($J,"TRANS",R,PAT),U,3)_";YES MMR"
 Q
 ;
CPT(V) ;was there a 99201-99205 or 99381-99387 on this visit
 NEW X,C,A
 S A=""
 S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(A)  D
 .S C=$$GET1^DIQ(9000010.18,X,.01)
 .I C>99200,C<99206 S A=1 Q
 .I C>99380,C<99388 S A=1 Q
 Q A
IMAGE(V,R) ;WAS THERE AN IMAGE BEFORE VISIT DATE AND IF SO WAS THIS THE FIRST VISIT AFTER THE IMAGE DATE
 NEW D,A,B,C,P,X,Y,T,G,Z,VST
 S P=$P(^AUPNVSIT(V,0),U,5)
 I '$D(^MAG(2005,"AC",P)) Q 0  ;no images
 S G=""
 S D=$$VDTM^APCLV(V)  ;fileman visit date/time
 S B=0 F  S B=$O(^MAG(2005,"AC",P,B)) Q:B'=+B!(G)  D
 .Q:$$UP^XLFSTR($$GET1^DIQ(2005,B,42))'="CCD-SUMMARY"
 .S C=$$GET1^DIQ(2005,B,7,"I")
 .Q:C>D  ;image save after visit date/time
 .;is this the first visit after the image date/time to the EP?
 .S X=C
 .S T=$O(^APCMMUCN("B","INTERIM STAGE 2 2014",0))
 .K VST
 .D ALLV^APCLAPIU(P,$P(C,"."),$$FMADD^XLFDT($P(D,"."),1),"VST")
 .;now reorder by visit/date time
 .S X=0 F  S X=$O(VST(X)) Q:X'=+X  S VST("DTM",$$VDTM^APCLV($P(VST(X),U,5)),X)=$P(VST(X),U,5)
 .S Y=0 F  S Y=$O(VST("DTM",Y)) Q:Y'=+Y!(G)  D
 ..S B=0 F  S B=$O(VST("DTM",Y,B)) Q:B'=+B!(G)  D
 ...S Z=VST("DTM",Y,B)
 ...Q:'$D(^AUPNVSIT(Z,0))
 ...Q:$$PRIMPROV^APCLV(Z,"I")'=R
 ...Q:"AOSM"'[$P(^AUPNVSIT(Z,0),U,7)
 ...S C=$$CLINIC^APCLV(Z,"C")
 ...Q:C=30
 ...I C]"",T,$D(^APCMMUCN(T,14,"B",C)) Q  ;don't count these clinics
 ...Q:Z'=V
 ...S G=1
 Q G
 ;
HASMMR(P,BDD,EDD) ;does patient have a m-mr ON this visit in v updated/reviewed
 ;
 NEW X,Y,Z,B,W,E,D,T
 ;V UPDATED REVIEWED SNOMED 2 WEEKS BEFORE REPORT PERIOD UP THROUGH TODAY
 S Z="",B=""
 S W=0 F  S W=$O(^AUPNVRUP("AC",P,W)) Q:W'=+W!(Z)  D
 .S Y=0 F  S Y=$O(^AUPNVRUP(W,26,Y)) Q:Y'=+Y!(Z)  D
 ..I $P($G(^AUPNVRUP(W,26,Y,0)),U,1)'=428191000124101 Q
 ..S E=""
 ..S D=$P($$GET1^DIQ(9000010.54,W,1201,"I"),".")
 ..I D<BDD Q
 ..I D>EDD Q
SNN ..S Z=1
 Q Z
SEM ;EP
 NEW APCMP
 S (APCMD1,APCMN1)=0
 I APCMRPTT=1 D  Q
 .S APCMP=0 F  S APCMP=$O(APCMPRV(APCMP)) Q:APCMP'=+APCMP  D
 ..I APCMATTE("S2.026.EP",APCMP)="Yes" S F=$P(^APCM24OB(APCMIC,0),U,11) D S^APCM24E1(APCMRPT,APCMIC,"BROADBAND",APCMP,APCMRPTT,APCMTIME,F,1)
 ..Q:'$D(APCMHVTP(APCMP))  ;no visits to this provider for this patient so don't bother, the patient is not in the denominator
 ..D ST1
 Q
ST1 ;set denominator value into field
 S F=$P(^APCM24OB(APCMIC,0),U,8)  ;denom field for this measure
 D S^APCM24E1(APCMRPT,APCMIC,1,APCMP,APCMRPTT,APCMTIME,F)
 S APCMVALU="VISIT: "_$$DATE^APCM1UTL(APCMHVTP(APCMP))
 ;numerator?
 S V="" I $T(PHR^BPHRMUPM)]"" D PHR^BPHRMUPM(DFN,APCMBDAT,APCMEDAT,.V)
 S APCMVALU=APCMVALU_"|||"_"Secure message sent: " D
 .I $P($P(V,U,6),".")<APCMBDAT Q
 .I $P($P(V,U,6),".")>APCMEDAT Q
 .S APCMVALU=APCMVALU_$$DATE^APCM1UTL($P(V,U,6))_"|||"_$P(V,U,5)
 .S F=$P(^APCM24OB(APCMIC,0),U,9)
 .D S^APCM24E1(APCMRPT,APCMIC,$P(V,U,5),APCMP,APCMRPTT,APCMTIME,F)
 D SETLIST^APCM24E1
 Q
ERX ;EPRESCRIBING HOSPITAL
 ;loop through file 52 and find all prescriptions filled during report period and have a Y for discharge med
 ;numerator = nature of order not equal written
 K ^TMP($J,"PATSRX")
 K APCMRXS
 D TOTRX
 NEW APCMP,N,F
 S (APCMD1,APCMN1)=0
 I APCMRPTT=2 S APCMP=APCMFAC
 S I=$P(^APCM24OB(APCMIC,0),U,1)
 I $G(APCMATTE(I,APCMP))="No" S F=$P(^APCM24OB(APCMIC,0),U,11) D  Q
 .D S^APCM24E1(APCMRPT,APCMIC,"NO ONSITE PHARMACY.",APCMP,APCMRPTT,APCMTIME,F,1)
D ;set denominator value into field
 S F=$P(^APCM24OB(APCMIC,0),U,8)  ;denom field for this measure
 S N=$P($G(APCMRXS(APCMP)),U,1)  ;returns # of prescriptions^# not written by nature of order
 D S^APCM24E1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 ;now set patient list for this provider
 S P=0 F  S P=$O(^TMP($J,"PATSRX",APCMP,P)) Q:P'=+P  D
 .;Q:'$P(^TMP($J,"PATSRX",APCMP,P),U,1)
 .I $P(^TMP($J,"PATSRX",APCMP,P),U,1)=$P(^TMP($J,"PATSRX",APCMP,P),U,2) S APCMVALU="# Prescriptions: "_$P(^TMP($J,"PATSRX",APCMP,P),U,1)_"|||"_" # transmitted electronically: "_+$P(^TMP($J,"PATSRX",APCMP,P),U,2)_"|||1" D  Q
 ..S DFN=P D SETLIST^APCM24E1 Q
 .S S="",APCMVALU="Not transmitted electronically: "
 .F  S S=$O(^TMP($J,"PATSRX",APCMP,P,"SCRIPTS",S)) Q:S=""  D
 ..I '$D(^TMP($J,"PATSRX",APCMP,P,"ELEC",S)) D
 ...S APCMVALU=APCMVALU_S_";"
 .S DFN=P,APCMVALU="# of Prescriptions: "_$P(^TMP($J,"PATSRX",APCMP,P),U,1)_" # transmitted electronically: "_+$P(^TMP($J,"PATSRX",APCMP,P),U,2)_"|||"_APCMVALU,$P(APCMVALU,"|||",3)=0 D SETLIST^APCM24E1
 ;numerator?
 S F=$P(^APCM24OB(APCMIC,0),U,9)
 S N=$P($G(APCMRXS(APCMP)),U,2)
 D S^APCM24E1(APCMRPT,APCMIC,N,APCMP,APCMRPTT,APCMTIME,F)
 K ^TMP($J,"PATSRX")
 Q
TOTRX ;EP -SET ARRAY APCMRXS to APCMRXS(FACILITY)=denom^numer
 NEW ID,C,Y,X,D,S,N,A,B,R,PAT,G,OS,DIVI
 S C=0,N=0
 S ID=$$FMADD^XLFDT(APCMBDAT,-1)
 F  S ID=$O(^PSRX("AC",ID)) Q:ID'=+ID!(ID>APCMEDAT)  D
 .S X=0 F  S X=$O(^PSRX("AC",ID,X)) Q:X'=+X  D
 ..Q:$$GET1^DIQ(52,X,9999999.28)'="YES"  ;MUST BE A DISCHARGE MED
 ..;if in obs method skip any with a visit of "A"
 ..S V=$P($G(^PSRX(X,999999911)),U,1)
 ..I V,APCMMETH="O" Q:'$D(^AUPNVMED(V,0))  S V=$P($G(^AUPNVMED(V,0)),U,3) Q:'$D(^AUPNVSIT(V,0))  Q:$P(^AUPNVSIT(V,0),U,7)="A"
 ..I '$D(APCMRXS(APCMFAC)) S APCMRXS(APCMFAC)=""
 ..Q:$P($G(^PSRX(X,"STA")),"^")=13  ;DELETED
 ..S D=$P(^PSRX(X,0),U,6)  ;CONTROLLED SUBSTANCE
 ..S S=$P($G(^PSDRUG(D,0)),U,3)
 ..Q:S[5
 ..Q:S[4
 ..Q:S[3
 ..Q:S[2
 ..Q:S[1
 ..;S S=$P($G(^PSRX(X,3)),U,7)
 ..;Q:$$UP^XLFSTR(S)["ADMINISTERED IN CLINIC"
 ..S PAT=$P(^PSRX(X,0),U,2)
 ..;quit if demo patient
 ..Q:$$DEMO^APCLUTL(PAT,$G(APCMDEMO))
 ..;facility and make sure it matches APCMFAC
 ..S OS=$$GET1^DIQ(52,X,20,"I")  ;OUTPATIENT SITE
 ..S DIVI=$$GET1^DIQ(59,OS,100,"I")  ;DIVISION
 ..Q:APCMFAC'=DIVI
 ..S $P(APCMRXS(APCMFAC),U,1)=$P(APCMRXS(APCMFAC),U,1)+1,$P(^TMP($J,"PATSRX",APCMFAC,PAT),U,1)=$P($G(^TMP($J,"PATSRX",APCMFAC,PAT)),U,1)+1,^TMP($J,"PATSRX",APCMFAC,PAT,"SCRIPTS",$P(^PSRX(X,0),U,1))=""
 ..;
 ..;now check to see if it has a nature of order not equal to 1-written
 ..S G=0
 ..I $E($P(^PSRX(X,0),U,1))?1N D
 ...S O=$P($G(^PSRX(X,"OR1")),U,2)  ;order number
 ...Q:O=""
 ...S B=$P($G(^OR(100,O,0)),U,6)
 ...Q:B=""
 ...S A=0,G=0 F  S A=$O(^OR(100,O,8,A)) Q:A'=+A!(G)  D
 ....S B=$P($G(^OR(100,O,8,A,0)),U,12)
 ....Q:B=1
 ....Q:B=""
 ....S G=1
 ...S $P(APCMRXS(APCMFAC),U,2)=$P(APCMRXS(APCMFAC),U,2)+G,$P(^TMP($J,"PATSRX",APCMFAC,PAT),U,2)=$P($G(^TMP($J,"PATSRX",APCMFAC,PAT)),U,2)+G I G S ^TMP($J,"PATSRX",APCMFAC,PAT,"ELEC",$P(^PSRX(X,0),U,1))=""  ;S N=N+G
 ..S B=0 I $E($P(^PSRX(X,0),U,1))="X" D
 ...S A=0 F  S A=$O(^PSRX(X,"A",A)) Q:A'=+A!(B)  D
 ....I $P(^PSRX(X,"A",A,0),U,5)["E-Prescribe" S B=1
 ....I $P(^PSRX(X,"A",A,0),U,5)["eRx" S B=1
 ...S $P(APCMRXS(APCMFAC),U,2)=$P(APCMRXS(APCMFAC),U,2)+B,$P(^TMP($J,"PATSRX",APCMFAC,PAT),U,2)=$P($G(^TMP($J,"PATSRX",APCMFAC,PAT)),U,2)+B I B S ^TMP($J,"PATSRX",APCMFAC,PAT,"ELEC",$P(^PSRX(X,0),U,1))=""
 Q
