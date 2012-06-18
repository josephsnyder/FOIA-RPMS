BGP1D31 ; IHS/CMI/LAB - measure C 01 Jun 2011 12:51 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
II ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPHOSP)=0
 I 'BGPACTUP S BGPSTOP=1 Q
 I BGPACTUP S BGPD1=1
 I BGPACTCL S BGPD2=1
 I 'BGPD2 S BGPSTOP=1 Q
 S BGPN1=$$V2ASTH(DFN,BGPBDATE,BGPEDATE)
 I BGPN1 S BGPHOSP=$$HOSP(DFN,BGPBDATE,BGPEDATE) I BGPHOSP S BGPN2=1
 S Z=$P(BGPN1,U,2)
 S BGPVALUE=$S(BGPD2:"AC",1:"")_"|||" I BGPN1 S BGPVALUE=BGPVALUE_Z_$S(BGPHOSP:"; Hosptial: "_$$DATE^BGP1UTL($P(BGPHOSP,U,2)),1:"")
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,T
 Q
V2ASTH(P,BDATE,EDATE) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 I 'T Q ""
 S X=0,G=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G>1)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  I $D(^AUPNVPOV(Y,0)) S %=$P(^AUPNVPOV(Y,0),U) I $$ICD^ATXCHK(%,T,9) S D=1
 .Q:'D
 .S $P(G,U)=$P(G,U)+1,$P(G,U,2)=$P(G,U,2)_$S(G>1:", ",1:" ")_$$DATE^BGP1UTL($P(^TMP($J,"A",X),U))
 .Q
 I G>1 Q 1_U_"2 Dxs PCC:"_$P(G,U,2)
 ;
 NEW S,A,B,T,X,G,V,Y
 S G=""
 S T=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after end of time period
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)'="A"
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .Q:$P(^AUPNPROB(X,0),U,15)=""
 .Q:$P(^AUPNPROB(X,0),U,15)<2
 .S G=1_U_"Severity "_$P(^AUPNPROB(X,0),U,15)_" on PL"
 .Q
 I G Q G
 S EDATE1=9999999-EDATE-1
 S D=$O(^AUPNVAST("AS",P,EDATE1))
 I 'D Q ""
 ;I D>(9999999-BDATE) Q ""
 S LAST="",E=0 F  S E=$O(^AUPNVAST("AS",P,D,E)) Q:E'=+E  S LAST=E
 I 'LAST Q ""
 S S=^AUPNVAST("AS",P,D,LAST)
 I S>1 Q 1_U_"Severity "_S_" on visit "_$$DATE^BGP1UTL(9999999-D)
 Q ""
 ;
LAST(P,BDATE,EDATE) ;EP last asthma dx
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP ASTHMA DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q $$DATE^BGP1UTL($P(BGPG(1),U))_" "_$P(BGPG(1),U,2)
 Q ""
HOSP(P,BDATE,EDATE) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNVSIT("AC",P)) Q ""
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP ASTHMA DXS",0))
 I 'T Q ""
 S (X,G,H)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:$P(^AUPNVSIT(V,0),U,7)'="H"
 .S %=$$PRIMPOV^APCLV(V,"I") I $$ICD^ATXCHK(%,T,9) S G=1,H=$P($P(^AUPNVSIT(V,0),U),".")
 .Q
 Q G_"^"_H
BI() ;
 Q $S($O(^AUTTIMM(0))>100:1,1:0)
