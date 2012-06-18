BGP2UTL ; IHS/CMI/LAB - 27 Apr 2009 11:01 PM 30 Aug 2009 10:16 AM 30 Jun 2010 4:58 PM 05 Aug 2012 11:40 AM 26 Mar 2012 2:40 PM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
VER() ;EP
 Q "CRS 2012 Version 11.1"  ;cmi/maw mod 7/9/08
STMP ;EP
 Q:BGPTIME'=1
 I BGPLIST="P",$P(^AUPNPAT(DFN,0),U,14)'=BGPLPRV Q
 X ^BGPINDW(BGPIC,2) Q:'$T
 S BGPLIST(BGPIC)=$G(BGPLIST(BGPIC))+1
 S ^XTMP("BGP2D",BGPJ,BGPH,"LIST",BGPIC,$S($P($G(^AUPNPAT(DFN,11)),U,18)]"":$P(^AUPNPAT(DFN,11),U,18),1:"UNKNOWN"),$P(^DPT(DFN,0),U,2),BGPAGEB,DFN)=$G(BGPVALUE)
 Q
D(D) ;EP
 I D="" Q ""
 Q (1700+$E(D,1,3))_$E(D,4,5)_$E(D,6,7)_$S($P(D,".",2)]"":$P(D,".",2),1:"")
JRNL ;EP
 N (DT,U,ZTQUEUED) S %=$$NOJOURN^ZIBGCHAR("BGPGPDCW"),%=$$NOJOURN^ZIBGCHAR("BGPGPDPW"),%=$$NOJOURN^ZIBGCHAR("BGPGPDBW"),%=$$NOJOURN^ZIBGCHAR("BGPHEDCB"),%=$$NOJOURN^ZIBGCHAR("BGPHEDPB"),%=$$NOJOURN^ZIBGCHAR("BGPHEDBB")
 S %=$$NOJOURN^ZIBGCHAR("BGPDATA"),%=$$NOJOURN^ZIBGCHAR("BGPGUI")
 S %=$$NOJOURN^ZIBGCHAR("BGPELDCW"),%=$$NOJOURN^ZIBGCHAR("BGPELDPW"),%=$$NOJOURN^ZIBGCHAR("BGPELDBW")
 S %=$$NOJOURN^ZIBGCHAR("BGPEOCB"),%=$$NOJOURN^ZIBGCHAR("BGPEOPB"),%=$$NOJOURN^ZIBGCHAR("BGPEOBB")
 S %=$$NOJOURN^ZIBGCHAR("BGPXPW")
 Q
