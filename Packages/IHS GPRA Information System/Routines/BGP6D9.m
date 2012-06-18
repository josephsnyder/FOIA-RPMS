BGP6D9 ; IHS/CMI/LAB - measure J ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
I0303 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPHOSP,BGPHTN)=0
 I BGPAGEB<46 S BGPSTOP=1 Q
 I BGPAGEB>85 S BGPSTOP=1 Q
 I $$ESRD(DFN,BGPEDATE) S BGPSTOP=1 Q  ;esrd anytime before end date
 I $$V1HTN(DFN,BGP365,BGPEDATE),$$FIRSTHTN(DFN,BGPEDATE),BGPACTCL S BGPHTN=1,BGPD1=1
 I 'BGPD1 S BGPSTOP=1 Q  ;not in denominator
 S BGPVALUE=$$MEANBP^BGP6D41(DFN,$$FMADD^XLFDT(BGPEDATE,(2*-365)),BGPEDATE)
 S BGPN1=$S($P(BGPVALUE,U,2):1,1:0)  ;any value 2-6
 S BGPN2=$S($P(BGPVALUE,U,2)=2:1,1:0)
 S BGPN3=$S($P(BGPVALUE,U,2)=3:1,1:0)
 S BGPN4=$S($P(BGPVALUE,U,2)=4:1,1:0)
 S BGPN5=$S($P(BGPVALUE,U,2)=5:1,1:0)
 S BGPN6=$S($P(BGPVALUE,U,2)=6:1,1:0)
 S BGPN9="" I BGPN1,$P(BGPVALUE,"/")<141,+$P(BGPVALUE,"/",2)<91 S BGPN9=1
 S BGPVALUE=$S(BGPD1:"HTN PT",1:"")_"|||"_$S($P(BGPVALUE,U,2)="":"unknown",1:$P(BGPVALUE,U))
 K ^TMP($J,"A")
 Q
IC2 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I '$$MED(DFN,BGP365,BGPEDATE) S BGPSTOP=1 Q  ;no meds for this patient
 I BGPACTUP S BGPD1=1
 I BGPACTCL,BGPACTUP S BGPD2=1
 I '(BGPD1+BGPD2) Q
 S BGPVALUE=$$MEDPED(DFN,BGP365,BGPEDATE)
 I $P(BGPVALUE,U,1)]"" S BGPN1=1
 S V=$S(BGPD1:"UP")_$S(BGPD2:";AC",1:"")
 S V=V_"|||"_$$DATE^BGP6UTL($P(BGPVALUE,U,1))_" "_$P(BGPVALUE,U,2)
 S BGPVALUE=V
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T,BGPG
 K ^TMP($J,"A")
 Q
MEDPED(P,BDATE,EDATE) ;
 K BGPG
 S Y="BGPG("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) Q ""
 S (X,P,D,E)=0,%="",T="" F  S X=$O(BGPG(X)) Q:X'=+X!(E)  D
 .S T=$P(^AUPNVPED(+$P(BGPG(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I $P(T,"-",2)="M"!($P(T,"-",1)="M")!(T="DMC-IN")!(T="FP-DPO")!(T="FP-OC")!(T="ASM-NEB")!(T="ASM-MDI")!(T="PL-NEB")!(T="PL-MDI")!(T="FP-TD") S E=1,$P(%,U,1)=$P(BGPG(X),U),$P(%,U,2)=T Q
 Q %
 ;
MED(P,BDATE,EDATE) ;
 K ^TMP($J,"A")
 S Y="^TMP($J,""A"","
 S X=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,Y,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  D
 .S V=$P(^TMP($J,"A",X),U,5)
 .Q:'$O(^AUPNVMED("AD",V,0))
 .Q:$P(^AUPNVSIT(V,0),U,6)'=DUZ(2)
 .Q:$P(^AUPNVSIT(V,0),U,7)="E"
 .Q:$P(^AUPNVSIT(V,0),U,3)="C"
 .S G=1
 Q G
ESRD(P,EDATE) ;
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP ESRD DXS;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1
 S E=+$$CODEN^ICPTCOD(90921),X=$$CPTI^BGP6DU(P,$$DOB^AUPNPAT(P),EDATE,E)
 I $P(X,U) Q 1
 S E=+$$CODEN^ICPTCOD(90925),X=$$CPTI^BGP6DU(P,$$DOB^AUPNPAT(P),EDATE,E)
 I $P(X,U) Q 1
 Q ""
FIRSTIHD(P,EDATE) ;EP
 I $G(P)="" Q ""
 K BGPG
 S Y="BGPG("
 S X=P_"^FIRST DX [BGP ISCHEMIC HEART DXS" S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) Q ""
 S X=$$FMDIFF^XLFDT(EDATE,$P(BGPG(1),U))
 Q $S(X>365:1,1:"")
 ;
V2IHD(P,BDATE,EDATE) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP ISCHEMIC HEART DXS",0))
 I 'T Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .S G=G+1
 .Q
 Q $S(G<2:"",1:1)
FIRSTHTN(P,EDATE) ;EP
 S X=$$FIRSTPV(P,EDATE) I X Q 1
 ;now check problem list
 S BDATE=$$FMADD^XLFDT(EDATE,-365)
 S T=$O(^ATXAX("B","BGP HYPERTENSION DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>BDATE  ;if added to pl after beginning of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=1
 .Q
 Q G
FIRSTPV(P,EDATE) ;EP
 I $G(P)="" Q ""
 K BGPG
 S Y="BGPG("
 S X=P_"^FIRST DX [BGP HYPERTENSION DXS" S E=$$START1^APCLDF(X,Y)
 I '$D(BGPG(1)) Q ""
 S X=$$FMDIFF^XLFDT(EDATE,$P(BGPG(1),U))
 Q $S(X>365:1,1:"")
 ;
V1HTN(P,BDATE,EDATE) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP HYPERTENSION DXS",0))
 I 'T Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .S G=G+1
 .Q
 Q G
