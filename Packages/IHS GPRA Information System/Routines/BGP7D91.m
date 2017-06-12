BGP7D91 ; IHS/CMI/LAB - calc measures 29 Apr 2010 7:38 PM 14 Nov 2006 5:02 PM 12 Nov 2009 11:03 AM 07 Apr 2010 7:00 AM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
EOST ;
 NEW BGPOXV,BGPD,BGPN
 K BGPOXV
 I 'BGPACTUP S BGPSTOP=1 Q  ;no active user pop
 I BGPAGEB<18 S BGPSTOP=1 Q  ;don't process this measure, pt under 18
 S BGPD1=0
 S BGPN1=0,BGPVALUE=""
 S BGPTIA=$$TIAFIB(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)  ;RETURN DATE OF DX
 I 'BGPTIA Q  ;no tia dx ever
 ;now evaluate result
 S BGPD1=1
 S BGPTHER=$$ANTICOAG(DFN,BGPBDATE,BGPEDATE)  ;DATE DRUG
 I BGPTHER]"" S BGPN1=1
 ;
 S BGPVALUE="UP"_"|||"_"DX: "_$$DATE^BGP7UTL(BGPTIA)_" THERAPY: "_$S(BGPTHER]"":BGPTHER,1:"None")
 Q
 ;
TIAFIB(P,BDATE,EDATE) ;EP
 NEW A,X,V,BGPG,G,C,T,B,E,BGPX,BGPV,BGPD
 K BGPR,BGPG,BGPX
 S BGPR="",BGPR(0)=""
 S X=P_"^ALL DX [BGP TIA DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 I '$D(BGPG(1)) Q ""  ;NO TIA
 ;now go through and get rid of H and CHS
 S X=0,G=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S V=$P(BGPG(X),U,5)  ;visit ien
 .;is there a atrial fib on this visit
 .S Y=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y  D
 ..S C=$P($G(^AUPNVPOV(Y,0)),U)
 ..Q:C=""
 ..I $$ICD^BGP7UTL2(C,$O(^ATXAX("B","BGP ATRIAL FIBRILLATION DXS",0)),9) S G=$$VD^APCLV(V)
 I 'G Q "" ;;NO DX
 Q G
ANTICOAG(P,BDATE,EDATE) ;EP - was there ANTICOAG
 NEW BGPD,X,N,E,Y,T,D,C,BGPLT,L,J,BGPG,S
 K BGPG S Y="BGPG(",X=P_"^ALL MED;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0,G="" F  S X=$O(BGPG(X)) Q:X'=+X!(G]"")  D
 .S N=+$P(BGPG(X),U,4)  ;ien of v med
 .S C=$$ANTIDRUG(N)  ;not one of the drugs
 .Q:'$P(C,U)
 .;c=1^category of drug
 .;I $P(^AUPNVMED(N,0),U,8)]"",$P(^AUPNVMED(N,0),U,8)'>EDATE Q  ;discontinued before discharge date
 .;S S=$P(^AUPNVMED(N,0),U,7)
 .;I $P($P(^AUPNVSIT($P(^AUPNVMED(N,0),U,3),0),U),".")=EDATE S G=$$DATE^BGP7UTL(EDATE)_" MET: "_$P(C,U,2)_"^1"  ;PRESCRIBED ON DISCHARGE DATE
 .;S V=$P(^AUPNVMED(N,0),U,3)
 .;S V=$P($P(^AUPNVSIT(V,0),U),".")
 .;I $$FMADD^XLFDT(V,S)<EDATE Q  ;not valid through discharge date
 .S G=$$DATE^BGP7UTL($P(BGPG(X),U,1))_" "_$P(C,U,2)
 I G]"" Q G
 Q ""
 ;
