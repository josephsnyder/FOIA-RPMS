BGP5D4 ; IHS/CMI/LAB - measure 3 11 Dec 2009 5:58 PM 12 Sep 2010 10:17 AM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
I16 ;EP
 K BGPN1,BGPN2,BGPN3,BGPN4,BGPVALUE,BGPMAM,BGPI8,BGPI81,BGPI8DA,BGPI8DB,BGPI8DC,BGPI8DD,BGPI8DE
 S BGPI8DA=0,BGPI8DB=0,BGPN1=0,BGPN2=0,BGPN3=0,BGPI8DC=0,BGPI8DD=0,BGPI8DE=0
 S BGPI8=$$DEN8(DFN,BGPAGEB,BGPAGEE,BGPSEX,BGPEDATE)
 I BGPACTUP,BGPI8 S BGPI8DA=1
 I BGPACTCL,BGPI8 S BGPI8DB=1
 ;S BGPI81=$$DEN81(DFN,BGPAGEB,BGPAGEE,BGPSEX,BGPEDATE)
 ;I BGPACTCL,BGPI81 S BGPI8DC=1
 ;S BGPI82=0 ;$$DEN82(DFN,BGPAGEB,BGPAGEE,BGPSEX,BGPEDATE)
 ;I BGPACTUP,BGPI82 S BGPI8DE=1
 ;I BGPACTCL,BGPI82 S BGPI8DD=1
 ;I 'BGPI8DA,'BGPI8DB,'BGPI8DC,'BGPI8DD,'BGPI8DE S BGPSTOP=1 Q  ;not in ANY denom so quit
 I 'BGPI8DA,'BGPI8DB S BGPSTOP=1 Q
 ;I BGPRTYPE=3,'BGPI8DC S BGPSTOP=1 Q  ;not in hedis denominator so stop
 S BGPMAM=$$MAM(DFN,BGPEDATE,2)
 S BGPN1=0 I $P(BGPMAM,U)=1 S BGPN1=1
 I $P(BGPMAM,U,3)["Ref" S BGPN2=1
 I BGPN1,'BGPN2 S BGPN3=1
 I BGPRTYPE'=3 S BGPVALUE=$S(BGPI8DA:"UP",1:"")_$S(BGPI8DB:",AC",1:"")_"|||"_$$DATE^BGP1UTL($P(BGPMAM,U,2))_" "_$P(BGPMAM,U,3)
 I BGPRTYPE=1 S BGPVALUE=$S(BGPI8DA:"UP",1:"")_$S(BGPI8DB:",AC",1:"")_"|||" I BGPN3 S BGPVALUE=BGPVALUE_$$DATE^BGP5UTL($P(BGPMAM,U,2))_" "_$P(BGPMAM,U,3)
 ;I BGPRTYPE=3 S BGPVALUE="AC|||"_$$DATE^BGP5UTL($P(BGPMAM,U,2))_" "_$P(BGPMAM,U,3)
 ;S BGPVALUD="" I BGPI8DD S BGPVALUD="AC 52-74|||" I BGPN3 S BGPVALUD=BGPVALUD_$$DATE^BGP5UTL($P(BGPMAM,U,2))_" "_$P(BGPMAM,U,3)
 K BGPI81,BGPI82,BGPI8,BGPMAM
 Q
 ;
DEN8(P,AGEB,AGEE,SEX,EDATE) ;EP - is women in ind 8
 I SEX'="F" Q 0
 I AGEB<52 Q 0
 I AGEE>64 Q 0
 I $$MAS(P,EDATE) Q 0
 Q 1
DEN82(P,AGEB,AGEE,SEX,EDATE) ;is women 40+
 I SEX'="F" Q 0
 I AGEB<52 Q 0
 I AGEB>74 Q 0
 I $$MAS(P,EDATE) Q 0
 Q 1
DEN81(P,AGEB,AGEE,SEX,EDATE) ;is women in ind 8
 I SEX'="F" Q 0
 I AGEB<42 Q 0
 I AGEE>69 Q 0
 I $$MAS(P,EDATE) Q 0
 Q 1
MAM(P,EDATE,YEARS,FORECAST) ;EP
 S FORECAST=$G(FORECAST)
 S BGPLMAM=""
 K BGP S BDATE=$$FMADD^XLFDT(EDATE,-(365*YEARS))
 S (X,Y,V)=0,G="" F  S X=$O(^AUPNVRAD("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVRAD(X,0))
 .S V=$P(^AUPNVRAD(X,0),U,3)
 .Q:V=""
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:V>EDATE
 .Q:V<BDATE
 .S Y=$P(^AUPNVRAD(X,0),U),Y=$P($G(^RAMIS(71,Y,0)),U,9)
 .Q:Y=""
 .Q:'$$ICD^BGP5UTL2(Y,$S(BGPRTYPE'=3:$O(^ATXAX("B","BGP CPT MAMMOGRAM",0)),1:$O(^ATXAX("B","BGP CPT MAMMOGRAM HEDIS",0))),1)
 .S Y=$P($$CPT^ICPTCOD(Y),U,2)
 .I $P(BGPLMAM,U,2)<V S BGPLMAM="1^"_V_U_"RAD "_Y Q
 .Q
 ;I G]"" Q G
 K BGP  ; S BGP(1)=$$LASTDX^BGP5UTL1(P,"BGP MAMMOGRAM ICDS",BDATE,EDATE)
 ;I $P(BGP(1),U,1),$P(BGPLMAM,U,2)<$P(BGP(1),U,3) S BGPLMAM="1^"_$P(BGP(1),U,3)_"^POV "_$P(BGP(1),U,2)
 S Y="BGP("
 S X=P_"^LAST DX [BGP MAMMOGRAM DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGP(1)),$P(BGPLMAM,U,2)<$P(BGP(1),U,1) S BGPLMAM="1^"_$P(BGP(1),U)_"^POV "_$P(BGP(1),U,2)
