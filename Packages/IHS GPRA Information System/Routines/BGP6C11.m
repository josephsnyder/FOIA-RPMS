BGP6C11 ; IHS/CMI/LAB - calc CMS measures 02 Jul 2010 8:31 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
LVSD1(P,BGPD,BGPY) ;
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N,I,T
 S BGPC=0 K BGPY
LVSDPOV ;
 S X=0 F  S X=$O(^AUPNVPOV("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVPOV(X,0))
 .S I=$P($G(^AUPNVPOV(X,0)),U) Q:'I
 .S Y=$P($$ICDDX^BGP6UTL2(I),U,2)
 .S T=$O(^ATXAX("B","BGP CMS LVSD DXS",0))
 .Q:'$$ICD^BGP6UTL2(I,T,9)
 .S V=$P(^AUPNVPOV(X,0),U,3)
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .I V>BGPD Q
 .S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04)
CEFMEAS ;
 K BGPG S Y="BGPG(",X=P_"^ALL MEAS CEF;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(DFN))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .Q:$P($G(^AUPNVMSR(Y,2)),U,1)
 .S N=$P(^AUPNVMSR(Y,0),U,4)
 .S BGPC=BGPC+1,BGPY(BGPC)="MEASUREMENT CEF:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  value: "_N
 .Q
CEFPROC ;
 S X=0 F  S X=$O(^AUPNVPRC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVPRC(X,0))
 .S I=$P($G(^AUPNVPRC(X,0)),U) Q:'I
 .S Y=$P($$ICDOP^BGP6UTL2(I),U,2)
 .S T="",T=$O(^ATXAX("B","BGP CMS EJECTION FRACTION PROC",0))
 .I $$ICD^BGP6UTL2(I,T,0) D
 ..S V=$P(^AUPNVPRC(X,0),U,3)
 ..S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 ..I V>BGPD Q
 ..S BGPC=BGPC+1,BGPY(BGPC)="CEF PROCEDURE:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.08,X,.04)
CEFCPT ;
 S X=0 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S I=$P($G(^AUPNVCPT(X,0)),U) Q:'I
 .S Y=$P($$CPT^ICPTCOD(I),U,2)
 .S T="",T=$O(^ATXAX("B","BGP CMS EJECTION FRACTION CPTS",0))
 .I $$ICD^BGP6UTL2(I,T,1) D
 ..S V=$P(^AUPNVCPT(X,0),U,3)
 ..S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 ..I V>BGPD Q
 ..S BGPC=BGPC+1,BGPY(BGPC)="CEF CPT:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$P($$CPT^ICPTCOD(I,V),U,3)
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S I=$P($G(^AUPNVTC(X,0)),U,7) Q:'I
 .S Y=$P($$CPT^ICPTCOD(I),U,2)
 .Q:Y=""
 .S T="",T=$O(^ATXAX("B","BGP CMS EJECTION FRACTION CPTS",0))
 .I $$ICD^BGP6UTL2(I,T,1) D
 ..S V=$P(^AUPNVTC(X,0),U,3)
 ..S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 ..I V>BGPD Q
 ..S BGPC=BGPC+1,BGPY(BGPC)="CEF TRAN CODE:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$P($$CPT^ICPTCOD(I,V),U,3)
 Q
ACEIALG1(P,BGPD,BGPY) ;EP
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N
 S:$G(BGPC)="" BGPC=0
 S ED=$$FMADD^XLFDT(BGPD,-365)
ACEIPOV ;
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE I") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(BGPG(X),U))_" ADR POV "_$P(BGPG(X),U,2) Q
 .S T=$O(^ATXAX("B","BGP ADV EFF ANTIHYPERTEN AGT",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(BGPG(X),U))_" ADR POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]" Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(BGPG(X),U))_" ADR POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]" Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(BGPG(X),U))_" ADR POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]" Q
 .Q
 S G=""
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ADV EFF ANTIHYPER 10;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPC=BGPC+1,BGPY(BGPC)="ADR POV:  "_$$DATE^BGP6UTL($P(BGPG(1),U))_"  ["_$P(BGPG(1),U,2)_"]"
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(DFN))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE I") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(BGPG(X),U))_" ADR POV "_$P(BGPG(X),U,2)
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP6UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>BGPD
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP6UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP6UTL2(I,T,9)),N["ACEI"!(N["ACE I") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(^AUPNPROB(X,0),U,8))_" ADR Problem List "_Y_" "_N Q
 .I $$ICD^BGP6UTL2(I,$O(^ATXAX("B","BGP ADV EFF ANTIHYPER 10",0)),9) S BGPC=BGPC+1,BGPY(BGPC)="ADR PROBLEM LIST:  "_$$DATE^BGP6UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "
 .Q
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>BGPD
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE INHIBITOR") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP6UTL($P(^GMR(120.8,X,0),U,4))_" ADR ALLERGY TRACKING  "
 D ARBALG1^BGP6C13
 Q
ACEIRX1(P,BGPA,BGPD,BGPY) ;EP
 NEW BGPG,BGPC,X,Y,Z,E,BD,ED
 S BGPC=0
 S ED=$$FMADD^XLFDT(BGPA,-1)
 S BD=$$FMADD^XLFDT(BGPA,-365)
 D GETMEDS^BGP6CU(P,BD,ED,"BGP CMS ACEI MEDS","BGP CMS ACEI MEDS NDC","BGP CMS ACEI MEDS CLASS")
 S BD=BGPA
 S ED=$$FMADD^XLFDT(BGPD,30)
 D GETMEDS^BGP6CU(P,BD,ED,"BGP CMS ACEI MEDS","BGP CMS ACEI MEDS NDC","BGP CMS ACEI MEDS CLASS")
 K BGPG
 D ARBRX1^BGP6C13
 Q
DSCH(H) ;
 Q $P($P(^AUPNVINP(H,0),U),".")
BETAALG1(P,BGPD,BGPY) ;have an ACEI allergy
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N
 S BGPC=0
 S ED=$$FMADD^XLFDT(BGPD,-365)
BETAPOV ;
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF CARD RHYTH",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP6UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP6UTL2(Z),U,2)_"]  "_N Q
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(DFN))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP6UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP6UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>BGPD  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP6UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP6UTL2(I,T,9)),N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="PROBLEM LIST:  "_$$DATE^BGP6UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "_N
 .Q
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>BGPD  ;entered after discharge date
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK" S BGPC=BGPC+1,BGPY(BGPC)="ALLERGY TRACKING:  "_$$DATE^BGP6UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 Q
BETABPS1(P,BGPV,BGPY) ;
 K BGPY S BGPC=0
 S X=0 F  S X=$O(^AUPNVMSR("AD",BGPV,X)) Q:X'=+X  D
 .S Y=$P($G(^AUPNVMSR(X,0)),U)
 .Q:'Y
 .S Z=$P($G(^AUTTMSR(Y,0)),U)
 .Q:Z=""
 .Q:Z'="BP"
 .Q:$P($G(^AUPNVSMR(X,2)),U,1)
 .S N=$P(^AUPNVMSR(X,0),U,4)
 .S V=$P(^AUPNVMSR(X,0),U,3)
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .S BGPC=BGPC+1,BGPY(BGPC)="BP:  "_N_"   "_$$DATE^BGP6UTL(V)
 .Q
 S Z=0 F  S Z=$O(^AUPNVSIT("AD",BGPV,Z)) Q:Z'=+Z  D
 .S X=0 F  S X=$O(^AUPNVMSR("AD",Z,X)) Q:X'=+X  D
 ..S Y=$P($G(^AUPNVMSR(X,0)),U)
 ..Q:'Y
 ..S Y=$P($G(^AUTTMSR(Y,0)),U)
 ..Q:Y=""
 ..Q:Y'="BP"
 ..Q:$P($G(^AUPNVMSR(X,2)),U,1)
 ..S N=$P(^AUPNVMSR(X,0),U,4)
 ..S V=$P(^AUPNVMSR(X,0),U,3)
 ..S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 ..S BGPC=BGPC+1,BGPY(BGPC)="BP:  "_N_"   "_$$DATE^BGP6UTL(V)
 .Q
 Q
