BGP4DP3 ; IHS/CMI/LAB - print ind 1 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
I40 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1="40.1" D PI^BGP4DP1 Q:BGPQUIT
 Q:BGPQUIT
 F BGPPC1="40.2.1","40.2.2","40.2.3","40.2.4","40.2.5" Q:BGPQUIT  D PI
 Q:BGPQUIT
 W ! F BGPPC1="40.3.1","40.3.2","40.3.3","40.3.4","40.3.5" Q:BGPQUIT  D PI
 Q
PI ;EP
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC=$O(^BGPINDFC("OR",BGPPC1,0))
 I BGPRTYPE'=4,BGPINDT="G",$P(^BGPINDFC(BGPPC,0),U,5)'=1 Q
 I BGPRTYPE'=4,BGPINDT="A",$P(^BGPINDFC(BGPPC,0),U,6)'=1 Q
 I BGPRTYPE'=4,BGPINDT="H",$P($G(^BGPINDFC(BGPPC,12)),U,1)'=1 Q
 I BGPINDT="D",$P(^BGPINDFC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDFC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDFC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="P",$P($G(^BGPINDFC(BGPPC,12)),U,3)'=1 Q
 S BGPPC=BGPPC D
 .I $P(^BGPINDFC(BGPPC,0),U,4)[".3" S BGPDF=23.503
 .I $P(^BGPINDFC(BGPPC,0),U,4)[".4" S BGPDF=23.504
 .S BGPNP=$P(^DD(90244.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S BGPCYD=$$V(1,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA^BGP4DP1(1,N,P)
 .S BGPPRD=$$V(2,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA^BGP4DP1(2,N,P)
 .S BGPBLD=$$V(3,BGPRPT,N,P) I $G(BGPAREAA) D SETEXA^BGP4DP1(3,N,P)
 .S BGPNF=$P(^BGPINDFC(BGPPC,0),U,9)
 .S BGPNP=$P(^DD(90244.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .D SETN
 .I $P($G(^BGPINDFC(BGPPC,14)),U) S ^TMP($J,"SUMMARY",$P(^BGPINDFC(BGPPC,14),U,5),$P(^BGPINDFC(BGPPC,14),U,6),BGPPC)=BGPCYN_U_BGPPRN_U_BGPBLN
 .;write header for 1.A.1
 .I $Y>(IOSL-6) D HEADER^BGP4DPH Q:BGPQUIT  W !!,^BGPINDF(BGPIC,53,1,0) D H1
 .;I BGPRTYPE'=1 W !!,$P(^BGPINDFC(BGPPC,0),U,15)
 .;I BGPRTYPE=1 W !!
 .W !!,$P(^BGPINDFC(BGPPC,0),U,15)
 .I $P(^BGPINDFC(BGPPC,0),U,16)]"" W !?1,$P(^BGPINDFC(BGPPC,0),U,16)
 .I BGPRTYPE=4,$P(^BGPINDFC(BGPPC,0),U,19)]"" W !?1,$P(^BGPINDFC(BGPPC,0),U,19)
 .I BGPRTYPE'=4,$P(^BGPINDFC(BGPPC,0),U,19)]"",$P(^BGPINDFC(BGPPC,0),U,19)'["GPRA" W !?1,$P(^BGPINDFC(BGPPC,0),U,19)
 .D H2
 Q
H2 ;EP
 S BGPX="",BGPX=$$C(BGPCYN,0,7),$E(BGPX,9)="",$E(BGPX,16)=$$C(BGPPRN,0,7),$E(BGPX,24)="",$E(BGPX,32)=$$CALC(BGPCYN,BGPPRN)
 S $E(BGPX,39)=$$C(BGPBLN,0,7),$E(BGPX,47)="",$E(BGPX,54)=$$CALC(BGPCYN,BGPBLN)
 W ?20,BGPX
 Q
H1 ;EP
 W !!?21,"REPORT",?31,"",?35,"PREV YR",?46,"",?49,"CHG from",?59,"BASE",?69,"",?72,"CHG from"
 W !?21,"PERIOD     %",?35,"PERIOD     %",?49,"PREV YR ",?59,"PERIOD    %",?72,"BASE "
 Q
SETN ;set numerator fields
 D SETN^BGP4DP1
 Q
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 I T=1 Q $P($G(^BGPGPDCF(R,N)),U,P)
 I T=2 Q $P($G(^BGPGPDPF(R,N)),U,P)
 I T=3 Q $P($G(^BGPGPDBF(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCF(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPF(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBF(X,N)),U,P)
 .Q
 Q C
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",0)
 Q Z
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
