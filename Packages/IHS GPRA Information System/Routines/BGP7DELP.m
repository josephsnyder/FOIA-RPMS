BGP7DELP ; IHS/CMI/LAB - IHS HEDIS print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
PRINT ;
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 I BGPROT="D" G DEL
 D ^BGP7ELH
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 K ^TMP($J)
 I BGPROT="P" K ^XTMP("BGP7D",BGPJ,BGPH),^TMP($J) Q
 ;
DEL ;create delimited output file
 D ^%ZISC ;close printer device
 K ^TMP($J)
 D ^BGP7ELL ;create ^tmp of delimited report
 K ^XTMP("BGP7D",BGPJ,BGPH)
 K ^TMP($J)
 Q
 ;
PRINT1 ;EP
 S BGPIC=0 F  S BGPIC=$O(BGPIND(BGPIC)) Q:BGPIC=""!(BGPQUIT)  D
 .D HEADER^BGP7DPH ;header for all measures
 .I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .W !,$P(^BGPELIA(BGPIC,0),U,3),!
 .I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .W !,"Denominator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPIC,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPELIA(BGPIC,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...S BGPZ=0 F  S BGPZ=$O(^BGPELIA(BGPIC,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ....W !,^BGPELIA(BGPIC,61,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .W !!,"Numerator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPIC,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPELIA(BGPIC,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...S BGPZ=0 F  S BGPZ=$O(^BGPELIA(BGPIC,62,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ....W !,^BGPELIA(BGPIC,62,BGPY,1,BGPZ,0)
 ....Q
 ...Q
 ..Q
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPIC,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..W !,^BGPELIA(BGPIC,11,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPIC,51,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..W !,^BGPELIA(BGPIC,51,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPELIA(BGPIC,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..W !,^BGPELIA(BGPIC,52,BGPX,0)
 .X ^BGPELIA(BGPIC,3)
 ;
 D ^BGP7ELS
 D EXIT
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X