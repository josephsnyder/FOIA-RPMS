APSPDR4 ;IHS/OHPRD/JCM - PHARMACY DRUG RECALL PRINT;14-Oct-2009 14:35;SM
 ;;7.0;IHS PHARMACY MODIFICATIONS;**1008**;Sep 23, 2004
 ;THIS ROUTINE PRINTS THE PHARMACY DRUG RECALL LIST
 ;IT IS CALLED BY APSPDR3
 ;
 ; IHS/MSC/PLS - 01/02/09 - Routine updated
 Q
EN ;EP
 N APSPPG,APSPDT,DFN,RDATE,RX,DIV,NXT
 S (DX,DY)=1 X:$D(^%ZOSF("XY"))#2 ^("XY")
 U IO
 S APSPPG=0
 S DIV=0 F  S DIV=$O(^TMP($J,"PSODR",DIV)) Q:'DIV  D
 .D HDR
 .S DFN=0 F  S DFN=$O(^TMP($J,"PSODR",DIV,DFN)) Q:'DFN  D DATE
 I $E(IOST,1,2)'="P-" W !,"Press Return to Continue...." R X:DTIME Q:X="^"!($D(DTOUT))
 ;
 I $E(IOST,1,2)="P-" W !,@IOF
 Q
DATE ;
 S RDATE=0 F  S RDATE=$O(^TMP($J,"PSODR",DIV,DFN,RDATE)) Q:'RDATE  D RX
 Q
RX ;
 S RX=0 F  S RX=$O(^TMP($J,"PSODR",DIV,DFN,RDATE,RX)) Q:'RX  D
 .S NXT=0 F  S NXT=$O(^TMP($J,"PSODR",DIV,DFN,RDATE,RX,NXT)) Q:'NXT  D PRINT I $Y+4>IOSL,IOST["C-" S DIR("A")="ENTER '^' TO HALT",DIR(0)="FO" D ^DIR Q:$D(DTOUT)!($D(DUOUT))!($D(DIROUT))  W @IOF
 Q
 ;
PRINT ;
 N DATA,HPHN,AD1,AD2,AD3,CITY,STATE,ZIP
 I $E(IOST,1,2)'="P-",$Y+4>IOSL W @IOF D HDR
 S DATA=^TMP($J,"DATA",NXT)
 S HPHN=$$GET1^DIQ(2,DFN,.131)
 S:'$L(HPHN) HPHN="UNKNOWN"
 S AD1=$$GET1^DIQ(2,DFN,.111) S:'$L(AD1) AD1="UNKNOWN"
 I AD1'="UNKNOWN" D
 .S AD2=$$GET1^DIQ(2,DFN,.112)
 .S AD3=$$GET1^DIQ(2,DFN,.113)
 .S CITY=$$GET1^DIQ(2,DFN,.114)
 .S STATE=$$GET1^DIQ(2,DFN,.115)
 .S STATE=$$GET1^DIQ(5,STATE,.01)
 .S ZIP=$$GET1^DIQ(2,DFN,.116)
 W !,$$FMTPHN^APSPFUNC(HPHN)  ;HOME PHONE
 W ?16,$$GET1^DIQ(2,DFN,.01) ;PAT NAME
 W ?48,$J($$HRN^AUPNPAT(DFN,DUZ(2)),7) ;CHART NUMBER
 W ?58,$$FMTE^XLFDT(RDATE,"5ZD")
 W ?72,$P(DATA,U,4) ;QTY
 W !,"ADDRESS: ",AD1,"   ",$G(AD2)
 W "   ",$G(AD3),"   ",$G(CITY),"   "
 W $G(STATE),"   ",$G(ZIP)
 W !
 Q
HDR ;
 S APSPPG=APSPPG+1
 S APSPDV=$P(^PS(59,DIV,0),U)
 W !!,$S($G(DUZ(2)):$P(^DIC(4,DUZ(2),0),U)_" ",1:""),"DRUG RECALL LIST"
 W ?73,"Page ",APSPPG
 W !,"DATE OF LISTING: "_$$FMTE^XLFDT($$DT^XLFDT(),"5Z")
 I APSPDIV="*" W !,"All Divisions for: ",$P(^DIC(4,DUZ(2),0),U,1)
 W !,"Division: ",$G(APSPDV)
 W !,?25,"CONFIDENTIAL PATIENT INFORMATION"
 W !!,"This list will include all Outpatients dispensed one or any"
 W " combination ",!,"of the following drug(s) from "
 W APSPBDF," through ",APSPEDF,!!
 S (DN,CT)=0
 F  S DN=$O(APSPDARY(DN)) Q:'DN  W $P(^PSDRUG(DN,0),U),", " S CT=CT+1 I CT=3 W ! S CT=0
 W !!,"HOME",?16,"PATIENT",?48,"CHART",?58,"DATE",?72,"QTY"
 W !,"PHONE",?16,"NAME",?48,"NUMBER",?58,"DISPENSED"
 W ! F I=1:1:IOM W "_"
 I '$D(^TMP($J,"PSODR")) W !!?20,"NO PATIENTS RECEIVED MEDICATION"
 W !
 Q
