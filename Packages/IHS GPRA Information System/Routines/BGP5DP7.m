BGP5DP7 ; IHS/CMI/LAB - print ind 10 ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
 ;this routine for Measure I10 ONLY
I10 ;EP
 D H1 S BGPNODEN=1
 F BGPPC1="10.1" D PI Q:BGPQUIT
 Q
PI ;EP
 S BGPDENP=0
 K BGPDHOLD
 K BGPCYP,BGPBLP,BGPPRP
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDKC("AB",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDKC("AB",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;
 K BGPEXCT,BGPSDP,BGPSDPN,BGPSDPO,BGPSDPD
 I BGPRTYPE'=4,BGPINDK="G",$P(^BGPINDKC(BGPPC,0),U,5)'=1 Q
 I BGPRTYPE=4,$P($G(^BGPINDKC(BGPPC,21)),U,2)=1 Q
 I BGPINDK="D",$P(^BGPINDKC(BGPPC,0),U,12)'=1 Q
 I BGPINDK="C",$P(^BGPINDKC(BGPPC,0),U,13)'=1 Q
 I BGPINDK="W",$P($G(^BGPINDKC(BGPPC,12)),U,2)'=1 Q
 I BGPINDK="E",$P($G(^BGPINDKC(BGPPC,12)),U,3)'=1 Q
 I BGPINDK="I",$P($G(^BGPINDKC(I,11)),U,1)'=1 Q
 I BGPINDK="P",$P($G(^BGPINDKC(I,11)),U,2)'=1 Q
 ;get numerator value of measure and calc %
 S BGPDF=$P(^BGPINDKC(BGPPC,0),U,9)
 I $P(^BGPINDKC(BGPPC,0),U,4)[".1" S BGPDHOLD=BGPDF
 I $P(^BGPINDKC(BGPPC,0),U,4)'[".1" S BGPDF=BGPDHOLD
 S BGPNP=$P(^DD(90554.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V^BGP5DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1C(1,N,P)
 S BGPPRD=$$V^BGP5DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1C(2,N,P)
 S BGPBLD=$$V^BGP5DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1C(3,N,P)
 S BGPNF=$P(^BGPINDKC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90554.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN^BGP5DP1C
 ;write header for 1.A.1
 W:'$G(BGPSUMON) !!,$P(^BGPINDKC(BGPPC,0),U,15)
 I $P(^BGPINDKC(BGPPC,0),U,16)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDKC(BGPPC,0),U,16)
 I $P(^BGPINDKC(BGPPC,0),U,19)]"" W:'$G(BGPSUMON) !?1,$P(^BGPINDKC(BGPPC,0),U,19)
 D H2
 Q
H2 ;EP
 S BGPX="",BGPX=$$C(BGPCYN,0,8),$E(BGPX,9)=$S(BGPCYP]"":$J($G(BGPCYP),5,1),1:""),$E(BGPX,16)=$$C(BGPPRN,0,8),$E(BGPX,24)=$S(BGPPRP]"":$J($G(BGPPRP),5,1),1:""),$E(BGPX,32)=$$CALC(BGPCYN,BGPPRN)
 S $E(BGPX,39)=$$C(BGPBLN,0,8),$E(BGPX,47)=$S(BGPBLP]"":$J($G(BGPBLP),5,1),1:""),$E(BGPX,55)=$$CALC(BGPCYN,BGPBLN)
 W:'$G(BGPSUMON) ?20,BGPX
 Q
H1 ;EP
 Q:$G(BGPSUMON)
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
