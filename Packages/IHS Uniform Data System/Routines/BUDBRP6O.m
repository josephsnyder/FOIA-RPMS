BUDBRP6O ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
I ;EP ;CAD
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD18RB=($E(BUDBD,1,3)-18)_"1231"
 Q:BUDDOB>BUD18RB
 Q:BUDMEDV<1
 S BUD18TH=$E(BUDDOB,1,3)+18_$E(BUDDOB,4,7)
 Q:BUDMEDV<1
 S X=$$GETV(DFN,BUDDOB,BUDED,BUDSITE)
 Q:X<2  ;MUST HAVE 2 MEDICAL VISITS EVER
 I BUD18TH'=BUDED,'$$VBBD^BUDBRP6V(DFN,$$FMADD^XLFDT(BUD18TH,1),BUDED) Q  ;quit if no visiT AFTER 18TH BIRTHDAY
 I BUD18TH=BUDED,'$$VBBD^BUDBRP6V(DFN,BUD18TH,BUDED) Q  ;quit if no visiT AFTER 18TH BIRTHDAY
 S BUDCADVU=$$CAD(DFN,BUDBD,BUDED)  ;return date of problem list or visit date during report period
 Q:BUDCADVU=""  ;no CAD diagnosis
 S BUDLDL=$$LDL(DFN,BUDBD,BUDED)
 I BUDLDL]"",$P(BUDLDL,U,1)<130 Q  ;
 I BUDLDL="" S BUDLDL=$$LDL(DFN,$$FMADD^XLFDT($$VD^APCLV(BUDLASTV),-365),$$VD^APCLV(BUDLASTV)) Q  ;no LDL per Duane and Chris
 I BUDLDL="" Q
 I $P(BUDLDL,U,1)<130 Q
 S X=$$LIPIDALG(DFN,BUDED) I X S ^XTMP("BUDBRP6B",BUDJ,BUDH,"ALG","CAD2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCADVU,U)_U_$P(X,U,2)_U_BUDLDL Q  ;eliminate those with an allergy to a LIPID LOWERING DRUG
 ;I BUDCADVU="" S X="",X=$$LIPITHER(DFN,BUDBD,BUDED) I X]"" S ^XTMP("BUDBRP6B",BUDJ,BUDH,"ALG","CAD2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCADVU,U)_U_$P(X,U,2) Q
 S BUDCADT=$$LIPITHER(DFN,BUDBD,BUDED)
 I BUDCADT]"" S BUDSECTI("CAD")=$G(BUDSECTI("CAD"))+1
 ;put the rest in demoninator
 S BUDSECTI("PTS")=$G(BUDSECTI("PTS"))+1 D
 .I $G(BUDCAD2L) D
 ..I BUDCADT="" S ^XTMP("BUDBRP6B",BUDJ,BUDH,"CAD2",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCADVU,U)_U_$P(BUDCADT,U,2)_U_BUDLDL
 .I $G(BUDCAD1L) D
 ..I BUDCADT]"" S ^XTMP("BUDBRP6B",BUDJ,BUDH,"CAD1",BUDAGE,$P(^DPT(DFN,0),U),BUDCOM,DFN)=$P(BUDCADVU,U)_U_$P(BUDCADT,U,2)_U_BUDLDL
 Q
