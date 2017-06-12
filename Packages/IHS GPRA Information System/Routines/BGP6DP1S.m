BGP6DP1S ; IHS/CMI/LAB - print ind 1 12 Nov 2010 7:38 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;HIV SCREENING AGE DIST
I1AGE ;EP  special age tallies
 I BGPRTYPE=1!(BGPRTYPE=9) D ^BGP6DP1T Q
 Q:$G(BGPSUMON)
 I BGPINDM="W" G FEM
 S BGPHD1="Active Clinical Pts 3+",BGPHD2="Active Clinical Pts 3+ "
 K BGPDAC,BGPDAP,BGPDAB
 S (BGPX,BGPDD)=0,BGPZZ="E" F BGPXX=1:1:4 D I1AGE1
 D I1AGEP
 S BGPHD1="Male Active Clinical Pts 3+",BGPHD2="Male Active Clinical Pts 3+ "
 K BGPDAC,BGPDAP,BGPDAB
 S (BGPX,BGPDD)=0,BGPZZ="G" F BGPXX=1:1:4 D I1AGE1
 D I1AGEP
FEM S BGPHD1="Female Active Clinical Pts 3+",BGPHD2="Female Active Clinical Pts 3+ "
 K BGPDAC,BGPDAP,BGPDAB
 S (BGPX,BGPDD)=0,BGPZZ="I" F BGPXX=1:1:4 D I1AGE1
 D I1AGEP
 Q
I1AGE1 ;
 ;
 I BGPXX=1 S BGPP1=2,BGPP2=3
 I BGPXX=2 S BGPP1=4,BGPP2=5
 I BGPXX=3 S BGPP1=6,BGPP2=7
 I BGPXX=4 S BGPP1=8,BGPP2=9
 ;I BGPXX=9 S BGPP1=10,BGPP2=11
 S BGPZ="A",BGPX=1 D AGES
 S BGPZ="B",BGPX=2 D AGES
 S BGPZ="C",BGPX=3 D AGES
 Q
