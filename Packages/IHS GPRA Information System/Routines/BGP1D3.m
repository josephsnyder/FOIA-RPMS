BGP1D3 ; IHS/CMI/LAB - measure 11 17 Oct 2009 12:40 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 ;
I10 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7)=0
 S (BGPSEAL,BGPSEALD)=""
 K BGPSEALS,BGPSELDS
 D SEAL^BGP1D3A(DFN,BGPBDATE,BGPEDATE)
 I $P(BGPSEAL,U,2)]"" S BGPN5=$P(BGPSEAL,U,1) G I101
 S BGPN1=$P(BGPSEAL,U)
 I BGPAGEB<12 S BGPN2=BGPN1
 I BGPAGEB>11,BGPAGEB<19 S BGPN3=BGPN1
 I BGPAGEB>18 S BGPN4=BGPN1
I101 ;
 ;get new sealant definition 2011 gpra dev
 I BGPAGEB>5,BGPAGEB<16 S BGPD7=1 S BGPSEALD=$$SEALDEV^BGP1D3A(DFN,BGPBDATE,BGPEDATE) I BGPSEALD S BGPN7=1
 S BGPVALUE="UP|||"_+BGPN1_" sealants"
 I 'BGPN1,BGPN5 S BGPVALUE=BGPVALUE_": "_$$DATE^BGP1UTL($P(BGPSEAL,U,2))_" "_$P(BGPSEAL,U,3)
 I BGPN1 S BGPVALUE=BGPVALUE_": " S X=0 F  S X=$O(BGPSEALS(X)) Q:X'=+X  S D=0 F  S D=$O(BGPSEALS(X,D)) Q:D'=+D  S BGPVALUE=BGPVALUE_$S(X=1:"",1:"; ")_$$DATE^BGP1UTL(D)_" "_BGPSEALS(X,D)
 I BGPD7 S BGPVALUD=$S(BGPD7:"UP6-15",1:"")_"|||" I BGPN7 S BGPVALUD=BGPVALUD_$P(BGPSEALD,U,2)
 K BGPSEAL,BGPSEALD
 Q
I11 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPD1,BGPD2)=0
 I '$G(BGPACTUP) S BGPSTOP=1 Q
 I BGPACTUP S BGPD1=1
 I BGPAGEB>1,BGPAGEB<16 S BGPD2=1
 S BGPFLUOR=$$TF^BGP1D3A(DFN,BGPBDATE,BGPEDATE)
 I $P(BGPFLUOR,U,3)["Refused" S BGPN2=1 G I111
 S BGPN1=$P(BGPFLUOR,U)
 I BGPN1>4 S BGPN1=4
 I BGPAGEB>1,BGPAGEB<16 S BGPD2=1,BGPN3=$S(BGPN1:1,1:0)
 ;I BGPD1,'BGPD2 S BGPD3=1
I111 ;
 S BGPVALUE="UP|||"_+BGPN1_" topical fluoride" I +BGPN1 S BGPVALUE=BGPVALUE_": " F X=2:1:5 I $P(BGPFLUOR,U,X)]"" S BGPVALUE=BGPVALUE_$S(X>2:"; ",1:"")_$$DATE^BGP1UTL($P($P(BGPFLUOR,U,X),"|",1))_" "_$P($P(BGPFLUOR,U,X),"|",2)
 I BGPN2 S BGPVALUE=BGPVALUE_": "_$$DATE^BGP1UTL($P(BGPFLUOR,U,2))_" "_$P(BGPFLUOR,U,3)
 S BGPVALUD="UP 2-15|||"_+BGPN1_" topical fluoride" I +BGPN1 S BGPVALUD=BGPVALUD_": " F X=2:1:5 I $P(BGPFLUOR,U,X)]"" S BGPVALUD=BGPVALUD_$S(X>2:"; ",1:"")_$$DATE^BGP1UTL($P($P(BGPFLUOR,U,X),"|",1))_" "_$P($P(BGPFLUOR,U,X),"|",2)
 I BGPN2 S BGPVALUD=BGPVALUD_": "_$$DATE^BGP1UTL($P(BGPFLUOR,U,2))_" "_$P(BGPFLUOR,U,3)
 K ^TMP($J,"A"),BGPFLUOR
 Q
