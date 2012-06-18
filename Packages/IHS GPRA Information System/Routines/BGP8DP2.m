BGP8DP2 ; IHS/CMI/LAB - print ind 10 ; 02 Jul 2008  9:25 AM
 ;;8.0;IHS CLINICAL REPORTING;**2**;MAR 12, 2008
 ;
 ;
 ;
I10 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1=$P(^BGPINDE(BGPIC,0),U,6)_".1" D PI Q:BGPQUIT
 Q
I11 ;EP
 S BGPORXX=$P(^BGPINDE(BGPIC,0),U,6)
 D H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2" D PI Q:BGPQUIT
 Q
ISTI ;EP
 S BGPORXX=$P(^BGPINDE(BGPIC,0),U,6)
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0)
 D H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2",BGPORXX_".3" D PI Q:BGPQUIT
 Q:BGPQUIT
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0) D H1
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".4",BGPORXX_".5",BGPORXX_".6" D PI Q:BGPQUIT
 Q:BGPQUIT
 ;
 K BGPNODEN
 F BGPPC1=BGPORXX_".7" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 Q:BGPRTYPE=7
 F BGPPC1=BGPORXX_".8",BGPORXX_".9" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".10",BGPORXX_".11",BGPORXX_".12" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".13",BGPORXX_".14",BGPORXX_".15" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".16",BGPORXX_".17",BGPORXX_".18" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".19",BGPORXX_".20",BGPORXX_".21" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 ;USER POP
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0) D H1
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".22",BGPORXX_".23",BGPORXX_".24" D PI Q:BGPQUIT
 Q:BGPQUIT
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0) D H1
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".25",BGPORXX_".26",BGPORXX_".27" D PI Q:BGPQUIT
 K BGPNODEN
 F BGPPC1=BGPORXX_".28",BGPORXX_".29",BGPORXX_".30" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".31",BGPORXX_".32",BGPORXX_".33" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".34",BGPORXX_".35",BGPORXX_".36" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".37",BGPORXX_".38",BGPORXX_".39" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1=BGPORXX_".40",BGPORXX_".41",BGPORXX_".42" D PI^BGP8DP1 Q:BGPQUIT
 Q:BGPQUIT
 Q
IPC ;EP
 S BGPORXX=$P(^BGPINDE(BGPIC,0),U,6)
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0)
 D H1 S BGPNODEN=1
 F BGPPC1=BGPORXX_".1",BGPORXX_".2",BGPORXX_".3",BGPORXX_".4" D PI Q:BGPQUIT
 Q:BGPQUIT
 I $Y>(BGPIOSL-13) D HEADER^BGP8DPH Q:BGPQUIT  W !!,^BGPINDE(BGPIC,53,1,0) D H1
 S BGPNODEN=1
 F BGPPC1=BGPORXX_".5",BGPORXX_".6",BGPORXX_".7",BGPORXX_".8" D PI Q:BGPQUIT
 Q
