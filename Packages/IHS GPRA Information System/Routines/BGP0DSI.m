BGP0DSI ; IHS/CMI/LAB - DISPLAY IND LISTS ;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;; ;
EP ;EP - CALLED FROM OPTION
 D EN
 Q
EOJ ;EP
 K BGPTIND,BGPHIGH,BGPANS,BGPC,BGPGANS,BGPGC,BGPGI,BGPI,BGPX
 Q
 ;; ;
EN ;EP -- main entry point for APCH HMR DISPLAY
 D EN^VALM("BGP 10 INDICATOR SELECTION")
 D CLEAR^VALM1
 D FULL^VALM1
 W:$D(IOF) @IOF
 D EOJ
 Q
 ;
HDR ; -- header code
 I BGPRTYPE'=1 S VALMHDR(1)="IHS Clinical Performance Measures"
 I BGPRTYPE=1 S VALMHDR(1)="IHS GPRA & PART Clinical Performance Measures (incl developmental measures)"
 S VALMHDR(2)="* indicates the performance measure has been selected"
 Q
 ;
INIT ; -- init variables and list array
 ;I BGPRTYPE=1,$G(BGPNPL) G INITPL
 K BGPTIND S BGPHIGH=""
 S (X,Y,Z,C)=0 F  S X=$O(^BGPINDT("AOI",X)) Q:X'=+X  S Y=0 F  S Y=$O(^BGPINDT("AOI",X,Y))  Q:Y'=+Y  D
 .I $G(BGPRTYPE)=1,$P(^BGPINDT(Y,0),U,7)'=1 Q
 .I $G(BGPRTYPE)=7,$P($G(^BGPINDT(Y,12)),U,1)'=1 Q
 .I $G(BGPRTYPE)=4,$P($G(^BGPINDT(Y,13)),U,1)=1 Q
 .I $G(BGPNPL),'$D(^BGPNPLT("AR",Y,$S(BGPRTYPE=1:"N",1:"O"))) Q
 .S C=C+1,BGPTIND(C,0)=C_")",$E(BGPTIND(C,0),5)=$P(^BGPINDT(Y,0),U,3),BGPTIND(C,C)=Y I $D(BGPIND(Y)) S BGPTIND(C,0)="*"_BGPTIND(C,0)
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
INITPL ;
 ;K BGPTIND S BGPHIGH=""
 ;get dev measures first and put (GPRA Dev.) on end
 ;S (X,Y,Z,C)=0 F  S X=$O(^BGPINDT("ADEVO",X)) Q:X'=+X  S Y=0 F  S Y=$O(^BGPINDT("ADEVO",X,Y)) Q:Y'=+Y  D
 ;.I $D(^BGPNPLT("AR",Y,"N")) Q
 ;.S C=C+1,BGPTIND(C,0)=C_")",$E(BGPTIND(C,0),5)=$P(^BGPINDT(Y,0),U,3)_" (GPRA Dev.)",BGPTIND(C,C)=Y I $D(BGPIND(Y)) S BGP
 Q
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
BACK ;go back to listman
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
 ;
ADD ;EP - add an item to the selected list - called from a protocol
 W !
 I $G(BGP0NPLT)=1 S DIR(0)="NO^1:"_BGPHIGH,DIR("A")="Select Only One Measure" G ADD1
 I $G(BGPRTYPE)'=1 S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)"
 I $G(BGPRTYPE)=1 S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which Measure Topic"
ADD1 ;
 D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPANS=Y,BGPC="" F BGPI=1:1 S BGPC=$P(BGPANS,",",BGPI) Q:BGPC=""  S BGPIND(BGPTIND(BGPC,BGPC))=""
ADDX ;
 D BACK
 Q
ADDALL ;
 F X=1:1:BGPHIGH S BGPIND(X)=""
 D BACK
 Q
 ;
REM ;
 W ! S DIR(0)="LO^1:"_BGPHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G ADDX
 I $D(DIRUT) W !,"No items selected." G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPANS=Y,BGPC="" F BGPI=1:1 S BGPC=$P(BGPANS,",",BGPI) Q:BGPC=""  K BGPIND(BGPTIND(BGPC,BGPC))
REMX ;
 D BACK
 Q
