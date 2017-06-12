BGP5D32 ; IHS/CMI/LAB - measure C ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
I14 ;EP
 ;3 denominators, 32 numerators
 ;F X=1:1:42,50:1:52,60:1:62,70:1:72,80:1:82 NEW @("BGPN"_X)
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPN10,BGPN11,BGPN12,BGPN13,BGPN14,BGPN15,BGPN16,BGPN17,BGPN18,BGPN19,BGPN20,BGPN21,BGPN22,BGPN23,BGPN24,BGPN25,BGPN26,BGPN27)=0
 S (BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPI7,BGPN28,BGPN29,BGP50N,BGPN30,BGPN31,BGPN32,BGPN33,BGPN34,BGPN40,BGPN41,BGPN42,BGPN43)=0
 S (BGPN50,BGPN51,BGPN52,BGPI50)=""
 S (BGPN60,BGPN61,BGPN62)=""
 S (BGPN70,BGPN71,BGPN72)=""
 S (BGPN80,BGPN81,BGPN82)=""
 S (BGPN90,BGPN91,BGPN92)=""
 S (BGPR1,BGPR2,BGPR3,BGPR4,BGPR5,BGPR6,BGPR7,BGPR8,BGPR9)=""
 S BGPVALUE="",BGPVALUD=""
 K BGPDTAP,BGPOPV,BGPMMR,BGPD,BGPT,BGPPER,BGPTET,BGPM,BGPMU,BGPME,BGPHIB,BGPHEP,BGPVAR
 I 'BGPACTUP S BGPSTOP=1 Q
 S BGPDAYS=$$FMDIFF^XLFDT(BGPBDATE,$$DOB^AUPNPAT(DFN))
 S BGPMON=BGPDAYS/30.4167
 I BGPMON<7 S BGPSTOP=1 Q  ;no one less than 7 months
 I BGPMON>23 S BGPSTOP=1 Q  ;no one less than 23 months on 1st day of time frame
 I BGPACTUP S BGPD2=1
 I BGPACTCL S BGPD1=1
 I BGPACTUP,$$ACTIM(DFN,BGPBDATE,BGPEDATE),BGPTIME=1 S BGPD3=1
 I 'BGPD1,'BGPD2,'BGPD3 S BGPSTOP=1 Q
 ;BGPN1 - patients with 4 DTaP or various combinations
 K ^TMP($J,"CPT")
 S BGPVAL=$$DTAP^BGP5D34(DFN,BGPEDATE)  ;1 IS had immunizations, 3 is had Refusal, 4 is disease or NMI or Contraindication
 I $P(BGPVAL,U,1) S BGPN1=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR1=1
 I $P(BGPVAL,U,1)=1 S BGPI1=1 ;had all imms
 I $P(BGPVAL,U,1)=3 S BGPN2=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN3=1 ;evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=$P(BGPVAL,U,2)
 K ^TMP($J,"CPT")
 S BGPVAL=$$OPV^BGP5D33(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN4=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR2=1
 I $P(BGPVAL,U,1)=1 S BGPI2=1 ;had all imms
 I $P(BGPVAL,U,1)=3 S BGPN5=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN6=1 ;evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$MMR^BGP5D33(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN7=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR3=1
 I $P(BGPVAL,U,1)=1 S BGPI3=1
 I $P(BGPVAL,U,1)=3 S BGPN8=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN9=1 ;evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 ;S BGPVAL=$$HIB^BGP5D35(DFN,BGPEDATE)
 ;I $P(BGPVAL,U,1) S BGPN10=1  ;any hit
 ;I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR4=1
 ;I $P(BGPVAL,U,1)=1 S BGPI4=1
 ;I $P(BGPVAL,U,1)=3 S BGPN11=1 ;Refusal
 ;I $P(BGPVAL,U,1)=4 S BGPN12=1 ;Evid disease, nmi, Contraindication
 ;I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 ;I $P(BGPVAL,U,1)!($P(BGPVAL,U,1)=4) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$HIB3^BGP5D38(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN90=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR4=1
 I $P(BGPVAL,U,1)=4 S BGPN92=1
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I 'BGPN90 D
 .S BGPVAL=$$HIB4^BGP5D38(DFN,BGPEDATE)
 .I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN90=1  ;any hit
 .I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR4=1
 .I $P(BGPVAL,U,1)=4 S BGPN92=1
 .I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 .I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$HEP^BGP5D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN13=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR5=1
 I $P(BGPVAL,U,1)=1 S BGPI5=1
 I $P(BGPVAL,U,1)=3 S BGPN14=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN15=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$VAR^BGP5D35(DFN,BGPEDATE)
 I $P(BGPVAL,U,1) S BGPN16=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR6=1
 I $P(BGPVAL,U,1)=1 S BGPI6=1
 I $P(BGPVAL,U,1)=3 S BGPN17=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN18=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$PNEUMO^BGP5D35(DFN,BGPEDATE,3)
 I $P(BGPVAL,U,1) S BGPN50=1  ;any hit
 I $P(BGPVAL,U,1)=1 S BGPI50=1
 I $P(BGPVAL,U,1)=3 S BGPN51=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN52=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR8=1
 S BGP3PN=BGPVAL
 ;I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$PNEUMO^BGP5D35(DFN,BGPEDATE,4)
 I $P(BGPVAL,U,1) S BGPN26=1  ;any hit
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPR7=1
 I $P(BGPVAL,U,1)=1 S BGPI7=1
 I $P(BGPVAL,U,1)=3 S BGPN27=1 ;Refusal
 I $P(BGPVAL,U,1)=4 S BGPN28=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 I '$P(BGPVAL,U,1),$P(BGP3PN,U,1) D
 .S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGP3PN,U,2)
 .S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGP3PN,U,2)
 S BGPVAL=$$HEPA^BGP5D37(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN60=1  ;any hit
 I $P(BGPVAL,U,1)=3 S BGPN61=1 ;REFUSAL
 I $P(BGPVAL,U,1)=4 S BGPN62=1  ;CONTRA
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$ROTA2^BGP5D37(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN70=1  ;any hit
 S BGPRROT=0 I $P(BGPVAL,U,1)=3 S BGPN71=1,BGPRROT=1 ;REFUSAL
 I $P(BGPVAL,U,1)=4 S BGPN72=1
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 I 'BGPN70 D
 .S BGPVAL=$$ROTA3^BGP5D37(DFN,BGPEDATE)
 .I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN70=1  ;any hit
 .I $P(BGPVAL,U,1)=3 S BGPN71=1 ;REFUSAL
 .I $P(BGPVAL,U,1)=4 S BGPN72=1
 .I $P(BGPVAL,U,1)=3,BGPRROT Q  ;already put a Refusal in the list
 .I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 .I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$INFLU^BGP5D38(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4) S BGPN80=1  ;any hit
 I $P(BGPVAL,U,1)=3 S BGPN81=1 ;REFUSAL
 I $P(BGPVAL,U,1)=4 S BGPN82=1
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I $P(BGPVAL,U,1) S BGPVALUD=BGPVALUD_$S(BGPVALUD]"":"; ",1:"")_$P(BGPVAL,U,2)
 ;
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13,BGPN16,BGPN26 S BGPN19=1  ;4313314
 I BGPN1,'BGPN2,BGPN4,'BGPN5,BGPN7,'BGPN8,BGPN10,'BGPN11,BGPN13,'BGPN14,BGPN16,'BGPN17,BGPN26,'BGPN27 S BGPN42=1  ;4313314
 I BGPN2!(BGPN5)!(BGPN8)!(BGPN11)!(BGPN14)!(BGPN17)!(BGPN27) S BGPN32=1  ;4313314 REF
 I BGPN3!(BGPN6)!(BGPN9)!(BGPN12)!(BGPN15)!(BGPN18)!(BGPN28) S BGPN33=1  ;4313314 CONTRA
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13,BGPN16 S BGPN29=1  ;HEDIS ONLY 1.1.8 431331
 I BGPN1,'BGPN2,BGPN4,'BGPN5,BGPN7,'BGPN8,BGPN10,'BGPN11,BGPN13,'BGPN14,BGPN16,'BGPN17 S BGPN41=1  ;HEDIS ONLY 1.1.8 431331 - no Refusals 027.a.23
 I BGPN2!(BGPN5)!(BGPN8)!(BGPN11)!(BGPN14)!(BGPN17) S BGPN30=1  ;431331 REFUSALS
 I BGPN3!(BGPN6)!(BGPN9)!(BGPN12)!(BGPN15)!(BGPN18) S BGPN31=1  ;431331 CONTRA/DX
 I BGPN2!(BGPN5)!(BGPN8)!(BGPN11)!(BGPN14) S BGPN22=1  ;REFUSAL OF 43133
 I BGPN3!(BGPN6)!(BGPN9)!(BGPN12)!(BGPN15) S BGPN23=1
 I BGPN1,BGPN4,BGPN7 S BGPN20=1
 I BGPN1,BGPN4,BGPN7,BGPN10,BGPN13 S BGPN21=1  ;4:3:1:3:3
 I BGPN1,'BGPN2,BGPN4,'BGPN5,BGPN7,'BGPN8,BGPN10,'BGPN11,BGPN13,'BGPN14 S BGPN40=1  ;4:3:1:3:3 - no 
 I BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPI7 S BGPN24=1
 I BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6 S BGPN34=1
 ;I BGPI1,BGPI2,BGPI3 S BGPN25=1
 I BGPI1,BGPI2,BGPI3,BGPI4,BGPI5 S BGPN25=1
 I BGPN1,'BGPN2,BGPN4,'BGPN5,BGPN7,'BGPN8,BGPN90,BGPN13,'BGPN14,BGPN16,'BGPN17,BGPN26,'BGPN27 S BGPN91=1  ;4313*314  GPRA DEV
 I BGPR1,BGPR2,BGPR3,BGPN90,BGPR5,BGPR6,BGPR8 S BGPN43=1  ;4313*313
 I BGPRTYPE=3,'BGPN41 S BGPVALUE="DID NOT HAVE: " D
 .I 'BGPR1 S BGPVALUE=BGPVALUE_"4 Dtap/DTP;"
 .I 'BGPR2 S BGPVALUE=BGPVALUE_"3 Polio;"
 .I 'BGPR3 S BGPVALUE=BGPVALUE_"MMR;"
 .I 'BGPR4 S BGPVALUE=BGPVALUE_"3 Hib;"
 .I 'BGPR5 S BGPVALUE=BGPVALUE_"3 HEP;"
 .I 'BGPR6 S BGPVALUE=BGPVALUE_"VAR;"
 .I 'BGPR7 S BGPVALUE=BGPVALUE_"4 Pneumo"
 I $G(BGPISSO),'BGPN91 S BGPVALUE="Immunizations Overdue for: |" D
 .I 'BGPR1 S BGPVALUE=BGPVALUE_"4 Dtap/DTP;"
 .I 'BGPR2 S BGPVALUE=BGPVALUE_"3 Polio;"
 .I 'BGPR3 S BGPVALUE=BGPVALUE_"1 MMR;"
 .I 'BGPR4 S BGPVALUE=BGPVALUE_"3 Hib;"
 .I 'BGPR5 S BGPVALUE=BGPVALUE_"3 HEP;"
 .I 'BGPR6 S BGPVALUE=BGPVALUE_"1 Varicella;"
 .I 'BGPR7 S BGPVALUE=BGPVALUE_"4 Pneumo"
 S D=""
 I BGPD1 S D="UP,AC"
 E  S D="UP"
 I BGPD3 S D=D_",IMM"
 I BGPRTYPE=3 S D="AC"
 S BGPVALUE=D_"|||"_BGPVALUE
 S BGPVALUD=D_"|||"_BGPVALUD
 ;I BGPN19 S BGPVALUE=$P(BGPVALUE,"|||",1)_"|||4:3:1:3:3:1"
 ;I BGPN21,'BGPN19 S $P(BGPVALUE,"|||",2)="4:3:1:3:3"
 K BGPTET,BGPDTAP,BGPDT,BGPTD,BGPPER,BGPDIP,BGPMU,BGPME,BGPMMR,BGPMR,BGPRM,BGPOPV,BGPRUB,BGPHIB,BGPHEB,BGPVAR,BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPVAL
 Q
ACTIM(P,BDATE,EDATE) ;EP is patient active on imm register as of EDATE?
 I '$G(P) Q ""
 I '$D(^BIP(P,0)) Q ""
 I $P(^BIP(P,0),U,8)="" Q 1
 I $P(^BIP(P,0),U,8)<EDATE Q ""
 I $P(^BIP(P,0),U,8)=EDATE Q ""
 Q 1
GETIMMS(P,EDATE,C,BGPX) ;EP
 K BGPX
 NEW X,Y,I,Z,V
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .F Z=1:1:$L(C,U) I I=$P(C,U,Z) S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".") I D]"",D'>EDATE S BGPX(D)=Y
 .Q
 Q
IMMREF(P,IMM,BD,ED) ;EP
 NEW X,Y,G,D,R
 I 'IMM Q ""
 S (X,G)=0,Y=$O(^AUTTIMM("C",IMM,0))
 I 'Y Q ""
 F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .S G=G+1
 Q G