DATE(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
EDT(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_(1700+$E(D,1,3))
 ;
SETHDR ;EP
 S BGPX="",$P(BGPX,U,1)="Site Name",$P(BGPX,U,2)="ASUFAC",$P(BGPX,U,3)="DB Id",$P(BGPX,U,4)="Date Report Run",$P(BGPX,U,5)="Current Report Begin Date",$P(BGPX,U,6)="Current Report End Date",$P(BGPX,U,7)="Previous Year Begin Date"
 S $P(BGPX,U,8)="Previous Year End Date",$P(BGPX,U,9)="Baseline Year Begin Date",$P(BGPX,U,10)="Baseline Year End Date"
 Q
ONN1 ;EP
 K BGPEXCT
 S Y=$$OPEN^%ZISH(BGPUF,BGPFONN1,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,2)
 F  S BGPP=$O(^BGPCTRL(BGPY,36,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,36,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,36,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 S BGPX=0 F  S BGPX=$O(BGPONN1(BGPX)) Q:BGPX'=+BGPX  W BGPONN1(BGPX),!
 K BGPONN1
 D ^%ZISC
ONN2 ;
 K BGPEXCT
 S Y=$$OPEN^%ZISH(BGPUF,BGPFONN2,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,3)
 F  S BGPP=$O(^BGPCTRL(BGPY,37,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,37,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,37,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 S BGPX=0 F  S BGPX=$O(BGPONN2(BGPX)) Q:BGPX'=+BGPX  W BGPONN2(BGPX),!
 K BGPONN2
ONN3 ;
 K BGPEXCT
 S Y=$$OPEN^%ZISH(BGPUF,BGPFONN3,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,21)
 F  S BGPP=$O(^BGPCTRL(BGPY,45,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,45,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,45,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 S BGPX=0 F  S BGPX=$O(BGPONN3(BGPX)) Q:BGPX'=+BGPX  W BGPONN3(BGPX),!
 K BGPONN3
ONNC D ^%ZISC  ;close host file
 D ONN4^BGP2UTL3
 Q
GNT1 ;EP - area export file
 K BGPEXCT
 I '$G(BGPAREAA) G Q1
 S Y=$$OPEN^%ZISH(BGPUF,BGPFGNT1,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,4)
 F  S BGPP=$O(^BGPCTRL(BGPY,38,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,38,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,38,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEI(BGPX)) Q:BGPX'=+BGPX  W BGPEI(BGPX),!
 D ^%ZISC
Q1 ;
 K BGPEI
GNT2 ;
 K BGPEXCT
 I '$G(BGPAREAA) G Q2
 S Y=$$OPEN^%ZISH(BGPUF,BGPFGNT2,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2012",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,16)
 F  S BGPP=$O(^BGPCTRL(BGPY,40,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,40,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,40,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEI2(BGPX)) Q:BGPX'=+BGPX  W BGPEI2(BGPX),!
Q2 ;
 K BGPEI2
 D ^%ZISC
Q3 ;
 D DEV^BGP2UTLC
 Q
GS ;EP
 K ^TMP($J)
 L +^BGPDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 ;NOTE:  Kill of unscripted global.  Export to area.  Using standard name.
 S BGPENDN=$S($P(^BGPSITE(DUZ(2),0),U,11)=0:88887,1:99998)
 K ^BGPDATA S X="",C=0 F  S X=$O(^BGPGPDCW(BGPRPT,X)) Q:X'=+X!(X>BGPENDN)  D
 .I $G(^BGPGPDCW(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPGPDCW(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPGPDCW(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPGPDCW(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPGPDCW(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPGPDCW(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPGPDCW(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPGPDCW(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPGPDCW(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPGPDCW(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPGPDCW(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPGPDCW(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPGPDCW(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPGPDCW(BGPRPT,X,X2,X3,X4,X5)
 S X=0 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPGPDCW"_"|"_^BGPDATA(X)
PRGS ;
 S S=C+1,X="" F  S X=$O(^BGPGPDPW(BGPRPT,X)) Q:X'=+X!(X>99998)  D
 .I $G(^BGPGPDPW(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPGPDPW(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPGPDPW(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPGPDPW(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPGPDPW(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPGPDPW(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPGPDPW(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPGPDPW(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPGPDPW(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPGPDPW(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPGPDPW(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPGPDPW(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPGPDPW(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPGPDPW(BGPRPT,X,X2,X3,X4,X5)
 S X=S-1 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPGPDPW"_"|"_^BGPDATA(X)
BLGS ;
 S S=C+1,X="" F  S X=$O(^BGPGPDBW(BGPRPT,X)) Q:X'=+X!(X>99998)  D
 .I $G(^BGPGPDBW(BGPRPT,X))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",8)=^BGPGPDBW(BGPRPT,X)
 .S X2="" F  S X2=$O(^BGPGPDBW(BGPRPT,X,X2)) Q:X2'=+X2  D
 ..I $G(^BGPGPDBW(BGPRPT,X,X2))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",8)=^BGPGPDBW(BGPRPT,X,X2)
 ..S X3="" F  S X3=$O(^BGPGPDBW(BGPRPT,X,X2,X3)) Q:X3'=+X3  D
 ...I $G(^BGPGPDBW(BGPRPT,X,X2,X3))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",8)=^BGPGPDBW(BGPRPT,X,X2,X3)
 ...S X4="" F  S X4=$O(^BGPGPDBW(BGPRPT,X,X2,X3,X4)) Q:X4'=+X4  D
 ....I $G(^BGPGPDBW(BGPRPT,X,X2,X3,X4))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3,$P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",8)=^BGPGPDBW(BGPRPT,X,X2,X3,X4)
 ....S X5="" F  S X5=$O(^BGPGPDBW(BGPRPT,X,X2,X3,X4,X5)) Q:X5'=+X5  D
 .....I $G(^BGPGPDBW(BGPRPT,X,X2,X3,X4,X5))]"" S C=C+1,$P(^BGPDATA(C),"|")=X,$P(^BGPDATA(C),"|",2)=X2,$P(^BGPDATA(C),"|",3)=X3
 .....S $P(^BGPDATA(C),"|",4)=X4,$P(^BGPDATA(C),"|",5)=X5,$P(^BGPDATA(C),"|",8)=^BGPGPDBW(BGPRPT,X,X2,X3,X4,X5)
 S X=S-1 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S ^BGPDATA(X)="BGPGPDBW"_"|"_^BGPDATA(X)
 NEW XBGL S XBGL="BGPDATA"
 S F="BG12"_$P(^AUTTLOC(DUZ(2),0),U,10)_"."_$S(BGPRTYPE=7:"ONM",1:"")_BGPRPT
 NEW XBFN,XBMED,XBF,XBFLT
 S XBMED="F",XBFN=F,XBTLE="SAVE OF CRS DATA BY - "_$P(^VA(200,DUZ,0),U),XBF=0,XBFLT=1
 S XBUF=BGPUF D ^XBGSAVE
 L -^BGPDATA
 K ^TMP($J),^BGPDATA ;NOTE:  kill of unsubscripted global for use in export to area.
 Q
REPORT ;EP
 S BGPRPT="",BGPERR=""
 I '$D(BGPGUI) W !!
 ;3 files must have the same ien
 L +^BGPGPDCW:30 I '$T S BGPERR="Unable to lock global." G REPORTX
 L +^BGPGPDPW:30 I '$T S BGPERR="Unable to lock global." G REPORTX
 L +^BGPGPDBW:30 I '$T S BGPERR="Unable to lock global." G REPORTX
 D GETIEN
 I 'BGPIEN S BGPERR="Error in control files!" S BGPRPT="" G REPORTX
 S DINUM=BGPIEN
 I $G(BGPNPL) S BGPRTYPE=4
 S BGPR12=$S($G(BGPYGPU):9,1:BGPRTYPE)
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPGPDCW(",DLAYGO=90548.03,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.11////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.12////"_BGPR12_";.13////"_DT_";.14////"_BGPBEN_";.15////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)_";.16///"_$P(^BGPSITE(DUZ(2),0),U,4)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)_";.18///"_$S($G(BGPTAXI):$P(^ATXAX(BGPTAXI,0),U),1:"")_";.19///"_$P(^BGPSITE(DUZ(2),0),U,13)
 D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 S BGPERR="UNABLE TO CREATE REPORT FILE ENTRY!" S BGPQUIT=1 G REPORTX
 S BGPRPT=+Y
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPGPDPW(",DLAYGO=90548.04,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.11////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.12////"_BGPR12_";.13////"_DT_";.14////"_BGPBEN_";.15////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)_";.16///"_$P(^BGPSITE(DUZ(2),0),U,4)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)_";.18///"_$S($G(BGPTAXI):$P(^ATXAX(BGPTAXI,0),U),1:"")_";.19///"_$P(^BGPSITE(DUZ(2),0),U,13)
 S DINUM=BGPRPT D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DINUM I Y=-1 S BGPERR="UNABLE TO CREATE REPORT FILE ENTRY!" S BGPQUIT=1 G REPORTX
 S BGPRPTP=+Y
 K DIC S X=BGPBD,DIC(0)="L",DIC="^BGPGPDBW(",DLAYGO=90548.05,DIADD=1,DIC("DR")=".02////"_BGPED_";.03////"_BGPPBD_";.04////"_BGPPED_";.05////"_BGPBBD_";.06////"_BGPBED_";.07////"_$G(BGPPER)_";.08////"_$G(BGPQTR)
 S DIC("DR")=DIC("DR")_";.09////"_$P(^AUTTLOC(DUZ(2),0),U,10)_";.11////"_$E($P(^AUTTLOC(DUZ(2),0),U,10),1,4)_";.12////"_BGPR12_";.13////"_DT_";.14////"_BGPBEN_";.15////"_$P($G(^AUTTLOC(DUZ(2),1)),U,3)_";.16///"_$P(^BGPSITE(DUZ(2),0),U,4)
 S DIC("DR")=DIC("DR")_";.17///"_$P(^BGPSITE(DUZ(2),0),U,6)_";.18///"_$S($G(BGPTAXI):$P(^ATXAX(BGPTAXI,0),U),1:"")_";.19///"_$P(^BGPSITE(DUZ(2),0),U,13)
 S DINUM=BGPRPT D ^DIC K DIC,DA,DR,DIADD,DLAYGO I Y=-1 S BGPERR="UNABLE TO CREATE REPORT FILE ENTRY!" S BGPQUIT=1 G REPORTX
 S BGPRPTB=+Y
 ;
 K ^BGPGPDCW(BGPRPT,9999)
 S C=0,X="" F  S X=$O(BGPTAX(X)) Q:X=""  S C=C+1 S ^BGPGPDCW(BGPRPT,9999,C,0)=X,^BGPGPDCW(BGPRPT,9999,"B",X,C)=""
 S ^BGPGPDCW(BGPRPT,9999,0)="^90548.12999A^"_C_"^"_C
 K ^BGPGPDCW(BGPRPT,1111)
 I $G(BGPMFITI) S C=0,X="" F  S X=$O(^ATXAX(BGPMFITI,21,"B",X)) Q:X=""  S C=C+1,Y=$P($G(^DIC(4,X,0)),U) S ^BGPGPDCW(BGPRPT,1111,C,0)=Y,^BGPGPDCW(BGPRPT,1111,"B",Y,C)=""
 S ^BGPGPDCW(BGPRPT,1111,0)="^90548.031111^"_C_"^"_C
 S ^BGPGPDCW(BGPRPT,99999,0)="^90548.129999A^0^0"
 S ^BGPGPDPW(BGPRPT,99999,0)="^90548.139999A^0^0"
 S ^BGPGPDBW(BGPRPT,99999,0)="^90548.149999A^0^0"
REPORTX ;
 I BGPERR]"" W !!,BGPERR
 I $G(BGPNPL) S BGPRTYPE=$S($G(BGPONMR):7,1:1)
 D ^XBFMK
 K DIC,DIADD,DLAYGO,DR,DA,DD,X,Y,DINUM
 L -^BGPGPDCW
 L -^BGPGPDPW
 L -^BGPGPDBW
 Q
GETIEN ;EP - Get next ien available in all 3 files
 S BGPF=90548.03 D ENT
 S BGPF=90548.04 D ENT
 S BGPF=90548.05 D ENT
 S BGPIEN=$P(^BGPGPDCW(0),U,3)+1
S I $D(^BGPGPDPW(BGPIEN))!($D(^BGPGPDBW(BGPIEN))) S BGPIEN=BGPIEN+1 G S
 Q
 ;
ENT ;
 NEW GBL,NXT,CTR,XBHI,XBX,XBY,ANS
 S GBL=^DIC(BGPF,0,"GL")
 S GBL=GBL_"NXT)"
 S (XBHI,NXT,CTR)=0
 F L=0:0 S NXT=$O(@(GBL)) Q:NXT'=+NXT  S XBHI=NXT,CTR=CTR+1 ;W:'(CTR#50) "."
 S NXT="",XBX=$O(@(GBL)),XBX=^(0),XBY=$P(XBX,U,4),XBX=$P(XBX,U,3)
 S NXT=0,$P(@(GBL),U,3)=XBHI,$P(^(0),U,4)=CTR
 ;
EOJ ;
 KILL ANS,XBHI,XBX,XBY,CTR,DIC,FILE,GBL,L,NXT,BGPF
 Q
 ;
LZERO(V,L) ;EP
 NEW %,I
 S %=$L(V),Z=L-% F I=1:1:Z S V="0"_V
 Q V
RZERO(V,L) ;EP
 NEW %,I
 S %=$L(V),Z=L-% F I=1:1:Z S V=V_"0"
 Q V
XTMP(N,D) ;EP
 Q:$G(N)=""
 S ^XTMP(N,0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^"_$G(D)
 Q