AGES ;
 S BGPF="WCC."_BGPZZ_"."_BGPXX_BGPZ S BGPPC=$O(^BGPINDMC("C",BGPF,0))
 D
 .S BGPDF=$P(^BGPINDMC(BGPPC,0),U,8)
 .S BGPNP=$P(^DD(90556.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S $P(BGPDAC(BGPX),U)=$$V^BGP6DP1C(1,BGPRPT,N,P)
 .S $P(BGPDAP(BGPX),U)=$$V^BGP6DP1C(2,BGPRPT,N,P)
 .S $P(BGPDAB(BGPX),U)=$$V^BGP6DP1C(3,BGPRPT,N,P)
 ;S BGPCYD=$$V^BGP6DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP6DP1C(1,N,P)
 ;S BGPPRD=$$V^BGP6DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP6DP1C(2,N,P)
 ;S BGPBLD=$$V^BGP6DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP6DP1C(3,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S J=$P(BGPF,".",3)
 S Q=1
 ;I J["B" S Q=2
 ;I J["C" S Q=2
 ;I J["D" S Q=2
 S BGPNF=$P(^BGPINDMC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90556.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(BGPX),U,BGPP1)=$$V^BGP6DP1C(1,BGPRPT,N,P),$P(BGPDAC(BGPX),U,BGPP2)=$S($P(BGPDAC(BGPX),U,Q):($P(BGPDAC(BGPX),U,BGPP1)/$P(BGPDAC(BGPX),U,Q)*100),1:"")
 S $P(BGPDAP(BGPX),U,BGPP1)=$$V^BGP6DP1C(2,BGPRPT,N,P),$P(BGPDAP(BGPX),U,BGPP2)=$S($P(BGPDAP(BGPX),U,Q):($P(BGPDAP(BGPX),U,BGPP1)/$P(BGPDAP(BGPX),U,Q)*100),1:"")
 S $P(BGPDAB(BGPX),U,BGPP1)=$$V^BGP6DP1C(3,BGPRPT,N,P),$P(BGPDAB(BGPX),U,BGPP2)=$S($P(BGPDAB(BGPX),U,Q):($P(BGPDAB(BGPX),U,BGPP1)/$P(BGPDAB(BGPX),U,Q)*100),1:"")
 ;S BGPCYN=$$V^BGP6DP1C(1,BGPRPT,N,P,2)
 ;S BGPPRN=$$V^BGP6DP1C(2,BGPRPT,N,P,2)
 ;S BGPBLN=$$V^BGP6DP1C(3,BGPRPT,N,P,2)
 ;S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 ;S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 ;S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
I1AGEP ;
 S BGPYSTP=1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 I BGPPTYPE'="P" D W^BGP6DP("",0,2,BGPPTYPE) D AH
 D W^BGP6DP("CURRENT REPORT PERIOD",0,1,BGPPTYPE)
 D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAC" D I1AGEP1
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 I BGPPTYPE'="P" D W^BGP6DP("",0,2,BGPPTYPE) D AH
 D W^BGP6DP("PREVIOUS REPORT PERIOD",0,2,BGPPTYPE)
 D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAP" D I1AGEP1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP6DPH Q:BGPQUIT  D W^BGP6DP(^BGPINDM(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDM(BGPIC,53,2,0)) W^BGP6DP(^BGPINDM(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 I BGPPTYPE'="P" D W^BGP6DP("",0,2,BGPPTYPE) D AH
 D W^BGP6DP("BASELINE REPORT PERIOD",0,2,BGPPTYPE)
 D W^BGP6DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 ;I BGPPTYPE="P" D W^BGP6DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAB" D I1AGEP1
 Q
I1AGEP1 ;
 S T=30 F X=1:1:3 S V=$P(@BGPARR@(X),U) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("# w/ Comprehensive Assessment",0,2,BGPPTYPE)
 S T=31 F X=1:1:3 S V=$P(@BGPARR@(X),U,2) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("% w/ Comprehensive Assessment",0,1,BGPPTYPE)
 S T=30 F X=1:1:3 S V=$P(@BGPARR@(X),U,3) D W^BGP6DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("# w/ BMI Documented",0,2,BGPPTYPE)
 S T=31 F X=1:1:3 S V=$P(@BGPARR@(X),U,4) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("% w/ BMI Documented",0,1,BGPPTYPE)
 S T=30 F X=1:1:3 S V=$P(@BGPARR@(X),U,5) D W^BGP6DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("% w/ Nutrition Counseling",0,2,BGPPTYPE)
 S T=31 F X=1:1:3 S V=$P(@BGPARR@(X),U,6) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 D W^BGP6DP("% w/ Nutrition Counseling",0,1,BGPPTYPE)
 S T=30 F X=1:1:3 S V=$P(@BGPARR@(X),U,7) D W^BGP6DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPPTYPE="D" D W^BGP6DP("# w/ Physical Activity Counseling",0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP("# w/ Physical Activity",0,2,BGPPTYPE),W^BGP6DP(" Counseling",0,1,BGPPTYPE)
 S T=31 F X=1:1:3 S V=$P(@BGPARR@(X),U,8) D W^BGP6DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPPTYPE="D" D W^BGP6DP("% w/ Physical Activity Counseling",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP("% w/ Physical Activity",0,1,BGPPTYPE),W^BGP6DP(" Counseling",0,1,BGPPTYPE)
 S T=30 F X=1:1:3 S V=$P(@BGPARR@(X),U,9) D W^BGP6DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPARR="BGPDAP"!(BGPARR="BGPDAB") D
 .D W^BGP6DP("CHANGE FROM "_$S(BGPARR="BGPDAP":"PREVIOUS YR %",1:"BASELINE YR %"),0,2,BGPPTYPE)
 .S L="# w/ Comprehensive Assessment",P=3 D PBY
 .S L="# w/ BMI Documented",P=5 D PBY
 .S L="# w/ Nutrition Counseling",P=7 D PBY
 .I BGPPTYPE="P" D W^BGP6DP("# w/ Physical Activity",0,1,BGPPTYPE) S L=" Counseling",P=9 D PBY
 .I BGPPTYPE="D" S L="# w/ Physical Activity Counseling",P=9 D PBY
 .Q
 Q
PBY ;
 D W^BGP6DP(L,0,1,BGPPTYPE)
 S T=30 F X=1:1:3 S N=$P(BGPDAC(X),U,P),O=$P(@BGPARR@(X),U,3) S:N="" N=0 S:O="" O=0 S Y=$S(BGPPTYPE="P":$J($FN((N-O),"+,",1),6),1:$$SB($J((N-O),6,1))) D W^BGP6DP(Y,0,0,BGPPTYPE,X+1,T) S T=T+11
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
AH ;EP
 Q:$G(BGPSUMON)
 D W^BGP6DP(BGPHD1,1,2,BGPPTYPE)
 ;D W^BGP6DP("Asthma Assessments",0,1,BGPPTYPE)
 D W^BGP6DP(" 3 - 11",0,1,BGPPTYPE,2,34)
 D W^BGP6DP(" 12 - 17",0,0,BGPPTYPE,3,45)
 D W^BGP6DP("18+",0,0,BGPPTYPE,4,56)
 ;D W^BGP6DP("65+",0,0,BGPPTYPE,5,67)
 Q
SB(X) ;EP - Strip
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
