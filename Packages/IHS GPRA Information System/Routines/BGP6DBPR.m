BGP6DBPR ; IHS/CMI/LAB - IHS gpra print 03 Jul 2010 6:26 AM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
PRINT ;
 I $O(BGPDESGP(0)) D  Q  ;desg provider print
 .S BGPQUIT=""
 .S BGPXX2=0 F  S BGPXX2=$O(BGPDESGP(BGPXX2)) Q:BGPXX2'=+BGPXX2!(BGPQUIT)  D
 ..Q:$G(BGPAREAA)
 ..Q:BGPROT="D"  ;only delimited so don't bother with print
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
 ..D ^BGP6DH
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
 ..w !!
 ..D ^BGP6DH
 ..I BGPQHDR S BGPQUIT=1 D KITM Q
 ..S BGPGPG=0
 ..S BGPQUIT=""
 ..D PRINT1
 ..D SAVEDEL^BGP6PDL   ;D ^BGP6PDL ;create ^tmp of delimited report
 ..S BGPIFTR=1
 ..K ^XTMP("BGP6D",BGPJ,BGPH)
 ..K ^XTMP("BGP6DNP",BGPJ,BGPH)
 ..K ^XTMP("BGP28CPL",BGPJ,BGPH)
 ..K ^TMP($J)
 ..Q
PRINTN ;EP
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 S BGPQUIT=""
 S ^TMP($J,"BGPDEL",0)=0
 S BGPIFTR=""
 I BGPROT="D" G DEL
 S BGPPTYPE="P"
 S BGPQHDR=0
 D ^BGP6DH    ;LORI
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
 D ^BGP6DH
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 D SAVEDEL^BGP6PDL   ;D ^BGP6PDL ;create ^tmp of delimited report
 S BGPIFTR=1
 K ^XTMP("BGP6D",BGPJ,BGPH)
 K ^XTMP("BGP6DNP",BGPJ,BGPH)
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
 S T=$P(^BGPINDM(I,0),U,3)
 I BGPPTYPE="P",$L(T)<81 D W(T,0,1,BGPPTYPE),W("",0,1,BGPPTYPE) Q  ; W !,T,! Q
 I BGPPTYPE="D" D W(T,0,1,BGPPTYPE),W("",0,1,BGPPTYPE) Q
 F X=$E(T,1,80)
 S S=""
 F Y=80:-1:1 Q:S  S I=$E(X,Y) I I=" " S S=Y
 D W^BGP6DP($E(T,1,S),0,1,BGPPTYPE)  ;W !,$E(T,1,S)
 D W^BGP6DP($E(T,(S+1),$L(T)),0,1,BGPPTYPE),W("",0,1,BGPPTYPE)  ;W !,$E(T,(S+1),$L(T)),!
 Q
ANYDEV() ;
 NEW X,G,Y
 S G=0
 S X=0 F  S X=$O(BGPINDL(X)) Q:X'=+X  S Y=0 F  S Y=$O(BGPINDL(X,Y)) Q:Y'=+Y  I $P(^BGPNPLM(Y,0),U,7)=9 S G=1
 Q G
ALLDEV() ;
 NEW X,G,Y
 S G=1
 S X=0 F  S X=$O(BGPINDL(X)) Q:X'=+X  S Y=0 F  S Y=$O(BGPINDL(X,Y)) Q:Y'=+Y  I $P(^BGPNPLM(Y,0),U,7)=1 S G=0
 Q G
