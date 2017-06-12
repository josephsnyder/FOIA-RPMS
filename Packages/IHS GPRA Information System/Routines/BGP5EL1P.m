BGP5EL1P ; IHS/CMI/LAB - print ind 01 Jul 2010 7:55 PM ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
I1AGE ;EP
 S BGPHD1="ACTIVE CLINICAL PTS 65+",BGPHD2="# Active Clinical Pts 65+"
 D HEADER^BGP5DPH
 W !,^BGPELIK(BGPIC,53,1,0)
 S X=" " D S(X,1,1)
 D H3 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB
 S (C,D,E,F,G,H,I,J,K)=0 S BGPX="D",C=0 F BGPZZZ=1,2,3 D
 .S BGPZ=BGPZZZ D I1AGE1
 .S BGPP=4,BGPP1=5,BGPZ=BGPZZZ+3 D I1AGE2
 .S BGPP=6,BGPP1=7,BGPZ=BGPZZZ+6 D I1AGE2
 .S BGPP=8,BGPP1=9,BGPZ=BGPZZZ+9 D I1AGE2
 .S BGPP=10,BGPP1=11,BGPZ=BGPZZZ+12 D I1AGE2
 .S BGPP=12,BGPP1=13,BGPZ=BGPZZZ+15 D I1AGE2
 .S BGPP=14,BGPP1=15,BGPZ=BGPZZZ+18 D I1AGE2
 .S BGPP=16,BGPP1=17,BGPZ=BGPZZZ+21 D I1AGE2
 .S BGPP=18,BGPP1=19,BGPZ=BGPZZZ+24 D I1AGE2
 .S BGPP=28,BGPP1=29,BGPZ=BGPZZZ+39 D I1AGE2
 .S BGPP=40,BGPP1=41,BGPZ=BGPZZZ+57 D I1AGE3
 D I1AGEP
 ;MALE
 S BGPHD1="MALE ACTIVE CLINICAL PTS 65+",BGPHD2="# Male Active Clinical Pts 65+"
 D HEADER^BGP5DPH W !,^BGPELIK(BGPIC,53,1,0) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB
 S (C,D,E,F,G,H,I,J,K)=0 S BGPX="E",C=0 F BGPZZZ=1,2,3 D
 .S BGPZ=BGPZZZ D I1AGE1
 .S BGPP=4,BGPP1=5,BGPZ=BGPZZZ+3 D I1AGE2
 .S BGPP=6,BGPP1=7,BGPZ=BGPZZZ+6 D I1AGE2
 .S BGPP=8,BGPP1=9,BGPZ=BGPZZZ+9 D I1AGE2
 .S BGPP=10,BGPP1=11,BGPZ=BGPZZZ+12 D I1AGE2
 .S BGPP=12,BGPP1=13,BGPZ=BGPZZZ+15 D I1AGE2
 .S BGPP=14,BGPP1=15,BGPZ=BGPZZZ+18 D I1AGE2
 .S BGPP=16,BGPP1=17,BGPZ=BGPZZZ+21 D I1AGE2
 .S BGPP=18,BGPP1=19,BGPZ=BGPZZZ+24 D I1AGE2
 .S BGPP=28,BGPP1=29,BGPZ=BGPZZZ+39 D I1AGE2
 .S BGPP=40,BGPP1=41,BGPZ=BGPZZZ+57 D I1AGE3
 D I1AGEP
 ;FEMALE
 S BGPHD1="FEMALE ACTIVE CLINICAL PTS 65+",BGPHD2="# Female Active Clinical Pts 65+"
 D HEADER^BGP5DPH W !,^BGPELIK(BGPIC,53,1,0) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 K BGPDAC,BGPDAP,BGPDAB
 S (C,D,E,F,G,H,I,J,K)=0 S BGPX="F",C=0 F BGPZZZ=1,2,3 D
 .S BGPZ=BGPZZZ D I1AGE1
 .S BGPP=4,BGPP1=5,BGPZ=BGPZZZ+3 D I1AGE2
 .S BGPP=6,BGPP1=7,BGPZ=BGPZZZ+6 D I1AGE2
 .S BGPP=8,BGPP1=9,BGPZ=BGPZZZ+9 D I1AGE2
 .S BGPP=10,BGPP1=11,BGPZ=BGPZZZ+12 D I1AGE2
 .S BGPP=12,BGPP1=13,BGPZ=BGPZZZ+15 D I1AGE2
 .S BGPP=14,BGPP1=15,BGPZ=BGPZZZ+18 D I1AGE2
 .S BGPP=16,BGPP1=17,BGPZ=BGPZZZ+21 D I1AGE2
 .S BGPP=18,BGPP1=19,BGPZ=BGPZZZ+24 D I1AGE2
 .S BGPP=28,BGPP1=29,BGPZ=BGPZZZ+39 D I1AGE2
 .S BGPP=40,BGPP1=41,BGPZ=BGPZZZ+57 D I1AGE3
 D I1AGEP
 Q
