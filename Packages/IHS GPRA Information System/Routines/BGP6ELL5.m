BGP6ELL5 ; IHS/CMI/LAB - print ind ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
I1AGE ;EP
 S BGPHD1="ACTIVE DIABETIC PATIENTS 55+",BGPHD2="Active Diabetic Patients"
 S X=" " D S(X,1,1) D H3^BGP6ELL2 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G,H,I,J,K)=0 F BGPX="STC.1","STC.2" D I1AGE2,I1AGE3,I1AGE4,I1AGE5
 D I1AGEP
 Q
I1AGE1 ;
 S C=C+1
 S BGPF="ELD."_BGPX S BGPPC=$O(^BGPELIIM("C",BGPF,0))
 S BGPDF=$P(^BGPELIIM(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90557.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPELIIM(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90557.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+4) S BGPPC=$O(^BGPELIIM("C",BGPF,0))
 S BGPDF=$P(^BGPELIIM(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90557.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(D),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(D),U)=$$V(3,BGPRPT,N,P)
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIM(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90557.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,1):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,1):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,1):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U)*100),1:"")
 Q
I1AGE3 ;
 S E=E+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+8) S BGPPC=$O(^BGPELIIM("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIM(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90557.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,6)=$$V(1,BGPRPT,N,P),$P(BGPDAC(E),U,7)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,6)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,6)=$$V(2,BGPRPT,N,P),$P(BGPDAP(E),U,7)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,6)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,6)=$$V(3,BGPRPT,N,P),$P(BGPDAB(E),U,7)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,6)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGE4 ;
 S F=F+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+12) S BGPPC=$O(^BGPELIIM("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIM(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90557.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,8)=$$V(1,BGPRPT,N,P),$P(BGPDAC(E),U,9)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,8)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,8)=$$V(2,BGPRPT,N,P),$P(BGPDAP(E),U,9)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,8)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,8)=$$V(3,BGPRPT,N,P),$P(BGPDAB(E),U,9)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,8)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGE5 ;
 S G=G+1
 S BGPF="ELD."_$P(BGPX,".")_"."_($P(BGPX,".",2)+16) S BGPPC=$O(^BGPELIIM("C",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPELIIM(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90557.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,10)=$$V(1,BGPRPT,N,P),$P(BGPDAC(E),U,11)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,10)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,10)=$$V(2,BGPRPT,N,P),$P(BGPDAP(E),U,11)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,10)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,10)=$$V(3,BGPRPT,N,P),$P(BGPDAB(E),U,11)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,10)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGEP ;
 S X=" " D S(X,1,1)
 S X="CURRENT REPORT PERIOD" D S(X,1,1) S X=" " D S(X,1,1)
 S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,1) S Y=V D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,4) S Y=V D S(Y,,X+1)
 S X="% w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,5) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,6) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,7) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,8) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,9) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="B. # w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,10) S Y=V D S(Y,,X+1)
 S X="% w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAC(X),U,11) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
PR ; 
 S X=" " D S(X,1,1) S X="PREVIOUS YEAR PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,1) S Y=V D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,4) S Y=V D S(Y,,X+1)
 S X="% w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,5) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,6) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,7) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,8) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,9) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="B. # w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,10) S Y=V D S(Y,,X+1)
 S X="% w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAP(X),U,11) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 ;percentage changes
 S X=" " D S(X,1,1) S X="CHANGE FROM PREV YR %" D S(X,1,1)
 S X="w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAP(X),U,7) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. # w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAP(X),U,9) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. # w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAP(X),U,11) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
BL ;
 S X=" " D S(X,1,1) S X="BASELINE REPORT PERIOD" D S(X,1,1)
 S X=" " D S(X,1,1) S X=BGPHD2 D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,1) S Y=V D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,4) S Y=V D S(Y,,X+1)
 S X="% w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,5) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="# w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,6) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,7) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,8) S Y=V D S(Y,,X+1)
 S X="% w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,9) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="B. # w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,10) S Y=V D S(Y,,X+1)
 S X="% w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S V=$P(BGPDAB(X),U,11) S Y=$$SB^BGP6ELL2($J(V,6,1)) D S(Y,,X+1)
 ;percentage changes
 S X=" " D S(X,1,1) S X="CHANGE FROM BASE YR %" D S(X,1,1)
 S X="w/ LDL done (GPRA)" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="w/ LDL <130" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAB(X),U,7) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="A. # w/ LDL <100" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAB(X),U,9) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 S X="B. # w/ LDL 100-129" D S(X,1,1)
 F X=1:1:4 S N=$P(BGPDAC(X),U,11),O=$P(BGPDAB(X),U,11) S Y=$$SB^BGP6ELL2($J((N-O),6,1)) D S(Y,,X+1)
 Q
SETN ;set numerator fields
 S BGPCYN=$$V(1,BGPRPT,N,P)
 S BGPPRN=$$V(2,BGPRPT,N,P)
 S BGPBLN=$$V(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 NEW X
 I T=1 S X=$P($G(^BGPELDCM(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPELDPM(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPELDBM(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPELDCM(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPELDPM(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPELDBM(X,N)),U,P)
 .Q
 Q $S(C:C,1:0)
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