PNEU(P,BDATE,EDATE,FORE) ;EP
 K BGPG
 S BGPLPNU=""
 S BD=BDATE
 S ED=EDATE
 S EDATE=$$FMTE^XLFDT(EDATE)
 S BDATE=$$FMTE^XLFDT(BDATE)
 S X=P_"^LAST IMM "_$S($$BI:33,1:19)_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)) S BGPLPNU=$P(BGPG(1),U)_U_"Imm 33"
 S X=P_"^LAST IMM 100;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"Imm 100"
 S X=P_"^LAST IMM 109;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"Imm 109"
 S X=P_"^LAST IMM 133;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"Imm 133"
 K BGPG S %=P_"^LAST PROCEDURE 99.55;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"99.55"
 K BGPG S %=P_"^LAST DX V03.82;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"V03.82"
 ;K BGPG S %=P_"^LAST DX V03.89;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 ;I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"V03.89"
 K BGPG S %=P_"^LAST DX V06.6;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)),$P(BGPLPNU,U,1)<$P(BGPG(1),U) S BGPLPNU=$P(BGPG(1),U,1)_U_"V06.6"
 ;S %="",E=+$$CODEN^ICPTCOD(90732),%=$$CPTI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"90732"
 ;S %="",E=+$$CODEN^ICPTCOD(90669),%=$$CPTI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"90669"
 ;S %="",E=+$$CODEN^ICPTCOD(90732),%=$$TRANI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"90732 TRAN"
 ;S %="",E=+$$CODEN^ICPTCOD(90669),%=$$TRANI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"90669 TRAN"
 ;S %="",E=+$$CODEN^ICPTCOD("G0009"),%=$$CPTI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"G0009"
 ;S %="",E=+$$CODEN^ICPTCOD("G8115"),%=$$CPTI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"G8115"
 ;S %="",E=+$$CODEN^ICPTCOD("G0009"),%=$$TRANI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"G0009 TRAN"
 ;S %="",E=+$$CODEN^ICPTCOD("G8115"),%=$$TRANI^BGP1DU(P,BD,ED,E) I %]"",$P(BGPLPNU,U,1)<$P(%,U,2) S BGPLPNU=$P(%,U,2)_U_"G8115 TRAN"
 S %=$$CPT^BGP1DU(P,BD,ED,$O(^ATXAX("B","BGP PNEUMO IZ CPTS",0)),5)
 I $P(BGPLPNU,U,1)<$P(%,U,1) S BGPLPNU=$P(%,U,1)_U_$P(%,U,2)
 S %=$$TRAN^BGP1DU(P,BD,ED,$O(^ATXAX("B","BGP PNEUMO IZ CPTS",0)),5)
 I $P(BGPLPNU,U,1)<$P(%,U,1) S BGPLPNU=$P(%,U,1)_U_$P(%,U,2)
 I BGPLPNU]"" Q BGPLPNU_U_1
 ;NOW CHECK FOR CONTRAINDICATION (NEW IN 8.0)
 F BGPZ=33,100,109,133 S X=$$ANCONT(P,BGPZ,ED) Q:X]""
 I X]"" Q X_U_3
 ;NMI refusal
 S G=$$NMIREF^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",33,0)),$$DOB^AUPNPAT(P),ED)
 I $P(G,U)=1 Q $P(G,U,2)_U_"NMI Refusal"_U_3
 S G=$$NMIREF^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",100,0)),$$DOB^AUPNPAT(P),ED)
 I $P(G,U)=1 Q $P(G,U,2)_U_"NMI Refusal"_U_3
 S G=$$NMIREF^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",109,0)),$$DOB^AUPNPAT(P),ED)
 I $P(G,U)=1 Q $P(G,U,2)_U_"NMI Refusal"_U_3
 S G=$$NMIREF^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",133,0)),$$DOB^AUPNPAT(P),ED)
 I $P(G,U)=1 Q $P(G,U,2)_U_"NMI Refusal"_U_3
 I $G(FORE) Q ""
 S G=$$REFUSAL^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",33,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_" Refused"_U_2
 S G=$$REFUSAL^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",100,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_" Refused"_U_2
 S G=$$REFUSAL^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",109,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_" Refused"_U_2
 S G=$$REFUSAL^BGP1UTL1(P,9999999.14,$O(^AUTTIMM("C",133,0)),$$FMTE^XLFDT($$FMADD^XLFDT(ED,-365)),EDATE)
 I $P(G,U)=1 I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_" Refused"_U_2
 S BGPRBEG=$$FMADD^XLFDT(ED,-365)
 S (X,G)=0,Y=$O(^AUTTIMM("C",33,0)) F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)<BGPRBEG
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_"Refusal Imm pkg"_U_2
 S (X,G)=0,Y=$O(^AUTTIMM("C",100,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)<BGPRBEG
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_"Refusal Imm pkg"_U_2
 S (X,G)=0,Y=$O(^AUTTIMM("C",133,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)<BGPRBEG
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_"Refusal Imm pkg"_U_2
 S (X,G)=0,Y=$O(^AUTTIMM("C",109,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:$P(^BIPC(X,0),U,4)<BGPRBEG
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=1
 I G I $P(BGPLPNU,U,1)<$P(G,U,2) S BGPLPNU=$P(G,U,2)_U_"Refusal Imm pkg"_U_2
 Q BGPLPNU
 ;
ANCONT(P,C,ED) ;EP - ANALPHYLAXIS CONTRAINDICATION
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contraindication: Anaphylaxis"
 Q G
ANNECONT(P,C,ED) ;EP - ANALPHYLAXIS/NEOMYCIN CONTRAINDICATION
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contraindication: Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Contraindication: Neomycin Allergy"
 Q G
MMRCONT(P,C,ED) ;EP - ANApHYLAXIS/NEOMYCIN/IMMUNE CONTRAINDICATION
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contraindication: Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Contraindication: Neomycin Allergy"
 .I $P(^BICONT(R,0),U,1)="Immune Deficiency" S G=D_U_"Contraindication: Immune Deficiency"
 .I $P(^BICONT(R,0),U,1)["Immune Deficient" S G=D_U_"Contraindication: Immune Deficient"
 Q G
ANIMCONT(P,C,ED) ;EP - ANApHYLAXIS/IMMUNE CONTRAINDICATION
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contraindication: Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Immune Deficiency" S G=D_U_"Contraindication: Immune Deficiency"
 .I $P(^BICONT(R,0),U,1)["Immune Deficient" S G=D_U_"Contraindication: Immune Deficient"
 Q G
ANEGCONT(P,C,ED) ;EP - ANALPHYLAXIS/EGG CONTRAINDICATION
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contraindication: Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Egg Allergy" S G=D_U_"Contraindication: Egg Allergy"
 Q G
