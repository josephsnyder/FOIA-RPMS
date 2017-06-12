BUDARP6C ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2013 3:10 PM 30 Dec 2013 7:19 PM ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
GETIMMS(P,BDATE,EDATE,C,BUDX) ;EP
 K BUDX
 NEW X,Y,I,Z,V
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .F Z=1:1:$L(C,U) I I=$P(C,U,Z) S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".") I D]"",D'>EDATE,D'<BDATE S BUDX(D)="CVX: "_I_" on "_$$DATE^BUDAUTL1(D)
 .Q
 Q
 ;
IMM ;EP - IMM
 ;must have DOB between in the year - 3
 S BUDX3YRB=($E(BUDBD,1,3)-3)_"0101"
 S BUDX3YRE=($E(BUDED,1,3)-3)_"1231"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 Q:BUDDOB<BUDX3YRB
 Q:BUDDOB>BUDX3YRE
 S BUDX3RD=$E(BUDDOB,1,3)+3_$E(BUDDOB,4,7)
 S BUDX2ND=$E(BUDDOB,1,3)+2_$E(BUDDOB,4,7)
 S BUDX1ST=$E(BUDDOB,1,3)+1_$E(BUDDOB,4,7)
 ;
 Q:BUDMEDV<1  ;didn't have at least 1 medical visit
 S BUDVBBD=$$VBBD^BUDARP6D(DFN,BUDDOB,$$FMADD^XLFDT(BUDX3RD,-1)) I 'BUDVBBD Q   ;no visit before 2ND bd
 S BUDSECTC("PTS")=$G(BUDSECTC("PTS"))+1
 S BUDX42D=$$FMADD^XLFDT(BUDDOB,42)
 S BUDX180D=$$FMADD^XLFDT(BUDDOB,180)
 S (BUDNDTP,BUDNIPV,BUDNMMR,BUDNHEP,BUDNHIB,BUDNVAR,BUDNPNEU)=""
 ;see if ever had a 999.4 before 2nd birthday
 S BUDCTA=""
 S X=$$CONTRA(DFN,BUDDOB,BUDX3RD)
 I X S BUDCTA=X
 I BUDCTA D  Q
 .S BUDSECTC("IMM")=$G(BUDSECTC("IMM"))+1 D  Q
 ..I $G(BUDIMM1L) D
 ...S ^XTMP("BUDARP6B",BUDJ,BUDH,"IMM1",$P(^DPT(DFN,0),U),BUDCOM,DFN)="CONTRA ALL: 999.4 on "_$$FMTE^XLFDT(X)_"|||"_BUDVBBD_U_BUDMEDVI
 ..Q
 S BUDNDTP=$$DTAP^BUDARP6X(DFN,BUDX42D,BUDX3RD)
 S BUDNIPV=$$IPV(DFN,BUDX42D,BUDX3RD)
 S BUDNMMR=$$MMR(DFN,BUDDOB,BUDX3RD)
 S BUDNHEP=$$HEP^BUDARP6Y(DFN,BUDDOB,BUDX3RD)
 S BUDNHIB=$$HIB^BUDARP6Y(DFN,BUDX42D,BUDX3RD)
 S BUDNVAR=$$VAR^BUDARP6Y(DFN,BUDX1ST,BUDX3RD)
 S BUDNPNEU=$$PNEU^BUDARP6Y(DFN,BUDDOB,BUDX3RD)
 ;S BUDNHEPA=$$HEPA^BUDARP6Y(DFN,BUDDOB,BUDX3RD)
 ;S BUDNROTA=$$ROTA^BUDARP6W(DFN,BUD42D,BUDX3RD)
 ;S BUDNFLU=$$FLU^BUDARP6Y(DFN,BUDX280D,BUDX3RD)
 I $P(BUDNDTP,U,1)=1,$P(BUDNIPV,U,1)=1,$P(BUDNMMR,U,1)=1,$P(BUDNHEP,U,1)=1,$P(BUDNHIB,U,1)=1,$P(BUDNVAR,U,1)=1,$P(BUDNPNEU,U,1)=1 S BUDSECTC("IMM")=$G(BUDSECTC("IMM"))+1 D  Q
 .I $G(BUDIMM1L) D
 ..S X=$P(BUDNDTP,U,2)_U_$P(BUDNIPV,U,2)_U_$P(BUDNMMR,U,2)_U_$P(BUDNHEP,U,2)_U_$P(BUDNHIB,U,2)_U_$P(BUDNVAR,U,2)_U_$P(BUDNPNEU,U,2)_"|||"_BUDVBBD_U_BUDMEDVI
 ..S ^XTMP("BUDARP6B",BUDJ,BUDH,"IMM1",$P(^DPT(DFN,0),U),BUDCOM,DFN)=X
 ..Q
 I $G(BUDIMM2L) D
 .S V=$S($P(BUDNDTP,U,1)=1:"",1:$P(BUDNDTP,U,2))_$S($P(BUDNIPV,U,1)=1:"",1:";"_$P(BUDNIPV,U,2))_$S($P(BUDNMMR,U,1)=1:"",1:";"_$P(BUDNMMR,U,2))_$S($P(BUDNHEP,U,1)=1:"",1:";"_$P(BUDNHEP,U,2))
 .S V=V_$S($P(BUDNHIB,U,1)=1:"",1:";"_$P(BUDNHIB,U,2))_$S($P(BUDNVAR,U,1)=1:"",1:";VARI")_$S($P(BUDNPNEU,U,1)=1:"",1:";"_$P(BUDNPNEU,U,2))
 .S ^XTMP("BUDARP6B",BUDJ,BUDH,"IMM2",$P(^DPT(DFN,0),U),BUDCOM,DFN)=V
 Q
 ;
