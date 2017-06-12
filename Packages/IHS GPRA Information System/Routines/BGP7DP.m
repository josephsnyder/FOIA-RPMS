BGP7DP ; IHS/CMI/LAB - IHS gpra print 03 Jul 2010 6:26 AM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
PRINT ;
 I $G(BGPDASH) D ^BGP7DBPR Q  ;dashboard
 I $O(BGPDESGP(0)) D  Q  ;desg provider print
 .S BGPQUIT="",BGPFDESG=0
 .S BGPXX2=0 F  S BGPXX2=$O(BGPDESGP(BGPXX2)) Q:BGPXX2'=+BGPXX2!(BGPQUIT)  D
 ..Q:$G(BGPAREAA)
 ..Q:BGPROT="D"  ;only delimited so don't bother with print
 ..S BGPFDESG=BGPFDESG+1
 ..S BGPRPT=$P(BGPDESGP(BGPXX2),U,1)
 ..S BGPDELF=$P(BGPDESGP(BGPXX2),U,2)
 ..S BGPDESGP=BGPXX2
 ..K ^TMP($J)
 ..K BGPDELIM
 ..S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 ..S ^TMP($J,"BGPDEL",0)=0
 ..S BGPQUIT=""
 ..S BGPPTYPE="P"
 ..S BGPQHDR=0
 ..I BGPFDESG'=1 W:$D(IOF) @IOF
 ..D ^BGP7DH
 ..I BGPQHDR S BGPQUIT=1 D KITM Q
 ..S BGPGPG=0
 ..S BGPQUIT=""
 ..D PRINT1
 ..K ^TMP($J)
 ..Q
 .;NOW DO DELIMITED IF NEEDED
 .I BGPROT="P" D KITM Q
 .S BGPQUIT=""
 .I '$D(BGPGUI) D ^%ZISC ;close printer device
 .S BGPXX2=0 F  S BGPXX2=$O(BGPDESGP(BGPXX2)) Q:BGPXX2'=+BGPXX2!(BGPQUIT)  D
 ..Q:$G(BGPAREAA)
 ..S BGPRPT=$P(BGPDESGP(BGPXX2),U,1)
 ..S BGPDELF=$P(BGPDESGP(BGPXX2),U,2)
 ..S BGPDESGP=BGPXX2
 ..K ^TMP($J)
 ..K BGPDELIM
 ..S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 ..S ^TMP($J,"BGPDEL",0)=0
 ..S BGPQUIT=""
 ..S BGPPTYPE="D"
 ..S BGPQHDR=0
 ..D ^BGP7DH
 ..I BGPQHDR S BGPQUIT=1 D KITM Q
 ..S BGPGPG=0
 ..S BGPQUIT=""
 ..D PRINT1
 ..D SAVEDEL^BGP7PDL   ;D ^BGP7PDL ;create ^tmp of delimited report
 ..S BGPIFTR=1
 ..K ^XTMP("BGP7D",BGPJ,BGPH)
 ..K ^XTMP("BGP7DNP",BGPJ,BGPH)
 ..K ^XTMP("BGP28CPL",BGPJ,BGPH)
 ..K ^TMP($J)
 ..Q
 .Q
PRINTN ;
 I $G(BGPDASH) D PRINTN^BGP7DBPR Q  ;dashboard
 K ^TMP($J)
 K BGPDELIM
 S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 S BGPQUIT=""
 S ^TMP($J,"BGPDEL",0)=0
 I $G(BGPAREAA) D SETEXCEL
 S BGPIFTR=""
 I BGPROT="D" G DEL
 S BGPPTYPE="P"
 S BGPQHDR=0
 D ^BGP7DH    ;LORI
 I BGPQHDR D KITM Q
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 K ^TMP($J)
 I BGPROT="P" D KITM Q
 ;
DEL ;create delimited output file
 I '$D(BGPGUI) D ^%ZISC ;close printer device
 K ^TMP($J)
 S ^TMP($J,"BGPDEL",0)=0
 S BGPQHDR=0
 S BGPPTYPE="D"
 D ^BGP7DH
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 D SAVEDEL^BGP7PDL   ;D ^BGP7PDL ;create ^tmp of delimited report
 S BGPIFTR=1
 K ^XTMP("BGP7D",BGPJ,BGPH)
 K ^XTMP("BGP7DNP",BGPJ,BGPH)
 K ^XTMP("BGP28CPL",BGPJ,BGPH)
 K ^TMP($J)
 Q