I12 ;EP
 NEW BGPHR
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN7,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPD10,BGPD11,BGPD12,BGPD13,BGPD14,BGPD15,BGPHR)=0
 S BGPHR=$$HIGHR^BGP1D3A(DFN,BGPEDATE)
 I BGPAGEB>49,BGPACTUP S BGPD5=1
 I BGPAGEB>49,BGPAGEB<65,BGPACTUP S BGPD6=1
 I BGPAGEB>64,BGPACTUP S BGPD7=1
 I BGPDMD2 S BGPD4=1
 I BGPAGEB>49,BGPACTCL S BGPD1=1
 I BGPAGEB>49,BGPAGEB<65,BGPACTCL S BGPD2=1
 I BGPAGEB>64,BGPACTCL S BGPD3=1
 I BGPACTCL S BGPD8=1
 I BGPAGEB<18,BGPACTCL S BGPD9=1
 I BGPAGEB>17,BGPAGEB<50,BGPACTCL S BGPD10=1
 I BGPAGEB>17,BGPAGEB<50,BGPACTCL,BGPHR S BGPD11=1
 I BGPACTUP S BGPD12=1
 I BGPAGEB<18,BGPACTUP S BGPD13=1
 I BGPAGEB>17,BGPAGEB<50,BGPACTUP S BGPD14=1
 I BGPAGEB>17,BGPAGEB<50,BGPACTUP,BGPHR S BGPD15=1
 I '(BGPD1+BGPD2+BGPD3+BGPD4+BGPD5+BGPD6+BGPD7+BGPD8+BGPD9+BGPD10+BGPD11+BGPD12+BGPD13+BGPD14+BGPD15) S BGPSTOP=1 Q
 S BGPVALUE=$$FLU(DFN,,BGPEDATE) ;set to date of flu shot
 I $P(BGPVALUE,U,3)=1 S BGPN1=1
 I $P(BGPVALUE,U,3)=2 S BGPN2=1
 I $P(BGPVALUE,U,3)=3 S BGPN3=1,BGPN1=1
 I BGPN1,'BGPN2 S BGPN7=1
 S BGPDV=""
 I BGPRTYPE=4 S BGPDV=$S(BGPACTUP:"UP",1:"") D
 .I BGPACTCL S BGPDV=BGPDV_$S(BGPDV]"":",AC",1:"AC")
 .I BGPD4 S BGPDV=BGPDV_$S(BGPDV]"":",AD",1:"AD")
 .I BGPHR S BGPDV=BGPDV_$S(BGPDV]"":",HR",1:"HR")
 I BGPRTYPE=1 S BGPDV=$S(BGPD3!(BGPD2):"AC",1:"") I BGPD4 S BGPDV=BGPDV_$S(BGPDV]"":";AD",1:"AD")
 I BGPRTYPE=3!(BGPRTYPE=8) S BGPDV="AC"
 I BGPRTYPE=7 D
 .I BGPACTCL S BGPDV="AC"
 .I BGPD4 S BGPDV=BGPDV_$S(BGPDV]"":",AD",1:"AD")
 .I BGPHR S BGPDV=BGPDV_$S(BGPDV]"":",HR",1:"HR")
 S BGPVALUE=BGPDV_"|||"_$$DATE^BGP1UTL($P(BGPVALUE,U,1))_" "_$P(BGPVALUE,U,2)
 K BGPLFLU,BGPDV,BGPHR
 Q
I13 ;EP
 NEW BGPTDAP,BGPTD
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10,BGPN11,BGPN12,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9)=0
 I BGPAGEB>64,BGPACTUP S BGPD3=1
 I BGPDMD2 S BGPD2=1
 I BGPAGEB>64,BGPACTCL S BGPD1=1
 I BGPAGEB>17,BGPAGEB<65,BGPACTCL,$$HIGHRP^BGP1D3A(DFN,BGPEDATE) S BGPD4=1
 I BGPAGEB>17,BGPAGEB<65,BGPACTUP,$$HIGHRP^BGP1D3A(DFN,BGPEDATE) S BGPD5=1
 I BGPAGEB>17,BGPAGEB<65,BGPACTCL S BGPD6=1
 I BGPAGEB>17,BGPAGEB<65,BGPACTUP S BGPD7=1
 I '(BGPD1+BGPD2+BGPD3+BGPD4+BGPD5+BGPD6+BGPD7) S BGPSTOP=1 Q
 I BGPRTYPE=3,'BGPD1 S BGPSTOP=1 Q
