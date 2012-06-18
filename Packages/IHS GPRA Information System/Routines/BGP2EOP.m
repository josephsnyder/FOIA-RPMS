BGP2EOP ; IHS/CMI/LAB - IHS EO REPORT print 05 Jul 2010 9:20 AM ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
 ;
PRINT ;EP
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPQUIT=""
 S ^TMP($J,"BGPDEL",0)=0
 I $G(BGPAREAA) S BGPRPT=0
 D SETEXP
 I BGPROT="D" G DEL
 S BGPPTYPE="P"
 D ^BGP2EOH
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 K ^TMP($J)
 I BGPROT="P",'$G(BGPAREAA) K ^XTMP("BGP2D",BGPJ,BGPH) Q
 I BGPROT="P" Q
 ;
DEL ;create delimited output file
 D ^%ZISC ;close printer device
 K ^TMP($J)
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="D"
 D ^BGP2EOH
 S BGPQUIT=""
 D PRINT1
 I '$G(BGPAREAA) K ^XTMP("BGP2D",BGPJ,BGPH)
 K ^TMP($J)
 Q
WP ;
 K ^UTILITY($J,"W")
 S BGPZ=0,BGPLCNT=0
 S DIWL=1,DIWR=80,DIWF="",BGPZ=0 F  S BGPZ=$O(^BGPEOMB(BGPIC,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 .S BGPLCNT=BGPLCNT+1
 .S X=^BGPEOMB(BGPIC,BGPNODE,BGPY,1,BGPZ,0) S:BGPLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER Q:BGPQUIT
 .D W^BGP2EOH(^UTILITY($J,"W",DIWL,Z,0),0,1,BGPPTYPE)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
 ;
PRINT1 ;EP
 S BGPIC=0 F  S BGPIC=$O(BGPIND(BGPIC)) Q:BGPIC=""!(BGPQUIT)  D
 .I BGPPTYPE="P" D HEADER ;header for all measures
 .I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 .I BGPPTYPE="D" D W^BGP2EOH(" ",0,2,BGPPTYPE)
 .D W^BGP2EOH($P(^BGPEOMB(BGPIC,0),U,2),0,1,BGPPTYPE)
 .I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 .D W^BGP2EOH("Denominator(s):",0,2,BGPPTYPE)
 .S BGPNODE=61
 .S BGPX=0 F  S BGPX=$O(^BGPEOMB(BGPIC,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPEOMB(BGPIC,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...;S BGPZ=0 F  S BGPZ=$O(^BGPEOMB(BGPIC,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ...;.I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 ...;.D W^BGP2EOH(^BGPEOMB(BGPIC,61,BGPY,1,BGPZ,0),0,1,BGPPTYPE)
 ...D WP
 ...Q
 ..Q
 .I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 .D W^BGP2EOH("Numerator(s):",0,2,BGPPTYPE)
 .S BGPNODE=62
 .S BGPX=0 F  S BGPX=$O(^BGPEOMB(BGPIC,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPEOMB(BGPIC,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...D WP
 ...Q
 .I $O(^BGPEOMB(BGPIC,11,0)) D W^BGP2EOH("Logic:",0,2,BGPPTYPE) S BGPX=0 F  S BGPX=$O(^BGPEOMB(BGPIC,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I BGPPTYPE="P",$Y>(BGPIOSL-4) D HEADER Q:BGPQUIT
 ..D W^BGP2EOH(^BGPEOMB(BGPIC,11,BGPX,0),0,1,BGPPTYPE)
 .D W^BGP2EOH("",0,1,BGPPTYPE)
 .;I BGPPTYPE="D" D W^BGP2EOH(" ",0,2,BGPPTYPE)
 .X ^BGPEOMB(BGPIC,3)
 ;
 I BGPIC="" S BGPIFTR=1
 D ^BGP2EOY
 D ^BGP2EOS
 I BGPPTYPE="P" D EXIT Q
 I BGPDELT="S" D SCREEN K ^TMP($J) Q
 ;call xbgsave to create output file
 K ^TMP($J,"SUMMARYDEL")
 S XBGL="BGPDATA"
 L +^BGPDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^BGPDATA ;NOTE: kill of unsubscripted export global
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  S ^BGPDATA(X)=^TMP($J,"BGPDEL",X)
 I '$D(BGPGUI) D
 .S XBFLT=1,XBFN=BGPDELF_".txt",XBMED="F",XBTLE="CRS 2012 EXECUTIVE ORDER REPORT DELIMITED OUTPUT",XBQ="N",XBF=0
 .S XBUF=BGPUF D ^XBGSAVE
 .K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF
 I $D(BGPGUI) D
 .S (C,X)=0 F  S X=$O(^BGPDATA(X)) Q:X'=+X  S C=C+1,^BGPGUIW(BGPGIEN,12,C,0)=^BGPDATA(X)
 .S ^BGPGUIW(BGPGIEN,12,0)="^90546.1912^"_C_"^"_C_"^"_DT
 L -^BGPDATA
 K ^BGPDATA ;NOTE: kill of unsubscripted export global
 K ^TMP($J)
 Q
 ;
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"BGPDEL",X)) Q:X'=+X  W !,^TMP($J,"BGPDEL",X)
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
 ;
CALC(N,O) ;ENTRY POINT
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
 ;
SB(X) ;EP - Strip leading and trailing blanks from X.
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
 ;
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
 ;
H2 ;EP
 I BGPPTYPE="P" D
 .S BGPX="",BGPX=$$C(BGPCYN,0,8),$E(BGPX,9)=$J(BGPCYP,5,1),$E(BGPX,16)=$$C(BGPPRN,0,8),$E(BGPX,24)=$J(BGPPRP,5,1),$E(BGPX,32)=$J($$CALC(BGPCYP,BGPPRP),6),$E(BGPX,39)=$$C(BGPBLN,0,8),$E(BGPX,47)=$J(BGPBLP,5,1)
 .S $E(BGPX,55)=$J($$CALC(BGPCYP,BGPBLP),6)
 .D W^BGP2EOH(BGPX,0,0,BGPPTYPE,1,20)
 I BGPPTYPE="D" D
 .S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)=$$SB($J(BGPCYP,5,1)),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$$SB($J(BGPPRP,5,1)),$P(BGPX,U,5)=$$SB($J($$CALC(BGPCYP,BGPPRP),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$$SB($J(BGPBLP,5,1))
 .S $P(BGPX,U,8)=$$SB($J($$CALC(BGPCYP,BGPBLP),6))
 .D W^BGP2EOH(BGPX,0,0,BGPPTYPE,2)
 Q
 ;
H1 ;EP
 D W^BGP2EOH("REPORT",0,2,BGPPTYPE,2,21)
 D W^BGP2EOH("%",0,0,BGPPTYPE,3,31)
 D W^BGP2EOH("PREV YR",0,0,BGPPTYPE,4,35)
 D W^BGP2EOH("%",0,0,BGPPTYPE,5,46)
 D W^BGP2EOH("CHG from",0,0,BGPPTYPE,6,49)
 D W^BGP2EOH("BASE",0,0,BGPPTYPE,7,59)
 D W^BGP2EOH("%",0,0,BGPPTYPE,8,69)
 D W^BGP2EOH("CHG from",0,0,BGPPTYPE,9,72)
 D W^BGP2EOH("PERIOD",0,1,BGPPTYPE,2,21)
 D W^BGP2EOH("PERIOD",0,0,BGPPTYPE,4,35)
 D W^BGP2EOH("PREV YR %",0,0,BGPPTYPE,6,49)
 D W^BGP2EOH("PERIOD",0,0,BGPPTYPE,7,59)
 D W^BGP2EOH("BASE %",0,0,BGPPTYPE,9,72)
 Q
 ;
 ;
HEADER ;EP
 G:'BGPGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BGPQUIT=1 Q
 ;
HEADER1 ;
 I BGPPTYPE="P" W:$D(IOF) @IOF S BGPGPG=BGPGPG+1
 I $G(BGPGUI),BGPPTYPE="P" D W^BGP2EOH("ZZZZZZZ",0,0,BGPPTYPE),W^BGP2EOH("",0,1,BGPPTYPE)  ;GUI
 I BGPPTYPE="P" S X=$P(^VA(200,DUZ,0),U,2),$E(X,35)=$$FMTE^XLFDT(DT),$E(X,70)="Page "_BGPGPG D W^BGP2EOH(X,0,1,BGPPTYPE)
 D W^BGP2EOH("*** IHS 2012 Executive Order Quality Transparency Measures Report ***",1,2,BGPPTYPE)
 D W^BGP2EOH($$RPTVER^BGP2BAN,1,2,BGPPTYPE)
 I $G(BGPAREAA) S X="AREA AGGREGATE" D W^BGP2EOH(X,1,1,BGPPTYPE)
 I '$G(BGPAREAA) D W^BGP2EOH($P(^DIC(4,DUZ(2),0),U),1,1,BGPPTYPE)
 S X="Report Period:  "_$$FMTE^XLFDT(BGPBD)_" to "_$$FMTE^XLFDT(BGPED) D W^BGP2EOH(X,1,1,BGPPTYPE)
 S X="Previous Year Period:  "_$$FMTE^XLFDT(BGPPBD)_" to "_$$FMTE^XLFDT(BGPPED) D W^BGP2EOH(X,1,1,BGPPTYPE)
 S X="Baseline Period:  "_$$FMTE^XLFDT(BGPBBD)_" to "_$$FMTE^XLFDT(BGPBED) D W^BGP2EOH(X,1,1,BGPPTYPE)
 S X=$TR($J("",80)," ","-") D W^BGP2EOH(X,0,1,BGPPTYPE)
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
SETEXP ;EP
 I $G(BGPAREAA) D  Q
 .S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S N=^BGPEOCB(X,0)
 ..S (D,L)=""
 ..S L=$P(N,U,9) I L S L=$O(^AUTTLOC("C",L,0)) I L S D=$P($G(^AUTTLOC(L,1)),U,3),L=$S(L:$P(^DIC(4,L,0),U),1:"?????")
 ..S BGPEI(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP2UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI(X),U,P)=$$DATE^BGP2UTL($P(N,U,Y)),P=P+1
 ..Q
 .Q
 Q
