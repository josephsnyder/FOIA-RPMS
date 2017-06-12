APCM14EP ; IHS/CMI/LAB - IHS MU ;
 ;;1.0;IHS MU PERFORMANCE REPORTS;**5,6**;MAR 26, 2012;Build 65
 ;
 ;
PRINT ;EP
 K ^TMP($J)
 S APCMIOSL=$S($G(APCMGUI):55,1:IOSL)
 S APCMQUIT=""
 S ^TMP($J,"APCMDEL",0)=0
 I APCMROT="D" G DEL
 S APCMPTYP="P"
 D ^APCM14EH
 S APCMGPG=0
 S APCMQUIT=""
 D SUM
 D W^APCM14EH(" ",0,2,APCMPTYP)
 D LIST^APCM14NP
 D W^APCM14EH(" ",0,2,APCMPTYP)
 K ^TMP($J)
 I APCMROT="P" K ^XTMP("APCM1D",APCMJ,APCMH) D EOP Q
 ;
DEL ;create delimited output file
 D ^%ZISC
 K ^TMP($J)
 S ^TMP($J,"APCMDEL",0)=0
 S APCMPTYP="D"
 D ^APCM14EH
 S APCMQUIT=""
 D SUM
 Q:APCMQUIT
 D LIST^APCM14NP
 Q:APCMQUIT
 D SAVEDEL^APCM14EQ
 K ^XTMP("APCM1D",APCMJ,APCMH)
 K ^TMP($J)
 D EOP
 Q
WP ;
 K ^UTILITY($J,"W")
 S APCMZ=0,APCMLCNT=0
 S DIWL=1,DIWR=APCMCOL,DIWF="",APCMZ=0 F  S APCMZ=$O(^APCM14OB(APCMIC,APCMNODE,APCMY,1,APCMZ)) Q:APCMZ'=+APCMZ  D
 .S APCMLCNT=APCMLCNT+1
 .S X=^APCM14OB(APCMIC,APCMNODE,APCMY,1,APCMZ,0) S:APCMLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I APCMPTYP="P",$Y>(APCMIOSL-3) D HEADER Q:APCMQUIT
 .D W^APCM14EH(^UTILITY($J,"W",DIWL,Z,0),0,1,APCMPTYP)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!(IOT'["TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR("A")="End of Report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;
 ;
 ;
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"APCMDEL",X)) Q:X'=+X  W !,^TMP($J,"APCMDEL",X)
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
SB(X) ;EP - Strip 
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
 ;
C(X,X2,X3) ;
 I X'?.N Q $$RBLK^APCLUTL(X,10)
 D COMMA^%DTC
 Q X
 ;
 ;
 ;
HEADER ;EP
 G:'APCMGPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCMQUIT=1 Q
 ;
HEADER1 ;
 I APCMPTYP="P" W:$D(IOF) @IOF S APCMGPG=APCMGPG+1
 I APCMPTYP="P" S X=$P(^VA(200,DUZ,0),U,2),$E(X,35)=$$FMTE^XLFDT(DT),$E(X,70)="Page "_APCMGPG D W^APCM14EH(X,0,1,APCMPTYP)
 I APCMRPTT=1 D W^APCM14EH("** IHS 2014/2015 Stage 1 Meaningful Use Performance Measure Report for EPs **",1,2,APCMPTYP)
 I APCMRPTT=2 D W^APCM14EH("** IHS 2014/2015 Stage 1 MU Performance Report for Eligible Hospitals/CAHs **",1,2,APCMPTYP)
 I $G(APCMPROV),APCMRPTT=1 S X="Provider Name: "_$$SN^APCM14EH($P(^VA(200,APCMPROV,0),U,1)) D W^APCM14EH(X,1,1,APCMPTYP)
 I $G(APCMPROV),APCMRPTT=2 S X="Facility Name: "_$P(^DIC(4,APCMPROV,0),U,1) D W^APCM14EH(X,1,1,APCMPTYP)
 I $G(APCMTOT) S X="Aggregate Report for all Selected Providers" D W^APCM14EH(X,1,1,APCMPTYP)
 I APCMRPTT=1 S X="Facility Name: "_$P(^DIC(4,DUZ(2),0),U,1) D W^APCM14EH(X,1,1,APCMPTYP)
 S X="Report Period:  "_$$FMTE^XLFDT(APCMBD)_" to "_$$FMTE^XLFDT(APCMED) D W^APCM14EH(X,1,1,APCMPTYP)
 S X=$$REPEAT^XLFSTR("-",80) D W^APCM14EH(X,0,1,APCMPTYP)
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
 ;----------
USR() ;EP - Return name .
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;
SETN ;EP - set numerator fields
 S APCMCYN=$$V(1,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT) ;SPDX
 S APCMPRN=$$V(2,APCMRPT,N,P,APCMPROV,$S($G(APCMTOT):"T",1:"I"),APCMRPTT) ;SPDX
 I APCMCYN="" S APCMCYN=0
 I APCMPRN="" S APCMPRN=0
 Q:$P(^APCM14OB(APCMIC,0),U,6)="A"  ;no % on attestation measures
 S APCMCYP=$S(APCMCYD:((APCMCYN/APCMCYD)*100),1:"")
 S APCMPRP=$S(APCMPRD:((APCMPRN/APCMPRD)*100),1:"")
 Q
 ;
V(T,R,N,P,PROV,K,RT) ;EP ;SPDX
 NEW X,Y,Z,I,J
 I RT=1 S I=PROV_";VA(200,"
 I RT=2 S I=PROV_";AUTTLOC("
 I K="T" S I="TOTAL"
 I T=1 D  Q X
 .S J=$O(^APCMM14C(R,$S(K="I":11,1:12),"B",I,0))
 .I 'J S X=0 Q
 .S X=$P($G(^APCMM14C(R,$S(K="I":11,1:12),J,N)),U,P)
 Q ""
SUM ;summary sheet for each provider
 D SUM^APCM14ER
 Q
