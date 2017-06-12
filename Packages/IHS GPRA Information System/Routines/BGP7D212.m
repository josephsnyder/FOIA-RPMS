BGP7D212 ; IHS/CMI/LAB - measure 6 19 Sep 2014 8:12 AM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
LOINC(A,B) ;EP 
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
STRC ;EP - called from report execution
 I 'BGPDMD1 S BGPSTOP=1 Q  ;only up diabetics
 I BGPAGEB<21 S BGPSTOP=1 Q  ;ONLY 21+
 NEW BGPCVDL
 F X=1:1:7 S Y="BGPD"_X S @Y=""  ;7 denominators
 S (BGPN1,BGPN2,BGPN3)=""  ;2 numerators
 S BGPCVDL=$$CHDLDL(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)  ;CHD OR LDL^CHD^LDL
 I BGPAGEB>20,BGPAGEB<40,'BGPCVDL S BGPSTOP=1 Q  ;21-39 and no cvd/ldl
 I BGPAGEB>75,'BGPCVDL S BGPSTOP=1 Q  ;>75 and no cvd/ldl
 ;DENOM 1
 I BGPDMD2,BGPAGEB>39,BGPAGEB<76 S BGPD1=1  ;active diabetic ages 40-75
 I BGPDMD2,BGPAGEB>20,BGPCVDL S BGPD1=1   ;or active diabetic 21+ w/CVD or LDL =>190
 ;DENOM 2  21-39, active diabetic with CVD or LDL >=190
 I BGPDMD2,BGPAGEB>20,BGPAGEB<40,BGPCVDL S BGPD2=1
 ;DENOM 3 40-75, active diabetic with CVD or LDL =>190
 I BGPDMD2,BGPAGEB>39,BGPAGEB<76,BGPCVDL S BGPD3=1
 ;DENOM 4 76+ with cvd or ldl >=190
 I BGPDMD2,BGPAGEB>75,BGPCVDL S BGPD4=1
 ;DENOM 5 active diabetic 40-75
 I BGPDMD2,BGPAGEB>39,BGPAGEB<76 S BGPD5=1
 ;DENOM 7 UP DM 40-75 or 12+ with cvd/ldl
 I BGPDMD1,BGPAGEB>39,BGPAGEB<76 S BGPD7=1
 I BGPDMD1,BGPAGEB>20,BGPCVDL S BGPD7=1
 I BGPD1 S BGPD6=1
 ;now exclude people
 S (BGPEXL1,BGPEXL2,BGPEXL3,BGPEXL4,BGPEXL5,BGPSTAT,BGPEXL6)=""
 S BGPEXL1=$$STATALG^BGP7D213(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,BGPBDATE,BGPEDATE) I BGPEXL1 S (BGPN2,BGPN3)=1 G ND  ;excl 1
 ;ALCOHOL HEP
 S BGPEXL1=$$ALCHEP(DFN,BGPBDATE,BGPEDATE) I BGPEXL1 S BGPN2=1 G ND
 ;NMI
 S BGPEXL1=$$STATNMI(DFN,BGPBDATE,BGPEDATE) I BGPEXL1 S BGPN2=1 G ND
 ;PREGNANCY
 S BGPEXL2=$$PREG^BGP7D7(DFN,BGPBDATE,BGPEDATE,1,1,1) I BGPEXL2 S BGPN2=1 G ND
 ;cirrhosis of liver
 S BGPEXL6=$$CLIVER^BGP7D213(DFN,BGPPBD,BGPEDATE) I BGPEXL6 S BGPN2=1 G ND
 ;breastfeeding
 S BGPEXL2=$$BF^BGP7D21(DFN,BGPBDATE,BGPEDATE) I BGPEXL2 S BGPN2=1 G ND
 ;PALLIATIVE
 S BGPEXL3=$$LASTDX^BGP7UTL1(DFN,"BGP PALLIATIVE CARE DXS",BGPBDATE,BGPEDATE) I BGPEXL3 S BGPN2=1,BGPEXL3=1_U_$$DATE^BGP7UTL($P(BGPEXL3,U,3))_" Palliative Care" G ND  ;excl 3
 ;ESRD
 S BGPEXL4=$$ESRD^BGP7D211(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) I BGPEXL4 S BGPEXL4=1_U_$$DATE^BGP7UTL($P(BGPEXL4,U,3))_" ESRD" S BGPN2=1 G ND  ;excl 4 ESRD
 ;EXCL 5
 S BGPSTAT=$$STATIN^BGP7D214(DFN,BGPBDATE,BGPEDATE,0)
 S BGPEXL5=$$LASTLDLV(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) I BGPEXL5,'$P(BGPCVDL,U,3),'BGPSTAT S BGPN2=1 G ND   ;excl 5