LIPIDALG(P,ED) ;
 ;allergy tracking
 NEW BUDC,X,N,G,Y,T,T1,S,A,B,C
 S T=$O(^ATXAX("B","BUD LIPID LOWERING MEDS",0))
 S T1=$O(^ATXAX("B","BGPMU LIPID LOWERING NDCS",0))
 S BUDC=0
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(BUDC)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>ED  ;entered after end date
 .S N=$P($G(^GMR(120.8,X,0)),U,3)
 .;IF PSDRUG CHECK AGAINST MEDS TAXONOMY
 .I N["PSDRUG" D  Q
 ..S Y=+N
 ..I T,$D(^ATXAX(T,21,"AA",Y)) S BUDC=1_U_"ALG: "_$P(^PSDRUG(Y,0),U,1) Q
 ..S D=$P($G(^PSDRUG(Y,2)),U,4),D=$$STRIP^XLFSTR(D,"-")
 ..I D,$D(^ATXAX(T1,21,"AA",D)) S BUDC=1_U_"ALG: "_$P(^PSDRUG(Y,0),U,1)
 .I N["PSNDF" D
 ..S Y=$P(^GMR(120.8,X,0),U,2)  ;drug name
 ..S Y=$O(^PSDRUG("B",Y,0))  ;drug ien
 ..Q:'Y
 ..I T,$D(^ATXAX(T,21,"AA",Y)) S BUDC=1_U_"ALG: "_$P(^PSDRUG(Y,0),U,1) Q
 ..S D=$P($G(^PSDRUG(Y,2)),U,4),D=$$STRIP^XLFSTR(D,"-")
 ..I D,$D(^ATXAX(T1,21,"AA",D)) S BUDC=1_U_"ALG: "_$P(^PSDRUG(Y,0),U,1)
 ..;CHECK NAME OF DRUG IN DRUG FILE/TAXONOMY
 Q BUDC
 ;
PROBCAD(P,BDATE,EDATE) ;EP
 NEW S,A,B,T,X,G,V,Y,Z
 S G=""
 S T=$O(^ATXAX("B","BUD CAD DXS",0))
 S X=0,G="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S Z=$P(^AUPNPROB(X,0),U,13)
 .I Z="" S Z=$P(^AUPNPROB(X,0),U,8)
 .Q:Z>EDATE  ;DATE OF ONSET AFTER END DATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"  ;MUST BE ACTIVE
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=X
 .Q
 I G="" Q G
 Q $$FMTE^XLFDT($P(^AUPNPROB(G,0),U,3))_"  Prob: "_$$VAL^XBDIQ1(9000011,G,.01)_U_G
 ;
CAD(P,BDATE,EDATE) ;EP
 NEW A,B,E,T,G,X,V,Y,BUDVS,T1
 K G
 S A="BUDVS(",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 S T=$O(^ATXAX("B","BUD CAD DXS",0))
 S T1=$O(^ATXAX("B","BUD CARDIAC SURGERY DXS",0))
 I 'T Q ""
 S X=0,G="" F  S X=$O(BUDVS(X)) Q:X'=+X  S V=$P(BUDVS(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y  D
 ..S D=0
 ..I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U)
 ..I $$ICD^ATXCHK(%,T,9) S D=1
 ..I $$ICD^ATXCHK(%,T1,9) S D=1
 ..Q:'D
 ..S G($$VD^APCLV(V))=$$VAL^XBDIQ1(9000010.07,Y,.01)
 ..Q
 S Y=$O(G(""),-1)
 ;W !,P," ",Y,"  " ZW G
 I Y S X=G(Y) Q $$FMTE^XLFDT(Y)_"  "_X_U_Y
 S Y=$$CPT^BUDBDU(P,$$DOB^AUPNPAT(P),EDATE,$O(^ATXAX("B","BUD CAD CPTS",0)),5)
 I Y Q $$FMTE^XLFDT($P(Y,U,1))_"  CPT: "_$P(Y,U,2)
 S Y=$$LASTPRC^BUDBUTL1(P,"BUD CABG PTCA PROCS",$$DOB^AUPNPAT(P),EDATE)
 I Y]"" Q $$FMTE^XLFDT($P(Y,U,3))_"  PROC: "_$P(Y,U,2)
 S Y=$$PROBCAD(P,BDATE,EDATE)
 I Y]"" Q Y
 Q ""
