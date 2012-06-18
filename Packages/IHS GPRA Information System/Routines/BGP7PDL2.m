BGP7PDL2 ; IHS/CMI/LAB - print ind 1 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
 ;this routine for Measure I14 ONLY
I10 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1="10.1" D PI
 Q
I11 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1="11.1","11.2" D PI
 Q
PI ;EP
 S BGPDENP=0
 K BGPDHOLD
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDAC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDAC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;
 K BGPEXCT,BGPSDP,BGPSDPN
 I BGPRTYPE'=4,BGPINDT="G",$P(^BGPINDAC(BGPPC,0),U,5)'=1 Q
 I BGPRTYPE'=4,BGPINDT="A",$P(^BGPINDAC(BGPPC,0),U,6)'=1 Q
 I BGPRTYPE'=4,BGPINDT="H",$P($G(^BGPINDAC(BGPPC,12)),U,1)'=1 Q
 I BGPINDT="D",$P(^BGPINDAC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDAC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDAC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="E",$P($G(^BGPINDAC(BGPPC,12)),U,3)'=1 Q
 ;get numerator value of measure and calc %
 S BGPDF=$P(^BGPINDAC(BGPPC,0),U,9)
 ;I $P(^BGPINDAC(BGPPC,0),U,4)[".1" S BGPDHOLD=BGPDF
 ;I $P(^BGPINDAC(BGPPC,0),U,4)'[".1" S BGPDF=BGPDHOLD
 S BGPNP=$P(^DD(90530.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V^BGP7DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP7DP1C(1,N,P)
 S BGPPRD=$$V^BGP7DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP7DP1C(2,N,P)
 S BGPBLD=$$V^BGP7DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP7DP1C(3,N,P)
 S BGPNF=$P(^BGPINDAC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90530.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P($G(^BGPINDAC(BGPPC,14)),U) D
 .S ^TMP($J,"SUMMARYDEL",$P(^BGPSCAT($P(^BGPINDAC(BGPPC,14),U,5),0),U,2),$P(^BGPINDSC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .Q:'$G(BGPAREAA)
 .S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ..S ^TMP($J,"SUMMARYDEL DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDAC(BGPPC,14),U,5),0),U,2),$P(^BGPINDSC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,2)_U_$P($G(BGPSDP(X,2)),U,2)_U_$P($G(BGPSDP(X,3)),U,2)_U_BGPCYN
 ;NON
 I $P($G(^BGPINDAC(BGPPC,15)),U) D
 .S ^TMP($J,"SUMMARYDEL NON",$P(^BGPSCAT($P(^BGPINDAC(BGPPC,15),U,5),0),U,3),$P(^BGPINDAC(BGPPC,15),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDAC(BGPPC,15),U,5),0),U,3),$P(^BGPINDAC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,2)_U_$P($G(BGPSDPN(X,2)),U,2)_U_$P($G(BGPSDPN(X,3)),U,2)_U_BGPCYN
 ;write header for 1.A.1
 ;S X=$P(^BGPINDAC(BGPPC,0),U,15) D S(X,1,1)
 ;I $P(^BGPINDAC(BGPPC,0),U,16)]"" S X=$P(^BGPINDAC(BGPPC,0),U,16) D S(X,1,1)
 ;I $P(^BGPINDAC(BGPPC,0),U,19)]"" S Y=$P(^BGPINDAC(BGPPC,0),U,19) D S(Y,1,1)
 S X=$P(^BGPINDAC(BGPPC,0),U,15)_" "_$P(^BGPINDAC(BGPPC,0),U,16)_" "_$P(^BGPINDAC(BGPPC,0),U,19) D S(X,1,1)
 D H2
 Q
H2 ;
 S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)=$S(BGPCYP]"":$$SB($J(BGPCYP,5,1)),1:""),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$S(BGPPRP]"":$$SB($J(BGPPRP,5,1)),1:"")
 S $P(BGPX,U,5)=$$SB($J($$CALC(BGPCYN,BGPPRN),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$S(BGPBLP]"":$$SB($J(BGPBLP,5,1)),1:"")
 S $P(BGPX,U,8)=$$SB($J($$CALC(BGPCYN,BGPBLN),6))
 D S(BGPX,,2)
 Q
H1 ;EP
 S Y="REPORT" D S(Y,1,2)
 S Y=" " D S(Y,,3)
 S Y="PREV YR" D S(Y,,4)
 S Y=" " D S(Y,,5)
 S Y="CHG from" D S(Y,,6)
 S Y="BASE" D S(Y,,7)
 S Y=" " D S(Y,,8)
 S Y="CHG from" D S(Y,,9)
 S Y="PERIOD" D S(Y,1,2)
 S Y="PERIOD" D S(Y,,4)
 S Y="PREV YR  " D S(Y,,6)
 S Y="PERIOD" D S(Y,,7)
 S Y="BASE  " D S(Y,,9)
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
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",0)
 Q Z
SB(X) ;EP - Strip leading and trailing blanks from X.
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
SETN ;set numerator fields
 S BGPIIDEL=1,BGPNOSUM=1
 D SETN^BGP7DP1C
 ;I $P(^BGPINDSC(BGPPC,0),U,4)[".1"
 K BGPNOSUM,BGPIIDEL
 S (BGPCYP,BGPPRP,BGPBLP)=""
 Q
