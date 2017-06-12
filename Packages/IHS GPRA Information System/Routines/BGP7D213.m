BGP7D213 ; IHS/CMI/LAB - measure 6 13 Aug 2015 6:58 AM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
CVD ;EP - called from report execution
 I BGPAGEB<21 S BGPSTOP=1 Q  ;ONLY 21+
 NEW BGPCVDL
 ;F X=1:1:6 S Y="BGPD"_X S @Y=""  ;6 denominators
 F X=1:1:7 S Y="BGPD"_X S @Y=""  ;6 denominators maw 06/22/2016 modified, I think there is supposed to be 7 here
 S (BGPN1,BGPN2,BGPN3)=""  ;2 numerators
 S BGPCVDL=$$CHDLDL^BGP7D212(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)  ;CHD OR LDL^CHD^LDL
 I BGPAGEB>20,BGPAGEB<40,'BGPCVDL S BGPSTOP=1 Q  ;21-39 and no cvd/ldl
 I BGPAGEB>75,'BGPCVDL S BGPSTOP=1 Q  ;>75 and no cvd/ldl
 ;DENOM 1
 I BGPDMD1,BGPAGEB>39,BGPAGEB<76 S BGPD1=1  ;up diabetic ages 40-75
 I BGPAGEB>20,BGPCVDL S BGPD1=1   ;or UP 21+ w/CVD or LDL =>190
 ;DENOM 2  21-39, UP with CVD or LDL >=190
 I BGPAGEB>20,BGPAGEB<40,BGPCVDL S BGPD2=1
 ;DENOM 3 40-75, UP with CVD or LDL =>190
 I BGPAGEB>39,BGPAGEB<76,BGPCVDL S BGPD3=1
 ;DENOM 4 76+ with cvd or ldl >=190
 I BGPAGEB>75,BGPCVDL S BGPD4=1
 ;DENOM 5 UP diabetic 40-75
 I BGPDMD1,BGPAGEB>39,BGPAGEB<76 S BGPD5=1
 ;DENOM 6 up 21+
 I BGPD1 S BGPD6=1
 ;I 'BGPD6 S BGPSTOP=1 Q  ;not in at least UP denominator
 ;now exclude people
 S (BGPEXL1,BGPEXL2,BGPEXL3,BGPEXL4,BGPEXL5,BGPEXL6)=""
 S BGPEXL1=$$STATALG(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,BGPBDATE,BGPEDATE) I BGPEXL1 S (BGPN2,BGPN3)=1 G SETL  ;excl 1
 ;ALCOHOL HEP
 S BGPEXL1=$$ALCHEP^BGP7D212(DFN,BGPBDATE,BGPEDATE) I BGPEXL1 S BGPN2=1 G SETL
 ;NMI
 S BGPEXL1=$$STATNMI^BGP7D212(DFN,BGPBDATE,BGPEDATE) I BGPEXL1 S BGPN2=1 G SETL
 ;PREGNANCY
 S BGPEXL2=$$PREG^BGP7D7(DFN,BGPBDATE,BGPEDATE,1,1,1) I BGPEXL2 S BGPN2=1 G SETL
 ;BREASTFEEDING
 S BGPEXL2=$$BF^BGP7D21(DFN,BGPBDATE,BGPEDATE) I BGPEXL2 S BGPN2=1 G SETL
 ;cirrhosis of liver
 S BGPEXL6=$$CLIVER(DFN,BGPPBD,BGPEDATE) I BGPEXL6 S BGPN2=1 G SETL
 ;PALLIATIVE
 S BGPEXL3=$$LASTDX^BGP7UTL1(DFN,"BGP PALLIATIVE CARE DXS",BGPBDATE,BGPEDATE) I BGPEXL3 S BGPN2=1,BGPEXL3=1_U_$$DATE^BGP7UTL($P(BGPEXL3,U,3))_" Palliative Care" G SETL  ;excl 3
 ;ESRD
 S BGPEXL4=$$ESRD^BGP7D211(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) I BGPEXL4 S BGPEXL4=1_U_$$DATE^BGP7UTL($P(BGPEXL4,U,3))_" ESRD" S BGPN2=1 G SETL  ;excl 4 ESRD
 ;EXCL 5
 NEW BGPSTAT
 S BGPSTAT=$$STATIN^BGP7D214(DFN,BGPBDATE,BGPEDATE,0)
 S BGPEXL5=$$LASTLDLV^BGP7D212(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) I BGPEXL5,'$P(BGPCVDL,U,3),'BGPSTAT S BGPN2=1 G SETL   ;excl 5
 ;numerator
 S BGPN1=BGPSTAT
