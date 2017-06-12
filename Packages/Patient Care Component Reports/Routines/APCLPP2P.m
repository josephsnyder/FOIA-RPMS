APCLPP2P ; IHS/CMI/LAB - provider profile print ;
 ;;2.0;IHS PCC SUITE;**2,7,10,11**;MAY 14, 2009;Build 58
 ;
 ;cmi/anch/maw 9/10/2007 code set versioning in PV
 ;
START ;
 S APCLPG=0,APCLQUIT=""
 S APCLNITM=$S(APCLLSV="S":5,1:10)
 S APCLPRV=0 F  S APCLPRV=$O(APCLPROV(APCLPRV)) Q:APCLPRV'=+APCLPRV!(APCLQUIT)  D PRN
DONE ;
 D DONE^APCLOSUT
 K ^XTMP("APCLPP2",APCLJOB,APCLBTH)
 K APCLQUIT
 Q
PRN ;
 D HEAD Q:APCLQUIT
 W !,"1 - Designated Primary Care Provider Panel",!
 W !,"You are the Designated Primary Care Provider for ",$$C(APCLDPPT(APCLPRV),0)," patients.  In this"
 W !,"time period you have provided services (any type) to ",$$C(APCLDPPS(APCLPRV),0)," (",$$PER(APCLDPPS(APCLPRV),APCLDPPT(APCLPRV)),") patients"
 W !,"from your Designated Primary Care Provider Panel."
 W !!,"In this time period, you provided ambulatory services at least twice to ",$$C(APCLDP2V(APCLPRV),0)
 W !,"patients who have no Designated Primary Care Provider identified."
 W !!,"2 - Demographics and Workload for All Patients Served (Any Type of Service)"
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 W !!,"In this time period you have provided services (any type) to ",$$C(APCLDW1(APCLPRV),0)," patients.  "
 W !,$$C(APCLDW2(APCLPRV),0)," (",$$PER(APCLDW2(APCLPRV),APCLDW1(APCLPRV)),") are from your Designated Primary Provider Panel.  ",$$C(APCLDW3(APCLPRV),0)," (",$$PER(APCLDW3(APCLPRV),APCLDW1(APCLPRV)),") are"
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 W !,"not from your Designated Primary Care Provider Panel."
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 W !!,$$PER(APCLDW4(APCLPRV),APCLDW1(APCLPRV))," of your patients were Male, ",$$PER(APCLDW5(APCLPRV),APCLDW1(APCLPRV))," Female, and ",$$PER(APCLDW51(APCLPRV),APCLDW1(APCLPRV))," Unknown Gender."
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 W !!,$$PER(APCLDW6(APCLPRV),APCLDW1(APCLPRV))," were 18 and under; ",$$PER(APCLDW7(APCLPRV),APCLDW1(APCLPRV))," were 19-49; "
 W $$PER(APCLDW8(APCLPRV),APCLDW1(APCLPRV))," were 50-64; and ",$$PER(APCLDW9(APCLPRV),APCLDW1(APCLPRV))," were 65 and over."
 I $Y>(IOSL-3) D HEAD Q:APCLQUIT
COMM ;communities
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 K APCLDISP F X=1:1:APCLNITM S APCLDISP(X)=""
 W !!,"The leading residences for your ",?40,"The leading tribes represented",!,"patients are:",?40,"among your patients are:"
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","COMMC",APCLX)) Q:APCLX'=+APCLX!(APCLC>4)!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","COMMC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","COMMC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..S Z=$$PER(APCLA,APCLDW1(APCLPRV))
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U)=$E(APCLY,1,20)_U_APCLB_U_Z
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","TRIBEC",APCLX)) Q:APCLX'=+APCLX!(APCLC>4)!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","TRIBEC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","TRIBEC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..S Z=$$PER(APCLA,APCLDW1(APCLPRV))
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U,4)=$E(APCLY,1,22)_U_APCLB_U_Z
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?22,$$PAD($P(APCLDISP(APCLX),U,2),6),?29,$J($P(APCLDISP(APCLX),U,3),4,0),"%"
 .W ?41,$P(APCLDISP(APCLX),U,4) I $P(APCLDISP(APCLX),U,5)]"" W ?66,$$PAD($P(APCLDISP(APCLX),U,5),6),?73,$J($P(APCLDISP(APCLX),U,6),4,0),"%"
 Q:APCLQUIT
 W !!,"Of these services, ",$$C(APCLTCR(APCLPRV),0)," (",$$PER(APCLTCR(APCLPRV),APCLDW1(APCLPRV))
 W ") were chart reviews and ",$$C(APCLTTEL(APCLPRV),0)," (",$$PER(APCLTTEL(APCLPRV),APCLDW1(APCLPRV)),") were",!,"telecommunications services."
 I $Y>(IOSL-4) D HEAD Q:APCLQUIT
