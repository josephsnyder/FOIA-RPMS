BGP2D82 ; IHS/CMI/LAB - measure C 14 Mar 2010 11:49 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
IRAA ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10,BGPD11,BGPD12)=0
 I 'BGPACTCL S BGPSTOP=1 Q
 I BGPAGEB<16 S BGPSTOP=1 Q  ;must be 16 or older
 I '$$OSTEOAR(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 Q  ;no OSTEOARTHRITIS
 S BGPV=$$MEDSPRE(DFN,BGPBDATE,BGPEDATE)
 I '$P(BGPV,U) S BGPSTOP=1 K ^TMP($J,"A") Q  ;no meds prescribed per logic
 S BGPOSTEO=$P(BGPV,U,1)
 ;S BGPGLUC=$P(BGPV,U,2)
 I BGPACTCL S BGPD1=1
 I BGPACTUP S BGPD2=1
 I BGPAGEB>54,BGPAGEB<65,BGPD1 S BGPD3=1
 I BGPAGEB>64,BGPAGEB<75,BGPD1 S BGPD4=1
 I BGPAGEB>74,BGPAGEB<85,BGPD1 S BGPD5=1
 I BGPAGEB>84,BGPD1 S BGPD6=1
 S BGPCBC=$$CBC(DFN,BGPBDATE,BGPEDATE)
 S BGPLFT=$$LFT(DFN,BGPBDATE,BGPEDATE)
 S BGPCREAT=$$CREAT^BGP2D22(DFN,BGPBDATE,BGPEDATE)
 S BGPN1=0
 I BGPOSTEO S BGPN1=$S('BGPCBC:0,'BGPLFT:0,'BGPCREAT:0,1:1)
 ;I BGPGLUC S BGPN1=$S('BGPUG:0,1:1)
 S BGPVALUE=$S(BGPD1:"AC",1:"")_$P(BGPV,U,5)_"|||"
 I BGPOSTEO S BGPVALUE=BGPVALUE_$S(BGPN1:"YES: ",1:"NO: ")
 I BGPOSTEO,BGPCREAT S BGPVALUE=BGPVALUE_$S(BGPCREAT:$$DATE^BGP2UTL($P(BGPCREAT,U,2))_" CREAT",1:"")
 I BGPOSTEO,BGPCBC S BGPVALUE=BGPVALUE_$S(BGPCREAT:", ",1:""),BGPVALUE=BGPVALUE_$S(BGPCBC:$$DATE^BGP2UTL($P(BGPCBC,U,2))_" CBC",1:"")
 I BGPOSTEO,BGPLFT S BGPVALUE=BGPVALUE_$S(BGPCREAT!(BGPCBC):", ",1:""),BGPVALUE=BGPVALUE_$S(BGPLFT:$$DATE^BGP2UTL($P(BGPLFT,U,2))_" LFT",1:"")
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 K ^TMP($J,"A")
 Q
OSTEOAR(P,BDATE,EDATE) ;EP
 ;must have osteoarthritis on pl prior to BDATE or have a pov prior to bdate
 ;and have 2 povs between bdate and edate
 I '$G(P) Q ""
 S (G,X,Y,A,H,C)=""
 ;first check for pov prior to bdate
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP OSTEOARTHRITIS DXS;DURING "_$$DOB^AUPNPAT(P)_"-"_BDATE S E=$$START1^APCLDF(X,Y)
 S H="" I $D(BGPG(1)) S H=$$DATE^BGP2UTL($P(BGPG(1),U))_" "_$P(BGPG(1),U,2)
 I H]"" G RPDXS
 ;now check for pl entry prior to BDATE
 S T=$O(^ATXAX("B","BGP OSTEOARTHRITIS DXS",0))
 S (X,B)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(H)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>BDATE  ;if added to pl after beginning of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S H=$$DATE^BGP2UTL($P(^AUPNPROB(X,0),U,8))_" "_$P($$ICDDX^ICDCODE(Y),U,2)_" Problem list"
 .Q
 I H="" Q ""  ;don't go further as patient does not have osteoarthritis prior to the report period
RPDXS ;check for 2 dxs in time period
 K BGPG
 S Y="BGPG(",C=""
 S X=P_"^LAST 2 DX [BGP OSTEOARTHRITIS DXS;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(2)) S C="2 dxs: "_$$DATE^BGP2UTL($P(BGPG(2),U))_" "_$$DATE^BGP2UTL($P(BGPG(1),U))
 I H=""!(C="") Q ""
 Q "1^prior: "_H_" rpt period: "_C
 ;
MEDSPRE(P,BDATE,EDATE) ;were meds prescribed in time frame and before?
 I $G(P)="" Q ""
 S (A,B,C,D,E,F,G,H,I,J)=""
 K BGPMEDS1
 D GETMEDS^BGP2UTL2(P,BDATE,EDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S T1=$O(^ATXAX("B","BGP RA OA NSAID MEDS",0))
 S T4=$O(^ATXAX("B","BGP RA OA NSAID NDC",0))
 S T2=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 S (X,G,M,E)=0,D="" F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S V=$P(BGPMEDS1(X),U,5),Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .Q:Z=""  ;BAD POINTER
 .I $D(^ATXAX(T1,21,"B",Z))!($$NDC(Z,T4)) S A=1 Q
 .I $D(^ATXAX(T2,21,"B",Z)) S A=1 Q
 ;now check for B
 ;S T1=$O(^ATXAX("B","BGP OA GLUCOCORTICOIDS MEDS",0))
 ;S T4=$O(^ATXAX("B","BGP OA GLUCOCORTICOIDS CLASS",0))
 ;S (X,G,M,E)=0,C="" F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S V=$P(BGPMEDS1(X),U,5),Y=+$P(BGPMEDS1(X),U,4) D
 ;.Q:'$D(^AUPNVSIT(V,0))
 ;.S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 ;.Q:Z=""  ;BAD POINTER
 ;.I $D(^ATXAX(T1,21,"B",Z))!($$CLASS(Z,T4)) S B=1
 I 'A Q ""  ;none within time frame
 S BDATE=$$FMADD^XLFDT(EDATE,-465)
 K BGPMEDS1
 D GETMEDS^BGP2UTL2(P,BDATE,EDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q ""
 S C=0
 S T1=$O(^ATXAX("B","BGP RA OA NSAID MEDS",0))
 S T4=$O(^ATXAX("B","BGP RA OA NSAID NDC",0))
 S T2=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S V=$P(BGPMEDS1(X),U,5),Y=+$P(BGPMEDS1(X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .Q:Z=""  ;BAD POINTER
 .I $D(^ATXAX(T1,21,"B",Z))!($$NDC(Z,T4)) S C=C+$$DAYS(Y,V,EDATE) Q
 .I $D(^ATXAX(T2,21,"B",Z)) S C=C+$$DAYS(Y,V,EDATE)
 ;GLUCX ;now check for B
 ;S D=0
 ;S T1=$O(^ATXAX("B","BGP OA GLUCOCORTICOIDS MEDS",0))
 ;S T4=$O(^ATXAX("B","BGP OA GLUCOCORTICOIDS CLASS",0))
 ;S X=0 F  S X=$O(BGPMEDS1(X)) Q:X'=+X  S V=$P(BGPMEDS1(X),U,5),Y=+$P(BGPMEDS1(X),U,4) D
 ;.Q:'$D(^AUPNVSIT(V,0))
 ;.S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 ;.Q:Z=""  ;BAD POINTER
 ;.I $D(^ATXAX(T1,21,"B",Z))!($$CLASS(Z,T4)) S D=D+$$DAYS(Y,V,EDATE)
CHCK ;
 S E=.75*($$FMDIFF^XLFDT(EDATE,BDATE))
 S V="" ;I B,D'<E S $P(V,U,2)=1,$P(V,U,4)=D S $P(V,U,5)=$P(V,U,5)_" "_$S(B:D_" days of glucocorticoids",1:"")
 I A,C'<E S $P(V,U)=1,$P(V,U,3)=C S $P(V,U,5)=$P(V,U,5)_" "_$S(A:C_" days of NSAID ",1:"")
 Q V
DAYS(Y,V,E) ;EP
 NEW %,N,S,D
 S N=$P(^AUPNVMED(Y,0),U,7)  ;DAYS SUPPLY
 S %=$P(^AUPNVMED(Y,0),U,8)  ;DATE DISCONTINUED
 ;I %="" Q N
 S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 ;I D="" Q N
 I $$FMADD^XLFDT(D,N)>E S N=$$FMDIFF^XLFDT(E,D)
 I %="" Q N
 I D="" Q N
 S S=$$FMDIFF^XLFDT(%,D)
 I S>0,S<N Q S
 Q N
NDC(A,B) ;
 ;a is drug ien
 ;b is taxonomy ien
 S BGPNDC=$P($G(^PSDRUG(A,2)),U,4)
 I BGPNDC]"",B,$D(^ATXAX(B,21,"B",BGPNDC)) Q 1
 Q 0
CLASS(A,B) ;
 ;a is drug ien
 ;b is taxonomy ien
 S BGPNDC=$P($G(^PSDRUG(A,0)),U,2)
 I BGPNDC]"",B,$D(^ATXAX(B,21,"B",BGPNDC)) Q 1
 Q 0
CBC(P,BDATE,EDATE) ;
 K BGPC
 S BGPC=0
 S %="",E=+$$CODEN^ICPTCOD(85025),%=$$CPTI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"85025"
 S %="",E=+$$CODEN^ICPTCOD(85027),%=$$CPTI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"85027"
 S %="",E=+$$CODEN^ICPTCOD(85025),%=$$TRANI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"85025 TRAN"
 S %="",E=+$$CODEN^ICPTCOD(85027),%=$$TRANI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"85027 TRAN"
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP CBC LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP CBC TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D)_U_"LAB" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP2D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"LOINC"
 ...Q
 Q BGPC
LFT(P,BDATE,EDATE) ;
 K BGPC
 S BGPC=0
 S %="",E=+$$CODEN^ICPTCOD(84460),%=$$CPTI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"84460"
 S %="",E=+$$CODEN^ICPTCOD(84450),%=$$CPTI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"84450"
 S %="",E=+$$CODEN^ICPTCOD(80076),%=$$CPTI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"80076"
 ;TRAN
 S %="",E=+$$CODEN^ICPTCOD(84460),%=$$TRANI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"84460"
 S %="",E=+$$CODEN^ICPTCOD(84450),%=$$TRANI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"84450"
 S %="",E=+$$CODEN^ICPTCOD(80076),%=$$TRANI^BGP2DU(P,BDATE,EDATE,E)
 I %]"" S BGPC=1_U_$P(%,U,2)_U_"80076"
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP ALT LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT ALT TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D)_U_"LAB" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP2D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"LOINC"
 ...Q
 I BGPC Q BGPC
 ;now get all AST
 S T=$O(^ATXAX("B","BGP AST LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT AST TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D)_U_"LAB" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP2D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"LOINC"
 ...Q
 I BGPC Q BGPC
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP LIVER FUNCTION LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP LIVER FUNCTION TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($P(BGPC,U))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!($P(BGPC,U))  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!($P(BGPC,U))  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D)_U_"LAB" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP2D21(J,T)
 ...S BGPC=1_U_(9999999-D)_U_"LOINC"
 ...Q
 Q BGPC
