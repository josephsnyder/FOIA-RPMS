PSOSULOG ;BHAM ISC/RTR-Log of prescriptions on suspense by day ;30-Apr-2009 09:40;PLS
 ;;7.0;OUTPATIENT PHARMACY;**18,1008**;DEC 1997
 ;Modified - IHS/MSC/PLS - 04/30/2009 - Changed references of SSN to HRN
 I '$G(PSOSITE) D ^PSOLSET I '$G(PSOSITE) D WARN^PSOSUDCN Q
 K ^TMP($J,"PSOSPLOG") N BDATE,EDATE,GG,HDAT,HPAT,PII,LINE,NODE,PAGE,PAT,PATNAME,PATPTR,PDAT,PP,PSOSCMOP,PSOCNT,PSODATE,PSODATEX,PSOINRX,PSORT,PSPRINT,PSUSDIV,QFLAG,SIN,SINRX,X,Y,ZZ
LOG ;IHS/MSC/PLS - 04/30/2009
 ;W ! K DIR S DIR("A")="Sort by Patient Name or SSN",DIR(0)="SB^P:PATIENT NAME;S:SOCIAL SECURITY NUMBER",DIR("B")="PATIENT NAME"
 W ! K DIR S DIR("A")="Sort by Patient Name or HRN",DIR(0)="SB^P:PATIENT NAME;H:HEALTH RECORD NUMBER",DIR("B")="PATIENT NAME"
 ;S DIR("?")="Enter 'P' to sort by patient name, 'S' to sort by SSN, enter '^' to exit."
 S DIR("?")="Enter 'P' to sort by patient name, 'H' to sort by HRN, enter '^' to exit."
 D ^DIR K DIR D:$D(DIRUT) MESS G:$D(DIRUT) EXIT S PSORT=Y