ND ;
 ;DENOM 6 active diabetic 21+
 I BGPN2,BGPD1 S BGPD6=1
 I BGPN2 S (BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD7)="" ;EXCLUDE EXCLUSIONS FROM DENOMINATORS
 I '(BGPD1+BGPD2+BGPD3+BGPD4+BGPD5+BGPD6+BGPD7) S BGPSTOP=1 Q  ;not in at least UP denominator
 ;numerator
 I 'BGPN2 S BGPN1=BGPSTAT
SETL ;
 ;S BGPVALUE=$S(BGPD1:"STA.1.1",1:"")_" "_$S(BGPD2:"STA.2.1",1:"")_" "_$S(BGPD3:"STA.3.1",1:"")_" "_$S(BGPD4:"STA.4.1",1:"")_" "_$S(BGPD5:"STA.5.1",1:"")_" "_$S(BGPD6:"STA.6.1",1:"")_" "_$S(BGPD7:"STA.7.1",1:"")
 S BGPVALUE=$S(BGPDMD2:"UP,AD",1:"UP")_$S($P(BGPCVDL,U,2):" (CHD)",$P(BGPCVDL,U,3):" (LDL)",1:"")_"|||"
 I BGPN1 S BGPVALUE=BGPVALUE_$P(BGPN1,U,2)
 I BGPEXL1 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL1,U,2)
 I BGPEXL2 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL2,U,2)_" Pregnant/Breastfeeding"
 I BGPEXL3 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL3,U,2)
 I BGPEXL4 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL4,U,2)
 I BGPEXL6 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL6,U,2)_" Cirrhosis"
 I BGPEXL5,BGPN2 S BGPVALUE=BGPVALUE_"Exclusion: "_$P(BGPEXL5,U,2)
 K BGPEXL1,BGPEXL2,BGPEXL3,BGPEXL4,BGPEXL5,BGPCVDL,BGPSTAT,BGPEXL6
 Q
CHDLDL(P,BDATE,EDATE) ;EP - chd or ldl =>190
 NEW RESULT
 S RESULT=""
 I $$CHD(P,BDATE,EDATE,0) S RESULT="1^1"
 K TMP($J,"A")
 I $$LDL190(P,BDATE,EDATE) S $P(RESULT,U,3)=1,$P(RESULT,U,1)=1
 K ^TMP($J,"A")
 Q RESULT
ALCHEP(P,BDATE,EDATE) ;EP
 ;NOW CHECK ALCOHOL HEPATITIS
 NEW BGPG,Y,X,E
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP ALCOHOL HEPATITIS DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_$$DATE^BGP7UTL($P(BGPG(1),U,1))_" Alc Hep"
 S X=$$PLTAXID^BGP7DU(P,"BGP ALCOHOL HEPATITIS DXS",BDATE,EDATE)
 I X Q 1_U_"Prob List Alc Hep"
 S X=$$IPLSNOID^BGP7DU(P,"PXRM BGP ACUTE ETOH HEPATITIS",BDATE,EDATE)
 I X Q 1_U_"Prob List Alc Hep"
 Q ""