I1AGE1 ;
 S C=C+1
 S BGPF="EDA."_BGPX_"."_BGPZ S BGPPC=$O(^BGPELIIK("C",BGPF,0))
 S BGPDF=$P(^BGPELIIK(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90555.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V(3,BGPRPT,N,P)
 ;
 S BGPNF=$P(^BGPELIIK(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90555.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 ;S D=D+1
 S BGPF="EDA."_BGPX_"."_BGPZ S BGPPC=$O(^BGPELIIK("C",BGPF,0))
 ;
 S BGPNF=$P(^BGPELIIK(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90555.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,BGPP)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,BGPP1)=$S($P(BGPDAC(C),U,2):($P(BGPDAC(C),U,BGPP)/$P(BGPDAC(C),U,2)*100),1:"")
 S $P(BGPDAP(C),U,BGPP)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,BGPP1)=$S($P(BGPDAP(C),U,2):($P(BGPDAP(C),U,BGPP)/$P(BGPDAP(C),U,2)*100),1:"")
 S $P(BGPDAB(C),U,BGPP)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,BGPP1)=$S($P(BGPDAB(C),U,2):($P(BGPDAB(C),U,BGPP)/$P(BGPDAB(C),U,2)*100),1:"")
 Q
I1AGE3 ;
 ;S D=D+1
 S BGPF="EDA."_BGPX_"."_BGPZ S BGPPC=$O(^BGPELIIK("C",BGPF,0))
 ;
 S BGPNF=$P(^BGPELIIK(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90555.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,BGPP)=$$V(1,BGPRPT,N,P),$P(BGPDAC(C),U,BGPP1)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,BGPP)/$P(BGPDAC(C),U,1)*100),1:"")
 S $P(BGPDAP(C),U,BGPP)=$$V(2,BGPRPT,N,P),$P(BGPDAP(C),U,BGPP1)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,BGPP)/$P(BGPDAP(C),U,1)*100),1:"")
 S $P(BGPDAB(C),U,BGPP)=$$V(3,BGPRPT,N,P),$P(BGPDAB(C),U,BGPP1)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,BGPP)/$P(BGPDAB(C),U,1)*100),1:"")
 Q
I1AGEP ;
 ;S X=" " D S(X,1,1)
 S X="CURRENT REPORT PERIOD" D S(X,1,1) S X=" " D S(X,1,1)
 S X=BGPHD2 D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="# w/exposure to at least 1" D S(X,1,1) S X=" high-risk med" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,2) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="% # w/exposure to at least 1" D S(X,1,1) S X=" high-risk med" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,3) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="A. # w/anticholinergic Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,4) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="A. % w/anticholinergic Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,5) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="B. # w/antithrombotic Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,6) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="B. % w/antithrombotic Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,7) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="C. # w/anti-infective Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,8) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="C. % w/anti-infective Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,9) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="D. # w/cardiovascular Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,10) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="D. % w/cardiovascular Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,11) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="E. # w/central nervous system Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,12) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="E. % w/central nervous system Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,13) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="F. # w/endocrine Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,14) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="F. % w/endocrine Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,15) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="G. # w/gastrointestinal Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,16) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="G. % w/gastrointestinal Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,17) S Y=$J(V,5,1) D S(Y,,X+1)
 D HEADER^BGP5DPH W !,^BGPELIK(BGPIC,53,1,0) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 S X=" " D S(X,1,1) S X="H. # w/pain med Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,18) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="H. % w/pain med Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,19) S Y=$J(V,5,1) D S(Y,,X+1)
 S X=" " D S(X,1,1) S X="I. # w/skeletal muscle relaxant Rx" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,28) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="I. % w/skeletal muscle relaxant Rx" D S(X,1,1) S X="  w/ % of total meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,29) S Y=$J(V,5,1) D S(Y,,X+1)
 ;D HEADER^BGP5DPH W !,^BGPELIK(BGPIC,53,1,0) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 ;
 S X=" " D S(X,1,1) S X="# w/ exposure to multiple" D S(X,1,1) S X=" high-risk meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,40) S Y=$$C(V,0,6) D S(Y,,X+1)
 S X="% w/ exposure to multiple" D S(X,1,1) S X=" high-risk meds" D S(X,1,1)
 F X=1:1:3 S V=$P(BGPDAC(X),U,41) S Y=$J(V,5,1) D S(Y,,X+1)
 Q:BGPQUIT
 D ^BGP5EL1Q
 Q
S(Y,F,P) ;set up array
 ;Q:BGPQUIT
 ;I $Y>(IOSL-5) D HEADER^BGP5DPH Q:BGPQUIT
 ;W !,^BGPELIK(BGPIC,53,1,0) S X=" " D S(X,1,1) D H3 S X=" " D S(X,1,1)
 I $G(F) F J=1:1:F W !
 S T=$S(P=1:1,P=2:38,P=3:50,P=4:62,1:1)
 W ?T,Y
 Q
CALC(N,O) ;
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
H3 ;EP
 ;S X="Drugs to be Avoided in the Elderly" D S(X,1,1) S Y=" " D S(Y,1,1)
 S X=BGPHD1 D S(X,1,1) S Y=" " D S(Y,1,1)
 S X="Age Distribution" D S(X,1,1) ;S X=" " D S(X,1,1)
 S Y="65-74" D S(Y,0,2)
 S Y="75-84" D S(Y,0,3)
 S Y=">84 yrs" D S(Y,0,4)
 Q
SB(X) ;EP
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
H2 ;
 S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)=$$SB($J(BGPCYP,5,1)),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$$SB($J(BGPPRP,5,1)),$P(BGPX,U,5)=$$SB($J($$CALC(BGPCYP,BGPPRP),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$$SB($J(BGPBLP,5,1))
 S $P(BGPX,U,8)=$$SB($J($$CALC(BGPCYP,BGPBLP),6))
 D S(BGPX,,2)
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
 I T=1 Q $P($G(^BGPELDCK(R,N)),U,P)
 I T=2 Q $P($G(^BGPELDPK(R,N)),U,P)
 I T=3 Q $P($G(^BGPELDBK(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPELDCK(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPELDPK(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPELDBK(X,N)),U,P)
 .Q
 Q C
C(X,X2,X3) ;
 NEW A,B,C,D,E,F,G,H,I,J,K
 D COMMA^%DTC
 Q X
