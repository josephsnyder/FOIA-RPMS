BUD8RP6Y ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2008 4:03 PM ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
 ;
 ;
HEP(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
HEPCONT ;check allergy tracking
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUD8RP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["BAKER'S YEAST"!(N["BAKERS YEAST") S G="HEP B Contraindiction: "_$$DATE^BUD8UTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 ;now check immunization package
 F BUDZ=8,44,45,51,104,110 S X=$$ANCONT^BUD8RP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "HEP B Contraindication IM package: "_$$DATE^BUD8UTL1($P(X,U))_" "_$P(X,U,2)
 ;now check for evidence of disease
HEPEVID ;
 K BUDG S %=P_"^LAST DX [BGP HEP EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "HEP B Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUD8DU(P,"BGP HEP EVIDENCE") I X Q "HEP B Evidence: Problem List "_$P(X,U,2)
 ;now get imms and see if there are 3
 K BUDC,BUDG,BUDX
 K BUDOPV,BUDAPOV
HEPIMM ;get all immunizations
 S C="8^44^45^51^104^110"
 K BUDX D GETIMMS^BUD8RP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90723!(Y=90740)!(Y=90744)!(Y=90747)!(Y=90748)!(Y="G0010") S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90723!(Y=90740)!(Y=90744)!(Y=90747)!(Y=90748)!(Y="G0010") S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="HEP B: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q ""
 ;
HIB(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now check for evidence of disease
 F BUDZ=22,46,47,48,49,50,51,120 S X=$$ANCONT^BUD8RP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "HIB Contraindication IM package: "_$$DATE^BUD8UTL1($P(X,U))_" "_$P(X,U,2)
HIBEVID ;
 K BUDG S %=P_"^LAST DX [BGP HIB EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "HIB Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUD8DU(P,"BGP HIB EVIDENCE") I X Q "HIB Evidence: Problem List "_$P(X,U,2)
 ;now get imms and see if there are 3
 K BUDC,BUDG,BUDX
 K BUDOPV,BUDAPOV
HIBIMM ;get all immunizations
 S C="22^46^47^48^49^50^51^120"
 K BUDX D GETIMMS^BUD8RP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90645!(Y=90646)!(Y=90647)!(Y=90648)!(Y=90698)!(Y=90720)!(Y=90721)!(Y=90748) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90645!(Y=90646)!(Y=90647)!(Y=90648)!(Y=90698)!(Y=90720)!(Y=90721)!(Y=90748) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 K BUDG S %=P_"^ALL DX V03.81;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1)),BUDAOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1))
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="HIB: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q ""
 ;
VAR(P,BDATE,EDATE) ;EP
 ;first check for contraindications
VARC ;
 NEW BUDG,%,X,BUDZ,BUDC,BUDX,G,N
 K BUDG S %=P_"^LAST DX [BGP MMR CONTRAINDICATIONS;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "Varicella CONTRA DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUD8DU(P,"BGP MMR CONTRAINDICATIONS") I X Q "VAR CONTRA DX: "_$P(X,U,2)_" on Problem List"
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUD8RP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["NEOMYCIN" S G="VAR Contraindiction: "_$$DATE^BUD8UTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 F BUDZ=21,94 S X=$$MMRCONT^BUD8RP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "Varicella Contraindication: "_$P(X,U,2)_" on "_$$DATE^BUD8UTL1($P(X,U,1))_" Immunization Package"
VAREVID ;
 ;any evidence of VAR?
 K BUDG S %=P_"^LAST DX [BGP VARICELLA EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "Varicella Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUD8DU(P,"BGP VARICELLA EVIDENCE") I X Q "Varicella Evidence: Problem List "_$P(X,U,2)
VARI ;
 K BUDC,BUDG,BUDX
 S BUDVAR=""  ;set to null for all
 ;first gather up all cpt codes that relate in any way to dtap and store in ^TMP
 ;get all immunizations
 S C="21^94"
 K BUDX D GETIMMS^BUD8RP6C(P,BDATE,EDATE,C,.BUDX)  ;before 2nd birthday
 I $D(BUDX) S D=$O(BUDX(0)) Q "Varicella "_BUDX(D)  ;HAD 1 VAR
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y="90710"!(Y="90716") S BUDVAR="Varicella CPT: "_Y_" on "_$$DATE^BUD8UTL1($P($P(^AUPNVSIT(V,0),U),"."))
 I BUDVAR]"" Q "Varicella "_BUDVAR
 ;
 K BUDG S %=P_"^ALL DX V05.4;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "Varicella DX: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U))
 Q ""
 ;
PNEU(P,BDATE,EDATE) ;EP
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now get imms and see if there are 4
 K BUDC,BUDG,BUDX
 F BUDZ=33,100,109 S X=$$ANCONT^BUD8RP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "Pneumovax Contraindication IM package: "_$$DATE^BUD8UTL1($P(X,U))_" "_$P(X,U,2)
 K BUDOPV,BUDAPOV
PNEUIMM ;get all immunizations
 S C="33^100^109"
 K BUDX D GETIMMS^BUD8RP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90669!(Y="G0009")!(Y="G8115") D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90669!(Y="G0009")!(Y="G8115") D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUD8UTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 K BUDG S %=P_"^ALL DX V06.6;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1)),BUDAOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1))
 K BUDG S %=P_"^ALL DX V03.82;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) S X=0 F  S X=$O(BUDG(X)) Q:X'=+X  S BUDOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1)),BUDAOPV($P(BUDG(X),U))="POV: "_$P(BUDG(X),U,2)_" on "_$$DATE^BUD8UTL1($P(BUDG(1),U,1))
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>3 S Y="Pneumovax: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>3 Q Y
 Q ""
 ;