ANTIDRUG(N) ;
 NEW G,T,I
 I '$D(^AUPNVMED(N,0)) Q 0
 I $$UP^XLFSTR($P($G(^AUPNVMED(N,11)),U))["RETURNED TO STOCK" Q 0
 S I=$P($G(^AUPNVMED(N,0)),U)
 I 'I Q 0
 S G=0
 S T=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^ASA"
 S T=$O(^ATXAX("B","BGP CMS WARFARIN MEDS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^WARF"
 S T=$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^ANTI-PLT"
 S G=$P(^PSDRUG(I,0),U,2)
 I G="BL700" Q "1^ANTI-PLT"
 I $P(^PSDRUG(I,0),U)["WARFARIN" Q "1^WARF"
 I $$VAPI^BGP7D81(I,$O(^ATXAX("B","BGP CMS WARFARIN VAPI",0))) Q "1^WARF"
 Q ""
 ;
EOOX ;
 NEW BGPOXV,BGPD,BGPN
 I 'BGPACTUP S BGPSTOP=1 Q  ;no active user pop
 I BGPAGEB<18 S BGPSTOP=1 Q  ;don't process this measure, pt under 18
 S BGPD1=0  ;Number of pneumonia visits
 S BGPN1=0,BGPVALUE=""
 K BGPOXV
 D PNEUOX(DFN,BGPBDATE,BGPEDATE,.BGPOXV)
 ;now evaluate result
 S BGPD1=BGPOXV("DENOM") ;number of pneumonia visits
 I 'BGPD1 S BGPSTOP=1 Q  ;no pneumonia visits
 S BGPN1=$P(BGPOXV(0),U,1)
 S BGPN2=$P(BGPOXV(0),U,2)
 S BGPN3=$P(BGPOXV(0),U,3)
 S BGPD="",BGPN=""
 S C=0 F  S C=$O(BGPOXV(C)) Q:C'=+C  D
 .S BGPD=BGPD_$S(BGPD]"":"; ",1:"")_$P(BGPOXV(C),U)
 .S BGPN=BGPN_$S(BGPN]"":"; ",1:"")_$P(BGPOXV(C),U,2)
 ;
 S BGPVALUE="UP,"_BGPD_"||| "_BGPN
 Q
 ;
PNEUOX(P,BDATE,EDATE,BGPR) ;EP
 NEW A,B,C,D,E,F,G,BGPG,BGPX,BGPD,BGPV,BGPC
 K BGPG,BGPR
 S BGPR="",BGPR(0)=""
 S X=P_"^ALL DX [BGP CMS PNEUMONIA;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 I '$D(BGPG(1)) S BGPR("DENOM")=0 Q
 ;now go through and get rid of CHS or service category not A, O, S
 S A=0 F  S A=$O(BGPG(A)) Q:A'=+A  D
 .S V=$P(BGPG(A),U,5)
 .I '$D(^AUPNVSIT(V,0)) K BGPG(A)
 .I $P(^AUPNVSIT(V,0),U,3)="C" K BGPG(A)
 .I "AOS"'[$P(^AUPNVSIT(V,0),U,7) K BGPG(A)
 I '$D(BGPG) S BGPR("DENOM")=0 Q  ;got rid of them all
 ;reorder the diagnoses by visit date
 S A=0 F  S A=$O(BGPG(A)) Q:A'=+A  S V=$P(BGPG(A),U,5),D=$P($P($G(^AUPNVSIT(V,0)),U),"."),BGPX(D,V)=BGPG(A)
 ;now get the first one
 S BGPD=0,BGPC=0 F  S BGPD=$O(BGPX(BGPD)) Q:BGPD'=+BGPD  D
 .S BGPV=0 F  S BGPV=$O(BGPX(BGPD,BGPV)) Q:BGPV'=+BGPV  D
 ..S BGPC=BGPC+1,BGPR(BGPC)=BGPC_") "_$$DATE^BGP2UTL(BGPD)_" "_$P(BGPX(BGPD,BGPV),U,2)  ;set denominator
 ..S G=$$OXSAT(BGPV)  ; any o2 saturation on this visit?
 ..S $P(BGPR(BGPC),U,2)=BGPC_") "_$P(G,U,1)  ;set numerator column
 ..S $P(BGPR(0),U,$P(G,U,2))=$P(BGPR(0),U,$P(G,U,2))+1
 ..;now delete out all visits that are <46 days difference and all other visits on the same day
 ..S V=BGPV F  S V=$O(BGPX(BGPD,V)) Q:V'=+V  K BGPX(BGPD,V)
 ..S D=BGPD,V=BGPV F  S D=$O(BGPX(D)) Q:D'=+D  D
 ...S V=0 F  S V=$O(BGPX(D,V)) Q:V'=+V  I $$FMDIFF^XLFDT(D,BGPD)<46 K BGPX(D,V)
 S BGPR("DENOM")=BGPC
 Q
 ;
OXSAT(V) ;was there ox sat at the visit
 ;get all O2 measurements on or after admission date
 NEW BGPD,X,N,E,Y,T,D,C,BGPLT,L,J,BGPG,M,M1
 S BGPG=""
 S BGPD=$P($P(^AUPNVSIT(V,0),U),".")
 ;K BGPG S Y="BGPG(",X=P_"^ALL MEAS O2;DURING "_$$FMTE^XLFDT(BD)_"-"_$$FMTE^XLFDT(ED) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(^AUPNVMSR("AD",V,X)) Q:X'=+X!(BGPG]"")  I $$VAL^XBDIQ1(9000010.01,X,.01)="O2" S BGPG=$$DATE^BGP2UTL(BGPD)_" O2 MEAS^1"
 I BGPG]"" Q BGPG
 ;now check for cpts
 S T=$O(^ATXAX("B","BGP CMS ABG CPTS",0))
 S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(BGPG]"")  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S C=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^BGP7UTL2(C,T,1)
 .S M=$$VAL^XBDIQ1(9000010.18,X,.08)
 .S M1=$$VAL^XBDIQ1(9000010.18,X,.09)
 .I $P(^ICPT(C,0),U)="3028F",(M="1P"!(M="2P")!(M="3P")!(M="4P")!(M="8P")) Q  ;3028f and has modifier
 .I $P(^ICPT(C,0),U)="3028F",(M1="1P"!(M="2P")!(M="3P")!(M="4P")!(M="8P")) Q  ;3028f and has modifier
 .S BGPG=$$DATE^BGP2UTL(BGPD)_" O2 SAT: CPT "_$P($$CPT^ICPTCOD(C),U,2)_"^1"
 .Q
 I BGPG]"" Q BGPG
 ;now check v tran
 S T=$O(^ATXAX("B","BGP CMS ABG CPTS",0))
 S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X!(BGPG]"")  D
 .Q:'$D(^AUPNVTC(X,0))
 .S C=$P(^AUPNVTC(X,0),U,7)
 .Q:C=""
 .Q:'$$ICD^BGP7UTL2(C,T,1)
 .S BGPG=$$DATE^BGP2UTL(BGPD)_" O2 SAT: CPT "_$P($$CPT^ICPTCOD(C),U,2)_"^1"
 .Q
 I BGPG]"" Q BGPG
 ;now check for lab tests
 S T=$O(^ATXAX("B","BGP CMS ABG LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP CMS ABG TESTS",0))
 S X=0 F  S X=$O(^AUPNVLAB("AD",V,X)) Q:X'=+X!(BGPG]"")  D
 .Q:'$D(^AUPNVLAB(X,0))
 .I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPG=$$DATE^BGP2UTL(BGPD)_" O2 SAT: LAB "_$$VAL^XBDIQ1(9000010.09,X,.01)_"^1" Q
 .Q:'T
 .S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 .Q:'$$LOINC^BGP2D21(J,T)
 .S BGPG=$$DATE^BGP2UTL(BGPD)_" O2 SAT: LAB "_$$VAL^XBDIQ1(9000010.09,X,.01)_"^1" Q
 I BGPG]"" Q BGPG
 Q $$DATE^BGP2UTL(BGPD)_" None^3"
 ;
