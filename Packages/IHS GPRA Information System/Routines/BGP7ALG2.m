BGP7ALG2 ; IHS/CMI/LAB - measure AHR.A ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
 ;
STATIN ;EP
 I $G(P)="" Q ""
 S EDATE=$G(EDATE)
 I EDATE="" S EDATE=DT
 I $G(BDATE)="" S BDATE=$$DOB^AUPNPAT(P)
 NEW BGPC,BGPG,BGPY,Y,X,E,N,T,I,BGPLT,D,B,L,T2,BGPLT2
 S BGPC=""
 K BGPG,BGPY S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC=1_U_"Alg Statin POV:  "_$$DATE^BGP7UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N Q
 .S T=$O(^ATXAX("B","BGP ADV EFF CARDIOVASC NEC",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP7UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP7UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP7UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .Q
 I BGPC Q BGPC
 K BGPG S BGPC=0 S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC=1_U_"alg statin POV:  "_$$DATE^BGP7UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_"]  "_N
 I BGPC Q BGPC
 ;now check problem list for these codes
 S BGPC=0
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP7UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP7UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP7UTL2(I,T,9)),N["STATIN"!(N["STATINS") S BGPC=1_U_"alg statin PROBLEM LIST:  "_$$DATE^BGP7UTL($P(^AUPNPROB(X,0),U,8))_"  ["_Y_"]  "_N
 .Q
 I BGPC Q BGPC
 ;now check allergy tracking
 S BGPC=0
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["STATIN" S BGPC=1_U_" alg statin ALLERGY TRACKING:  "_$$DATE^BGP7UTL($P(^GMR(120.8,X,0),U,4))_"  "_N
 I BGPC Q BGPC
 ;now go into the report period items
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP MYOPATHY/MYALGIA;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_"Statin allergy POV:  "_$$DATE^BGP7UTL($P(BGPG(1),U))_" ["_$P(BGPG(1),U,2)_"]    "_$$VAL^XBDIQ1(9000010.07,+$P(BGPG(1),U,4),.04)
 ;creatine lab value > 10,000 or 10x uln
 S BGPG=""
 S T=$O(^ATXAX("B","BGP CREATINE KINASE LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP CREATINE KINASE TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPG)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) I $$RESCK(X) S BGPG=1_U_"adr statin creat kinase of "_$P(^AUPNVLAB(X,0),U,4)_" on "_$$DATE^BGP7UTL((9999999-D)) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP7D2(J,T)
 ...I $$RESCK(X) S BGPG=1_U_"adr statin creat kinase of "_$P(^AUPNVLAB(X,0),U,4)_" on "_$$DATE^BGP7UTL((9999999-D)) Q
 ...Q
 I BGPG Q BGPG
 S T=$O(^ATXAX("B","BGP ALT LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT ALT TAX",0))
 S T2=$O(^ATXAX("B","BGP AST LOINC",0))
 S BGPLT2=$O(^ATXLAB("B","DM AUDIT AST TAX",0))
 S B=9999999-$$FMADD^XLFDT(EDATE,-365),E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPG)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPC((9999999-D))=X_U_$P(^AUPNVLAB(X,0),U,4)_U_$P($G(^AUPNVLAB(X,11)),U,5) Q
 ...I BGPLT2,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT2,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPC((9999999-D))=X_U_$P(^AUPNVLAB(X,0),U,4)_U_$P($G(^AUPNVLAB(X,11)),U,5) Q
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...I '$$LOINC^BGP7D2(J,T),'$$LOINC^BGP7D2(J,T2)
 ...S BGPC=BGPC+1,BGPC((9999999-D))=X_U_$P(^AUPNVLAB(X,0),U,4)_U_$P($G(^AUPNVLAB(X,11)),U,5) Q
 ...Q
 ;are they 2 consecutive
 S BGPG=""
 S X=0 F  S X=$O(BGPC(X)) Q:X'=+X!(BGPG)  D
 .Q:'$$RESAL(BGPC(X))
 .;is next one also bad?
 .S Y=$O(BGPC(X))
 .Q:Y=""  ;no next one
 .I $$RESAL(BGPC(Y)) S BGPG=1_U_"adr Statin - AST/ALT" Q
 .Q
 I BGPG Q BGPG
 Q ""
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
