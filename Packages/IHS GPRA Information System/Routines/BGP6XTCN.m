BGP6XTCN ; IHS/CMI/LAB - TAXONOMY CHECK FOR FY04 CRS REPORT ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
 D HOME^%ZIS
 W:$D(IOF) @IOF
 W !!,"Checking for Taxonomies to support the ",$S('$G(BGP6GPU):"National GPRA Report. ",1:"GPRA Performance Report. "),!,"Please enter the device for printing.",!
ZIS ;
 S XBRC="",XBRP="TAXCHK^BGP6XTCN",XBNS="",XBRX="XIT^BGP6XTCN"
 D ^XBDBQUE
 D XIT
 Q
TAXCHK ;EP
 D HOME^%ZIS
 ;W:$D(IOF) @IOF
 K BGPQUIT
GUICHK ;EP
 W !,"Checking for Taxonomies to support the ",$S('$G(BGP6GPU):"National GPRA Report...",1:"GPRA Performance Report..."),!
 NEW A,BGPX,I,Y,Z,J,BGPY,BGPT
 K A
 ;S T="TAXS" F J=1:1 S Z=$T(@T+J),BGPX=$P(Z,";;",2),Y=$P(Z,";;",3) Q:BGPX=""  D
 S BGPT="" F  S BGPT=$O(^BGPTAXS("B",BGPT)) Q:BGPT=""  D
 .S BGPY=$O(^BGPTAXS("B",BGPT,0))
 .Q:'$D(^BGPTAXS(BGPY,12,"B",1))
 .;I $P(^BGPTAXS(BGPY,0),U,2)'="L" S BGPX=$O(^ATXAX("B",BGPT,0))
 .;I $P(^BGPTAXS(BGPY,0),U,2)="L" S BGPX=$O(^ATXLAB("B",BGPT,0))
 .S BGPTYPE=$P(^BGPTAXS(BGPY,0),U,2),Y=$G(^BGPTAXS(BGPY,11,1,0))
 .I BGPTYPE'="L" D
 ..I '$D(^ATXAX("B",BGPT)) S A(BGPT)=Y_"^is Missing" Q
 ..S I=$O(^ATXAX("B",BGPT,0))
 ..I '$D(^ATXAX(I,21,"B")) S A(BGPT)=Y_"^has no entries "
 .I BGPTYPE="L" D
 ..I '$D(^ATXLAB("B",BGPT)) S A(BGPT)=Y_"^is Missing " Q
 ..S I=$O(^ATXLAB("B",BGPT,0))
 ..I '$D(^ATXLAB(I,21,"B")) S A(BGPT)=Y_"^has no entries "
 I '$D(A) W !,"All taxonomies are present.",! K A,BGPX,Y,I,Z D DONE Q
 W !,"In order for the National GPRA Report to find all necessary data, several",!,"taxonomies must be established.  The following taxonomies are missing or have",!,"no entries:"
 S BGPX="" F  S BGPX=$O(A(BGPX)) Q:BGPX=""!($D(BGPQUIT))  D
 .;I $Y>(IOSL-2) D PAGE Q:$D(BGPQUIT)
 .W !,$P(A(BGPX),U)," [",BGPX,"] ",$P(A(BGPX),U,2)
 .Q
DONE ;
 K BGPQUIT
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of taxonomy check.  PRESS ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
XIT ;EP
 K BGP,BGPX,BGPQUIT,BGPLINE,BGPJ,BGPX,BGPTEXT,BGP
 K X,Y,J
 Q
PAGE ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT="" Q
 Q
