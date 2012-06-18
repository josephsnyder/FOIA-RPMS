APCLPP2Q ; IHS/CMI/LAB - provider profile print ;
 ;;2.0;IHS PCC SUITE;**7**;MAY 14, 2009
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in PV,PROC,EM
 ;
PROC ;EP
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 K APCLDISP F X=1:1:APCLNITM S APCLDISP(X)=""
 W !!,"The ",APCLNITM," leading Procedures that you",?40,"The ",APCLNITM," leading Education Topics that"
 W !,"performed as Primary Provider ",?40,"you taught were:"
 W !,"for the Visit were:"
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SURGPROCC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SURGPROCC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SURGPROCC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..;S Z=$P(^ICD0(APCLY,0),U),$E(Z,8)=$E($P(^ICD0(APCLY,0),U,4),1,19),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 orig line
 ..S Z=$P($$ICDOP^ICDCODE(APCLY),U,2),$E(Z,8)=$E($P($$ICDOP^ICDCODE(APCLY),U,5),1,19),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 csv
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","PATEDC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","PATEDC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","PATEDC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U,4)=$E(APCLY,1,32)_U_APCLB
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?28,$$PAD($P(APCLDISP(APCLX),U,2),6)
 .W ?41,$P(APCLDISP(APCLX),U,4) I $P(APCLDISP(APCLX),U,5)]"" W ?72,$$PAD($P(APCLDISP(APCLX),U,5),6)
 Q:APCLQUIT
EM ;
 I '$D(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EMC")) G PV
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 K APCLDISP F X=1:1:APCLNITM S APCLDISP(X)=""
 W !!,"The ",APCLNITM," Top Evaluation and Management CPT codes that you used as"
 W !,"Primary Provider were:"
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EMC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EMC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","EMC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..;S Z=$P(^ICPT(APCLY,0),U),$E(Z,8)=$E($P(^ICPT(APCLY,0),U,2),1,40),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 orig line
 ..S Z=$P($$CPT^ICPTCOD(APCLY),U,2),$E(Z,8)=$E($P($$CPT^ICPTCOD(APCLY),U,3),1,40),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 csv
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?50,$$PAD($P(APCLDISP(APCLX),U,2),6)
 Q:APCLQUIT
PV ;
 I APCLDW13(APCLPRV)=0 G INHOSP
 I $Y>(IOSL-5) D HEAD Q:APCLQUIT
 W !!,"4 - Inpatient Workload:  You were the Primary Provider for a total of ",$$C(APCLDW13(APCLPRV),0),!,"Hospitalizations during this time period."
 K APCLDISP F X=1:1:5 S APCLDISP(X)=""
 W !!,"The",APCLNITM,"leading Diagnoses (including",?40,"The",APCLNITM,"leading Procedures performed"
 W !,"Primary and Secondary DX's) that",?40,"for visits on which you were"
 W !,"that you identified were:",?40,"Provider for the Visit were:"
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTDXC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTDXC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTDXC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..;S Z=$P(^ICD9(APCLY,0),U),$E(Z,8)=$E($P(^ICD9(APCLY,0),U,3),1,19),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/10/2007 orig line
 ..S Z=$P($$ICDDX^ICDCODE(APCLY),U,2),$E(Z,8)=$E($P($$ICDDX^ICDCODE(APCLY),U,4),1,19),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/10/2007 csv
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTSURGPROCC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTSURGPROCC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","INPTSURGPROCC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..;S Z=$P(^ICD0(APCLY,0),U),$E(Z,8)=$E($P(^ICD0(APCLY,0),U,4),1,19),$P(APCLDISP(APCLC),U,4)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 orig line
 ..S Z=$P($$ICDOP^ICDCODE(APCLY),U,2),$E(Z,8)=$E($P($$ICDOP^ICDCODE(APCLY),U,5),1,19),$P(APCLDISP(APCLC),U,4)=Z_U_APCLB  ;cmi/anch/maw 9/12/2007 csv
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?28,$$PAD($P(APCLDISP(APCLX),U,2),6)
 .W ?41,$P(APCLDISP(APCLX),U,4) I $P(APCLDISP(APCLX),U,5)]"" W ?72,$$PAD($P(APCLDISP(APCLX),U,5),6)
INHOSP ;
 W !!,"You made ",$$C(APCLDW14(APCLPRV),0)," In-Hospital Visits to patients hospitalized at your",!,"Service Unit's Hospital and ",$$C(APCLDW15(APCLPRV),0)," In-Hospital Visits to other sites."
 Q
HEAD ;EP
 G:'APCLPG HEAD1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT=1 Q
HEAD1 ;
 I $D(IOF) W @IOF
 S APCLPG=APCLPG+1
 W !?58,$$FMTE^XLFDT(DT),?72,"Page ",APCLPG,!
 W $$CTR("Provider Practice Description For "_APCLPRVN(APCLPRV)_", "_APCLPRVD(APCLPRV),80),!
 W !?12,"For the Time Period:  ",$$FMTE^XLFDT(APCLBD)," - ",$$FMTE^XLFDT(APCLED),!
 Q
PER(N,D) ;return % of n/d
 I 'D Q "0%"
 NEW Z
 S Z=N/D,Z=Z*100,Z=$J(Z,3,0)
 Q $$STRIP^XLFSTR(Z," ")_"%"
C(X,X2,X3) ;
 D COMMA^%DTC
 Q $$STRIP^XLFSTR(X," ")
PAD(D,L) ; -- SUBRTN to pad length of data
 ; -- D=data L=length
 S L=L-$L(D)
 Q $E($$REPEAT^XLFSTR(" ",L),1,L)_D
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR("A")="End of Report.  Press return",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