MP ;
 K BGP S BGP(1)=$$LASTPRC^BGP5UTL1(P,"BGP MAMMOGRAM PROCEDURES",BDATE,EDATE)
 I $P(BGP(1),U,1),$P(BGPLMAM,U,2)<$P(BGP(1),U,3) S BGPLMAM="1^"_$P(BGP(1),U,3)_"^PROC "_$P(BGP(1),U,2)
 S T=$O(^ATXAX("B","BGP CPT MAMMOGRAM",0))
 I BGPRTYPE=3 S T=$O(^ATXAX("B","BGP CPT MAMMOGRAM HEDIS",0))
 I T D  I X]"",$P(BGPLMAM,U,2)<$P(X,U,1) S BGPLMAM="1^"_$P(X,U,1)_"^"_"CPT "_$P(X,U,2)
 .S X=$$CPT^BGP5DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP5DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,5)
 S T="MAMMOGRAM SCREENING",T=$O(^BWPN("B",T,0))
 I T D  I $P(BGPLMAM,U,2)<X S BGPLMAM="1^"_X_"^WH"
 .S X=$$WH^BGP5DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,3)
 S T="MAMMOGRAM DX BILAT",T=$O(^BWPN("B",T,0))
 I T D  I $P(BGPLMAM,U,2)<X S BGPLMAM="1^"_X_"^WH"
 .S X=$$WH^BGP5DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,3)
 S T="MAMMOGRAM DX UNILAT",T=$O(^BWPN("B",T,0))
 I T D  I $P(BGPLMAM,U,2)<X S BGPLMAM="1^"_X_"^WH"
 .S X=$$WH^BGP5DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,3)
 I BGPLMAM]"" Q BGPLMAM
 ;
 I $G(FORECAST) Q ""
 S T=$$CPTREFT^BGP5UTL1(P,$$FMADD^XLFDT(EDATE,-365),EDATE,$S(BGPRTYPE'=3:$O(^ATXAX("B","BGP CPT MAMMOGRAM",0)),1:$O(^ATXAX("B","BGP CPT MAMMOGRAM HEDIS",0))))
 I T S T="1^"_$P(T,U,2)_"^Refused CPT "_$P(T,U,4) Q T
 S T=$$RADREF^BGP5UTL1(P,$$FMADD^XLFDT(EDATE,-365),EDATE,$S(BGPRTYPE'=3:$O(^ATXAX("B","BGP CPT MAMMOGRAM",0)),1:$O(^ATXAX("B","BGP CPT MAMMOGRAM HEDIS",0))))
 I T S T="1^"_$P(T,U,2)_"^Refused RAD/CPT "_$P(T,U,4)
 Q $S(T:T,1:"")
MAS(P,EDATE) ;EP mastectomy before end of time frame
 NEW BGP,X,Y,Z,G,T,%,D,M,BGPX,E,BGPRL
 K BGP
 S BGP(1)=$$LASTPRC^BGP5UTL1(P,"BGP MASTECTOMY PROCEDURES",$$DOB^AUPNPAT(P),EDATE)
 I $P(BGP(1),U) Q 1
 ;check cpt codes for bilateral
 ;loop through all cpt codes up to Edate and if any match quit
 S (X,Y,Z,G)=0 K BGPX,BGPRL
 S T=$O(^ATXAX("B","BGP MASTECTOMY CPTS",0))
 I T S %="" D  I %]"" Q 1
 .S Y=0 F  S Y=$O(^AUPNVCPT("AC",P,Y)) Q:Y'=+Y!(%]"")  D
 ..S D=$P($G(^AUPNVCPT(Y,0)),U,3)
 ..Q:D=""
 ..S D=$P($P($G(^AUPNVSIT(D,0)),U),".") ;date done
 ..Q:D=""
 ..I D>EDATE Q
 ..S X=$P(^AUPNVCPT(Y,0),U)
 ..Q:'$$ICD^BGP5UTL2(X,T,1)
 ..S BGPX(D)=""
 ..I ^DD(9000010.18,.08,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.18,.09,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.08,.08,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.08,.09,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.18,.08,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^AUTTCMOD(M,0)),U) S BGPRL(D,M)=""
 ..I ^DD(9000010.18,.09,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^AUTTCMOD(M,0)),U) S BGPRL(D,M)=""
 ..I ^DD(9000010.08,.08,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^DIC(81.3,M,0)),U) S BGPRL(D,M)=""
 ..I ^DD(9000010.08,.09,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^DIC(81.3,M,0)),U) S BGPRL(D,M)=""
 ..Q
 .Q
 ; now check tran codes
 I T,$D(^AUPNVTC("AC",P)) S %="" D  I %]"" Q 1
 .S E=0 F  S E=$O(^AUPNVTC("AC",P,E)) Q:E'=+E!(%]"")  D
 ..S D=$P($G(^AUPNVTC(E,0)),U,3) Q:'D  S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 ..Q:'$$ICD^BGP5UTL2($P(^AUPNVTC(E,0),U,7),T,1)
 ..I D>EDATE Q
 ..S BGPX(D)=""
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^AUTTCMOD(M,0)),U) S BGPRL(D,M)=""
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^AUTTCMOD(M,0)),U) S BGPRL(D,M)=""
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^DIC(81.3,M,0)),U) S BGPRL(D,M)=""
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^DIC(81.3,M,0)),U) S BGPRL(D,M)=""
 ..Q
 .Q
 ;see if 2 on different dates
 S %=0,X=0,C=0 F  S X=$O(BGPX(X)) Q:X'=+X  S C=C+1
 I C>1 Q 1
 K BGPX
 S T=$O(^ATXAX("B","BGP UNI MASTECTOMY PROCEDURES",0))
 S (F,S)=0 F  S F=$O(^AUPNVPRC("AC",P,F)) Q:F'=+F  S C=$P(^AUPNVPRC(F,0),U) D
 .S G=0 S:$$ICD^BGP5UTL2(C,T,0) G=1
 .Q:G=0
 .S D=$P(^AUPNVPRC(F,0),U,6) I D="" S D=$P($P(^AUPNVSIT($P(^AUPNVPRC(F,0),U,3),0),U),".")
 .I D>EDATE Q
 .S BGPX(D)=$G(BGPX(D))+1
 ;see if 2 on different dates
 S %=0,X=0,C=0 F  S X=$O(BGPX(X)) Q:X'=+X  S C=C+1
 I C>1 Q 1
 ;SEE IF THERE IS A RT AND A LT
 S G="",D=0 F  S D=$O(BGPRL(D)) Q:D'=+D  D
 .I $D(BGPRL(D,"RT")),$D(BGPRL(D,"LT")) S G=1
 I G Q 1
 Q 0