SETL ;
 I BGPN2 S (BGPD1,BGPD2,BGPD3,BGPD4,BGPD5)=""  ;if exclusion don't count in those denoms per Megan
 I BGPN2,BGPD1 S BGPD6=1
 S BGPVALUE=$S(BGPDMD2:"UP,AD",1:"UP") I BGPDMD1!(BGPCVDL) D
 .;S BGPVALUE=BGPVALUE_" ("
 .I BGPDMD1,'BGPCVDL S BGPVALUE=BGPVALUE_" (DM)"_"|||" Q
 .I BGPDMD1,BGPCVDL S BGPVALUE=BGPVALUE_$S($P(BGPCVDL,U,2):" (DM,CHD)",$P(BGPCVDL,U,3):" (DM,LDL)",1:"")_"|||" Q
 .S BGPVALUE=BGPVALUE_$S($P(BGPCVDL,U,2):" (CHD)",$P(BGPCVDL,U,3):" (LDL)",1:"")_"|||"
 I BGPN1 S BGPVALUE=BGPVALUE_$P(BGPN1,U,2)
 I BGPEXL1 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL1,U,2)
 I BGPEXL2 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL2,U,2)_" Pregnant/Breastfeeding"
 I BGPEXL3 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL3,U,2)
 I BGPEXL4 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL4,U,2)
 I BGPEXL6 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL6,U,2)_" Cirrhosis"
 I BGPEXL5,BGPN2 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL5,U,2)
 K BGPEXL1,BGPEXL2,BGPEXL3,BGPEXL4,BGPEXL5,BGPCVDL
 Q
CLIVER(P,BD,ED) ;EP - cirrhosis of liver?
 NEW %,X
 S X=$$LASTDX^BGP7UTL1(P,"BGP CIRRHOSIS OF LIVER DXS",BD,ED)
 I X Q 1_U_$$DATE^BGP7UTL($P(X,U,3))
 ;PROBLEM LIST
 NEW X
 S X=$$PLTAXID^BGP7DU(P,"BGP CIRRHOSIS OF LIVER DXS",BD,ED)
 I X Q 1
 S X=$$IPLSNOID^BGP7DU(P,"PXRM BGP CIRRHOSIS",BD,ED)
 I X Q 1
 Q ""
STATALG(P,BDATE,EDATE,RPB,RPE) ;EP
 ;get all visits and check for ALT/AST tests on 2 consecutive visits
 NEW BGPG,BGPY,Y,X,N,Z,BGPC,T
 S BGPC=""
 K BGPG,BGPY S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC=1_U_$$DATE^BGP7UTL($P(BGPG(X),U))_" ADR/Allergy POV "_$P(BGPG(X),U,2)
 .S T=$O(^ATXAX("B","BGP ADV EFF CARDIOVASC NEC",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S BGPC=1_U_$$DATE^BGP1UTL($P(BGPG(X),U))_" ADR/Allergy POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S BGPC=1_U_$$DATE^BGP1UTL($P(BGPG(X),U))_" ADR/Allergy POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP7UTL2(Z,T,9) S BGPC=1_U_$$DATE^BGP1UTL($P(BGPG(X),U))_" ADR/Allergy POV ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP7UTL2(Z),U,2)_"]  "_N Q
 .Q
 I BGPC Q BGPC
 K BGPG S BGPC=0 S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["STATIN"!(N["STATINS") S BGPC=1_U_$$DATE^BGP7UTL($P(BGPG(X),U))_" ADR/Allergy POV "_$P(BGPG(X),U,2)  ;_"]"
 I BGPC Q BGPC
 ;PL
 NEW SNT
 S SNT="PXRM BGP ADR STATIN"  ;CODE WITH LATERALITY=BILATERAL
 S BGPC=0
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP7UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .I $P(^AUPNPROB(X,0),U,13)]"",$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;doo
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .;Q:$P(^AUPNPROB(X,0),U,12)="I"  crs 17.0
 .S S=$$VAL^XBDIQ1(9000011,X,80001) I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SNT,S)) S BGPC=1_U_"ADR/Allergy Problem List "_S Q
 .I $$ICD^BGP7UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP7UTL2(I,T,9)),N["STATIN"!(N["STATINS") S BGPC=1_U_$$DATE^BGP7UTL($P(^AUPNPROB(X,0),U,8))_" ADR/Allergy Problem List "_Y  ;_"]"
 .Q
 I BGPC Q BGPC
 ;ART
 S BGPC=0
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["STATIN" S BGPC=1_U_$$DATE^BGP7UTL($P(^GMR(120.8,X,0),U,4))_" ADR/Allergy Allergy Tracking "_N
 I BGPC Q BGPC
 ;now go into the report period items
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP MYOPATHY/MYALGIA;DURING "_$$FMTE^XLFDT(RPB)_"-"_$$FMTE^XLFDT(RPE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_$$DATE^BGP7UTL($P(BGPG(1),U))_" ADR/Allergy POV "_"Myalgia" ;$P(BGPG(1),U,2)  ;_"]"
 ;PROBLEM LIST
 NEW X
 S X=$$PLTAXID^BGP7DU(P,"BGP MYOPATHY/MYALGIA",RPB,RPE)
 I X Q 1_U_"ADR/Allergy Problem List: Myalgia"
 S X=$$IPLSNOID^BGP7DU(P,"PXRM BGP MYOPATHY MYALGIA",RPB,RPE)
 I X Q 1_U_"ADR/Allergy Problem List: Myalgia"
 ;creatine lab value > 10,000 or 10x uln
 S BGPG=""
 S T=$O(^ATXAX("B","BGP CREATINE KINASE LOINC",0))
 S BGPLT=$O(^ATXLAB("B","BGP CREATINE KINASE TAX",0))
 S B=9999999-RPB,E=9999999-RPE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPG)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) I $$RESCK^BGP7D722(X) S BGPG=1_U_$$DATE^BGP7UTL((9999999-D))_" ADR/Allergy creat kinase of "_$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP7D2(J,T)
 ...I $$RESCK^BGP7D722(X) S BGPG=1_U_$$DATE^BGP7UTL((9999999-D))_" ADR/Allergy creat kinase of "_$P(^AUPNVLAB(X,0),U,4) Q
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
 .Q:'$$RESAL^BGP7D722(BGPC(X))
 .;is next one also bad?
 .S Y=$O(BGPC(X))
 .Q:Y=""
 .I $$RESAL^BGP7D722(BGPC(Y)) S BGPG=1_U_" ADR/Allergy AST/ALT" Q
 .Q
 I BGPG Q BGPG
 Q 0