BETACON1(P,BGPD,BGPDDT,BGPV,BGPY) ;have an ACEI allergy
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N,E
 S BGPC=0 K BGPY
 S BD=$$FMADD^XLFDT(BGPD,-365)
 S T=$O(^ATXAX("B","BGP CMS BRADYCARDIA DXS",0))
 S T1=$O(^ATXAX("B","BGP CMS 2/3 HEART BLOCK DXS",0))
 S T2=$O(^ATXAX("B","BGP CMS CIRCULATORY SHOCK DXS",0))
 S T3=$O(^ATXAX("B","BGP CMS HEART FAILURE DXS",0))
 S X=0 F  S X=$O(^AUPNVPOV("AD",BGPV,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVPOV(X,0))
 .S I=$P($G(^AUPNVPOV(X,0)),U) Q:'I
 .S Y=$P($$ICDDX^BGP6UTL2(I),U,2)
 .S V=$P(^AUPNVPOV(X,0),U,3)
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .I $$ICD^BGP6UTL2(I,T,9) S BGPC=BGPC+1,BGPY(BGPC)="BRADYCARDIA POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 .I $$ICD^BGP6UTL2(I,T1,9) S BGPC=BGPC+1,BGPY(BGPC)="2ND OR 3RD DEGREE HEART BLOCK POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 .I $$ICD^BGP6UTL2(I,T2,9) S BGPC=BGPC+1,BGPY(BGPC)="CIRCULATORY SHOCK POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 .I $$ICD^BGP6UTL2(I,T3,9) S BGPC=BGPC+1,BGPY(BGPC)="HEART FAILURE POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 .Q
 ;
 S Z=0 F  S Z=$O(^AUPNVSIT("AD",BGPV,Z)) Q:Z'=+Z  D
 .S X=0 F  S X=$O(^AUPNVPOV("AD",Z,X)) Q:X'=+X  D
 ..S I=$P($G(^AUPNVPOV(X,0)),U) Q:'I
 ..S Y=$P($$ICDDX^BGP6UTL2(I),U,2)
 ..S V=$P($P($G(^AUPNVSIT(Z,0)),U),".")
 ..I $$ICD^BGP6UTL2(I,T,9) S BGPC=BGPC+1,BGPY(BGPC)="BRADYCARDIA POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 ..I $$ICD^BGP6UTL2(I,T1,9) S BGPC=BGPC+1,BGPY(BGPC)="2ND OR 3RD DEGREE HEART BLOCK POV:  "_$$DATE^BGP6UTL(V)_"  ["_Y_"]  "_$$VAL^XBDIQ1(9000010.07,X,.04) Q
 .Q
 ;
 S T=$O(^ATXAX("B","BGP CMS BETA BLOCKER MEDS",0))
 S Z=$$FMADD^XLFDT(BGPDDT,-365)
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an ACEI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<Z Q  ;documented more than 1 year before discharge
 ..I Y>BGPDDT Q  ;documented after discharge
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPC=BGPC+1,BGPY(BGPC)="NMI BETA BLOCKER:  "_$$VAL^XBDIQ1(9000022,N,.04)_"  "_$$DATE^BGP6UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 S X=$$CPTI^BGP6DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G8011"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8011: "_$$DATE^BGP6UTL($P(X,U,2))
 S X=$$TRANI^BGP6DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G8011"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="TRAN code G8011: "_$$DATE^BGP6UTL($P(X,U,2))
 S X=$$CPTI^BGP6DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G9190"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G9190: "_$$DATE^BGP6UTL($P(X,U,2))
 S X=$$TRANI^BGP6DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G9190"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="TRAN code G9190: "_$$DATE^BGP6UTL($P(X,U,2))
 K BGPG
 Q
BETARX1(P,BGPA,BGPD,BGPY) ;
 NEW BGPG,BGPC,X,Y,Z,E,BD,ED
 S BGPC=0
 S ED=$$FMADD^XLFDT(BGPA,-1)
 S BD=$$FMADD^XLFDT(BGPA,-365)
 D GETMEDS^BGP6CU(P,BD,ED,"BGP CMS BETA BLOCKER MEDS","BGP CMS BETA BLOCKER NDC","BGP CMS BETA BLOCKER CLASS")
 S X=$$CPTI^BGP6DU(P,BD,ED,+$$CODEN^ICPTCOD("G8009"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8009: "_$$DATE^BGP6UTL($P(X,U,2))
 S X=$$TRANI^BGP6DU(P,BD,ED,+$$CODEN^ICPTCOD("G8009"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="TRAN code G8009: "_$$DATE^BGP6UTL($P(X,U,2))
 K BGPG
 S BD=BGPA
 S ED=$$FMADD^XLFDT(BGPD,30)
 D GETMEDS^BGP6CU(P,BD,ED,"BGP CMS BETA BLOCKER MEDS","BGP CMS BETA BLOCKER NDC","BGP CMS BETA BLOCKER CLASS")
 S X=$$CPTI^BGP6DU(P,BD,ED,+$$CODEN^ICPTCOD("G8009"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8009: "_$$DATE^BGP6UTL($P(X,U,2))
 S X=$$TRANI^BGP6DU(P,BD,ED,+$$CODEN^ICPTCOD("G8009"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="TRANBG code G8009: "_$$DATE^BGP6UTL($P(X,U,2))
 K BGPG
 Q