W(V,C,F,M,P,T) ;EP
 I $G(F)="" S F=1
 I $G(C)="" S C=0
 I $G(P)="" S P=1
 I $G(T)="" S T=0
 I M="P" D  Q
 .;I $Y>(BGPIOSL-2) D EOP W:$D(IOF) @IOF
 .NEW X
 .F X=1:1:F W !
 .I C W $$CJ^XLFSTR(V,80)
 .I 'C W ?T,V
 ;set up array
 I '$G(F) S F=0
 NEW %,Z
 S Z=""
 S %=$P(^TMP($J,"BGPDEL",0),U)
 F Z=1:1:F S %=%+1 S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=V
 Q
 ;
WTITLE(I) ;EP - write title line
 NEW T,X,Y,S
 S T=$P(^BGPINDG(I,0),U,3)
 I BGPPTYPE="P",$L(T)<81 D W(T,0,1,BGPPTYPE),W("",0,1,BGPPTYPE) Q  ; W !,T,! Q
 I BGPPTYPE="D" D W(T,0,1,BGPPTYPE),W("",0,1,BGPPTYPE) Q
 F X=$E(T,1,80)
 S S=""
 F Y=80:-1:1 Q:S  S I=$E(X,Y) I I=" " S S=Y
 D W^BGP7DP($E(T,1,S),0,1,BGPPTYPE)  ;W !,$E(T,1,S)
 D W^BGP7DP($E(T,(S+1),$L(T)),0,1,BGPPTYPE),W("",0,1,BGPPTYPE)  ;W !,$E(T,(S+1),$L(T)),!
 Q
ANYDEV() ;
 NEW X,G,Y
 S G=0
 S X=0 F  S X=$O(BGPINDL(X)) Q:X'=+X  S Y=0 F  S Y=$O(BGPINDL(X,Y)) Q:Y'=+Y  I $P(^BGPNPLG(Y,0),U,7)=9 S G=1
 Q G
ALLDEV() ;
 NEW X,G,Y
 S G=1
 S X=0 F  S X=$O(BGPINDL(X)) Q:X'=+X  S Y=0 F  S Y=$O(BGPINDL(X,Y)) Q:Y'=+Y  I $P(^BGPNPLG(Y,0),U,7)=1 S G=0
 Q G
PRINT1 ;EP
 ;if in NGR or GPU now print gpra dev measures and divider page
 I BGPRTYPE=1 D
 .I $G(BGPNPL),'$$ANYDEV() Q  ;in lists and no developmental lists so skip this
 .I '$G(BGPSUMON) D HEADER^BGP7DPH
 .I '$G(BGPSUMON) D W^BGP7DP("The following section contains GPRA Developmental topics and measures",0,2,BGPPTYPE)
 .I '$G(BGPSUMON) D W^BGP7DP("followed by the GPRA Developmental Measures Clinical Performance Summary.",0,1,BGPPTYPE)
 .I '$G(BGPSUMON) D W^BGP7DP("",0,1,BGPPTYPE)
 .S BGPGDEV=1,BGPRTYPE=9  ;control variable
 .S BGPDEVOR=0 F  S BGPDEVOR=$O(^BGPINDG("ADEVO",BGPDEVOR)) Q:BGPDEVOR'=+BGPDEVOR!(BGPQUIT)  D
 ..S BGPIC=$O(^BGPINDG("ADEVO",BGPDEVOR,0)) Q:BGPIC=""
 ..I $P(^BGPINDG(BGPIC,0),U,14),$D(BGPIND(BGPIC)) D PRINT2
 ..Q:BGPQUIT
 ..I $G(BGPNPL),$D(BGPINDL(BGPIC)),'$D(BGPYNPLT) S BGPINDG=BGPIC D NPL1^BGP7NPLP ;printed nat gpra list
 ..I $G(BGPNPL),$D(BGPINDL(BGPIC)),$D(BGPYNPLT) S BGPINDG=BGPIC D CT^BGP7DSTM ;printed nat gpra SEARCH TEMPLATE
 .S BGPRTYPE=1 K BGPGDEV
 .Q:BGPQUIT
 .;NOW PRINT developmental summary sheet
 .D ^BGP7DSPD  ;DEVELOPMENTAL
 .D ^BGP7SDPD  ;SUMMARY DETAIL
 .;now print gpra divider page
 .;if no lists except developmental skip this
 .I $G(BGPNPL),$$ALLDEV() Q
 .I '$G(BGPSUMON) D HEADER^BGP7DPH
 .I '$G(BGPSUMON) D W^BGP7DP("The following section contains GPRA/GPRAMA and Non-GPRA Selected Topics",0,3,BGPPTYPE)
 .I '$G(BGPSUMON) D W^BGP7DP("and measures followed by the Clinical Performance Summaries for Non-GPRA",0,1,BGPPTYPE)
 .I '$G(BGPSUMON) D W^BGP7DP("Measures and GPRA/GPRAMA Measures.",0,1,BGPPTYPE)
 .I '$G(BGPSUMON) D W^BGP7DP("",0,1,BGPPTYPE)
 ;set back to report 1
 I BGPRTYPE=1,$G(BGPNPL),$$ALLDEV() Q
 S BGPORDSE=0 F  S BGPORDSE=$O(^BGPINDG("AOI",BGPORDSE)) Q:BGPORDSE'=+BGPORDSE!(BGPQUIT)  S BGPIC=$O(^BGPINDG("AOI",BGPORDSE,0)) I $D(BGPIND(BGPIC)) D
 .Q:BGPQUIT
 .I BGPRTYPE=1 Q:$P($G(^BGPINDG(BGPIC,13)),U,3)  ;dev only, not nat gpra report
 .I BGPRTYPE=4 Q:$P($G(^BGPINDG(BGPIC,13)),U,4)  ;not on selected measures report
 .D PRINT2
 .I $G(BGPNPL),$D(BGPINDL(BGPIC)),'$D(BGPYNPLT) S BGPINDG=BGPIC D NPL1^BGP7NPLP ;printed nat gpra list
 .I $G(BGPNPL),$D(BGPINDL(BGPIC)),$D(BGPYNPLT) S BGPINDG=BGPIC D CT^BGP7DSTM ;printed nat gpra SEARCH TEMPLATE
 Q:BGPQUIT
