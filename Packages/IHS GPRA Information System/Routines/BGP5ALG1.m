BGP5ALG1 ; IHS/CMI/LAB - measure AHR.A ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
BETA ;EP - BETA BLOCKER CONTRAINDICATION/NMI REFUSAL
 I $G(P)="" Q ""
 S EDATE=$G(EDATE)
 I EDATE="" S EDATE=DT
 NEW BGPC,BGPG,BGPY,Y,E,X,N,Z,T
 S BGPC=0
BETAPOV ;
 K BGPG,BGPY S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF CARD RHYTH",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .Q
 I BGPC>0 Q 1_U_BGPY(BGPC)
 K BGPG S BGPC=0 S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 I BGPC>0 Q 1_U_BGPY(BGPC)
 ;PL
 S BGPC=0
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP5UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP5UTL2(I,T,9)),N["BETA BLOCK"!(N["BBLOCK")!(N["B BLOCK") S BGPC=BGPC+1,BGPY(BGPC)="PROBLEM LIST:  "_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "_N
 .Q
 I BGPC>0 Q 1_U_BGPY(BGPC)
 ;allergy 
 S BGPC=0
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["BETA BLOCK" S BGPC=BGPC+1,BGPY(BGPC)="ALLERGY TRACKING:  "_$$DATE^BGP5UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 I BGPC>0 Q 1_U_BGPY(BGPC)
 Q ""
 ;
ASA ;EP aspirin allergy
 I $G(P)="" Q ""
 S EDATE=$G(EDATE)
 I EDATE="" S EDATE=DT
 NEW BGPG,G,X,N,Z,Y,T,I,E
 K BGPG
 S G=""
 S X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S Y=+$P(BGPG(X),U,4)
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ASPIRIN"!(N["ASA") S G=1_U_$$DATE^BGP5UTL($P(BGPG(X),U))_" POV code "_$$VAL^XBDIQ1(9000010.07,Y,.01)_" "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF SALICYLATES",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .Q
 I G Q G
 S G=""
 K BGPG S BGPG=$$LASTDX^BGP5UTL1(P,"BGP ADV EFF SALICYLATES 10",$$DOB^AUPNPAT(P),EDATE)
 I BGPG S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG,U,3))_"  ["_$P(BGPG,U,2)_"]"
 I G Q G
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S Y=+$P(BGPG(X),U,4)
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ASPIRIN"!(N["ASA") S G=1_U_$$DATE^BGP5UTL($P(BGPG(X),U))_" POV code "_$$VAL^XBDIQ1(9000010.07,Y,.01)_" "_N
 .Q
 I G Q G
 ;problem list
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP5UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP5UTL2(I,T,9)),N["ASPIRIN"!(N["ASA") S G=1_U_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_" Problem List code "_$$VAL^XBDIQ1(9000011,X,.01)_" "_N
 .Q
 I G Q G
 ;allergy tracking
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["ASPIRIN" S G=1_U_$$DATE^BGP5UTL($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 Q G
 ;
 ;
ACEI ;EP - ACE ALLERGY
 I $G(P)="" Q ""
 S EDATE=$G(EDATE)
 I EDATE="" S EDATE=DT
 NEW ED,BD,BGPG,G,X,Y,Z,N,T,E,I
 S G=""
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE I") S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF ANTIHYPERTEN AGT",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .Q
 I G Q G
 S G=""
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ADV EFF ANTIHYPER 10;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(1),U))_"  ["_$P(BGPG(1),U,2)_"]"
 I G Q G
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE I") S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 I G Q G
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP5UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP5UTL2(I,T,9)),N["ACEI"!(N["ACE I") S G=1_U_"PROBLEM LIST:  "_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "_N Q
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP ADV EFF ANTIHYPER 10",0)),9) S G=1_U_"PROBLEM LIST:  "_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "
 .Q
 I G Q G
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after discharge date
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["ACEI"!(N["ACE INHIBITOR") S G=1_U_"ALLERGY TRACKING:  "_$$DATE^BGP5UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 I G Q G
 Q ""
ARB ;EP - ARB ALLERGIES
 I $G(P)="" Q ""
 S EDATE=$G(EDATE)
 I EDATE="" S EDATE=DT
 NEW ED,BD,BGPG,G,X,Y,Z,N,T,E,I,D,B
 S G=""
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF ANTIHYPERTEN ARB",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP5UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP5UTL2(Z),U,2)_"]  "_N Q
 .Q
 I G Q G
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S G=1_U_"POV:  "_$$DATE^BGP5UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 I G Q G
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP5UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP5UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP5UTL2(I,T,9)),N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S G=1_U_"PROBLEM LIST:  "_$$DATE^BGP5UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "_N
 .Q
 I G Q G
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S G=1_U_"ALLERGY TRACKING:  "_$$DATE^BGP5UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 Q G
 ;
 ;
RESAL(Y) ;
 NEW V,ULN
 S V=+$P(Y,U,2),ULN=$P(Y,U,3)
 I ULN="" Q ""
 I V>(ULN*3) Q 1
 Q ""
RESCK(Y) ;
 NEW V,ULN
 S V=+$P(^AUPNVLAB(X,0),U,4)
 I V>10000 Q 1
 S ULN=$P($G(^AUPNVLAB(X,11)),U,5)
 I ULN="" Q 0
 I V>(ULN*10) Q 1
 Q 0