PN ;EP - called from elder
 S BGPVALUE=$$PNEU^BGP1D31(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE) ;set to date of PNEU shot
 ;I BGPVALUE]"" S BGPN1=1
 I $P(BGPVALUE,U,3)=1!($P(BGPVALUE,U,3)=3) S BGPN1=1
 I $P(BGPVALUE,U,3)=2 S BGPN2=1  ;REF
 I $P(BGPVALUE,U,3)=3 S BGPN3=1  ;NMI
 S BGPVAL=$$PNEU^BGP1D31(DFN,$$FMADD^XLFDT(BGPEDATE,-(5*365)),BGPEDATE)
 I $P(BGPVAL,U,3)=1!($P(BGPVAL,U,3)=3) S BGPN4=1  ;HAD IN PAST 5 YEARS SO "UP TO DATE"
 I $P(BGPVAL,U,3)=2 S BGPN5=1
 I $P(BGPVAL,U,3)=3 S BGPN6=1
 S BGPN7=0,BGPA65="" I BGPAGEB>65 S BGPA65=$$PNEU^BGP1D31(DFN,$$FMADD^XLFDT($$DOB^AUPNPAT(DFN),+(65*365)),BGPEDATE) I $P(BGPA65,U,3)=1!($P(BGPA65,U,3)=3) S BGPN4=1,BGPN7=1 ;over 65 and had one after 65
 I BGPAGEB<65,BGPN1 S BGPN4=1  ;anyone under and had 1 ever
 ;GPRA DEVELOPMENTAL
 S BGPN8=0
 I BGPAGEB<66,BGPN1 S BGPN8=1
 I BGPAGEB>65,BGPN1,(BGPN4+BGPN7) S BGPN8=1  ;IF UNDER 66 HAD 1 EVER, IF OVER 65 HAD ONE IN PAST 5 YEARS OR AFTER AGE 65
 S BGPDV=""
 I BGPRTYPE=1 S BGPDV="" D
 .I BGPD1 S BGPDV=BGPDV_$S(BGPDV]"":",AC >64",1:"AC >64")
 .I BGPD2 S BGPDV=BGPDV_$S(BGPDV]"":",AD",1:"AD")
 I BGPRTYPE=4 D
 .I BGPD1 S BGPDV=$S(BGPD1:"AC >64",1:"")
 .I BGPD6 S BGPDV=BGPDV_$S(BGPDV]"":",AC 18-64",1:"AC 18-64")
 .I BGPD4 S BGPDV=BGPDV_$S(BGPDV]"":",AC 18-64HR",1:"AC 18-64HR")
 .I BGPD3 S BGPDV=BGPDV_$S(BGPDV]"":",UP >64",1:"UP >64")
 .I BGPD7 S BGPDV=BGPDV_$S(BGPDV]"":",UP 18-64",1:"UP 18-64")
 .I BGPD5 S BGPDV=BGPDV_$S(BGPDV]"":",UP 18-64HR",1:"UP 18-64HR")
 .I BGPD2 S BGPDV=BGPDV_$S(BGPDV]"":",AD",1:"AD")
 I BGPRTYPE=7 S BGPDV=$S(BGPD6:"AC 18-64",1:"") S:BGPD4 BGPDV=BGPDV_$S(BGPDV]"":",AC 18-64HR",1:"AC 18-64HR") S:BGPD2 BGPDV=BGPDV_$S(BGPDV]"":",AD",1:"AD")
 I BGPRTYPE=3!(BGPRTYPE=5) S BGPVALUE="AC"_"|||"_$$DATE^BGP1UTL($P(BGPVALUE,U,1))_" "_$P(BGPVALUE,U,2) I 1
 E  D
 .S BGPVALH=BGPVALUE,BGPVALUE=BGPDV_"|||"_$$DATE^BGP1UTL($P(BGPVALUE,U,1))_" "_$P(BGPVALUE,U,2)_$S(BGPVALUE]"":" (ever)",1:"")_" "_$S(BGPN8:" (up-to-date)",1:"")
 .S BGPVALUD="AC"_"|||"
 .S BGPVALUD=BGPVALUD_$$DATE^BGP1UTL($P(BGPVALH,U,1))_" "_$P(BGPVALH,U,2)_$S(BGPVALH]"":" (ever)",1:"")_" "
 .S BGPVALUD=BGPVALUD_$S(BGPN8:"(up-to-date)",1:"")