PI ;EP
 S BGPDENP=0
 K BGPDHOLD
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDEC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDEC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;EP
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO
 I BGPRTYPE=1,$P(^BGPINDEC(BGPPC,0),U,5)'=1 Q  ;not on national
 I BGPRTYPE=7,$P($G(^BGPINDEC(BGPPC,12)),U,12)'=1 Q  ;not on other national
 I BGPINDT="D",$P(^BGPINDEC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDEC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDEC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="E",$P($G(^BGPINDEC(BGPPC,12)),U,3)'=1 Q
 ;get numerator value of measure and calc %
 S BGPDF=$P(^BGPINDEC(BGPPC,0),U,9)
 ;I $P(^BGPINDEC(BGPPC,0),U,4)[".1" S BGPDHOLD=BGPDF
 ;I $P(^BGPINDEC(BGPPC,0),U,4)'[".1" S BGPDF=BGPDHOLD
 S BGPNP=$P(^DD(90533.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V^BGP8DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP8DP1C(1,N,P)
 S BGPPRD=$$V^BGP8DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP8DP1C(2,N,P)
 S BGPBLD=$$V^BGP8DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP8DP1C(3,N,P)
 S BGPNF=$P(^BGPINDEC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90533.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P($G(^BGPINDEC(BGPPC,14)),U) D
 .S ^TMP($J,"SUMMARY",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,14),U,5),0),U,2),$P(^BGPINDSC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .Q:'$G(BGPAREAA)
 .S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ..S ^TMP($J,"SUMMARY DETAIL PAGE",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,14),U,5),0),U,2),$P(^BGPINDSC(BGPPC,14),U,6),BGPPC,X)=$P($G(BGPSDP(X,1)),U,2)_U_$P($G(BGPSDP(X,2)),U,2)_U_$P($G(BGPSDP(X,3)),U,2)_U_BGPCYN
 ;NON
 I $P($G(^BGPINDEC(BGPPC,15)),U) D
 .S ^TMP($J,"SUMMARY NON",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,15),U,5),0),U,3),$P(^BGPINDEC(BGPPC,15),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPN(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARY DETAIL PAGE NON",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,15),U,5),0),U,3),$P(^BGPINDEC(BGPPC,15),U,6),BGPPC,X)=$P($G(BGPSDPN(X,1)),U,2)_U_$P($G(BGPSDPN(X,2)),U,2)_U_$P($G(BGPSDPN(X,3)),U,2)_U_BGPCYN
 ;OTHER
 I $P($G(^BGPINDEC(BGPPC,19)),U) D
 .S ^TMP($J,"SUMMARY OTHER",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,19),U,5),0),U,3),$P(^BGPINDEC(BGPPC,19),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .I $G(BGPAREAA) D  ;SDPX
 ..S X=0 F  S X=$O(BGPSDPO(X)) Q:X'=+X  D  ;SDPX
 ...S ^TMP($J,"SUMMARY DETAIL PAGE OTHER",$P(^BGPSCAT($P(^BGPINDEC(BGPPC,19),U,5),0),U,3),$P(^BGPINDEC(BGPPC,19),U,6),BGPPC,X)=$P($G(BGPSDPO(X,1)),U,2)_U_$P($G(BGPSDPO(X,2)),U,2)_U_$P($G(BGPSDPO(X,3)),U,2)_U_BGPCYN
 ;write header for 1.A.1
 I IOSL>(BGPIOSL-6)
 W !!,$P(^BGPINDEC(BGPPC,0),U,15)
 I $P(^BGPINDEC(BGPPC,0),U,16)]"" W !?1,$P(^BGPINDEC(BGPPC,0),U,16)
 I $P(^BGPINDEC(BGPPC,0),U,19)]"" W !?1,$P(^BGPINDEC(BGPPC,0),U,19)
 D H2
 Q
H2 ;EP
 S BGPX="",BGPX=$$C(BGPCYN,0,8),$E(BGPX,9)=$S(BGPCYP]"":$J($G(BGPCYP),5,1),1:""),$E(BGPX,16)=$$C(BGPPRN,0,8),$E(BGPX,24)=$S(BGPPRP]"":$J($G(BGPPRP),5,1),1:""),$E(BGPX,32)=$$CALC(BGPCYN,BGPPRN)
 S $E(BGPX,39)=$$C(BGPBLN,0,8),$E(BGPX,47)=$S(BGPBLP]"":$J($G(BGPBLP),5,1),1:""),$E(BGPX,55)=$$CALC(BGPCYN,BGPBLN)
 W ?20,BGPX
 Q
H1 ;EP
 W !!?21,"REPORT",?31,"",?35,"PREV YR",?46,"",?49,"CHG from",?59,"BASE",?69,"",?72,"CHG from"
 W !?21,"PERIOD      ",?35,"PERIOD      ",?49,"PREV YR ",?59,"PERIOD      ",?72,"BASE "
 Q
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",0)
 Q Z
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
SETN ;set numerator fields
 S BGPNOSUM=1
 D SETN^BGP8DP1C
 ;I $P(^BGPINDSC(BGPPC,0),U,4)[".1"
 K BGPNOSUM
 S (BGPCYP,BGPPRP,BGPBLP)=""
 Q
