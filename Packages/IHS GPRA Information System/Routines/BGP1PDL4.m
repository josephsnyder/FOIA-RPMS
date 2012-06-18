BGP1PDL4 ; IHS/CMI/LAB - print ind 1 01 Jul 2010 8:04 PM ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 ;
I031 ;EP
 S BGPORXX=$P(^BGPINDB(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1^BGP1PDL1
 I BGPRTYPE=4,BGPINDB="C" D  Q
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".7.3D",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".8.3D",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".9.3D",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".7.3E",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".8.3E",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".9.3E",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".7.3F",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".8.3F",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".9.3F",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".7.3G",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".8.3G",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".9.3G",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".7.3H",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".8.3H",0)) D PI1^BGP1PDL1
 .S BGPDENP=0 S BGPPC=$O(^BGPINDBC("OR",BGPORXX_".9.3H",0)) D PI1^BGP1PDL1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2",BGPORXX_".3" D PI^BGP1PDL1
 F BGPPC1=BGPORXX_".4",BGPORXX_".5",BGPORXX_".6" D PI^BGP1PDL1
 D I1AGE
 Q
I1AGE ;EP
 ;Q:BGPRTYPE'=4
 I BGPINDB="W",BGPRTYPE=4 G FEM
 S BGPHD1="TOTAL ACTIVE CLINICAL POPULATION",BGPHD2="Total # Active Clin"
 S X=^BGPINDB(BGPIC,53,1,0) D S(X,3,1) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB S (C,D)=0 F BGPX="CD","CG","CJ","CM","CP","CS","CV","CY" D I1AGE1,I1AGE2
 D I1AGEP
 ;Q:BGPRTYPE'=4
 S BGPHD1="MALE ACTIVE CLINICAL POPULATION",BGPHD2="Total MALE AC"
 ;S X=^BGPINDB(BGPIC,53,1,0) D S(X,1,1) D H3
 K BGPDAC,BGPDAP,BGPDAB S (D,C)=0 F BGPX="CE","CH","CK","CN","CQ","CT","CW","CZ" D I1AGE1,I1AGE2
 D I1AGEP
FEM ;
 S BGPHD1="FEMALE ACTIVE CLINICAL POPULATION",BGPHD2="Total FEMALE AC"
 ;S X=^BGPINDB(BGPIC,53,1,0) D S(X,1,1) D H3
 K BGPDAC,BGPDAP,BGPDAB S (C,D)=0 F BGPX="CF","CI","CL","CO","CR","CU","CX","DA" D I1AGE1,I1AGE2
 D I1AGEP
 Q
I1AGE1 ;
 S C=C+1
 S BGPF="031."_BGPX_".1" S BGPPC=$O(^BGPINDBC("C",BGPF,0))
 S BGPDF=$P(^BGPINDBC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90545.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V^BGP1DP1C(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V^BGP1DP1C(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V^BGP1DP1C(3,BGPRPT,N,P)
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V^BGP1DP1C(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V^BGP1DP1C(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V^BGP1DP1C(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="031."_BGPX_".2" S BGPPC=$O(^BGPINDBC("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V^BGP1DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V^BGP1DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V^BGP1DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE3 ;
 S BGPF="031."_BGPX_".3" S BGPPC=$O(^BGPINDBC("C",BGPF,0))
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,6)=$$V^BGP1DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,7)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,6)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,6)=$$V^BGP1DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,7)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,6)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,6)=$$V^BGP1DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,7)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,6)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE4 ;
 S BGPF="031."_BGPX_".4" S BGPPC=$O(^BGPINDBC("C",BGPF,0))
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,8)=$$V^BGP1DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,9)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,8)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,8)=$$V^BGP1DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,9)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,8)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,8)=$$V^BGP1DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,9)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,8)/$P(BGPDAB(D),U,2)*100),1:"")
I1AGE5 ;
 S BGPF="031."_BGPX_".5" S BGPPC=$O(^BGPINDBC("C",BGPF,0))
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,10)=$$V^BGP1DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,11)=$S($P(BGPDAC(D),U,2):($P(BGPDAC(D),U,10)/$P(BGPDAC(D),U,2)*100),1:"")
 S $P(BGPDAP(D),U,10)=$$V^BGP1DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,11)=$S($P(BGPDAP(D),U,2):($P(BGPDAP(D),U,10)/$P(BGPDAP(D),U,2)*100),1:"")
 S $P(BGPDAB(D),U,10)=$$V^BGP1DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,11)=$S($P(BGPDAB(D),U,2):($P(BGPDAB(D),U,10)/$P(BGPDAB(D),U,2)*100),1:"")
 Q
I1AGEP ;
 S X="CURRENT REPORT PERIOD" D S(X,1,1) S X=" " D S(X,1,1)
 S X=BGPHD2 D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/ BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,3) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1)
 S X="# A. Overweight" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,4) S Y=V D S(Y,,X+1)
 S X="% A. Overweight w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,5) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1)
 S X="# B. Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,7) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1)
 S X="# C. Overweight or Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. Overweight or Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAC(X),U,9) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 I BGPRTYPE'=1 D
 .S X=" " D S(X,1,1)
 .S X="# w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAC(X),U,10) S Y=V D S(Y,,X+1)
 .S X="% w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAC(X),U,11) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