PRINT3 ;
 D SUMP
 Q
WP ;
 K ^UTILITY($J,"W")
 S BGPZ=0,BGPLCNT=0
 S DIWL=1,DIWR=80,DIWF="",BGPZ=0 F  S BGPZ=$O(^BGPINDG(BGPIC,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 .S BGPLCNT=BGPLCNT+1
 .S X=^BGPINDG(BGPIC,BGPNODE,BGPY,1,BGPZ,0) S:BGPLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D W^BGP7DP(^UTILITY($J,"W",DIWL,Z,0),0,1,BGPPTYPE)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
PRINT2 ;
 D
 .I $G(BGPSUMON) G CALC
 .D HEADER^BGP7DPH ;header for all measures
 .I $G(BGPDNT) G CALC
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D WTITLE(BGPIC)
 .;W !,$P(^BGPINDG(BGPIC,0),U,3),!
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D W^BGP7DP("Denominator(s):",0,1,BGPPTYPE)
 .S BGPNODE=$S(BGPRTYPE=1:81,BGPRTYPE=4:61,BGPRTYPE=7:83,BGPRTYPE=9:85,1:61)
 .I BGPRTYPE=4 S BGPNODE=$S(BGPINDG="D":87,BGPINDG="C":89,BGPINDG="W":92,BGPINDG="I":94,BGPINDG="P":96,1:BGPNODE)
 .S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDG(BGPIC,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...;I BGPRTYPE=4,'$D(^BGPINDG(BGPIC,BGPNODE,BGPY,12,"B",BGPINDG)) Q  ;not this measure type on selected
 ...D WP
 ...Q
 ..Q
 .Q:BGPQUIT
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 .D W^BGP7DP("Numerator(s):",0,2,BGPPTYPE)
 .S BGPNODE=$S(BGPRTYPE=1:82,BGPRTYPE=4:62,BGPRTYPE=7:84,BGPRTYPE=9:86,1:62)
 .I BGPRTYPE=4 S BGPNODE=$S(BGPINDG="D":88,BGPINDG="C":91,BGPINDG="W":93,BGPINDG="I":95,BGPINDG="P":97,1:BGPNODE)
 .S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,BGPNODE,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDG(BGPIC,BGPNODE,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...;I BGPRTYPE=4,'$D(^BGPINDG(BGPIC,BGPNODE,BGPY,12,"B",BGPINDG)) Q  ;not this measure type on selected
 ...D WP
 ...Q
 ..Q
 .Q:BGPQUIT
 .S BGPNODE=11
 .I BGPRTYPE=1,$O(^BGPINDG(BGPIC,54,0)) S BGPNODE=54
 .I BGPRTYPE=7,$O(^BGPINDG(BGPIC,56,0)) S BGPNODE=56
 .I BGPRTYPE=9,$O(^BGPINDG(BGPIC,58,0)) S BGPNODE=58
 .D W^BGP7DP("Logic:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,BGPNODE,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPIC,BGPNODE,BGPX,0),0,1,BGPPTYPE)
 .I BGPRTYPE=9 G CALC
 .D W^BGP7DP("Performance Measure Description:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,$S($G(BGPNGR09):57,1:51),BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPIC,$S($G(BGPNGR09):57,1:51),BGPX,0),0,1,BGPPTYPE)
 .I $O(^BGPINDG(BGPIC,52,0)) D W^BGP7DP("Past Performance and/or Target:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPIC,52,BGPX,0),0,1,BGPPTYPE)
 .I $O(^BGPINDG(BGPIC,55,0)) D W^BGP7DP("Source:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPIC,55,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP7DPH Q:BGPQUIT
 ..D W^BGP7DP(^BGPINDG(BGPIC,55,BGPX,0),0,1,BGPPTYPE)
 .I '$O(^BGPINDG(BGPIC,55,0)) D W^BGP7DP("",0,1,BGPPTYPE)
CALC .I '$G(BGPSUMON) D W^BGP7DP($P(^BGPINDG(BGPIC,0),U,3),0,2,BGPPTYPE),W^BGP7DP(" ",0,1,BGPPTYPE)
 .S BGPFONE=1 I BGPPTYPE="P" X ^BGPINDG(BGPIC,3) D W^BGP7DP("",0,1,BGPPTYPE) S BGPFONE=0
 .S BGPFONE=1 I BGPPTYPE="D" X ^BGPINDG(BGPIC,4) D W^BGP7DP("",0,1,BGPPTYPE) S BGPFONE=0
 .;I $G(BGPNPL),$D(BGPINDL(BGPIC)),'$D(BGPYNPLT) S BGPINDG=BGPIC D NPL1^BGP7NPLP ;printed nat gpra list
 .;I $G(BGPNPL),$D(BGPINDL(BGPIC)),$D(BGPYNPLT) S BGPINDG=BGPIC D CT^BGP7DSTM ;printed nat gpra SEARCH TEMPLATE
 Q
SUMP ;
 I BGPIC="" S BGPIFTR=1
 I BGPRTYPE=1 D ^BGP7DSPN  ;NON GPRA
 I BGPRTYPE=1 D ^BGP7DSP   ;GPRA
 I BGPRTYPE=1 D ^BGP7SDPN
 I BGPRTYPE=1 D ^BGP7SDP
 I BGPRTYPE=7 D ^BGP7DSPO
 I BGPRTYPE=7 D ^BGP7SDPO
 D ^BGP7DS
 I $G(BGPCPPL) D CPPL1^BGP7DCLP  ;print comp pt list
 D EXIT
 Q
KITM ;
 K ^TMP($J)
 K ^XTMP("BGP7D",BGPJ,BGPH)
 K ^XTMP("BGP7DNP",BGPJ,BGPH)
 K ^XTMP("BGP28CPL",BGPJ,BGPH)
 Q
SETEXCEL ;EP
 I $G(BGPAREAA) D  Q
 .S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S N=^BGPGPDCG(X,0)
 ..S (D,L)=""
 ..S L=$P(N,U,9) I L S L=$O(^AUTTLOC("C",L,0)) I L S D=$P($G(^AUTTLOC(L,1)),U,3),L=$S(L:$P(^DIC(4,L,0),U),1:"?????")
 ..S BGPEI(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEI2(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI2(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEI3(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI3(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEI4(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI4(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEIDV1(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEIDV1(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEIDV2(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEIDV2(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEIDV3(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEIDV3(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPEIDV4(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEIDV4(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPONN1(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPONN1(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPONN2(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPONN2(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPONN3(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPONN3(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..S BGPONN4(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPONN4(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..;S BGPONN5(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP7UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPONN5(X),U,P)=$$DATE^BGP7UTL($P(N,U,Y)),P=P+1
 ..Q
 .Q
 Q
EXIT ;
 Q:BGPPTYPE'="P"
 I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
