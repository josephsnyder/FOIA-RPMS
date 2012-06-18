BGP6D84 ; IHS/CMI/LAB - measure C ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
HEDURI ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10,BGPD11,BGPD12)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 S A=$$FMDIFF^XLFDT($$FMADD^XLFDT(BGPBDATE,-180),$P(^DPT(DFN,0),U,3))
 I A<90 S BGPSTOP=1 Q  ;less than 3 months old
 ;S A=$$AGE^AUPNPAT(DFN,$$FMADD^XLFDT(BGPBDATE,-180))
 ;I A<2 S BGPSTOP=1  ;must be at least 2
 S A=$$AGE^AUPNPAT(DFN,$$FMADD^XLFDT(BGPBDATE,180))
 I A>18 S BGPSTOP=1 Q   ;must not be older than 18 on this date
 S BGPDN=$$URI(DFN,$$FMADD^XLFDT(BGPBDATE,-180),$$FMADD^XLFDT(BGPBDATE,180)) I 'BGPDN S BGPSTOP=1 Q  ;no URI DX
 I BGPACTCL S BGPD1=1
 I BGPACTUP S BGPD2=1
 S BGPN=$$CANTI(DFN,BGPDN,$$FMADD^XLFDT(BGPDN,3))
 S BGPN1=$S('$P(BGPN,U):1,1:0)
 S BGPVALUE="UP"_$S(BGPD1:";AC",1:"")_"|||"_$P(BGPN,U,2)_" "_$P(BGPN,U,3)_$S(BGPN1:" MEETS MEASURE",1:"DOES NOT MEET MEASURE")
 K A,B,C,D,E,F,G,H,I,J,K,M,N,O,P,Q,R,S,T,V,W,X,Y,Z,BDATE,EDATE,BGPDN,BGPN,BGPG,BGPC
 K ^TMP($J,"A")
 Q
 ;
URI(P,BDATE,EDATE) ;
 K BGPG
 S Y="BGPG("
 S X=P_"^ALL DX [BGP URI DXS;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) Q 0
 S X=0,G=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S V=$P(BGPG(X),U,5)
 .Q:'$D(^AUPNVSIT(V,0))
 .I "ASO"'[$P(^AUPNVSIT(V,0),U,7) Q  ;not outpatient
 .S (C,E)=0 F  S E=$O(^AUPNVPOV("AD",V,E)) Q:E'=+E  S C=C+1
 .Q:C>1  ;can't have any other diagnoses
 .I $$CLINIC^APCLV(V,"C")=30 D  Q:H  ;if H is 1 then there was a hosp stay so don't use this visit
 ..S H=0
 ..S E=$O(^AUPNVER("AD",V,0)) I E,"ATLM"[$P($G(^AUPNVER(E,0)),U,11) S H=1 Q  ;er visit with admission
 ..S H=$$HOSPURI(P,$P($P(^AUPNVSIT(V,0),U),"."))
 .;NOW CHECK FOR ITEM #4 - NO NEW OR REFILL OF ANTIBIOTICS 30 DAYS PRIOR
 .S BGPD=$P($P(^AUPNVSIT(V,0),U),".")
 .Q:$$NEWRFA(P,$$FMADD^XLFDT(BGPD,-30),$$FMADD^XLFDT(BGPD,-1))
 .Q:$$ACTA(P,BGPD)
 .;Q:'$$CANTI(P,BGPD,$$FMADD^XLFDT(BGPD,3))
 .S G=BGPD
 .Q
 Q G
NDC(A,B) ;
 ;a is drug ien
 ;b is taxonomy ien
 S BGPNDC=$P($G(^PSDRUG(A,2)),U,4)
 I BGPNDC]"",B,$D(^ATXAX(B,21,"B",BGPNDC)) Q 1
 Q 0
NEWRFA(P,BDATE,EDATE) ;
 K ^TMP($J,"A")
 NEW A,B,E,Z,X,D,V,Y,G,M,T,T1
 S A="^TMP($J,""A"",",B=P_"^ALL MEDS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) G NEWFRAP  ;no MEDS
 S T1=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS MEDS",0))
 S T4=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS NDC",0))
 S (X,G,M,E)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(D)  S V=$P(^TMP($J,"A",X),U,5),Y=+$P(^TMP($J,"A",X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .I $D(^ATXAX(T1,21,"B",Z))!($$NDC(Z,T4)),$P(^AUPNVMED(Y,0),U,8)="" S D=1
 K ^TMP($J,"A")
 I D Q D
NEWFRAP ;check V PROCEDURE
 S D=$$LASTPRCI^BGP6UTL1(P,"99.21",BDATE,EDATE)
 Q $P(D,U)
CANTI(P,BDATE,EDATE) ;
 K ^TMP($J,"A")
 NEW A,B,E,Z,X,D,V,Y,G,M,T,T1
 S A="^TMP($J,""A"",",B=P_"^ALL MEDS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) G CANTIP  ;no MEDS
 S T1=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS MEDS",0))
 S T4=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS NDC",0))
 S (X,G,M,E)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(D)  S V=$P(^TMP($J,"A",X),U,5),Y=+$P(^TMP($J,"A",X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .I $D(^ATXAX(T1,21,"B",Z))!($$NDC(Z,T4)) S D=1_U_"antibiotic: "_$$DATE^BGP6UTL($P($P(^AUPNVSIT(V,0),U),"."))
 K ^TMP($J,"A")
 I D Q D
CANTIP ;check V PROCEDURE
 S D=$$LASTPRCI^BGP6UTL1(P,"99.21",BDATE,EDATE)
 Q $P(D,U)_$S(D:"^antibiotic injection: "_$$DATE^BGP6UTL($P(D,U,3)),1:"")
ACTA(P,EDATE) ;
 K ^TMP($J,"A")
 NEW A,B,E,Z,X,D,V,Y,G,M,T,T1
 S A="^TMP($J,""A"",",B=P_"^ALL MEDS;DURING "_$$FMADD^XLFDT(EDATE,-365)_"-"_$$FMADD^XLFDT(EDATE,-1),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) G ACTAP  ;no MEDS
 S T1=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS MEDS",0))
 S T4=$O(^ATXAX("B","BGP HEDIS ANTIBIOTICS NDC",0))
 S (X,G,M,E)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(D)  S V=$P(^TMP($J,"A",X),U,5),Y=+$P(^TMP($J,"A",X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .S B=$$FMDIFF^XLFDT(EDATE,$P($P(^AUPNVSIT(V,0),U),"."))
 .I $D(^ATXAX(T1,21,"B",Z))!($$NDC(Z,T4)),$P(^AUPNVMED(Y,0),U,8)="" I $P(^AUPNVMED(Y,0),U,6)'<B S D=1
 K ^TMP($J,"A")
 I D Q D
ACTAP ;check V PROCEDURE
 S D=$$LASTPRCI^BGP6UTL1(P,"99.21",$$FMADD^XLFDT(EDATE,-30),$$FMADD^XLFDT(EDATE,-1))
 Q $P(D,U)_$S(D:"^antibiotic injection: "_$$DATE^BGP6UTL($P(D,U,3)),1:"")
HOSPURI(P,D) ;is there a hosp with pharyngitis on date D or 1 day later
 S (I,J,K,Q)=0
 F  S I=$O(^AUPNVSIT("AAH",P,I)) Q:I'=+I  D
 .S J=0 F  S J=$O(^AUPNVSIT("AAH",P,I,J)) Q:J'=+J  D
 ..Q:'$D(^AUPNVSIT(J,0))
 ..S K=$P($P(^AUPNVSIT(J,0),U),".")
 ..I K<D Q  ;before outpatient visit
 ..I K>$$FMADD^XLFDT(D,1) Q  ;more than 1 day after outpatient visit date
 ..;now must have a pharyngitis dx
 ..S (R,S,T)=0
 ..F  S R=$O(^AUPNVPOV("AD",J,R)) Q:R'=+R  D
 ...S T=$P($G(^AUPNVPOV(R,0)),U)
 ...Q:T=""
 ...S T=$P($$ICDDX^ICDCODE(T),U,2)
 ...Q:T=""
 ...Q:'$$ICD^ATXCHK(T,$O(^ATXAX("B","BGP URI DXS",0)),9)
 ...S S=1
 ..Q:'S
 ..S Q=1
 .Q
 Q Q
STREP(P,BDATE,EDATE) ;EP
 K BGPC
 S BGPC=0
 S %=$$CPT^BGP6DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP GROUP A STREP CPT",0)))
 I %]"" Q 1_U_%
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP GROUP A STREP LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP GROUP A STREP TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D)_U_"LAB" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"LOINC"
 ...Q
 I BGPC Q BGPC
 ;now check v microbiology
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVMIC("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVMIC("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVMIC("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVMIC(X,0))
 ...I BGPLT,$P(^AUPNVMIC(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVMIC(X,0),U))) S BGPC=1_U_(9999999-D)_U_"MICRO" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVMIC(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"MICRO LOINC"
 ...Q
 Q BGPC
