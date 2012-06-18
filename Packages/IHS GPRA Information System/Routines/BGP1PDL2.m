BGP1PDL2 ; IHS/CMI/LAB - print ind 1 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
 ;this routine for Measure I14 ONLY
I10 ;EP
 S BGPORXX=$P(^BGPINDB(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1 S BGPNODEN=1
 F BGPPC1=$P(^BGPINDB(BGPIC,12),U,6)_".1" D PI
 K BGPNODEN
 F BGPPC1=$P(^BGPINDB(BGPIC,12),U,6)_".2" D PI^BGP1PDL1
 Q
I11 ;EP
 S BGPORXX=$P(^BGPINDB(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1" D PI
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".2" D PI
 K BGPNODEN
 F BGPPC1=BGPORXX_".4" D PI^BGP1PDL1
 Q
ISTI ;EP
 S BGPORXX=$P(^BGPINDB(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2",BGPORXX_".3" D PI
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".4",BGPORXX_".5",BGPORXX_".6" D PI ;
 ;
 K BGPNODEN
 F BGPPC1=BGPORXX_".7",BGPORXX_".8",BGPORXX_".9" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".10",BGPORXX_".11",BGPORXX_".12" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".13",BGPORXX_".14",BGPORXX_".15" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".16",BGPORXX_".17",BGPORXX_".18" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".19",BGPORXX_".20",BGPORXX_".21" D PI^BGP1PDL1 ;
 ;
 ;USER POP
 D S(" ",1,1)
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".22",BGPORXX_".23",BGPORXX_".24" D PI ;
 ;
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".25",BGPORXX_".26",BGPORXX_".27" D PI ;
 K BGPNODEN
 F BGPPC1=BGPORXX_".28",BGPORXX_".29",BGPORXX_".30" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".31",BGPORXX_".32",BGPORXX_".33" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".34",BGPORXX_".35",BGPORXX_".36" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".37",BGPORXX_".38",BGPORXX_".39" D PI^BGP1PDL1 ;
 ;
 F BGPPC1=BGPORXX_".40",BGPORXX_".41",BGPORXX_".42" D PI^BGP1PDL1 ;
 ;
 Q
IPC ;EP
 S BGPORXX=$P(^BGPINDB(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2",BGPORXX_".3",BGPORXX_".4" D PI ;
 ;
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".5",BGPORXX_".6",BGPORXX_".7",BGPORXX_".8" D PI ;
 S BGPORDP=$P(^BGPINDB(BGPIC,12),U,6) F BGPORDP1=9:1:17 S BGPPC1=BGPORDP_"."_BGPORDP1 D PI^BGP1PDL1
 Q
PI ;EP
 S BGPDENP=0
 K BGPDHOLD
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDBC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDBC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;EP
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO,BGPSDPD
 Q:'$$CHECK^BGP1DP1E(BGPPC)
 ;get numerator value of measure and calc %
 S BGPDF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V^BGP1DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP1DP1C(1,N,P)
 S BGPPRD=$$V^BGP1DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP1DP1C(2,N,P)
 S BGPBLD=$$V^BGP1DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP1DP1C(3,N,P)
 S BGPNF=$P(^BGPINDBC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90545.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P($G(^BGPINDBC(BGPPC,14)),U) D
 .S ^TMP($J,"SUMMARYDEL",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,14),U,5),0),U,2),$P(^BGPINDBC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .Q:'$G(BGPAREAA)
 .S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ..S ^TMP($J,"SUMMARYDEL DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,14),U,5),0),U,2),$P(^BGPINDBC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,2)_U_$P($G(BGPSDP(X,2)),U,2)_U_$P($G(BGPSDP(X,3)),U,2)_U_BGPCYN
 ;NON
 I $P($G(^BGPINDBC(BGPPC,15)),U) D
 .S ^TMP($J,"SUMMARYDEL NON",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,15),U,5),0),U,3),$P(^BGPINDBC(BGPPC,15),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,15),U,5),0),U,3),$P(^BGPINDBC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,2)_U_$P($G(BGPSDPN(X,2)),U,2)_U_$P($G(BGPSDPN(X,3)),U,2)_U_BGPCYN
 ;DEVEL
 I $P($G(^BGPINDBC(BGPPC,22)),U) D
 .S ^TMP($J,"SUMMARYDEL DEVEL",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,22),U,5),0),U,3),$P(^BGPINDBC(BGPPC,22),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPD(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,22),U,5),0),U,3),$P(^BGPINDBC(BGPPC,22),U,6),BGPPC,X)=$P($G(BGPSDPD(X,1)),U,2)_U_$P($G(BGPSDPD(X,2)),U,2)_U_$P($G(BGPSDPD(X,3)),U,2)_U_BGPCYN
 ;OTHER
 I $P($G(^BGPINDBC(BGPPC,19)),U) D
 .S ^TMP($J,"SUMMARYDEL OTHER",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,19),U,5),0),U,3),$P(^BGPINDBC(BGPPC,19),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",$P(^BGPSCAT($P(^BGPINDBC(BGPPC,19),U,5),0),U,3),$P(^BGPINDBC(BGPPC,19),U,6),BGPPC,X)=$P($G(BGPSDPO(X,1)),U,2)_U_$P($G(BGPSDPO(X,2)),U,2)_U_$P($G(BGPSDPO(X,3)),U,2)_U_BGPCYN
 I BGPROT="D"!(BGPROT="B") D SETSUM^BGP1DP2
 S X=$P(^BGPINDBC(BGPPC,0),U,15)_" "_$P(^BGPINDBC(BGPPC,0),U,16)_" "_$P(^BGPINDBC(BGPPC,0),U,19) D S(X,1,1)
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
 D SETN^BGP1DP1C
 K BGPNOSUM,BGPIIDEL
 S (BGPCYP,BGPPRP,BGPBLP)=""
 Q