AMB ;
 W !!,"3 - Ambulatory Workload:  You had a total of ",$$C(APCLDW10(APCLPRV),0)," ambulatory visits during",!
 W "this time period.  You were the Primary Provider for ",$$C(APCLDW11(APCLPRV),0)," visits (",$$PER(APCLDW11(APCLPRV),APCLDW10(APCLPRV)),") and"
 W !,"Secondary Provider for ",$$C(APCLDW12(APCLPRV),0)," visits (",$$PER(APCLDW12(APCLPRV),APCLDW10(APCLPRV)),")."
LOCSC ;
 I $Y>(IOSL-8) D HEAD Q:APCLQUIT
 W !!,"Your services were provided at the",?40,"Your services included the following",!,"following locations:",?40,"Service Categories:"
 K APCLDISP F X=1:1:APCLNITM S APCLDISP(X)=""
 ;tally up top 4 locations and other.
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX)) Q:APCLX'=+APCLX!(APCLC>3)!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)!(APCLC>3)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX,APCLY)
 ..K ^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..S Z=$$PER(APCLA,APCLDW10(APCLPRV))
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U)=$E(APCLY,1,20)_U_APCLB_U_Z
 S APCLTOTH="",APCLX=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX)) Q:APCLX'=+APCLX  D
 .S APCLY=0 F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX,APCLY)) Q:APCLY=""!(APCLY>3)  S APCLTOTH(APCLPRV)=APCLTOTH(APCLPRV)+^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","LOCC",APCLX,APCLY)
 I APCLTOTH(APCLPRV) S APCLDISP(5)="OTHER"_U_$$C(APCLTOTH(APCLPRV),0)_U_$$PER(APCLTOTH(APCLPRV),APCLDW10(APCLPRV))
SC ;
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SCC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SCC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","SCC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..S Z=$$PER(APCLA,APCLDW10(APCLPRV))
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U,4)=$E(APCLY,1,22)_U_APCLB_U_Z
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-3) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?22,$$PAD($P(APCLDISP(APCLX),U,2),6),?29,$J($P(APCLDISP(APCLX),U,3),4,0),"%"
 .W ?41,$P(APCLDISP(APCLX),U,4) I $P(APCLDISP(APCLX),U,5)]"" W ?66,$$PAD($P(APCLDISP(APCLX),U,5),6),?73,$J($P(APCLDISP(APCLX),U,6),4,0),"%"
 Q:APCLQUIT
PV ;
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 K APCLDISP F X=1:1:APCLNITM S APCLDISP(X)=""
 W !!,"The ",APCLNITM," leading Purposes of Visit",?40,"The ",APCLNITM," leading Medications you"
 W !,"(including Primary and Secondary POV's)",?40,"prescribed or refilled as Primary"
 W !,"that you identified were:",?40,"Provider for the Visit were:"
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","OUTDXC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","OUTDXC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","OUTDXC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..;S Z=$P(^ICD9(APCLY,0),U),$E(Z,8)=$E($P(^ICD9(APCLY,0),U,3),1,19),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/10/2007 orig line
 ..S Z=$P($$ICDDX^ICDEX(APCLY),U,2),$E(Z,10)=$E($P($$ICDDX^ICDEX(APCLY),U,4),1,16),$P(APCLDISP(APCLC),U)=Z_U_APCLB  ;cmi/anch/maw 9/10/2007 csv
 S (APCLX,APCLC)=0 F  S APCLX=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","RXC",APCLX)) Q:APCLX'=+APCLX!(APCLC>(APCLNITM-1))!(APCLQUIT)  D
 .S APCLY="" F  S APCLY=$O(^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","RXC",APCLX,APCLY)) Q:APCLY=""!(APCLQUIT)  D
 ..S APCLC=APCLC+1 S APCLA=^XTMP("APCLPP2",APCLJOB,APCLBTH,"RP",APCLPRV,"REPORT","RXC",APCLX,APCLY)
 ..S APCLB=$$C(APCLA,0)
 ..I '$D(APCLDISP(APCLC)) S APCLDISP(APCLC)=""
 ..S $P(APCLDISP(APCLC),U,4)=$E(APCLY,1,30)_U_APCLB
 I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 S APCLX=0 F  S APCLX=$O(APCLDISP(APCLX)) Q:APCLX'=+APCLX!(APCLX>APCLNITM)!(APCLQUIT)  D
 .I $Y>(IOSL-APCLNITM) D HEAD Q:APCLQUIT
 .W !?1,$P(APCLDISP(APCLX),U) I $P(APCLDISP(APCLX),U,2)]"" W ?28,$$PAD($P(APCLDISP(APCLX),U,2),6)
 .W ?41,$P(APCLDISP(APCLX),U,4) I $P(APCLDISP(APCLX),U,5)]"" W ?72,$$PAD($P(APCLDISP(APCLX),U,5),6)
 Q:APCLQUIT
 D PROC^APCLPP2Q
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
 I $G(APCLSEAT) W $$CTR("Search Template of Patients Used: "_$P(^DIBT(APCLSEAT,0),U)),!
 I APCLEXCL W !,"** Please Note that certain diagnoses codes have been excluded",!,"from the list of purpose of visits.",!
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
LOC() ;EP - Return location name from file 4 based on APCLPRV.
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
