BGP5EL1L ; IHS/CMI/LAB - print ind 1 ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;PUBLIC HEALTH NURSING
IELDPHA ;EP
 D H1
 F BGPPC1="24.1","24.2" Q:BGPQUIT  W ! D PI
 Q
PI ;EP
 S BGPPC=0 F  S BGPPC=$O(^BGPELIIK("AP",BGPPC1,BGPPC)) Q:BGPPC=""  D PI1
 Q
PI1 ;
 K BGPCYP,BGPBLP,BGPPRD,BGPEXCT,BGPSDP
 S (BGPCYD,BGPPRD,BGPBLD)=""
 S BGPNF=$P(^BGPELIIK(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90555.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN^BGP5ELP1
 I $Y>(BGPIOSL-6) D HEADER^BGP5DPH Q:BGPQUIT  W !!,^BGPELIK(BGPIC,53,1,0) D H1
 W !!,$P(^BGPELIIK(BGPPC,0),U,15)
 I $P(^BGPELIIK(BGPPC,0),U,16)]"" W !?1,$P(^BGPELIIK(BGPPC,0),U,16)
 I $P(^BGPELIIK(BGPPC,0),U,19)]"" W !?1,$P(^BGPELIIK(BGPPC,0),U,19)
 D H2
 Q
H2 ;EP
 S BGPX="",BGPX=$$C(BGPCYN,0,7),$E(BGPX,9)="",$E(BGPX,16)=$$C(BGPPRN,0,7),$E(BGPX,24)="",$E(BGPX,32)=$$CALC(BGPCYN,BGPPRN)
 S $E(BGPX,39)=$$C(BGPBLN,0,7),$E(BGPX,47)="",$E(BGPX,54)=$$CALC(BGPCYN,BGPBLN)
 W ?20,BGPX
 Q
H1 ;EP
 W !!?21,"REPORT",?31,"",?35,"PREV YR",?46,"",?49,"CHG from",?59,"BASE",?69,"",?72,"CHG from"
 W !?21,"PERIOD      ",?35,"PERIOD      ",?49,"PREV YR ",?59,"PERIOD     ",?72,"BASE "
 Q
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",0)
 Q Z
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