TD ;new tdap and td stuff for v11.1
 S BGPTDAP=$$DTAP^BGP1D3A(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)
 I BGPTDAP S BGPN9=1
 S BGPTD=$$DTAPTD^BGP1D3A(DFN,$$FMADD^XLFDT(BGPEDATE,-(10*365)),BGPEDATE)
 I BGPTD S BGPN10=1
 I BGPTDAP S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; ",1:""),BGPVALUE=BGPVALUE_"TDAP EVER: "_$P(BGPTDAP,U,2)
 I BGPTD S BGPVALUE=BGPVALUE_$S($P(BGPVALUE,"|||",2)]"":"; ",1:"") S BGPVALUE=BGPVALUE_"TDAP/TD PAST 10 YRS: "_$P(BGPTD,U,2)
 K BGPLPNU,BGPVAL,BGPA65,BGPVALH
 Q
I15 ;EP
 K BGPN1,BGPN2,BGPN3,BGPN4,BGPVALUE,BGPPAP,BGPI7,BGPI7DA,BGPI7DB,BGPI7DC,BGPPAP4
 S BGPI7DA=0,BGPI7DB=0,BGPI7DC=0,BGPN1=0,BGPN2=0,BGPN3=0,BGPPAP4=""
 S BGPI7=$$DEN7(DFN,BGPAGEB,BGPAGEE,BGPSEX,BGPEDATE)
 I BGPACTUP,BGPI7 S BGPI7DA=1
 I BGPACTCL,BGPI7 S BGPI7DB=1
 I BGPACTCL,BGPI7,BGPAGEB>24,BGPAGEE<65 S BGPI7DC=1  ;2011 GPRA DEV
 I 'BGPI7DA,'BGPI7DB,'BGPI7DC S BGPSTOP=1 Q  ;not in either denom so quit
 S BGPPAP=$$PAP(DFN,BGPEDATE,3)
 S BGPPAP4=$$PAP(DFN,BGPEDATE,4,1)
 S BGPN1=0 I $P(BGPPAP,U)=1 S BGPN1=1
 I $P(BGPPAP,U,3)["ref" S BGPN2=1
 I BGPN1,'BGPN2 S BGPN3=1
 S BGPN4=0 I $P(BGPPAP4,U,1)=1,$P(BGPPAP4,U,3)'["ref" S BGPN4=1  ;PAP IN 4 YRS, NO REFUSALS
 I BGPRTYPE'=3 S BGPVALUE=$S(BGPI7DA:"UP",1:"")_$S(BGPI7DB:",AC",1:"")_"|||"_$$DATE^BGP1UTL($P(BGPPAP,U,2))_" "_$P(BGPPAP,U,3)
 I BGPRTYPE=3 S BGPVALUE="AC|||"_$$DATE^BGP1UTL($P(BGPPAP,U,2))_" "_$P(BGPPAP,U,3)
 S BGPVALUD="AC|||"_$$DATE^BGP1UTL($P(BGPPAP4,U,2))_" "_$P(BGPPAP4,U,3)
 K BGPLPAP
 Q
 ;
FLU(P,BD,ED,FORE) ;EP
 G FLU^BGP1D37
BI() ;
 Q $S($O(^AUTTIMM(0))>100:1,1:0)
DEN7(P,AGEB,AGEE,SEX,EDATE) ;EP
 I SEX'="F" Q 0
 I AGEB<21 Q 0
 I AGEE>64 Q 0
 I $$HYSTER(P,EDATE) Q 0
 Q 1
H1(I) ;
 I $P($G(^ICPT(I,0)),U,1)=90664 Q 1
 I $P($G(^ICPT(I,0)),U,1)=90666 Q 1
 I $P($G(^ICPT(I,0)),U,1)=90667 Q 1
 I $P($G(^ICPT(I,0)),U,1)=90668 Q 1
 Q ""
PAP(P,EDATE,YEARS,REFUSAL) ;EP
 K BGPC
 S BGPC=""
 S BGPLPAP=""
 S BDATE=$$FMADD^XLFDT(EDATE,-(365*YEARS))
 S T=$O(^ATXAX("B","BGP PAP LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S Z=$P(^AUPNVLAB(X,0),U),Z=$P($G(^LAB(60,Z,0)),U) I Z="PAP SMEAR" S BGPC="1^"_(9999999-D)_"^Lab" Q
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC="1^"_(9999999-D)_"^Lab" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BGPC="1^"_(9999999-D)_"^Lab-loinc" Q
 ...Q
 S BGPLPAP=BGPC
 K BGP
 S T="BGP PAP SMEAR DXS"
 I BGPRTYPE=3 S T="BGP HEDIS PAP SMEAR DXS"
 S X=$$LASTDX^BGP1UTL1(P,T,BDATE,EDATE) I X,$P(BGPLPAP,U,2)<$P(X,U,3) S BGPLPAP="1^"_$P(X,U,3)_"^POV "_$P(X,U,2)
 K BGP S %=P_"^LAST PROCEDURE 91.46;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGP(")
 I $D(BGP(1)),$P(BGPLPAP,U,2)<$P(BGP(1),U,1) S BGPLPAP="1^"_$P(BGP(1),U)_"^PROC 91.46"
 S T=$O(^ATXAX("B","BGP CPT PAP",0))
 I T D  I X]"",$P(BGPLPAP,U,2)<$P(X,U,1) S BGPLPAP="1^"_$P(X,U)_"^CPT "_$P(X,U,2)
 .S X=$$CPT^BGP1DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP1DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,5)
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 I T D  I X]"",$P(BGPLPAP,U,2)<X S BGPLPAP="1^"_X_"^WH"
 .S X=$$WH^BGP1DU(P,$$FMADD^XLFDT(EDATE,-(YEARS*365)),EDATE,T,3)
 I BGPLPAP]"" Q BGPLPAP
 I $G(REFUSAL) Q ""  ;no refusals counted
 S T=$$REFUSAL^BGP1UTL1(P,60,$O(^LAB(60,"B","PAP SMEAR",0)),$$FMADD^XLFDT(EDATE,-365),EDATE)
 I T Q "1^"_$P(T,U,2)_"^ref lab test PAP Smear"
 S BGPLT=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 I 'BGPLT Q 0
 S X=0,T="" F  S X=$O(^ATXLAB(BGPLT,21,X)) Q:X'=+X!($P(T,U)=1)  D
 .S T=""
 .S Y=$P(^ATXLAB(BGPLT,21,X,0),U)
 .Q:'Y
 .S T=$$REFUSAL^BGP1UTL1(P,60,Y,$$FMADD^XLFDT(EDATE,-365),EDATE)
 I T Q 1_"^"_$P(T,U,2)_"^ref lab test "
 ;add cpt refusals v11.1
 S T=$$CPTREFT^BGP1UTL1(P,$$FMADD^XLFDT(EDATE,-365),EDATE,$O(^ATXAX("B","BGP CPT PAP",0)))
 I T S T="1^"_$P(T,U,2)_"^ref CPT "_$P(T,U,4) Q T
 Q ""
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
HYSTER(P,EDATE) ;EP 
 I '$G(P) Q ""
 S X=$$LASTPRC^BGP1UTL1(P,"BGP HYSTERECTOMY PROCEDURES",$$DOB^AUPNPAT(P),EDATE)
 I X Q 1
 S T="HYSTERECTOMY",T=$O(^BWPN("B",T,0))
 I T D  I X]"" Q 1
 .S X=$$WH^BGP1DU(P,$$DOB^AUPNPAT(P),EDATE,T,2)
 S T=$O(^ATXAX("B","BGP HYSTERECTOMY CPTS",0))
 I T D  I X]"" Q 1
 .S X=$$CPT^BGP1DU(P,$P(^DPT(P,0),U,3),EDATE,T,3) I X]"" Q
 .S X=$$TRAN^BGP1DU(P,$P(^DPT(P,0),U,3),EDATE,T,3)
 S X=$$LASTDX^BGP1UTL1(P,"BGP HYSTERECTOMY DXS",$$DOB^AUPNPAT(P),EDATE)
 I X Q 1
 Q ""