DATE W ! K %DT S %DT="AEX",%DT("A")="Start Date: " D ^%DT K %DT G:Y=-1&(X'["^") DATE I X["^"!($D(DTOUT)) D MESS G EXIT
EDATE W ! S BDATE=$E(Y,1,7) S %DT(0)=BDATE,%DT="AEX",%DT("A")="End Date: " D ^%DT K %DT G:Y=-1&(X'["^") EDATE I X["^"!($D(DTOUT)) D MESS G EXIT
 S EDATE=$E(Y,1,7) W !
 W ! K DIR S DIR(0)="Y",DIR("B")="Y",DIR("A")="Do you want to see only those Rx's that have NOT yet been printed" D ^DIR K DIR D:$D(DIRUT) MESS G:Y["^"!($D(DIRUT)) EXIT S PSPRINT=$S(Y:1,1:0)
 S PSOCNT=0 F PII=0:0 S PII=$O(^PS(59,PII)) Q:'PII  S PSOCNT=PSOCNT+1
 I PSOCNT=1 G SKIP
 W !!?3,"You are logged in under the "_$P($G(^PS(59,+$G(PSOSITE),0)),"^")_" division.",!
 K DIR S DIR(0)="Y",DIR("B")="Yes",DIR("A")="Print only those Rx's suspended for this division",DIR("?")="Enter 'Yes' to print only those Rx's for this division, enter 'No' to print Rx's suspended for all divisions."
 D ^DIR K DIR I Y["^"!($D(DIRUT)) D MESS G EXIT
 S PSUSDIV=Y
SKIP ;
 I '$G(PSXSYS) G SKIPC
 K DIR W ! S DIR(0)="Y",DIR("B")="N",DIR("A")="Do you want suspended CMOP Rx's included in this report" D ^DIR K DIR I Y["^"!($D(DIRUT)) D MESS G EXIT
 I $G(Y) S PSOSCMOP=1
SKIPC ;
 W ! K DIR S DIR("A")="Do you want this report to print in 80 or 132 column format: ",DIR("B")="132",DIR(0)="SAM^1:132;8:80" D ^DIR K DIR I Y["^"!($D(DIRUT)) D MESS G EXIT
 W ! S PSORMZ=$S(Y=1:1,1:0)
 K IOP,%ZIS,POP S %ZIS="QM" D ^%ZIS I POP D MESS G EXIT
 I $D(IO("Q")) S ZTRTN="REP^PSOSULOG",ZTDESC="Report is suspended Rx's" D  G EXIT
 .F GG="PSORMZ","PSOSITE","PSOPAR","PSORT","BDATE","EDATE","PSPRINT","PSUSDIV","PSOSCMOP" S:$D(@GG) ZTSAVE(GG)=""
 .D ^%ZTLOAD W !,"Task queued to print"
 G REP
EXIT K ^TMP($J,"PSOSPLOG") S:$D(ZTQUEUED) ZTREQ="@"
 K BDATE,EDATE,GG,HDAT,HPAT,PII,LINE,NODE,PAGE,PAT,PATNAME,PATPTR,PDAT,PP,PSOSCMOP,PSOCNT,PSODATE,PSODATEX,PSOINRX,PSORMZ,PSORT,PSPRINT,PSUSDIV,QFLAG,SIN,SINRX,X,Y,ZZ
 Q
MESS W !!,"No report printed!",!! Q
REP ;
 K ^TMP($J,"PSOSPLOG")
 U IO S $P(LINE,"-",$S($G(PSORMZ):130,1:79))=""
 N PHRN,SUSDIV,DIVINS  ;IHS/MSC/PLS - 04/30/09
 S BDATE=BDATE-.0001,QFLAG=0,PAGE=1
 F ZZ=BDATE:0 S ZZ=$O(^PS(52.5,"C",ZZ)) Q:'ZZ!(ZZ>EDATE)  F SIN=0:0 S SIN=$O(^PS(52.5,"C",ZZ,SIN)) Q:'SIN  D
 .Q:'$P($G(^PS(52.5,SIN,0)),"^",3)
 .I $G(PSPRINT),$G(^PS(52.5,SIN,"P")) Q
 .I '$G(PSOSCMOP),$P($G(^PS(52.5,SIN,0)),"^",7)'="" Q
 .I $G(PSUSDIV),$G(PSOSITE)'=$P($G(^PS(52.5,SIN,0)),"^",6) Q
 .S PAT=+$P($G(^PS(52.5,SIN,0)),"^",3) I $P($G(^DPT(PAT,0)),"^")="" Q
 .;IHS/MSC/PLS - 04/30/09
 .;I $P($G(^DPT(PAT,0)),"^",9)="",PSORT="S" Q
 .S SUSDIV=$P($G(^PS(52.5,SIN,0)),U,6),DIVINS=+$$GET1^DIQ(59,SUSDIV,100,"I")
 .S PHRN=$$HRN^AUPNPAT(PAT,DIVINS)
 .I PSORT="H",PHRN<1 Q
 .;S ^TMP($J,"PSOSPLOG",ZZ,$S(PSORT="P":$P(^DPT(PAT,0),"^"),1:$P(^DPT(PAT,0),"^",9)),SIN)=SIN
 .S ^TMP($J,"PSOSPLOG",ZZ,$S(PSORT="P":$P(^DPT(PAT,0),"^"),1:PHRN),SIN)=SIN
 I $G(PSORMZ) G BIG
 I '$D(^TMP($J,"PSOSPLOG")) D HEAD W !!,"NO RECORDS TO PRINT",! D:$E(IOST)="C"  D ^%ZISC G EXIT
 .K DIR S DIR(0)="E" D ^DIR K DIR
 S HPAT="",HDAT=""
 F PSODATE=0:0 S PSODATE=$O(^TMP($J,"PSOSPLOG",PSODATE)) Q:'PSODATE!($G(QFLAG))  S (Y,PDAT)=PSODATE D DD^%DT S PSODATEX=Y D HEAD S PAT="" F  S PAT=$O(^TMP($J,"PSOSPLOG",PSODATE,PAT)) Q:PAT=""!($G(QFLAG))  D
 .F SINRX=0:0 S SINRX=$O(^TMP($J,"PSOSPLOG",PSODATE,PAT,SINRX)) Q:'SINRX!($G(QFLAG))  D
 ..S NODE=$G(^PS(52.5,SINRX,0)),PATPTR=+$P(NODE,"^",3)
 ..I 'PATPTR Q
 ..S PATNAME=$P($G(^DPT(PATPTR,0)),"^") Q:PATNAME=""
 ..I $G(PSPRINT),$G(^PS(52.5,SINRX,"P")) Q
 ..I $G(PSUSDIV),$G(PSOSITE)'=$P(NODE,"^",6) Q
 ..I PAT'=HPAT!(HDAT'=PDAT) W !!?9,"Patient Name: "_$G(PATNAME) S HPAT=PAT,PDAT=HDAT
 ..D:($Y+4)>IOSL HEAD Q:$G(QFLAG)
 ..S PSOINRX=+$P($G(NODE),"^")
 ..W !,$P($G(^PSRX(+$G(NODE),0)),"^")
 ..W ?13,$P($G(^PSDRUG(+$P($G(^PSRX(PSOINRX,0)),"^",6),0)),"^")
 ..K PSOMW D
 ...I $P(NODE,"^",5) S PSOMW=$P($G(^PSRX(+$G(NODE),"P",$P(NODE,"^",5),0)),"^",2) Q
 ...I $P(NODE,"^",13)!($O(^PSRX(+$G(NODE),1,0))) D  Q
 ....I $P(NODE,"^",13) S PSOMW=$P($G(^PSRX(+$G(NODE),1,$P(NODE,"^",13),0)),"^",2) Q
 ....F PP=0:0 S PP=$O(^PSRX(+$G(NODE),1,PP)) Q:'PP  S PSOMW=$P($G(^PSRX(+$G(NODE),1,PP,0)),"^",2)
 ...S PSOMW=$P($G(^PSRX(+$G(NODE),0)),"^",11)
 ..W ?54,$G(PSOMW)
 ..W ?57,$S($G(^PS(52.5,SINRX,"P")):"YES",1:"NO")
 ..I $G(PSOSCMOP),$P(NODE,"^",7)'="" D
 ...W ?64,$S($P(NODE,"^",7)="Q":"QUEUED/TRANS",$P(NODE,"^",7)="X":"TRANS/COMPLETE",$P(NODE,"^",7)="L":"LOADING/TRANS",$P(NODE,"^",7)="P":"PRINTED/LOCAL",1:"")
 I $E(IOST)'="P",'$G(QFLAG) W ! K DIR S DIR(0)="E" D ^DIR K DIR
 D ^%ZISC G EXIT
HEAD ;
 I $E(IOST)'="P",PAGE K DIR S DIR(0)="E",DIR("A")="Press Return to continue, '^' to exit" D ^DIR K DIR I 'Y S QFLAG=1 Q
 W @IOF W !?22,"RX SUSPENSE LIST "_$S($G(PSODATEX)'="":"FOR ",1:"")_$G(PSODATEX) W ?68,"PAGE: ",$G(PAGE) W !,"RX #",?13,"DRUG",?53,"MW",?56,"PRINTED",?66,$S($G(PSOSCMOP):"CMOP STATUS",1:"") W !,LINE S PAGE=PAGE+1
 Q
BIG ;
 I '$D(^TMP($J,"PSOSPLOG")) D HEADB W !!,"NO RECORDS TO PRINT",! D:$E(IOST)="C"  D ^%ZISC G EXIT
 .K DIR S DIR(0)="E" D ^DIR K DIR
 F PSODATE=0:0 S PSODATE=$O(^TMP($J,"PSOSPLOG",PSODATE)) Q:'PSODATE!($G(QFLAG))  S Y=PSODATE D DD^%DT S PSODATEX=Y D:PAGE=1 HEADB D HEADND S PAT="" F  S PAT=$O(^TMP($J,"PSOSPLOG",PSODATE,PAT)) Q:PAT=""!($G(QFLAG))  D
 .F SINRX=0:0 S SINRX=$O(^TMP($J,"PSOSPLOG",PSODATE,PAT,SINRX)) Q:'SINRX!($G(QFLAG))  D
 ..S NODE=$G(^PS(52.5,SINRX,0)),PATPTR=+$P(NODE,"^",3)
 ..I 'PATPTR Q
 ..S PATNAME=$P($G(^DPT(PATPTR,0)),"^") Q:PATNAME=""
 ..I $G(PSPRINT),$G(^PS(52.5,SINRX,"P")) Q
 ..I $G(PSUSDIV),$G(PSOSITE)'=$P(NODE,"^",6) Q
 ..D:($Y+4)>IOSL HEADB Q:$G(QFLAG)
 ..S PSOINRX=+$P($G(NODE),"^")
 ..W !,$P($G(^PSRX(+$G(NODE),0)),"^")
 ..W ?13,$G(PATNAME)
 ..W ?45,$P($G(^PSDRUG(+$P($G(^PSRX(PSOINRX,0)),"^",6),0)),"^")
 ..K PSOMW D
 ...I $P(NODE,"^",5) S PSOMW=$P($G(^PSRX(+$G(NODE),"P",$P(NODE,"^",5),0)),"^",2) Q
 ...I $P(NODE,"^",13)!($O(^PSRX(+$G(NODE),1,0))) D  Q
 ....I $P(NODE,"^",13) S PSOMW=$P($G(^PSRX(+$G(NODE),1,$P(NODE,"^",13),0)),"^",2) Q
 ....F PP=0:0 S PP=$O(^PSRX(+$G(NODE),1,PP)) Q:'PP  S PSOMW=$P($G(^PSRX(+$G(NODE),1,PP,0)),"^",2)
 ...S PSOMW=$P($G(^PSRX(+$G(NODE),0)),"^",11)
 ..W ?88,$S($G(PSOMW)="W":"WINDOW",1:"MAIL")
 ..W ?98,$S($G(^PS(52.5,SINRX,"P")):"YES",1:"NO")
 ..I $G(PSOSCMOP),$P(NODE,"^",7)'="" D
 ...W ?104,$S($P(NODE,"^",7)="Q":"QUEUED FOR TRANSMISSION",$P(NODE,"^",7)="X":"TRANSMISSION COMPLETED",$P(NODE,"^",7)="L":"LOADING FOR TRANSMISSION",$P(NODE,"^",7)="P":"PRINTED LOCALLY",1:"")
 I $E(IOST)'="P",'$G(QFLAG) W ! K DIR S DIR(0)="E" D ^DIR K DIR
 D ^%ZISC G EXIT
HEADB ;
 I $E(IOST)'="P",PAGE K DIR S DIR(0)="E",DIR("A")="Press Return to continue, '^' to exit" D ^DIR K DIR I 'Y S QFLAG=1 Q
 W @IOF
 W !,"RX #",?13,"PATIENT",?45,"DRUG",?88,"TYPE",?96,"PRINTED",?108,$S($G(PSOSCMOP):"CMOP STATUS",1:""),?122,"PAGE ",$G(PAGE) W !,LINE S PAGE=PAGE+1
 Q
HEADND W !!?40,"RX SUSPENSE LIST "_$S($G(PSODATEX)'="":"FOR ",1:"")_$G(PSODATEX)
 Q
