BGP2PDL3 ; IHS/CMI/LAB - print ind 1 ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
 ;this routine for Measure I23 ONLY
I023 ;EP
 S BGPORXX=$P(^BGPINDW(BGPIC,12),U,6)
 D:'$G(BGPSUMON) H1^BGP2PDL1
 F BGPPC1=BGPORXX_".1" D PI^BGP2PDL1
 ;D:'$G(BGPSUMON) H1
 S X=" " D S(X,1,1)
 F BGPPC1=BGPORXX_".2.1",BGPORXX_".2.2",BGPORXX_".2.3",BGPORXX_".2.4",BGPORXX_".2.5",BGPORXX_".2.6" D PI
 S X=" " D S(X,1,1)
 F BGPPC1=BGPORXX_".3.1",BGPORXX_".3.2",BGPORXX_".3.3",BGPORXX_".3.4",BGPORXX_".3.5",BGPORXX_".3.6" D PI
 Q
PI ;EP
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO,BGPSDPD
 S BGPPC=$O(^BGPINDWC("OR",BGPPC1,0))
 Q:'$$CHECK^BGP2DP1E(BGPPC)
 ;get numerator value of measure and calc %
 S BGPPC=BGPPC D
 .S BGPDF=$P(^BGPINDWC(BGPPC,0),U,9)
 .;I $P(^BGPINDWC(BGPPC,0),U,4)[".3" S BGPDF=23.503
 .;I $P(^BGPINDWC(BGPPC,0),U,4)[".4" S BGPDF=23.504
 .S BGPNP=$P(^DD(90548.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S BGPCYD=$$V^BGP2DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP2DP1C(1,N,P)
 .S BGPPRD=$$V^BGP2DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP2DP1C(2,N,P)
 .S BGPBLD=$$V^BGP2DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP2DP1C(3,N,P)
 .S BGPNF=$P(^BGPINDWC(BGPPC,0),U,9)
 .S BGPNP=$P(^DD(90548.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .D SETN
 .I $P($G(^BGPINDWC(BGPPC,14)),U) D
 ..S ^TMP($J,"SUMMARYDEL",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,14),U,5),0),U,2),$P(^BGPINDWC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..Q:'$G(BGPAREAA)
 ..S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARYDEL DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,14),U,5),0),U,2),$P(^BGPINDWC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,2)_U_$P($G(BGPSDP(X,2)),U,2)_U_$P($G(BGPSDP(X,3)),U,2)_U_BGPCYN
 .;NON
 .I $P($G(^BGPINDWC(BGPPC,15)),U) D
 ..S ^TMP($J,"SUMMARYDEL NON",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,15),U,5),0),U,3),$P(^BGPINDWC(BGPPC,15),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARYDEL DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,15),U,5),0),U,3),$P(^BGPINDWC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,2)_U_$P($G(BGPSDPN(X,2)),U,2)_U_$P($G(BGPSDPN(X,3)),U,2)_U_BGPCYN
 .;DEVEL
 .I $P($G(^BGPINDWC(BGPPC,22)),U) D
 ..S ^TMP($J,"SUMMARYDEL DEVEL",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,22),U,5),0),U,3),$P(^BGPINDWC(BGPPC,22),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPD(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARYDEL DETAIL PAGE DEVEL",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,22),U,5),0),U,3),$P(^BGPINDWC(BGPPC,22),U,6),BGPPC,X)=$P($G(BGPSDPD(X,1)),U,2)_U_$P($G(BGPSDPD(X,2)),U,2)_U_$P($G(BGPSDPD(X,3)),U,2)_U_BGPCYN
 .;OTHER
 .I $P($G(^BGPINDWC(BGPPC,19)),U) D
 ..S ^TMP($J,"SUMMARYDEL OTHER",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,19),U,5),0),U,3),$P(^BGPINDWC(BGPPC,19),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARYDEL DETAIL PAGE OTHER",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,19),U,5),0),U,3),$P(^BGPINDWC(BGPPC,19),U,6),BGPPC,X)=$P($G(BGPSDPO(X,1)),U,2)_U_$P($G(BGPSDPO(X,2)),U,2)_U_$P($G(BGPSDPO(X,3)),U,2)_U_BGPCYN
 .I $P($G(^BGPINDWC(BGPPC,14)),U) D
 ..S ^TMP($J,"SUMMARY",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,14),U,5),0),U,2),$P(^BGPINDWC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..Q:'$G(BGPAREAA)
 ..S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARY DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,14),U,5),0),U,2),$P(^BGPINDWC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,2)_U_$P($G(BGPSDP(X,2)),U,2)_U_$P($G(BGPSDP(X,3)),U,2)_U_BGPCYN
 .;NON
 .I $P($G(^BGPINDWC(BGPPC,15)),U) D
 ..S ^TMP($J,"SUMMARY NON",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,15),U,5),0),U,3),$P(^BGPINDWC(BGPPC,15),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARY DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,15),U,5),0),U,3),$P(^BGPINDWC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,2)_U_$P($G(BGPSDPN(X,2)),U,2)_U_$P($G(BGPSDPN(X,3)),U,2)_U_BGPCYN
 .;DEVEL
 .I $P($G(^BGPINDWC(BGPPC,22)),U) D
 ..S ^TMP($J,"SUMMARY DEVEL",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,22),U,5),0),U,3),$P(^BGPINDWC(BGPPC,22),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPD(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARY DETAIL PAGE DEVEL",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,22),U,5),0),U,3),$P(^BGPINDWC(BGPPC,22),U,6),BGPPC,X)=$P($G(BGPSDPD(X,1)),U,2)_U_$P($G(BGPSDPD(X,2)),U,2)_U_$P($G(BGPSDPD(X,3)),U,2)_U_BGPCYN
 .;OTHER
 .I $P($G(^BGPINDWC(BGPPC,19)),U) D
 ..S ^TMP($J,"SUMMARY OTHER",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,19),U,5),0),U,3),$P(^BGPINDWC(BGPPC,19),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 ..I $G(BGPAREAA) D  ;SDPX
 ...S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D  ;SDPX
 ....S ^TMP($J,"SUMMARY DETAIL PAGE OTHER",$P(^BGPSCAT($P(^BGPINDWC(BGPPC,19),U,5),0),U,3),$P(^BGPINDWC(BGPPC,19),U,6),BGPPC,X)=$P($G(BGPSDPO(X,1)),U,2)_U_$P($G(BGPSDPO(X,2)),U,2)_U_$P($G(BGPSDPO(X,3)),U,2)_U_BGPCYN
H .;write header for 1.A.1
 .S X=$P(^BGPINDWC(BGPPC,0),U,15)_" "_$P(^BGPINDWC(BGPPC,0),U,16)_" "_$P(^BGPINDWC(BGPPC,0),U,19) D S(X,1,1)
 .D H2
 Q
H2 ;
 S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)="",$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)="",$P(BGPX,U,5)=$$SB($J($$CALC(BGPCYN,BGPPRN),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=""
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
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,5,1)," ")
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
 D SETN^BGP2DP1C
 ;I $P(^BGPINDWC(BGPPC,0),U,4)[".1"
 K BGPNOSUM,BGPIIDEL
 S (BGPCYP,BGPPRP,BGPBLP)=""
 Q
