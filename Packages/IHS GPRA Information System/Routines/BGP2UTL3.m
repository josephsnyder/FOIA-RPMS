BGP2UTL3 ; IHS/CMI/LAB - 27 Apr 2009 11:01 PM 30 Aug 2009 10:16 AM 30 Jun 2010 4:58 PM 05 Aug 2012 11:40 AM 26 Mar 2012 2:40 PM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
ONN4 ;EP
 K BGPEXCT
 S Y=$$OPEN^%ZISH(BGPUF,BGPFONN4,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,25)
 F  S BGPP=$O(^BGPCTRL(BGPY,86,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,86,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,86,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR^BGP2UTL
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 S BGPX=0 F  S BGPX=$O(BGPONN4(BGPX)) Q:BGPX'=+BGPX  W BGPONN4(BGPX),!
 K BGPONN4
 D ^%ZISC
ONN5 ;
 K BGPEXCT
 S Y=$$OPEN^%ZISH(BGPUF,BGPFONN5,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,26)
 F  S BGPP=$O(^BGPCTRL(BGPY,87,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,87,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,87,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR^BGP2UTL
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 S BGPX=0 F  S BGPX=$O(BGPONN5(BGPX)) Q:BGPX'=+BGPX  W BGPONN5(BGPX),!
 K BGPONN5
ONNC D ^%ZISC  ;close host file
 Q
