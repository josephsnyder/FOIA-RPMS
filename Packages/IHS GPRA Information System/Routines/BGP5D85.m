BGP5D85 ; IHS/CMI/LAB - measure C 09 Jun 2015 5:18 PM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
I28 ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7,BGPD8,BGPD9,BGPN10,BGPN11,BGPN12,BGPN13,BGPN14,BGPN15,BGPN16,BGPN17,BGPN18,BGPN19,BGPN20)=0
 S (BGPN21,BGPN22,BGPN23,BGPN24,BGPN25,BGPN26,BGPN27,BGPN28,BGPN29,BGPN30,BGPN31,BGPN32,BGPN33,BGPN34,BGPN35,BGPN40,BGPN41)=0
 S (BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6)=0
 S (BGPX1,BGPX2,BGPX3,BGPX4,BGPX5,BGPX6)=0
 S BGPVALUE=""
 K BGPDTAP,BGPOPV,BGPMMR,BGPD,BGPT,BGPPER,BGPTET,BGPM,BGPMU,BGPME,BGPHIB,BGPHEP,BGPVAR
 I 'BGPACTUP S BGPSTOP=1 Q
 I 'BGPACTCL S BGPSTOP=1 Q  ;must be active clinical
 I $$AGE^AUPNPAT(DFN,BGPBDATE)<13 S BGPSTOP=1 Q  ;not 13 at beginning of time period
 I $$AGE^AUPNPAT(DFN,BGPBDATE)>17 S BGPSTOP=1 Q
 I $$AGE^AUPNPAT(DFN,BGPBDATE)=13 S BGPD1=1 I BGPSEX="F" S BGPD3=1
 S BGPD2=1
 I BGPSEX="F" S BGPD4=1
 K ^TMP($J,"CPT")
 S BGPVAL=$$TDAP^BGP5D86(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN10=1  ;any hit
 I $P(BGPVAL,U,1) S BGPX1=1
 I $P(BGPVAL,U,1)=3 S BGPN11=1
 I $P(BGPVAL,U,1)=4 S BGPN12=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,2)["Tdap",'BGPN11 S BGPN6=1  ;tdap
 I $P(BGPVAL,U,1) S BGPVALUE=$P(BGPVAL,U,2)
 ;S BGPVAL=$$MMR^BGP5D811(DFN,BGPEDATE)
 ;I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN7=1  ;any hit
 ;I $P(BGPVAL,U,1) S BGPX2=1
 ;I $P(BGPVAL,U,1)=3 S BGPN8=1
 ;I $P(BGPVAL,U,1)=4 S BGPN9=1 ;Evid disease, nmi, Contraindication
 ;I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 ;S BGPADOL=1
 ;S BGPVAL=$$HEP^BGP5D35(DFN,BGPEDATE)
 ;I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN13=1  ;any hit
 ;I $P(BGPVAL,U,1) S BGPX3=1
 ;I $P(BGPVAL,U,1)=3 S BGPN14=1
 ;I $P(BGPVAL,U,1)=4 S BGPN15=1 ;Evid disease, nmi, Contraindication
 ;I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 ;K BGPADOL
 ;S BGPVAL=$$VAR^BGP5D35(DFN,BGPEDATE)
 ;I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN16=1  ;any hit
 ;I $P(BGPVAL,U,1) S BGPX4=1
 ;I $P(BGPVAL,U,1)=3 S BGPN17=1
 ;I $P(BGPVAL,U,1)=4 S BGPN18=1 ;Evid disease, nmi, Contraindication
 ;I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$MEN^BGP5D36(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN1=1  ;any hit
 I $P(BGPVAL,U,1) S BGPX5=1
 I $P(BGPVAL,U,1)=3 S BGPN2=1
 I $P(BGPVAL,U,1)=4 S BGPN3=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 S BGPVAL=$$HPV^BGP5D36(DFN,BGPEDATE)
 I $P(BGPVAL,U,1)=1!($P(BGPVAL,U,1)=4)!($P(BGPVAL,U,1)=2) S BGPN4=1  ;any hit
 I $P(BGPVAL,U,1) S BGPX6=1
 I $P(BGPVAL,U,1)=3 S BGPN5=1
 I $P(BGPVAL,U,1)=4 S BGPN27=1 ;Evid disease, nmi, Contraindication
 I $P(BGPVAL,U,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":"; ",1:"")_$P(BGPVAL,U,2)
 I BGPX1,BGPX2,BGPX3,BGPX4 S BGPN40=1
 I BGPX2,BGPX3,BGPX4 S BGPN41=1
 I BGPN7,BGPN13,BGPN16 S BGPN19=1  ;15.1.1
 I BGPN8!(BGPN17)!(BGPN14) S BGPN22=1  ;15.1.2
 I BGPN9!(BGPN18)!(BGPN15) S BGPN23=1  ;15.1.3
 I BGPN7,BGPN13,BGPN16,BGPN10 S BGPN24=1  ;15.1.4
 I BGPN8!(BGPN17)!(BGPN14)!(BGPN11) S BGPN25=1  ;15.1.5
 I BGPN9!(BGPN18)!(BGPN15)!(BGPN12) S BGPN26=1  ;15.1.6
 I BGPN1,BGPN10 S BGPN32=1  ;12.1 new 1:1:3 combo, tdap, men, 3 hpv
 I BGPN3!(BGPN12) S BGPN33=1  ;12.1 new 1:1:3 combo evid, contra
 I BGPN11!(BGPN2) S BGPN34=1  ;12.1 new 1:1:3 refusal
 I BGPX1,BGPX5 S BGPN35=1
 I BGPN1,BGPN4,BGPN10 S BGPN28=1  ;12.1 new 1:1:3 combo, tdap, men, 3 hpv
 I BGPN3!(BGPN27)!(BGPN12) S BGPN29=1  ;12.1 new 1:1:3 combo evid, contra
 I BGPN11!(BGPN2)!(BGPN5) S BGPN30=1  ;12.1 new 1:1:3 refusal
 I BGPX1,BGPX5,BGPX6 S BGPN31=1
 I BGPRTYPE=3,'BGPN19 S BGPVALUE="DID NOT HAVE: " D
 .I 'BGPN7 S BGPVALUE=BGPVALUE_"2 MMR;"
 .I 'BGPN13 S BGPVALUE=BGPVALUE_"3 HEP;"
 .I 'BGPN16 S BGPVALUE=BGPVALUE_"VAR"
 S D=""
 S D="AC"
 S BGPVALUE=D_"|||"_BGPVALUE
 K BGPTET,BGPDTAP,BGPDT,BGPTD,BGPPER,BGPDIP,BGPMU,BGPME,BGPMMR,BGPMR,BGPRM,BGPOPV,BGPRUB,BGPHIB,BGPHEB,BGPVAR,BGPI1,BGPI2,BGPI3,BGPI4,BGPI5,BGPI6,BGPVAL,BGP5ADOL
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