PR ; 
 ;S X=^BGPINDB(BGPIC,53,1,0) D S(X,1,1) D H3
 S X=" " D S(X,1,1) S X="PREVIOUS YEAR PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/ BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,3) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# A. Overweight w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,4) S Y=V D S(Y,,X+1)
 S X="% A. Overweight w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,5) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# B. Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,7) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# C. Overweight or Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. Overweight or Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAP(X),U,9) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 I BGPRTYPE'=1 D
 .S X=" " D S(X,1,1)
 .S X="# w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAP(X),U,10) S Y=V D S(Y,,X+1)
 .S X="% w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAP(X),U,11) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
PB ;
 ;percentage changes
 S X=" " D S(X,1,1) S X="CHANGE FROM PREV YR %" D S(X,1,1)
 S X="w/ BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. Overweight" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. Obese" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAP(X),U,7) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="C. Overweight or Obese" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAP(X),U,9) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 I BGPRTYPE'=1 D
 .S X="w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAP(X),U,11) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
BL ;
 ;S X=^BGPINDB(BGPIC,53,1,0) D S(X,1,1) D H3
 S X=" " D S(X,1,1) S X="BASELINE REPORT PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U) S Y=V D S(Y,,X+1)
 S X="# w/BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,2) S Y=V D S(Y,,X+1)
 S X="% w/ BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,3) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# A. Overweight" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,4) S Y=V D S(Y,,X+1)
 S X="A. % Overweight w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,5) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# B. Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,6) S Y=V D S(Y,,X+1)
 S X="% B. Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,7) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# C. Overweight or Obese" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,8) S Y=V D S(Y,,X+1)
 S X="% C. Overweight or Obese w/ % of Total BMI" D S(X,1,1)
 F X=1:1:8 S V=$P(BGPDAB(X),U,9) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
 I BGPRTYPE'=1 D
 .S X=" " D S(X,1,1)
 .S X="# w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAB(X),U,10) S Y=V D S(Y,,X+1)
 .S X="% w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S V=$P(BGPDAB(X),U,11) S Y=$$SB($J(V,6,1)) D S(Y,,X+1)
BP ;
 S X=" " D S(X,1,1) S X="CHANGE FROM BASE YR %" D S(X,1,1)
 S X="w/ BMI calculated - No Refusals" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. Overweight" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. Obese" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAB(X),U,7) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 S X="C. Overweight or Obese" D S(X,1,1)
 F X=1:1:8 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAB(X),U,9) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 I BGPRTYPE'=1 D
 .S X="w/BMI refusal (No BMI)" D S(X,1,1)
 .F X=1:1:8 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAB(X),U,11) S Y=$$SB($J((N-O),6,1)) D S(Y,,X+1)
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CALC(N,O) ;
 NEW Z
 ;I O=0!(N=0)!(O="")!(N="") Q "**"
 ;NEW X,X2,X3
 ;S X=N,X2=1,X3=0 D COMMA^%DTC S N=X
 ;S X=O,X2=1,X3=0 D COMMA^%DTC S O=X
 ;I +O=0 Q "**"
 ;S Z=(((N-O)/O)*100),Z=$FN(Z,"+,",1)
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
H3 ;EP
 ;S X="Age specific Obesity" D S(X,1,1) S Y=" " D S(Y,1,1) S X=BGPHD1 D S(X,1,1) S Y=" " D S(Y,1,1)
 S X="Age Distribution" D S(X,1,1) S X=" " D S(X,1,1)
 S Y=" 2-5" D S(Y,1,2)
 S Y=" 6-11" D S(Y,,3)
 S Y=" 12-19" D S(Y,,4)
 S Y="20-24" D S(Y,,5)
 S Y="25-34" D S(Y,,6)
 S Y="35-44" D S(Y,,7)
 S Y="45-54" D S(Y,,8)
 S Y="55-74" D S(Y,,9)
 Q
SB(X) ;EP - Strip leading and trailing blanks from X.
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
H2 ;
 S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)=$$SB($J(BGPCYP,5,1)),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$$SB($J(BGPPRP,5,1)),$P(BGPX,U,5)=$$SB($J($$CALC(BGPCYP,BGPPRP),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$$SB($J(BGPBLP,5,1))
 S $P(BGPX,U,8)=$$SB($J($$CALC(BGPCYP,BGPBLP),6))
 D S(BGPX,,2)
 Q
H1 ;EP
 S Y="REPORT" D S(Y,1,2)
 S Y="%" D S(Y,,3)
 S Y="PREV YR" D S(Y,,4)
 S Y="%" D S(Y,,5)
 S Y="CHG from" D S(Y,,6)
 S Y="BASE" D S(Y,,7)
 S Y="%" D S(Y,,8)
 S Y="CHG from" D S(Y,,9)
 S Y="PERIOD" D S(Y,1,2)
 S Y="PERIOD" D S(Y,,4)
 S Y="PREV YR %" D S(Y,,6)
 S Y="PERIOD" D S(Y,,7)
 S Y="BASE %" D S(Y,,9)
 Q