CONTRA(P,BD,ED) ;EP
 NEW D,BUDG,E,%
 K BUDG S %=P_"^LAST DX 999.4;DURING "_BD_"-"_ED,E=$$START1^APCLDF(%,"BUDG(")
 Q $P($G(BUDG(1)),U)
ANAREACT(I) ;EP
 NEW X,Y,R
 S X=0,Y=0 F  S X=$O(^GMR(120.8,I,10,X)) Q:X'=+X  D
 .S R=$P($G(^GMR(120.8,I,10,X,0)),U)
 .Q:R=""
 .S R=$P($G(^GMRD(120.83,R,0)),U)
 .I R'="ANAPHYLAXIS" Q
 .S Y=1
 .Q
 Q Y
 ;
ANCONT(P,C,ED) ;EP - ANALPHYLAXIS CONTRA
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 Q G
 ;
EGGCONT(P,C,ED) ;EP - EGG CONTRA
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Egg Allergy" S G=D_U_"Egg Allergy"
 Q G
ANNECONT(P,C,ED) ;EP - ANALPHYLAXIS/NEOMYCIN CONTRA
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Neomycin Allergy"
 Q G
 ;
MMRCONT(P,C,ED) ;EP - ANALPHYLAXIS/NEOMYCIN/IMMUNE CONTRA
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Neomycin Allergy"
 .I $P(^BICONT(R,0),U,1)="Immune Deficiency" S G=D_U_"Immune Deficiency"
 .I $P(^BICONT(R,0),U,1)["Immune Deficient" S G=D_U_"Immune Deficient"
 .I $P(^BICONT(R,0),U,1)="Immune" S G=D_U_"Immune"
 Q G
 ;
IPV(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
IPVCONT ;check allergy tracking
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["STREPTOMYCIN"!(N["POLYMYXIN B")!(N["NEOMYCIN") S G="1^IPV Contraindiction: "_$$DATE^BUDAUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 .Q:'$$ANAREACT(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 I G]"" Q G
 ;now check immunization package
 F BUDZ=10,89,110,120,130,132 S X=$$ANNECONT(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^IPV Contraindication IM package: "_$$DATE^BUDAUTL1($P(X,U))_" "_$P(X,U,2)
 ;now check for evidence of disease
IPVEVID ;
 K BUDG S %=P_"^LAST DX [BUD IPV EVID DISEASE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^IPV Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U))
 ;S X=$$PLTAX^BUDADU(P,"BUD IPV EVID DISEASE") I X Q "IPV Evidence: Problem List "_$P(X,U,2)
 ;now get imms and see if there are 3
 K BUDC,BUDG,BUDX
 K BUDOPV,BUDAPOV
IPVIMM ;get all immunizations
 S C="10^89^110^120^130^132"
 K BUDX D GETIMMS(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90698!(Y=90713)!(Y=90723) S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDAUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDAUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90698!(Y=90713)!(Y=90723) S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDAUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDAUTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="1^IPV: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 ;now get povs
 K BUDOPV M BUDOPV=BUDAPOV
 I $D(BUDG(1)) S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1)),BUDAOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 K BUDG S %=P_"^ALL PROCEDURE 99.41;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDOPV($P(BUDG(X),U))="Procedure: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1)),BUDAPOV($P(BUDG(X),U))="Procedure: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="1^IPV: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q "0^"_(3-BUDOPV)_" IPV"
 ;
MMR(P,BDATE,EDATE) ;EP
 ;first check for contraindications
 ;dx first
MMRC ;
 NEW BUDG,%,X,BUDZ,BUDC,BUDX,G,N
 K BUDG S %=P_"^LAST DX [BUD MMR CONTRAINDICATIONS;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^MMR CONTRA DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUDADU(P,"BUD MMR CONTRAINDICATIONS") I X Q "1^MMR CONTRA DX: "_$P(X,U,2)_" on Problem List"
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["NEOMYCIN" S G="1^MMR Contraindiction: "_$$DATE^BUDAUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 F BUDZ=3,94,5,7,6 S X=$$MMRCONT(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^MMR Contraindication: "_$P(X,U,2)_" on "_$$DATE^BUDAUTL1($P(X,U,1))_" Immunization Package"
MMREVID ;
 ;any evidence of MMR?
 K BUDG S %=P_"^LAST DX [BGP MEASLES EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^MMR Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U))
 ;S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES EVIDENCE DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 ;
 S X=$$PLTAX^BUDADU(P,"BGP MEASLES EVIDENCE")
 I X Q "1^MMR Evidence: "_$P(X,U,2)_" on "_$$DATE^BUDAUTL1($P(X,U,1))_" problem list"  ;S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES EVIDENCE PROB LIST: "_$P(X,U,2)
 ;no codes for MMR, only individual
MMRI ;
 K BUDC,BUDG,BUDX
 K ^TMP($J,"CPT")
 S (BUDMMR,BUDMUMPS,BUDRUB,BUDMEAS)=""  ;set to null for all
 ;first gather up all cpt codes that relate in any way to MMR and store in ^TMP
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=+Y,$T(@Y)]"" S ^TMP($J,"CPT",9999999-$P(ED,"."),Y)=""
 ;get all immunizations
 S C="3^94"
 K BUDX D GETIMMS(P,BDATE,EDATE,C,.BUDX)  ;before 2nd birthday
 I $D(BUDX) S D=$O(BUDX(0)) Q "1^MMR "_BUDX(D)  ;HAD 1 MMR
 S D=0 F  S D=$O(^TMP($J,"CPT",D)) Q:D'=+D  S Y="" F  S Y=$O(^TMP($J,"CPT",D,Y)) Q:Y=""  D
 .I Y=90707!(Y=90710)!(Y=90708) S BUDMMR="CPT: "_Y_" on "_$$DATE^BUDAUTL1(D)
 I BUDMMR]"" Q "1^MMR "_BUDMMR
 ;
 K BUDG S %=P_"^ALL PROCEDURE 99.45;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^MMR PROCEDURE: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U))
 ;now check individuals
MR ;see if one M/R, Mumps or R/M
 S BUDVALUE=""
ME S C=5
 K BUDX D GETIMMS(P,BDATE,EDATE,C,.BUDX)
 I $D(BUDX) S BUDMEAS=1 S D=$O(BUDX(0)) S BUDVALUE=BUDVALUE_" MEASLES "_BUDX(D)
 S D=0 F  S D=$O(^TMP($J,"CPT",D)) Q:D'=+D  S Y="" F  S Y=$O(^TMP($J,"CPT",D,Y)) Q:Y=""  D
 .I Y=90705!(Y=90708) S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES CPT "_Y_" on "_$$DATE^BUDAUTL1(D)
 K BUDG S %=P_"^ALL PROCEDURE 99.45;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES PROCEDURE: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDMEAS="" K BUDG S %=P_"^LAST DX [BGP MEASLES EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(") I $D(BUDG(1)) S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES EVIDENCE DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDMEAS="" S X=$$PLTAX^BUDADU(P,"BGP MEASLES EVIDENCE") I X S BUDMEAS=1,BUDVALUE=BUDVALUE_" MEASLES EVIDENCE PROB LIST: "_$P(X,U,2)
 I BUDMEAS,BUDMUMPS,BUDRUB Q "1^"_BUDVALUE
MU S C=7
 D GETIMMS(P,BDATE,EDATE,C,.BUDX)
 I $D(BUDX) S BUDMUMPS=1 S D=$O(BUDX(0)) S BUDVALUE=BUDVALUE_" MUMPS "_BUDX(D)
 S D=0 F  S D=$O(^TMP($J,"CPT",D)) Q:D'=+D  S Y="" F  S Y=$O(^TMP($J,"CPT",D,Y)) Q:Y=""  D
 .I Y=90704!(Y=90710) S BUDMUMPS=1,BUDVALUE=BUDVALUE_" MUMPS CPT "_Y_" on "_$$DATE^BUDAUTL1(D)
 K BUDG S %=P_"^ALL PROCEDURE 99.46;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S BUDMUMPS=1,BUDVALUE=BUDVALUE_" MUMPS PROCEDURE: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDMUMPS="" K BUDG S %=P_"^LAST DX [BGP MUMPS EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(") I $D(BUDG(1)) S BUDMUMPS=1,BUDVALUE=BUDVALUE_" MUMPS EVIDENCE DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDMUMPS="" S X=$$PLTAX^BUDADU(P,"BGP MUMPS EVIDENCE") I X S BUDMUMPS=1,BUDVALUE=BUDVALUE_" MUMPS EVIDENCE PROB LIST: "_$P(X,U,2)
 I BUDMEAS,BUDMUMPS,BUDRUB Q "1^"_BUDVALUE
RUB S C=6
 D GETIMMS(P,BDATE,EDATE,C,.BUDX)
 I $D(BUDX) S BUDRUB=1,D=$O(BUDX(0)) S BUDVALUE=BUDVALUE_" RUBELLA "_BUDX(D)
 S D=0 F  S D=$O(^TMP($J,"CPT",D)) Q:D'=+D  S Y="" F  S Y=$O(^TMP($J,"CPT",D,Y)) Q:Y=""  D
 .I Y=90706!(Y=90707)!(Y=90708)!(Y=90710) S BUDRUB=1,BUDVALUE=BUDVALUE_" RUBELLA CPT "_Y_" on "_$$DATE^BUDAUTL1(D)
 K BUDG S %=P_"^ALL PROCEDURE 99.47;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S BUDRUB=1,BUDVALUE=BUDVALUE_" RUBELLA PROCEDURE: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDRUB="" K BUDG S %=P_"^LAST DX [BGP RUBELLA EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(") I $D(BUDG(1)) S BUDRUB=1,BUDVALUE=BUDVALUE_" RUBELLA EVIDENCE DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDAUTL1($P(BUDG(1),U,1))
 I BUDRUB="" S X=$$PLTAX^BUDADU(P,"BGP RUBELLA EVIDENCE") I X S BUDRUB=1,BUDVALUE=BUDVALUE_" RUBELLA EVIDENCE PROB LIST: "_$P(X,U,2)
 I BUDMEAS,BUDMUMPS,BUDRUB Q "1^"_BUDVALUE
 I 'BUDMEAS,'BUDMUMPS,'BUDRUB Q "0^1 MEASLES MUMPS RUBBELLA"
 Q "0^"_$S('BUDMEAS:" 1 MEASLES",1:"")_$S('BUDMUMPS:" 1 MUMPS",1:"")_$S('BUDRUB:" 1 RUBELLA",1:"")
 ;
90707 ;;
90710 ;;
90708 ;;
90705 ;;
90704 ;;
90706 ;; 