PRINT1 ;EP
 ;if in NGR or GPU now print gpra dev measures and divider page
 NEW BGPPC,BGPORD
 I BGPPTYPE="P" D HEADER^BGP6DPH
 D W^BGP6DP($S($G(BGPAREAA):"AREA AGGREGATE ",1:"")_"Dashboard Report - "_$P(^DIC(4,$S($G(BGPISITE):BGPISITE,1:DUZ(2)),0),U,1),1,2,BGPPTYPE)
 D W^BGP6DP(" ",0,1,BGPPTYPE)
 D COLHDR
 S BGPORD=0
 S Y=$O(^BGPCTRL("B",2016,0))
 S Y=$P(^BGPCTRL(Y,0),U,8)
 S BGPPERY=$$FMDIFF^XLFDT(DT,Y)
 S BGPPERY=BGPPERY/365,BGPPERY=BGPPERY*100,BGPPERY=BGPPERY+.5,BGPPERY=$J(BGPPERY,3,0),BGPPERY=$$STRIP^XLFSTR(BGPPERY," ")
 F  S BGPORD=$O(^BGPINDMC("ADASH",BGPORD)) Q:BGPORD'=+BGPORD!(BGPQUIT)  D
 .S BGPPC=0 F  S BGPPC=$O(^BGPINDMC("ADASH",BGPORD,BGPPC)) Q:BGPPC'=+BGPPC!(BGPQUIT)  D
 ..;GET VALUES FOR PREVIOUS YEAR, CURRENT YEAR, GET DENOM VALUE FOR 2017
 ..S BGPDF=$P(^BGPINDMC(BGPPC,0),U,8)
 ..;get denom value
 ..S BGPNP=$P(^DD(90556.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 ..S BGPCYD=$$V^BGP6DP1C(1,BGPRPT,N,P,1,1)
 ..S BGPPRD=$$V^BGP6DP1C(2,BGPRPT,N,P,1,1)
 ..;get numerator values
 ..S BGPNF=$P(^BGPINDMC(BGPPC,0),U,9)
 ..S BGPNP=$P(^DD(90556.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 ..D SETN
 ..;now figure out out # needed and on track status
 ..I '$P($G(^BGPINDMC(BGPPC,23)),U,3) D
 ...S BGPGOAL="",BGPGOAL=$P($G(^BGPINDMC(BGPPC,14)),U,8)
 ...I BGPGOAL'="Baseline" S BGPGOAL=+BGPGOAL
 ...S BGPNEG=$P($G(^BGPINDMC(BGPPC,23)),U,5)
 ...I BGPGOAL="Baseline" S BGPNEED="N/A",BGPOT="N/A" Q
 ...S BGPOT=""
 ...S BGPGG=BGPGOAL/100
 ...S BGPNEED1=BGPGG*BGPCYD S:'BGPNEG BGPNEED1=BGPNEED1+.99 S BGPNEED1=$P(BGPNEED1,".")
 ...S BGPCYPER=BGPCYP/100
 ...S BGPNEED2=BGPCYPER*BGPCYD S:'BGPNEG BGPNEED2=BGPNEED2+.99 S BGPNEED2=$P(BGPNEED2,".")  ;;;
 ...S BGPNEED=BGPNEED1-BGPNEED2
 ...I BGPNEG S BGPNEED=BGPNEED2-BGPNEED1
 ...;S BGPNEED=BGPNEED+.5,BGPNEED=$P(BGPNEED,".",1)
 ...I BGPGG S BGPCOLG=BGPCYPER/BGPGG,BGPCOLG=BGPCOLG*100 I 1
 ...E  S BGPCOLG=0.0
 ...I 'BGPNEG,BGPCOLG'<100 S BGPOT="ON TRACK" Q
 ...I BGPNEG,BGPCOLG'>100 S BGPOT="ON TRACK" Q
 ...I 'BGPNEG,BGPCOLG'<BGPPERY S BGPOT="WITHIN RANGE" Q
 ...I BGPNEG,BGPCOLG'>BGPPERY S BGPOT="WITHIN RANGE" Q
 ...S BGPOT="NOT ON TRACK"
 ..I $P($G(^BGPINDMC(BGPPC,23)),U,3) D
 ...S BGPGOAL="",BGPGOAL=$P($G(^BGPINDMC(BGPPC,14)),U,8)
 ...I BGPGOAL'="Baseline" S BGPGOAL=+BGPGOAL
 ...S BGPNEG=$P($G(^BGPINDMC(BGPPC,23)),U,5)
 ...I BGPGOAL="Baseline" S BGPNEED="N/A",BGPOT="N/A" Q
 ...S BGPOT=""
 ...S BGPGP=$P($G(^BGPINDMC(BGPPC,23)),U,4)
 ...S BGPGG=BGPGP/100
 ...;S BGPNGA=BGPGG*BGPPRN
 ...S BGPTN=BGPPRN*(1+BGPGG)
 ...S BGPTN=BGPTN+.9,BGPTN=$P(BGPTN,".")
 ...S BGPNEED=BGPTN-BGPCYN
 ...I BGPNEED<1 S BGPOT="ON TRACK" Q
 ...S G=BGPCYN/BGPTN
 ...I G'<BGPPERY S BGPOT="WITHIN RANGE" Q
 ...S BGPOT="NOT ON TRACK"
N ..;write out values for this measure
 ..I BGPPTYPE="P" I $Y>(IOSL-4) D HEADER^BGP6DPH Q:BGPQUIT  D COLHDR
 ..I $P($G(^BGPINDMC(BGPPC,23)),U,1) D W^BGP6DP(" ",0,1,BGPPTYPE)
 ..D W^BGP6DP($P($G(^BGPINDMC(BGPPC,23)),U,2),0,1,BGPPTYPE,1,0)
 ..I $P($G(^BGPINDMC(BGPPC,23)),U,6)]"" D W^BGP6DP($P($G(^BGPINDMC(BGPPC,23)),U,6),0,1,BGPPTYPE,1,0)
 ..I BGPPTYPE="D" D
 ...D W^BGP6DP($S('$P(^BGPINDMC(BGPPC,23),U,3):BGPGOAL,1:+BGPTN),0,0,BGPPTYPE,2,30)
 ...I '$P(^BGPINDMC(BGPPC,23),U,3) D
 ....D W^BGP6DP($S(BGPPTYPE="D":$$SB($J(BGPPRP,5,1)),1:$J(BGPPRP,5,1)),0,0,BGPPTYPE,3,39)
 ....D W^BGP6DP(BGPCYN,0,0,BGPPTYPE,4,47)
 ....D W^BGP6DP(BGPCYD,0,0,BGPPTYPE,5,55)
 ....D W^BGP6DP($S(BGPPTYPE="D":$$SB($J(BGPCYP,5,1)),1:$J(BGPCYP,5,1)),0,0,BGPPTYPE,6,47)
 ....D W^BGP6DP($S(BGPNEED="N/A":BGPNEED,BGPNEED>0:$S(BGPNEG:"-",1:"")_BGPNEED,1:0),0,0,BGPPTYPE,7,65)
 ...I $P(^BGPINDMC(BGPPC,23),U,3) D
 ....D W^BGP6DP($S(BGPPTYPE="D":BGPPRN,1:BGPPRN),0,0,BGPPTYPE,3,39)
 ....D W^BGP6DP($S(BGPPTYPE="D":BGPCYN,1:BGPCYN),0,0,BGPPTYPE,4,47)
 ....D W^BGP6DP(BGPCYN,0,0,BGPPTYPE,6,55)
 ....D W^BGP6DP($S(BGPNEED="N/A":BGPNEED,BGPNEED>0:$S(BGPNEG:"-",1:"")_BGPNEED,1:0),0,0,BGPPTYPE,7,65)
 ...;D W^BGP6DP(BGPOT,0,0,BGPPTYPE,8,75)
 ..I BGPPTYPE="P" D
 ...D W^BGP6DP($S('$P(^BGPINDMC(BGPPC,23),U,3):$J(BGPGOAL,8),1:$$LBLK(+BGPTN,7)),0,0,BGPPTYPE,2,28)
 ...I '$P(^BGPINDMC(BGPPC,23),U,3) D
 ....D W^BGP6DP($S(BGPPTYPE="D":$$SB($J(BGPPRP,5,1)),1:$J(BGPPRP,5,1)),0,0,BGPPTYPE,3,40)
 ....D W^BGP6DP($$C(BGPCYN,0,8),0,0,BGPPTYPE,4,50)
 ....D W^BGP6DP($$C(BGPCYD,0,8),0,0,BGPPTYPE,5,60)
 ....D W^BGP6DP($S(BGPPTYPE="D":$$SB($J(BGPCYP,5,1)),1:$J(BGPCYP,5,1)),0,0,BGPPTYPE,6,70)
 ....D W^BGP6DP("# Needed to Achieve Target: "_$S(BGPNEED="N/A":BGPNEED,BGPNEED>0:$S(BGPNEG:"-",1:"")_BGPNEED,1:0),0,1,BGPPTYPE,0,5)
 ...I $P(^BGPINDMC(BGPPC,23),U,3) D
 ....D W^BGP6DP($S(BGPPTYPE="D":BGPPRN,1:$$C(BGPPRN,0,8)),0,0,BGPPTYPE,3,40)
 ....D W^BGP6DP($S(BGPPTYPE="D":BGPCYN,1:$$C(BGPCYN,0,8)),0,0,BGPPTYPE,4,50)
 ....D W^BGP6DP(BGPCYN,0,0,BGPPTYPE,7,70)
 ....D W^BGP6DP("# Needed to Achieve Target: "_$S(BGPNEED="N/A":BGPNEED,BGPNEED>0:BGPNEED,1:0),0,1,BGPPTYPE,,5)
 ...;D W^BGP6DP(BGPOT,0,0,BGPPTYPE,0,40)
 ..D W^BGP6DP(" ",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP6DP("*Results reflect services provided as of the date this report was run or the ",0,1,BGPPTYPE) D W^BGP6DP("report period end date, whichever is earlier",0,1,BGPPTYPE)
 I BGPPTYPE="D" D W^BGP6DP("*Results reflect services provided as of the date this report was run or the report period end date, whichever is earlier",0,1,BGPPTYPE)
 D W^BGP6DP(" ",0,1,BGPPTYPE)
 Q
SETN ;EP - set numerator fields
 S BGPCYN=$$V^BGP6DP1C(1,BGPRPT,N,P,2)
 S BGPPRN=$$V^BGP6DP1C(2,BGPRPT,N,P,2)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"0.0")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"0.0")
 Q
COLHDR ;
 I BGPPTYPE="D" D  Q
 .I '$G(BGPAREAA) D W^BGP6DP("National 2016 Target",0,1,BGPPTYPE,2)
 .I $G(BGPAREAA) D W^BGP6DP("National 2016 Target",0,1,BGPPTYPE,2)
 .D W^BGP6DP($$FMTE^XLFDT(BGPDASHP)_" Final",0,0,BGPPTYPE,3)
 .D W^BGP6DP("Numerator",0,0,BGPPTYPE,4)
 .D W^BGP6DP("Denominator",0,0,BGPPTYPE,5)
 .D W^BGP6DP($$FMTE^XLFDT(BGPDASHY)_"*",0,0,BGPPTYPE,6)
 .D W^BGP6DP("# Needed to Achieve Target",0,0,BGPPTYPE,7)
 .;
 D W^BGP6DP("National"_$S('$G(BGPAREAA):"",1:""),0,1,BGPPTYPE,2,30)
 D W^BGP6DP(2016,0,1,BGPPTYPE,2,30)
 D W^BGP6DP($$FMTE^XLFDT(BGPDASHP),0,0,BGPPTYPE,3,40)
 D W^BGP6DP("Denom-",0,0,BGPPTYPE,,60)
 D W^BGP6DP($$FMTE^XLFDT(BGPDASHY)_"*",0,0,BGPPTYPE,,70)
 D W^BGP6DP("Target",0,1,BGPPTYPE,,30)
 D W^BGP6DP("Final",0,0,BGPPTYPE,,40)
 D W^BGP6DP("Numerator",0,0,BGPPTYPE,,50)
 D W^BGP6DP("inator",0,0,BGPPTYPE,,60)
 D W^BGP6DP("(Current)",0,0,BGPPTYPE,,70)
 D W^BGP6DP($TR($J("",80)," ","-"),0,1,BGPPTYPE)
 Q
WP ;
 K ^UTILITY($J,"W")
 S BGPZ=0,BGPLCNT=0
 S DIWL=1,DIWR=80,DIWF="",BGPZ=0 F  S BGPZ=$O(^BGPINDM(BGPIC,BGPNODE,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ  D
 .S BGPLCNT=BGPLCNT+1
 .S X=^BGPINDM(BGPIC,BGPNODE,BGPY,1,BGPZ,0) S:BGPLCNT=1 X=" - "_X D ^DIWP
 .Q
WPS ;
 S Z=0 F  S Z=$O(^UTILITY($J,"W",DIWL,Z)) Q:Z'=+Z  D
 .I BGPPTYPE="P",$Y>(BGPIOSL-3) D HEADER^BGP6DPH Q:BGPQUIT
 .D W^BGP6DP(^UTILITY($J,"W",DIWL,Z,0),0,1,BGPPTYPE)
 K DIWL,DIWR,DIWF,Z
 K ^UTILITY($J,"W"),X
 Q
PRINT2 ;
 Q
KITM ;
 K ^TMP($J)
 K ^XTMP("BGP6D",BGPJ,BGPH)
 K ^XTMP("BGP6DNP",BGPJ,BGPH)
 K ^XTMP("BGP28CPL",BGPJ,BGPH)
 Q
EXIT ;
 Q:BGPPTYPE'="P"
 I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
SB(X) ;EP - Strip leading and trailing blanks from X.
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
AREA ;EP - AREA DASHBOARD PRINT
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPGPG=0
 S BGPQUIT=""
 S BGPIFTR=""
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="P"
 I BGPROT="D" G DELA
 D AREACP^BGP6DH1
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1
 Q:BGPQUIT
 I $G(BGPAREAA) K BGPAREAA D INDSITE S BGPAREAA=1
 S BGPIFTR=1
 Q:BGPROT="P"
DELA ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0,BGPIFTR=""
 D ^%ZISC ;close printer device
 K ^TMP($J)
 ;D ^BGP6PDL ;create ^tmp of delimited report
 S ^TMP($J,"BGPDEL",0)=0
 S BGPPTYPE="D",BGPQUIT=0
 D AREACP^BGP6DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1
 I $G(BGPAREAA) K BGPAREAA D INDSITE S BGPAREAA=1
 D SAVEDEL^BGP6PDL   ;D ^BGP6PDL ;create ^tmp of delimited report
 S BGPIFTR=1
 K ^TMP($J)
 Q
INDSITE ;
 S BGPRPT=0 F  S BGPRPT=$O(BGPSUL(BGPRPT)) Q:BGPRPT'=+BGPRPT!(BGPQUIT)  D
 .S BGPISITE=$P(^BGPGPDCM(BGPRPT,0),U,9),BGPISITE=$O(^AUTTLOC("C",BGPISITE,0))
 .D PRINT1
 .Q
 Q
LBLK(V,L) ;left blank fill
 NEW %,I
 S %=$L(V),Z=L-% F I=1:1:Z S V=" "_V
 Q V