CHD(P,BDATE,EDATE,MIN) ;EP
 NEW A,B,E,T,X,G,V,Y,%,G,F,BGPG,BGPCNT,T1,BGPALL,T2,T3
 S X=$$CHDPL^BGP7D21A(P,EDATE)
 I X Q 1
 K BGPALL
 S BGPCNT=0
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP CHD DXS",0))
 S T1=$O(^ATXAX("B","BGP AMI DXS PAMT",0))
 S T2=$O(^ATXAX("B","BGP IVD DXS",0))
 S T3=$O(^ATXAX("B","BGP TIA DXS",0))
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(BGPCNT>MIN)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .;Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  I $D(^AUPNVPOV(Y,0)) D
 ..S %=$P(^AUPNVPOV(Y,0),U)
 ..I $$ICD^BGP7UTL2(%,T,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(%,T1,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(%,T2,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(%,T3,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 I BGPCNT>MIN Q 1
CHDP ;NOW CHECK FOR MINPROC
 ;S BGPCNT=0
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(BGPCNT>MIN)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .;Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .S T1=$O(^ATXAX("B","BGP PCI DXS",0))
 .S T2=$O(^ATXAX("B","BGP CABG DXS",0))
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  I $D(^AUPNVPOV(Y,0)) D
 ..S %=$P(^AUPNVPOV(Y,0),U)
 ..I $$ICD^BGP7UTL2(%,T1,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(%,T2,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .I BGPCNT>MIN Q
 .;check for procedure in BGP CABG PROCS
 .S E=$O(^ATXAX("B","BGP CABG PROCS",0))
 .S F=$O(^ATXAX("B","BGP PCI CM PROCS",0))
 .S Y=0 F  S Y=$O(^AUPNVPRC("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  D
 ..Q:'$D(^AUPNVPRC(Y,0))
 ..I $$ICD^BGP7UTL2($P(^AUPNVPRC(Y,0),U,1),E,0) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2($P(^AUPNVPRC(Y,0),U,1),F,0) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1
 .I BGPCNT>MIN Q
 .;now check cpts
 .S E=$O(^ATXAX("B","BGP CABG CPTS",0))
 .S F=$O(^ATXAX("B","BGP PCI CPTS",0))
 .S G=$O(^ATXAX("B","BGP REVASCULARIZATION CPTS",0))
 .S Y=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  D
 ..Q:'$D(^AUPNVCPT(Y,0))
 ..I $$ICD^BGP7UTL2($P(^AUPNVCPT(Y,0),U,1),E,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2($P(^AUPNVCPT(Y,0),U,1),F,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2($P(^AUPNVCPT(Y,0),U,1),G,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .I BGPCNT>MIN Q
 .;now check TRANS
 .S E=$O(^ATXAX("B","BGP CABG CPTS",0))
 .S F=$O(^ATXAX("B","BGP PCI CPTS",0))
 .S G=$O(^ATXAX("B","BGP REVASCULARIZATION CPTS",0))
 .S Y=0 F  S Y=$O(^AUPNVTC("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  D
 ..Q:'$D(^AUPNVTC(Y,0))
 ..S I=$P(^AUPNVTC(Y,0),U,7)
 ..Q:I=""
 ..I $$ICD^BGP7UTL2(I,E,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(I,F,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP7UTL2(I,G,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .Q
 I BGPCNT>MIN Q 1
 Q ""
LDL190(P,BDATE,EDATE) ;EP ldl >=190?  EVER
 NEW T,A,E,LT,G,X,J,R
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",%=P_"^ALL LAB;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,A)
 I '$D(^TMP($J,"A",1)) Q ""
 ;now go through all lab tests and see if any are the loinc codes in the taxonomy
 S T=$O(^ATXLAB("B","DM AUDIT LDL CHOLESTEROL TAX",0))
 S LT=$O(^ATXAX("B","BGP LDL LOINC CODES",0))
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(G)  S I=+$P(^TMP($J,"A",X),U,4) D
 .S %=+^AUPNVLAB(I,0),R=$P(^AUPNVLAB(I,0),U,4)
 .I $D(^ATXLAB(T,21,"B",%)),+R>189.999999 S G=1 Q
 .S J=$P($G(^AUPNVLAB(I,11)),U,13)
 .Q:J=""
 .I $$LOINC^BGP7D21(J,LT),+R>189.99999 S G=1
 K ^TMP($J,"A")
 Q G
LASTLDLV(P,BDATE,EDATE) ;EP
 NEW BGPG,BGPT,BGPC,BGPLT,T,B,E,D,L,X,R,G,C,%
 K BGPG,BGPT,BGPC
 S BGPC=0
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP LDL LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT LDL CHOLESTEROL TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""  ;NO RESULT
 ...Q:'+$P(^AUPNVLAB(X,0),U,4)  ;NON-NUMERIC RESULT
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPT(BGPC)=$P(^AUPNVLAB(X,0),U,4)_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...I 'R S R=""
 ...S BGPC=BGPC+1,BGPT(BGPC)=$P(^AUPNVLAB(X,0),U,4)_U_(9999999-D)
 ...Q
 I 'BGPC Q ""
 I +BGPT(BGPC)<70 Q 1_U_$$DATE^BGP7UTL($P(BGPT(BGPC),U,2))_" LDL < 70"
 Q ""
STATNMI(P,NMIB,NMIE) ;EP
 ;nmi
 NEW BGPG,X,T,D,Y,N
 S BGPG=""
 S T=$O(^ATXAX("B","BGP PQA STATIN MEDS",0))
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an STATI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<NMIB Q
 ..I Y>NMIE Q
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPG=1_U_$$DATE^BGP7UTL($P(^AUPNPREF(N,0),U,3))_" Contra NMI "_$$VAL^XBDIQ1(9000022,N,.04)  ;_"   "_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 I BGPG Q BGPG
 Q ""