LIPITHER(P,BD,ED) ;
 NEW BUDMEDS1,G,A,C,M,V,V1D
 S G=""
 D GETMEDS^BUDBUTL2(P,BD,ED,"BUD LIPID LOWERING MEDS","BGPMU LIPID LOWERING NDCS",,,.BUDMEDS1)
 I '$D(BUDMEDS1) Q G  ; no meds
 S BUDISD=""
 S A=0,C="" F  S A=$O(BUDMEDS1(A)) Q:A'=+A!(C)  D
 .S M=$P(BUDMEDS1(A),U,4)  ;IEN OF V MED
 .Q:'$D(^AUPNVMED(M,0))
 .I $$UP^XLFSTR($P($G(^AUPNVMED(M,11)),U))["RETURNED TO STOCK" K BUDMEDS1(A) Q
 .I $$STATDC(M) K BUDMEDS1(A) Q  ;d/c'ed BY PROVIDER OR EDIT
 .S V=$P(BUDMEDS1(A),U,5)
 .S V1D=$$VD^APCLV(V)
 .S C=1_U_$$VAL^XBDIQ1(9000010.14,M,.01)_" on "_$$FMTE^XLFDT(V1D)
 I C Q C
 Q ""
 ;
STATDC(V) ;EP - is the prescription associated with this V MED discontinued?
 I '$G(V) Q ""
 I '$D(^AUPNVMED(V,0)) Q 0
 NEW P,S,X
 S P=$S($D(^PSRX("APCC",V)):$O(^(V,0)),1:0)
 I 'P Q 0
 S X=$P($G(^PSRX(P,0)),U,15)
 I X=12 Q 1
 I X=13 Q 1
 I X=14 Q 1
 I X=15 Q 1
 S X=$P($G(^PSRX(P,"STA")),U,1)
 I X=12 Q 1
 I X=13 Q 1
 I X=14 Q 1
 I X=15 Q 1
 Q 0
GETV(P,BD,ED,SITE) ;EP - get all visits for this patient and COUNT MEDICAL VISITS
 NEW TV,T35V,T6V,MEDV,MEDVI,LASTV,A,X,VLOC,CLINC,TIEN,VSIT,VDATE,PP,S,LINE,D
 S TV=0,T35V=0,T6V=0,MEDV=0,MEDVI="",LASTV=""
 S A="A(""VISITS"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BD)_"-"_$$FMTE^XLFDT(ED),E=$$START1^APCLDF(B,A)
 S X=0 F  S X=$O(A("VISITS",X)) Q:X'=+X!(MEDV>1)  S VSIT=$P(A("VISITS",X),U,5) D
 .Q:'$D(^AUPNVSIT(VSIT,0))
 .Q:'$P(^AUPNVSIT(VSIT,0),U,9)
 .Q:$P(^AUPNVSIT(VSIT,0),U,11)
 .S VLOC=$P(^AUPNVSIT(VSIT,0),U,6)
 .Q:VLOC=""
 .Q:'$D(^BUDBSITE(SITE,11,VLOC))  ;not valid location
 .Q:"AHSORMEI"'[$P(^AUPNVSIT(VSIT,0),U,7)
 .S CLINC=$$CLINIC^APCLV(VSIT,"C")
 .S TIEN=$O(^BUDBCNTL("B","FIRST LEVEL CLINIC EXCLUSIONS",0))
 .I CLINC]"",$D(^BUDBCNTL(TIEN,11,"B",CLINC)) Q  ;not a clinic code we want in any table
 .;now eliminate subsequent visits to same provider on same day  = item 4 in SRD visit definition
 .S VDATE=$$VD^APCLV(VSIT)
 .S PP=$$PRIMPROV^APCLV(VSIT,"I")
 .I $P(^AUPNVSIT(VSIT,0),U,7)="I" Q  ;don't count I visits
 .I '$D(^AUPNVPOV("AD",VSIT)) Q
 .S S=0
 .I PP]"" D
 ..S D=$P($G(A("SAMEPROV",P,VDATE,PP)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(VSIT,0),U) S S=1 Q  ;already had a visit to this provider on this date
 ..S A("SAMEPROV",P,VDATE,PP)=$P(^AUPNVSIT(VSIT,0),U)_U_VSIT
 .Q:S  ;quit if already had a visit to this provider
 .S PP=$$PRIMPROV^APCLV(VSIT,"D")
 .I PP="" Q
MEDC .;NOW CHECK FOR MEDICAL CARE, CAN ONLY HAVE 1 PER LOCATION OF ENCOUNTER
 .S S=0
 .S TIEN=$O(^BUDBCNTL("B","MEDICAL CARE LINE NUMBERS",0))
 .;S PP=$$PRIMPROV^APCLV(VSIT,"D")
 .I $E($$VAL^XBDIQ1(9000010,VSIT,.06),1,3)="CHS",PP=15 S LINE=2 G MEDC1
 .S Y=$O(^BUDBTFIV("C",PP,0)) I Y="" S LINE=35 G MEDC1
 .S LINE=$O(^BUDBTFIV("AA",PP,""))
MEDC1 .S S=0
 .I $D(^BUDBCNTL(TIEN,11,"B",LINE)) D
 ..S D=$P($G(A("MEDCARE",P,VDATE,VLOC,TIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(VSIT,0),U) S S=1 Q  ;already have a medical care visit on this date
 ..S A("MEDCARE",P,VDATE,VLOC,TIEN)=$P(^AUPNVSIT(VSIT,0),U)_U_VSIT
 ..S MEDV=MEDV+1,MEDVI=VSIT
 ..Q
 Q MEDV
LDL(P,BDATE,EDATE,NORES) ;EP
 NEW BUDG,BUDT,BUDC,BUDLT,T,B,E,D,L,X,R,G,C,%
 K BUDG,BUDT,BUDC
 S BUDC=0
 S NORES=$G(NORES)
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP LDL LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","DM AUDIT LDL CHOLESTEROL TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""
 ...S R=$P(^AUPNVLAB(X,0),U,4) I R'=+R Q  ;must be a number
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDC=BUDC+1,BUDT(D,BUDC)=$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...I 'R S R=""
 ...S BUDC=BUDC+1,BUDT(D,BUDC)=R
 ...Q
 ; now got though and set return value of done 1 or 0^VALUE^date
 S D=0,G="" F  S D=$O(BUDT(D)) Q:D'=+D!(G]"")  D
 .S C=0 F  S C=$O(BUDT(D,C)) Q:C'=+C!(G]"")  D
 ..S X=BUDT(D,C)
 ..I X="" Q
 ..S G=X_U_(9999999-D)
 ..Q
 Q G
 ;
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