FOOT(P,BDATE,EDATE,REFUSAL) ;EP
 NEW BGPG,%,E,A,Y,X,R,G
 S REFUSAL=$G(REFUSAL)
 K BGPG S %=P_"^LAST EXAM DIABETIC FOOT EXAM;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) Q "1^"_$P(BGPG(1),U)_"^Diab Foot Ex"
 K ^TMP($J,"A")
 S A="^TMP($J,""A"","
 S %=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 S X=0,Y=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$CLINIC^APCLV($P(^TMP($J,"A",X),U,5),"C") I R=65!(R="B7"),'$$DNKA^BGP7D21($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q 1_"^"_D_"^Cl "_R
 S (X,Y)=0,D="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(Y)  S R=$$PRIMPROV^APCLV($P(^TMP($J,"A",X),U,5),"D") I (R=33!(R=84)!(R=25)),'$$DNKA^BGP7D21($P(^TMP($J,"A",X),U,5)) S Y=1,D=$P(^TMP($J,"A",X),U)
 I Y Q "1^"_D_"^Prv "_R
 ;
 S G=$$CPT^BGP7DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP CPT FOOT EXAM",0)),5)
 I G Q 1_U_$P(G,U,1)_"^CPT: "_$P(G,U,2)
 I $G(REFUSAL) Q ""
 S G=$$REFUSAL^BGP7UTL1(P,9999999.15,$O(^AUTTEXAM("B","DIABETIC FOOT EXAM, COMPLETE",0)),BDATE,EDATE)
 I $P(G,U)=1 Q "1^"_$P(G,U,2)_"^Refused"
 Q ""
OPTOM ;EP
 S (BGPD1,BGPN1)=0
 I 'BGPACTCL S BGPSTOP=1 Q
 I BGPAGEB<18 S BGPSTOP=1 Q
 I '$$GLAUCOMA(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 Q
 S BGPD1=1
 S %=$$CPT^BGP7DU(DFN,BGPBDATE,BGPEDATE,$O(^ATXAX("B","BGP OPTIC NERVE HEAD EVAL CPT",0)),6)
 I % S BGPN1=1
 S BGPVALUE="AC|||"_$$DATE^BGP7UTL($P(%,U,2))_" "_$P(%,U,3)
 Q
GLAUCOMA(P,BDATE,EDATE) ;EP
 I $$LASTDX^BGP7UTL1(P,"BGP OPEN ANGLE GLAUCOMA DXS",BDATE,EDATE) Q 1
 I $$PLTAXID^BGP7DU(P,"BGP OPEN ANGLE GLAUCOMA DXS",BDATE,EDATE) Q 1
 I $$IPLSNOID^BGP7DU(P,"PXRM OPEN ANGLE GLAUCOMA",BDATE,EDATE) Q 1
 Q 0
EMP(P,BDATE,EDATE) ;EP
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP EMPHYSEMA DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1
 I $$PLTAXND^BGP7DU(P,"BGP EMPHYSEMA DXS",EDATE) Q 1
 I $$IPLSNOND^BGP7DU(P,"PXRM BGP EMPHYSEMA",EDATE) Q 1
 Q 0
